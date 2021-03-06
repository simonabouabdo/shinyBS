% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/bsTooltipAndPopover.R
\name{Tooltips}
\alias{Tooltips}
\alias{addTooltip}
\alias{bsTooltip}
\alias{removeTooltip}
\title{Create Twitter Bootstrap Tooltips}
\usage{
bsTooltip(id, title, placement = "bottom", trigger = "hover",
  options = NULL)

removeTooltip(session, id)

addTooltip(session, id, title, placement = "bottom", trigger = "hover",
  options = NULL)
}
\arguments{
\item{id}{The id of the element you want to attach/remove the tooltip to/from}

\item{title}{The content of the tooltip}

\item{placement}{Where the tooltip shoud appear relative to its target}

\item{trigger}{What action should cause the tooltip to appear}

\item{options}{A named list of additional tooltip options (See Details)}

\item{session}{The session object passed from shinyServer}
}
\description{
Functions to create and update Twitter Bootstrap Tooltips in shiny
}
\details{


Tooltips are used to convey very small amounts of information about
an element of your shiny app to the user. They are usually set to appear on
hover and can contain text to help better explain an element of
your shiny app.

shiny and shinyBS use jQuery to select elements within the page.
shinyBS will prepend the \code{id} argument with a "#" to tell jQuery to
look for an id, but additional css selectors can be included within the
\code{id} argument. For example, if you wanted to attach a tooltip to the
first header of a table with an id of "tableEx" you could do something like
\code{id = "tableEx th:nth-child(1)"}.

\code{bsTooltip} is used from within ui.R to add tooltips to elements

\code{removeTooltip} will remove any tooltips attached to the
selected element.

\code{addTooltip} is called from within server.R to add tooltips to
elements
}
\note{
Run \code{bsDemo()} for a live example of shinyBS Tooltips functionality.
}
\section{Options}{
 \code{placement} can be \code{right}, \code{left},
\code{top}, or \code{bottom}

\code{trigger} can be \code{hover}, \code{click}, \code{focus}, or
\code{manual}

\code{options} gives access to less commonly used options in the bootstrap
tooltip API. It should be a names list in which the names match options for
tooltips (See the Bootstrap documentation). Values provided in \code{options}
will overwrite any values provided by \code{title}, \code{placement}, or
\code{trigger} arguments.
}
\examples{
\dontrun{Run bsDemo() for examples}
}
\author{
Eric Bailey
}
\references{
\href{http://getbootstrap.com/2.3.2/}{Twitter Bootstrap 2.3.2}
}

