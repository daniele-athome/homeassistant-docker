# Home Assistant unprivileged Docker image

An opinionated Docker image of Home Assistant that drops root privileges before executing Home Assistant itself.

Includes some opinionated patches and requires the `s6_ready` integration available in my [Home Assistant configuration
repository](https://github.com/daniele-athome/hass-config).

## Configuration

Configuration is done via environment variables.

| Variable      | Description                                        |
|---------------|----------------------------------------------------|
| `PUID`        | Home Assistant user ID                             |
| `PGID`        | Home Assistant group ID                            |
| `TZ`          | Timezone                                           |
| `DIALOUT_GID` | Group ID of the `dialout` group on the host system |

The `dialout` group is required to allow Home Assistant access to some USB devices, such as the SkyConnect USB
controller.

## Release

The image is built and published only when a git tag is pushed. The tag name must be the Home Assistant version to
build (e.g. `2026.9.4`) and a matching `patches/<version>` directory (or symlink) must exist. The image is pushed with
both the version tag and the `stable` tag, which always points to the latest pushed release.

```shell
git tag 2026.9.4
git push origin 2026.9.4
```
