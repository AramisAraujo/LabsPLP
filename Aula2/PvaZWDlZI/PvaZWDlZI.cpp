#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    
	int amountBooks;
	int i;
	string line;
	
    cin >> amountBooks;//How many book titles we shall read
    
    cin.ignore();//Leftover whitespace
    
    vector<string> bookTitles(amountBooks);//A vector to store our book titles
    
    for (i = 0; i < amountBooks; i++){//We then read the titles and put them into the vector
        getline(cin, line);
        bookTitles.insert(bookTitles.begin() + i, line);
    }
    
    sort(bookTitles.begin(), bookTitles.end());//sorting the vector
    
    for(i = 0; i < bookTitles.size(); i++){
        
        if( bookTitles[i] != ""){//we only want the titles, no whitespaces from vector growth
            
            cout << bookTitles[i]<< endl;
        }
    }
}
