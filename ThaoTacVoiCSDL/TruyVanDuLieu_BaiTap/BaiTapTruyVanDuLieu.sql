use quanlysinhvien;

select * from student where StudentName like "h%";

select * from class where month(startDate)=12;

select * from subject where credit between 3 and 5; 

update student set ClassID = 2 where StudentName like "Hung";

select StudentName,SubName,Mark from student S join mark m on S.StudentId = m.StudentId join subject sub on m.SubId = sub.SubId order by Mark DESC,StudentName ASC; 