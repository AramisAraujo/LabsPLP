import java.util.UUID;

public class Car {

	private final UUID id;
	
	private final SentidoCarro sentido;
	
	public Car(SentidoCarro sentido){
		this.id = UUID.randomUUID();
		
		this.sentido = sentido;
	}
	
	
	@Override
	public String toString() {
		String desc;
		
		desc = "carro id: "+ this.id.toString();
		
		if(this.sentido == SentidoCarro.A){
			desc += " 	A	-->B";
		}
		else{
			desc+= "		B	-->A";
		}
		
		return desc;
	}


	public SentidoCarro getSentido() {
		return this.sentido;
	}
	
	
}
