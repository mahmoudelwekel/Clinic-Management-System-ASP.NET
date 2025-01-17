USE [DBProject]
GO
/****** Object:  StoredProcedure [dbo].[RetrieveFreeSlots]    Script Date: 29/07/2020 10:08:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[RetrieveFreeSlots]

@dID int,
@pID int,
@count int OUTPUT

as
begin

declare @month int, @year int, @day int


set @month = DATEPART(MONTH, GETDATE())
set @year  = DATEPART(YEAR, GETDATE())
set @day   = DATEPART(DAY, GETDATE())


	DECLARE @start time='9:00',@end time='18:00'

set @count=(DATEDIFF(MINUTE, @start, @end) / 15)+1 - (select Count(*) from Appointment 
							where
							DATEPART(YEAR, [DATE]) = @year AND  DATEPART(MONTH, [DATE]) = @month AND DATEPART(DAY, [DATE]) = @day
							AND DoctorID = @dID
							AND cast( [DATE] as time) between  @start and  @end

							)


;WITH Dates AS
(
    SELECT DATEADD(MINUTE,0,@start) [Free Slots], 1 Num
    UNION ALL
    SELECT DATEADD(MINUTE,15,[Free Slots]), Num+1
    FROM Dates
    WHERE  [Free Slots] < @end

)
SELECT  left([Free Slots],5)  as [Free Slots]
FROM Dates
where  
				not exists (select* from Appointment 
							where
							DATEPART(YEAR, [DATE]) = @year AND  DATEPART(MONTH, [DATE]) = @month AND DATEPART(DAY, [DATE]) = @day
							AND DoctorID = @dID
							AND DATEPART(Hour, [DATE]) = DATEPART(Hour, [Free Slots])
							AND DATEPART(MINUTE, [DATE]) = DATEPART(MINUTE, [Free Slots])
							)

				
end



--------------------------AppointmentRequestSent-------------------------
----------------------------(1)-------------------------------

