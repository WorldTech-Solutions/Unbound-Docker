## Unbound Docker

Running the update script will both deploy and update a local unbound Docker container.

## What does this do?
1. Creates a clean build environment to statically compile unbound.
2. Builds unbound binary.  (built from latest tar)
3. Builds unbound-server image that includes newly minted unbound binary, and unbound.conf
4. Removes Existing Docker containers
5. Starts docker
