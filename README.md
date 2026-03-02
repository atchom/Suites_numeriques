# Suites_numeriques
### Voici un script Python complet, clair et prêt à exécuter, qui :

- calcule la suite

 $$
U_{n+1} = \frac{1}{3} U_n + 2
$$

## Graphe des ventes


- affiche les valeurs,

- trace la courbe de convergence vers la limite 3,

- montre visuellement la stabilisation du système.

<img width="2100" height="1000" alt="image" src="https://github.com/atchom/Suites_numeriques/blob/1a3b778b756d5b8982aeb6127c3ec7d2a4600173/images/suite_exple01.png" />

- voir code python (suite-exple01.py)
## 🧠 Ce que montre ce graphique

- La suite monte progressivement vers la valeur limite 3.

- Le terme $\frac{1}{3} U_n$ agit comme un amortissement.

- Le terme constant +2 pousse la suite vers son point d’équilibre.

- Le système se stabilise rapidement : après 6–7 itérations, on est déjà très proche de 3.

C’est exactement le comportement d’un filtre numérique, d’un algorithme de consensus, ou d’un processus d’apprentissage amorti.

# lissage exponentiel
formule mathematique
 $$
 S_{n}=αS_{n-1}+(1−α)X_{n}
$$

## Cas pratique 2: Suivi des ventes d'un nouveau produit lancé en boutique
### 🏪 Contexte

Vous êtes responsable d'une boutique de vêtements (ou d'un magasin de sport) et vous venez de lancer un nouveau produit : un sac à dos tendance ou une nouvelle collection de baskets.

Le produit est en test pendant 14 jours dans votre magasin pour évaluer sa performance avant de décider si vous le commandez en plus grande quantité.

### 📈 Les données

| Jours  |   1 |   2 |  3 |   4 |   5 |   6 |   7 |   8 |   9 |  10 |  11 |  12 |  13 |  14 |
|--------|-----|-----|----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| Ventes | 120 | 135 | 90 | 150 | 160 | 200 | 180 | 220 | 210 | 260 | 240 | 300 | 280 | 310 |

Les ventes journalières observées sont celles observées sur le tableau

### 🎯 Problème métier
Les ventes sont très variables :

- Jour 3 : seulement 90 ventes (peut-être un jour de semaine calme)

- Jour 12 : 300 ventes (peut-être un samedi ou jour de promotion)

### 👉 Si vous commandez en fonction du dernier jour seulement, vous risquez de :

- Sur-stocker si vous commandez 300 après le jour 12 alors que le jour 13 retombe à 280

- Sous-stocker si vous commandez 90 après le jour 3 alors que la tendance est à la hausse

### 🧠 Solution appliquée : lissage exponentiel
Vous utilisez la formule :

 $$
 S_{n}=αS_{n-1}+(1−α)X_{n}
$$
### Graphe 

<img width="3168" height="2016" alt="image" src="https://github.com/atchom/Suites_numeriques/blob/11c5e7bf0ffc1fd114c3a11073d2fa967b47b4fa/images/lissage-Exponentiel_exple02.png" />
### Le code source python en annexe

### Tableau des ventes apres lissage
| Jours  |   1 |    2 |    3 |     4 |      5 |       6 |       7 |        8 |        9 |       10 |       11 |        12 |        13 |        14 |
|--------|-----|------|------|-------|--------|---------|---------|----------|----------|----------|----------|-----------|-----------|-----------|
| Ventes | 120 |  135 |   90 |   150 |    160 |     200 |     180 |      220 |      210 |      260 |      240 |       300 |       280 |       310 |
| Lissage| 120 |124.5 |114.15|124.905|135.4335|154.80345|162.36241|179.65369 |188.75758 |210.13030 |219.09121 |243.36385  |254.35469  |271.04828  |

## 💼 Décision

Grâce à cette analyse :

- La tendance réelle (Sₙ) passe de 120 à 271 sur 14 jours → croissance de +126%

- Malgré les fluctuations, la demande augmente structurellement

- Vous décidez de commander plus pour la semaine suivante en utilisant S₁₄ = 271 comme prévision
### 📝 Rapport au chef de rayon

```
"Monsieur le chef de rayon,

J'ai analysé les ventes de notre nouveau sac à dos sur les 14 premiers jours.
Malgré des variations journalières (90 un jour, 300 le lendemain), la tendance de fond est très positive.

En appliquant un lissage exponentiel (α=0,7), j'estime la demande réelle à 271 unités par jour en fin de période.

Je recommande de commander 300 unités par jour pour la semaine prochaine, soit une augmentation de 50% par rapport à notre stock initial.

Le produit est clairement un succès !"
```

## 📦 Cas pratique3 : prévision de la demande d’un produit (dataset réel simplifié)
### Contexte professionnel

Une entreprise e‑commerce vend un produit saisonnier. Les ventes quotidiennes sont très irrégulières à cause de promotions, météo, trafic web, etc.
Le data scientist doit produire une estimation lissée de la demande pour :

   - ajuster les stocks,
   - planifier les réapprovisionnements,
   - éviter les ruptures,
   - alimenter un modèle de prévision plus avancé.
Le lissage exponentiel simple est utilisé comme première étape.
