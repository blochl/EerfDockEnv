FROM blochl/esrfpy
ARG user
ARG uid
ARG group
ARG gid

RUN groupadd -g ${gid} ${group} \
    && useradd -m -g ${group} -G sudo -s /bin/bash -u ${uid} ${user}

USER ${user}
WORKDIR /home/${user}
CMD ["/bin/bash"]
