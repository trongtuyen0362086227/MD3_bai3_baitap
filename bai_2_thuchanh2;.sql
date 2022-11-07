use bai_2_thuchanh2;
--  Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select st.StudentName
from student st
where st.StudentName like 'H%';
--  Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
SELECT * FROM bai_2_thuchanh2.class; 
select c.ClassName
from class c
where month(c.startdate)=12 ;
--  Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5. 
SELECT * FROM bai_2_thuchanh2.subject;
select *
from bai_2_thuchanh2.subject s
where (s.credit between 3 and 5);
--   Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2. 
update student
set classid = '2' where (studentid = '1');

--  Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm 
-- dần. nếu trùng sắp theo tên tăng dần. 
select st.StudentName, su.SubName, m.mark
from mark m inner join student st on m.studentID = st.studentid inner join subjects su on su.subid = m.SubId
order by m.mark desc