

![StataMin](https://img.shields.io/badge/stata-2015-blue) ![issues](https://img.shields.io/github/issues/asjadnaqvi/stata-arcplot) ![license](https://img.shields.io/github/license/asjadnaqvi/stata-arcplot) ![Stars](https://img.shields.io/github/stars/asjadnaqvi/stata-arcplot) ![version](https://img.shields.io/github/v/release/asjadnaqvi/stata-arcplot) ![release](https://img.shields.io/github/release-date/asjadnaqvi/stata-arcplot)

---

[Installation](#Installation) | [Syntax](#Syntax) | [Examples](#Examples) | [Feedback](#Feedback) | [Change log](#Change-log)

---

# splinefit v1.0 (beta)
(01 Aug 2023)



## Installation

The package can be installed via SSC or GitHub. The GitHub version, *might* be more recent due to bug fixes, feature updates etc, and *may* contain syntax improvements and changes in *default* values. See version numbers below. Eventually the GitHub version is published on SSC.

SSC (**coming soon**):

```

```

GitHub (**v1.0**):

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

The syntax for **v1.0** is as follows:

```
splinefit y x [if] [in], 
                [ close smooth(0-1)points(num) lwidth(str) lcolor(str) 
                  msymbol(str) msize(str) mcolor(str) mlabel(str) mlabposition(str)  mlabsize(str)      
                  xsize(num) ysize(num) title(str) subtitle(str) note(str) scheme(str) name(str) saving(str) 
                ]
```

See the help file `help splinefit` for details.




## Examples

Get the example data from GitHub:

```
set obs 8

gen id = _n
gen x = .
gen y = .

set seed 100
replace x = runiformint(-10,10)
replace y = runiformint(-10,10) 
```


```
splinefit y x
```

<img src="/figures/spline1.png" height="600">


```
splinefit y x, close
```

<img src="/figures/spline2.png" height="600">


### Smoothing

```
splinefit y x, close smooth(0)
```

<img src="/figures/spline3.png" height="600">

```
splinefit y x, close smooth(0.2)
```

<img src="/figures/spline3.png" height="600">

```
splinefit y x, close smooth(1)
```

<img src="/figures/spline3.png" height="600">

### Additional options

```
splinefit y x, smooth(0.5) lc(black) mc(red) ms(1.2) legend(off) mlab(id) close
```

<img src="/figures/spline3.png" height="600">


## Feedback

Please open an [issue](https://github.com/asjadnaqvi/stata-splinefit/issues) to report errors, feature enhancements, and/or other requests. 


## Change log


**v1.0 (01 Aug 2023)**
- Public release of the beta.







