---
title: Simulation Insights on Power Analysis with Binary Responses--from SNR Methods to 'skprJMP'
author: Tyler Morgan-Wall, Robert Atkins, Curtis Miller
date: 2024-01-01
year: 2024
slug: []
areas: ['Design of Experiments']
keywords: ['Operational Testing','Logistic Regression','Statistical Power','Signal-To-Noise Ratio','Monte Carlo']
researchers: ['Tyler Morgan-Wall','Robert Atkins','Curtis Miller']
audience: Practitioner
venues: DATAWorks
draft: no
cover:
  image: ''
---

{{< youtube id= j0rINL3L-yo >}}

Logistic regression is a commonly-used method for analyzing tests with probabilistic responses in the test community, yet calculating power for these tests has historically been challenging. This difficulty prompted the development of methods based on signal-to-noise ratio (SNR) approximations over the last decade, tailored to address the intricacies of logistic regression's binary outcomes. However, advancements and improvements in statistical software and computational power have reduced the need for such approximate methods. Our research presents a detailed simulation study that compares SNR-based power estimates with those derived from exact Monte Carlo simulations, highlighting the inadequacies of SNR approximations. To address these shortcomings, we will discuss improvements in the open-source R package "skpr" as well as present "skprJMP," a new plug-in that offers more accurate and reliable power calculations for logistic regression analyses.

#### Suggested Citation
> Atkins, Robert, Tyler Morgan-Wall, and Curtis Miller. “With Binary Responses--From SNR Methods to ‘skprJMP.’” Institute for Defense Analyses IDA Product ID 3002093 (April 2024).

#### Slides: 
{{< pdfReader "slides.pdf" >}}

#### Paper: 
{{< pdfReader "paper.pdf" >}}

#### Poster: 
{{< pdfReader "poster.pdf" >}}
