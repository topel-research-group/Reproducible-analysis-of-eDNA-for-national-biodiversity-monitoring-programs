#!/usr/bin/env Rscript

# Generate plot for GenBank sequences

library(ggplot2)
library(scales)
library(cowplot)

infile <- read.csv("GenBank_Stats.v2.tsv", header=T, sep="\t")
infile$Date <- as.Date(infile$Date)
infile$GB_Sequences2 <- infile$GB_Sequences/1000000	# Abbreviate the Y axis to millions

png("Sekvenser_i_GenBank.png")
ggplot(infile, aes(x=Date, y=GB_Sequences2)) + geom_point() +
	scale_x_date(date_labels = "%Y") +
	labs(x = "År", y = "Sekvenser i GenBank (miljoner)",
		title = "Antal DNA-sekvenser i Genbank") +
	background_grid(major = "none", minor = "none") +
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

###

# Old version - full numbers on Y axis
#
#png("OLD_Sekvenser_i_GenBank.png")
#ggplot(infile, aes(x=Date, y=GB_Sequences)) + geom_point() +
#	scale_x_date(date_labels = "%Y") +
#	scale_y_continuous(labels=function(x) format(x, big.mark = ".", scientific = FALSE)) +
#	labs(x = "År", y = "Sekvenser i GenBank",
#		title = "Antal DNA-sekvenser i Genbank") +
#	background_grid(major = "none", minor = "none") +
#	panel_border(colour = "black", size = 2) +
#	theme(plot.title = element_text(hjust = 0.1)) +
#	theme(panel.spacing = unit(0.1, "lines")) +
#	theme(legend.title=element_blank()) +
#	theme(text=(element_text(size=12))) +
#	theme(axis.text=(element_text(size=13, colour = "Black"))) +
#	theme(panel.background = element_blank()) +
#	theme(legend.key = element_blank()) +
#	theme(legend.text = element_text(face = "italic")) +
#	theme(aspect.ratio=1)
#dev.off()

###

sessionInfo()

#R version 3.6.1 (2019-07-05)
#Platform: x86_64-conda_cos6-linux-gnu (64-bit)
#Running under: CentOS Linux 7 (Core)
#
#Matrix products: default
#BLAS/LAPACK: /export/home/local/packages/Anaconda3-2019.10/lib/R/lib/libRblas.so
#
#locale:
# [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C
# [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8
# [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8
# [7] LC_PAPER=en_US.UTF-8       LC_NAME=C
# [9] LC_ADDRESS=C               LC_TELEPHONE=C
#[11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C
#
#attached base packages:
#[1] stats     graphics  grDevices utils     datasets  methods   base
#
#other attached packages:
#[1] cowplot_1.1.1 scales_1.2.0  ggplot2_3.3.6
#
#loaded via a namespace (and not attached):
# [1] magrittr_2.0.3   tidyselect_1.1.2 munsell_0.5.0    colorspace_2.0-3
# [5] R6_2.5.1         rlang_1.0.4      fansi_1.0.3      dplyr_1.0.9
# [9] grid_3.6.1       gtable_0.3.0     utf8_1.2.2       cli_3.3.0
#[13] DBI_1.1.2        withr_2.5.0      assertthat_0.2.1 digest_0.6.29
#[17] tibble_3.1.8     lifecycle_1.0.1  purrr_0.3.4      farver_2.1.1
#[21] vctrs_0.4.1      glue_1.6.2       labeling_0.4.2   compiler_3.6.1
#[25] pillar_1.8.0     generics_0.1.3   pkgconfig_2.0.3
