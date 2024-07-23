# Use the official Ubuntu base image
FROM ubuntu:22.04
RUN apt-get update 
RUN    apt-get upgrade -y 
RUN      apt autoremove -y
RUN apt-get install --install-recommends linux-generic-hwe-22.04 -y


RUN apt-get install linux-tools-$(uname -r) hwdata -y
RUN apt-get install linux-tools-generic -y
RUN apt install kmod -y
RUN apt install
