# Используем базовый образ Nginx
FROM nginx:latest

# Удаляем стандартный конфиг
RUN rm /etc/nginx/conf.d/default.conf

# Копируем свои конфиги
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY nginx2.conf /etc/nginx/nginx.conf

# Открываем порт, который ожидает Back4App
EXPOSE 8080

# Запускаем Nginx в режиме "не-демона"
CMD ["nginx", "-g", "daemon off;"]
