#!/bin/bash
# Copyright (c) Facebook, Inc. and its affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

pip install -r requirements.txt
# conda install -c pytorch faiss-cpu=1.7.4 mkl=2021 blas=1.0=mkl
conda install faiss-gpu=1.7.4 mkl=2021 pytorch=2.0.1 pytorch-cuda=11.8 numpy -c pytorch -c nvidia

git clone git@github.com:NVIDIA/apex.git --branch 23.05 --single-branch
cd apex
pip install -v --disable-pip-version-check --no-cache-dir ./

python setup.py develop