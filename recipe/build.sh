#!/bin/bash

export DISABLE_AUTOBREW=1

## NB: Workaround for pthreads QEMU issue on alma9 images
## see https://github.com/conda-forge/r-base-feedstock/issues/366
if [[ "$target_platform" == "linux-ppc64le" ]]; then
  for CHANGE in "activate" "deactivate"
  do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/scripts/${CHANGE}.sh" "${PREFIX}/etc/conda/${CHANGE}.d/${PKG_NAME}_${CHANGE}.sh"
  done
fi

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
