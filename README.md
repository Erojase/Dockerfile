[English version](https://github.com/Erojase/odoo-dockerfile/blob/main/README.md#odoo-dockerfile)

# Dockerfile para Odoo



Antes de nada hay que tener instalado Docker  
[Docker para Linux](https://docs.docker.com/engine/install/ubuntu/)  
[Docker para Windows](https://docs.docker.com/docker-for-windows/install/)  
[Docker para MacOs](https://docs.docker.com/docker-for-mac/install/)  
  <br/><br/>
# Pre-instalación  
Si se esta utilizando un sistema Linux se deberá comprobar si el archivo ```entrypoint.sh``` tiene los permisos de ejecución, en caso de que no los tenga habrá que ponérselos con el siguiente comando situado en el directorio del archivo:
1-  
```bash
sudo chmod +x entrypoint.sh
```

# Instalación 
Los siguientes comandos deberán lanzarse desde la terminal de comandos del sistema
 <br/>
**1.a-** Para lanzar el Dockerfile y construir la imagen se utiliza el comando:  
```cmd
docker build C:/ruta/de/tu/dockerfile -t nombre_imagen
```  

 <br/>La ruta/de/tu/dockerfile deberá ser la ruta de la carpeta en la que esta situado el archivo dockerfile  
 **1.b-** Si entras a la carpeta de tu Dockerfile desde la terminal puedes sustituir la ruta por un punto 
 ```cmd  
 docker build . -t nombre_imagen
 ```

<br/>**2-** Para correr la imagen una vez creada:  
```cmd
docker run -dt --name nombre_contenedor -p 8069:8069 -p 8071:8071 -p 8072:8072 nombre_imagen 
```

<br/>**3.a-** Una vez iniciado el contenedor puedes entrar en éste con:  
```cmd
docker exec -it nombre_contenedor /bin/bash
```  
**3.b-** Por defecto se entra al contenedor con el usuario Odoo, si se quiere entrar con el usuario root puedes usar el siguiente comando:  
```cmd
docker exec -it --user root nombre_contenedor /bin/bash
```

 <br/> **4-** Una vez dentro bastará con lanzar odoo con  
  ```bash
  /home/odoo/odoo/odoo-bin -c /home/odoo/odoo.conf
  ```  
  y dirigirte en el navegador web a la dirección [localhost:8069](http://localhost:8069/)  
  
    
    
# Usuarios
Usuario | Contraseña |
--- | --- | 
Odoo | odoo |
Postgres | odoo |
Root | --- |    

  <br /><br /><br />
  <br /><br /><br />

# Odoo Dockerfile



First of all you have to have Docker installed  
[Docker for Linux](https://docs.docker.com/engine/install/ubuntu/)  
[Docker for Windows](https://docs.docker.com/docker-for-windows/install/)  
[Docker for MacOs](https://docs.docker.com/docker-for-mac/install/)
  
# Installation
The following commands must be launched from the system command terminal  
  
To launch the Dockerfile and build the image, use the command:
```cmd
docker build C:/path/to/your/dockerfile -t image_name
```
 The path /to/your/dockerfile should be the path of the folder where the dockerfile file is located  
 If you enter your Dockerfile folder from the terminal you can replace the path with a period ```docker build . -t image_name```

To run the image once it is created:
```cmd
docker run -dt --name container_name -p 8069:8069 -p 8071:8071 -p 8072:8072 image_name
```

Once the container is started, you can enter it with:
```cmd
docker exec -it container_name /bin/bash
```  
By default you enter the container with the Odoo user, if you want to enter with the root user you can use the following command:  
```cmd
docker exec -it --user root nombre_contenedor /bin/bash
```
  
Once inside, just launch the odoo service with
```bash
/home/odoo/odoo/odoo-bin -c /home/odoo/odoo.conf
```
and go in the web browser to the address [localhost:8069](http://localhost:8069/)    
# Users
User | Password |
--- | --- |
Odoo | odoo |
Postgres | odoo |
Root | --- |

  <br /> <br /> <br />
  <br /> <br /> <br />
