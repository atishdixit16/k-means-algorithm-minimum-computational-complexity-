input.data.x <- iris[,-5]

cluster <- function(k,input.data.x) {
	#input.data.x <- input.data.x[sample(nrow(input.data.x)),] #table randomization
	cluster.lengths <-  c(0,sample(1:nrow(input.data.x),k-1) , nrow(input.data.x))
	cluster.list <- list()
	for (i in 1:k) {
		cluster.list[[length(cluster.list)+1]] <- input.data.x[(cluster.lengths[i] + 1):cluster.lengths[i+1], ]
	}
	return(cluster.list)
}
