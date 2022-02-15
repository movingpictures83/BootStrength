# BootStrength
# Language: R
# Input: CSV
# Output: CSV
# Tested with: PluMA 1.1, R 4.0.0
# Dependency: bnlearn 4.7

PluMA plugin that runs bootstrap-based inference (Cameron et al, 2008).

The program takes as input a CSV file consisting of samples (row) and measurements (columns), where entry (i,j) is the amount of measurement j in sample i.

Bootstrap will be output as a CSV file with four columns: source node, destination node, strength and direction
