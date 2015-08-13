REPONAME="atlantis-kibana"
REPOPATH="/root/elk"
REPODIR="${REPOPATH}/${REPONAME}"
SCRIPTSDIR="${REPODIR}/scripts"

sh "${SCRIPTSDIR}/kibana-setup.sh"
sh "${SCRIPTSDIR}/create-es-kibana-index.sh"
