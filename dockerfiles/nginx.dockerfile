FROM nginx:latest
# COPY /public /var/www/public
COPY /dockerfiles/config/nginx.conf /etc/nginx/nginx.conf
# RUN chmod 755 -R /var/www/public
EXPOSE 8082 443
ENTRYPOINT ["nginx"]
# Parametros extras para o entrypoint
CMD ["-g", "daemon off;"]
