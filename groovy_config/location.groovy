#! groovy
import jenkins.model.JenkinsLocationConfiguration

jlc = JenkinsLocationConfiguration.get()
jlc.setUrl("http://jenkins.nhyne.dev:8080/")
jlc.save()