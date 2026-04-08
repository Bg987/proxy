FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Use template so ${PORT} works
COPY nginx.conf /etc/nginx/templates/default.conf.template

CMD ["nginx", "-g", "daemon off;"]