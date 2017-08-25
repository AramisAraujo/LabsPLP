
public class Main {
	
	public static void main(String[] args) {
		
		Ponte	ponte	=	new	Ponte();
		
		SentidoCarro tipoA = SentidoCarro.A;
		SentidoCarro tipoB = SentidoCarro.B;
		
		
		Car carroA1 = new Car(tipoA);
		Car carroA2 = new Car(tipoA);
		Car carroB1 = new Car(tipoB);
		
		Thread threadCarsAB = new Thread(
			new Runnable() {
				
				@Override
				public void run() {
					ponte.enter(carroA1);
					}
			}
		);
		
		Thread  threadCarAB1 = new Thread(
				new Runnable() {
					
					@Override
					public void run() {
						ponte.enter(carroA2);
						ponte.realocateBridge();
						
					}
				});
		
		Thread threadCarsBA = new Thread(
			new Runnable() {
				public void run() {
					
					ponte.enter(carroB1);
					ponte.realocateBridge();
					
				}
			}
		);
		
		threadCarsAB.start();
		threadCarsBA.start();
		threadCarAB1.start();
	}

}
