module DataTypes where

-- nullary (aka enum)

data Transport = UDP | TCP

checkProtocol :: Transport -> String
checkProtocol transport = case transport of
  UDP -> "UDP"
  TCP -> "TCP"

-- algebraic (composed from multiple types)

-- hint: Use newtype instead of data
-- newtype must have exactly one constructor with exactly one field (or argument)
data IPAddressSimple = IPAddressSimple String

data IPAddrress
  = IPv4 String
  | IPv4Localhost
  | IPv6 String
  | IPv6Localhost

checkIp :: IPAddrress -> String
checkIp addr = case addr of
  IPv4 address -> "IPv4 is " ++ address
  IPv4Localhost -> "IPv4 localhost"
  IPv6 address -> "IPv6 is " ++ address
  IPv6Localhost -> "IPv6 localhost"

-- or newtype Port = Port Int
type Port = Int

data EndPoint = EndPoint IPAddrress Port

-- using pattern matching

getHost :: String
getHost = "Host is " ++ host
  where
    EndPoint (IPv4 host) _ = EndPoint (IPv4 "192.168.1.1") 80

-- labeled params

data Patient = Patient
  { firstName,
    lastName,
    email ::
      String
  }

-- get email by label
getPatientEmail :: Patient -> String
getPatientEmail = email

-- "change" email
setPatientEmail :: Patient -> String -> Patient
setPatientEmail patient email =
  patient
    { email = email
    }