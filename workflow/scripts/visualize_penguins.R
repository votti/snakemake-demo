library(ggplot2)
library(dplyr)

if (exists("snakemake")) {
  fn_dat <- snakemake@input[[1]]
  fn_plot <- snakemake@output[[1]]
} else {
  fn_dat <- "results/interim/dnamethylation/rgset.rds"
  fn_plot <- "results/figures/dnamethylation/minfi_p.rds"
}
 


dat = read.csv(fn_dat)

g = dat %>%
  # drop na values
    tidyr::drop_na() %>%
  ggplot(aes(x = species, y = bill_length_mm)) +
  geom_point() +
  labs(title = "Penguin Bill Length by Species types") +
  theme_minimal()

ggsave(g, filename=fn_plot, width = 8, height = 6)


