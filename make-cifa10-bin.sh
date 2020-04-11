#!/bin/bash
find . -type f -name .DS_Store | xargs rm
python3 create_binary.py
rm -rf cifar-10-batches-bin
mv binary_tar cifar-10-batches-bin
tar -cmf cifar-10-binary.tar cifar-10-batches-bin
rm -rf cifar-10-binary.tar.gz
gzip cifar-10-binary.tar
