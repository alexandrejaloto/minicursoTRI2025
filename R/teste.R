#' @title Testar pacote
#'
#' @name teste
#'
#' @description Testa se o pacote foi instalado corretamente,
#' bem como as dependências dos pacotes.
#'
#' @return Caso o teste não tenha identificado erro, uma
#' mensagem será emitida no console e o livro do minicurso será
#' aberto no navegador.
#'
#' @author Alexandre Jaloto
#'
#' @examples
#'
#' teste()
#'
#' @export

teste <- function() {

  nzchar(find.package('mirt'))
  nzchar(find.package('latticeExtra'))
  nzchar(find.package('utils'))

  data(banco2pl.t1, package = 'minicursoTRI2025')
  fit.t1 <- mirt::mirt(data = banco2pl.t1, model = 1, itemtype = '2PL', TOL = 0.1)

  data.frame(latticeExtra::ancestry)

  escore.t1 <- data.frame(mirt::fscores(object = fit.t1, full.scores.SE = TRUE))

  info_t1 <- mirt::testinfo(fit.t1, seq(-3, 3, .01))

  if(exists('fit.t1'))
  {
    abrir_livro()
    print('Os pacotes foram instalados com sucesso')
  }
}
