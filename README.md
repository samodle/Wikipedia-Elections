# Wikipedia-Elections

#### **NOTE:** We've found that depending on the available machine resources you may not be able to run the entir _proj1.R_ file at once.  If this is the case, the individual scripts can be run after running the initialization and simplification scripts (and may require renaming a graph using the console).

## File Overview
- _proj1.R_ is the main/master file, running it should complete the entire lab at once
- _initialization.R_ loads the cleaned dataset and turns it into a graph
- _simplify_graph.R_ turns the original graph into a much smaller graph
- _runGraphAnalysis.R_ is part 5 (includes generating a graph of the largest clique, the rest is console output)
- _printFancyGraph.R_ is simply a function to print the graph (must be named network -> a lot of these files rely on a graph being called network)
- _introToGraphAnalyticsFunctions.R_ is part 3, and replicates functionality from the given doc
- _igraphExperiments.R_ is part 4, and includes a selection of interesting igraph functionality
- _simplificationExperiments_ shows how we landed on the method in _simplify_graph.R_


## The Dataset

The data set statistics are:

### Data format

- **SRC**:Guettarda
- **TGT**:Lord Roem
- **VOT**:1 
- **RES**:1
- **YEA**:2013
- **DAT**:19:53, 25 January 2013
- **TXT**:'''Support''' per [[WP:DEAL]]: clueful, and unlikely to break Wikipedia.

### where entries are separated by a single empty line and 

- **SRC**: user name of source, i.e., voter
- **TGT**: user name of target, i.e., the user running for election
- **VOT**: the source's vote on the target (-1 = oppose; 0 = neutral; 1 = support)
- **RES**: the outcome of the election (-1 = target was rejected as admin; 1 = target was accepted)
- **YEA**: the year in which the election was started
- **DAT**: the date and time of this vote
- **TXT**: the comment written by the source, in wiki markup
