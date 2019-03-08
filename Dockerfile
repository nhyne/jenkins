FROM jenkins/jenkins:2.167-alpine

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

COPY plugins.txt /tmp/plugins.txt

COPY --chown=jenkins:root ./groovy_config/admin.groovy /usr/share/jenkins/ref/init.groovy.d/admin.groovy
COPY --chown=jenkins:root ./groovy_config/location.groovy /usr/share/jenkins/ref/init.groovy.d/location.groovy

RUN /usr/local/bin/install-plugins.sh < /tmp/plugins.txt

USER jenkins

