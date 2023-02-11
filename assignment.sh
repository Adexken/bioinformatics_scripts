mkdir ismail
mkdir biocomputing;cd biocomputing 
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna;wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk;wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
mv wildtype.fna ../ismail/
rm wildtype.gbk wildtype.gbk.1
cat wildtype.fna | grep -n “tatatata”
cat wildtype.fna | grep -n “tatatata” >> mutant.txt
history | less