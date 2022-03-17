FROM tirsvad/debian_11:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install -qq systemd
RUN wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt-get update -qq
RUN apt-get install -qq dotnet-sdk-6.0
RUN mkdir /srv/Nuget
RUN dotnet nuget add source /srv/Nuget

WORKDIR /app
