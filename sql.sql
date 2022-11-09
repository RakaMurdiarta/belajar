select gender, count(*) as jumlah from players
group by gender order by jumlah desc;

select age_group, round(sum(total_playing_minutes)/60,0) as "playtime/jam" from players
group by age_group order by "playtime/jam" desc;

select country , count(*) as jumlah from players group by country order by jumlah desc limit 8 ;

select preferred_language, count(*) as jumlah from players 
group by preferred_language order by jumlah desc limit 5;

select concat (first_name," ",last_name) as fullname, round(sum(total_playing_minutes)/60,0) as playtime from players
group by concat (first_name," ",last_name) order by playtime desc ;

select concat (first_name," ",last_name) as fullname, sum(amount_spent_usd) as jumlah_pengeluaran_USD from players
group by concat (first_name," ",last_name) order by jumlah_pengeluaran_USD desc limit 5;

select concat (first_name," ",last_name) as fullname, sum(installed_games) as jumlah_installed from players
group by concat (first_name," ",last_name) order by jumlah_installed desc limit 5;

select concat (first_name," ",last_name) as fullname, amount_spent_usd,installed_games from players;
