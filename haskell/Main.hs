{-# LANGUAGE DataKinds #-}
module Main where
import Data.Number.BigFloat

type MyFloat = BigFloat Prec50

fnSeq :: [(MyFloat, MyFloat)]
fnSeq = iterate fn (4.25::MyFloat, 4::MyFloat)
    where
        fn (a1, a2) = (108 - (815 - (1500 / a2)) / a1, a1)

main :: IO ()
main = print $ take 100 fnSeq
