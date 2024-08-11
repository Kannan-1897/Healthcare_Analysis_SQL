Create Database Health_Care;
Use Health_care;

-- 1. Retrieve all patient names and their ages:
   
   SELECT Patient_name, Age FROM healthcare_dataset;
   

-- 2. Find all patients who have "Diabetes" as a medical condition:
   
   SELECT Patient_name, Age, Medical_Condition FROM healthcare_dataset WHERE Medical_Condition = 'Diabetes';
   

-- 3. List the names of doctors treating patients with a "Heart Disease" condition:
   
   SELECT DISTINCT Doctor FROM healthcare_dataset WHERE Medical_Condition = 'Heart Disease';
   

-- 4. Count the number of patients admitted to a specific hospital (e.g., 'City Hospital'):
   
   SELECT COUNT(*) FROM healthcare_dataset WHERE Hospital = 'City Hospital';
   

-- 5. Get the total billing amount for all patients:
   
   SELECT SUM(Billing_Amount) AS Total_Billing_Amount FROM healthcare_dataset;
   

-- 6. Find the average age of patients admitted with "Hypertension":
   
   SELECT AVG(Age) AS Average_Age FROM healthcare_dataset WHERE Medical_Condition = 'Hypertension';
   

-- 7. Retrieve patient names, their doctors, and the medications they are on:
   
   SELECT Patient_name, Doctor, Medication FROM healthcare_dataset;
   

-- 8. List all patients admitted after '2024-01-01':
   
   SELECT * FROM healthcare_dataset WHERE Date_of_Admission > '2024-01-01';
   

-- 9. Find patients who have "A+" blood type:
   
   SELECT Patient_name FROM healthcare_dataset WHERE Blood_Type = 'A+';
   

-- 10. Get the count of male and female patients:
    
    SELECT Gender, COUNT(*) AS Count FROM healthcare_dataset GROUP BY Gender;
    

-- 11. List all unique medical conditions treated in the dataset:
    
    SELECT DISTINCT Medical_Condition FROM healthcare_dataset;
    

-- 12. Find the most expensive billing amount:
    
    SELECT MAX(Billing_Amount) AS Highest_Billing_Amount FROM healthcare_dataset;
    

-- 13. Get the average billing amount for patients treated by 'Dr. Smith':
    
    SELECT AVG(Billing_Amount) AS Avg_Billing FROM healthcare_dataset WHERE Doctor = 'Dr. Smith';
    

-- 14. Retrieve the details of patients discharged in the year 2024:
    
    SELECT * FROM healthcare_dataset WHERE YEAR(Discharge_Date) = 2024;
    

-- 15. Find the number of patients in each room:
    
    SELECT Room_Number, COUNT(*) AS Number_of_Patients FROM healthcare_dataset GROUP BY Room_Number;
    

-- 16. List the hospitals with more than 50 patients admitted:
    
    SELECT Hospital, COUNT(*) AS Number_of_Patients FROM healthcare_dataset GROUP BY Hospital HAVING COUNT(*) > 50;
    

-- 17. Find patients with "Critical" admission type:
    
    SELECT Patient_name FROM healthcare_dataset WHERE Admission_Type = 'Critical';
    

-- 18. Get the earliest admission date:
    
    SELECT MIN(Date_of_Admission) AS Earliest_Admission_Date FROM healthcare_dataset;
    

-- 19. List all patients and their insurance providers:
    
    SELECT Patient_name, Insurance_Provider FROM healthcare_dataset;


-- 20. Find all patients who had a specific test result (e.g., "Positive"):
    
    SELECT * FROM healthcare_dataset WHERE Test_Results = 'Positive';
    

-- 21. Get the total number of patients by hospital:
    
    SELECT Hospital, COUNT(*) AS Number_of_Patients FROM healthcare_dataset GROUP BY Hospital;
    

