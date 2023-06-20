FROM rabbitmq:3.12.0-management

MAINTAINER cpyun

# COPY rabbitmq_delayed_message_exchange-3.12.0.ez /plugins

# 下载延迟队列扩展插件并开启
RUN cd  /plugins \
    ## && wget -L https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.12.0/rabbitmq_delayed_message_exchange-3.12.0.ez \
    && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
