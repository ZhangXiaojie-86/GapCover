bwa index scaff.fa 
bwa mem scaff.fa lib1.fastq > lib1.sam
bwa mem scaff.fa lib2.fastq > lib2.sam

perl GetGapInfo.pl scaf.fa >scaf.gap.info
perl pre.Filt.pl scaf.gap.info lib1.sam
perl pre.Filt.pl scaf.gap.info lib2.sam
