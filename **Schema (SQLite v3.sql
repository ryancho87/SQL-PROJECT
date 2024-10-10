**Schema (SQLite v3.39)**

    CREATE TABLE fortune_companies (
        company_id INTEGER PRIMARY KEY,
        company_name TEXT,
        industry TEXT,
        revenue REAL,
        employees INTEGER,
        healthcare_benefits BIT,
        paid_time_off_days INTEGER,
        maternity_leave_weeks INTEGER,
        avg_employee_tenure REAL
    );
    
    INSERT INTO fortune_companies (company_name, industry, revenue, employees, healthcare_benefits, paid_time_off_days, maternity_leave_weeks, avg_employee_tenure)
    VALUES
        ('Apple Inc.', 'Technology', 365.7, 147000, 1, 20, 12, 4.5),
        ('Walmart Inc.', 'Retail', 523.96, 2200000, 1, 15, 8, 6.2),
        ('Exxon Mobil Corporation', 'Energy', 265.01, 72000, 0, 18, 6, 7.8),
        ('Amazon.com Inc.', 'Technology', 386.06, 1370000, 1, 22, 14, 5.1),
        ('JPMorgan Chase & Co.', 'Financials', 160.1, 255998, 1, 21, 12, 6.9),
        ('Verizon Communications Inc.', 'Telecommunications', 131.88, 132600, 0, 15, 6, 5.5),
        ('Company A', 'Retail', 235.4, 2000, 1, 18, 10, 5.8),
        ('Company B', 'Healthcare', 400.7, 2300, 1, 22, 13, 5.7),
        ('Company C', 'Manufacturing', 300.2, 2000, 1, 18, 10, 5.8),
        ('Company D', 'Healthcare', 150.5, 3500, 1, 20, 12, 6.5),
        ('Company E', 'Finance', 280.7, 1800, 0, 14, 8, 4.2),
        ('Company F', 'Technology', 420.1, 2500, 1, 22, 14, 7.1),
        ('Company G', 'Retail', 190.8, 1500, 1, 16, 9, 5.3),
        ('Company H', 'Energy', 280.5, 2200, 0, 15, 8, 6.8),
        ('Company I', 'Telecommunications', 110.3, 1800, 1, 19, 11, 4.9),
        ('Company J', 'Manufacturing', 390.6, 2700, 1, 21, 13, 6.2),
        ('Company K', 'Healthcare', 180.2, 3200, 1, 17, 9, 7.4),
        ('Company L', 'Finance', 230.4, 1900, 0, 13, 7, 5.6),
        ('Company M', 'Technology', 340.9, 2800, 1, 23, 15, 6.9),
        ('Company N', 'Retail', 200.6, 1600, 1, 15, 8, 4.7),
        ('Company O', 'Energy', 260.2, 2400, 0, 14, 7, 6.1),
        ('Company P', 'Telecommunications', 130.5, 2100, 1, 20, 12, 5.3),
        ('Company Q', 'Manufacturing', 360.0, 2900, 1, 22, 14, 7.8),
        ('Company R', 'Technology', 400.7, 2300, 1, 22, 13, 5.7),
        ('Company S', 'Retail', 210.8, 1600, 0, 16, 9, 4.9),
        ('Company T', 'Energy', 290.5, 2200, 1, 15, 8, 7.2),
        ('Company U', 'Telecommunications', 140.3, 1900, 1, 20, 12, 6.1),
        ('Company V', 'Manufacturing', 350.6, 2800, 1, 22, 14, 5.4),
        ('Company W', 'Healthcare', 160.2, 3300, 0, 18, 10, 4.8),
        ('Company X', 'Finance', 240.4, 2000, 1, 13, 7, 7.1),
        ('Company Y', 'Technology', 320.9, 2700, 1, 23, 15, 5.6),
        ('Company Z', 'Retail', 180.6, 1400, 0, 14, 8, 6.3),
        ('Company AA', 'Energy', 240.2, 2600, 1, 17, 9, 6.5),
        ('Company BB', 'Telecommunications', 120.5, 2100, 0, 19, 11, 4.5),
        ('Company CC', 'Manufacturing', 380.0, 3000, 1, 21, 13, 7.3),
        ('Company DD', 'Healthcare', 170.2, 3200, 1, 17, 9, 5.8),
        ('Company EE', 'Finance', 250.4, 1900, 0, 12, 6, 6.4),
        ('Company FF', 'Technology', 300.9, 2500, 1, 24, 16, 6.9),
        ('Company GG', 'Retail', 190.6, 1700, 0, 13, 7, 5.2),
        ('Company HH', 'Energy', 280.2, 2300, 1, 16, 9, 6.8),
        ('Company II', 'Telecommunications', 110.5, 2000, 1, 21, 12, 4.9),
        ('Company JJ', 'Manufacturing', 370.0, 3100, 1, 20, 12, 7.6),
        ('Company KK', 'Healthcare', 150.2, 3400, 0, 16, 8, 5.3);

---

**Query #1**

    SELECT company_name, revenue,
        CASE 
            WHEN revenue > 300 THEN 'Large'
            WHEN revenue BETWEEN 150 AND 300 THEN 'Medium'
            ELSE 'Small'
        END AS revenue_category
    FROM fortune_companies
    ORDER BY revenue DESC;

| company_name                | revenue | revenue_category |
| --------------------------- | ------- | ---------------- |
| Walmart Inc.                | 523.96  | Large            |
| Company F                   | 420.1   | Large            |
| Company B                   | 400.7   | Large            |
| Company R                   | 400.7   | Large            |
| Company J                   | 390.6   | Large            |
| Amazon.com Inc.             | 386.06  | Large            |
| Company CC                  | 380     | Large            |
| Company JJ                  | 370     | Large            |
| Apple Inc.                  | 365.7   | Large            |
| Company Q                   | 360     | Large            |
| Company V                   | 350.6   | Large            |
| Company M                   | 340.9   | Large            |
| Company Y                   | 320.9   | Large            |
| Company FF                  | 300.9   | Large            |
| Company C                   | 300.2   | Large            |
| Company T                   | 290.5   | Medium           |
| Company E                   | 280.7   | Medium           |
| Company H                   | 280.5   | Medium           |
| Company HH                  | 280.2   | Medium           |
| Exxon Mobil Corporation     | 265.01  | Medium           |
| Company O                   | 260.2   | Medium           |
| Company EE                  | 250.4   | Medium           |
| Company X                   | 240.4   | Medium           |
| Company AA                  | 240.2   | Medium           |
| Company A                   | 235.4   | Medium           |
| Company L                   | 230.4   | Medium           |
| Company S                   | 210.8   | Medium           |
| Company N                   | 200.6   | Medium           |
| Company G                   | 190.8   | Medium           |
| Company GG                  | 190.6   | Medium           |
| Company Z                   | 180.6   | Medium           |
| Company K                   | 180.2   | Medium           |
| Company DD                  | 170.2   | Medium           |
| Company W                   | 160.2   | Medium           |
| JPMorgan Chase & Co.        | 160.1   | Medium           |
| Company D                   | 150.5   | Medium           |
| Company KK                  | 150.2   | Medium           |
| Company U                   | 140.3   | Small            |
| Verizon Communications Inc. | 131.88  | Small            |
| Company P                   | 130.5   | Small            |
| Company BB                  | 120.5   | Small            |
| Company II                  | 110.5   | Small            |
| Company I                   | 110.3   | Small            |

---
**Query #2**

    SELECT industry, AVG(healthcare_benefits) AS avg_healthcare_benefits
    FROM fortune_companies
    GROUP BY industry
    HAVING AVG(healthcare_benefits) > 0.5;

| industry           | avg_healthcare_benefits |
| ------------------ | ----------------------- |
| Financials         | 1                       |
| Healthcare         | 0.6666666666666666      |
| Manufacturing      | 1                       |
| Retail             | 0.5714285714285714      |
| Technology         | 1                       |
| Telecommunications | 0.6666666666666666      |

---
**Query #3**

    SELECT COUNT(*) AS companies_with_healthcare_and_high_tenure
    FROM fortune_companies
    WHERE healthcare_benefits = 1
        AND avg_employee_tenure > 6;

| companies_with_healthcare_and_high_tenure |
| ----------------------------------------- |
| 16                                        |

---
**Query #4**

    SELECT industry, AVG(maternity_leave_weeks) AS avg_maternity_leave
    FROM fortune_companies
    GROUP BY industry
    ORDER BY avg_maternity_leave DESC;

| industry           | avg_maternity_leave |
| ------------------ | ------------------- |
| Technology         | 14.142857142857142  |
| Manufacturing      | 12.666666666666666  |
| Financials         | 12                  |
| Telecommunications | 10.666666666666666  |
| Healthcare         | 10.166666666666666  |
| Retail             | 8.428571428571429   |
| Energy             | 7.833333333333333   |
| Finance            | 7                   |

---
**Query #5**

    SELECT company_name, industry, employees, paid_time_off_days
    FROM fortune_companies
    WHERE (industry = 'Technology' OR industry = 'Retail')
        AND employees > 1000
        AND paid_time_off_days >= 20;

| company_name    | industry   | employees | paid_time_off_days |
| --------------- | ---------- | --------- | ------------------ |
| Apple Inc.      | Technology | 147000    | 20                 |
| Amazon.com Inc. | Technology | 1370000   | 22                 |
| Company F       | Technology | 2500      | 22                 |
| Company M       | Technology | 2800      | 23                 |
| Company R       | Technology | 2300      | 22                 |
| Company Y       | Technology | 2700      | 23                 |
| Company FF      | Technology | 2500      | 24                 |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/saxdDCCyos6z6UdpjeEXSJ/0)