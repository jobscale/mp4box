#### getting newest version

[GPAC Nightly Builds](https://gpac.wp.imt.fr/downloads/gpac-nightly-builds/)

#### run with container

```bash
git clone git@github.com:jobscale/mp4box.git
cd mp4box
main() {
  docker build . -t local/mp4box:0.0.1
  docker run --rm -it --name mp4box -v $(pwd):/work -u $(id -u):$(id -g) local/mp4box:0.0.1 -version
  docker run --rm -it --name mp4box -v $(pwd):/work -u $(id -u):$(id -g) --entrypoint /usr/local/bin/ffmpeg local/mp4box:0.0.1 -version
} && main
```

## Example Environments

```
alias MP4Box='docker run --rm -it -v $(pwd):/work -u $(id -u):$(id -g) jobscale/mp4box'
alias ffmpeg='docker run --rm -it -v $(pwd):/work -u $(id -u):$(id -g) --entrypoint /usr/local/bin/ffmpeg jobscale/mp4box'
alias ffprobe='docker run --rm -it -v $(pwd):/work -u $(id -u):$(id -g) --entrypoint /usr/local/bin/ffprobe jobscale/mp4box'
alias qt-faststart='docker run --rm -it -v $(pwd):/work -u $(id -u):$(id -g) --entrypoint /usr/local/bin/qt-faststart jobscale/mp4box'
```

## Show Version

```
MP4Box -version
ffmpeg -version
```
