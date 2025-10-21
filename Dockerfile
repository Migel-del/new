FROM nginx:latest

# Удаляем стандартный конфиг
RUN rm /etc/nginx/conf.d/default.conf

# Копируем наши конфиги
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY nginx2.conf /etc/nginx/nginx.conf

# Открываем порт, который проверяет Back4App
EXPOSE 8080

# При старте контейнера покажем URL, потом запустим nginx
CMD echo "🌐 Public URL: ${B4A_APP_URL:-${APP_URL:-unknown}}" && nginx -g 'daemon off;'
