FROM ubuntu
RUN apt-get update && apt-get install -y apache2
WORKDIR /var/www/html
ADD index.html ./ 
ADD *.jpeg ./ 
EXPOSE 80
CMD  ["apache2", "-g", "daemon off;"]
