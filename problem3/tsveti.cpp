#include <iostream>
#include <time.h>
#include <math.h>
#include <cstdint>
using namespace std;

bool isPrime(int factor){
    for (int i = 2; factor > i; i++)
        if (factor % i == 0) return false;
    return true;
}

int main(){

    uint64_t num = 600851475143;
    int largest;

    for (int factor = 1; factor <= (num / 2); factor++)
        if (num % factor == 0 && isPrime(factor)) largest = factor;

    cout << largest << endl;

    return 0; 
}