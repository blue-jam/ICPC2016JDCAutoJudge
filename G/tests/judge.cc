#include "testlib.h"
#include <stdio.h>
#include <math.h>

const double EPS = 1e-6;

int main(int argc, char *argv[]){
	registerTestlibCmd(argc, argv);

	while (!ans.seekEof()){
		double j = ans.readDouble();
		double p = ouf.readDouble();
		if (fabs(j - p) > EPS + 1e-15){
			quitf(_wa, "expected %.10f, found %.10f", j, p);
		}
	}
	quitf(_ok, "OK");
}
