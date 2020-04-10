FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/America/Chicago /etc/localtime

RUN apt-get update -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:gophers/archive

RUN apt-get update -y
RUN apt-get install -y --fix-missing texlive-latex-base texlive-latex-extra texlive-fonts-extra texlive-luatex build-essential golang-1.11-go