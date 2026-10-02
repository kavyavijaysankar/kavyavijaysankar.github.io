---
layout: archive
title: ""
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* M.Sc. in Computational Neuroscience, University of Nottingham, 2026
* B.Sc. Honours in Psychology, Christ University, 2025

Work experience
======
* Research Intern - Rogue42 (Summer 2025)
  * Built a web tool to identify users’ cognitive & behaviour patterns and recommend interventions based on their procrastination profile and cognitive fingerprint.
  
Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>


Skills
======
<details class="collapsible" markdown="1">
<summary><strong>Programming</strong></summary>

* Python (NumPy, SciPy, pandas, Matplotlib)
* Machine learning: scikit-learn
* Neural data: MNE-Python, NiBabel, scikit-fda, fdasrsf
* MATLAB (Signal Processing Toolbox, Image Processing & Computer Vision Toolbox, EEGLAB)
* Tools: Git, Jupyter

</details>

<details class="collapsible" markdown="1">
<summary><strong>Neural Coding & Decoding</strong></summary>

* Spike-train analysis (interspike intervals, Fano factor, Poisson models)
* Stimulus reconstruction from spike trains
* Linear-Nonlinear-Poisson (LNP) and GLM fitting of neural responses
* Spike train discrimination and signal detection (ROC analysis)
* Population decoding (population vector and Bayesian decoders)
* Fisher information and tuning curve analysis
* Information-theoretic analysis (entropy, mutual information, redundancy and synergy)
* Temporal coding and spike synchrony analysis

</details>

<details class="collapsible" markdown="1">
<summary><strong>EEG Analysis & Signal Processing</strong></summary>

* Filtering, re-referencing, and montage handling (FIR/IIR, band-pass, notch, common average, bipolar)
* Artefact removal and bad-channel interpolation (ICA, regression, spherical spline interpolation)
* Spectral and time-frequency analysis (FFT, Morlet and continuous wavelet transforms)
* Source localisation (eLORETA)
* Spatial feature extraction 
* EEG Biomarker Detection
* Functional data analysis

</details>

<details class="collapsible" markdown="1">
<summary><strong>Neuroimaging Analysis</strong></summary>

* Structural MRI preprocessing with FSL (BET, FAST, FLIRT)
* Brain extraction and tissue segmentation
* Image registration to standard space
* Morphometric analysis (volumetry, cortical thickness)
* MRI data handling in Python

</details>

<details class="collapsible" markdown="1">
<summary><strong>Dynamic Systems Modelling</strong></summary>

* Linear and nonlinear dynamics (ODE, PDE, DDE systems)
* Stability and phase-plane analysis (fixed points, nullclines, limit cycles)
* Bifurcation analysis
* Numerical simulation and parameter estimation
* Neural models of state transitions (Hodgkin-Huxley, integrate-and-fire, rate models)

</details>

<details class="collapsible" markdown="1">
<summary><strong>Stochastic Modelling</strong></summary>

* Markov chains and hidden Markov models
* State-space models and state estimation (Kalman filtering)
* Point process models of spiking (Poisson, renewal processes)
* Stochastic differential equations and noise-driven dynamics
* Bayesian inference and probabilistic modelling

</details>

<details class="collapsible" markdown="1">
<summary><strong>Machine Learning</strong></summary>

* Supervised learning (regression, random forests, XGBoost, SVMs)
* Unsupervised learning and clustering
* Dimensionality reduction (PCA, ICA)
* Deep learning (CNNs)
* Computer vision (semantic segmentation, stereo vision, pose estimation)
* Reinforcement learning and Markov decision processes
* Model evaluation for imbalanced data

</details>

Awards
======
* **Postgraduate Excellence Scholarship Recipient** - University of Nottingham

Relevant Coursework
======
<details class="collapsible" markdown="1">
<summary><strong>Biomedical Modelling</strong></summary>
Applied mathematical modelling to biological and medical systems, with a strong focus on dynamical systems, including linear and nonlinear dynamics, stability analysis, bifurcation analysis, and phase-space analysis. Covered ODEs, PDEs, data-driven model fitting, and individual-based models, with applications to cell signalling, tissue dynamics, spatial patterning, and cancer growth.
</details>

<details class="collapsible" markdown=1>
<summary><strong>Machine Learning</strong></summary>
Built a strong mathematical foundation in machine learning, covering supervised, unsupervised, and reinforcement learning, with a focus on regression, classification, density estimation, and generative models.
</details>

<details class="collapsible" markdown=1>
<summary><strong>Computer Vision</strong></summary>
Focused on deep learning approaches for image understanding, including object detection, image segmentation, pose estimation, 3D reconstruction, and motion analysis. Also covered classical image processing and feature-based methods.
</details>

<details class="collapsible" markdown=1>
<summary><strong>Neural Computation</strong></summary>
Studied mathematical and computational models of neurons and neural networks, including biophysical and reduced neuron models, attractor networks, synaptic plasticity, and neural coding. Covered spike-train analysis, population coding, stimulus reconstruction, mutual information, and neural encoding and decoding methods.
</details>