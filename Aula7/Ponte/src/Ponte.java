import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public class Ponte {
	
	private SentidoCarro  sentidoAtual;

	private final Semaphore sem;
	
	private final int crossingTimeSeconds;
	
	public Ponte(){
		this.sem = new Semaphore(1);
		this.crossingTimeSeconds = 2;
		
	}
		
	public synchronized void  cross(Car car) throws InterruptedException{
		
		System.out.println("Atravessando a ponte: " + car.toString());
		TimeUnit.SECONDS.sleep(this.crossingTimeSeconds);
		sem.release();
		System.out.println(car.toString() + " Atravessou a ponte.");
		notifyAll();
		
	}
	
	public synchronized void  enter(Car car){
		
		while(!(this.sentidoAtual == null)  &&  !(this.sentidoAtual == car.getSentido())){
			try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
		try {
			this.sentidoAtual = car.getSentido();
			sem.acquire();
			this.cross(car);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	public void realocateBridge() {
		this.sentidoAtual = null;
		
	}
	
	
}
