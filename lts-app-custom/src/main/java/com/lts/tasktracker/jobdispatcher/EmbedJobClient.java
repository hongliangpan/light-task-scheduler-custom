package com.lts.tasktracker.jobdispatcher;

import com.google.common.io.Resources;
import com.lts.core.commons.utils.ClassHelper;
import com.lts.core.logger.Logger;
import com.lts.core.logger.LoggerFactory;
import com.lts.example.support.JobCompletedHandlerImpl;
import com.lts.example.support.MasterChangeListenerImpl;
import com.lts.jobclient.JobClient;
import com.lts.jobclient.RetryJobClient;

import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicBoolean;


/**
 * tasktracker 嵌入client
 * <p/>
 * Created by 28797575@qq.com hongliangpan on 2016/2/29.
 */
public class EmbedJobClient {
    public static final String TASK_TRACKER_CFG = "tasktracker.cfg";
    protected static final Logger LOGGER = LoggerFactory.getLogger(JobRunnerDispatcher.class);
    protected static Properties conf;
    private static JobClient jobClient;
    private static AtomicBoolean checkStart = new AtomicBoolean(false);

    static {
        initJobClient();
    }

    public static JobClient getJobClient() {
        if (null == jobClient) {
            initJobClient();
        }
        return jobClient;
    }

    public static JobClient initJobClient() {
        if (checkStart.compareAndSet(false, true)) {
            getConfig();
            // 推荐使用RetryJobClient
            jobClient = new RetryJobClient();
            jobClient.setNodeGroup(getConfig("nodeGroup") + "client");
            jobClient.setClusterName(getConfig("clusterName"));
            jobClient.setRegistryAddress(getConfig("registryAddress"));
            jobClient.setJobFinishedHandler(new JobCompletedHandlerImpl());
            // master 节点变化监听器，当有集群中只需要一个节点执行某个事情的时候，可以监听这个事件
            jobClient.addMasterChangeListener(new MasterChangeListenerImpl());
            jobClient.start();
        }
        return jobClient;
    }

    public static Properties getConfig() {
        if (conf != null) {
            return conf;
        }
        URL url = Resources.getResource(TASK_TRACKER_CFG);
        try {
            conf = new Properties();
            conf.load(new FileInputStream(new File(url.toURI())));
        } catch (Exception e) {
            LOGGER.error("can not find tasktracker.cfg", e);
        }
        return conf;
    }

    public static String getConfig(String key) {
        Object value = getConfig().get(key);
        if (value == null) {
            return "";
        }
        return value.toString();
    }

    protected static boolean isEmbedJobClient() {
        return "true".equalsIgnoreCase(getConfig("isEmbedJobClient"));
    }

    public static void submitJob() {
        if (!isEmbedJobClient()) {
            return;
        }
        try {
            String jobSubmitterClass = getConfig("jobSubmitterClass");
            JobSubmitter jobSubmitter = (JobSubmitter) ClassHelper.forName(jobSubmitterClass).newInstance();
            jobSubmitter.submitJob(conf);
            LOGGER.info("jobSubmitterClass:" + jobSubmitterClass);
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }

    }

}