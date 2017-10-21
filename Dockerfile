FROM ubuntu:16.04

LABEL MAINTAINER="beginor <beginor@qq.com>"

# Use cn.archive.ubuntu.com apt source;
COPY sources.list /etc/apt/sources.list
# copy prc zone file.
COPY zoneinfo/PRC /usr/share/zoneinfo/PRC
# Set time zone to Asia/Shanghai;
ENV TZ=Asia/Shanghai
# make timezone links and conf
RUN mkdir /usr/share/zoneinfo/Asia \
  && ln -snf /usr/share/zoneinfo/PRC /usr/share/zoneinfo/$TZ \
  && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ > /etc/timezone
