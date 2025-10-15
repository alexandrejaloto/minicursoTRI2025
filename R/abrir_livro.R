#' @title Abrir livro do minicurso
#'
#' @name abrir_livro
#'
#' @description Abre o livro que contém os comandos do minicurso
#'
#' @return O livro é aberto no navegador
#'
#' @author Alexandre Jaloto
#'
#' @examples
#' abrir_livro()
#'
#' @export

abrir_livro <- function() {

  url <- "https://alexandrejaloto.github.io/minicursoTRI2025/"

  utils::browseURL(url)

  message("Material do minicurso aberto no navegador!")
}
