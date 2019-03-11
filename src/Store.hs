module Store () where

import Data.Map (Map, (!))
import qualified Data.Map as Map
import Models

type Store = Map TodoID Todo

isPending :: Todo -> Bool
isPending (Pending a b c) = True -- don't need a b c. How to just check which kind in ADT?
isPending x = False

init :: Store
init = Map.empty

listPending :: Store -> [Todo]
listPending store = pendings where
  pendings = Map.elems $ filter isPending store -- this is yelling at me
