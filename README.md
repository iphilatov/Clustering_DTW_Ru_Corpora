# Clustering Russian dialect corpora data by DTW

This repository contains some material for the research paper "Oral corpora clustering by comparison of single- and double-syllable word acoustic properties" by Igor Philatov.

See the paper for a detailed description here.

The dataset used in the research, and which some parts of this repository heavily relies on, may be found [on Google Drive](https://drive.google.com/drive/folders/10-Blxv1K0X57u85mXJTX5R1NuRB1qWct?usp=sharing).

In this repository you can find:

1. `main_code.ipynb` - a Jupyter notebook with the code used to calculate DTW, clustering and metrics. You can run it locally or via Google Сolab. Note that due to resource problems or/and library incompatibility issues you may have to run the code while restarting a kernel so make sure you save big data structures created by the code samples.

2. `get_audio.ipynb` - a Jupyter notebook with the code used to retrieve audio files from corpora. It uses links from a dataframe which was provided by corpora maintainers.

3. `praat_extract.R` - a code in R which may be used to extract audio samples from WAV-files with the use of TextGrid-files.

4. `dendrograms` - a directory which contains image where you can see the results of the cluster analysis calculated for every word colored by speakers' gender, dialect and age. 

5. `metrics` - a directory which contains files with the results for each used metrics for every analysed word.

If you have any question, you may contact me via Telegram:

iphilatov
