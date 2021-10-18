#' creativePlot
#'
#'This function produces a ggplot of \code{vary} versus \code{varx}
#' @param df a dataframe
#' @param varx a string name for variable x in dataframe df
#' @param vary a string name for variable y in dataframe df
#'
#' @return A plot  of \code{vary} versus \code{varx}
#' @export
#'
#'@importFrom ggplot2 ggplot
#'@importFrom ggplot2 geom_point
#'@examples
#' df.test <- data.frame(x = rnorm(10),
#'                       y = rnorm(10))
#'creativePlot(df.test, 'x', 'y')
#'
creativePlot <- function(df, varx, vary) {
  ggplot(df, aes(x = get(varx), y = get(vary))) +
    geom_point(shape = 11, color = "violet", size = 3)
}
