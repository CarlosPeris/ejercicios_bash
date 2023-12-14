FROM ubuntu:jammy
RUN apt update -y && apt install nano -y
RUN groupadd --gid 30025 domain_users
RUN useradd -m --uid 30015 --gid 30025 alu10219544
USER alu10219544
WORKDIR /home/alu10219544
CMD ["/bin/bash"
