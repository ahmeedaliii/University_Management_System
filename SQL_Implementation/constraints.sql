--Constraints on delete from table DEPARTMENT :

ALTER TABLE university.Dept_courses
ADD CONSTRAINT fk_dept_courses_dept_id
FOREIGN KEY (dept_ID)
REFERENCES university.Department(dept_ID)
ON DELETE CASCADE;


ALTER TABLE university.Student
ADD CONSTRAINT fk_student_dept_id
FOREIGN KEY (dept_ID)
REFERENCES university.Department(dept_ID)
ON DELETE SET NULL;

--Constraints on delete from table STUDENT_COURSE :

ALTER TABLE UNIVERSITY.STUDENT_COURSE ADD (
  CONSTRAINT CONSTRAINT_DELETE 
 FOREIGN KEY (STUDENT_ID) 
 REFERENCES UNIVERSITY.STUDENT
    ON DELETE CASCADE);

ALTER TABLE UNIVERSITY.STUDENT_COURSE
ADD CONSTRAINT CONSTRAINT_DELETE_Course
FOREIGN KEY (COURSE_ID) 
REFERENCES UNIVERSITY.COURSE(COURSE_ID)
ON DELETE CASCADE;
