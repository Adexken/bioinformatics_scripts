~$ conda activate;figlet -c ismail
~$ mkdir compare
~/compare$ wget https://www.bioinformatics.babraham.ac.uk/training/Introduction%20to%20Unix/unix_intro_data.tar.gz    
gzip -d unix_intro_data.tar
tar -xf unix_intro_data.tar
~/compare/seqmonk_genomes/Saccharomyces cerevisiae/EF4$ cat Mito.dat | grep -n "rRNA"
~/compare/seqmonk_genomes/Saccharomyces cerevisiae/EF4$ cp Mito.dat ~/compare
~/compare$ nano Mito.dat 
ctrl O and ctrl X
mv Mito.dat Mitochonrion.txt
~/compare/FastQ_Data$ wc -l lane8_DD_P4_TTAGGC_L008_R1.fastq.gz
~/compare/FastQ_Data$ cat lane8_DD_P4_TTAGGC_L008_R1.fastq.gz >> lane_lines.txt;cat lane8_DD_P4_TTAGGC_L008_R2.fastq.gz >> lane_lines.txt;cat  lane8_DD_P9_TGACCA_L008_R1.fastq.gz >> lane_lines.txt;cat lane8_DD_P9_TGACCA_L008_R2.fastq.gz >> lane_lines.txt;cat lane8_FF_P4_ATCACG_L008_R1.fastq.gz >>lane_lines.txt; cat lane8_FF_P4_ATCACG_L008_R2.fastq.gz >> lane_lines;cat lane8_FF_P9_CGATGT_L008_R1.fastq.gz >> lane_lines.txt; cat lane8_FF_P9_CGATGT_L008_R2.fastq.gz >>lane_lines.txt 
