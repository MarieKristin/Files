


Feature: Application - LogIn

		As 			an user
		I want 		to log in into the intern main page
		so that		I can use the app

		
  Scenario Outline: Successfull LogIn
		
		Given 		I wait for the "MainActivity" screen to appear
   
		When 		I press "buttonLogin"
			And 		I enter "<User>" into input field number 1
			And 		I press the enter button
			And 		I enter "<Password>" into input field number 2
			And 		I press the enter button
			And 		I press "loginConfirm"
			
		Then 		I should see "Successfully logged in"
	
		Examples:
				| 	User		|  Password |
				| 	Dobby	|  123      |

	
	
  Scenario Outline: Dobby LogIn failed - User not found
  
		Given 		I wait for the "MainActivity" screen to appear
   
		When 		I press "buttonLogin"
			And 		I enter "<User>" into input field number 1
			And 		I press the enter button
			And 		I enter "<Password>" into input field number 2
			And 		I press the enter button
			And 		I press "loginConfirm"	
			
		Then 		I should see "User not found"

		Examples:
			| User 		|	Password    |
			| AA 		|	123         |
			| BB			|	123         |


