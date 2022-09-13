#!/usr/bin/env Rscript

library(ggplot2)
library(cowplot)

infile <- read.csv("RecommendationCategories.tsv", header=T, sep="\t")

png("Förslag.png")
ggplot(infile, aes(x=reorder(Category, NumberOfPapers), y=NumberOfPapers)) +
	geom_col() + coord_flip() +
	geom_text(aes(label=NumberOfPapers), nudge_y = 5) +
	labs(x = "Kategori", y="Antal artiklar",
		title = "[Insert title here]") +
	background_grid(major = "none", minor = "none") +
	scale_y_continuous(breaks=seq(0,40,10), limits=c(0,40)) +
	panel_border(colour = "black", size = 2) +
	theme(plot.title = element_text(hjust = 0.1)) +
	theme(panel.spacing = unit(0.1, "lines")) +
	theme(legend.title=element_blank()) +
	theme(text=(element_text(size=12))) +
	theme(axis.text=(element_text(size=13, colour = "Black"))) +
	theme(panel.background = element_blank()) +
	theme(legend.key = element_blank()) +
	theme(legend.text = element_text(face = "italic")) +
	theme(aspect.ratio=1)
dev.off()
