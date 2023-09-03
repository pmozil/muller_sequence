# Intro
This repo was created for an assignment that I took way too seriously

It goes like this:
let fn(a\_1, a\_2) = 108 - (815 - 1500 / a\_2) / a\_1
a\_1 = 4
a\_2 = 4.25
a\_i = fn(a\_(i-1), a\_(i-2))

Check whether the series converges algebraically and computationally.

This assignment was probably made to show that IEEE754 is a terrible format that is only good for 3D graphics.

**First, I used dec64 to check whether it has to do with the mantissa adding bullshit of IEEE754, it turned ot that precision was the problem**

**Then I used trhe astro_float library to get the proper result, which is 5 instead of 100**

**Finally, I used Haskell's Rational number type to erase the precision problem entirely, as rationals are nice. The solution fits into five lines of code:
```haskell
module Main where

mullerSequence :: [(Rational, Rational)]
mullerSequence = iterate fn (4.25::Rational, 4::Rational)
    where
        fn (a1, a2) = (108 - (815 - (1500 / a2)) / a1, a1)

main :: IO ()
main = putStrLn $
    unlines $
    map show $
    map (\(x, _) -> fromRational x) $ 
    take 100 mullerSequence
```
**

# Running the programs
## C
If you have gcc and make installed, you're good
Just do
```bash
cd c
make
./main
```

## Rust
Samekas with haskell, install rust and cargo, and then
```bash
cd rust
cargo run
```

## Haskell
Just install ghc, and then
```bash
runghc ./haskell/main.hs
```
