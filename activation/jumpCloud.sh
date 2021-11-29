if ! $DRY_RUN_CMD ps -aufx | grep jumpcloud
then
	if [ -z ${DRY_RUN+x} ]
	then
		curl --tlsv1.2 --silent --show-error --header 'x-connect-key: fc108d4103f1b0ed2c186536fa9904c75a15e2e1' https://kickstart.jumpcloud.com/Kickstart | sudo bash
	else
		echo "curl --tlsv1.2 --silent --show-error --header 'x-connect-key: fc108d4103f1b0ed2c186536fa9904c75a15e2e1' https://kickstart.jumpcloud.com/Kickstart | sudo bash"
	fi
fi
