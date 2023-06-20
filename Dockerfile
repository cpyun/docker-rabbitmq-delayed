FROM rabbitmq:3.12.0-management

MAINTAINER cpyun

# 下载延迟队列扩展插件并开启
RUN wget -O /plugins https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.12.0/rabbitmq_delayed_message_exchange-3.12.0.ez \
    && rabbitmq-plugins enable rabbitmq_delayed_message_exchange
