SELECT 

jpf.[job_id],
jpf.[job_title_short],
cd.[name]

FROM [Alan_projec].[dbo].[Job_postings_fact] AS jpf
LEFT JOIN [Alan_projec].[dbo].[company_dim] AS cd
    on jpf.company_id = cd.company_id
    