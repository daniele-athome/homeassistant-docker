# Home Assistant unprivileged Docker image

An opinionated Docker image of Home Assistant that drops root privileges before executing Home Assistant itself.

Work in progress. Stay tuned.

## Configuration

Configuration is done via environment variables.

| Variable     | Description                                        |
|--------------|----------------------------------------------------|
| `PUID`       | Home Assistant user ID                             |
| `PGID`       | Home Assistant group ID                            |
| `TZ`         | Timezone                                           |
| `DIALOG_GID` | Group ID of the `dialout` group on the host system |
