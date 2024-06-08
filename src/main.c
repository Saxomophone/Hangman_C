#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <stdbool.h>


#define MAX_INCORRECT_GUESSES 9
void clear_stdin() {
    while ((getchar()) != '\n' && getchar() != EOF) { }
}

void delay(int milliseconds) {
    clock_t start = clock();
    while ((clock() - start) * 1000 / CLOCKS_PER_SEC < milliseconds) { }
}

void clearConsole() {
    #ifdef _WIN32
        system("cls");
    #else
        system("clear");
    #endif
}

char *createWordProgress(int wordLength, const char word[], char guessedLetters[]) {
    bool letterGuessed;
    char *wordProgress = malloc(sizeof(char) * (wordLength+1));
    wordProgress[0] = '\0';                             //initialize to an empty string (remember to do this if getting goofy charcters like `É╒)
    int initalLength = strlen(guessedLetters);          //define outside both for loops for efficiency
    for (int i = 0; i < wordLength; i++) {              //uses < rather than <= because the first element is index 0
        letterGuessed = false;                          //reset to false for each letter
        for (int j = 0; j < initalLength; j++) {        //Can't use strlen(guessedLetters) as the condition because it changes as the loop runs as more values get concatenated to it.
            if (word[i] == guessedLetters[j]) {         //
                char temp[2] = {word[i], '\0'};         //strncat wants a string and word[i] is a char so this makes it a string with a null terminator at the end
                strncat(wordProgress, temp, 1);
                letterGuessed = true;
            }
        }
        if (letterGuessed == false) {
            strncat(wordProgress, "_", 2);
        }
    }
    return wordProgress;
}

typedef char* HangmanImages[10];
HangmanImages hangmanImages = {
    "\n\n\n\n\n\n\n\n  -------------",
    "\n        |\n        |\n        |\n        |\n        |\n        |\n        |\n  -------------",
    "        +----------+\n        |\n        |\n        |\n        |\n        |\n        |\n        |\n  -------------",
    "        +----------+\n        |          |\n        |          |\n        |\n        |\n        |\n        |\n        |\n  -------------",
    "        +----------+\n        |          |\n        |          |\n        |          O\n        |\n        |\n        |\n        |\n  -------------",
    "        +----------+\n        |          |\n        |          |\n        |          O\n        |          |\n        |\n        |\n        |\n  -------------",
    "        +----------+\n        |          |\n        |          |\n        |          O\n        |         /|\n        |\n        |\n        |\n  -------------",
    "        +----------+\n        |          |\n        |          |\n        |          O\n        |         /|\\\n        |\n        |\n        |\n  -------------",
    "        +----------+\n        |          |\n        |          |\n        |          O\n        |         /|\\\n        |         /\n        |\n        |\n  -------------",
    "        +----------+\n        |          |\n        |          |\n        |          O\n        |         /|\\\n        |         / \\\n        |\n        |\n  -------------"
};


bool letterInArray(const char word[], char letter) {
    int wordLength = strlen(word);
    for (int i = 0; i < wordLength; i++){
        if (word[i] == letter) {
            return true;
        }
    }
    return false;
}

bool checkWord(char word[]) {
    int wordLength = strlen(word);
    for (int i = 0; i < wordLength; i++) {
        if (!((word[i] >= 'A' && word[i] <= 'Z') || (word[i] >= 'a' && word[i] <= 'z'))) {
            if (word[i] == ' ') {
                printf("Error: Word cannot contain spaces\n");
                return false;
            } else {
                printf("Error: Word can only contain letters\n");
                return false;
            }
        }
    }
    return true;
}


int gameMode() {
    int mode;
    printf("1. Single player\n2. Multiplayer\n");
    int result = scanf("%4d", &mode);
    if (result != 1) {
        printf("Invalid input\n");
        clear_stdin();
        return gameMode();
    } else if (mode != 1 && mode != 2) {
        printf("Invalid input\n");
        clear_stdin();
        return gameMode();
    } else {
        return mode;
    }
}

