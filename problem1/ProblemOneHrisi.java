public class ProblemOneHrisi {
	public int i;
	public int sumNumber = 0;
	
	public ProblemOneHrisi(){			
		for (i=0; i<1000; i++){
			if (i%3==0 || i%5==0) {
				sumNumber = sumNumber + i;
			}
		}		
		System.out.println("The sum is: " + sumNumber);
	}
}
