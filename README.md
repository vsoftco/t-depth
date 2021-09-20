# t-depth
Numerical results for [**arXiv:2101.03142 [quant-ph]**, "**A quasi-polynomial time heuristic algorithm for synthesizing T-depth optimal circuits**"](https://arxiv.org/abs/2101.03142), by *Vlad Gheorghiu, Michele Mosca, and Priyanka Mukhopadhyay*

---

To produce the results of Table 3 (Performance of MIN-T-DEPTH on random circuits) for a specific `n` (number of qubits) and `d` (T-depth target), run from a Linux/UNIX bash shell 

```bash
bash ./scripts/algo2_stats.sh <n> <d>
```

Make sure you omit the angle brackets, i.e., for `n=2` and `d=5` run

```bash
bash ./scripts/algo2_stats.sh 2 5
```

The output will be similar to

```
n=2, d=5
Time
Samples: 10
Average: 492.40
Standard deviation: 617.01
Space
Samples: 10
Average: 56.50
Standard deviation: 71.69
```
