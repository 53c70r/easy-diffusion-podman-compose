# easy-diffusion-podman-compose
A simple way to deploy Easy Diffusion in a Podman stack.
## Setup
On SELinux enforced systems execute `setsebool -P container_use_devices 1` before `podman-compose up`.

The server will not listen on `0.0.0.0` after installation.

Just move the `config.yaml` to the storage and restart the service.
