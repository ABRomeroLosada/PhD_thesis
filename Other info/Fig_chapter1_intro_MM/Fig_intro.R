pub <- read.table("PubMed_Timeline_Results_by_Year.csv", sep = ",", skip = 1, header = T)
head(pub)
pub$Year <- as.character(pub$Year)
ggplot(data = pub, aes(x = Year, y = Count)) +
  geom_bar(stat = 'identity', aes(fill = Count)) + 
  geom_text(aes(label = Count), vjust = -0.2, size = 3,
            position = position_dodge(0.9)) +
  theme_minimal(base_line_size = 0.001, 
                base_size = 20) +
  theme(axis.text.x=element_text(angle=90,hjust=0.02,vjust=0.5, )) +
  scale_fill_gradient2(low='pink1', mid="grey94", high='maroon3')
