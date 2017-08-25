import java.util.LinkedList;
import java.util.List;

public class Buffer {
	
	
	private Produto internalBuffer;
	
	
	public synchronized void insert(Produto elem, String message) {
		while(this.internalBuffer != null) {
			try {
				System.out.println(message);
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
			this.internalBuffer = elem;
			notifyAll();		
	}
	
	public synchronized Produto consume(String message) {
		while(this.internalBuffer == null) {
		
			try {
				System.out.println(message);
				wait();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

			Produto product = this.internalBuffer;
			
			this.internalBuffer = null;

			notifyAll();
			return product;
		
	}
	

}
