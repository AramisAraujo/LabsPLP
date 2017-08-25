import java.util.ArrayList;
import java.util.List;

public class Consumidor extends Thread{
	
	private final int ID;
	
	private Buffer sharedBufffer;
	
	private final int MAX_CONSUMPTION;
	
	private int consumed;
	
	private List<Produto> consumedProducts;
	
	
	public Consumidor(int id, Buffer buffer, int maxConsume){
		
		this.ID = id;
		this.sharedBufffer = buffer;
		this.MAX_CONSUMPTION = maxConsume;
		this.consumed = 0;
		this.consumedProducts = new ArrayList<Produto>();
	}
	
	private void printAction(Produto prod) {
		String toPrint = this.toString()+ " Consumiu " + prod.toString();
		System.out.println(toPrint);
	}
	
	private boolean canConsume() {
		Boolean canConsm = this.consumed < MAX_CONSUMPTION;
		
		return canConsm;
	}
	
	private void consumeProduct() {
		
		String waitMsg = this.toString() + " está esperando o buffer ser preenchido.";
		
		if(this.canConsume()) {
			
			Produto prod = this.sharedBufffer.consume(waitMsg);
			
			this.consumedProducts.add(prod);
			
			this.consumed = this.consumed + 1;
			
			printAction(prod);
		}
			
	}
	
	public void run() {
		
		for (int i = 0; i < MAX_CONSUMPTION; i++) {
			
			this.consumeProduct();		
		}
		String concluido = this.toString() + " concluiu.";
		System.out.println(concluido);
	}

	
	@Override
	public String toString() {
		String desc = "Consumidor # " + String.valueOf(this.ID);
		return desc;
	}
}
