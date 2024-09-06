# Load necessary library
library(ggplot2)

# Create the data frame
data <- data.frame(
  CPUs_per_task = c(1, 2, 4, 8, 12, 24, 48, 96),
  walltime = c(109.6, 64.8, 50.5, 40.2, 34.3, 31.5, 31.0, 33.0),
  speedup = c(1.00, 1.69, 2.17, 2.73, 3.20, 3.48, 3.54, 3.32)
)

# Generate the speedup plot
speedup_plot <- ggplot(data, aes(x = CPUs_per_task, y = speedup)) +
  geom_point(size = 3, color = "red") + # Plot points in red
  geom_line(color = "red", linetype = "dashed") + # Dashed line connecting points
  scale_x_log10() + # Logarithmic scale for the x-axis
  labs(
    title = "Speedup vs. Number of CPUs per Task",
    x = "CPUs per Task (log scale)",
    y = "Speedup (S(n))",
    caption = "Data from performance measurements"
  ) +
  theme_minimal(base_size = 15) + # Minimal theme with larger base font size
  theme(
    plot.title = element_text(hjust = 0.5), # Center the plot title
    axis.title = element_text(face = "bold") # Bold axis titles
  )

# Save the speedup plot to a PNG file
ggsave("speedup_vs_cpus_per_task.png", plot = speedup_plot, width = 8, height = 6, dpi = 300)
