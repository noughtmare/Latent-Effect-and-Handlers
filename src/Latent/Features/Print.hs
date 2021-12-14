{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleContexts #-}

module Latent.Features.Print where

import Latent.Effects
import Latent.Effects.Print

import Prelude hiding (print)

data PrintExpr e = Pr String

printAlg :: (Printing v :<<: σ) => PrintExpr v -> Tree σ Id v
printAlg (Pr s) = print s
