devtools::install_github("davidsjoberg/ggsankey")
library(ggsankey)
library(ggplot2)
library(dplyr)

example_dat <-
  mtcars %>%
  make_long(cyl, vs, am, gear, carb) # function in ggsankey to format data correctly
ggplot(example_dat,
       aes(x = x,
           next_x = next_x,
           node = node,
           next_node = next_node,
           fill = factor(node))) +
  geom_sankey(flow.alpha = .6) +
  theme_minimal()
