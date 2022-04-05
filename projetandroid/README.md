# premier projet flutter
## runApp
> C'est la méthode qui déclanche notre app, on passe par argument l'application
## MaterialApp
> C'est la classe qui contient le logic de la *Material Design* de *google*, en passe dans l'argument home notre contenaire
## Scaffold
> C'est un widget qui contient un bar, qui appBar, qui reçoit un AppBar objet. Et un argument body qui contient un widget qui se represente dans le body de notre app
## Center
> Un widget contenaire qui centre son fils dans le centre, qui est passé par argument child;
## Column
> Un widget contenaire qui contient 0 ou plusieurs widgets, aligner verticalement;
## Text
> Un widget qui represente un texte, qui contient un argument style, pour donner un style au texte
## Image
> Un widget qui affiche une image. La méthode **network** pour utiliser un lien.
## affichage de dialogue
### la creation du méthode qui cré et affiche le dialogue
> 1.    utilisation du *showDialog*, passant le *context* du l'application, et *builder* qui va construire le dialogu
> 2.    utilisation du *AlertDialog* comme widget de dialogue, en diffinant *title*, *content*, et *actions* qui est une liste des widgets qui sont généralement des Buttons
> 3.    Navigator.of(context).pop() pour détruire le dialogue
> 4.    englobe l'ensemble de contexte dans un widget *Builder* passant par agument *builder* un fonction arrow qui prend le contexte en question et dans le core retourne les widgets presedent 