module Ch4 where

import GHC.Int

-- When talking about Haskell "datatype" == "type" ?

-- TYPECLASSES
-- Provide common functionaity to multiple data declarations
-- A data declaration can have multiple typeclasses (EX: "Int" implements "Bounded" and "Num")

-- DATA DECLARATIONS (type definitions)
-- Syntax: data {SomeTypeConstructor} = {someDataConstructor} {conjunction/disjunction} {someDataConstructor}

-- FUNCTION TYPE SIGNATURES
-- Uses the type constructors of data declarations
-- Syntax: {someFunction} :: [{? type arguments ?} => ] {SomeTypeConstructor of a param} -> {SomeTypeConstructor of the return value}

-- FUNCTION DECLARATIONS
-- Uses the data constructors of data declarations
-- Syntax: {someFunction} {some param variable} = {someExpression that uses the param variables to reduce to someDataConstructor of SomeTypeConstructor of the return value}


-- ----------------------------------------------------------------------------------------------
-- Built-in / imported modules already have data declarations, type signatures, and function declarations defined
-- ----------------------------------------------------------------------------------------------

-- FUNCTION APPLICATION
-- Use functions
-- Syntax: {someFunction} {someDataConstructor of SomeTypeConstructor of the param}

-- Function "precedence" is a 9, unless precendence in the expression is specified
-- EX: not True && False //-> False, not (True && False) //-> True

-- You can compare strings and chars with Boolean operators, because they implement the typeclass of Ord
-- EX: 'H' > 'h' //-> False

-- "show {someValue}" shows string representation of "someValue" if "someValue" implements the "Show" typeclass

-- TUPLES
-- fst selects first element, snd selects second element

-- Use "div" for ints, "/" for franctional numbers

-- Specify type of a typeclass value with ":: {SomeType}"
-- EX: 6 / 3 results to "2.0" because :t 6 is "Num", but (6 :: Int) / 3 will error

-- FOLDABLE
-- something that you can "reduce" over 

-- EXERCISES

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
-- PATTERM MATCHING
-- Allows you to have multiple data constructor situations
-- "_" means "default"
changeMood Woot = Blah
changeMood _ = Woot


-- Kind of like "desctructuring"
twoOfThree (_, x, _) = x


awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]


-- ------------------------------------------------------------------------------------
-- 4.7
-- ------------------------------------------------------------------------------------

-- 1
-- Given the definition of length above, what would the type signature be? 
-- length' :: [a] -> Int
-- How many arguments, of what type does it take?
-- 1 argument of type 'List'
-- What is the type of the result it evaluates to?
-- Int

-- 2
-- a) 5
-- b) 3
-- c) 2
-- d) 5

-- 3
-- 6 / length [1, 2, 3] doesn't work because length outputs a string and the (/) operator expects fractional types

-- 4
-- Use 'div'

-- 5
-- What is the type of the expression 2 + 3 == 5? What would we expect as a result?
-- Bool, True

-- 6
-- Bool, False

-- 7
-- "length allAwesome == 2" should result to a Bool of True
-- "length [1, 'a', 3, 'b']" should result in an error since a list have to have elements of the same type
-- "length allAwesome + length awesome" should result in an Int of 5
-- "(8 == 8) && ('b' < 'a')" should result in a Bool of False
-- "(8 == 8) && 9" should result in an error because 9 doesn't evaluate to a Bool, which the '&&' operator requires by its type signature

-- 8
isPalendrome :: (Eq a) => [a] -> Bool
isPalendrome word = word == (reverse word)

-- 9
absoluteNumber :: Integer -> Integer
absoluteNumber number =
  if (number < 0)
     then number * (-1)
     else number

-- 10
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f fstTuple sndTuple = ((snd fstTuple, snd sndTuple), (fst fstTuple, fst sndTuple))

-- 1
-- c

-- 2
-- b

-- 3
-- a

-- 4
-- d

main :: IO ()
main = do
  putStrLn $ show $ length [1, 2, 3, 4, 5]
  putStrLn $ show $ length [(1, 2), (2, 3), (3, 4)]
  putStrLn $ show $ length allAwesome
  putStrLn $ show $ length (concat allAwesome)
  putStrLn $ show $ div 6 (length [1, 2, 3])
  putStrLn $ show $ 2 + 3 == 5
  putStrLn $ show $ let x = 5 in x + 3 == 5
  putStrLn $ show $ length allAwesome == 2
  putStrLn $ show $ length allAwesome + length awesome
  putStrLn $ show $ (8 == 8) && ('b' < 'a')
  putStrLn $ show $ isPalendrome "Trevor"
  putStrLn $ show $ isPalendrome "abcba"
  putStrLn $ show $ absoluteNumber 42
  putStrLn $ show $ absoluteNumber (-42)
  putStrLn $ show $ f ('c', 'a') ('d', 'b')
  putStrLn $ show $ (\x -> x) 5
