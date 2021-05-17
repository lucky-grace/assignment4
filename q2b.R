install.packages(c("tidygraph", "intergraph", "ggnetwork", "netrankr", "ggrepel"))
devtools::install_github("DougLuke/UserNetR")

require(UserNetR)
require(tidyverse)
require(tidygraph)
require(intergraph)
require(ggnetwork)
require(netrankr)
require(ggrepel)

ggnetplot <- function(Net = Bali){
  Net <- ggnetwork(Net, layout = "kamadakawai")
  ggplot(Net, aes(x, y, xend = xend, yend = yend)) +
    geom_edges(col = "tomato") +
    geom_nodetext_repel(aes(label = vertex.names ), col = "black", size = 3) +
    theme_blank()
}
ggnetplot(Bali)
