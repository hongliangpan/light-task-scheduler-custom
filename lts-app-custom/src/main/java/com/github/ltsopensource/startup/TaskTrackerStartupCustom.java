package com.github.ltsopensource.startup;


import com.github.ltsopensource.startup.tasktracker.*;
import com.github.ltsopensource.tasktracker.TaskTracker;

import java.util.Map;

/**
 * @author Robert HG (254963746@qq.com) on 9/11/15.
 */
public class TaskTrackerStartupCustom {

    public static void main(String[] args) {
        String cfgPath = args[0];
        start(cfgPath);
    }

    public static void start(String cfgPath) {
        try {
            TaskTrackerCfg cfg = TaskTrackerCfgLoader.load(cfgPath);

            final TaskTracker taskTracker;

            if (cfg.isUseSpring()) {
                taskTracker = SpringStartup.start(cfg, cfgPath);
            } else {
                taskTracker = DefaultStartup.start(cfg);
            }
            //启动参数
            for (Map.Entry<String, String> config : cfg.getConfigs().entrySet()) {
                taskTracker.addConfig(config.getKey(), config.getValue());
            }

            taskTracker.start();

            Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() {
                @Override
                public void run() {
                    taskTracker.stop();
                }
            }));

        } catch (CfgException e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }

}
