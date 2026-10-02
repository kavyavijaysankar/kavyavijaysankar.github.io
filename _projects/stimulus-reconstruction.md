---
title: "Stimulus Reconstruction from Spiking Neurons"
date: 2026-04-30 # YYYY-MM-DD
excerpt: "Decoding a continuous stimulus from the spike train of a leaky integrate-and-fire neuron using optimal linear reconstruction."
collection: projects

tags: ["Neural decoding", "Stimulus reconstruction", "Spike-train analysis", "Integrate-and-fire models", "Linear estimation", "Python", "NumPy"]

github: ""
website: ""
paper: ""
video: ""
other_link: ""
other_link_label: ""

report: "files/stimulus-reconstruction.pdf"
report_title: "Report"
---

This project was for the Neural Computation module at the University of Nottingham.

A central question in neural coding is how much information about the outside world a neuron's spikes actually carry. I approached this by simulating a leaky integrate-and-fire neuron driven by lowpass-filtered Gaussian noise, then decoding the original stimulus back from its spike train alone.

I derived the optimal linear decoder from first principles by minimising the squared reconstruction error, which gives an acausal kernel that weights spikes before and after each time point. I also derived the autocovariance of a Poisson spike train and used it to build a simpler approximate decoder that assumes spikes are independent. Before running either on real spikes, I validated the pipeline on a known linear mapping, where reconstruction was near perfect.

The exact decoder recovered about 47% of the stimulus variance, while the Poisson approximation recovered only 28%. Autocorrelation analysis showed why: the neuron's refractory period creates negative correlations between nearby spikes, which the exact decoder corrects for and the Poisson decoder ignores. Both decoders also failed during strongly negative stimulus periods, because the neuron fell silent below threshold and its spikes carried no information about the stimulus at those times.

To test how the neuron's operating point shapes what it encodes, I swept the background current across a wide range and tracked both reconstruction error and kernel shape. Reconstruction improved as the neuron fired more, reaching about 69% variance explained at the best operating point, then degraded as the neuron approached saturation and its spikes reflected the background drive more than the stimulus. The two decoders also peaked at different operating points, which shows that the cost of assuming Poisson spiking grows with firing rate.