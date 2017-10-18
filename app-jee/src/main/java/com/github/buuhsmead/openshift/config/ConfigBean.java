package com.github.buuhsmead.openshift.config;


import org.apache.deltaspike.core.api.config.ConfigProperty;

import javax.inject.Inject;
import javax.inject.Named;
import java.io.Serializable;

@Named("configBean")
public class ConfigBean implements Serializable {

    @Inject
    @ConfigProperty(name = "ldap.host", defaultValue = "default_ldap_host")
    private String ldapHost;

    public ConfigBean() {
        System.out.print("ldap host from property " + ldapHost);
    }

    public String getLdapHost() {
        return ldapHost;
    }
}
