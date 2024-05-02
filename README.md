---

[Installation](#Installation) | [Syntax](#Syntax) | [Examples](#Examples) | [Feedback](#Feedback) | [Change log](#Change-log)

---





![StataMin](https://img.shields.io/badge/stata-2015-blue) ![issues](https://img.shields.io/github/issues/asjadnaqvi/stata-splinefit) ![license](https://img.shields.io/github/license/asjadnaqvi/stata-splinefit) ![Stars](https://img.shields.io/github/stars/asjadnaqvi/stata-splinefit) ![version](https://img.shields.io/github/v/release/asjadnaqvi/stata-splinefit) ![release](https://img.shields.io/github/release-date/asjadnaqvi/stata-splinefit)



# splinefit v1.1
(02 May 2024)



## Installation

The package can be installed via SSC or GitHub. The GitHub version, *might* be more recent due to bug fixes, feature updates etc, and *may* contain syntax improvements and changes in *default* values. See version numbers below. Eventually the GitHub version is published on SSC.

SSC (**coming soon**):

```

```

GitHub (**v1.1**):

```
net install splinefit, from("https://raw.githubusercontent.com/asjadnaqvi/stata-splinefit/main/installation/") replace
```


If you want to make a clean figure, then it is advisable to load a clean scheme. These are several available and I personally use the following:

```
ssc install schemepack, replace
set scheme white_tableau  
```

You can also push the scheme directly into the graph using the `scheme(schemename)` option. See the help file for details or the example below.

I also prefer narrow fonts in figures with long labels. You can change this as follows:

```
graph set window fontface "Arial Narrow"
```


## Syntax

The syntax for the lastest version is as follows:

```stata
splinefit y x [if] [in], 
                [ smooth(0-1)points(num) close lwidth(str) lcolor(str) lpattern(str) msymbol(str) msize(str) 
                  mcolor(str) mlabel(str) mlabposition(str) mlabsize(str) * ]
```

See the help file `help splinefit` for details.


## Examples

Get the example data from GitHub:

```
set obs 10

gen id = _n
gen x = .
gen y = .

set seed 2024
replace x = runiformint(-10,10)
replace y = runiformint(-10,10) 
```


```
splinefit y x
```

<img src="/figures/spline1.png" width="100%">


```
splinefit y x, close
```

<img src="/figures/spline2.png" width="100%">


### Smoothing

```
splinefit y x, close smooth(0)
```

<img src="/figures/spline3.png" width="100%">

```
splinefit y x, close smooth(0.2)
```

<img src="/figures/spline4.png" width="100%">

```
splinefit y x, close smooth(1)
```

<img src="/figures/spline5.png" width="100%">


### Additional options

```
splinefit y x, smooth(0.5) lc(gs12) lw(0.2) lp(dash) mc(red) ms(1.2) legend(off) mlab(id) close
```

<img src="/figures/spline6.png" width="100%">


## Feedback

Please open an [issue](https://github.com/asjadnaqvi/stata-splinefit/issues) to report errors, feature enhancements, and/or other requests. 


## Change log

**v1.1 (02 May 2024)**
- Improved version with more options.

**v1.0 (01 Aug 2023)**
- Public release of the beta.







