FROM mcr.microsoft.com/dotnet/core/sdk:3.1.300-alpine3.11
COPY files/* /opt/
COPY files/nginx.conf /etc/nginx/nginx.conf
RUN chmod +x /opt/install.sh && \
    chmod +x /opt/run.sh && \
    /opt/install.sh
ENTRYPOINT ["/opt/run.sh"]