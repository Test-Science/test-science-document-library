---
title: A Practitioner’s Framework for Federated Model Validation Resource Allocation
author: Dhruv Patel, Jo Anna Capp, John Haman
date: 2024-01-01
year: 2024
slug: []
areas: ['Modeling and Simulation']
keywords: ['operational test and evaluation','statistical methods','modeling and simulation','federated models','federated M&S']
researchers: ['Dhruv Patel','Jo Anna Capp','John Haman']
audience: Practitioner
venues: DATAWorks
draft: no
cover:
  image: ''
---

{{< youtube id= owcIxrA_sXs >}}

Recent advances in computation and statistics led to an increasing use of federated models for end-to-end system test and evaluation. A federated model is a collection of interconnected models where the outputs of a model act as inputs to subsequent models. However, the process of verifying and validating federated models is poorly understood, especially when testers have limited resources, knowledge-based uncertainties, and concerns over operational realism. Testers often struggle with determining how to best allocate limited test resources for model validation. We propose a network-based representation of federated models, where the network encodes the connections between the federation of models. Nodes of the graph are given by sub-models. A directed edge from node a to node b is drawn if a inputs into b. We quantify their uncertainties through edge weights using meta-modeling and variance-based sensitivity analysis. The network-based framework allows us to propagate the uncertainties through the federated model and optimize resource allocation for validation based on the uncertainties.

#### Suggested Citation
> Capp, Jo Anna, John T Haman, and Dhruv Patel. A Practitioner’s Framework for Federated Model Validation Resource Allocation. IDA Product ID 3001838. Alexandria, VA: Institute for Defense Analyses, 2024.

#### Slides: 
{{< pdfReader "slides.pdf" >}}




