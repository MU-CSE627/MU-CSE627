def my_kmeans(K, X, tolerance=0.001, mu_init=None, maxit=50):
    if mu_init is None:
        mu = X[random.choice(len(X), K)]
    else:
        mu = mu_init
        
    d = np.zeros((len(X), K))
    c = np.zeros(len(X), dtype=int)
    old_mu = np.copy(mu)
    for i in range(maxit):
        for n in range(len(X)):
            for j in range(K):
                d[n,j] = sum((X[n] - mu[j])**2)
        counts = np.zeros(K)
        for n in range(len(X)):
            c[n] = d[n].argmin()
            mu[c[n]] += X[n]
            counts[c[n]] += 1
        
        for j in range(K):
            mu[j] /= counts[j]
        
        # check convergence
        if sum( (mu-old_mu)**2 ) < K*tolerance:
            break

    return mu, c
        