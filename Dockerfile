FROM rocker/r-ver:3.5.2
LABEL maintainer="root"
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
  && apt-get install -y git-core \
	libcurl4-openssl-dev \
	libssl-dev \
	libxml2-dev \
	make
RUN ["install2.r", "askpass", "assertthat", "backports", "base64", "beanplot", "bibtex", "BiocManager", "bit", "bit64", "bitops", "blob", "callr", "caTools", "cli", "cluster", "codetools", "colorspace", "crayon", "curl", "data.table", "DBI", "desc", "devtools", "digest", "doRNG", "dotCall64", "dplyr", "ff", "fields", "foreach", "formatR", "fs", "futile.logger", "futile.options", "gdata", "ggplot2", "glue", "gplots", "gridExtra", "gtable", "gtools", "hms", "httr", "iterators", "KernSmooth", "lambda.r", "lattice", "lazyeval", "locfit", "magrittr", "maps", "MASS", "Matrix", "matrixStats", "mclust", "memoise", "munsell", "nlme", "nor1mix", "openssl", "pillar", "pkgbuild", "pkgconfig", "pkgload", "pkgmaker", "plyr", "prettyunits", "processx", "progress", "ps", "purrr", "quadprog", "R6", "RColorBrewer", "Rcpp", "RCurl", "readr", "registry", "remotes", "reshape", "reshape2", "rjson", "rlang", "rngtools", "rprojroot", "RSQLite", "scales", "semver", "sessioninfo", "spam", "stevedore", "stringi", "stringr", "survival", "tibble", "tidyr", "tidyselect", "usethis", "withr", "XML", "xml2", "xtable"]
RUN ["installGithub.r", ]
WORKDIR /payload/
CMD ["R"]
