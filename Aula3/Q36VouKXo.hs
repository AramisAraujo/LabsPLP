evalStability :: Int -> Int -> Int
evalStability altura medicaoIdeal = 

	diff = abs(medicaoIdeal - altura)
	if diff == 0 = --print okay
	else if diff >= 500 = -- print perigo & read new height, then do it again
	else --print adequado & read new height, then do it again

	if medicaoIdeal == altura then putStrLn "OK"
	else if abs(medicaoIdeal - altura) >= 500 then 
		novaAltura' <- getLine
		novaAltura = novaAltura :: Int
		putStrLn "PERIGO"
		evalStability


--recStep :: String -> Int
--recStep message prevHeight =
-- newHeight' <- getLine
-- let newHeight = read :: Int
-- putStrLn message
-- return evalStability (stuff)


abs :: Int -> Int
abs x | (x >= 0) = x
	|otherwise (-x)

main = do
	alturaIdeal' <- getLine

	let alturaIdeal = read alturaIdeal' :: Int
	let primeiraMedicao = alturaIdeal

	putStrLn "ADEQUADO"

	evalStability alturaIdeal primeiraMedicao