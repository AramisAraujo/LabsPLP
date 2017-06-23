calcParking :: String -> String
calcParking vehicle =
 if vehicle == "moto" then "5"
 else if vehicle == "carro" then "10"
 else "30"

main = do
 vehicle <- getLine
 putStrLn (calcParking vehicle)
