FROM coredns/coredns:1.7.0


EXPOSE 53 9153 53/udp

COPY ./config/Corefile /etc/coredns/Corefile

VOLUME ["/etc/coredns"]
ENTRYPOINT ["/coredns"]
CMD ["-conf", "/etc/coredns/Corefile"]
