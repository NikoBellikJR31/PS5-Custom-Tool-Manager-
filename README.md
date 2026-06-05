# PS5 Custom Tool Manager V1

PS5 Custom Tool Manager V1 est une payload ELF autonome pour PS5, basee sur le tool PC original 

Elle lance une interface web locale sur la console pour scanner les jeux, apps et certains chemins systeme, puis modifier les icones, backgrounds, noms, visibilite, backups et fonts systeme.
  
> Le tool V1 fonctionne ( tester sur ma 6.02 ) des bugs peuvent probablement arriver . Les fonctions V2 sont travaillees separement. ( Formes des icones…) bientôt terminer
> 
## Vidéo de démonstration

Clique sur l’image pour voir la vidéo :

[![Vidéo de démonstration](https://img.youtube.com/vi/S3fAEIKSf-M/hqdefault.jpg)](https://youtu.be/S3fAEIKSf-M)


## Lancement

1. Lance ton payload loader sur la PS5 9021
2. Lance `PS5 Custom Tool Manager Launcher.bat` pour envoyer la payload ou envoyer ou installer la payload selon votre choix de configs
3. Envoie `PS5 Custom Tool Manager V1.elf` vers l'IP de ta PS5, vous rentrer juste votre IP
4. Ouvre via le raccourci XMB ou la page web:

```text
http://IP_DE_LA_PS5:8089/
```

La page peut etre ouverte depuis la PS5, un PC sur le meme reseau.

## Fonctions principales

- Serveur web local sur le port `8089`.
- Scan jeux/apps utilisateur.
- Scan de chemins systeme selectionnes.
- Preview PNG et DDS compatibles.
- Remplacement `icon0`, `pic0`, `pic1`, `pic2`, `save_data` et assets systeme .
- Redimensionnement automatique des images.
- Conversion selon le format cible: PNG ou DDS.
- Selection d'image depuis USB sur PS5.
- Selection d'image depuis PC hors navigateur PS5.
- Renommage des jeux/apps .
- Masquer / afficher quand les champs existent.
- Force DB pour certains chemins image quand ceux il ne sont pas present d'origine .
- Backups automatiques avant modification.
- Restauration des backups.
- Module fonts: backup, import TTF/OTF, preview, appliquer, restaurer.
- Bouton `Retirer tuile` pour retirer proprement la tuile XMB.
- Off coupe le serveur port 8089...

## USB

Dossier a la racine de la cle usb :

```text
PS5CustomToolManager/
```

Structure conseillee:

```text
PS5CustomToolManager/
  images/
  fonts/
  backups/
  font_backups/
```

### Images

Dossier conseiller :

```text
PS5CustomToolManager/images
```

Formats acceptes:

```text
.png .jpg .jpeg .bmp .webp .dds
```

Le tool possede un navigateur USB, donc les images peuvent aussi etre rangees dans d'autres dossiers de la cle.

### Fonts

Dossier exact pour importer depuis la PS5:

```text
PS5CustomToolManager/fonts
```

Formats acceptes:

```text
.ttf .otf
```

Sur PS5, `Importer TTF/OTF` recupere les fonts depuis la cle USB.  
Depuis PC, le meme bouton importe une font depuis l'appareil qui ouvre la page web.

## Backups

Backups locaux PS5:

```text
/data/PS5CustomToolManager/backups
/data/PS5CustomToolManager/backups/db
/data/PS5CustomToolManager/font_backups
```

Miroir USB si une cle est branchee:

```text
PS5CustomToolManager/backups
PS5CustomToolManager/backups/db
PS5CustomToolManager/font_backups
```

Le tool garde jusqu'a 5 backups par famille de fichier cible.

## Boutons importants

| Bouton | Fonction |
| --- | --- |
| `Jeux` | Scanne les jeux et apps utilisateur. |
| `Systeme` | Scanne les chemins systeme selectionnes. |
| `Fonts` | Ouvre le module fonts. |
| `Status` | Verifie le serveur payload. |
| `Retirer tuile` | Retire la tuile XMB du tool. |
| `OFF` | Coupe le serveur payload. |
| `USB` | Choisit une image depuis la cle USB. |
| `PC/Tel` | Choisit une image depuis PC/tel. |
| `Force DB` | Force un chemin image dans `app.db`. |
| `Renommer` | Renomme l'entree selectionnee. |
| `Masquer` / `Afficher` | Change la visibilite si supporte. |
| `Backups` | Affiche/restaure les backups image. |
| `Backup fonts` | Sauvegarde les fonts systeme originales. |
| `Importer TTF/OTF` | Importe fonts USB sur PS5 ou fichier local sur PC/tel. |
| `Restaurer Original SST` | Restaure les fonts SST originales sauvegardees. |

## Precautions

- Utiliser uniquement sur sa propre console.
- Garder des backups.
- Ne pas couper la console pendant une modification DB, image ou font.
- Le changement de font systeme est plus risque que le changement d'image.
- Faire `Backup fonts` avant d'appliquer une font custom pour garder l original 
- Le cache XMB peut garder certaines anciennes images jusqu'au redemarrage.


## Credits
   
Voir `CREDITS.txt`.

Ce projet n'est pas affilie a Sony Interactive Entertainment et n'est pas approuve par Sony Interactive Entertainment.
Projet a titre educatif et d'apprentissage 
