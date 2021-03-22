import java.util.Map; 
import java.util.TreeMap;

public class FizzBuzz {

     public static void main(String []args) {
        String output;
        TreeMap<Integer, String> dict = new TreeMap<Integer, String>();
        dict.put(3, "Fizz"); 
        dict.put(5, "Buzz");
        for (int i = 1; i <= 100; i++) {
            output = "";
			// The set's iterator returns the entries in ascending key order: https://docs.oracle.com/javase/7/docs/api/java/util/TreeMap.html#entrySet()
            for (Map.Entry<Integer, String> entry : dict.entrySet()) {
                if (i % entry.getKey() == 0) { output += entry.getValue(); }
		    }
		    if (output.equals("")) { output = String.valueOf(i); }
		    System.out.println(output);
        }
     }
}