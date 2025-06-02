

# ------------------------------------------------------------------------------
# User-interface definition of the Shiny application
# ------------------------------------------------------------------------------

# -- Define & return UI
page_navbar(
  
  # -- Page params
  fillable = FALSE,
  footer = p(style = "font-size:9pt;margin-top:20px;", "© 2025", span(class = "text-primary", "TheKangarooFactory"), "/ Philippe Peret"),
  
  
  # --------------------------------------
  # App theme
  # --------------------------------------
  
  # -- Define theme colors & font
  theme = bs_theme(
    bg = "#2d3037",
    fg = "#FFF",
    primary = "#eab676",
    secondary = "#1e81b0",
    base_font = font_google("Quicksand")),
  
  
  # --------------------------------------
  # Page content
  # --------------------------------------
  
  # -- Title
  title = "Template",
  
  # -- First tab
  nav_panel(title = "Demo",
            class = "p-5",
            
            # -- Theme Cards
            layout_column_wrap(
              
              # -- Primary color
              card(
                card_header(
                  class = "bg-primary",
                  "Primary color"),
                p("The primary color is set to", span(class = "text-primary", textOutput("primary", inline = TRUE)))),
              
              # -- Secondary color
              card(
                card_header(
                  class = "bg-secondary",
                  "Secondary color"),
                p("The secondary color is set to", span(class = "text-secondary", textOutput("secondary", inline = TRUE))))),
            
            # -- Input
            numericInput(inputId = "bins",
                         label = "Bins",
                         value = 10,
                         min = 1,
                         max = 20),
            
            # -- Plot
            plotOutput("plot")),
  
  
  # -- Second tab
  nav_panel(title = "About",
            class = "p-5",
            
            # -- layout
            layout_column_wrap(
              
              # -- links
              card(
                card_header(
                  class = "bg-primary",
                  "Reference & links"),
                p("Get app theme", 
                  tags$a("bs_current_theme", 
                         target = "_blank", 
                         href = "https://rstudio.github.io/bslib/reference/bs_current_theme.html")),
                p("Retrieve variables", 
                  tags$a("bs_get_variables", 
                         target = "_blank", 
                         href = "https://rstudio.github.io/bslib/reference/bs_get_variables.html"))),
              
              # -- material
              card(
                card_header(
                  class = "bg-secondary",
                  "Template material"),
                p("GitHub repository:", 
                  tags$a("template-r-plot-theme", 
                         target = "_blank", 
                         href = "https://github.com/thekangaroofactory/template-r-plot-theme"),
                  p("Wiki article:", 
                    tags$a("link", 
                           target = "_blank", 
                           href = "xxx")),
                  p("YouTube video:", 
                    tags$a("link", 
                           target = "_blank", 
                           href = "xxx"))))),
            
            # -- contacts
            h4("Contacts"),
            icon("linkedin"), tags$a("LinkedIn", target = "_blank", href = "https://www.linkedin.com/in/philippeperet/"), br(),
            icon("github"), tags$a("GitHub", target = "_blank", href = "https://github.com/thekangaroofactory"), br(),
            icon("link"), tags$a("TheKangarooFactory", target = "_blank", href = "https://www.thekangaroofactory.com"))
  
)
