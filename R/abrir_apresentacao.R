#' @title Abrir apresentação do minicurso
#'
#' @name abrir_apresentacao
#'
#' @description Abre a apresentação do minicurso
#'
#' @return A apresentação é aberta em formato PDF no navegador
#'
#' @author Alexandre Jaloto
#'
#' @examples
#' abrir_apresentacao()
#'
#' @export

abrir_apresentacao <- function() {

  url <- "https://alexandrejaloto.github.io/minicursoTRI2025/minicurso_out2025.pdf"

  utils::browseURL(url)

  message("Material do minicurso aberto no navegador!")
}
