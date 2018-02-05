echo "Contenidor Data"
docker create --name datacontainer -v /volumes_web/:/var/www/html/ -v /volumes_web/:/usr/share/nginx/html centos

echo "Contenidor Apache"
docker run -itd -p 80:80 --volumes-from datacontainer --name apache keenneeth/httpd

echo "Contenidor Nginx"
docker run -itd -p 8080:80 --volumes-from datacontainer --name nginx nginx
