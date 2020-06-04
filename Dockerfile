FROM nginx:alpine

## Step 2:
COPY index.html /usr/share/nginx/html
# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80

