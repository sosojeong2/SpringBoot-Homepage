package com.example.demo.config;


import com.zaxxer.hikari.HikariDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

@Configuration
@MapperScan(basePackages = {"com.finger.homepage.common.mapper"})
@EnableTransactionManagement
public class DatabaseConfig {
    @Value("${mybatis.mapper-locations}")
    private String mapperLocation;

    @Bean(name = "hpDataSource", destroyMethod = "close")
    @ConfigurationProperties(prefix = "dbenv.hp.datasource")
    public DataSource hpDataSource() {
        return DataSourceBuilder.create().type(HikariDataSource.class).build();
    }

    @Bean(name = "hpSqlSessionFactory")
    public SqlSessionFactory hpSqlSessionFactory(@Qualifier("hpDataSource") DataSource hpDataSource,
                                                       ApplicationContext applicationContext) throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(hpDataSource);
        sqlSessionFactoryBean.setMapperLocations(applicationContext.getResources(mapperLocation));
        return sqlSessionFactoryBean.getObject();
    }

    @Bean(name = "hpSqlSessionTemplate")
    public SqlSessionTemplate hpSqlSessionTemplate(SqlSessionFactory hpSqlSessionFactory) throws Exception {
        return new SqlSessionTemplate(hpSqlSessionFactory);
    }

}
