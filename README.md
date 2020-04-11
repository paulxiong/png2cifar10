# png2cifar10
 make a cifar10 archive from pngs
This project is making cifar-10 binary only.
* unzip input.zip
```
input/
├── 1
│   ├── airplane
│   │   ├── xx.png
│   │   ├── ...
│   │
│   └── automobile
│       ├── xx.png
│       ├── ...
├── 2
│   ├── airplane
│   │   ├── xx.png
│   │   ├── ...
│   │
│   └── automobile
│       ├── xx.png
│       ├── ...
├── 3
│   ├── airplane
│   │   ├── xx.png
│   │   ├── ...
│   │
│   └── automobile
│       ├── xx.png
│       ├── ...
├── 4
│   ├── airplane
│   │   ├── xx.png
│   │   ├── ...
│   │
│   └── automobile
│       ├── xx.png
│       ├── ...
├── 5
│   ├── airplane
│   │   ├── xx.png
│   │   ├── ...
│   │
│   └── automobile
│       ├── xx.png
│       ├── ...
└── test
    ├── airplane
    │   ├── xx.png
    │   ├── ...
    │
    └── automobile
        ├── xx.png
        ├── ...
```
* copy .png files to corresponding folder ./input/1/airplane ... etc.  (folder ./input/1..5 suppose to have different imgs with same label.)
* python create_binary.py  will generate new directory : ./binary_tar/ with following files: 
  data_batch_1.bin... test_batch.bin... batches.meta.txt
* mv binary_tar cifar-10-batches-bin
tar -cmf cifar-10-binary.tar cifar-10-batches-bin
* gzip cifar-10-binary.tar
* Finally, we have cifar-10-binary.tar.gz

 Above steps can be executed by make-cifa10-bin.sh

