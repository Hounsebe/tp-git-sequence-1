TARGET := bienvenue
MODULE := fonction-bienvenue

# Correction : g++ au lieu de g==
CXX = g++
LD = g++
RM = rm -f

# On sépare les flags de compilation
CXXFLAGS = -Wall -std=c++11
LDFLAGS = 

$(info Fabrication du programme : $(TARGET))

all : $(TARGET)

# Édition de liens (Link) : on ajoute -o ici pour la clarté
$(TARGET) : $(TARGET).o $(MODULE).o
	$(LD) -o $@ $^ $(LDFLAGS)

# Compilation des fichiers objets (.o)
# On ajoute l'option -c ici
$(TARGET).o: $(TARGET).cpp $(MODULE).h
	$(CXX) $(CXXFLAGS) -c $<

$(MODULE).o: $(MODULE).cpp $(MODULE).h
	$(CXX) $(CXXFLAGS) -c $<

.PHONY : clean cleanall rebuild

clean:
	$(RM) *.o

cleanall: clean
	$(RM) $(TARGET)

rebuild: cleanall all
