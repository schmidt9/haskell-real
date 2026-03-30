module Lists where

import DataTypes

-- get first
getHead :: String
getHead = head ["Vim", "Emacs", "Atom"]

-- get all but first
getTail :: [String]
getTail = tail ["Vim", "Emacs", "Atom"]

-- prepend to list
prependTo :: String -> [String] -> [String]
prependTo item list = item : list

-- prepend to list using prependTo as operator
prependItemToList :: String -> [String] -> [String]
prependItemToList item list = item `prependTo` list

prependHeadToTail :: [String]
prependHeadToTail = getHead `prependTo` getTail

-- search in list

-- find one item

findPatientByName :: String -> [Patient] -> Patient
findPatientByName _ [] = PatientUnknown -- if nothing found
findPatientByName name (patient : others)
  | name == firstName patient || name == lastName patient = patient
  | otherwise = findPatientByName name others

findPatientByNameExample :: IO ()
findPatientByNameExample =
  print
    ( findPatientByName
        "Kor"
        [ Patient {firstName = "Alex", lastName = "Kar", email = ""},
          Patient {firstName = "Bob", lastName = "Stop", email = ""},
          Patient {firstName = "Alex", lastName = "Kor", email = ""}
        ]
    )

-- find multiple items

findPatientsByName :: String -> [Patient] -> [Patient]
findPatientsByName _ [] = []
findPatientsByName name (patient : others)
  | name == firstName patient || name == lastName patient =
      patient : findPatientsByName name others
  | otherwise = findPatientsByName name others

findPatientsByNameExample :: IO ()
findPatientsByNameExample =
  print
    ( findPatientsByName
        "Alex"
        [ Patient {firstName = "Alex", lastName = "Kar", email = ""},
          Patient {firstName = "Bob", lastName = "Stop", email = ""},
          Patient {firstName = "Alex", lastName = "Kor", email = ""}
        ]
    )

-- find mutiple items using filter

findPatientsByNameUsingFilter :: String -> [Patient] -> [Patient]
findPatientsByNameUsingFilter name =
  filter
    ( \patient -> name == firstName patient || name == lastName patient
    )
