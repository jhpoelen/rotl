##' Summary information about the OpenTree Taxaonomy (OTT)
##' 
##' Return information about the taxonomy, including version.
##' @title Taxonomy about
##' @return Some JSON
##' @export
taxonomy_about <- function () {
    otl_POST(path="/taxonomy/about", body=list())
}


##' Taxon Info
##' 
##' Given an ott id, return information about the specified taxon.
##' @title taxon
##' @param ott_id The OTT id of the taxon of interest. Not optional.
##' @return Some JSON
##' @examples
##' req <- taxonomy_taxon(ott_id=515698)
##' @export
taxonomy_taxon <- function (ott_id=NULL) {
	if (is.null(ott_id)) {
		stop("Must supply an \'ott_id\' argument")
	} else if (length(ott_id) > 1) {
		stop("Must only supply one \'ott_id\' argument")
	}
	q <- list(ott_id=jsonlite::unbox(ott_id))
    otl_POST(path="/taxonomy/taxon", body=q)
}


##' Taxonomic Subtree
##' 
##' Given an ott id, return complete taxonomy subtree descended from specified taxon.
##' @title taxon
##' @param ott_id The OTT id of the taxon of interest.  Not optional.
##' @return Some JSON
##' @examples
##' req <- taxonomy_subtree(ott_id=515698)
##' @export
taxonomy_subtree <- function (ott_id=NULL) {
	if (is.null(ott_id)) {
		stop("Must supply an \'ott_id\' argument")
	} else if (length(ott_id) > 1) {
		stop("Must only supply one \'ott_id\' argument")
	}
	q <- list(ott_id=jsonlite::unbox(ott_id))
    otl_POST(path="/taxonomy/subtree", body=q)
}


##' Taxonomic LICA
##' 
##' Given a set of ott ids, get the taxon that is the least inclusive common ancestor
##' (the LICA) of all the identified taxa. A taxonomic LICA is analogous to a most recent
##' common ancestor (MRCA) in a phylogenetic tree.
##' @title lica
##' @param ott_ids The vector of ott ids for the taxa whose LICA is to be found. Not optional.
##' @return Some JSON
##' @examples
##' req <- taxonomy_lica(ott_ids=c(515698,590452,409712,643717))
##' @export
taxonomy_lica <- function (ott_ids=NULL) {
	if (is.null(ott_ids)) {
		stop("Must supply an \'ott_ids\' argument")
	}
	q <- list(ott_ids=ott_ids)
    otl_POST(path="/taxonomy/lica", body=q)
}
