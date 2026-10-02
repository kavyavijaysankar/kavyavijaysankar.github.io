---
title: "IED Detection in EEG"
date: 2026-09-17 # YYYY-MM-DD
excerpt: "Automated detection of IEDs (an epilepsy biomarker) in continuous EEG using functional data analysis."
collection: projects

# Tags: as many as you like. The Projects page shows the first 3, then "+N".
tags: ["Signal processing", "EEG analysis", "Functional data analysis", "Event Detection", "Python-MNE", "Machine Learning", "Scikit-learn"]

# Link buttons at the top of the project page. Leave any blank to hide it.
github: "https://github.com/kavyavijaysankar/IED_Detection_EEG"
website: ""
paper: ""
video: ""
other_link: "https://doi.org/10.5061/dryad.xsj3tx99w"
other_link_label: "Dataset"   # button text for other_link, e.g. "Slides" or "Dataset"

# PDF viewer at the bottom of the page. Put the PDF in /files/ and write its path,
# e.g. "/files/my-report.pdf". Leave blank for no viewer.
report: "files/IED-Detection.pdf"
report_title: "Paper"       # heading above the viewer; defaults to "Report"
---

This project was for my Master's dissertation at the University of Nottingham. 

IED detection has been attempted for years, yet no model has matched expert neurologists, whose own IED identification error rate is around 30%. I used functional data analysis for this problem because it treats each stretch of EEG as a continuous curve rather than a list of separate samples. That lets the model look at the shape of a discharge as a whole.

The pipeline smooths the signal into b-spline curves, aligns them so comparable events line up, and then extracts the main patterns of variation through FPCA to feed a classifier. Because every step works on interpretable curves, it is possible to see why the model flags a given event, which matters if clinicians are going to trust it.

The model was trained on only 100 EEG recordings and still detects most IEDs (82% sensitivity) while keeping false positives low (≤ 8 FP/min), locating each discharge to within a few milliseconds (10ms median localization error). The PR-AUC was 25× the chance baseline.

The full method and results are in the PDF below.