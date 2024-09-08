---
title: Regularization for Continuously Observed Ordinal Response Variables with Piecewise-Constant Functional Predictors
author: Matthew Avery, Mark Orndorff, Timothy Robinson, Laura Freeman
date: 2016-01-01
year: 2016
slug: []
areas: ['Design of Experiments']
keywords: ['functional data analysis','mixed effects cumulative logistic regression']
researchers: ['Matthew Avery','Mark Orndorff','Timothy Robinson','Laura Freeman']
audience: Expert
venues: Institute for Defense Analyses
draft: no
---



### Abstract
This paper investigates regularization for continuously observed covariates that resemble step functions. The motivating examples come from operational test data from a recent United States Department of Defense (DoD) test of the Shadow Unmanned Air Vehicle system. The response variable, quality of video provided by the Shadow to friendly ground units, was measured on an ordinal scale continuously over time. Functional covariates, altitude and distance, can be well approximated by step functions. Two approaches for regularizing these covariates are considered, including a thinning approach commonly used within the DoD to address autocorrelated time series data, and a novel “smoothing” approach, which first approximates the covariates as step functions and then treats each “step” as a uniquely observed data point. Data sets resulting from both approaches are fit using a mixed model cumulative logistic regression, and we compare their results. While the thinning approach identifies altitude as having a significant impact on video quality, the smoothing approach finds no evidence of an effect. This difference is attributable to the larger effective sample size produced by thinning. System characteristics make it unlikely that video quality would degrade at higher altitudes, suggesting that the thinning approach has produced a Type 1 error. By accounting for the functional characteristics of the covariates, the novel smoothing approach has produced a more accurate characterization of the Shadow’s ability to provide full motion video to supported units.

#### Suggested Citation
> Avery, Matthew, Mark Orndorff, Timothy Robinson, and Laura Freeman. “Regularization for Continuously Observed Ordinal Response Variables with Piecewise-Constant Functional Covariates.” Quality and Reliability Engineering International 32, no. 6 (2016): 2033–42. https://doi.org/10.1002/qre.2037.



#### Paper 
 {{< pdfReader "paper.pdf" >}}


