set -Cue

THIS_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "${THIS_DIR}/../../.." && pwd)"
BIN_DIR="${ROOT_DIR}/bin"

echo "${ROOT_DIR}"

cd "${THIS_DIR}" && \
    nasm Keyboard.asm -f bin -o "${BIN_DIR}/keyboard.com"

#$ chmod +x build-keyboard.bash