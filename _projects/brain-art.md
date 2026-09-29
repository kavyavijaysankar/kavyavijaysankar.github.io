---
title: "Wall of Frame: Brain Art using Electrophysiology and Neuroimaging Techniques"
date: 2026-09-20 # YYYY-MM-DD
excerpt: "Turning brain data into creative visuals"
collection: projects

# Tags: as many as you like. The Projects page shows the first 3, then "+N".
tags: ["EEG Source localization", "MRI Analysis", "FSL", "FreeSurfer", "eLoreta"]

# Link buttons at the top of the project page. Leave any blank to hide it.
github: ""
website: ""
paper: ""
video: ""
other_link: ""          # ink
other_link_label: ""    # text

# PDF viewer at the bottom of the page. Put the PDF in /files/ and write its path,
# e.g. "/files/my-report.pdf". Leave blank for no viewer.
report: ""
report_title: ""       # heading above the viewer; defaults to "Report"
---

Every doctor's office has one thing in common: little anatomical models of their specialization sitting on their table. I've always found that really cool. It made me realise that every profession should have an object in its office that’s akin to, say, the heart model you’d find in a cardiologist’s office. It made me wonder what the equivalent would be for my profession. I can't have a model of the brain on my table, I'm not a surgeon. So it has to be brain data.
 
That's when I decided to start collecting scans of my own brain. I'm a computational neuroscientist, I work with brain data, it makes sense that I would have EEGs, MEGs, MRIs, CT scans, PET scans, and more. The eventual plan is to turn each of them into a visual and frame them on a wall — my very own ***Wall of Frame*** (humour me).
Since then, I've gotten an EEG and a structural MRI. I contributed to research studies in my university by collecting them.

I had worked with EEG data before getting my own EEG, but never with MRI data. So naturally I was very excited to experiment with my new MRI. In MATLAB, I made images of my sagittal, coronal and axial midline (these are directly going on my Wall of Frame). This gave me the perfect excuse to start learing FSL and FreeSurfer. With a bit more meddling and playing around with the MRI and EEG, I made this below (right) visual.

![Sagittal midline of my brain](/images/brain%20art%20sagittal%20midline.png){: width="500"}

The visual is a midline sagittal representation of my brain, where the outline of the brain is formed from the waves of my EEG. The MRI provides the anatomical dimensions and proportions, so the resulting shape corresponds to the actual structure of my brain. Source localisation was also used to map EEG activity to different regions of the brain, so where possible, each part of the outline is drawn from EEG waves originating from that corresponding region.

This project is ongoing, I aim to soon have the code available in a GitHub repository so others can try making the same visual with their MRIs and EEGs. As and when I get other types of scans, I’ll be experimenting with them too.