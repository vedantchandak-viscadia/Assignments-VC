[Users Pings front-end/ Data Upload]
         |
         v
     [Amazon S3]
   (Raw data files)
         |
         v
    [AWS Glue / EMR]       <-- Data cleaning & transformation (ETL)
         |
         v
  [Amazon RDS (PostgreSQL)]
         |
         v
 [Frontend display/ dashboard]