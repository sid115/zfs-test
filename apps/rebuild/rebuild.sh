USER="$(whoami)"
HOST="zfs-test"
TARGET_HOST="91.98.86.229"
BUILD_HOST="portuus.de"
PORT="2299"

NIX_SSHOPTS="-p $PORT" rebuild nixos -p . -H "$HOST" -B "$USER"@"$BUILD_HOST" -T "$USER"@"$TARGET_HOST"