char* getWordFromUser() {
    clear_stdin();         // clear the input buffer by looping through it until a newline character or EOF is found
    char *word = malloc(sizeof(char) * 100);
    printf("Enter a word: ");
    int result = scanf("%100[^\n]", word);
    if (result != 1) {
        printf("Invalid input\n");
        clear_stdin();
        return getWordFromUser();
    }

    if (checkWord(word) == false) {
        free(word);     //free the memory allocated for the word to avoid a memory leak
        word = NULL;
        word = getWordFromUser();
    }
    return word;
}

char *startGame(int wordLength) {
    int maxGuesses = wordLength + MAX_INCORRECT_GUESSES;
    char *guessedWord = malloc(sizeof(char) * maxGuesses);  // allocate memory for the array of letters guessed
    guessedWord[0] = '\0';  // initialize to an empty string (use '\0' instead of "" because it'll throw a warning or error as it expects a string not a single character)
    for (int i = 0; i < wordLength; i++) {
        strncat(guessedWord, "_", 2);
    }    
    return guessedWord;
}

void displayWinOrLoss(int i, char *seperatedGuessedLetters, const char *wordProgress, const char * word, int winCase) {
    clearConsole();
    printf("\nGuessed letters: %s", seperatedGuessedLetters);
    printf("\n%s", hangmanImages[i]);
    if (winCase == 1) {
        printf("\nWord: %s", word);
        printf("\nYou win\n");
    } else {
        printf("\nWord: %s\n", wordProgress);
        printf("The word was %s\n", word);
        printf("\nYou lose\n");
    }
}

char* seperateGuessedLetters(char* guessedLetters) {
    // printf("debug start of seperateGuessedLetters\n");
    int guessedLettersLength = strlen(guessedLetters);    //strlen doesn't count the null terminator so this is the actual length of the string
    char *seperatedGuessedLetters = malloc((sizeof(char) * (guessedLettersLength * 3)) + (1*sizeof(char)));     
     /* *3 = 1 for letter, 1 for comma, 1 for space. +1*sizeof(char) for if the guessedLettersLength is 0. 
     Malloc can't take 0 as it is undefined behaviour.*/
    seperatedGuessedLetters[0] = '\0';

    for (int i = 0; i <= guessedLettersLength; i++) {
        char temp[2] = {guessedLetters[i], '\0'};    // Create a temporary string with the character
        strncat(seperatedGuessedLetters, temp, 1);  // if I just use the index I am giving it a char not string which it requires 

        if (i+1 < guessedLettersLength) {           //if i is the last value in the array or the null terminator, don't add a comma and space
            strncat(seperatedGuessedLetters, ", ", 3);
        }
    }
    return seperatedGuessedLetters;
}


