create table hospital_visits(
id int primary key,
fips int,
date date,
visits int
 )


create table us_county(
id int primary key,
fips int,
county text,
state_code text,
date date,
deaths int,
cases int	
);

select * from us_county
select * from hospital_visits

SELECT hospital_visits.fips, hospital_visits.date, hospital_visits.visits,
us_county.county, us_county.state_code, us_county.date,
us_county.deaths, us_county.cases
FROM hospital_visits
INNER JOIN us_county ON hospital_visits.fips = us_county.fips;