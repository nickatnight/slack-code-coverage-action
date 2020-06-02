FROM alpine:3.11

RUN apk add --no-cache \
    bash \
    python3 \
    py3-pip &&\
    pip3 install requests &&\
    rm -rf /tmp/* &&\
    apk del --purge py3-pip

COPY push-to-slack /usr/local/bin/

ENTRYPOINT ["push-to-slack"]