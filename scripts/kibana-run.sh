KIBANAVER="kibana-4.1.1-linux-x64"
REPONAME="atlantis-kibana"
REPOPATH="/root/elk/${REPONAME}"
KIBANADIR="${REPOPATH}/${KIBANAVER}"
ATLANTISLOGDIR="/var/log/atlantis"
KIBANALOGDIR="${ATLANTISLOGDIR}/kibana"
CONFIGDIR="${REPODIR}/config-files"

if [ -e "${KIBANALOGDIR}/out.log" ]; then
	
	rm "${KIBANALOGDIR}/out.log"
fi

if [ -e "${KIBANALOGDIR}/err.log" ]; then
	
	rm "${KIBANALOGDIR}/err.log"
fi

$KIBANADIR/bin/kibana --config "${CONFIGDIR}/kibana.yaml" > "${KIBANALOGDIR}/out.log" 2> "${KIBANALOGDIR}/err.log" &
