# Copyright (C) 2025 Solution Libre
# 
# This file is part of Ansible Docker Image for VSCode.
# 
# Ansible Docker Image for VSCode is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# Ansible Docker Image for VSCode is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with Ansible Docker Image for VSCode.  If not, see <https://www.gnu.org/licenses/>.

ARG ADT_VERSION=v24.12.0

FROM ghcr.io/ansible/community-ansible-dev-tools:${ADT_VERSION}

ARG ADT_VERSION
ARG VERSION=0.1.0

LABEL org.opencontainers.image.authors='Solution Libre <contact@solution-libre.fr>' \
      org.opencontainers.image.base.name="ghcr.io/ansible/community-ansible-dev-tools:${ADT_VERSION}" \
      org.opencontainers.image.description='Ansible for VSCode' \
      org.opencontainers.image.documentation='https://usine.solution-libre.fr/docker/ansible-for-vscode/-/blob/main/README.md' \
      org.opencontainers.image.licenses='GPL-3.0-or-later' \
      org.opencontainers.image.ref.name='ansible-for-vscode' \
      org.opencontainers.image.source='https://usine.solution-libre.fr/docker/ansible-for-vscode/-/tree/main/' \
      org.opencontainers.image.title='ansible-for-vscode' \
      org.opencontainers.image.url='https://usine.solution-libre.fr/docker/ansible-for-vscode/' \
      org.opencontainers.image.vendor='Solution Libre' \
      org.opencontainers.image.version="${VERSION}"

RUN useradd -m vscode
USER vscode
# hadolint ignore=SC2016
RUN curl -q https://salsa.debian.org/debian/bash/-/raw/debian/master/debian/skel.bashrc -o ~/.bashrc \
    && sed -i \
        -e 's/\(PS1=.*\)\\\$ /\1$(__git_ps1 " (%s)")\\\$ /' \
        -e '59i . /usr/share/git-core/git-prompt.sh' \
        ~/.bashrc
