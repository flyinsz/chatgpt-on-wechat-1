FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

RUN apt-get update \
    && cd ${BUILD_PREFIX} \
    && pip install --no-cache -r requirements-optional.txt \

ENTRYPOINT ["/entrypoint.sh"]
