#!/usr/bin/env python

import matplotlib.pyplot as plt
import gzip
import argparse

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("-i1", "--infile1", help="name of first input file")
    parser.add_argument("-i2", "--infile2", help="name of second input file")
    parser.add_argument("-o", "--outfile", help="name of image output file")
    return parser.parse_args()

args = get_args()

with gzip.open(args.infile1, "rt") as file1:
    dist_1 = []
    for i, line in enumerate(file1):
        if i % 4 == 1:
            dist_1.append(len(line.strip()))

with gzip.open(args.infile2, "rt") as file2:
    dist_2 = []
    for i, line in enumerate(file2):
        if i % 4 == 1:
            dist_2.append(len(line.strip()))

# print(min(dist_1.keys()))
# print(min(dist_2.keys()))

plt.hist(dist_1, bins=range(35,150), alpha=0.6, label="Distribution of read 1", color="orange")
plt.hist(dist_2, bins=range(35,150), alpha=0.4, label="Distribution of read 2", color="blue")
plt.xlim(33, 160)
plt.yscale("log")
plt.xlabel("Read Length")
plt.ylabel("Number of Reads")
plt.legend()
plt.savefig(args.outfile)