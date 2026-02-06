// Affiche un message de bienvenue

#include "fonction-bienvenue.h"
#include <iostream>
#include "string"
#include "cstdlib"

void afficherBienvenue(std::string message, int nbAffichage);

int main (int argc, char* argv[]){
    if(argc==1){
        afficherBienvenue("Bienvenue le monde !", 1);
    }
    else if (argc==2){
        afficherBienvenue(argv[1],1);
    }
    
    else if(argc>=3){
        std::string message=argv[];
        int nb=std::atoi(argv[2]);
        afficherBienvenue(message,nb);
    }
    return 0;
    
    }
    