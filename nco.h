#ifndef NCO_H
#define NCO_H

#include <stdint.h>

typedef struct NCO {
  uint8_t pa;
  float pac[2];
}NCO;

#endif /* NCO_H */
