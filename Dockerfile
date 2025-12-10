# Imagen base de Nginx
FROM nginx:latest
#Eliminar conf para que no requiera php
RUN rm /etc/nginx/conf.d/*.conf
#Copiar default para que utlice ngnix
COPY html/default.conf /etc/nginx/conf.d/default.conf
# Copiar tu HTML al directorio que Nginx usa para servir contenido
COPY html/ /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

