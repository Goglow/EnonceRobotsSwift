# Exercice POO Swift : Les Robots

Nous allons construire un robot virtuel qui pourra se déplacer sur une carte et effectuer diverses actions. Pour faciliter le travail nous allons utiliser les concepts de la programmation orientée objet dans un nouveau projet **XCode**.

## 1 - Créer une Classe Robot

La première étape de cette exercice sera de créer une classe Robot avec les caractéristiques suivantes :

    * Un Nom
    * Des points de vie (initialisés à 100 dans le constructeur)
    * Une vitesse maximale de déplacement ( Initialisée à 3 par défaut dans le constructeur)
    * Une position, représentée par des coordonnées X et Y initialisée à (0,0) dans le constructeur

Une fois la classe créée, nous pouvons générer un ou plusieurs robots basés sur ce modèle dans le fichier *main.swift* du projet. ( nous l'appelerons par la suite "le main" )

Dans le main générer un robot en y définissant uniquement son nom. Le nom sera appliqué par la méthode *init()* les autres caractéristiques seront initialisées par défaut.

## 2 - Robot a un ami.

Nous venons de créer une classe Robot et un objet basé sur cette classe. Nous pouvons en réalité créer une infinité d'objets à partir de la même classe.

Notre robot se sent un peu seul. Ajoutez un second robot dans le main et donnez-lui un nom différent pour pouvoir les différencier.

## 3 - Des Robots qui parlent

Créer une méthode que l'on appellera *introdiuce()*. Cette méthode fait parler le robot dans la console et lui fait dire quelque chose de la forme :

*"Bonjour je m'appelle Wall-e. J'ai 100 points de vie et je me déplace à 3 cases par seconde. Je suis à la case de coordonnées (0 ; 0 ) "*

Une fois la méthode créée, retournez dans le main et demander à chaque robot de se présenter.

## 4 - Une armée de robots

Qu'est-ce qui est 2 fois mieux que 2 robots ? 4 robots !

Pour bien les ranger en ordre de bataille, nous allons assembler nos robots dans un array dans le main.

Créez 4 robots dans un Array et faites les se présenter à tour de rôle grâce à une boucle.

## 5 - Des Robots à la conquête du monde

Nos  Robots veulent maintenant se déplacer pour conquérir le monde. Créer une fonction move() qui permet de se déplacer vers le haut, le bas, la gauche, ou la droite sur la carte. En plus de la direction, on doit pouvoir choisir de se déplacer de 1 au nombre maximum de cases correspondant à la vitesse maximale de déplacement du robot ( 3 par défaut )

Retourner dans le mail et faire déplacer les robots tans toutes les directions au choix. Après les avoir fait déplacer, les faire parler à nouveau pour vérifier qu'ils sont bien dans des cases aux coordonnées différentes.
