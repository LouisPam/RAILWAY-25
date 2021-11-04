
#BAI3
use Testing_System_Assignment_12SonPC;
#QUESTION 2 :lẤY RA TẤT CẢ CÁC PHÒNG BAN
Select * from DEPARTMENT;

#QUESTION 3: LẤY RA ID CỦA PHÒNG BAN Phạm Công Sơn
Select DepartmentName
From DEPARTMENT
Where DepartmentName = "Phạm Công Sơn";

#QUESTION 4: Lấy ra thông tin account có full name dài nhất
#SELECT MAX(Tuoi) AS TUỔI_LỚN_NHẤT FROM SinhVien;
SELECT FullName,length(FullName) AS Do_Dai_Ten
FROM ACCOUNT1
WHERE length(FullName)= (SELECT max(length(FullName)) FROM ACCOUNT1);

#Tham khao bai chị dung :))
#QUESTION5:lấy ra full name dài nhất ở phòng ban id =3
SELECT 		DepartmentID,FullName,length(FullName) AS do_dai_ten
FROM 		ACCOUNT1
WHERE 		DepartmentID=3 AND length(FullName)= (SELECT max(length(FullName))
												  FROM ACCOUNT1
                                                  WHERE DepartmentID=3);
                                                  
# lấy dữ liệu các cột deparmentID, fullname, đếm số kí tự fullname ( thay bằng tên đọ_dài_tên)
# ở cột account1
# với điều kiện là deparementID = 3 ( lọc được nhưng cột có depid=3)
#và đếm kí tự full name = tên dài nhất ( câu lệnh full name dài nhất) với điều kiện departmentID =3( lọc được tên ở cột id bằng 3 dài nhất)
#QUESTION6: LẤY RA TÊN GROUP THAM GIA TRƯỚC NGÀY 20/10/2021
Select CreateDate
From GROUP1
Where CreateDate < "2021-10-20";
#QUESTION7: LẤY RA ID CỦA 4 NGƯỜI CÓ CÂU TRẢ LỜI true
SELECT		QuestionID, count(QuestionID) AS So_luong, Group_concat(IsCorrect)
FROM		ANSWER
GROUP BY	QuestionID, IsCorrect
HAVING 		Group_concat(IsCorrect) ="True";
#QUESTION8: lAY RA CAC BAI THI TU 7H37 TAO TRUOC 2021-6-10
Select Code1
From EXAM
Where Duration >= "7:37:00" AND CreatDate < "2021-6-10";
#QUESTION9: LAY RA 5 GROUP DC TAO GAN DAY NHAT
SELECT * FROM GROUP1
ORDER BY	CreatDate DESC
LIMIT		5;
#QUESTION10: DEM SO NHAN VIEN CO SO ID = 2
SELECT DepartmentID,
COUNT(AccountID) AS so_nhan_vien
FROM ACCOUNT1
WHERE DepartmentID=2;
select * from ACCOUNT1;
#QUESTION11: LAY RA TEN NHAN VIEN BAT DAU BANG CHU P ket thuc bang N
SELECT FullName
FROM ACCOUNT1
WHERE FullName LIKE "P%n";
#QUESTION12 xoa tat ca nhung exam tao truoc ngay 2021-8-10
DELETE FROM EXAM
WHERE CreatDate < "2021-8-10";
#QUESTION13 XOA TÂT CA QUESTION BAT DAU BANG TU HOA HUE

DELETE FROM ANSWER
WHERE Content like "H%e";

#QUESTION14 update nhugn id=5 thanh ten nguyen ba loc va email = nguyenlocba@vti.comm
UPDATE ACCOUNT1
SET Email="nguyenlocba@vti.com", FullName="Nguyen Bá Lộc"
WHERE DepartmentID="5";


#QUESTION15 update accid=5 sang groupid = 4
UPDATE GROUPACCOUNT
SET	AccountID=5
WHERE GroupID=4 ;          



