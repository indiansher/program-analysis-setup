FROM ubuntu:18.04
ADD /setup.sh /
RUN ["chmod", "+x", "/setup.sh"]
RUN /setup.sh
ADD scripts /scripts
RUN ["chmod", "-R", "+x", "/scripts"]
ADD StackSet /home/ubuntu/StackSet
ADD RandomPathGenerator /home/ubuntu/RandomPathGenerator