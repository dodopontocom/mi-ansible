FROM centos:centos7

ENV APP_HOME "/home/ansible"

RUN yum -y install python-lxml

RUN yum -y install epel-release && \
    yum -y --enablerepo=epel-testing install ansible

ADD . $APP_HOME
WORKDIR $APP_HOME

#CMD [ "ansible-playbook", "/home/ansible/ansible1/main.yml" ]
#DOCKER_HOST="$(ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+')"