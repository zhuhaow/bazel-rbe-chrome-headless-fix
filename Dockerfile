FROM marketplace.gcr.io/google/rbe-ubuntu16-04-webtest:latest
    MAINTAINER Zhuhao Wang <zhuhaow@gmail.com>

# From https://github.com/GoogleChromeLabs/lighthousebot/blob/master/builder/Dockerfile#L35-L40
RUN groupadd --system chrome && \
    useradd --system --create-home --gid chrome --groups audio,video chrome && \
    mkdir --parents /home/chrome/reports && \
    chown --recursive chrome:chrome /home/chrome
