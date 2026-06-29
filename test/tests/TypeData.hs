-- SYNTAX TEST "source.haskell" "Type data declarations"

{-# LANGUAGE TypeData #-}

   type data D1 = MkD1
-- ^^^^ keyword.other.type.haskell
-- ^^^^^^^^^^^^^^^^^^^ meta.declaration.data.algebraic.haskell
--      ^^^^ keyword.other.data.haskell

   type data D2 = MkD2_A | MkD2_B
-- ^^^^ keyword.other.type.haskell
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.algebraic.haskell
--      ^^^^ keyword.other.data.haskell

   type data D3 where { {- hiho -} MkD3 :: D3 }
-- ^^^^ keyword.other.type.haskell
--      ^^^^ keyword.other.data.haskell
--              ^^^^^ keyword.other.where.haskell
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.generalized.haskell

-- When type/data is split over multiple lines, we can't highlight the whole
-- thing as a type data declaration (due to TextMate limitations).
-- The following test ensures we at least highlight it reasonably.
   type
-- ^^^^ keyword.other.type.haskell
     data D4 = MkD4
--   ^^^^^^^^^^^^^^ meta.declaration.data.algebraic.haskell
--   ^^^^ keyword.other.data.haskell
--   ^^^^ - variable.other.generic-type.haskell

   type
-- ^^^^ keyword.other.type.haskell
                 data
--               ^^^^ keyword.other.data.haskell
             D5
--           ^^ storage.type.haskell
      where
--    ^^^^^ keyword.other.where.haskell
         MkD5 :: D5
--       ^^^^ constant.other.haskell
--               ^^ storage.type.haskell

   type
-- ^^^^ keyword.other.type.haskell
                 data
--               ^^^^ keyword.other.data.haskell
             D6
--           ^^ storage.type.haskell
      where {
--    ^^^^^ keyword.other.where.haskell
    MkD6 :: D6
--  ^^^^ constant.other.haskell
--          ^^ storage.type.haskell
      }
