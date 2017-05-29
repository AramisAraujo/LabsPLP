#include <iostream>

using namespace std;

void printMatrix(int ** array, int size){

    for (int i = 0; i <  size; i++){
        for (int h = 0; h < size; h++){
            cout << array[i][h] << " "; 
        }
        cout << endl;
    }
}

void swap2D(int** array, int x, int y){

    int temp;

    temp = array[x][y];

    array[x][y] = array[y][x];
    array[y][x] = temp;

}

void invertSquareMatrix(int** array, int size){

    for(int x = 0; x < size; x++){
        for(int y = x + 1; y < size; y++){

            swap2D(array, x, y);

        }
    }

}

int main(){

    int size;

    cin >> size;

    int** array =  new int*[size];

    for(int i = 0; i < size; ++i){
        array[i] = new int[size];
        }

    for (int i = 0; i <  size; i++){
        for (int h = 0; h < size; h++){
            cin >> array[i][h]; 
        }
    }

    invertSquareMatrix(array, size);

    printMatrix(array, size);

    return (0);
}