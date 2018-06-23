#Bash!
# Autor: Villalba Juan Manuel Pedro
# Sistema SO Debian 9 64_86x
# Objeto: Usar para reparar el sistema debian 9 en caso de desconexion.
echo '¡Autoriza!'
echo 'version 0.0.1 teamrepair de juanma386 22-06-2018'
sudo -v
foldering = '/tmp/teamviewer-$DIA-y-$HORA'
DIA=`date +"%d/%m/%Y"`
HORA=`date +"%H:%M"`
echo "Hoy es el $DIA y la hora actual es $HORA!"
cd $foldering && wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
echo "Hoy $DIA y a la hora $HORA el sistema instala ha descargado teamviewer en sistema debian 9 64_86"
echo "se procedera a realizar copia de respaldo del log de operaciones"
sudo teamviewer ziplog 
echo "se procedera a realizar la eliminacion del software con defectos [teamviewer]"
clear
echo "Parando servicio comprometido"
sudo teamviewer daemon stop
echo "Anulando servicio comprometido"
sudo teamviewer daemon disable
echo "instalando herramientas para limpieza"
sudo apt install deborphan -y
sudo apt install gtkorphan -y
echo "aplicando limpieza"
# Realiza limpieza dentro del sistema
sudo deborphan
sudo orphaner
# realiza borrado de lo que queda
sudo apt-get autoclean && sudo apt-get autoremove
sudo apt remove deborphan
sudo apt remove gtkorphan

sudo apt-get autoclean -y;
sudo apt-get clean -y;
sudo apt-get autoremove --purge -y;
sudo aptitude purge '~c' -y;
clear;
# Final del script
echo '
#########################################################
# APLICANDA LA LIMPIEZA!	    			                    #
# PROGRAMA FINALIZADO		 			                          #
# Gracias por usar este programa	                  	 	#
#							                                          #
# PROGRAMA #BASH!					                              #
# Author: Villalba Juan Manuel Pedro			              #
# Version: 0.0.1					                              #
# Estado: Alpha						                              #
# Destino: resolver problemas APT-GET			              #
# Date: 05:41pm 22-06-2018				                      #
# Advertencia: Usar con cautela y bajo propia respons...#
# Licence: GPLv2 Free Software Foundation		            #
# licensing@fsf.org					                            #
#							                                          #
#########################################################
';
