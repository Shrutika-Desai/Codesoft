package com.demo;

import java.util.Random;
import java.util.Scanner;

public class GuessNumberGame {

	public static void main(String[] args) {
		
		  int start = 1;
		     int end = 100;
		    int NumOfattempts = 10;
		    int rounds = 3;
		    
		    int totalScore = 0;

		        Random random = new Random();
		        Scanner scanner = new Scanner(System.in);
		        
                System.out.println("*******Rules To Follow********");
		        System.out.println("********Number Game********");
		        System.out.println(" ********Number Of Rounds : 3********");
		        System.out.println("********total attempts : 10********\n");
		        for (int i = 1; i <= rounds; i++) {
		            int number = random.nextInt(end) + start;
		            int attempts  = 0;

		            System.out.printf("Round %d: Guess the number between %d and %d in %d attempts.\n", i, start, end,
		                    NumOfattempts);
		            while (attempts < NumOfattempts) {
		                System.out.println("Enter your guess : ");
		                int guess_number = scanner.nextInt();
		                attempts = attempts + 1;

		                if (guess_number == number) {
		                    int score = NumOfattempts - attempts;
		                    totalScore = totalScore + score;
		                    System.out.printf("Hurray! Number Guessed Successfully. Attempts = %d. Round Score = %d\n",
		                            attempts, score);
		                    break;
		                }

		                else if (guess_number < number) {
		                    System.out.printf("The number is greater than %d. Attempts Left = %d.\n", guess_number,
		                    		 NumOfattempts - attempts);
		                }

		                else if (guess_number > number) {
		                    System.out.printf("The number is less than %d. Attempts Left = %d.\n", guess_number,
		                    		 NumOfattempts - attempts);
		                }

		            }

		            if (attempts ==  NumOfattempts) {
		                System.out.printf("\nRound = %d\n", i);
		                System.out.println("Attempts = 0");
		                System.out.printf("The Random Number Is : %d\n\n", number);
		            }
		        }
		        System.out.printf("Game Over. Total Score = %d\n", totalScore);
		        scanner.close();
		    }

		
	}


