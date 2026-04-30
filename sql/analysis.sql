-- 1 Basic sanity check 
SELECT 
    COUNT(*) AS total_students,
    SUM(placement) AS placed_students,
    ROUND(SUM(placement)*100.0/COUNT(*),2) AS placement_rate
FROM employability;

-- 2. Does CGPA predict placement?
SELECT 
    cgpa_category,
    COUNT(*) AS total,
    SUM(placement) AS placed,
    ROUND(SUM(placement)*100.0/COUNT(*),2) AS placement_rate
FROM employability
GROUP BY cgpa_category;

-- 3 Compare CGPA and Skill Score
SELECT 
    placement,
    ROUND(AVG(cgpa),2) AS avg_cgpa,
    ROUND(AVG(skill_score),2) AS avg_skill
FROM employability
GROUP BY placement;

-- STEP 4: Skill Score Impact (Game Changer)
SELECT 
    skill_score,
    COUNT(*) AS total,
    ROUND(AVG(placement)*100,2) AS placement_rate
FROM employability
GROUP BY skill_score
ORDER BY skill_score;

-- 5. backlog effect
SELECT 
    has_backlogs,
    ROUND(AVG(placement)*100,2) AS placement_rate
FROM employability
GROUP BY has_backlogs;

-- 6. Communication Impact
SELECT 
    communication_score,
    ROUND(AVG(placement)*100,2) AS placement_rate
FROM employability
GROUP BY communication_score
ORDER BY communication_score;

-- 7. Do skills impact placement
SELECT 
     placement,
     ROUND(AVG(skill_score),2) AS avg_skill_score
FROM employability
group by placement     

-- “In which engineering streams does skill_score influence placement more than academic performance (CGPA)?”

SELECT 
    stream,
    
    ROUND(AVG(CASE WHEN placement = 1 THEN cgpa END),2) AS placed_cgpa,
    ROUND(AVG(CASE WHEN placement = 0 THEN cgpa END),2) AS notplaced_cgpa,
    
    ROUND(AVG(CASE WHEN placement = 1 THEN skill_score END),2) AS placed_skill,
    ROUND(AVG(CASE WHEN placement = 0 THEN skill_score END),2) AS notplaced_skill,

    ROUND(
        AVG(CASE WHEN placement = 1 THEN cgpa END) -
        AVG(CASE WHEN placement = 0 THEN cgpa END)
    ,2) AS cgpa_gap,

    ROUND(
        AVG(CASE WHEN placement = 1 THEN skill_score END) -
        AVG(CASE WHEN placement = 0 THEN skill_score END)
    ,2) AS skill_gap

FROM employability
GROUP BY stream
ORDER BY skill_gap DESC;

-- placement rate by stream
SELECT 
    stream,
    COUNT(*) AS total_students,
    ROUND(AVG(placement)*100,2) AS placement_rate
FROM employability
GROUP BY stream
ORDER BY placement_rate DESC;

-- Skill Score vs Placement per Stream

SELECT 
    stream,
    COUNT(*) AS total_students,
    ROUND(AVG(skill_score),2) AS avg_skill,
    ROUND(AVG(cgpa),2) AS avg_cgpa,
    ROUND(AVG(placement)*100,2) AS placement_rate
FROM employability
GROUP BY stream
ORDER BY placement_rate DESC;

