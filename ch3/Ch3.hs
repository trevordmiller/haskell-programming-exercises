module Ch3 where

removeFirstLetter :: String -> String
removeFirstLetter = drop 1

removeFirstLetter' :: String -> String
removeFirstLetter' = tail

addExclamation :: String -> String
addExclamation word = (++) word "!"

addExclamation' :: String -> String
addExclamation' = flip (++) "!"

getFourthLetter :: String -> Char
getFourthLetter word = word !! 4 

main :: IO ()
main = do
  putStrLn $ removeFirstLetter "Jason"
  putStrLn $ removeFirstLetter' "Jason"
  putStrLn $ addExclamation "Hello world"
  putStrLn $ addExclamation' "Hello world"
  putStrLn $ getFourthLetter "Curry is awesome"
  
