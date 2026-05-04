# Ansible Development Tools Docker Image for VSCode

<!-- markdownlint-disable-next-line MD001 -->
#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
3. [Reference](#reference)
4. [Development](#development)
5. [Contributors](#contributors)

## Description

[Docker](https://www.docker.com/) image of [Ansible Development Tools] for [VSCode](https://code.visualstudio.com/)
via [Development Containers](https://containers.dev/) by [Solution Libre].

## Setup

1. In your VSCode project, create or update the `.devcontainer/devcontainer.json` file:

    ```json
    {
      "name": "Ansible",
      "image": "registry.solution-libre.fr/docker/ansible-for-vscode:0.2.0",
      "customizations": {
        "vscode": {
          "extensions": [
            "redhat.ansible"
          ]
        }
      }
    }
    ```

2. Launch the VSCode command `Dev Containers: Rebuild and Reopen in Container`.

## Reference

| Software                    | Version |
| --------------------------- | ------- |
| [Ansible Development Tools] | v26.4.6 |

## Development

[Solution Libre]'s repositories are open projects,
and community contributions are essential for keeping them great.

[Fork this repo on our GitLab](https://usine.solution-libre.fr/docker/Ansible-for-vscode/-/forks/new) or
[on GitHub](https://github.com/solution-libre/docker-ansible-for-vscode/fork)

## Contributors

The list of contributors can be found at: <https://usine.solution-libre.fr/docker/ansible-for-vscode/-/graphs/main>

[Ansible Development Tools]: https://ansible.readthedocs.io/projects/dev-tools/
[Solution Libre]: https://www.solution-libre.fr
