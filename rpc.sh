#!/bin/bash

# for file in *.md;do
#     echo -e "# $(cat ${file})" > ${file}
# done;

# for file in *.md;do
#     sed -i 's/```//' ${file}
# done;


for file in *.md;do
    sed -i '/Examples:/a ```' ${file}
    sed -i '/Result:/a ```' ${file}
    sed -i '/Examples:/i ```' ${file}
    echo '```' >> ${file}
done;

