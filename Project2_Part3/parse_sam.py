#!/usr/bin/env python

import argparse

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--filename')
    return parser.parse_args()

args = get_args()

mapped = False
mapped_reads = 0
unmapped_reads = 0
with open(args.filename, "r") as fh:
    for line in fh:
        line = line.strip()
        if line[0] != '@':
            line = line.split()
            flag = int(line[1])
            if((flag & 256) != 256):
                if((flag & 4) != 4):
                    mapped = True
                    mapped_reads += 1
                else:
                    unmapped_reads += 1

print("Number of Mapped Reads:", mapped_reads)
print("Number of Unmapped Reads:", unmapped_reads)