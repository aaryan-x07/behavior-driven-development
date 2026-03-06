Feature: CLassGroups

Scenario: Create Course CLassGroup
Given: User is logged in as a Training Admin
When: User clicks on Trainings
AND selects Training
AND clicks on the Create Training CLassGroup
AND fills all the Mandatory Details
AND submits the form
Then: the Training classgroup is created successfully

Scenario:Edit classgroup
Given: User is logged in as a Training Admin
AND a training classgroup is created
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND click on the edit icon
AND change the desired fields
AND clicks on the save button
Then: the Training classgroup is created successfully

Scenario:Add student to classgroup- UI
Given: User is logged in as a Training Admin
AND a training classgroup is created
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND click on the students icon
AND click on add students
AND selects students present in the list
AND clicks on the Save button
Then: the students are added to the classgroup successfully

Scenario: Add student to classgroup- excel
Given: User is logged in as a Training Admin
AND a training classgroup is created
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND click on the students icon
AND click on upload students
AND uploads an excel with mandatory values
AND clicks on the Save button
Then: the students are added to the classgroup successfully

Scenario: Downloading Reports
Given: User is logged in as a Training Admin
AND a training classgroup is created
AND a class is present with Completed status
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND clicks on the Download icon
AND Clicks on Download Attendance OR Reports OR Activities Reports
Then: the desired reports are generated for the classgroup successfully

Scenario: Validate the Faculties count
Given User is logged in as a Training Admin
AND a training classgroup is created
And the database contains a known number of added faculties for the class CLassGroup
When User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
Then the UI should display a Faculty count of "<count>"
And the displayed count should match the result of SELECT COUNT(*) FROM members


Scenario: Add Curriculum 
Given: User is logged in as a Training Admin
AND a training classgroup is created
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND navigates on the Curriculum section
AND clicks on add Curriculum
AND selects Week OR Exam OR Break
AND Fill all relevant details
AND click on the save button
Then: the desired curriculum is added for the classgroup successfully


Scenario: Edit Curriculum 
Given: User is logged in as a Training Admin
AND a training classgroup is created
AND a curriculum is added 
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND navigates on the Curriculum section
AND clicks on edit curriculum
AND clicks on the Edit button for the desired section
AND Make the desired changes
AND click on the save button
Then: the desired curriculum is edited for the classgroup successfully

Scenario: Expand Curriculum 
Given: User is logged in as a Training Admin
AND a training classgroup is created
AND a curriculum is added 
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND navigates on the Curriculum section
AND clicks on expand curriculum OR downward-poining arrow for a specific section
Then: the desired curriculum is expanded
AND all details are visible

Scenario: Link classes & Activities to Curriculum 
Given: User is logged in as a Training Admin
AND a training classgroup is created
AND a curriculum is added 
AND activities, classes , tests are created with future dates 
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND navigates on the Curriculum section
AND clicks on add Curriculum
AND selects Week
AND Fill all relevant details
AND click on the save button
THEN: the user clicks on the + icon
AND fill all details
AND selects link [CLass OR Activity OR Test] from the dropdown
Then: the desired classes or activities or tests are linked to the curriculum

Scenario: Validate the curriculum data with classes and activities
Given User is logged in as a Training Admin
AND a training classgroup is created
AND a curriculum with linked values is created
And the database contains a known values of added classes & activities for the class CLassGroup
When User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND clicks on Curriculum
Then the UI should display the curriculum with linked data
And the displayed data should match the result of SELECT * FROM classes and activities


Scenario: Delete Curriculum 
Given: User is logged in as a Training Admin
AND a training classgroup is created
AND a curriculum is added 
When: User clicks on Trainings
AND selects Training
AND clicks on the created Training CLassGroup
AND navigates on the Curriculum section
AND clicks on edit curriculum
AND clicks on the delete button for the desired section
AND click on the save button
Then: the desired curriculum is deleted for the classgroup successfully


