# start with Alpine Linux
FROM alpine:3.6
MAINTAINER Christian Becker <mail@christianbecker.name>

# system setup with "openssh-client"
RUN apk add --no-cache \
        openssh-client \
    && echo "! installation is finished !"

# run openssh-client
ENTRYPOINT ["/usr/bin/ssh", "-oCiphers=+3des-cbc", "-oHostKeyAlgorithms=+ssh-dss", "-oKexAlgorithms=+diffie-hellman-group1-sha1", "-oUserKnownHostsFile=/dev/null", "-oStrictHostKeyChecking=no", "-oLogLevel=quiet"]
