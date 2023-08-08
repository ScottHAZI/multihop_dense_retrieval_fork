#!/bin/bash
# Copyright (c) Facebook, Inc. and its affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

set -e

pip install -r requirements.txt
#conda install faiss-cpu -c pytorch
#conda install faiss-gpu cudatoolkit=10.2 -c pytorch
#conda install pytorch cudatoolkit=10.2 -c pytorch

#git clone https://github.com/NVIDIA/apex --branch 23.05 --single-branch
#cd apex
#pip install -v --disable-pip-version-check --no-cache-dir ./

python setup.py develop