module Main where

fnSeq :: [(Rational, Rational)]
fnSeq = iterate fn (4.25::Rational, 4::Rational)
    where
        fn (a1, a2) = (108 - (815 - (1500 / a2)) / a1, a1)

main :: IO ()
main = print $ map (\(x, y) -> (fromRational x, fromRational y)) $ take 100 fnSeq
