# Load necessary library
library(ggplot2)

# Create the data frame
data <- data.frame(
  CPUs_per_task = c(1, 2, 4, 8, 12, 24, 48, 96),
  walltime = c(109.6, 64.8, 50.5, 40.2, 34.3, 31.5, 31.0, 33.0),
  speedup = c(1.00, 1.69, 2.17, 2.73, 3.20, 3.48, 3.54, 3.32),
  efficiency = c(1.00, 0.85, 0.54, 0.34, 0.27, 0.14, 0.07, 0.03)
)

# Generate the efficiency plot
efficiency_plot <- ggplot(data, aes(x = CPUs_per_task, y = efficiency)) +
  geom_point(size = 3, color = "red") + # Plot points in green
  geom_line(color = "green", linetype = "dashed") + # Dashed line connecting points
  scale_x_log10() + # Logarithmic scale for the x-axis
  labs(
    title = "Parallel Efficiency vs. Number of CPUs per Task",
    x = "CPUs per Task (log scale)",
    y = "Parallel Efficiency (E(n))",
    caption = "Data from performance measurements"
  ) +
  theme_minimal(base_size = 15) + # Minimal theme with larger base font size
  theme(
    plot.title = element_text(hjust = 0.5), # Center the plot title
    axis.title = element_text(face = "bold") # Bold axis titles
  )

# Save the efficiency plot to a PNG file
ggsave("efficiency_vs_cpus_per_task.png", plot = efficiency_plot, width = 8, height = 6, dpi = 300)
