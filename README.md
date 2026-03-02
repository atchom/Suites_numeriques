# Suites_numeriques
### Voici un script Python complet, clair et prêt à exécuter, qui :

- calcule la suite

 $$
U_{n+1} = \frac{1}{3} U_n + 2
$$

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

## 📦 Cas pratique : prévision de la demande d’un produit (dataset réel simplifié)
### Contexte professionnel

Une entreprise e‑commerce vend un produit saisonnier. Les ventes quotidiennes sont très irrégulières à cause de promotions, météo, trafic web, etc.
Le data scientist doit produire une estimation lissée de la demande pour :

   - ajuster les stocks,
   - planifier les réapprovisionnements,
   - éviter les ruptures,
   - alimenter un modèle de prévision plus avancé.
Le lissage exponentiel simple est utilisé comme première étape.
