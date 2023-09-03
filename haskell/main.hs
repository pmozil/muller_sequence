module Main where

mullerSequence :: [Float]
mullerSequence = 
    map (fromRational . fst) $
    iterate fn (4.25::Rational, 4::Rational)
        where
            fn (a1, a2) = (108 - (815 - (1500 / a2)) / a1, a1)

main :: IO ()
main = putStrLn $
    unlines $
    map show $
    take 100 mullerSequence
