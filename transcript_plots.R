#import file through link
link <- "https://gist.githubusercontent.com/stephenturner/806e31fce55a8b7175af/raw/1a507c4c3f9f1baaa3a69187223ff3d3050628d4/results.txt"
transcript_file <- read.table(link, header=TRUE)
View(transcript_file)

#create plot
plot(x = transcript_file$log2FoldChange , y = -log10(transcript_file$pvalue) , 
     col = "black", pch = 19, cex = 0.5, 
     xlim = c(-2,2), ylim = c(0,8), xlab = "log2FoldChange", ylab = "-log10(pvalue)")

#subset data
leftyellow <- subset(transcript_file,log2FoldChange <= -1 & -log10(pvalue) <= 4)
rightyellow <- subset(transcript_file,log2FoldChange >= 1 & -log10(pvalue) <= 4)
leftgreen <- subset(transcript_file,log2FoldChange >-2 & log2FoldChange < -1 & -log10(pvalue) > 4)
rightgreen <- subset(transcript_file, log2FoldChange > 1 & log2FoldChange < 2 & -log10(pvalue) > 4 )
all_red <- subset(transcript_file, log2FoldChange > -1 & log2FoldChange < 1 & -log10(pvalue) > 4)


points(x = leftyellow$log2FoldChange, y = -log10(leftyellow$pvalue), 
       col = "orange",cex = 0.5, pch = 19 )
points(x = rightyellow$log2FoldChange, y = -log10(rightyellow$pvalue),
       col = "orange", cex = 0.5, pch = 19 )
points(x = leftgreen$log2FoldChange, y = -log10(leftgreen$pvalue),
       col = "green", cex = 0.5, pch = 19)
points(x = rightgreen$log2FoldChange, y = -log10(rightgreen$pvalue),
       col = "green", cex = 0.5, pch = 19)
points(x = all_red$log2FoldChange, y = -log10(all_red$pvalue), col = "red",
       cex = 0.5, pch = 19)

#write text
text(x =leftgreen$log2FoldChange, y = -log10(leftgreen$pvalue)+0.1, labels = leftgreen$Gene,
     col = "green", cex = 0.5, pch = 19)
text(x = rightgreen$log2FoldChange, y = -log10(rightgreen$pvalue)+0.1, labels = rightgreen$Gene,
     col = "green", cex = 0.5, pch = 19)