void guesses(const char word[], const int wordLength, char wordProgress[]) {
    int i = 0;                                          //i is the number of guesses used
    char guess[51];                                     //allocate memory for the guess
    char *guessedLetters = malloc(sizeof(char)*24);   //allocate memory for 24 different letters of alphabet
    guessedLetters[0] = '\0';                           //initialize to an empty string to avoid garbage values
    char*seperatedGuessedLetters = "";                 //initialize to avoid garbage values
    
    while (i <= MAX_INCORRECT_GUESSES) {                //<= as it still needs to run the loop to display the losing message if all guesse are used 
        clearConsole();
        if (strlen(guessedLetters) > 0) {               //if guessedLetters is empty, don't create seperatedGuessedLetters (strlen of empty string is 0
            seperatedGuessedLetters = seperateGuessedLetters(guessedLetters);
        }
        printf("\nGuessed letters: %s", seperatedGuessedLetters);
        printf("\n%s", hangmanImages[i]);
        printf("\nWord: %s", wordProgress); 
        printf("\nGuess: ");
        int result = scanf("%51s", guess);          //scanf returns the number of items successfully read
        if (result != 1) {                          //if scanf doesn't return 1, it means it didn't read the input correctly
            printf("Invalid input\n");              //or that the input was invalid
            clear_stdin();
            continue;           //restarts the loop
        }
        if (strlen(guess) == 1) {                               //if the guess is a single letter not a word
            if (letterInArray(guessedLetters, guess[0])) {      //checks if the letter has already been guessed
                printf("\nYou already guessed %s\n", guess);
                delay(750); 
                continue;           //restarts the loop
            }
            else {
                strncat(guessedLetters, guess, 1);              //concatenate the guess to the guessedLetters array
                seperatedGuessedLetters = seperateGuessedLetters(guessedLetters);
            }
            if (letterInArray(word, guess[0])) {        //guess[0] because guess is a string and has a null terminator at the end
                wordProgress = createWordProgress(wordLength, word, guessedLetters);
                if (strcmp(wordProgress, word) == 0) {      // 0 = true
                    displayWinOrLoss(i, seperatedGuessedLetters, wordProgress, word, 1);
                    free(guessedLetters);       //free the memory allocated for the guessedLetters to avoid a memory leak
                    break;
                } else {
                    printf("\n%s is correct\n", guess);
                    delay(750);
                }
            } else {
                printf("\n%s is not in the word\n", guess);
                delay(750);    
                i++;
                if (i == MAX_INCORRECT_GUESSES) {           //11th index == last guess
                    displayWinOrLoss(i, seperatedGuessedLetters, wordProgress, word, 0);
                    free(guessedLetters);       //free the memory allocated for the guessedLetters to avoid a memory leak
                    break;
                }
            }
        }
        if (strlen(guess) > 1) {
            if (strcmp(guess, word) == 0) {            //0 = true
                delay(750);
                displayWinOrLoss(i, seperatedGuessedLetters, wordProgress, word, 1);       
                free(guessedLetters);       //free the memory allocated for the guessedLetters to avoid a memory leak
                break;
            } else {
                printf("\n%s is not the word\n", guess);
                delay(750);
                i++;
                if (i == MAX_INCORRECT_GUESSES) {       
                    displayWinOrLoss(i, seperatedGuessedLetters, wordProgress, word, 0);
                    free(guessedLetters);       //free the memory allocated for the guessedLetters to avoid a memory leak
                    break;
                }

            }       
        }
    }
}

FILE* openFile() {
    FILE *in_file = fopen("wordBank.txt", "r");
    if (in_file == NULL) {
        printf("Error: File cannot be read\n");
        exit(1);
    }
    return in_file;
}

void checkMallocSuccess(void *pointer) {
    if (pointer == NULL) {
        printf("Error: Memory allocation failed\n");
        exit(1);
    }
}

char* selectWordFromFile(char* word) {
    srand(time(NULL));    //seed the random number generator
    FILE *in_file = openFile();
    char line[100];
    int maxLinesInTxtFile = 0;
    char *wordReservoir = NULL;     //wordReservoir is where the latest word is stored

    while (fgets(line, sizeof(line), in_file) != NULL) {
        maxLinesInTxtFile++;

        int randomNumber = rand();       //random number between 0 and RAND_MAX which is predefined in stdlib.h as 32767
        int remainder = randomNumber % maxLinesInTxtFile;     //remainder is between 0 and maxLinesInTxtFile
        //you can't limit the range of rand() so getting the remainder of the max range achieves this.
        
        if (remainder == 0) {       //if remainder is 0, replace the word in the reservoir with the current word
            free(wordReservoir);
            wordReservoir = malloc(strlen(line) + 1); // +1 for the null terminator
            checkMallocSuccess(wordReservoir);
            strcpy(wordReservoir, line);        
        }
    }

    word = malloc(strlen(wordReservoir) +1);
    strcpy(word, wordReservoir);        //using strcpy rather than just word = wordReservoir so that I can free wordReservoir before I forget.
    if (word[strlen(word) - 1] == '\n') {
                word[strlen(word) - 1] = '\0';
            }
    free(wordReservoir);   //free the memory for the last word
    fclose(in_file);      //close the file
    delay(750);
    return word;
}


int main() {
    char *word = NULL;      //initialize to NULL to avoid garbage values
    int mode = gameMode();
    if (mode == 1) {
        word = selectWordFromFile(word);
    } else {
        clearConsole();
        word = getWordFromUser();
    }
    int wordLength = strlen(word);
    clearConsole();
    char *wordProgress = startGame(wordLength);
    guesses(word, wordLength, wordProgress);

    //free the memory allocated for the pointers to avoid memory leaks
    free(wordProgress);    
    wordProgress = NULL;
    free(word);  
    word = NULL;
    return 0;
}


