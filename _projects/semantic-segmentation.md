---
title: "Semantic Segmentation for Weeds and Crops with a U-Net CNN"
date: 2026-04-25 # YYYY-MM-DD
excerpt: "Semantic segmentation of agricultural images containing crops and weeds using a U-Net convolutional neural network trained on a small dataset of 50 images. The task involves segmenting each pixel into one of three classes: background, weeds, and crops"
collection: projects

# Tags: as many as you like. The Projects page shows the first 3, then "+N".
tags: ["Computer Vision", "Convolutional Neural Networks", "Image Segmentation", "Data Augmentation", "Model Evaluation", "MATLAB"]

# Link buttons at the top of the project page. Leave any blank to hide it.
github: "https://github.com/kavyavijaysankar/Semantic-segmentation-for-weeds-and-crops"
website: ""
paper: ""
video: ""
other_link: "http://www.ipb.uni-bonn.de/data/sugarbeets2016/"
other_link_label: "Dataset"   # button text for other_link, e.g. "Slides" or "Dataset"

# PDF viewer at the bottom of the page. Put the PDF in /files/ and write its path,
# e.g. "/files/my-report.pdf". Leave blank for no viewer.
report: "files/segmentation-weeds-crops-report.pdf"
report_title: "Report"       # heading above the viewer; defaults to "Report"
---

This project was part of the computer vision module at the University of Nottingham. This project implements semantic segmentation of agricultural images containing crops and weeds using a U-Net convolutional neural network trained on a small dataset of 50 images. The task involves segmenting each pixel into one of three classes: background, weeds, and crops. To address the data scarcity and the imbalance of classes, I used a custom data augmentation pipeline. Details are in the report.

The entire project was done in MATLAB.