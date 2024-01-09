# Script location.
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# https://buildroot.org/downloads/manual/manual.html#download-location
export BR2_DL_DIR="${DIR}/.buildroot-dl"
echo "Set BR2_DL_DIR=${BR2_DL_DIR}"
