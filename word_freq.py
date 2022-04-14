#!/usr/bin/python3

import sys
import re 

def cleanText(readData):
    text = re.sub('[-=+,#!@$%^&*(\)\~.<\>'\'[\]{|}]','',readData)
    return text

word.txt = sys.argv[1]
num = int(sys.argv[2])
fopen = open(word.txt)
lines = fopen.readlines()
linenum = len(lines)
word_count = {}

for i in range(linenum)
    lines[i] = 
    word_list = lines[i].split()
    for word in word_list:
        word_count[word] = word_count.get(word,0) + 1



