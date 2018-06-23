#Bash!
# Autor: Villalba Juan Manuel Pedro
# Sistema SO Debian 9 64_86x
# Objeto: Usar para reparar el sistema debian 9 en caso de desconexion.
#Bash!;
# Autor: Villalba Juan Manuel Pedro;
# Sistema SO Debian 9 64_86x;
# Objeto: Usar para reparar el sistema debian 9 en caso de desconexion.;
echo '¡Autoriza!';
sudo -v;
DIA=`date +'%d/%m/%Y'`;
HORA=`date +'%H:%M'`;
wget -v https://download.teamviewer.com/download/linux/teamviewer_amd64.deb;
echo 'Hoy $DIA y a la hora $HORA el sistema instala ha descargado teamviewer en sistema debian 9 64_86';
echo 'se procedera a realizar copia de respaldo del log de operaciones';

echo 'se procedera a realizar la eliminacion del software con defectos [teamviewer]';
clear;
sudo teamviewer daemon stop;
sudo teamviewer daemon disable;
sudo apt install deborphan -y;
# Realiza limpieza dentro del sistema;
sudo deborphan -Z;
sudo apt-get clean -y;
sudo apt-get autoremove -y;
UNUSCONF=$(dpkg -l|grep '^rc'|awk '{print $2}');
sudo apt-get remove --purge $UNUSCONF -y;
sudo apt-get install --reinstall deborphan -y;
sudo deborphan -Z;
sudo apt-get --purge remove $(deborphan -Z) -y;
sudo deborphan --libdevel;
sudo apt-get --purge remove $(deborphan --libdevel) -y;
sudo deborphan --find-config;
sudo dpkg --purge $(deborphan --find-config);
sudo apt-get update -y;
sudo apt-get dist-upgrade -y;
sudo dpkg --configure -a;
sudo apt-get -f install;
sudo apt-get clean -y;
# realiza borrado de lo que queda;
sudo apt-get autoclean -y && sudo apt-get autoremove -y;
sudo apt remove deborphan -y;
sudo apt-get autoclean -y;
sudo apt-get clean -y;
sudo apt-get autoremove --purge -y;
sudo aptitude purge '~c' -y;
clear;
# Final del script;' > algo && chmod +x * && sh *;
# Final del script
echo '
#########################################################
# APLICANDA LA LIMPIEZA!	    			#
# PROGRAMA FINALIZADO		 			#
# Gracias por usar este programa		 	#
#							#
# PROGRAMA #BASH!					#
# Author: Villalba Juan Manuel Pedro			#
# Version: 0.0.2					#
# Estado: Alpha						#
# Destino: resolver problemas teamrepair		#
# Date: 05:41pm 22-06-2018				#
# Advertencia: Usar con cautela y bajo propia respons...#
# Licence: GPLv2 Free Software Foundation		#
# licensing@fsf.org					#
#							#
#########################################################
';
echo 'Prueba si esta todo en orden caso contrario XD cagaste todo el sistema jajaja'
dpkg -i *.deb
sudo apt-get install -fy

sudo teamviewer daemon enable;
sudo teamviewer daemon start;
sudo teamviewer daemon status;
sudo teamviewer info;
date;
echo 'ahora solo tienes que configurarlo de la manera mas simple
Paso uno: ejecutar
Paso dos: aceptar terminos
Paso tres: configurar cuenta
Listo que lo disfrutes ;)';
