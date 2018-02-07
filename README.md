# datacontainer-httpd-nginx
Script configurat per tal de instal·lar 3 contenidors : 
- Contenidor Datacontainer que conté la web index.html en ~/volumes_web
- Contenidor Apache configurat de manera interactiva, amb una terminal i que s¡executi en segon pla, donant-li el port 80 per defecte amb el nom de apache
- Contenidor Nginx onfigurat de manera interactiva, amb una terminal i que s¡executi en segon pla, donant-li el port 8080 amb el nom de nginx que es una imatge oficial de Debian amb Nginx instal·lat.

Llavors si fem servir un client web posem la Ip del servidor en el meu cas la 192.168.33.11 i port 80 pel apache i 8080 pel nginx i es veu la mateixa web, indicada al datacontainer, la hem trucat mitjançant --volumes-from i el nom del contenidor Datacontainer.
