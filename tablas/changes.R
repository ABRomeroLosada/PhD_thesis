ld <- data.frame(Datos=c(1470,1737,1160,1667,1650))
rownames(ld) <- c("Non-rhythmic", "LD_only","LD_LL", "LD_DD", "LD_LL_DD")
pie(ld$Datos, col = c("white", "lightblue1", "lightblue", "darkblue", "blue"),labels = NA)

sd <- data.frame(Datos=c(1567,1609,495,2975,1037))
rownames(sd) <- c("Non-rhythmic", "SD_only","SD_LL", "SD_DD", "SD_LL_DD")
pie(sd$Datos, col = c("white", "pink1", "salmon", "darkred", "red"),labels = NA)

ld_no <- read.table("LD_non_rhythmic_genes.tsv", header = T)
sd_no<- read.table("SD_non_rhythmic_genes.tsv",header = T)
length(ld_no$geneID)
length(sd_no$geneID)

no <- unique(ld_no$geneID, sd_no$geneID)
anotation <- ld_no$annotation
names(anotation) <- ld_no$geneID
no_ano<- anotation[no]

no_table <- data.frame(GeneID=no, Annotation=no_ano)
head(no_table)
write.table(x = no_table, file="Non_rhythmic_genesSDLD.tsv", row.names = F)


LD_LL_DD <- read.table("LD_LL_DD_rhythmic_genes.tsv", header=T)
bonafide <- read.table("bona_fide_circadianLD_SD_LL_and_DD_rhythmic_genes.tsv", header = T)
length(bonafide$x)

total <- LD_LL_DD$annotation
names(total) <- LD_LL_DD$geneID

annotation_bonafide <- total[bonafide$x]
bonafide_table <- data.frame(GeneID=bonafide$x, Annotation= annotation_bonafide)
write.table(x = bonafide_table, file="bona_fide.tsv", row.names = F)
