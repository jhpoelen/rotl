% Generated by roxygen2 (4.0.2): do not edit by hand
\name{gol_node_info}
\alias{gol_node_info}
\title{Node info}
\usage{
gol_node_info(node_id = NULL, ott_id = NULL, include_lineage = FALSE)
}
\arguments{
\item{node_id}{The idenitifer of the node in the graph.}

\item{ott_id}{The OpenTree taxonomic identifier.}

\item{include_lineage}{Boolean. Whether to return the lineage of the node from the synthetic tree. Optional; default = FALSE.}
}
\value{
A list of summary information about the queried node.
\itemize{
	\item {in_graph} {Boolean. Whether the queried node is present in the graph.}
	\item {node_id} {Numeric. The node ID of the queried node in the graph.}
	\item {in_synth_tree} {Boolean. Whether the queried node is present in the synthetic tree.}
	\item {rank} {String. The taxonomic rank of the queried node (if it is a named node).}
	\item {name} {String. The taxonomic name of the queried node (if it is a named node).}
	\item {ott_id} {Numeric. The OpenTree Taxonomy ID (ottID) of the queried node (if it is a named node).}
	\item {num_tips} {Numeric. The number of taxonomic tip descendants.}
	\item {num_synth_children} {Numeric . The number of synthetic tree tip descendants.}
	\item {tax_source} {String. Source taxonomy IDs (if it is a named node), e.g. "ncbi:9242,gbif:5289,irmng:104628".}
	\item {synth_sources} {A list of supporting synthesis source trees, each with:}
\itemize{
\item {study_id} {The study identifier. Will typically include a prefix ("pg_" or "ot_").}
\item {tree_id} {The tree identifier for a given study.}
\item {git_sha} {The git SHA identifying a particular source version.}
}
	\item {tree_sources} {A list of supporting source trees in the graph. May differ from \code{"synth_sources"}, if trees are in the graph, but were not used in constructing the synthetic tree. Each source has:}
\itemize{
\item {study_id} {The study identifier. Will typically include a prefix ("pg_" or "ot_").}
\item {tree_id} {The tree identifier for a given study.}
\item {git_sha} {The git SHA identifying a particular source version.}
}
}
}
\description{
Get summary information about a node in the graph
}
\details{
Summary information about a queried node, including 1) whether it is in the graph DB,
2) whether it is in the synthetic tree, 3) supporting study sources, 4) number of
descendant tip taxa, 5) graph node ID, and 6) taxonomic information (if it is a named
node in the graph), including: name, rank, OpenTree Taxonomy ID (ottID), and source taxonomy
IDs.
}
\examples{
res <- gol_node_info(ott_id=81461)
}

