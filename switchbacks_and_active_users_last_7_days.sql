USE HRO
GO

DECLARE @DateFrom DATE
DECLARE @DateTo DATE

SET DATEFORMAT DMY

/* Query to be run from Friday to Friday */
SET @DateTo = CAST('25-11-2016' AS DATE)
SET @DateFrom = DATEADD(DAY,-7,@DateTo)

EXEC hronlineStats.GetRolling10WeekPeriodOfActiveHronlineUserSwitchBacks @DateTo = @DateTo

EXEC hronlineStats.GetWeeklyHronlineUserLoginStats
              @DateFrom = @DateFrom
              ,@DateTo = @DateTo

              
GO
