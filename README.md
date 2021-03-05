# LemonPY

LemonPY is an easy to use web framework. It is meant to be a simple, low fuss, batteries included framework. It is a fun escape from the complications of modern web application development. 

The framework API is simple enough to be learned in 5 mins and easy enough to code on an iPad. All code is written in python and the client markup is generated from the server side. Ngrok is built in for remote development and sharing your apps with your friends without having to stand up server infrastructure. 

The UI takes cues from text only systems such as a unix terminal and 3270. Pages are built around the concept of "Forms" (web pages) and "Components" (text only GUI elements). The client side UI automatically adjusts its font size based on the amount of room in the browser window. Components are positioned absolutley given X and Y positions.

## Install

1. Create a project folder (GIT, SVN, Plain Folder, etc...)
2. curl https://lemonpy.dev | sh
3. Modify/Create forms! Profit!!!

## Running
./LEMON.py 
	-a change the admin user password, if not supplied a password is autogenerated.
	-n 

## API Reference

### Form

Files containing a Form are contained in the forms directory. These are python files that get executed at runtime. File names should follow the convention "NameForm.py" with the name of the form with no spaces, followed by "Form.py".

```
Form
	# Title of the Form (webpage)
	self.title = ""
	# Array contaning components
	self.fields = []
	# How wide in em the form is
	self.width = 80
	# How tall in em the form is
	self.height = 32
	# Should scaling be turned on
	self.is_scaled = True
```

### Text Modifiers

#### Color Values
```
Colors.
	RED = "#FF0000"
	TEAL = "#BCFEFD"
	GREEN = "#40F85A"
	PURPLE = "#7992F9"
	NORMAL = "#FEFEFE"
	YELLOW = "#FFFF00"
	BLUE = "#0000FD"
```

#### TextColor

```
TextColor(text, color = "initial")
```

#### TextMultiLine

```
TextMultiLine(text, color = "initial")
```

#### TextBold

```
TextBold(text)
```

### Components

#### TextBar

```
TextBar(
	text, 
	width, 
	name = None, 
	x = 0, y = 0):
```

#### Text (label)

```
Text(
	text, 
	name = None, 
	x = 0, y = 0)
```

#### TextField

```
TextField(
	label, 
	color=None, 
	value="", 
	field_length=10, 
	placeholder="", 
	is_password=False, 
	name = None, 
	x = 0, y = 0):
```

#### PaswordField

```
PasswordField(
	label, 
	value="", 
	field_length=10, 
	placeholder="", 
	name = None, 
	x = 0, y = 0)
```