FROM nginx:alpine

# 1. Remove the default config
RUN rm /etc/nginx/conf.d/default.conf

# 2. Copy your config into the TEMPLATES folder, not conf.d
# Note the extension must be .template
COPY nginx.conf /etc/nginx/templates/default.conf.template

# 3. We don't need EXPOSE 80 because Render uses its own port
# 4. Use the default entrypoint (it handles the variable replacement)
CMD ["nginx", "-g", "daemon off;"]