FROM ubuntu:xenial
SHELL ["bash", "-c"]
WORKDIR /work
COPY pkg .
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && (dpkg -i *.deb || apt-get install -y -f || echo ng) \
 && apt-get install -y -f && dpkg -i *.deb
RUN tar xf ffmpeg-4.2.1-amd64-static.tgz -C /usr/local \
 && ln -s /usr/local/ffmpeg*/ffmpeg /usr/local/bin \
 && ln -s /usr/local/ffmpeg*/ffprobe /usr/local/bin \
 && ln -s /usr/local/ffmpeg*/qt-faststart /usr/local/bin
RUN rm -fr /var/lib/apt/lists/*
ENTRYPOINT ["MP4Box"]
CMD ["-version"]
