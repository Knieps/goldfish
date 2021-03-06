% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_data.R
\name{defineNetwork}
\alias{defineNetwork}
\title{Defining a network with dynamic events}
\usage{
defineNetwork(matrix = NULL, nodes, nodes2 = NULL, directed = TRUE)
}
\arguments{
\item{matrix}{An initial matrix (optional)}

\item{nodes}{A node-set (\code{nodes.goldfish} object)}

\item{nodes2}{A second optional node-set for the definition of two-mode networks}

\item{directed}{A logical value indicating whether the network is directed}
}
\value{
an object of class network.goldfish
}
\description{
Once the \code{nodeset} is defined, the \code{defineNetwork} function defines a network object either from
a node-set or from a sociomatrix. If a sociomatrix or adjacency matrix is used as input,
\code{defineNetwork} returns a static Network. If the node-set only is used as input,
\code{defineNetwork} returns an empty network. From there, a dynamic network can be constructed by
linking dynamic events to the network object.
}
\details{
If a sociomatrix is used as input, \code{defineNetwork} returns a static Network.
This matrix must contain the same nodeset as defined with the \code{defineNodes} function
and the order of the rows and columns must correspond to the order of node lables in the node-set.
The matrix must be binary (if unweighted?) and
can be directed or undirected (as specified with the directed argument).
If this network is updated over time (e.g., a new wave of friendship data is collected),
these changes can be added with the \link{linkEvents} function - similar to link changing
attribute events to a nodeset. This time, the user needs to provide the network and the associated nodeset.
If no matrix is provided, goldfish only considers the nodeset and assumes
the initial state to be empty (i.e., a matrix containing only 0s). For the network to become dynamic,
the adjacency matrix or the nodeset can be linked to a dynamic event-list data.frame in the initial state or
empty network object by using the function \link{linkEvents}.
}
\examples{
# If no matrix is provided
data("Social_Evolution")
callNetwork <- defineNetwork(nodes = actors)

# If a sociomatrix is provided
data("Fisheries_Treaties_6070")
bilatnet <- defineNetwork(bilatnet, nodes = states, directed = FALSE)
}
\seealso{
\link{defineNodes} \link{linkEvents}
}
