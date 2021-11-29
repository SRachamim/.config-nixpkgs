if ! $DRY_RUN_CMD command -v bd &> /dev/null
then
	if [ -z ${DRY_RUN+x} ]
	then
		RESULT=/tmp/config/nixpkgs/bitDefender
		mkdir -p $RESULT
		tar -xf TARBALL -C $RESULT
		chmod +x $RESULT/installer
		(sudo $RESULT/installer)
	else
		echo "curl https://get.volta.sh | bash"
	fi
fi
