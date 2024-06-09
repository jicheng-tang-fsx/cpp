#include <coroutine>
#include <iostream>
#include <stdexcept>
#include <generator>

std::generator<int> Fibonacci(int max) {
    int a = 0, b = 1;
    while (a <= max) {
        co_yield a;
        auto next = a + b;
        a = b;
        b = next;
    }
}

int main() {
    for (auto n : Fibonacci(15)) {
        std::cout << n << " ";
    }
    std::cout << std::endl;

    return 0;
}
