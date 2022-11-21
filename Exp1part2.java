package Assignments;

import java.util.*;

public class Exp1part2 {
    static int fib(int n)
    {
        if (n <= 1)
            return n;
  
        // Recursive call
        return fib(n - 1)+ fib(n - 2);
    }
  
    public static void
    main(String args[])
    {
        Scanner sc = new Scanner(System.in);  
        System.out.println("Enter number");
        int  N = sc.nextInt();
  
        // Print the first N numbers
        for (int i = 0; i < N; i++) {
  
            System.out.print(fib(i) + " ");
        }
        sc.close();
    }
}
