#!/usr/bin/python36
import sys

def main():
    f = sys.argv[1]
    #print (f)
    for line in open(f, "r").readlines():
        #print(line)
        if line.__contains__("Time taken:"):
            print(line.split(" ")[2])
            #line.split(" ")[3] 


if __name__ == '__main__':
    main()

