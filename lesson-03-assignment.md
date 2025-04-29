1. What tables do you need to add? topics table, lesson_topics Decide on table names and their associations to each other and any existing tables/models.

2. What columns are necessary for the associations you decided on? lesson_id, topic_id

3. What other columns (if any) need to be included on the tables? tags
 What other data needs to be stored? tags

4. Write out each table's name and column names with data types.
Topics:
SQL
Data Modeling
Javascript
CSS
Automated Testing
Debugging
Web Request Cycle
HTTP

Lesson_Topics: ID
Tags: string

5. Determine the generator command you'll need to create the migration file and run the command to generate the empty migration file. Start with just the topics migration. (Hint: your filename should be create_topics)
bin/rails generate migration create_topics

6. Inside the create_table block in the migration file, add the appropriate columns and datatypes.
create_table "topics", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

7. Run the migration with bin/rails db:migrate (in a terminal window, not a rails console). Watch the output and make sure it is successful before moving on. (You can check the database to see if your table exists.)
8. Add the Topic model before moving on.
bin/rails db:migrate

9. Now determine the generator command you'll need to create the migration file for the join table. Don't forget that it should begin with create_ and be followed by the table name.
bin/rails generate migration create_lesson_topics

10. Inside the create_table block, add associations to topics and lessons with t.references :topic and t.references :lesson

11. Run the migration.
      t.references :lessons, foreign_key: true
      t.references :topics, foreign_key: true
      
12. If the migration run was successful, create the model for your join table (be sure the name matches Rails conventions).

13. Open the console and test your new models by creating the topics above and adding them to some lessons.

