CREATE TABLE students
(
    member_id TEXT PRIMARY KEY,
    name TEXT,
    email TEXT,
    cohort TEXT,
    region TEXT
);

CREATE TABLE events
(
    event_id TEXT PRIMARY KEY,
    title TEXT,
    date DATE,
    type TEXT,
    participants INT,
    format TEXT
);



CREATE TABLE outreach_campaigns
(
    campaign_id TEXT PRIMARY KEY,
    school_type TEXT,
    strategy TEXT,
    conversions INT,
    interactions INT,
    time_cost INT
);