FROM quay.io/ansible/awx-ee
USER root
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc
RUN dnf install -y https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm
RUN dnf install -y azure-cli
USER 1000