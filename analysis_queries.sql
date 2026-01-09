-- 1 Conversion rate by strategy (CTE)
    WITH strategy_totals AS (
        SELECT 
            strategy,
            SUM(conversions) AS total_conversions,
            SUM(interactions) AS total_interactions
        FROM outreach_campaigns
        GROUP BY strategy
    )

    SELECT 
        strategy,
        total_conversions,
        total_interactions,
        total_conversions::FLOAT / total_interactions AS conversion_rate
        FROM strategy_totals
        ORDER BY conversion_rate DESC;

;
-- 2 Cohort-level engagement
    SELECT
        s.cohort,
        SUM(o.conversions) AS total_conversions,
        SUM(o.interactions) AS total_interactions,
        SUM(o.conversions)::FLOAT / NULLIF(SUM(o.interactions), 0) AS conversion_rate
    FROM students s
    JOIN outreach_campaigns o ON s.cohort = o.school_type
    GROUP BY s.cohort
    ORDER BY conversion_rate DESC;


