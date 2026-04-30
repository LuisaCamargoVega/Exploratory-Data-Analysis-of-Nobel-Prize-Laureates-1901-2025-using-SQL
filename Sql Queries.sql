## Initial exploration of the dataset 
SELECT * 
FROM nobel_prize_laureates_1901_2025
Limit 10;

## Nobel_Prizes_by_category
SELECT category, COUNT(*) AS total_awards
FROM nobel_prize_laureates_1901_2025
GROUP BY category
ORDER BY total_awards DESC;

## Nobel_Prizes_by_gender
SELECT gender, COUNT(*) AS total
FROM nobel_prize_laureates_1901_2025
GROUP BY gender;

##  prizes_award_over_the_time
SELECT year, COUNT(*) AS total_awards
FROM nobel_prize_laureates_1901_2025
GROUP BY year
ORDER BY year;

## Nobel_Prizes_by_country
SELECT birth_country_now, COUNT(*) AS total_laureates
FROM nobel_prize_laureates_1901_2025
WHERE birth_country_now IS NOT NULL
GROUP BY birth_country_now
ORDER BY total_laureates DESC
LIMIT 10;

##Nobel_Prizes_female
SELECT category, COUNT(*) AS female_laureates
FROM nobel_prize_laureates_1901_2025
WHERE gender = 'female'
GROUP BY category
ORDER BY female_laureates DESC;

### Distribution_of_prize_shares_by_category
SELECT 
    category,
    prize_share,
    COUNT(*) AS frequency
FROM nobel_prize_laureates_1901_2025
GROUP BY category, prize_share
ORDER BY category, frequency DESC;


### institutions_most_affiliated_with_the_Nobel_Prize
SELECT affiliation_name, COUNT(*) AS total_laureates
FROM nobel_prize_laureates_1901_2025
WHERE affiliation_name IS NOT NULL
GROUP BY affiliation_name
ORDER BY total_laureates DESC
LIMIT 10;

##Categories_that_grew_over_time
SELECT category, COUNT(*) AS total
FROM nobel_prize_laureates
WHERE year >= 2000
GROUP BY category
ORDER BY total DESC;

##Noble_Prize Winnes twice
SELECT 
  full_name,
  COUNT(*) AS total_prizes
FROM nobel_prize_laureates_1901_2025
WHERE full_name IS NOT NULL
GROUP BY full_name
HAVING COUNT(*) > 1
ORDER BY total_prizes DESC;

##Winners_of_the_Nobel_Prize_in_Economics
SELECT
    full_name,
    year,
    category
FROM nobel_prize_laureates_1901_2025
WHERE category = 'Economic Sciences'
ORDER BY year DESC
LIMIT 10;

