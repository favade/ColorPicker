a) Describe the two size classes in iOS.
 regular: interface has lots of space.
compact: interface has only limited space.

b) What is Continuous Learning, and why is it important in mobile development?
Continuous learning is keeping up with the everchanging techologies in software development and contining to upskill and learn them. It is important in mobile development because it is a ever-changing field and to be competitive you must continiously learn

c) How can you find out what modifiers a View has?
Developer Documentation, Xcode Shortcut(Click + Option Key), Using xcode to fill in some modifiers when calling the class method i.e .(fill
                                                                                                                                        (stroke

d) What is a breakpoint?
Stops the apps' exceution at whatever line the developer sets it at. Useful for debugging

e) How can you access environment values in your App?
@Environment \. 

f) How can you determine, in code, if the App is in Dark or Light Mode?
environment color scheme variable and some control flow

g) Why are magic numbers an issue, and how should you avoid them?
Knowing what the number represents is difficult, Enums solve this

h) How can you view your App in Light and Dark Modes simultaneously?
Xcode preview options, Before you could set it in xcode 14 programmatically with the .prefferedMode(.dark) now there is a preview option for color schemes

i) Below is an image of the Canvas from Xcode. The Canvas is in selectable mode. Can you explain why the red background does not cover the entire button area?
The red background is only set on the text. So it goes as wide as the text's space

j) Modifier padding(10) adds padding to the view's top, bottom, left, and right sides. How could a padding of 10 be added to only the left and right sides of the view? The answer for this question should be a short section of code.
.padding(.left, .right)

k) Provide two reasons why you would want to extract views.
Code Modularity, Code Reusability 

l) How can you determine, in code, if the device is in Portrait or Landscape mode?
Xcode preview orientation mode

m) What is a literal value?
A Magic number, The value cant be determined just looking at it. 0 would be a literal value

o) What are the safe areas?
Iphone specific areas, Battery icon etc would be in the safe area spot

p) This line of code was in the lesson on animation. Can you state in English what the line means?
.frame(width: wideShapes ? 200 : 100)
if the width is a wideshape make it 200 width if not make it 100

q) Describe the two transitions you were introduced to in this week’s lesson.
scale, opacity

r) In Bullseye, the Game struct is what type of object?
Game

s) What are SFSymbols?
Apple icons

t) What is the difference between “step into” and “step over " in the debugger?”
Step over steps over the breakpoint line and continues to the rest of the code, which step into stops there and continues iteration before and at the step into.

u) Name some items you would place in the Asset Catalog (Assets.)
App icon, Accentcolors, TextColors

v) How do you change the Display Name of your app?
Bullseye project settings -> target -> general -> identity -> displayname
