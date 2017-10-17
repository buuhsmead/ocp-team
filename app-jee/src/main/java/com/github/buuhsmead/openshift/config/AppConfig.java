package com.github.buuhsmead.openshift.config;


import org.apache.deltaspike.core.api.config.PropertyFileConfig;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Named;

@ApplicationScoped
@Named
public class AppConfig implements PropertyFileConfig {

    @Override
    public String getPropertyFileName() {
        String baseConfigDir = System.getProperty("OCP_TEAM_CONFIG_DIR", "/etc/ocp-team-config");
        return baseConfigDir + "/ldap.properties";
    }

    @Override
    public boolean isOptional() {
        return false;
    }
}