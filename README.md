


# R Client for VIAF API

[![Build Status](https://travis-ci.org/njahn82/viaf.svg?branch=master)](https://travis-ci.org/njahn82/viaf)
[![codecov.io](http://codecov.io/github/njahn82/viaf/coverage.svg?branch=master)](http://codecov.io/github/njahn82/viaf?branch=master)

R interface to the  [Virtual International Authority File](https://viaf.org/). VIAF combines multiple authority files from national libraries and others.

API Documentation:

<http://www.oclc.org/developer/develop/web-services/viaf.en.html>

## Installation from GitHub


```r
devtools::install_github("njahn82/viaf")
```

Load `viaf`

```r
library(viaf)
```

## Suggest VIAF


```r
viaf_suggest("helen longino")
#> $query
#> [1] "helen longino"
#> 
#> $result
#>                                  term        lc nametype       dnb
#> 1                       Helen Longino n86035805 personal 176451609
#> 2                       Helen Longino      <NA> personal 170510573
#> 3                Helen Longino, 1944- n86035805 personal 176451609
#> 4 Helen Longino, American philosopher n86035805 personal 176451609
#>        bnf    viafid
#> 1 13595608 111108524
#> 2     <NA> 219308999
#> 3 13595608 111108524
#> 4 13595608 111108524
```

## Get Authorty Cluster


```r
viaf_get("111108524")
#> $viafID
#> [1] "111108524"
#> 
#> $BNF
#> [1] "http://catalogue.bnf.fr/ark:/12148/cb13595608x"
#> 
#> $DNB
#> [1] "http://d-nb.info/gnd/122488938" "http://d-nb.info/gnd/176451609"
#> 
#> $ISNI
#> [1] "0000000081774366"
#> 
#> $LC
#> [1] "n86035805"
#> 
#> $NSK
#> [1] "000306020"
#> 
#> $NTA
#> [1] "07411218X"
#> 
#> $NUKAT
#> [1] "vtls009446963"
#> 
#> $SUDOC
#> [1] "076451690"
#> 
#> $WKP
#> [1] "Q5702699"
#> 
#> $Wikipedia
#> [1] "http://en.wikipedia.org/wiki/Helen_Longino"
#> [2] "http://es.wikipedia.org/wiki/Helen_Longino"
```

## Meta

* Please [report any issues or bugs](https://github.com/njahn82/viaf/issues).
* License: MIT
