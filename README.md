# Calculating Pi

I recently watched this [video](https://www.youtube.com/watch?v=pvimAM_SLic) explaining how to calculate Pi with only a random number generator. It was a clever implementation. I'm not sure I would have been able to solve it on the spot but it did leave me wondering. Why do you need the random number generator at all. Surely you could generate points on a grid evenly spaced and apply the same method and get a similar result.

So I put together some code quickly to test it out. There's no appreciable difference from what I can see. Perhaps the random number generator is just a red-herring?

```
➜  pi_calc git:(master) ruby pi_rand.rb
Evenly divisible grid
0 - Count: 3 of 4 or 0.75
        3.0 vs 3.141592653589793 - 0.14159265358979312 difference
1 - Count: 13 of 16 or 0.8125
        3.25 vs 3.141592653589793 - 0.10840734641020688 difference
2 - Count: 90 of 121 or 0.743801652892562
        2.975206611570248 vs 3.141592653589793 - 0.16638604201954532 difference
3 - Count: 819 of 1024 or 0.7998046875
        3.19921875 vs 3.141592653589793 - 0.057626096410206884 difference
4 - Count: 7949 of 10000 or 0.7949
        3.1796 vs 3.141592653589793 - 0.03800734641020709 difference
5 - Count: 78860 of 100489 or 0.7847625113196469
        3.1390500452785877 vs 3.141592653589793 - 0.002542608311205452 difference
6 - Count: 786380 of 1000000 or 0.78638
        3.14552 vs 3.141592653589793 - 0.003927346410206756 difference
7 - Count: 7857169 of 10004569 or 0.7853580698978637
        3.141432279591455 vs 3.141592653589793 - 0.00016037399833823685 difference
8 - Count: 78549764 of 100020001 or 0.7853405640337876
        3.1413622561351504 vs 3.141592653589793 - 0.00023039745464270567 difference
Randomly generated points
0 - Count: 0 of 1 or 0.0
        0.0 vs 3.141592653589793 - 3.141592653589793 difference
1 - Count: 7 of 10 or 0.7
        2.8 vs 3.141592653589793 - 0.3415926535897933 difference
2 - Count: 71 of 100 or 0.71
        2.84 vs 3.141592653589793 - 0.30159265358979326 difference
3 - Count: 779 of 1000 or 0.779
        3.116 vs 3.141592653589793 - 0.025592653589793013 difference
4 - Count: 7849 of 10000 or 0.7849
        3.1396 vs 3.141592653589793 - 0.0019926535897929476 difference
5 - Count: 78642 of 100000 or 0.78642
        3.14568 vs 3.141592653589793 - 0.004087346410206916 difference
6 - Count: 785228 of 1000000 or 0.785228
        3.140912 vs 3.141592653589793 - 0.0006806535897929678 difference
7 - Count: 7855679 of 10000000 or 0.7855679
        3.1422716 vs 3.141592653589793 - 0.0006789464102068266 difference
8 - Count: 78539925 of 100000000 or 0.78539925
        3.141597 vs 3.141592653589793 - 4.346410206856888e-06 difference
```
