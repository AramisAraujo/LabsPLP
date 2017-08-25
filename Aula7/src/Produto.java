import java.util.Random;

public class Produto {
	
	
	private final int ID;
	private final Random randomGen = new Random();
	
	public Produto () {
		this.ID = this.randomGen.nextInt();
	}
	
	
	public String toString() {
		
		return "(Produto ID " + String.valueOf(this.ID)+ ")";
	}

}
