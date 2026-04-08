FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Use template (REQUIRED for ${PORT})
COPY nginx.conf /etc/nginx/templates/default.conf.template

# DO NOT override entrypoint
CMD ["nginx", "-g", "daemon off;"]