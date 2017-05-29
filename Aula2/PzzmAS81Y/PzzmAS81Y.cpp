#include <stdio.h>
#include <string.h>

char vowels[6] = "aeiou";
char word[256];
int ingratas = 0;
int vowels_in_word = 0;

char word_letter;
char vowel_letter;

int i;
int h;

int main(){
    while (fgets(word, sizeof(word), stdin) != NULL){
        
        if(ingratas > 2){
            break;
        }
        
        vowels_in_word = 0;

        for (i = 0; i < strlen(word); i++)
        {
            for (h = 0; h < strlen(vowels); h++)
            {
                word_letter = word[i];
                vowel_letter = vowels[h];

                if (word_letter == vowel_letter)
                {
                    vowels_in_word++;
                }
            }
        }
        if (vowels_in_word == 0)
        {
            printf("%s", word);
            ingratas++;
        }
    }

    return 0;
}