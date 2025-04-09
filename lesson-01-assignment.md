Q1 Answer 

Trimester.find_by(year: '2025', term: 'Spring')
course = Course.find_by(trimester_id: 5)
coding_class = CodingClass.find(course.coding_class_id)
enrollment = Enrollment.find_by(course_id: course.id)
enrollment = Enrollment.where(course_id: course.id)
enrollment = Enrollment.where(course_id: course.id).limit(2)

enrollment.each do |e|
    puts e.student.id, e.student.email
end

Q2 Answer

enrollment = Enrollment.where(course_id: course.id, final_grade: nil).limit(2)
mentor_assignments = MentorEnrollmentAssignment.where(enrollment_id: enrollment.pluck(:id))
mentor_ids = mentor_assignments.pluck(:mentor_id)
mentors = Mentor.where(id: mentor_ids)

mentors.each do |mentor|
    puts mentor.id, mentor.email
end