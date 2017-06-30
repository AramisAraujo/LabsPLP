import Data.List
import System.IO

printDiffs :: [Int] -> [Int] -> IO()
printDiffs [] [] = do putStrLn ""

printDiffs (x:xs) (y:ys) = do 
	print (x - y)
	printDiffs xs ys


main = do
	firstRow <- getLine
	secondRow <- getLine

	let firstRow' = (map read $ words firstRow :: [Int])
	let secondRow' = (map read $ words secondRow :: [Int])

	printDiffs firstRow' secondRow'
