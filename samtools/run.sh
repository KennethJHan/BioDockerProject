docker run --rm -v /YOUR/DATA/LOCATION:/data samtools:1.17 samtools flagstat /data/test.bam

# EXAMPLE
# $ docker run --rm -v /data/develop/BioinformaticsDockerProject/samtools/test_data:/data samtools:1.17 samtools flagstat /data/test.bam
# 227995 + 0 in total (QC-passed reads + QC-failed reads)
# 227380 + 0 primary
# 0 + 0 secondary
# 615 + 0 supplementary
# 0 + 0 duplicates
# 0 + 0 primary duplicates
# 225147 + 0 mapped (98.75% : N/A)
# 224532 + 0 primary mapped (98.75% : N/A)
# 227380 + 0 paired in sequencing
# 113690 + 0 read1
# 113690 + 0 read2
# 189344 + 0 properly paired (83.27% : N/A)
# 222530 + 0 with itself and mate mapped
# 2002 + 0 singletons (0.88% : N/A)
# 27104 + 0 with mate mapped to a different chr
# 21713 + 0 with mate mapped to a different chr (mapQ>=5)