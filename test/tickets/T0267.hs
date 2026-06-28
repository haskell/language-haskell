-- SYNTAX TEST "source.haskell" "type followed by parenthesis in export list"

{-# LANGUAGE ExplicitNamespaces #-}
{-# LANGUAGE TypeData #-}
module Test (
    type Test(MkTest)
--  ^^^^ keyword.other.type.haskell
--       ^^^^ ^^^^ storage.type.haskell
  , x
--  ^ entity.name.function.haskell
--  ^ - invalid
) where

    data Test = MkTest
--  ^^^^^^^^^^^^^^^^^^ meta.declaration.data.algebraic.haskell
    x = 3
