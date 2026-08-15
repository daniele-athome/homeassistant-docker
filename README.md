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
