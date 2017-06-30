import Data.List
import System.IO

printMix :: [String] -> [String] -> IO ()
printMix [] [] = do putStrLn ""

printMix (x:xs) (y:ys) = do 
	putStrLn (x ++ " " ++ y)
	printMix xs ys


main = do
	firstLine <- getLine
	let first = (words firstLine)
	secondLine <- getLine
	let second = (words secondLine)
	printMix first second
