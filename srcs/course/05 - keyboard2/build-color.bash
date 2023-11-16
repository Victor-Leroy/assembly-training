set -Cue

THIS_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "${THIS_DIR}/../../.." && pwd)"
BIN_DIR="${ROOT_DIR}/bin"

echo "${ROOT_DIR}"

cd "${THIS_DIR}" && \
    nasm color.asm -f bin -o "${BIN_DIR}/color.com"

#$ chmod +x build-color.bash