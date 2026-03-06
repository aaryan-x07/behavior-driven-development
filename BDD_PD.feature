Feature: Placement Drives

Scenario: Create Placement Drives
Given: User is logged in as a Placement Team Member
When: User clicks on Placement Console
AND selects Placement Events
AND clicks on the Add Placement button
AND fills all the Mandatory Details
AND submits the form
Then: the placement drive is created successfully

Scenario: Enable ET in Placement Drives
Given: User is logged in as a Placement Team Member
And has created a Placement drive
When: User clicks on Placement Console
AND selects Placement Events
AND clicks on the created placement drive
AND clicks on Position Details Button
AND click on add new Position
AND fills all mandatory details 
AND clicks on the save button
Then: The user clicks on ET button
AND clicks on yes
Then the Event tracker is enabled for the drive 

Scenario: Adding a new position in Placement Drives
Given: User is logged in as a Placement Team Member
And has created a Placement drive
When: User clicks on Placement Console
AND selects Placement Events
AND clicks on the created placement drive
AND clicks on Position Details Button
AND click on add new Position
AND fills all mandatory details 
AND clicks on the save button
Then A new position is added

Scenario: Download a Placement Drive as a PDF
Given: User is logged in as a Placement Team Member
And has created a Placement drive
When: User clicks on Placement Console
AND selects Placement Events
AND clicks on the created placement drive
AND clicks on Download as PDF
AND clicks on Download
THEN the placement drive is downloaded as a PDF

Scenario: Adding Rounds to a Placement drive
Given: User is logged in as a Placement Team Member
And has created a Placement drive 
AND ET is enabled for the drive
When: User clicks on Placement Console
AND selects Placement Events
AND clicks on the created placement drive
AND clicks on Process Details
AND Selects round type
AND enter round name
AND clicks on save button
THEN the rounds are added to the placement drive

Background:
GIven User is logged in as a Placement Team Member
And has created a Placement drive 
AND ET is enabled for the drive
AND Eligible courses are selected for the drive
Scenario: Enable Open Registration for a Placement Drive
When: User clicks on Placement Console
AND selects Placement Events
AND clicks on the created placement drive
AND clicks on Registration Details
AND Fill all mandatory details
AND selects Enable open Registrations Link
AND clicks on save button
THEN the Open Registration are enabled for the drive

Background:
Given User is logged in as a Placement Team Member
And has created a Placement drive 
AND ET is enabled for the drive
AND Eligible courses are selected for the drive
AND Registrations are enabled for the drive
AND students are present in the other students list
Scenario: Mark students as eligible for a Placement Drive
When: User clicks on Placement Console
AND selects Placement Events
AND clicks on the created placement drive
AND clicks on the students list 
AND selects students from the other students list
AND clicks on the mark as eligible Button
THEN the students are marked as eligible 
AND students are moved from other students list to eligible list


Background:
Given User is logged in as a Placement Team Member
And has created a Placement drive 
AND ET is enabled for the drive
AND Eligible courses are selected for the drive
AND Registrations are enabled for the drive
AND students are present in the eligible
AND rounds have been added for the placement drive
Scenario: Mark students as eligible for a Placement Drive
When: User clicks on Placement Console
AND selects Placement Events
AND clicks on the created placement drive
AND clicks on the students list 
AND selects students from the eligible students list
AND clicks on the move to stage button
AND select a stage 
AND click save
THEN the students are moved to the selected stage 
