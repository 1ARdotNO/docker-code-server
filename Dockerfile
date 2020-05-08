FROM linuxserver/code-server

RUN \
 wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb \
 dpkg -i packages-microsoft-prod.deb && \
 apt-get update && \
 add-apt-repository universe && \
 apt-get install -y powershell