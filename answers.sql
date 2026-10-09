-- Week 6 Database Assignment
-- Topic: Database Backup and WAL Archiving
-- Database: bootcamp
-- PostgreSQL Version: 18.6

-- Question 1: Verify the students table.
SELECT * FROM students;

-- Question 2: Check whether WAL archiving is enabled.
SHOW wal_level;
SHOW archive_mode;
SHOW archive_command;

-- Question 3: Check WAL archiving statistics.
SELECT
    archived_count,
    last_archived_wal,
    failed_count
FROM pg_stat_archiver;

-- Question 4: Verify the database backup and recovery.
-- The backup was created using pg_dump in Git Bash.
-- The backup file is: ~/backups/bootcamp_final.dump
-- The backup was restored into bootcamp_restore_test.
-- The restored student records were verified successfully.

SELECT * FROM bootcamp_restore_test.public.students;
