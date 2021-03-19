# ETL_Project

Project Technical Report 03/12/2021

Hospital Visits Data (3/1/2020 - 3/21/2020) by County 
ETL Project

•  Extract: your original data sources and how the data was formatted

This ETL Project is compromised from 2 CSV Files found on Kaggle.com
https://www.kaggle.com/jieyingwu/covid19-us-countylevel-summaries?select=hospital_visits.csv
hospital_visits.csv - Hospital Visits by each day from 3/1/2020-3/21/2020 by County in the United States
            covid_us_county.csv- County Demographics

•  Transform: what data cleaning or transformation was required.

	I will be using Postgres for this database
Extract above CSVs into data frames
Transform hospital_visits data frame
Create filtered data frame for the hospital_visits from specific columns
		Rename the column headers from int format to text format
			Renamed columns to match sql 
Clean the data by dropping columns and setting the index to fips
Transform counties data frame
		Rename the column headers 
			Renamed columns to match sql 
Clean the data by dropping column and setting index to fips
Use .melt function to take our wide format and stack a set of columns into single columns of data.  We need to specify the data frame, id variables and the measured variables to be stacked.
Dropped all duplicates from fips column in 

•  Load: the final database, tables, and why this was chosen.

Selected all data from hospital_visits and us_county, to get our table, which is joined on the fips column
In the schema file, there will be a join statement showing how the two tables were related

