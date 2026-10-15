result <- sum(1:10)
print(result)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.4, size = 1) +
  scale_color_viridis_d(option = "C", end = 0.9) +
  labs(
    title = "The price of a diamond",
    subtitle = "Larger diamonds tend to cost more, with variation by cut",
    x = "Carat",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 18),
    plot.subtitle = element_text(color = "gray40"),
    legend.position = "bottom"
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
