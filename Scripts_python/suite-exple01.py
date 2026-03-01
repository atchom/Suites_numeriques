import matplotlib.pyplot as plt

# Définition de la suite
U0 = 1
N = 20  # nombre d'itérations
U = [U0]

for n in range(N):
    U_next = (1/3)*U[-1] + 2
    U.append(U_next)

# Affichage des valeurs
print("Valeurs de la suite :")
for i, val in enumerate(U):
    print(f"U_{i} = {val}")

# Tracé graphique
plt.figure(figsize=(8,5))
plt.plot(U, marker='o', color='blue', label="Suite U_n")
plt.axhline(3, color='red', linestyle='--', label="Limite = 3")
plt.title("Convergence de la suite U_{n+1} = 1/3 U_n + 2")
plt.xlabel("n (itérations)")
plt.ylabel("U_n")
plt.grid(True)
plt.legend()
plt.show()
