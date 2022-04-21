# The image to pull the base configuration from
FROM nginx:mainline-alpine

# Copy the custom default.conf from the WORKDIR (.) and overwrite the existing internal configuration in the NGINX container
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./key.pem /etc/nginx/cert.key
COPY ./cert.pem /etc/nginx/cert.crt
EXPOSE 4201
EXPOSE 4200


