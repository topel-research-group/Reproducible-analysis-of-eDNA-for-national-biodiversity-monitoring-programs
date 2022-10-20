## Figure 1 - Number of nucleotide sequences in GenBank over time

![Figure 1](Figure1/Sekvenser_i_GenBank.png)

Numbers were obtained from [NCBI](https://www.ncbi.nlm.nih.gov/genbank/statistics/) on September 1st 2022, and saved as `GenBank_Stats.tsv`.  
For comprehension by ggplot2, dates were reformatted in bash:

```
cat GenBank_Stats.tsv | \
	sed 's/Dec \(....\)/\1-12-01/g' | \
	sed 's/Nov \(....\)/\1-11-01/g' | \
	sed 's/Oct \(....\)/\1-10-01/g' | \
	sed 's/Sep \(....\)/\1-09-01/g' | \
	sed 's/Aug \(....\)/\1-08-01/g' | \
	sed 's/Jul \(....\)/\1-07-01/g' | \
	sed 's/Jun \(....\)/\1-06-01/g' | \
	sed 's/May \(....\)/\1-05-01/g' | \
	sed 's/Apr \(....\)/\1-04-01/g' | \
	sed 's/Mar \(....\)/\1-03-01/g' | \
	sed 's/Feb \(....\)/\1-02-01/g' | \
	sed 's/Jan \(....\)/\1-01-01/g' > GenBank_Stats.v2.tsv
```

The graph was then plotted using [`PlotGenBank.R`](PlotGenBank.R)

## Figure 2 - Systematic literature review process

![Figure 2](Figure2/Figure2.sv.png)

Note - this is an alternative version of [the version used in the initial application](../NV_Figure1.jpg)

## Figure 3 - Suggestions for future research

![Figure 3](Figure3/Förslag.en.png)