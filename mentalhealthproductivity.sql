
CREATE DATABASE MentalHealthProductivity;

USE MentalHealthProductivity;

CREATE TABLE EmployeeMentalHealth (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Employee_Name VARCHAR(100),
  Age INT,
  Gender VARCHAR(10),
  Sleep_Hours FLOAT,
  Stress_Level INT,
  Exercise_Frequency INT,
  Work_Life_Balance INT,
  Productivity_Score FLOAT
);

-- Example query
SELECT Stress_Level, AVG(Productivity_Score)
FROM EmployeeMentalHealth
GROUP BY Stress_Level;
