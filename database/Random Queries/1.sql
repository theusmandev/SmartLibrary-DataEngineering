select count(*) from stg.Novels_Excel

SELECT TOP 1000 *
FROM stg.Novels_Excel
order by title


select * from stg.Novels_Excel
where title = '    '

select * from stg.Novels_Excel
where title = ''







SELECT *
FROM stg.Novels_Excel
WHERE title IS NULL
   OR LTRIM(RTRIM(title)) = '';



SELECT *
FROM stg.Novels_Excel
WHERE title IS NOT NULL
  AND title <> ''
  AND title NOT LIKE '%[^0-9]%';




SELECT *
FROM stg.Novels_Excel e
WHERE EXISTS (
    SELECT 1
    FROM stg.Novels_Excel d
    WHERE TRIM(e.title) = TRIM(d.title)
      AND TRIM(e.NovelLink) = TRIM(d.NovelLink)
    GROUP BY TRIM(d.title), TRIM(d.NovelLink)
    HAVING COUNT(*) > 1
)
ORDER BY title;




SELECT *
FROM stg.Novels_Excel
WHERE Title LIKE '%By aymal raza%';
