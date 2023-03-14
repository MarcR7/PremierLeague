-- showing everything from EPLStandings
select * from dbo.EPLStandings

-- showing everything from final_dataset
select * from dbo.final_dataset

-- selecting games results with dates

select Date, HomeTeam, AwayTeam, FTHG, FTAG from dbo.final_dataset 

-- Home Goals per Team
select HomeTeam, SUM(cast(FTHG as int)) as HomeGoalsScored, SUM(cast(FTAG as int)) as HomeGoalsConceded
from dbo.final_dataset 
group by HomeTeam

-- Away Goals per Team
select AwayTeam, SUM(cast(FTAG as int)) as AwayGoalsScored, SUM(cast(FTHG as int)) as AwayGoalsConceded
from dbo.final_dataset 
group by AwayTeam

-- Showing Arsenal goals in season 2003/2004
select date, HomeTeam, SUM(cast(FTHG as int)) as HomeGoals --SUM(cast(FTAG as int)) as AwayGoals
from dbo.final_dataset
where date between '%08/06' and '%05/07'
group by HomeTeam, date