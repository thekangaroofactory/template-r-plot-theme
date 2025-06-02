

# ------------------------------------------------------------------------------
# Server logic of the Shiny application
# ------------------------------------------------------------------------------

# -- Define server function
function(input, output, session) {

  # --------------------------------------
  # Active Theme Colors
  # --------------------------------------
  # adding bslib:: to make things clear but not necessary here
  # since library(bslib) in global.R
  
  # -- get current theme
  theme <- bslib::bs_current_theme()
  
  # -- extract colors from theme
  # this object will be passed as argument to the plot function
  theme_colors <- bslib::bs_get_variables(theme , varnames = c("primary", "secondary"))
  
  
  # --------------------------------------
  # Generate data
  # --------------------------------------
  
  # -- generate sample
  # 200 obs. that follows normal dist. with mean = 10 and sd = 3
  data <- data.frame(x = rnorm(200, mean = 10, sd = 3))

  
  # --------------------------------------
  # Outputs
  # --------------------------------------

  # -- Cards
  output$primary <- renderText(theme_colors['primary'])
  output$secondary <- renderText(theme_colors['secondary'])
  
  # -- Plot
  output$plot <- renderPlot(
    
    # -- pass the color object to the function
    build_plot(data, bins = input$bins, theme = theme_colors),
    
    # -- !mandatory otherwise plot won't be transparent
    # even if background are removed in ggplot (see ?renderPlot ... argument)
    bg = "transparent")


}
