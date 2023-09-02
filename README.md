# Intro
This repo was created for an assignment that I took way too seriously

It goes like this:
let fn(a\_1, a\_2) = 108 - (815 - 1500 / a\_2) / a\_1
a\_1 = 4
a\_2 = 4.25
a\_i = fn(a\_(i-1), a\_(i-2))

Check whether the series converges algebraically and computationally.

This assignment was probably made to show that IEEE754 is a terrible format that is only good for 3D graphics.

**I used dec64 to check whether it has to do with precision of IEEE754, it turned ot that precision was the problem**
**I used Haskell's BigFloat library to check whether 50 decimal points of precision was enough, it wasn't**
**Finally, I used trhe astro_float library to get the proper result, which is 5 instead of 100**

*Should you want to find the algebraic solutino, fucking do it yourself**

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