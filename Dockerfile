# Imagen base de Nginx
FROM nginx:latest

# Copiar tu HTML al directorio que Nginx usa para servir contenido
COPY html/ /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

# Iniciar nginx (ya viene con el CMD predeterminado)
