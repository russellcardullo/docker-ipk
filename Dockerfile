FROM alpine

ARG block_size=1024
ARG block_count=1

RUN dd if=/dev/zero of=/ipk bs=$block_size count=$block_count

FROM scratch

COPY --from=0 /ipk /ipk
