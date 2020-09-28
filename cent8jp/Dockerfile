FROM centos:8

ADD ./locale_jp.sh /etc/profile.d/locale_jp.sh

RUN dnf install -y vim langpacks-ja && \
    dnf clean all && \
    chmod +x /etc/profile.d/locale_jp.sh

ENTRYPOINT /sbin/init
