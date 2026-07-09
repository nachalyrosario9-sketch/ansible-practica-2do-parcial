FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y openssh-server sudo python3 && \
    mkdir /var/run/sshd

RUN useradd -m -s /bin/bash ansible && \
    echo "ansible:ansible" | chpasswd && \
    usermod -aG sudo ansible && \
    echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]