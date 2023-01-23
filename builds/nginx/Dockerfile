FROM nginx:1.23.2
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./configs/nginx.conf /etc/nginx/nginx.conf
COPY ./configs/conf.d/francrodriguez.com.conf /etc/nginx/conf.d/
COPY ./configs/conf.d/francrodriguez.com.ssl.conf /etc/nginx/conf.d/
COPY ./configs/ssl/dhparam.pem /etc/nginx/ssl/
COPY ./configs/ssl/ca-certs.pem /etc/nginx/ssl/
COPY ./configs/ssl/francrodriguez.com.key /etc/nginx/ssl/francrodriguez.com.key
COPY ./configs/ssl/francrodriguez.com.pem /etc/nginx/ssl/francrodriguez.com.pem
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
