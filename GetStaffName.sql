if exists (select * from sysobjects where name = 'GetStaffFullName')
drop function GetStaffFullName
go

create function GetStaffFullName(@StaffNo varchar(20)) returns varchar(41)
with encryption as

begin

declare @StaffFullName varchar(41)

begin
set @StaffFullName = (select dbo.GetMergedNameCode(dbo.GetFullName(LastName, null, FirstName), StaffNo) 
			from Staff where StaffNo = @StaffNo)
set @StaffFullName = isnull(@StaffFullName, '')
end

return @StaffFullName

end

go

----------------------------------------------------------------------------------------------------------------------------
-- print dbo.GetStaffFullName('1')
-- print dbo.GetStaffFullName(null)
----------------------------------------------------------------------------------------------------------------------------

--------Function GetStaffName----------------------------------------------------------------------------------------------

if exists (select * from sysobjects where name = 'GetStaffName')
drop function GetStaffName
go

create function GetStaffName(@StaffNo varchar(20)) returns varchar(41)
with encryption as

begin

declare @StaffName varchar(41)

begin
set @StaffName = (select dbo.GetFullName(LastName, null, FirstName) 
			from Staff where StaffNo = @StaffNo)
set @StaffName = isnull(@StaffName, '')
end

return @StaffName

end

go

----------------------------------------------------------------------------------------------------------------------------
-- print dbo.GetStaffName('1')
-- print dbo.GetStaffName(null)