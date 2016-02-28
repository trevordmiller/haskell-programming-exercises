module Ch2 where


-- ===========================
-- FUNCTIONS
-- ===========================

-- 1
half x = x / 2
square x = x * x
-- In REPL, "let" is required to declare function for reuse
-- EX: "let half x = x / 2"

-- 2
circleArea radius = 3.14 * radius ^ 2


-- ===========================
-- INFIX OPERATORS
-- ===========================

-- 1
-- yes, because b forces addition before multiplication of 7 * 9

-- 2
-- no, because the multiplication would happend first by default

-- 3
-- yes, because b foces addition before division of x / 2


-- ===========================
-- DECLARING VALUES
-- ===========================

-- 1
area x = 3.14 * (x * x)

-- 2
double x = x * 2

-- 3
x = 7
y = 10
f = x + y


-- ===========================
-- LET AND WHERE
-- ===========================
