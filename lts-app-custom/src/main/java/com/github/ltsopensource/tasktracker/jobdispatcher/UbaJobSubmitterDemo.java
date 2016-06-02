package com.github.ltsopensource.tasktracker.jobdispatcher;

import com.github.ltsopensource.core.cluster.Node;
import com.github.ltsopensource.core.commons.utils.CollectionUtils;
import com.github.ltsopensource.core.commons.utils.StringUtils;
import com.github.ltsopensource.core.domain.Job;
import com.github.ltsopensource.core.domain.JobResult;
import com.github.ltsopensource.core.json.JSON;
import com.github.ltsopensource.core.listener.MasterChangeListener;
import com.github.ltsopensource.core.logger.Logger;
import com.github.ltsopensource.core.logger.LoggerFactory;
import com.github.ltsopensource.jobclient.JobClient;
import com.github.ltsopensource.jobclient.RetryJobClient;
import com.github.ltsopensource.jobclient.domain.Response;
import com.github.ltsopensource.jobclient.support.JobCompletedHandler;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 *用户行为分析 数据采集 初始任务
 * for demo
 */
public class UbaJobSubmitterDemo implements JobSubmitter {
    protected static final Logger LOGGER = LoggerFactory.getLogger(JobRunnerDispatcher.class);
    protected Properties conf;

    @Override
    public void submitJob(Properties conf) {
        try {
            this.conf = conf;
            // 推荐使用RetryJobClient
            JobClient jobClient = new RetryJobClient();
            jobClient.setNodeGroup(getConfig("nodeGroup")+"client");
            jobClient.setClusterName(getConfig("clusterName"));
            jobClient.setRegistryAddress(getConfig("registryAddress"));
            jobClient.setJobCompletedHandler(new JobCompletedHandlerImpl());
            // master 节点变化监听器，当有集群中只需要一个节点执行某个事情的时候，可以监听这个事件
            jobClient.addMasterChangeListener(new MasterChangeListenerImpl());
            jobClient.start();

            submitJob("gaq", jobClient);
            submitJob("gyfc", jobClient);
            submitJob("ysg", jobClient);
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }
    }

    protected String getConfig(String key) {
        return conf.get(key).toString();
    }

    protected void submitJob(String product, JobClient jobClient) {
        Job job = buildJob(product, "action");
        Response response = jobClient.submitJob(job);
        LOGGER.debug(JSON.toJSONString(response));
    }

    protected Job buildJob(String product, String jobType) {
        Job job = new Job();
        job.setTaskId(product + "_" + jobType);
        job.setParam("product", product);
        job.setParam("type", jobType);
        job.setParam("size", "300");
        job.setTaskTrackerNodeGroup(getConfig("nodeGroup"));
        job.setNeedFeedback(false);
        job.setReplaceOnExist(true);        // 当任务队列中存在这个任务的时候，是否替换更新
        job.setCronExpression(getConfig("mySubmitCronExpression"));
        //job.setCronExpression("0 53/10 * * * ?");
        return job;
    }

    class JobCompletedHandlerImpl implements JobCompletedHandler {

        @Override
        public void onComplete(List<JobResult> jobResults) {
            // 任务执行反馈结果处理
            if (CollectionUtils.isNotEmpty(jobResults)) {
                for (JobResult jobResult : jobResults) {
                    System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) + " 任务执行完成：" + jobResult);
                }
            }
        }
    }
    class MasterChangeListenerImpl implements MasterChangeListener {

        /**
         * master 为 master节点
         * isMaster 表示当前节点是不是master节点
         *
         * @param master
         * @param isMaster
         */
        @Override
        public void change(Node master, boolean isMaster) {

            // 一个节点组master节点变化后的处理 , 譬如我多个JobClient， 但是有些事情只想只有一个节点能做。
            if(isMaster){
                System.out.println("我变成了节点组中的master节点了， 恭喜， 我要放大招了");
            }else{
                System.out.println(StringUtils.format("master节点变成了{}，不是我，我不能放大招，要猥琐", master));
            }
        }
    }
}
