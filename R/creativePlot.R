#' creativePlot
#'
#'This function produces a ggplot of n random pink stars
#'
#' @param n the amount of stars
#'
#' @return A plot  of n random pink stars
#' @export
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_point
#'
#' @examples
#' creativePlot(10)
#'
creativePlot <- function(n) {
  df <- data.frame(x = rnorm(n),
                   y = rnorm(n))
  ggplot(df, aes(x, y)) +
  geom_point(shape = 11, color = "violet", size = 3)
}
