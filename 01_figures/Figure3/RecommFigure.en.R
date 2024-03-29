#!/usr/bin/env Rscript

library(ggplot2)
library(cowplot)

infile <- read.csv("RecommendationCategories.tsv", header=T, sep="\t")

svg("Förslag.en.svg")
ggplot(infile, aes(x=reorder(Category, NumberOfPapers), y=NumberOfPapers)) +
	geom_col(aes(fill=NumberOfPapers)) +
	coord_flip() +
	geom_text(aes(label=NumberOfPapers), nudge_y = 1.5) +
	scale_fill_gradient2(mid="yellow", high="red") +
	scale_x_discrete(labels=c("Mitochondrial genomes",
				"Population genetics",
				"Environmental RNA (eRNA)",
				"PCR-free method",
				"eDNA in different environments",
				"Portable sequencing",
				"Long-read sequencing",
				"Ecological interaction networks",
				"Documentation, metadata\nand reproducibility",
				"Other suggestions",
				"New bioinformatic\ntools and models",
				"No suggestions",
				"Standardisation",
				"Sampling strategies",
				"Quantitative analysis",
				"Improved reference sequences")) +
	labs(x = "Category", y="Number of articles",
		title = "Number of articles with future research recommendations") +
	background_grid(major = "none", minor = "none") +
	scale_y_continuous(breaks=seq(0,40,10), limits=c(0,40)) +
	panel_border(colour = "black", size = 2) +
	theme(plot.title = element_text(hjust = 0.1)) +
	theme(panel.spacing = unit(0.1, "lines")) +
	theme(text=(element_text(size=12))) +
	theme(axis.text=(element_text(size=10, colour = "Black"))) +
	theme(panel.background = element_blank()) +
	theme(legend.position="none") +
	theme(aspect.ratio=1)
dev.off()
