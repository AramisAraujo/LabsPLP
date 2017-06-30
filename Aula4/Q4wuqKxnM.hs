import Data.List
import System.IO

getLastVowelWords :: String -> Char
getLastVowelWords "" = putStr 'a'
getLastVowelWords str = getLastIfVowel str

getLastIfVowel :: String -> Char
getLastIfVowel str = if ((last str) `elem` "aeiou") == True then last str 
					else 'a'

main = do
	a <- getLine
	b <- getLine
	c <- getLine
	d <- getLine
	e <- getLine

	let stuff = (getLastVowelWords a) ++ (getLastVowelWords b) ++ (getLastVowelWords c) ++ (getLastVowelWords d) ++
	(getLastVowelWords e)

	putStrLn stuff