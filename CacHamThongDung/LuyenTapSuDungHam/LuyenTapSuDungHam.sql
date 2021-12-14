select *,max(credit) from subject;

select *,max(mark) from subject s join mark m on m.SubId = s.SubId;

select * from mark order by mark DESC;