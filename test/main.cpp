#include <iostream>
#include <cassert>
#include "../src/bib.hpp"

void test_calcularFatorial() {
    assert(calcularFatorial(0) == 1);
    assert(calcularFatorial(1) == 1);
    assert(calcularFatorial(5) == 120);
    std::cout << "[OK] Testes da funcao calcularFatorial passaram." << std::endl;
}

int main() {
    std::cout << "Iniciando testes regressivos..." << std::endl;
    test_calcularFatorial();
    return 0;
}
