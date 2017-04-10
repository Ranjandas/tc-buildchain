FROM centos:6

RUN yum -y install \
	openssh-clients \
	openssh-server

RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa -P ""

RUN cat /root/.ssh/id_rsa.pub > /root/.ssh/authorized_keys && chmod 0600 /root/.ssh/authorized_keys

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
