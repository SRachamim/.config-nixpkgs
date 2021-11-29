if ! $DRY_RUN_CMD command -v volta &> /dev/null
then
	if [ -z ${DRY_RUN+x} ]
	then
		curl https://get.volta.sh | bash

		(~/.volta/bin/volta install node)
	else
		echo "curl https://get.volta.sh | bash"

		echo "volta install node"
	fi
fi
