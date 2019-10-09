FROM ubuntu:xenial
SHELL ["bash", "-c"]
WORKDIR /work
COPY . .
RUN apt-get update && (dpkg -i *.deb || apt-get install -y -f || echo ng) \
 && apt-get install -y -f && dpkg -i *.deb
ENTRYPOINT ["MP4Box"]
CMD ["MP4Box", "-version"]
