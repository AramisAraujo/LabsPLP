#include <iostream>

using namespace std;


bool isPrime(int num){

    int candidate = num - 1;

    while(candidate > 1){
        if (num % candidate == 0){
            return false;
        }
        candidate --;
    }

    return true;

}

int main(){

    int k;
    int i = 1;

    cin >> k;

    while(i < k){
        if(isPrime(i) && isPrime(i+2)){
            cout << i << " " << i+2 << endl;
        }
        i++;
    }
    
    return (0);
}