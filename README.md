# docker-ipk

Make a docker image of any size.  Now you have your own International Prototype Kilobyte but in a docker image.

The resulting images don't do anything useful except take up space.

## Building

Builds take a block size and block count, i.e.

```
docker build --build-arg block_size=1000 --build-arg block_count=1
```
