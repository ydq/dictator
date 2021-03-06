package com.github.liuyuyu.dictator.springboot;

import com.github.liuyuyu.dictator.spring.annotation.AutoRefreshValue;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/*
 * @author liuyuyu
 */
@Data
@Slf4j
@Component
@AutoRefreshValue
public class DataSourceProperties implements InitializingBean {
    @Value("${spring.datasource.url}")
    private String url;
    @Value("${spring.datasource.username}")
    private String username;
    @Value("${spring.datasource.password}")
    private String password;
    @Value("${java.io.tmpdir}")
    private String tmpDir;

    @Override
    public void afterPropertiesSet() throws Exception {
        log.info("properties:{}", this);
    }
}
