#include <iostream>
#include <cstdlib>
#include <stdint.h>
#include <cmath>
using namespace std;

int main (int argc, char** argv) {
  if (argc < 3) {
    cout << "gentable: " << endl;
    cout << "\t" << "use: gentable <tablebitsize> <fracpart>" << endl;
    return 1;
  }

  int64_t max = int64_t((1 << atoi(argv[1])));
  for (int64_t i=0;i<max;i++) {
    cout << i << ": " << int64_t(sin(double(i)/double(max)*2*M_PI)*(1 << atoi(argv[2]))) << endl;
  }

  return 0;
}
