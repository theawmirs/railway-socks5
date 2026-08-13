FROM alpine:3.19
RUN apk add --no-cache tinyproxy microsocks --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN sed -i 's/^Allow /#Allow /' /etc/tinyproxy/tinyproxy.conf &&     echo "Port 8888" >> /etc/tinyproxy/tinyproxy.conf

ENV SOCKS_PORT=1080
ENV HTTP_PORT=8888

CMD tinyproxy && exec microsocks -i 0.0.0.0 -p "$SOCKS_PORT" ${USER:+-u "$USER"} ${PASS:+-w "$PASS"}
