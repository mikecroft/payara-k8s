FROM payara/micro:173

COPY hz-k8s.jar ${PAYARA_PATH}
COPY hz.xml ${PAYARA_PATH}

ENTRYPOINT ["java", "-jar", "payara-micro.jar", "--addjars", "hz-k8s.jar", "--hzconfigfile", "hz.xml"]
