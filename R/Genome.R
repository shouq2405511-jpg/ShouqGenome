setClass("Genome",
         slots = list(
           genomeName = "character",
           numChromosomes = "numeric",
           numProteins = "numeric"
         ))

setGeneric("avgProteinPerCh",
           function(obj) standardGeneric("avgProteinPerCh"))

setMethod("avgProteinPerCh", "Genome",
          function(obj) {
            round(obj@numProteins / obj@numChromosomes)
          })
