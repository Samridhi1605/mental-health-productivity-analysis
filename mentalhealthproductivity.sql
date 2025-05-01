
CREATE DATABASE MentalHealthProductivity;

USE MentalHealthProductivity;

CREATE TABLE mental_health_productivity (
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

SELECT * 
FROM mental_health_productivity LIMIT 10;


SELECT Stress_Level, AVG(Productivity_Score) 
FROM mental_health_productivity
GROUP BY Stress_Level;

SELECT Sleep_Hours, AVG(Productivity_Score)
FROM mental_health_productivity
GROUP BY Sleep_Hours;

SELECT Employee_Name, (0.5 * Sleep_Hours) + (-0.3 * Stress_Level) + (0.4 * Exercise_Frequency) + (0.6 * Work_Life_Balance) AS Predicted_Productivity
FROM mental_health_productivity;

