# Running Docker
#    #+name: netboot-dev.sh

ENV_FILE=netboot-dev.env
. $ENV_FILE
docker run \
       --env-file $ENV_FILE \
       --name kubemacs-docker-init \
       --user root \
       --privileged \
       --network host \
       --rm \
       -it \
       -v "$HOME/.kube:/tmp/.kube" \
       -v /var/run/docker.sock:/var/run/docker.sock \
       $KUBEMACS_IMAGE \
       docker-init.sh
