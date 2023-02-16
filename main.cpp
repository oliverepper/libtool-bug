#include "hello_one.hpp"
#include "hello_two.hpp"

auto main() -> int {
    #ifdef DEBUG
    hello_one_dbg();
    #endif
    hello_one();
    hello_two();

    
    return 0;
}