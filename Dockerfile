FROM alpine:3.19
RUN apk add --no-cache microsocks --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing
ENV PORT=1080
CMD exec microsocks -i 0.0.0.0 -p "$PORT" ${USER:+-u "$USER"} ${PASS:+-w "$PASS"}
