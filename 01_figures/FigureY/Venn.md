A: Analysis parameters specified 
B: Explicitly state the version of all programs used
C: FAIR reference database
D: FAIR input data

AREA OF A	40 (4 A only)
AREA OF B	27 (0 B only)
AREA OF C	35 (1 C only)
AREA OF D	48 (5 D only)

AREA OF AB	31 (2 AB only)
AREA OF AC	31 (1 AC only)
AREA OF AD	41 (6 AD only)
AREA OF BC	26 (0 BC only)
AREA OF BD	32 (1 BD only)
AREA OF CD	38 (6 CD only)

AREA OF ABC	23 (1 ABC only)
AREA OF ABD	28 (6 ABD only)
AREA OF ACD	29 (7 ACD only)
AREA OF BCD	25 (3 BCD only)

AREA OF ABCD	22

```
library("VennDiagram")

svg("FigureY.svg")
draw.quad.venn(area1 = 49, area2 = 35, area3 = 41, area4 = 56,
		n12 = 31, n13 = 31, n14 = 41, n23 = 26, n24 = 32, n34 = 38,
		n123 = 23, n124 = 28, n134 = 29, n234 = 25, n1234 = 22,
		category = c("Analysparametrar specificerade",
				"Namn och programversion specificerad",
				"FAIR referensdatabas",
				"FAIR analyserad data"))
dev.off()

sessionInfo()
```

###


R version 3.6.1 (2019-07-05)
Platform: x86_64-conda_cos6-linux-gnu (64-bit)
Running under: CentOS Linux 7 (Core)

Matrix products: default
BLAS/LAPACK: /export/home/local/packages/Anaconda3-2019.10/lib/R/lib/libRblas.so

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C
 [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8
 [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8
 [7] LC_PAPER=en_US.UTF-8       LC_NAME=C
 [9] LC_ADDRESS=C               LC_TELEPHONE=C
[11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C

attached base packages:
[1] grid      stats     graphics  grDevices utils     datasets  methods
[8] base

other attached packages:
[1] VennDiagram_1.7.1   futile.logger_1.4.3

loaded via a namespace (and not attached):
[1] compiler_3.6.1       formatR_1.11         lambda.r_1.2.4
[4] futile.options_1.0.1
