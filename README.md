#### getting newest version

[GPAC Nightly Builds](https://gpac.wp.imt.fr/downloads/gpac-nightly-builds/)

#### run with container

```bash
git clone https://github.com/jobscale/mp4box.git
cd mp4box
main() {
  docker build . -t local/mp4box:0.0.1
  docker run --rm -it --name mp4box -v $(pwd):/work -u $(id -u):$(id -g) local/mp4box:0.0.1 -version
} && main
```
