# Bienvenue

Programme C++ qui affiche un ou plusieurs fois un message de Bienvenue à partir de la ligne de commande :

```sh
$ make rebuild
Fabrication du programme : bienvenue
rm -f *.o
g++ -c -Wall -std=c++11 bienvenue.cpp
g++ -c -Wall -std=c++11 fonction-bienvenue.cpp
g++ -o bienvenue bienvenue.o fonction-bienvenue.o

$ ./bienvenue
Bienvenue le monde !

$ ./bienvenue Bienvenu
Bienvenue

$ ./bienvenue Bienvenue 2
Bienvenue
Bienvenue

$ ./bienvenue "Bojour le monde" 3
Bonjour le monde  
Bonjour le monde
Bonjour le monde

```
