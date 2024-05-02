{smcl}
{* 02May2024}{...}
{hi:help splinefit}{...}
{right:{browse "https://github.com/asjadnaqvi/stata-splinefit":splinefit v1.1 (GitHub)}}

{hline}

{title:splinefit}: A Stata package for smooth connected line plots. 

The routine is based on the {browse "https://en.wikipedia.org/wiki/Centripetal_Catmull%E2%80%93Rom_spline":Catmull-Rom spline} function.



{marker syntax}{title:Syntax}
{p 8 15 2}

{cmd:splinefit} {it:y x} {ifin}, 
                {cmd:[} {cmd:smooth}({it:0-1}){cmd:points}({it:num}) {cmd:close} {cmdab:lw:idth}({it:str}) {cmdab:lc:olor}({it:str}) {cmdab:lp:attern}({it:str}) {cmdab:msym:bol}({it:str}) {cmdab:ms:ize}({it:str}) 
                  {cmdab:mc:olor}({it:str}) {cmdab:mlab:el}({it:str}) {cmdab:mlabpos:ition}({it:str}) {cmdab:mlabs:ize}({it:str}) * {cmd:]}
{p 4 4 2}


{synoptset 36 tabbed}{...}
{synopthdr}
{synoptline}

{p2coldent : {opt splinefit y x}}{bf:y} and {bf:x} are scatter point variables. Please make sure they are correctly sorted.{p_end}

{p2coldent : {opt smooth(num)}}A smoothing fit variable between 0 and 1. A smaller value will result in larger and rounder fits. A high value will have tighter bends 
but if the points are bunched together, then this might also create undesireable loops. Default is {opt smooth(0.5)}.{p_end}

{p2coldent : {opt close}}Close the loop between the first and the last point.{p_end}

{p2coldent : {opt points(num)}}Number of points to evaluate the curve between two points. Higher points will result in more accuracy but will be slower.
Default is {points(100)}. Ideally don't touch this.{p_end}


{p2coldent : {opt lw:idth(str)}}The line width.{p_end}

{p2coldent : {opt lc:olor(str)}}The line color.{p_end}

{p2coldent : {opt lp:attern(str)}}The line pattern.{p_end}


{p2coldent : {opt msym:bol(str)}}The marker symbol.{p_end}

{p2coldent : {opt mc:olor(str)}}The marker color.{p_end}

{p2coldent : {opt ms:ize(str)}}The marker size.{p_end}

{p2coldent : {opt mlwid:th(str)}}The marker outline width.{p_end}


{p2coldent : {opt mlab:el(str)}}The marker label.{p_end}

{p2coldent : {opt mlabc:olor(str)}}The marker label color.{p_end}

{p2coldent : {opt mlabs:ize(str)}}The marker label size.{p_end}

{p2coldent : {opt mlabpos:ition(str)}}The marker label position.{p_end}

{p2coldent : {opt *}}All other standard twoway options.{p_end}

{synoptline}
{p2colreset}{...}

{title:Examples}

See {browse "https://github.com/asjadnaqvi/stata-splinefit":GitHub} for examples.


{title:Package details}

Version      : {bf:splinefit} v1.1
This release : 02 May 2024
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
	{helpb marimekko}, {helpb sankey}, {helpb schemepack}, {helpb spider}, {helpb streamplot}, {helpb sunburst}, {helpb treecluster}, {helpb treemap}, {helpb waffle}

