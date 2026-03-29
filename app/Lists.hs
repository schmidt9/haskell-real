module Lists where

import Data.List

-- get first
getHead :: String
getHead = head ["Vim", "Emacs", "Atom"]

-- get all but first
getTail :: [String]
getTail = tail ["Vim", "Emacs", "Atom"]

-- add to list
prependTo :: String -> [String] -> [String]
prependTo item list = item : list

-- add to list using addTo as operator
addItemToList :: String -> [String] -> [String]
addItemToList item list = item `prependTo` list

addHeadToTail :: [String]
addHeadToTail = getHead `prependTo` getTail