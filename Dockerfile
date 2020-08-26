FROM fluent/fluentd
WORKDIR /fluentd
COPY fluent.conf ./etc/
USER root
#instalo plugin salida loggly
RUN gem install fluent-plugin-loggly
#instala plugin salida mail
RUN gem install fluent-plugin-mail
