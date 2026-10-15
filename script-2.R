library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(trim = FALSE, alpha = 0.85, color = "white") +
  geom_boxplot(width = 0.12, fill = "white", outlier.shape = NA, alpha = 0.75) +
  scale_fill_viridis_d(option = "C", end = 0.9) +
  scale_y_log10() +
  labs(
    title = "Diamond prices across cut grades",
    subtitle = "Violin shapes show price distributions; boxes highlight the middle half",
    x = "Cut grade",
    y = "Price (USD, logarithmic scale)"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 18),
    plot.subtitle = element_text(color = "gray40"),
    legend.position = "none"
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
