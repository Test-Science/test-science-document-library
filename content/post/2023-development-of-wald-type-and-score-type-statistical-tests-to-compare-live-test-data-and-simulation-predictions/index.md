---
title: Development of Wald-Type and Score-Type Statistical Tests to Compare Live Test Data and Simulation Predictions
author: Carrington Metts, Curtis Miller
date: 2023-01-01
year: 2023
slug: []
areas: ['Design of Experiments']
keywords: ['Modeling and Simulation (M&S) Validation','Statistical Analysis','Wald test','Weapons Analysis Facility']
researchers: ['Carrington Metts','Curtis Miller']
audience: Practitioner
journal: ['ITEA Journal','DATAWorks']
draft: no
---

{{< youtube id= 8OgvSuwTdys >}}

### Abstract

This work describes the development of a statistical test created in support of ongoing verification, validation, and accreditation (VV&A) efforts for modeling and simulation (M&S) environments. The test computes a Wald-type statistic comparing two generalized linear models estimated from live test data and analogous simulated data. The resulting statistic indicates whether the M&S outputs differ from the live data. After developing the test, we applied it to two logistic regression models estimated from live torpedo test data and simulated data from the Naval Undersea Warfare Center’s Environment Centric Weapons Analysis Facility (ECWAF). We developed this test to handle a specific problem with our data  one weapon variant was seen in the in-water test data, but the ECWAF data had two weapon variants. We overcame this deficiency by adjusting the Wald statistic via combining linear model coefficients with the intercept term when a factor is varied in one sample but not another. A similar approach could be applied with score-type tests, which we also describe.

### Slides {{< pdfReader "slides.pdf" >}}

### Paper 
 {{< pdfReader "paper.pdf" >}}


