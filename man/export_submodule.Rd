% Generated by roxygen2 (4.0.1): do not edit by hand
\name{export_submodule}
\alias{export_submodule}
\title{Export a given submodule from the current module}
\usage{
export_submodule(submodule)
}
\arguments{
\item{submodule}{character string of length 1 with the name of the submodule}
}
\description{
Export a given submodule from the current module
}
\note{
Sometimes, a module may want to export all or some of its submodules in
bulk. Simply doing \code{import('submodul', attach = TRUE)} won’t work,
however, since \code{attach} only has a local effect. \code{export_submodule},
by contrast, exports a submodule’s contents as if they were defined directly
inside the current module.
}
\examples{
\dontrun{
# x/__init__.r:
export_submodule('./foo')

# x/foo.r:
answer_to_life = function () 42

# Calling code can now use the above modules:
x = import('x')
x$answer_to_life() # returns 42
}
}

