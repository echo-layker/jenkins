FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
COPY sources.list /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y maven && apt-get install -y git
RUN apt-get install  -y ant && apt-get install -y  jmeter
# RUN apt-get install jmeter
# WORKDIR /usr/local/
# COPY apache-jmeter-4.0.tgz /usr/local/
# COPY apache-ant-1.10.5-bin.tar.gz /usr/local/
# RUN apt-get update -y &&  apt-get install -y  vim &&  tar -xzvf apache-jmeter-4.0.tgz && chown -R 1000 apache-jmeter-4.0 && echo export PATH:=/usr/local/apache-jmeter-4.0/bin>>/etc/profile
# RUN wget http://mirror-hk.koddos.net/apache//jmeter/binaries/apache-jmeter-4.0.tgz && tar -xzvf apache-jmeter-4.0.tgz && chown -R 1000 apache-jmeter-4.0 && ln apache-jmeter-4.0/bin/jmeter.sh /usr/local/bin/jmeter.sh
# RUN tar -xzvf apache-ant-1.10.5-bin.tar.gz && chown -R 1000 apache-ant-1.10.5 &&  echo export PATH:=/usr/local/apache-ant-1.10.5/bin>>/etc/profile
# RUN wget http://mirror-hk.koddos.net/apache//ant/binaries/apache-ant-1.10.5-bin.tar.gz &&  echo export PATH:=/usr/local/apache-ant-1.10.5/bin >> /etc/profile
ENV JAVA_OPTS=-Duser.timezone=Asia/Shanghai
# drop back to the regular jenkins user - good practice
USER jenkins