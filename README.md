# Intro
This repo was created for an assignment that I took way too seriously

It goes like this:
let fn(a\_1, a\_2) = 108 - (815 - 1500 / a\_2) / a\_1
a\_1 = 4
a\_2 = 4.25
a\_i = fn(a\_(i-1), a\_(i-2))

Check whether the series converges algebraically and computationally.

This assignment was probably made to show that IEEE754 is a terrible format that is only good for 3D graphics.

**I used dec64 to check whether it has to do with the mantissa adding bullshit of IEEE754, it turned ot that precision was the problem**


**I used Haskell's Rational number type to erase the precision problem entirely, as rationals are nice. The solution fits into five lines of code:
```haskell
module Main where

fnSeq :: [(Rational, Rational)]
fnSeq = iterate fn (4.25::Rational, 4::Rational)
    where
        fn (a1, a2) = (108 - (815 - (1500 / a2)) / a1, a1)

main :: IO ()
main = print $ map (\(x, y) -> (fromRational x, fromRational y)) $ take 100 fnSeq
```
**


**Finally, I used trhe astro_float library to get the proper result, which is 5 instead of 100**

*Should you want to find the algebraic solution, fucking do it yourself*

# Running the programs
## C
If you have gcc and make installed, you're good
Just do
```bash
cd c
make
./main
```

## Haskell
Just install ghc and cabal, and then
```bash
cd haskell
cabal run
```

## Rust
Samekas with haskell, install rust and cargo, and then
```bash
cd rust
cargo run
```
