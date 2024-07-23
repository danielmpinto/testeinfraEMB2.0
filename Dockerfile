# Use the official Ubuntu base image
FROM ubuntu:22.04
RUN apt-get update 
RUN    apt-get upgrade -y 
RUN      apt autoremove -y
RUN apt-get install --install-recommends linux-generic-hwe-22.04 -y


RUN apt-get install linux-tools-$(uname -r) hwdata -y
RUN apt-get install linux-tools-generic -y
RUN apt install kmod -y
RUN apt install curl -y
RUN curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/jammy.noarmor.gpg |  tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
RUN curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/jammy.tailscale-keyring.list |  tee /etc/apt/sources.list.d/tailscale.list
RUN apt-get update -y
RUN apt install systemctl
RUN apt-get install tailscale -y
RUN systemctl start tailscaled