-- 22. Find patients who have been in the hospital for more than 10 days:
    
    SELECT * FROM healthcare_dataset WHERE DATEDIFF(Discharge_Date, Date_of_Admission) > 10;
    

-- 23. Retrieve patients with a billing amount greater than $10,000:
    
    SELECT * FROM healthcare_dataset WHERE Billing_Amount > 10000;
    

-- 24. List the medications prescribed for "Pneumonia":
    
    SELECT DISTINCT Medication FROM healthcare_dataset WHERE Medical_Condition = 'Pneumonia';
    

-- 25. Get the percentage of patients with each blood type:
    
    SELECT Blood_Type, (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM healthcare_dataset)) AS Percentage FROM healthcare_dataset GROUP BY Blood_Type;
    

-- 26. Find patients who were admitted by a specific doctor (e.g., 'Dr. Allen'):
    
    SELECT Patient_name FROM healthcare_dataset WHERE Doctor = 'Dr. Allen';
    

-- 27. List all patients who do not have insurance:
    
    SELECT Patient_name FROM healthcare_dataset WHERE Insurance_Provider IS NULL OR Insurance_Provider = '';
    

-- 28. Get the total billing amount for each hospital:
    
    SELECT Hospital, SUM(Billing_Amount) AS Total_Billing FROM healthcare_dataset GROUP BY Hospital;
    

-- 29. Find the most common medical condition among patients:
    
    SELECT Medical_Condition, COUNT(*) AS Occurrences FROM healthcare_dataset GROUP BY Medical_Condition ORDER BY Occurrences DESC LIMIT 1;
    

-- 30. List patients who have been treated in more than one hospital:
    
    SELECT Patient_name FROM healthcare_dataset GROUP BY Patient_name HAVING COUNT(DISTINCT Hospital) > 1;
    

-- 31. Find the doctor with the highest number of patients:
    
    SELECT Doctor, COUNT(*) AS Number_of_Patients FROM healthcare_dataset GROUP BY Doctor ORDER BY Number_of_Patients DESC LIMIT 1;
    

-- 32. Get the names of patients who were admitted on weekends:
    
    SELECT Patient_name FROM healthcare_dataset WHERE DAYOFWEEK(Date_of_Admission) IN (1, 7);
    

-- 33. List the hospitals with the highest average billing amount:
    
    SELECT Hospital, AVG(Billing_Amount) AS Average_Billing FROM healthcare_dataset GROUP BY Hospital ORDER BY Average_Billing DESC LIMIT 5;
    

-- 34. Find all female patients over the age of 60:
    
    SELECT Patient_name FROM healthcare_dataset WHERE Gender = 'Female' AND Age > 60;
    

-- 35. Get the average length of hospital stay for each medical condition:
    
    SELECT Medical_Condition, AVG(DATEDIFF(Discharge_Date, Date_of_Admission)) AS Avg_Stay FROM healthcare_dataset GROUP BY Medical_Condition;
    

-- 36. Retrieve the details of the oldest patient in the dataset:
    
    SELECT * FROM healthcare_dataset ORDER BY Age DESC LIMIT 1;
    

-- 37. Find patients who have been prescribed multiple medications:
    
    SELECT Patient_name FROM healthcare_dataset WHERE Medication LIKE '%,%';
    

-- 38. List the doctors who have treated more than 20 patients:
    
    SELECT Doctor, COUNT(*) AS Number_of_Patients FROM healthcare_dataset GROUP BY Doctor HAVING COUNT(*) > 20;
    

-- 39. Get the billing details of patients admitted for "Emergency" reasons:
    
    SELECT Patient_name, Billing_Amount FROM healthcare_dataset WHERE Admission_Type = 'Emergency';
    

-- 40. Find the most common admission type:
    
    SELECT Admission_Type, COUNT(*) AS Occurrences FROM healthcare_dataset GROUP BY Admission_Type ORDER BY Occurrences DESC LIMIT 1;