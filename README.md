Step 1.

Open your terminal and git clone this repo using this command -  https://github.com/kimtony123/Orbit-process.git

Step 2.

Open  aos process in your terminal by running (aos) 

Step 3.

Load the data lua process in your aos terminal using the following command - .load Data.lua  

Step 4.

To get the Current data (for creating new trades) run the following command - Send({ Target= ao.id, Action="Sponsored-Get-Request-Current" })

Run the following command to view the data - CurrentData

Step 5.

To get the Outcome data (for settling the trades) run the following command - Send({ Target= ao.id, Action="Sponsored-Get-Request-Outcome" })

Run the following command to view the data - OutcomeData
