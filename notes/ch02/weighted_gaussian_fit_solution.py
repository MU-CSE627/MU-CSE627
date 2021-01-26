def weighted_gaussian_fit(x, w):
    n = len(x)
    assert len(w) == n

    W = sum(w)
    mu = sum(w*x)/W
    var = sum(w*x**2)/W - mu**2
    
    return (mu, var)