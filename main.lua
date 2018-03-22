-- Title: Numeric TextField
-- Name: Nice Mena
-- course: ICS20/3C
-- this program displays a math question and asks the user to answer in a numeric textfield
-- teminal

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- Sets the background colour
display.setDefault("background",177/255, 66/255, 199/255)

-- 	LOAL VARIABLES 

-- create local local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

--LOCAL FUNCTIONS

local function AskQuestion ()
	-- generate 2 random numbers between a amax an a min number
	randomNumber1 = math.random(10, 20)
	randomNumber2 = math.random(10, 20)
	correctAnswer = randomNumber1 + randomNumber2
    
    -- create a question in the text object
    questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

end

local function NumetricFieldlistener(event)
	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

	-- clear text field 
	event.target.text = ""

   elseif event.phase == "submitted" then 

   	-- when the answer is is submitted (enter jey is pressed) set user input to user's answer

   userAnswer= tonumber(event.target,text)

   -- if the user's answer and the correct answer are the same: 
      if (userAnswer == correctAnswer) then
      	correctObject.isvisble = true
      	timer.performWithDelay(2000, HideCorrect)
      end
   end
end

-- OBJECT CREATION
-- displays a question and sets the colour
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setText