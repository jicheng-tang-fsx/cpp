#include <coroutine>
#include <iostream>
#include <stdexcept>
#include <generator>

std::generator<int> Fibonacci(int max) {
    int a = 0, b = 1;
    while (a <= max) {
        co_yield a;  // 使用 co_yield 返回当前的斐波那契数字
        auto next = a + b;
        a = b;
        b = next;
    }
}

int main() {
    // 打印不超过15的斐波那契数
    for (auto n : Fibonacci(15)) {
        std::cout << n << " ";
    }
    std::cout << std::endl;

    return 0;
}
