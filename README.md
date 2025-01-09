# Tks4analysis

## Purpose
The objective of this R Markdown code is to reproduce bulk RNA-seq analysis in the publication Bajtai et al.

## Usage
Keep the organization of the folders and run the .Rmd file. 

## Credits
Help from Daniel Kiss is greatly acknowledged.

## Licence
The code is under GNU GPL-3 license (https://www.gnu.org/licenses/gpl-3.0.html).

## Session information
R version 4.3.3 (2024-02-29)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 22.04.3 LTS

Matrix products: default
BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.10.0 
LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.10.0

locale:
```
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=hu_HU.UTF-8       
 [4] LC_COLLATE=en_US.UTF-8     LC_MONETARY=hu_HU.UTF-8    LC_MESSAGES=en_US.UTF-8   
 [7] LC_PAPER=hu_HU.UTF-8       LC_NAME=C                  LC_ADDRESS=C              
[10] LC_TELEPHONE=C             LC_MEASUREMENT=hu_HU.UTF-8 LC_IDENTIFICATION=C       
```

time zone: Europe/Budapest
tzcode source: system (glibc)

attached base packages:
```
[1] grid      stats     graphics  grDevices utils     datasets  methods   base     
```

other attached packages:
```
 [1] stringr_1.5.1         msigdbr_7.5.1         fgsea_1.28.0          readr_2.1.5          
 [5] ggrepel_0.9.6         ggmagnify_0.4.1       readxl_1.4.3          openxlsx_4.2.7       
 [9] ComplexUpset_1.3.3    UpSetR_1.4.0          tidyr_1.3.1           dplyr_1.1.4          
[13] edgeR_4.0.16          limma_3.58.1          circlize_0.4.16       tidyHeatmap_1.8.1    
[17] ComplexHeatmap_2.18.0 ggplot2_3.5.1
```

loaded via a namespace (and not attached):
```
 [1] tidyselect_1.2.1    viridisLite_0.4.2   farver_2.1.2        viridis_0.6.5       digest_0.6.37      
 [6] lifecycle_1.0.4     cluster_2.1.6       statmod_1.5.0       magrittr_2.0.3      compiler_4.3.3     
[11] rlang_1.1.4         tools_4.3.3         utf8_1.2.4          data.table_1.16.0   knitr_1.48         
[16] plyr_1.8.9          RColorBrewer_1.1-3  BiocParallel_1.36.0 babelgene_22.9      withr_3.0.1        
[21] purrr_1.0.2         BiocGenerics_0.48.1 stats4_4.3.3        fansi_1.0.6         colorspace_2.1-1   
[26] scales_1.3.0.9000   iterators_1.0.14    cli_3.6.3           crayon_1.5.3        generics_0.1.3     
[31] rstudioapi_0.16.0   tzdb_0.4.0          rjson_0.2.23        parallel_4.3.3      BiocManager_1.30.25
[36] cellranger_1.1.0    matrixStats_1.4.1   vctrs_0.6.5         Matrix_1.6-5        IRanges_2.36.0     
[41] GetoptLong_1.0.5    hms_1.1.3           patchwork_1.3.0     S4Vectors_0.40.2    clue_0.3-65        
[46] dendextend_1.17.1   locfit_1.5-9.10     foreach_1.5.2       glue_1.8.0          codetools_0.2-20   
[51] cowplot_1.1.3       stringi_1.8.4       shape_1.4.6.1       gtable_0.3.5        munsell_0.5.1      
[56] tibble_3.2.1        pillar_1.9.0        R6_2.5.1            doParallel_1.0.17   lattice_0.22-6     
[61] png_0.1-8           Rcpp_1.0.13         zip_2.3.1           fastmatch_1.1-4     gridExtra_2.3      
[66] xfun_0.47           pkgconfig_2.0.3     GlobalOptions_0.1.2
```

