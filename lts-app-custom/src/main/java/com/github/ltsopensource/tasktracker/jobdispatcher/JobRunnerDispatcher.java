package com.github.ltsopensource.tasktracker.jobdispatcher;

import com.github.ltsopensource.tasktracker.runner.JobContext;
import com.google.common.base.Splitter;
import com.google.common.base.Strings;
import com.google.common.collect.Maps;
import com.github.ltsopensource.core.domain.Action;
import com.github.ltsopensource.core.domain.Job;
import com.github.ltsopensource.core.json.JSON;
import com.github.ltsopensource.core.logger.Logger;
import com.github.ltsopensource.core.logger.LoggerFactory;
import com.github.ltsopensource.tasktracker.Result;
import com.github.ltsopensource.tasktracker.logger.BizLogger;
import com.github.ltsopensource.tasktracker.runner.JobRunner;
import com.github.ltsopensource.tasktracker.runner.LtsLoggerFactory;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 根据参数 type 派发作业
 * <p/>
 * Created by 28797575@qq.com hongliangpan on 2016/2/29.
 */
public class JobRunnerDispatcher implements JobRunner {
    protected static final Logger LOGGER = LoggerFactory.getLogger(JobRunnerDispatcher.class);
    public static final ConcurrentHashMap<String, JobRunner>
            JOB_RUNNER_MAP = new ConcurrentHashMap<String, JobRunner>();
    public static Map<String, JobRunnerAnnotation> ANNOTATION_MAP;

    static {
        try {
            String packagesParam = EmbedJobClient.getConfig("jobRunnerScannerPackages");
            if (!Strings.isNullOrEmpty(packagesParam)) {
                List<String> packages = Splitter.on(",").splitToList(packagesParam);
                ANNOTATION_MAP= JobRunnerScanner.scans(packages, JOB_RUNNER_MAP);
            }
            EmbedJobClient.submitJob();
        } catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }
    }

    @Override
    public Result run(JobContext jobContext) throws Throwable {
        Job job= jobContext.getJob();
        String type = job.getParam("type");
        if (Strings.isNullOrEmpty(type)) {
            return new Result(Action.EXECUTE_FAILED, "没有类型参数.type is null");
        }
        JobRunner jobRunner = JOB_RUNNER_MAP.get(type);
        if (null == jobRunner) {
            return new Result(Action.EXECUTE_FAILED, "没有注册作业.type=" + type);
        }
        Result result = jobRunner.run(jobContext);
        BizLogger bizLogger = LtsLoggerFactory.getBizLogger();
        bizLogger.info("任务完成:" + JSON.toJSONString(result));
        return result;
    }

    public void register(String type, JobRunner runner) {
        JOB_RUNNER_MAP.put(type, runner);
    }

}
