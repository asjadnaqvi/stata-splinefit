{smcl}
{* 01Aug2023}{...}
{hi:help splinefit}{...}
{right:{browse "https://github.com/asjadnaqvi/stata-splinefit":splinefit v1.0 (GitHub)}}

{hline}

{title:splinefit}: A Stata package for extremely smooth line plots. Uses the {browse "https://en.wikipedia.org/wiki/Centripetal_Catmull%E2%80%93Rom_spline":Catmull-Rom spline} function.



{marker syntax}{title:Syntax}
{p 8 15 2}

{cmd:splinefit} {it:y x} {ifin}, 
                {cmd:[} {cmd:close} {cmd:smooth}({it:0-1}){cmd:points}({it:num}) {cmdab:lw:idth}({it:str}) {cmdab:lc:olor}({it:str}) 
                  {cmdab:msym:bol}({it:str}) {cmdab:ms:ize}({it:str}) {cmdab:mc:olor}({it:str}) {cmdab:mlab:el}({it:str}) {cmdab:mlabpos:ition}({it:str})  {cmdab:mlabs:ize}({it:str})      
                  {cmd:xsize}({it:num}) {cmd:ysize}({it:num}) {cmd:title}({it:str}) {cmd:subtitle}({it:str}) {cmd:note}({it:str}) {cmd:scheme}({it:str}) {cmd:name}({it:str}) {cmd:saving}({it:str}) 
                {cmd:]}

{p 4 4 2}


{synoptset 36 tabbed}{...}
{synopthdr}
{synoptline}

{p2coldent : {opt splinefit y x}}{p_end}



{synoptline}
{p2colreset}{...}

{title:Examples}

See {browse "https://github.com/asjadnaqvi/stata-splinefit":GitHub} for examples.


{title:Package details}

Version      : {bf:splinefit} v1.0 Beta
This release : 01 Aug 2023
First release: 01 Aug 2023
Repository   : {browse "https://github.com/asjadnaqvi/stata-splinefit":GitHub}
Keywords     : Stata, graph, spline fit, smooth fit
License      : {browse "https://opensource.org/licenses/MIT":MIT}

Author       : {browse "https://github.com/asjadnaqvi":Asjad Naqvi}
E-mail       : asjadnaqvi@gmail.com
Twitter      : {browse "https://twitter.com/AsjadNaqvi":@AsjadNaqvi}


{title:Feedback}

Please submit bugs, errors, feature requests on {browse "https://github.com/asjadnaqvi/stata-splinefit/issues":GitHub} by opening a new issue.

{title:Other visualization packages}

{psee}
    {helpb arcplot}, {helpb alluvial}, {helpb bimap}, {helpb bumparea}, {helpb bumpline}, {helpb circlebar}, {helpb circlepack}, {helpb clipgeo}, {helpb delaunay}, {helpb joyplot}, 
	{helpb marimekko}, {helpb sankey}, {helpb schemepack}, {helpb spider}, {helpb streamplot}, {helpb sunburst}, {helpb treecluster}, {helpb treemap}

