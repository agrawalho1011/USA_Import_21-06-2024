select * from HBLMaster
select hm.HBLNumber,am.NameOfActivity,hm.Booking,fm.Etd,sm.[Status],ha.Comment,ha.StartDate,ha.EndDate,um.UserName from HBLActivityLog as Ha
inner join ActivityMaster as am
on ha.ActivityId=am.Id
inner join StatusMaster as sm
on ha.StatusId=sm.Id
inner join HBLMaster as hm
on ha.HBLId=hm.Id
inner join AspNetUsers as um
on ha.UserId=um.Id
inner join FileMaster as fm
on fm.Id=hm.FileId