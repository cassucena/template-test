FROM openresty/openresty:alpine

# Copia nginx.conf
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# Exponha a porta usada no nginx.conf
EXPOSE 8080

# Comando de inicialização com aspas corretamente fechadas
CMD ["openresty", "-g", "daemon off;"]
