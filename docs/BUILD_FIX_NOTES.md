# Build fix notes

## Fix: `lb config: unrecognized option '--mksquashfs-options'`

The Debian 12 live-build package used in GitHub Actions does not accept
`--mksquashfs-options` as an `lb config` CLI option.

The option was removed from `build.sh`.

Compression is still configured through:

```bash
LB_COMPRESSION="xz"
```

in:

```text
config/binary
```

So the ISO still uses stronger compression without breaking `lb config`.
