
# Function to create jitter plot of culmen length (mm) by species:
jitter_plot <- function(penguins_clean) {
  ggplot(penguins_clean, aes(x = species, y = culmen_length_mm, color = species)) +
    geom_jitter(alpha = 0.7) +
    labs(title = "Jitter Plot of Culmen Length by Species",
         x = "Species", y = "Culmen Length (mm)") +
    scale_colour_manual(
      values = c("Adelie" = "blue", 
                 "Chinstrap" = "red", 
                 "Gentoo" = "orange")) +
    theme_minimal()
}
  
# Function to save jitter plot figure as .svg
jitterplot_svg <- function(penguins_clean, 
                                  filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  jitterplot_figure <- jitter_plot(penguins_clean)
  print(jitterplot_figure)
  dev.off()
}

# Function to create box plot of culmen length (mm) by species:
box_plot <- function(penguins_clean) {
  ggplot(penguins_clean, aes(x = species, y = culmen_length_mm, color = species)) +
    geom_boxplot(width = 0.7) +
    geom_jitter(alpha = 0.7) +
    labs(title = "Box Plot of Culmen Length by Species",
         x = "Species", y = "Culmen Length (mm)") +
    scale_colour_manual(
      values = c("Adelie" = "blue", 
                 "Chinstrap" = "red", 
                 "Gentoo" = "orange")) +
    theme_minimal()
}

# Function to save box plot figure as .svg
boxplot_svg <- function(penguins_clean, 
                           filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  boxplot_figure <- box_plot(penguins_clean)
  print(boxplot_figure)
  dev.off()
}
