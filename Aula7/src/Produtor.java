public class Produtor extends Thread {

	private final int ID;

	private Buffer sharedBufffer;

	private final int MAX_PRODUCTION;

	private int producted;

	public Produtor(int id, Buffer buffer, int maxProd) {

		this.ID = id;
		this.sharedBufffer = buffer;
		this.MAX_PRODUCTION = maxProd;
		this.producted = 0;
	}

	private Produto createProduct() {
		Produto newProduct = new Produto();

		return newProduct;
	}

	private void printAction(Produto prod) {
		String toPrint = this.toString() + " Colocou " + prod.toString();
		System.out.println(toPrint);
	}

	private boolean canProduce() {
		Boolean canProd = this.producted < MAX_PRODUCTION;

		return canProd;
	}

	private void insertProduct() {
		
		String waitMsg = this.toString() + " está esperando o buffer ser consumido.";
		
		if (this.canProduce()) {

			Produto prod = createProduct();

			this.sharedBufffer.insert(prod, waitMsg);
			
			this.producted = this.producted + 1;

			printAction(prod);
		}
			
	}

	public void run() {

		for (int i = 0; i < MAX_PRODUCTION; i++) {
			
			insertProduct();			
		}
		
		String concluido = this.toString() + " Concluido.";
		System.out.println(concluido);

	}

	@Override
	public String toString() {
		String desc = "Produtor # " + String.valueOf(this.ID);
		return desc;
	}

}
