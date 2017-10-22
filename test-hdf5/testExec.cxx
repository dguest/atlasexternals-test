#include <H5Cpp.h>

int main() {
  H5::H5File("nothing.h5", H5F_ACC_TRUNC);
  return 0;
}
