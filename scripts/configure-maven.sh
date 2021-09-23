#!/bin/bash

sed -i~ "/<servers>/ a\
<server>\n\
  <id>MuleRepository</id>\n\
  <username>${ANYPOINT_EROAD_USERNAME}</username>\n\
  <password>${ANYPOINT_EROAD_PASSWORD}</password>\n\
</server>\
<server>\n\
  <id>ERoadRepository</id>\n\
  <username>${ANYPOINT_EROAD_USERNAME}</username>\n\
  <password>${ANYPOINT_EROAD_PASSWORD}</password>\n\
</server>" ~/.m2/settings.xml

sed -i "/<profiles>/ a\
<profile>\n\
    <id>Mule</id>\n\
    <activation>\n\
        <activeByDefault>true</activeByDefault>\n\
    </activation>\n\
    <repositories>\n\
        <repository>\n\
            <id>MuleRepository</id>\n\
            <name>MuleRepository</name>\n\
            <url>https://repository.mulesoft.org/nexus-ee/content/repositories/releases-ee/</url>\n\
            <layout>default</layout>\n\
            <releases>\n\
                <enabled>true</enabled>\n\
            </releases>\n\
            <snapshots>\n\
                <enabled>true</enabled>\n\
            </snapshots>\n\
        </repository>\n\
    </repositories>\n\
</profile>" ~/.m2/settings.xml
