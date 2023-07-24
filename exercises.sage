#x = var('x')
#print(solve(x^2 + 3*x + 2, x))

# 5:
#print(ZZ(27).quo_rem(ZZ(5)))
#print(ZZ(27).quo_rem(ZZ(-5)))
##print(ZZ(127).quo_rem(ZZ(0)))
#print(ZZ(-1687).quo_rem(ZZ(11)))
#print(ZZ(0).quo_rem(ZZ(7)))

# 8:
# print(ZZ(45).xgcd(ZZ(10))) # 5 = 1 * 45 + -4 * 10
# print(ZZ(13).xgcd(ZZ(11))) # 1 = -5 * 13 + 6 * 11
# print(ZZ(13).xgcd(ZZ(12))) # 1 = 1 * 13 + -1 * 12

# 16:
# 5x + 4 ≡ 28 + 2x ( mod 13 ) => 5x - 2x = 28 - 54 (mod 13) => 3x = 24 (mod 13)
# check coprime 13 & 3. gcd(13,3) = 1 => can divide by 3.
# x = 8 (mod 13)

# 17:
# 69x ≡ 5 ( mod 23 )
# (3*23)x ≡ 5 ( mod 23 )
# (3*0) = 5 mod 23
# 0 = 5. No solutions

# 18: 
# 69x ≡ 46 ( mod 23 )
# (3*23)x ≡ (2*23) ( mod 23 )
# 0 = 0 (mod 23)

# 20.5:
# Solve x with Chinese remainder theory (https://www.youtube.com/watch?v=ru7mWZJlRQg) the following:
# x = 1 mod 3
# x = 2 mod 11
# x = 2 mod 7171

# Check gcd: gcd(3,11) = 1, gcd(3,7171) = 1, gcd(11,7171) = 1
# x = ( 11 * 7171 * a) + (3 * 7171 * b) + (3 * 11 * c)
# a: x = 11*7171 = 78881 (mod 3) => x = 2 mod 3 => 2 * 2 mod 3 = 1 => a = 2
# b: x = 3 * 7171 = 21513 (mod 11) => x = 8 mod 11 => 8 * 3 mod 11 = 2 mod 11 => b = 3
# c: x = 3 * 11 = 33 (mod 7171) => 33 * 2825 (mod 7171) = 2 (mod 7171) => c = 2825
# x = ( 11 * 7171 * 2) + (3 * 7171 * 3) + (3 * 11 * 2825) = (157762) + (64539) + (93225) = 315526
# common modulo: 3 * 11 * 7171 = 236643.
# solution: x = 315526 mod 236643 => x = 78883 mod 236643.
print(CRT_list([1, 2, 2], [3, 11, 7171])) # 78883

