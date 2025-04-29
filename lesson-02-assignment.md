ANSWER 1

Trimester.find_by(year: '2026')
coding_classes = CodingClass.all
spring = Trimester.find_by(year: '2026')
coding_classes.each{|coding_class| Course.create(coding_class_id:coding_class.id, trimester_id: spring.id, max_enrollment: 200)}re

ANSWER 2

mentor_2 = Mentor.find(21)
MentorEnrollmentAssignment.find_by(mentor_id:21)
Enrollment.find(61)
fe = Student.last 
Student.find(fe.id)
student = Student.find(fe.id)
enrollment = Enrollment.create(course_id:11, student_id: student.id)
MentorEnrollmentAssignment.create(mentor_id: mentor_2.id, enrollment_id: enrollment.id)
spring.courses
Course.joins(:coding_class).where(coding_class:{title: 'Intro to Programming'})
fe_course = Course.find(spring.id)
Course.joins(:coding_class).where(trimester_id: spring.id, coding_class: {title:"Intro to Programming"})

ANSWER 3

Who are the users of your application? Church members
Do you have different types of users or different roles? Yes, Admins, Members, Worship team, Cleaning crew
What are the core user scenarios or features of your app? Scheduling/ Managing
These could be statements like...  
"A user can Volunteer" 
"A user Block out days" 
"A user can Scheduling"
Or if it makes more sense for your idea, you might describe some process or flow...for example:
"List to see upcoming dates, Be able to open up calendar and see future dates"

Consider sketching some wireframes for the main or more complex screens of your app.
When you do this, think of what data you'll need to display on each page.
Write your description in the 

Admins:
Name
Position (worship leader, cleaning crew leader, admin leader)

Members:
Name
Team
Role
Availability

User Roles:
Members_id
Role_id

Role:
Worship_team
Cleaning_team

Worship team:
Name
Instrument
Availability


ANSWER 4
Start by just listing out what you think the "nouns" or tables (or models) will be in your application.
Roles, Worship team, Members, Admins
What are the things you talk about when you describe the application? Scheduling members or team members
Now think about the data each of these things will hold. Some of these may be attributes or columns, but be on the lookout for data that may be associations with other "nouns".
Create an ERD to visualize your tables and data.
Don't worry too much about following ERD creation rules exactly. Just list table names and column names.
Do try to follow Rails naming conventions here. If you figure this out now and note them in your ERD or your plan, it will be easier for you when creating your migrations and models.
Do your best, but know that this is a starting point for collaboration between you and your mentors. When designing a data model on a software team, often more than one developer collaborate on the design together. You should plan to iterate on your design and expect feedback and input from your mentors.

