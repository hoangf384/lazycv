FROM pandoc/typst:3-debian


RUN groupadd -g 1000 lazycv && \
    useradd -u 1000 -g lazycv -m -s /bin/bash lazycv


RUN mkdir -p /workspaces/lazycv && \
    chown -R lazycv:lazycv /workspaces/lazycv


USER lazycv
WORKDIR /workspaces/lazycv