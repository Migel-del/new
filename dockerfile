FROM nginx:latest

# Удаляем стандартную конфигурацию
RUN rm /etc/nginx/conf.d/default.conf

# Копируем свои конфиги
COPY proxy.conf /etc/nginx/conf.d/proxy.conf
COPY nginx2.conf /etc/nginx/nginx.conf

# Указываем, что контейнер слушает 8080
EXPOSE 8080
