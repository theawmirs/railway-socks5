FROM alpine:3.19
RUN apk add --no-cache microsocks
ENV PORT=1080
CMD microsocks -i 0.0.0.0 -p ${PORT} ${USER:+-u $USER} ${PASS:+-w $PASS}
