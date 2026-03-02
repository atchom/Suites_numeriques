import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

# Données
X = np.array([120,135,90,150,160,200,180,220,210,260,240,300,280,310])
alpha = 0.7

# Initialisation
S = np.zeros_like(X, dtype=float)
S[0] = X[0]

# Lissage exponentiel
for n in range(1, len(X)):
    S[n] = alpha * S[n-1] + (1 - alpha) * X[n]

# Tableau final
df = pd.DataFrame({"Jour": np.arange(1,15), "Ventes": X, "Lissage": S})
# --- TABLEAU APRES LE GRAPHE ---
print("\nTableau des ventes et du lissage :\n")
print(df.to_string(index=False))

# --- GRAPHE ---
plt.figure(figsize=(14,7))

# Courbe des ventes
plt.plot(df["Jour"], df["Ventes"], marker='o', color='steelblue', label="Ventes observées")

# Courbe du lissage
plt.plot(df["Jour"], df["Lissage"], marker='o', color='darkorange', label="Lissage exponentiel (S_n)")

# --- ANNOTATIONS SUR LES POINTS ---
for i in range(len(df)):
    plt.text(df["Jour"][i], df["Ventes"][i] + 5, str(df["Ventes"][i]), color='steelblue', fontsize=9)
    plt.text(df["Jour"][i], df["Lissage"][i] - 10, f"{df['Lissage'][i]:.1f}", color='darkorange', fontsize=9)

plt.title("Ventes quotidiennes vs Lissage exponentiel simple (avec valeurs)")
plt.xlabel("Jour")
plt.ylabel("Nombre de ventes")
plt.grid(True, alpha=0.3)
plt.legend()
plt.tight_layout()
plt.show()
