##delete 接头


for id in *1.fastq.gz
do 

mkdir ${id%%_*}
trim_galore --phred33 -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC -a2 AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT --gzip --length 20 --paired --trim-n -o ./${id%%_*}  $id ${id%1*}2.fastq.gz


done
