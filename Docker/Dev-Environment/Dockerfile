FROM ubuntu:19.04
ARG helm_version="v2.14.3"
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash
RUN apt-get install wget -y
RUN apt-get install -y gnupg2
RUN wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb && dpkg -i packages-microsoft-prod.deb
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y apt-transport-https
RUN apt-get install jq -y
RUN apt-get install -y kubectl
RUN apt-get install zsh -y
RUN apt-get install git -y
RUN apt-get install fzf -y
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
RUN git clone https://github.com/ahmetb/kubectx /opt/kubectx
RUN ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
RUN ln -s /opt/kubectx/kubens /usr/local/bin/kubens
RUN wget https://raw.githubusercontent.com/helm/helm/master/scripts/get -O helminstall.sh && chmod +x ./helminstall.sh && ./helminstall.sh -v $helm_version
RUN mkdir ~/.kube