KIBANAVER="kibana-4.1.1-linux-x64"
REPONAME="atlantis-kibana"
REPOPATH="/root/elk"
REPODIR="${REPOPATH}/${REPONAME}"
ATLANTISLOGDIR="/var/log/atlantis"
KIBANALOGDIR="${ATLANTISLOGDIR}/kibana"

rm "${KIBANALOGDIR}/*"
$REPODIR/bin/kibana > "${KIBANALOGDIR}/out.log" 2> "${KIBANALOGDIR}/err.log" &
