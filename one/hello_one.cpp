#include <iostream>

void hello_one() {
    std::cout << "one" << std::endl;
}

#ifdef DEBUG
void hello_one_dbg() {
    std::cout << "one_debug" << std::endl;
}
#endif