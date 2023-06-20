FROM rabbitmq:3.12.0-management

MAINTAINER cpyun

# COPY rabbitmq_delayed_message_exchange-3.12.0.ez /plugins

# 下载延迟队列扩展插件并开启
RUN apt-get update && apt-get install --yes --no-install-recommends wget \
    && wget --progress dot:giga -P /plugins https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.12.0/rabbitmq_delayed_message_exchange-3.12.0.ez \
    && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
