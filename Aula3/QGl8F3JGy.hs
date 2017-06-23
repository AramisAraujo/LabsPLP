import Text.Printf

evaluateCombust :: Double -> Double -> Double -> Double
evaluateCombust qtdLitros gasolina alcool = if evaluatePercentage alcool gasolina >= 70.0 then gasolina * qtdLitros
else alcool * qtdLitros

evaluatePercentage :: Double -> Double -> Double
evaluatePercentage x y = (x/y) * 100.0

main = do
	precoAlcool' <- getLine
	precoGasolina' <- getLine
	qtdLitros' <- getLine

	let precoAlcool = read precoAlcool' :: Double
	let precoGasolina = read precoGasolina' :: Double
	let qtdLitros = read qtdLitros' :: Double

	printf "%.1f" (evaluateCombust qtdLitros precoGasolina precoAlcool)