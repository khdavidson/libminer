#' R Library Summary
#'
#' Provides a brief summary of the package libraries on your machine
#'
#' @param sizes Should the sizes of the libraries be calculated? Logical, default `FALSE`.
#'
#' @return a data.frame containing the count of packages by user libraries
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes=F) {
  if(!is.logical(sizes)) {
    stop("'sizes' must be logical (TRUE/FALSE)")
  }

  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if(sizes){
    pkg_df$lib_size <- vapply(
      pkg_df$Library,
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse=T)))
      },
      FUN.VALUE = numeric(1)
    )
  }
  pkg_df
}


