FROM linuxserver/code-server


# Install powershell 7
RUN \
 apt-get update && \
 apt-get install wget -y && \
 apt-get install software-properties-common -y && \
 wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb && \
 dpkg -i packages-microsoft-prod.deb && \
 apt-get update && \
 add-apt-repository universe && \
 apt-get install -y powershell
 
