# miles_and_kilometers **state and stateful**
> stateful widgets est l'une des méthodes pour gérer les states pour les widgets
> pour créer une wiget stateless nous avons besoin :
1.  créer une classe qui hérite de *statelessWidget* classe
2.  redéfinir la méthode *build()*
3.  retourne un *widget*
> pour créer une widget stateful nous avons besoin :
1.  créer une classe qui hérite de *statefulWidget* classe
2.  redéfinir la méthode *createState()* qui va retourner une classe qui hérite de *State*
3.  cette classe va redéfinir la méthode *build()*
> **TextField** est un widget utilisé pour écrire
> dans l'ordre de changer l'état *state* nous avons besoin de la méthode *setState*
> pour la classe qui represente state de widget, il y a la méthode *initState()*, on utilise cette méthode pour initialiser les valeurs, faire des traitement nessaicere dans la création du state
> DropDownButton est un widget qui représente une liste de choix, pour utiliser dropdown :
1.  la creation d'une liste qui contient les infos à afficher dans le dropboxbutton
2.  créer un instance de dropboxbutton on passant **items** qui est une liste des dropboxmenuitem, qui accepte un value, et widget qui va l'afficher comme un child
> pour metre à jour notre dorpboxbutton
1.  dans l'event *onChange* on appele la méthode *setState* qui va MAJ un attribue selon le valeur attribué dans *DropDownMenuItem*
> EdgeInsets utilisé pour definir padding ou margin d'un widget, il y en a plusiseurs utilisation:
1.  *all* ajouter le même padding/marigin dans tout les direction
2.  *only* pour spécifier où et combien tu veux ajouter padding/margin
3.  *symmetric* pour ajouter padding/margin soit horizontal ou vertical
