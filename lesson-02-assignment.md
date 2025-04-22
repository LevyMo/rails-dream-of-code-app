ANSWER 1

Mentor.create(first_name: 'Frank', last_name: 'Smith', email: 'frank.smith@test.com')
mentor_2 = Mentor.find(21)
MentorEnrollmentAssignment.find_by(mentor_id:21)
Enrollment.find(61)
Student.find(21)
student = Student.find(21)
enrollment = Enrollment.create(course_id:11, student_id: student.id)
MentorEnrollmentAssignment.create(mentor_id: mentor_2.id, enrollment_id: enrollment.id)
Trimester.find_by(year: '2026')
coding_classes = CodingClass.all
spring = Trimester.find_by(year: '2026')
coding_classes.each{|coding_class| Course.create(coding_class_id:coding_class.id, trimester_id: spring.id, max_enrollment: 200)}

ANSWER 2

fe = Student.last 
spring.courses
Course.joins(:coding_class).where(coding_class:{title: 'Intro to Programming'})
fe_course = Course.find(spring.id)
Course.joins(:coding_class).where(trimester_id: spring.id, coding_class: {title:"Intro to Programming"})