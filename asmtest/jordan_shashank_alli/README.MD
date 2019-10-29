# Greatest Common Denominator in Assembly

This test calculates the greatest common divisor of the two values stored at `$a0` and `a1` and stores it in `$v0`.

A definition of greatest common divisor [from Wikipedia](https://en.wikipedia.org/wiki/Greatest_common_divisor):
> In mathematics, the greatest common divisor (gcd) of two or more integers, which are not all zero, is the largest positive integer that divides each of the integers.:  

Additionally, **`$a0`and $a1 should be any integer**.

## Example Expected Results:
| `$a0` | `$a1` | `$v0` |
|-------|-------|-------|
| `d20` | `d34` | `d2`  |
| `d10` | `d12` | `d2`  |
| `d20` | `d15` | `d5`  |
| `d24` | `d16` | `d8`  |
| `d36` | `d12` | `d12` |
## Instructions Used
No additional instructions beyond the lab requirements need to be implemented. Specifically, the following instructions are used by this test case:

- `sub`
- `add`
- `addi`
- `j``
- `beq`
- `blt`
