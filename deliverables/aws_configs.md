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
  [Amazon RDS (MSSQL for windows based, can explore sql type based on usecase)]
         |
         v
 [Frontend display/ dashboard]