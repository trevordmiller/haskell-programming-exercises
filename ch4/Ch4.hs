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

-- ----------------------------------------------------------------------------------------------
-- Built-in / imported modules already have data declarations and type signatures defined
-- ----------------------------------------------------------------------------------------------

-- FUNCTION APPLICATION
-- Uses the data constructors of data declarations
-- Syntax: {someFunction} {someDataConstructor of SomeTypeConstructor of the param} = {someExpression that reduces to someDataConstructor of SomeTypeConstructor of the return value}



-- NOTES TO CLEAN UP
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

-- length' :: [a] -> Int

main :: IO ()
main = do
  putStrLn $ show $ twoOfThree (1, 2, 3)
