# Make your plot fit with the global app theme

Plots generated with [ggplot2](https://ggplot2.tidyverse.org/) library can be customized to improve data visualization & user experience.

But keeping the color / colour and fill arguments aligned across the app can be tedious as you need to copy / paste the color code many times. It also makes your code less reusable in other projects as it will need to be updated in many places.

A first step approach is to define a variable (typically a named vector) that carries the color codes at the app level and pass it as a parameter of dedicated plot functions.\
With this, colors can be tuned easily across the app and plot functions can be reused in a different project without much update.

In case your Shiny app is using [bslib](https://rstudio.github.io/bslib/) to build the ui, then it's even possible to reuse the global app theme to feed this color variable and share it to all your plots.

This tutorial demonstrates how to implement this approach.
