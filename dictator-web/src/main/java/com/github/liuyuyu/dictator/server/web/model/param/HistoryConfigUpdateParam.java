package com.github.liuyuyu.dictator.server.web.model.param;

import com.github.liuyuyu.dictator.common.Convertible;
import lombok.Data;

@Data
public class HistoryConfigUpdateParam implements Convertible {

    /**
     * 应用（服务）ID
     */
    private String appId;

    /**
     * 环境名
     */
    private String profile;

    /**
     * 配置名
     */
    private String configName;

    /**
     * 配置值
     */
    private String configValue;

    /**
     * 操作者ID
     */
    private Long operatorId;

    /**
     * 操作者IP
     */
    private String operatorIp;

    /**
     * profile_id
     */
    private Long profileId;

    /**
     * 分组ID
     */
    private Long groupId;
}