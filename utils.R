plot_upset_newlayout <- function(diff_list,
                                 maxintersect=4000,
                                 maxset=10000,
                                 diff_name="control2senescent",
                                 direction="up",
                                 xxmin=11, xxmax=15){
  keep_cfs <- which(grepl(diff_name, names(diff_list)) & 
                      grepl("MCF7|T47D|MDA-MB-231|Hs578T", names(diff_list)) &
                      grepl(direction, names(diff_list)))
  signif_diff_tbl <- as_tibble(fromList(diff_list[keep_cfs]))
  # change column names
  colnames(signif_diff_tbl) <- strsplit2(colnames(signif_diff_tbl), "_")[,2]
  inset_tbl <- as_tibble(colSums(signif_diff_tbl), rownames="cell")
  inset_tbl$cell <- factor(inset_tbl$cell, 
                           levels = c('MDA-MB-231', 'Hs578T', 'MCF7', 'T47D'))
  inset <- ggplot(data=inset_tbl, aes(x=cell, y=value, fill=cell))+
    geom_bar(stat="identity", show.legend = FALSE)+ 
    ylab("Set size")+ ylim(c(0,maxset))+
    theme_classic(base_size = 10)+
    # theme(axis.text.x = element_text(
    #   angle = 45, vjust = 0.5, hjust=1))+
    theme(axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank())+
    scale_fill_manual(values=c("darkblue", "darkgreen",
                               "red", "orange"))
  
  p <- ComplexUpset::upset(signif_diff_tbl,
                           name = '',
                           intersect = colnames(signif_diff_tbl),
                           themes=upset_default_themes(text=element_text(size=20)),
                           queries=list(
                             upset_query(set='MDA-MB-231', fill='darkblue'),
                             upset_query(set='Hs578T', fill='darkgreen'),
                             upset_query(set='MCF7', fill='red'),
                             upset_query(set='T47D', fill='orange'),
                             upset_query(intersect = c('MDA-MB-231', 'Hs578T', 'MCF7', 'T47D'), 
                                         color='red', fill='red',
                                         only_components=c('Intersection size'))
                           ),
                           base_annotations=list(
                             'Intersection size'=(
                               intersection_size(
                                 bar_number_threshold=1,  # show all numbers on top of bars
                                 width=0.5,   # reduce width of the bars
                                 # rotate numbers
                                 text=list(angle=90, hjust=-0.1, vjust=0.5)
                               )
                               # add some space on the top of the bars
                               + scale_y_continuous(expand=expansion(mult=c(0, 0.05)))
                               + theme(
                                 # hide grid lines
                                 panel.grid.major=element_blank(),
                                 panel.grid.minor=element_blank(),
                                 # show axis lines
                                 axis.line=element_line(colour='black')
                               )
                               #+ ylim(c(0, maxintersect))
                               + expand_limits(y=maxintersect)
                             )
                           ),
                           # to prevent connectors from getting the colorured
                           # use `fill` instead of `color`, together with `shape='circle filled'`
                           matrix=intersection_matrix(
                             geom=geom_point(
                               shape='circle filled',
                               size=3.5,
                               stroke=0.45
                             )
                           ),
                           set_sizes=FALSE
  ) 
  
  pfinal <- p +
    # add an inset
    annotation_custom(
      ggplotGrob(inset),
      xmin = xxmin, xmax = xxmax, ymin = 8, ymax = 12
    )
  
  
  resfile <- file.path(figfolder, 
                       paste("Upset_bulk_newlayout_", diff_name, "_", direction, ".pdf", sep=""))
  ggsave(resfile, plot=pfinal, width=7, height = 5)
}