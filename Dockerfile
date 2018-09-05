FROM jenkins
# if we want to install via apt
USER root
# COPY sources.list /etc/apt/sources.list
RUN apt-get update -y && apt-get install -y maven && apt-get install -y git
ENV JAVA_OPTS=-Duser.timezone=Asia/Shanghai
# drop back to the regular jenkins user - good practice
USER jenkins