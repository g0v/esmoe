# Moedict in ES

## Features

1. 互文搜尋 (此字詞是否用於其他字詞的釋義之中)
2. 近義搜尋 (此字詞的釋義是否與其他字詞類似)

## Usage

    # prepare ... assuming @tools are all installed :-)
    elasticsearch
    perlbrew use 5.16.2
    cpanm --installdeps .

    # indexing
    bin/revised-import /path-to/dict-revised.json

    # querying
    bin/revised-search-title 三隻小豬
    bin/revised-search-definition 哇塞中文網
    bin/revised-search-example "水餃 元寶"
