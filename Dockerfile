# Step1 : Ubuntu (base Image)
FROM ubuntu:latest

# Step2 : Nginx install
RUN apt-get update && apt-get install -y -q nginx

# Step3 : file copy
COPY ./index.html /usr/share/nginx/html/

# Step4 : Nginx start
CMD ["nginx", "-g", "daemon off;"]
