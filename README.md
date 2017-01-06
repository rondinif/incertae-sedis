---
title: incertae-sedis
description: Incertae sedis is an expression used in the scientific classification to indicate an uncertain systematic position of a taxon.
author: Franco Rondini
tags: wikidata rdf spqrql botanica
created:  2016 Oct 23
modified: 2016 Oct 23

---

Incertae sedis
=========

## free knowledge to break free from uncertainty 
Does the mind ask *Data for Food* ? look at here!  

In the laboratories of this project we will experience free software to access free information 
to try to get five minutes of satisfaction to our hunger for knowledge.

[![rpt-graph](https://github.com/rondinif/incertae-sedis/raw/master/docs/img/rpt-graph-Q157378.png)](#features)
[![rpt-graph](https://github.com/rondinif/incertae-sedis/raw/master/docs/img/rpt-graph-Q2853420.png)](#features)

Features
--------
**the project is currently in incubation; It should simply be considered a playground where you can exercise with some areas of interest.** 

1. **TBD** To be defined ( and to be done )
     
    2017 Jan is the date planned for the definition of a first requirements draft.
    (branch: **requirements-draft** is currently available for changes)
    
2. **TBD**

    2017 Mar is the date planned for the more definitive requirements draft 
    and a first alpha preview of the first draft.

3. **TDB**

    2017 Sep is the date planned for a first usable set of tools.


Tools
--------

### Revese Parent Taxon
the [./tools/bin/rpt.sh](https://raw.githubusercontent.com/rondinif/incertae-sedis/master/tools/bin/rpt.sh) does a request to the [SPARQL wikidata endpoint](https://query.wikidata.org/sparql?) 
to get a reverse tree of the parent taxa of an **wikidata entity**; 
It's very useful to get the list of all the **species** linked to a specific **genus**  

#### rpt dample usage:
prerequisite: just suppose you have cloned or downloaded this repo in a local folder 
such as: ```~/projects/incertae-sedis```; 
then , the first time you use it, you have to make executable the bash script named ```rpt.sh```

``` bash
$ cd ~/projects/incertae-sedis/tools/bin  
$ chmod +x rpt.sh
```

Then siimply call it by passing a wikidata entity identifier of the **genus** you want to query; 
for exaple to get all the species of: [ Helianthus (Q26949) ](https://www.wikidata.org/wiki/Q26949)
```
$ cd ~/projects/incertae-sedis/tools/bin  
$ ./rpt.sh Q26949
```

#### rpt test 
perfomance measured on sunday 20161023
```
time ./rpt.sh Q26949
real	0m0.512s
user	0m0.034s
sys	    0m0.025s
```


Documentation
-------------

**TBD**

Usage & Development
-------------------

If you are considering developing a port for **incertae sedis**, 
please wait for the a more stable version. 
In the while consider [Contributing](#Contributing) to our [open source projects on Github](https://github.com/rondinif/incertae-sedis).  


Disclaimer
----------

The **incertae-sedis** project it is only a POC. 
It's obviously missing lots of features. 

Please open issues to discuss any feature you want to be added, 
submit suggestions, or anything else...
All contributions are welcome ;)


Issues
------

Feel free [to submit issues and enhancement requests](https://github.com/rondinif/incertae-sedis/issues/new) .
<a href="https://github.com/rondinif/incertae-sedis/issues/new" 
   class="btn btn-primary float-right" role="button" data-hotkey="c">
            New issue
</a>


Contributing
------------

<!--Please refer to  project's style guidelines and guidelines for submitting patches and additions -->
 follow the "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

NOTE: Be sure to merge the latest from "upstream" before making a pull request!

Copyright and Licensing
-----------------------

[BSD 2-Clause License](./LICENCE)

Questions 
---------------

### FAQ
**TBD** 

### Other questions
Feel free to [Contact the author at StackOverflow](http://stackoverflow.com/users/1657028/franco-rondini)