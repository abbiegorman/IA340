-- 4.1 Can you delete VA from the name table? If yes, provide your SQL code. If not,
explain why. Type your answers as a muti-line comment in lab4.sql

  -- No you can not delete VA from the name table because it is refered to in the other tables (is also a foreign key).

-- 4.2 Can you execute the following SQL code? Why? Type your answers as a muti-
line comment in lab4.sql

  -- No you can not execute the above code because we do not have a FIPS code that is 80. 

-- 4.3 Open ChatGPT and try to define the tables we created in lab 2. Provide your
prompts in lab4.sql and evaluate the responses: Are they perfect? Type your
answers as a muti-line comment in lab4.sql.

  -- Chatgpt did a pretty good job with the responce, although, not perfect because it misses some of the table names.

-- 4.5 Upload the diagram to ChatGPT and tell ChatGPT those are the ER diagrams of
three tables. Does ChagGPT recognize the chart? Type your answers as a muti-
line comment in lab4.sql.

  -- Yes Chatgpt did recognize the chart.
  
  
-- 4.6. Ask ChatGPT to find the state with the highest income. An example prompt is
provided below. Test the returned SQL code in pgAdmin and paste it to the
lab4.sql. Does the returned SQL code work? Type your answers as a muti-line
comment in lab4.sql.

  -- SELECT name.name, income.income, income.year
FROM income
JOIN name ON income.fips = name.fips
WHERE income.year =(select MAX (year) FROM income)
ORDER BY income.income DESC
Limit 1;

Yes the answer works

-- 4.7 Write your prompt to calculate the VA population growth rate in the past five
years. Test the returned SQL code in pgAdmin and paste it to the lab4.sql. What
is your prompt? Did you modify it to get a better result? Type your answers as a
muti-line comment in lab4.sql

SELECT 
    Year,
    Population
FROM 
    StatePopulations
JOIN 
    States ON StatePopulations.StateID = States.StateID
WHERE 
    States.StateName = 'Virginia' 
    AND Year IN (YEAR(CURDATE()) - 5, YEAR(CURDATE()) - 4, YEAR(CURDATE()) - 3, YEAR(CURDATE()) - 2, YEAR(CURDATE()) - 1)
ORDER BY 
    Year;

I had to modify the code because StatePopulations is not a variable in my table.

-- 4.8  Does ChatGPT always produce accurate responses? Type your answers as a
muti-line comment in lab4.sql

No Chatgpt does not always produce accurate responces. While it frequently is correct and can help provide a basic guideline, the AI frequently misnames variables and makes other errors.

