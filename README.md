# Containerdays 2025 - Revolutionize your OS deploy and management with bootc

Demo project for building and managing bootc-based operating system images.

## Prerequisites

- podman or docker
- A bootc-compatible base image

## Build

```bash
podman build -t bootc-demo .
```

## Usage

Deploy the image to a bootc-compatible host using the generated qcow2 or ISO artifact.

## License

This project is licensed under the Apache License 2.0.
