# Set page
bg = new BackgroundLayer
    backgroundColor: "#858f9e"
    
title = new Layer
	html: "<p style='font-size:medium'>Click on the purple dude to animate.</p>"
	width: 600
	backgroundColor: no
	
# Create Layers
layerA = new Layer
	name: "pform1"
	width: 80
	height: 8
	backgroundColor: "#242939"
	borderRadius: 2
layerB = layerA.copy()
layerB.name = "pform2"
layerC = layerA.copy()
layerC.name = "pform3"

pform1 = layerA
pform2 = layerB
pform3 = layerC
pform4 = layerA.copy()
pform4.name = "pform4"

pform5 = layerA.copy()
pform5.name = "pform5"

pform6 = layerA.copy()
pform6.name = "pform6"

pform7 = new Layer
	name: "pform1"
	width: 120
	height: 8
	backgroundColor: "#242939"
	borderRadius: 2

corner1 = new Layer
	name: "corner1"
	width: 16
	height: 80
	rotation: 45
	backgroundColor: "#242939"
	
pot = new Layer
	name: "pot"
	image: "images/chemicalpot.png"
	width: 50
	height: 50
	
knife = new Layer
	name: "knife"
	image: "images/knife.png"
	width: 30
	height: 40
	
batt = new Layer
	name: "batt"
	image: "images/battery.png"
	width: 50
	height: 50
	
bttn = new Layer
	name: "bttn"
	image: "images/btn_inactive.png"
	width: 20
	height: 10
	
you = new Layer
	image: "images/standing1.png"
	width: 40
	height: 60

clone = new Layer
	image: "images/standingclone.png"
	width: 40
	height: 60

clone1 = clone
clone2 = clone.copy()
clone3 = clone.copy()

# Position Layers
pform1.centerX()
pform1.x -=180 
pform1.centerY()
pform1.y-=160

hardx = 310

clone1.x = hardx
clone1.centerY()
clone1.y-=190

pform2.centerX()
pform2.centerY()
pform2.y-=160

clone2.centerX()
clone2.x = hardx + 190
clone2.centerY()
clone2.y-=190

pform3.centerX()
pform3.x +=180
pform3.centerY()
pform3.y-=160

clone3.centerX()
clone3.x = hardx + 360
clone3.centerY()
clone3.y-=190

pform4.centerX()
pform4.x -=90
pform4.y = 200

knife.centerX()
knife.x -=100
knife.y = 160

pform5.centerX()
pform5.x +=90
pform5.y = 200

pot.centerX()
pot.x +=90
pot.y = 150

pform6.centerX()
pform6.centerY()

pform7.centerX()
pform7.x +=250
pform7.centerY()

bttn.centerX()
bttn.x += 260
bttn.centerY()
bttn.y -= 8

corner1.centerX()
corner1.x -=250
corner1.centerY()
corner1.y -= 60

batt.centerX()
batt.centerY()
batt.y += 175

you.centerX()
you.x -=80
you.y = 420


# Easing Animation Curve 
                
animationA = new Animation
	layer: layerB
	properties:
        rotation: 45
    curve: "ease"
        

# Spring Curve Animation with Delay
# Tension, Friction, Velocity (Bounciness, Weight, Wind-Up)
# layerB.animate 
# 	properties:
# 		rotation: 90
# 		borderRadius: 6
# 	curve: "spring(200,30,0)"
# 	delay: 1

you.states.add
	one:
		x: you.x-80
	two:
		x: you.x-160
	three: opacity: 1
	four: opacity: 1
	five:
		x: you.x-175
	six:
		x: you.x-110
	seven:
		x: you.x-160
	eight: opacity: 1
	nine: opacity: 1
	ten: opacity: 1
	eleven: opacity: 0

clone1.states.add
		one:
			x: clone1.x+90
			y: clone1.y+70
		two:
			x: clone1.x + 180
			y: clone1.y + 160
		three: opacity: 1
		four: opacity: 1
		five:
			x: clone1.x + 210
		six:
			x: clone1.x + 130
			y: clone1.y + 350
		seven:
			x: clone1.x + 170
		eight: opacity: 0
		nine: opacity: 0
knife.states.add
	one:
		x: knife.x
	two:
		x: knife.x + 90
		y: knife.y + 80
	three:
		rotation: -90
		x: knife.x - 140
	four:
		rotation: -180
		y: knife.y + 280
	five: opacity: 1
	six:
		x: knife.x - 80
	seven:
		x: knife.x - 130
	eight: opacity: 1
	nine:
		y: knife.y + 70
		rotation: 0
	ten:
		x: knife.x+350
		rotation: 90
	eleven: opacity: 0 		
clone2.states.add
	one:
		x: clone2.x+90
		y: clone2.y+70
	two: opacity: 0
		
clone3.states.add
	one:
		x: clone3.x+90
		y: clone3.y+160
	two:
		x: clone3.x + 130
	three: opacity: 1
	four: opacity: 1
	five: opacity: 1
	six:
		x: clone3.x + 50
	seven:
		x: clone3.x + 90
	eight: opacity: 1
	nine: opacity: 1
	ten: opacity: 1
	eleven: opacity: 0

you.on Events.Click, ->
	this.states.next("one","two", "three", "four", "five", "six","seven","eight","nine","ten","eleven")
	clone1.states.next("one","two", "three", "four","five", "six","seven", "eight","nine")
	clone2.states.next("one","two")
	clone3.states.next("one","two", "three", "four", "five","six","seven","eight","nine","ten","eleven")
	knife.states.next("one","two","three","four", "five", "six", "seven","eight","nine","ten","eleven")

