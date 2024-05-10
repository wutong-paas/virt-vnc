# FROM alpine

# # Install kubectl
# RUN apk add --no-cache kubectl
# COPY static /static
# # COPY config /root/.kube/config

# CMD ["/bin/sh", "-c", "kubectl proxy --www=/static --accept-hosts=^.*$ --address=[::] --api-prefix=/console/virt-vnc/${VM_NAMESPACE}/${VM_NAME}/k8s/ --www-prefix="]

FROM alpine

# Install kubectl
RUN apk add --no-cache kubectl
COPY static /static
COPY docker_entrypoint.sh /docker_entrypoint.sh

CMD ["/bin/sh", "-c", "/docker_entrypoint.sh"]