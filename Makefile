SHELL := /bin/bash

spack:
        git clone https://github.com/spack/spack

eic-spack:
        git clone https://github.com/eic/eic-spack

all: spack eic-spack
        source spack/share/spack/setup-env.sh
        spack repo add eic-spack
        spack install athena-eic +reconstruction
