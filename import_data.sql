\copy students(member_id, name, email, cohort, region) FROM '/Users/shannonchiang/projects/sql-engagement-analysis/data/SIH_Analytics - students.csv' DELIMITER ',' CSV HEADER; 

\copy events(event_id, title, date, type, participants, format) FROM '/Users/shannonchiang/projects/sql-engagement-analysis/data/SIH_Analytics - events.csv' DELIMITER ',' CSV HEADER; 

\copy outreach_campaigns(campaign_id, school_type, strategy, conversions, interactions, time_cost) FROM '/Users/shannonchiang/projects/sql-engagement-analysis/data/SIH_Analytics - outreach_campaigns.csv' DELIMITER ',' CSV HEADER;