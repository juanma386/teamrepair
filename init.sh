#Bash!
# Autor: Villalba Juan Manuel Pedro
# Sistema SO Debian 9 64_86x
# Objeto: Usar para reparar el sistema debian 9 en caso de desconexion.
echo '¡Autoriza!'
echo '
#############################
version 0.0.1 teamrepair de juanma386 22-06-2018
#############################'
sudo -v
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
echo "
#############################
Hoy es el $DIA y la hora actual es $HORA!
#############################"
wget -v https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
echo "Hoy $DIA y a la hora $HORA el sistema instala ha descargado teamviewer en sistema debian 9 64_86"
echo "se procedera a realizar copia de respaldo del log de operaciones"
sudo teamviewer ziplog 
echo "se procedera a realizar la eliminacion del software con defectos [teamviewer]"
clear
echo "
#############################
Parando servicio comprometido
#############################"
sudo teamviewer daemon stop
echo "
#############################
Anulando servicio comprometido
#############################"
sudo teamviewer daemon disable
echo "
#############################
instalando herramientas para limpieza
#############################"
sudo apt install deborphan -y
echo "
#############################
aplicando limpieza
#############################
"
# Realiza limpieza dentro del sistema
sudo deborphan -Z
sudo apt-get clean -y
sudo apt-get autoremove -y
UNUSCONF=$(dpkg -l|grep "^rc"|awk '{print $2}')
sudo apt-get remove --purge $UNUSCONF -y
sudo apt-get install --reinstall deborphan -y
sudo deborphan -Z
sudo apt-get --purge remove $(deborphan -Z) -y
sudo deborphan --libdevel
sudo apt-get --purge remove $(deborphan --libdevel) -y
sudo deborphan --find-config
sudo dpkg --purge $(deborphan --find-config)
sudo apt-get update -y
sudo apt-get dist-upgrade -y
sudo dpkg --configure -a
sudo apt-get -f install
sudo apt-get clean -y
# realiza borrado de lo que queda
sudo apt-get autoclean -y && sudo apt-get autoremove -y
sudo apt remove deborphan -y
sudo apt-get autoclean -y;
sudo apt-get clean -y;
sudo apt-get autoremove --purge -y;
sudo aptitude purge '~c' -y;
clear;
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
