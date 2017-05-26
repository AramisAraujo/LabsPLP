#include <stdio.h>

char vowels[] = "aeiou";
char* word;
int ingratas = 0;
int vowels_in_word = 0;
int i;
int h;

int main(){

    while(ingratas == 3 || scanf("%s", word) != EOF){

        vowels_in_word = 0;
        
        for(i = 0; i < sizeof(word); i++){
            for(h = 0; i < sizeof(vowels); h++){
                if(word[i] == vowels[h]){
                    vowels_in_word++;
                }
            }
        }
        if(vowels_in_word == 0){
            printf(" %s",word);
            ingratas++;
        }
    
    }

    return 0;
}