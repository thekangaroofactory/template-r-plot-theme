

#' Build Plot
#'
#' @param data a data.frame, with a numeric column named 'x'
#' @param bins number of bins (passed to geom_histogram)
#' @param theme a vector of colors, of shape c("primary" = "#FFF", "secondary" = "#000")
#' 
#' @details
#' Use theme['primary'] and theme['secondary'] to customize color/colour and fill
#' attributes in the different layers of the plot.
#' 
#'
#' @returns a ggplot2 object
#'
#' @examples
#' p <- build_plot(data = data.frame(x = rnorm(200, mean = 10, sd = 3)),
#' bins = 10, 
#' theme = c("primary" = "#eab676", "secondary" = "#1e81b0"))

build_plot <- function(data, bins, theme){
  
  # -- Build & return plot
  ggplot(data,
         aes(x = x)) +
    
    # -- histogram
    geom_histogram(
      aes(y = after_stat(density)), 
      bins = bins,
      fill = theme['secondary'], 
      alpha = 0.25) +
    
    # -- density
    geom_density(
      color = theme['primary']) +
    
    # -- rug
    geom_rug(
      color = theme['secondary']) +
    
    # -- theme
    theme(
      
      # -- background
      panel.background = element_blank(),
      plot.background = element_blank(),
      
      # -- plot grid
      panel.grid = element_blank(),
      
      # -- legend
      legend.position = "none",
      
      # -- axis
      axis.title = element_blank(),
      axis.text = element_text(colour = theme['primary']))
  
}
