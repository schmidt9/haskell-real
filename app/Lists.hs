module Lists where

import Data.List

getHead :: String
getHead = head ["Vim", "Emacs", "Atom"]

getTail :: [String]
getTail = tail ["Vim", "Emacs", "Atom"]