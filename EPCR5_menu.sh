#!/bin/sh 
# PowerMenu EPCR5 v0.3
# *************************************************************************
# *              Copyright (c) 2016 by Garrett J. Beasley	          *
# *									  *	
# * 	  					        		  *
# *     Licensed under the Apache License, Version 2.0 (the "License");   *
# *     you may not use this file except in compliance with the License.  *
# *              You may obtain a copy of the License at		  *		   
# * 									  *
# *              http://www.apache.org/licenses/LICENSE-2.0		  *	
# * 									  *
# *   Unless required by applicable law or agreed to in writing, software *
# *    distributed under the License is distributed on an "AS IS" BASIS,  *
# *WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied*
# *  See the License for the specific language governing permissions and  *
# *                  limitations under the License.			  *
# * 									  *
# *************************************************************************

toggle_relay () {

		#relay option's
		relayopt1=$1
		relayopt2=$2
		relayopt3=$3
		relayopt4=$4
		relayopt5=$5
		relayopt6=$6
		relayopt7=$7
		relayopt8=$8

		#Turn off relay's
		ubus call dli.relay.ttyATH0.$relayopt1 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt2 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt3 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt4 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt5 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt6 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt7 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt8 set '{"key":"state","value":"false"}'
		sleep 0.5
		#Turn on relay's
		ubus call dli.relay.ttyATH0.$relayopt1 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt2 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt3 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt4 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt5 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt6 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt7 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt8 set '{"key":"state","value":"true"}'
}

relay_on () {
		#relay option's
		relayopt1=$1
		relayopt2=$2
		relayopt3=$3
		relayopt4=$4
		relayopt5=$5
		relayopt6=$6
		relayopt7=$7
		relayopt8=$8

		#Turn on relay's
		ubus call dli.relay.ttyATH0.$relayopt1 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt2 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt3 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt4 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt5 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt6 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt7 set '{"key":"state","value":"true"}'
		ubus call dli.relay.ttyATH0.$relayopt8 set '{"key":"state","value":"true"}'
}

relay_off () {
		#relay option's
		relayopt1=$1
		relayopt2=$2
		relayopt3=$3
		relayopt4=$4
		relayopt5=$5
		relayopt6=$6
		relayopt7=$7
		relayopt8=$8
		
		#Turn off relay's
		ubus call dli.relay.ttyATH0.$relayopt1 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt2 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt3 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt4 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt5 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt6 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt7 set '{"key":"state","value":"false"}'
		ubus call dli.relay.ttyATH0.$relayopt8 set '{"key":"state","value":"false"}'
}

all_relay_on () {
		for i in 1 2 3 4 5 6 7 8
			do
				#relay number
				relaynum=$i

				#Turn off relay
				ubus call dli.relay.ttyATH0.$relaynum set '{"key":"state","value":"true"}'
		done
}

all_relay_off () {
		for i in 1 2 3 4 5 6 7 8
			do
				#relay number
				relaynum=$i

				#Turn off relay
				ubus call dli.relay.ttyATH0.$relaynum set '{"key":"state","value":"false"}'
		done
}

relay_status () {
		#relayinfo
		relayinfo1=`ubus call dli.relay.ttyATH0.1 get '{"key":"state"}' | grep value | grep -o false`
		relayinfo2=`ubus call dli.relay.ttyATH0.2 get '{"key":"state"}' | grep value | grep -o false`
		relayinfo3=`ubus call dli.relay.ttyATH0.3 get '{"key":"state"}' | grep value | grep -o false`
		relayinfo4=`ubus call dli.relay.ttyATH0.4 get '{"key":"state"}' | grep value | grep -o false`
		relayinfo5=`ubus call dli.relay.ttyATH0.5 get '{"key":"state"}' | grep value | grep -o false`
		relayinfo6=`ubus call dli.relay.ttyATH0.6 get '{"key":"state"}' | grep value | grep -o false`
		relayinfo7=`ubus call dli.relay.ttyATH0.7 get '{"key":"state"}' | grep value | grep -o false`
		relayinfo8=`ubus call dli.relay.ttyATH0.8 get '{"key":"state"}' | grep value | grep -o false`

		if [ "$relayinfo1" = "false" ]
		then
			relayinfo1=`echo -e "\033[91mOff\e[0m"`
		else
			relayinfo1=`echo -e "\033[92mOn\e[0m"`
		fi
		
		if [ "$relayinfo2" = "false" ]
		then
			relayinfo2=`echo -e "\033[91mOff\e[0m"`
		else
			relayinfo2=`echo -e "\033[92mOn\e[0m"`
		fi
		
		if [ "$relayinfo3" = "false" ]
		then
			relayinfo3=`echo -e "\033[91mOff\e[0m"`
		else
			relayinfo3=`echo -e "\033[92mOn\e[0m"`
		fi
		
		if [ "$relayinfo4" = "false" ]
		then
			relayinfo4=`echo -e "\033[91mOff\e[0m"`
		else
			relayinfo4=`echo -e "\033[92mOn\e[0m"`
		fi
		
		if [ "$relayinfo5" = "false" ]
		then
			relayinfo5=`echo -e "\033[91mOff\e[0m"`
		else
			relayinfo5=`echo -e "\033[92mOn\e[0m"`
		fi
		
		if [ "$relayinfo6" = "false" ]
		then
			relayinfo6=`echo -e "\033[91mOff\e[0m"`
		else
			relayinfo6=`echo -e "\033[92mOn\e[0m"`
		fi
		
		if [ "$relayinfo7" = "false" ]
		then
			relayinfo7=`echo -e "\033[91mOff\e[0m"`
		else
			relayinfo7=`echo -e "\033[92mOn\e[0m"`
		fi
		
		if [ "$relayinfo8" = "false" ]
		then
			relayinfo8=`echo -e "\033[91mOff\e[0m"`
		else
			relayinfo8=`echo -e "\033[92mOn\e[0m"`
		fi
		
		echo "Relay 1: " $relayinfo1 " Relay 2: " $relayinfo2 " Relay 3: " $relayinfo3 " Relay 4: " $relayinfo4
		echo "Relay 5: " $relayinfo5 " Relay 6: " $relayinfo6 " Relay 7: " $relayinfo7 " Relay 8: " $relayinfo8
}

while true
	do
	clear
	echo "*******************"
	echo "	Menu	  	 "
	echo "*******************"
	echo " "
	relay_status
	echo " "
	echo "1. Toggle Relay's"
	echo "2. Relay On"
	echo "3. Relay Off"
	echo "4. All Relay's On"
	echo "5. All Relay's Off"
	echo "X: Exit"
	echo "Enter your option: "
	echo " "
	
	read option
		case $option in
		
		#Toggle Relay
		1) clear
		 read -p "Enter the relay number's you would like to toggle. (Example: 1 3 6): " num
		 toggle_relay $num
		 ;;
		 
		#Relay On
		2) clear
		 read -p "Enter the relay number's you would like to turn on. (Example: 1 4 5): " num
		relay_on $num
		 ;;

		#Relay Off
		3) clear
		 read -p "Enter the relay number's you would like to turn off. (Example: 1 7 2): " num
		 relay_off $num
		 ;;

		#All Relay's On
		4) clear
		 all_relay_on
		 ;;

		#All Relay's off
		5) clear
		 all_relay_off
		 ;;
		 
		#Exit Script		
		x|X|exit) exit 
			;;
			
		#Input Selector Check
		*) echo "Enter a valid selection" 
			;;
	esac
done
