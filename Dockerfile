FROM marketplace.gcr.io/google/rbe-ubuntu16-04-webtest:5e750dd878df9fcf4e185c6f52b9826090f6e532b097f286913a428290622332
    MAINTAINER Zhuhao Wang <zhuhaow@gmail.com>

# From https://github.com/GoogleChromeLabs/lighthousebot/blob/master/builder/Dockerfile#L35-L40
RUN groupadd --system chrome && \
    useradd --system --create-home --gid chrome --groups audio,video chrome && \
    mkdir --parents /home/chrome/reports && \
    chown --recursive chrome:chrome /home/chrome
