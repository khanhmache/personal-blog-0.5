FROM nginx:alpine

COPY app/ /usr/share/nginx/hmtl/

COPY nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

HEALTHCHECK CMD curl -f http://localhost || exit 1

CMD ["nginx", "-g", "daemon off;"]
