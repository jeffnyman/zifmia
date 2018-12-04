"Adventure" by William Crowther, ported by Chris Conley

[	This is intended to be a faithful Inform 7 port of Crowther's original Colossal Cave,
	the game that inspired Woods to make a version of his own and launched a new medium.	]

The story headline is "Colossal Cave". 
The story genre is "Fantasy". 
The story creation year is 1976. 
The release number is always 4.
The release subnumber is always 3.

[	In release 4.3, I have: 
	 - fixed the 'optional have' printed phrase and adaptive text regarding dwarves and the axe;
	 - adaptified the jewelry's initial appearance text and other instances of the word "here";
	 - corrected 'a food' when taking inventory;
	 - corrected Y2, darkness, and Window on Pit descriptions to match the original text;
	 - corrected initial appearance of the lamp (lantern);
	 - corrected missing maze dead end cardinal exits (wow!)
	 - added chapter headings in Part IV - The Parser										]

Use no deprecated features. 
Use BRIEF room descriptions. 
Use no scoring. 
[Use memory economy.]

Release along with a website and the source text.

BOOK ONE - ALTERATIONS

Part I - Directions

Chapter 1 - New directions

upstream is a direction. The opposite of upstream is downstream.
downstream is a direction. The opposite of downstream is upstream.

forward is a direction. The opposite of forward is back. 
	Understand "continue/onward/onwards/forwards" as forward.
back is a direction. The opposite of back is forward.

Chapter 2 - Old directions

Understand "inward/inwards" as inside. 

Understand the command "exit" as something new.
	Understand "exit/leave" as outside.

Understand "upward/upwards/above" as up.

Understand "downwards/downward" as down.

Part II - Verbs

Chapter 0 - Unlocking and locking (adapted from Locksmith by Emily Short)

Section 0.1 - regular unlocking

Understand the command "unlock" as something new. 
Understand "unlock [something] with [something]" as unlocking it with. 

The right second rule is listed instead of the can't unlock without the
correct key rule in the check unlocking it with rulebook.

This is the right second rule:
	if the second noun does not unlock the noun:
		say "I don't know how to lock or unlock such a thing. " (A) instead.

Section 0.2 - unlocking keylessly

Understand "unlock [something]" as unlocking keylessly.

Unlocking keylessly is an action applying to one thing.
The unlocking keylessly action has an object called the key unlocked with.

Check an actor unlocking keylessly (this is the check keylessly unlocking rule):
	abide by the can't unlock without a lock rule;
	abide by the can't unlock what's already unlocked rule;
	now the key unlocked with is the second noun.

Carry out an actor unlocking keylessly (this is the standard keylessly unlocking rule):
	if the person asked is the player:
		say "(with [the key unlocked with])[command clarification break]" (A);
	try the person asked unlocking the noun with the key unlocked with.

Section 0.3 - regular locking

Understand the command "lock" as something new. 
Understand "lock [something] with [something]" as locking it with. 

The right second rule is listed instead of the can't lock without the correct
key rule in the check locking it with rulebook.

Section 0.4 - locking keylessly

Understand "lock [something]" as locking keylessly.

Locking keylessly is an action applying to one thing.
The locking keylessly action has an object called the key locked with.

Check an actor locking keylessly (this is the check keylessly locking rule):
	abide by the can't lock without a lock rule;
	abide by the can't lock what's already locked rule;
	abide by the can't lock what's open rule;
	now the key locked with is the second noun.
	
Carry out an actor locking keylessly (this is the standard keylessly locking rule):
	if the person asked is the player:
		say "(with [the key locked with])[command clarification break]" (A);
	try the person asked locking the noun with the key locked with.
	
Chapter 1 - Providing synonyms for some verbs

Understand "go to/towards/toward/by/along/through" or "goto" as "[goto]". 
	Understand "[door]", "go [door]", "[goto] [door]" as entering.

Understand "extinguish [something]" as switching off.
	Understand the command "off" as "extinguish". 

Understand the command "stab" as "attack".

Understand the commands "travel" or "proceed" or "explore"
 or "follow" as "go".

Understand the command "lift" as "unlock". 

Chapter 2 - Unimplementing many verbs

Understand the commands "adjust", "answer", "ask", "attach", "awake",
 "awaken" as something new.
Understand the commands "burn", "buy" as something new.
Understand the commands "chop", "clear", "consult", "cross", "cut",
 "climb" as something new. 
[Advent only uses "climb" for movement between a couple of rooms,
 so there is no need for a general-purpose climbing verb;
 it only clutters up those simple cases.]
Understand the commands "display", "drag", "disrobe", "doff",
 "don" as something new.
Understand the command "embrace" as something new.
Understand the commands "fasten", "feed", "feel" as something new.
Understand the command "give" as something new.
Understand the commands "hear", "hug" as something new.
Understand the command "insert" as something new.
Understand the command "kiss" as something new.
Understand the command "listen" as something new.
Understand the command "move" as something new.
Understand the command "offer" as something new.
Understand the commands "pay", "present", "press", "prune", "pull",
 "purchase", "push" as something new.
Understand the commands "read", "remove", "rotate" as something new.
Understand the commands "say", "scale", "screw", "search", "set", "shift",
 "shout", "show", "sit", "slice", "sleep", "smell", "sniff", "sorry", "speak",
  "squash", "squeeze", "stand", "swing" as something new.
Understand the commands "taste", "tell", "think", "tie",
 "twist" as something new.
Understand the commands "uncover," "unscrew" as something new.
Understand the commands "wake", "wreck" as something new.
Understand the commands "y", "yes" as something new.

Chapter 3 - Simplifying other verbs

[	Inform's default entering behavior unnecessarily complicates
	 a simple movement keyword from the original.				]
Understand nothing as entering.
	Understand "enter" as going. 

Understand the command "take" as something new. 
	Understand "take [things]" as taking. 
	Understand "take inventory" as taking inventory.

Understand the commands "carry", "wear", "get" as something new.
	Understand "get [things]" as taking.
	Understand the commands "keep", "pickup", "carry", "catch",
	 "steal", "capture", "find", "wear", "where" as "get".

Understand nothing as dropping.
	Understand "drop [things preferably held]" as dropping.
	Understand the command "discard" as something new.
	Understand the commands "discard", "release", "free",
	 "dump" as "drop".

Understand the command "light" as something new. 
	Understand "light [something]" as switching on. 
	Understand the command "on" as "light". 
	
[	Waiting isn't original, but it's so fundamental in modern IF that >WAIT 
	 might as well perform the same function as >LOOK.					]
Understand the commands "l", "wait", "z" as something new.
	Understand "look" as looking. 
	Understand the commands "l", "wait", "z" as "look".
	Understand "look at [something]", "l at [something]",
	 "look [something]", "l [something]" as examining.

Understand nothing as waving.
	Understand "wave [something]" as waving.
	Understand the commands "calm", "shake", "cleave" as "wave". 
	
Understand nothing as touching.
	Understand the command "touch" as "examine".

Understand the commands "open", "close" as something new.
	Understand the command "open" as "unlock".
	Understand the command "close" as "lock".
	[The original made no distinction between locked and closed,
	 nor between open and unlocked.] 
	
Understand the commands "nothing" and "hold" as something new. 
	Understand "nothing", "hold" as thinking.
	Thinking about is an action applying to one thing. 
		Understand "hold [something]" as thinking about. 
		Instead of thinking about something, try thinking.
		[No, "hold" is not synonymous with "get".
		 They provoke the same response, too. A bit misleading.]

Understand the command "put" as something new. 
	Understand "put down [things preferably held]"
	 and "put [things preferably held] down" as dropping.
	[The other "put" syntax in Inform involves wearing, containers,
	and supporters, none of which are modeled in this early ADVENT.]
	
Understand nothing as turning.
	Understand "turn [something] on"
	 and "turn on [something]" as switching on.
	Understand "turn [something] off"
	 and "turn off [something]" as switching off.
	[These syntaxes are fine for switching on and off,
	 but the action of turning, as in rotating something, is unimplemented.]

Chapter 4 - Extending the remaining verbs

Section 4.1 - looking
	
[	The room description should be displayed at the end of certain turns.	]
look later is a truth state that varies.  
	When play begins, we should look later.
	Before going nowhere, we should look later.
	After going, going by keyword, retreating:
		we should look later.

Every turn when we should look later, try looking. 

The looking action has a truth state called looked intentionally. 

[	By default, assume the looking action is player-intended; rules can
	indicate otherwise by stating "we should look later". There's no
	other way to tell the two situations apart...							]
Setting action variables for looking: 
	we have looked intentionally unless we must look later.

[	...and it's the only way to know whether to issue this reminder (that
	closely examining objects is not implemented):						]
Before looking when we have looked intentionally,
	say "Sorry, but I am not allowed to give more detail. I will repeat the long description of [our] location."

After looking, we no longer must look later.
	
Section 4.2 - examining
		
[	The original did not allow examining anything, just printed the above
	error message. There's no useful information to be gleaned from things
	in this simple world model, anyway.									]
Instead of examining something which is not a backdrop, try looking.

Does the player mean doing something other than examining to a backdrop:
	it is unlikely.

Section 4.3 - dropping

[	Crowther always displayed the initial appearance of everything in a room.	]
After dropping something:
	now the noun is not handled;
	continue the action.

Part III - Kinds

A room is usually dark.

[	Basically, the first time you enter a room, and every 5th round thereafter,
	 Crowther prints the long description rather than the short one. 
	 Yes, this value is calculated for every room and stored for the entire game.	]
Every room has a number called the description print count. 

Every room has a text called the short description. 
To decide whether (R - a room) lacks a short description:
	if the short description of R is "", decide yes;
	otherwise decide no.

Part IV - Rules

Chapter 1 - Darkness and light

[	The player didn't look around after turning on the lamp in the original.	]
Rule for printing the announcement of light: do nothing. 
	
Rule for printing the announcement of darkness: do nothing.

Chapter 2 - Hints

[	A few hints are provided after failing to solve specific puzzles --
	but only after provoking 3 parser errors in a row.				]
The count of sequential parser errors is a number that varies.

The first after printing a parser error rule: 
	increment the count of sequential parser errors. 

[	Every turn rules only fire after a command has been successfully parsed;
	this means that an error message was not just printed,
	and so we can reset the number of error messages printed in a row.		]
Every turn: now the count of sequential parser errors is 0.

To pose the question (proposition - a text)
 with affirmative response (hint text - a text):
	if the count of sequential parser errors is 3:
		now the count of sequential parser errors is 0;
		say "[line break][proposition][paragraph break]  ";
		if the player consents:
			say "[hint text][paragraph break]";
		otherwise:
			say "OK."
	
Chapter 3 - Crowther's messages

To say confusion:
	if a random chance of 1 in 5 succeeds:
		say "I don't understand that! ";
	otherwise if a random chance of 1 in 5 succeeds:
		say "What? ";
	otherwise:
		say "I don't know that word. "

To say dunno: 
	say "I don't know how to apply that word here. ";
	we will look later.

To say infromout: 
	say "I don't know in from out [here]. Use compass points or name something in the general direction you want to go. ";
	we will look later.

To happen is a verb.
To say nothinghap: 
	say "Nothing [happen].";
	we will look later.

Section 3.1 - you must name something more substantial

The basic accessibility rule response (A) is "[dunno]".

Section 3.2 - eating

The can't eat unless edible rule response (A) is "[There] [are] nothing [here] to eat."
The standard report eating rule response (A) is "Eaten!"

Section 3.3 - taking

The standard report taking rule response (A) is "OK."
The can't take other people rule response (A) is "[serious]".
The can't take what's fixed in place rule response (A) is "[serious]".
The can't take what's already taken rule response (A) is "[We] [are] already carrying [regarding the noun][them]! ".
To say serious: say "You can't be serious! ".

Section 3.4 - dropping

The can't drop what's not held rule response (A) is "[We] [aren't] carrying [regarding the noun][them]!"
The standard report dropping rule response (A) is "OK."

Section 3.5 - going

The can't go that way rule response (A) is "[if the noun is sixfold]There [are] no way to go that direction.[otherwise if the noun is inside or the noun is outside][infromout][otherwise][dunno][end if]".
The block vaguely going rule response (A) is "Where? ".

Definition: a direction is sixfold
 if it is north
 or it is south
 or it is east 
 or it is west
 or it is up
 or it is down.

Section 3.6 - taking inventory

The print empty inventory rule response (A) is "[We] [are] carrying nothing."
[The print standard inventory rule response (A) is "[We] [are] carrying:[line break]".]
The list writer internal rule response (D) is "lit".

Section 3.7 - misc

The parser error internal rule response (B) is "All I understood was you wanted to ".
The parser error internal rule response (E) is "[confusion]".
The parser error internal rule response (H) is "[We] [can] only [parser command so far] one thing at a time. ".
The parser error internal rule response (K) is "[confusion]".
The parser error internal rule response (N) is "I don't know that word. ".
The parser error internal rule response (R) is "[confusion]".
The parser error internal rule response (U) is "[confusion]".
The parser error internal rule response (V) is "[confusion]".
The parser error internal rule response (X) is "[confusion]".
The parser nothing error internal rule response (B) is "[dunno]".
The parser clarification internal rule response (E) is "[Parser command so far] what? ".
The yes or no question internal rule response (A) is "Please respond yes or no. "

The can't reach inside rooms rule response (A) is "[confusion]".

The report rubbing rule response (A) is "Peculiar. Nothing unexpected [happen]. ".

The block drinking rule response (A) is "There [are] no drinkable water [here]. ".

The can't exit when not inside anything rule response (A) is "[infromout]".

The report jumping rule response (A) is "[dunno]".

The block thinking rule response (A) is "OK."

The report waving things rule response (A) is "[nothinghap]".

Chapter 4 - Room headings and descriptions 

[	First, an abbreviation for [roman type] to mark the end of the
	boldfacing at the start of all of the room descriptions.					]
To say /b -- running on: (- style roman; -). 
	
[	These next two rules obviously modify two rules from the Standard
	Rules, to change the way the looking action prints the name and
	description of a previously visited room in BRIEF mode only.			]

Section 4a - room headings

Crowther's room description heading rule is listed instead of
 the room description heading rule in the carry out looking rulebook.

[	Normally this rule does nothing -- unless the game is in the 
	default BRIEF mode, and the room has a short description provided,
	and the number of times the room has been described is not an
	even multiple of 5. In that case, it prints the short description.		]
This is the Crowther's room description heading rule:
	say bold type;
	if the visibility level count is 0:
		begin the printing the name of a dark room activity;
		end the printing the name of a dark room activity;
	otherwise if the visibility ceiling is the location:
		if the description print count of the location is 5:
			now the description print count of the location is 0; 
			[To prevent overflow.]
		if set to abbreviated room descriptions and
		 we haven't looked intentionally:
			say "[visibility ceiling]";
		if set to sometimes abbreviated room descriptions:
			if we have looked intentionally
			 or the description print count of the location is 0
			 or the location lacks a short description:
				say "";
			otherwise:
				say the short description of the location;
	unless we have looked intentionally
	 or the description print count of the location is 0
	 or the location lacks a short description:
		say line break;
	say run paragraph on with special look spacing.

Section 4b - room descriptions

To proceed is a verb.

Crowther's room description body text rule is listed instead of
 the room description body text rule in the carry out looking rulebook.

[	If the heading rule has printed the short description, this second
	rule does nothing; otherwise this rule prints the long description.	]
This is the Crowther's room description body text rule:
	if the visibility level count is 0:
		begin the printing the description of a dark room activity;
		if handling the printing the description of a dark room activity:
			now the prior named object is nothing;
			say "[It] [are] [now] pitch black. If [we] [proceed] [we] [will likely fall] into a pit.[/b]" (A);
		end the printing the description of a dark room activity;
	otherwise if the visibility ceiling is the location:
		if we have looked intentionally:
			say "[description of the location][line break]";
			continue the action;
		if set to abbreviated room descriptions:
			say roman type;
			continue the action;
		if set to sometimes abbreviated room descriptions
		 and the location is visited:
			increment the description print count of the location;
			if the description print count of the location is 1
			 or the location lacks a short description: 
				say "[description of the location][line break]";
			otherwise: 
				say roman type;
			continue the action;
		otherwise:
			increment the description print count of the location;
			say "[description of the location][line break]";
			
To say will likely fall:
	if the story tense is:
		-- present tense: say "will likely fall";
		-- past tense: say "would likely fall";
		-- future tense: say "will likely fall";
		-- perfect tense: say "will have likely fallen";
		-- past perfect tense: say "would have likely fallen";

Chapter 5 - Closing, locking, unlocking

The can't lock what's already locked rule is not listed in the check locking it with rulebook.  
The can't lock what's open rule is not listed in the check locking it with rulebook.

The can't unlock what's already unlocked rule is not listed in the check unlocking it with rulebook. 

Chapter 6 - Switching on, switching off

The can't switch on what's already on rule is not listed in the check switching on rulebook.
The can't switch off what's already off rule is not listed in the check switching off rulebook.

Chapter 7 - Going west

[	Suggesting an abbreviation for a command;
	 one of the more obscure features of the original.	]
The full west count is a number that varies.

After reading a command
 when the player's command exactly matches the regular expression "west":
	unless the full west count is 10:
		increment the full west count;
	otherwise:
		say "If you prefer, simply type w rather than west.";
	continue the action.

BOOK TWO - LOCATIONS

Part I - Outdoors

Sylvan relates one room to various rooms. 
	The verb to be forestwise from implies the sylvan relation. 
	The verb to lead forestwise to implies the reversed sylvan relation.
Depressive relates one room to various rooms. 
	The verb to be depressive from implies the depressive relation.
Buildwise relates one room to various rooms. 
	The verb to be buildwise from implies the buildwise relation. 
	The verb to lead buildwise to implies the reversed buildwise relation.
 
A keyword is a kind of value.
	The keywords are defined by the Table of Keywords.

Table of Keywords
Name	Relevant relation
fores	the sylvan relation
depression	the depressive relation
bld	the buildwise relation

Understand "depressed" as depression. 
Understand "build/building/house" as bld. 
Understand "forest" as fores.

Chapter 1 - Road

To flow is a verb. 

End of Road is a room. 
	"[We] [are] standing at the end of a road[/b] before a small brick building. Around [us] [regarding it][are] a forest. A small stream [regarding it][flow] out of the building and down a gully." 
	The short description is "[We]['re] at End of Road again."

To slope is a verb.

Hill in Road is west from End of Road. 
	"[We] [singular have] walked up a hill,[/b] still in the forest. The road [now] [regarding it][slope] back down the other side of the hill. There [are] a building in the distance." 
	The short description is "[We]['re] at Hill in Road."
	Forward is End of Road.
	End of Road is buildwise from Hill in Road.
	Down from Hill in Road, north from Hill in Road,
	 and back from Hill in Road are west from End of Road.
	[North, down, and back in Hill in Road are non-symmetrical map connections:
	 south, up, and forward in End of Road do not lead back to Hill in Road.]
	Understand "road" as east when the location is Hill in Road. 
	Understand "road" as west when the location is End of Road.
	
Chapter 2 - Building

The Building is east from End of Road. 
	"[We] [are] inside a building,[/b] a well house for a large spring." 
	The short description is "[We]['re] inside Building."
	Outside is End of Road.
	Building is buildwise from End of Road.
	
	Instead of going downstream in the Building:
		say "The stream [flow] out through a pair of 1 foot diameter sewer pipes. It [would are] advisable to use the door."
		
	Understand "outdoor/outdoors" as outside
	 when the location is the Building.
	 [The only place "outdo" is recognized in the original.]
	Understand "door/gate" as west when the location is the Building. 
	Understand "stream" as downstream when the location is the Building.
	Understand "door/gate" as east when the location is End of Road. 
		
	[	This next rule allows the verb ">ENTER" to travel between 
		End of Road and Building; anywhere else, it acts as a 
		synonym for "go".										]
	Rule for supplying a missing noun when going
	 and the player's command includes "enter":
		if the location is End of Road, now the noun is east instead;
		if the location is Building, now the noun is west instead;
		continue the action.
		
	Some keys are in the building. "[There] [regarding keys][are] some keys on the ground [here]."
	
		To say nokeys: say "[We] [have] no keys!"
	
		The first check locking keylessly rule: 
			if the location does not enclose the keys, say nokeys instead. 
		The first check unlocking keylessly rule: 
			if the location does not enclose the keys, say nokeys instead.
	
		Before unlocking keylessly the keys,
			say "[We] [can't unlock] the keys." instead.
	
		Rule for supplying a missing second noun 
		 when unlocking something with, locking something with:
			now the second noun is the keys.

	The lamp is a device in the building. 
		"[There] [are] a shiny brass lamp nearby." 
		Understand "headlamp" as the lamp. 
		
		After switching on the lamp:
			now the lamp is lit; say "[Our] [lamp] [are] [now] on." 
			
		After switching off the lamp:
			now the lamp is not lit; say "[Our] [lamp] [are] [now] off." 
			
		To happen is a verb.
		Instead of rubbing the lamp,
			say "Rubbing the electric lamp [are not] particularly rewarding. Anyway, nothing exciting [happen]." 
			
		Does the player mean switching on the lamp: it is very likely. 
		Does the player mean switching off the lamp: it is very likely. 

		After reading a command
		 when the player's command matches "light"
		 and the location does not enclose the lamp:
			say "[We] [have] no source of light."; stop the action.

	The food is an edible, ambiguously plural thing in the Building. 
		"There [are] food [here]."
		Understand "ration/rations" as the food. 
		The indefinite article is "some".
		
	A bottle is a thing in the Building with printed name "bottle of water". 
		"There [are] a[if the bottle is empty]n[end if] [bottle] [here]."
		The bottle can be empty or full. 
		Understand "water" and "bottle of water" as the bottle
		 when the bottle is full.
		 
		Instead of drinking the full bottle:
			empty the bottle saying "The bottle of water [are] [now] empty." 
			
		Instead of pouring the bottle:
			empty the bottle saying "[Our] bottle [regarding bottle][are] empty and the ground [are] wet." 
			[No, pouring the bottle doesn't fail if it's already empty. 
			 The message technically works in either case.] 
		
		To empty the bottle saying (T - a text): 
			now the bottle is empty; 
			now the printed name of the bottle is "empty bottle";
			say T.
			
Chapter 3 - Valley

The Valley is south from End of Road. 
	"[We] [are] in a valley[/b] in the forest beside a stream tumbling along a rocky bed."
	The short description is "[We]['re] in Valley."
	Upstream is End of Road.
	Downstream from End of Road,
	 down from End of Road are north from Valley.
	Understand "gully/stream" as south when the location is End of Road. 
	
Chapter 4 - Forests

A forest is a kind of room. A forest is usually privately-named. 
	The printed name of a forest is usually "Forest".
	The short description of a forest is usually "[We]['re] in Forest."
	Understand "valley" as down when the location is a forest.

Forest 1 is a forest, south from Hill in Road. 
	"[We] [are] in open forest,[/b] with a deep valley to one side." 
	East, down is Valley. West, south is Forest 1. 
	Forest 1 is north from End of Road, forestwise from Valley,
	 forestwise from End of Road, and forestwise from Hill in Road.
	East from Valley is east from Forest 1.
	Instead of going west in Forest 1, we must look later.
	Instead of going south in Forest 1, we must look later.

Forest 2 is a forest, north of Forest 1. 
	"[We] [are] in open forest[/b] near both a gorge and a road." 
	North is the End of Road. East, west, down is the Valley.
	Forest 2 is forestwise from Forest 1, forestwise from Forest 2.
	Forward from Forest 1, back from Forest 1 are south from Forest 2.
	Instead of going to Forest 2 from Forest 1
	 when a random chance of 1 in 2 succeeds, we must look later.
	
Chapter 5 - Slit in streambed

The Slit in Streambed is south of the Valley. To splash is a verb.
	"At [our] feet all the water of the stream[/b] [regarding it][splash] into a 2 inch slit in the rock. Downstream the streambed [are] bare rock." 
	The short description is "[We]['re] at Slit in Streambed."
	North, upstream is the Valley. West, east is Forest 1. 
	Streambed is below the Valley. Up is nowhere.
	Streambed leads forestwise to Forest 1. 
	It leads buildwise to End of Road.
	
	To fit is a verb.
	Before going down in Streambed: 
		we will look later; 
		say "[We] [don't fit] down a two inch hole!" instead.
		
	Understand "stream/slit" as down when the location is Streambed. 
	Understand "bed/rock/streambed" as south
	 when the location is Streambed.
	[The original would parse "streambed" as "strea" and so print the
	 "two inch hole" error message, but considering the word appears
	 in the room description, allowing it seems fair.]
	
Chapter 6 - Outside the grate
	
Stream's End is south from Streambed.  To lead is a verb.
	"[We] [are] in a 20 foot depression[/b] floored with bare dirt. Set into the dirt [regarding it][are] a strong steel grate mounted in concrete. A dry streambed [lead] into the depression."
	The short description is "[We]['re] Outside Grate." The printed name is "Outside Grate".
	North and upstream is Streambed. South, east, west is Forest 1. 
	Down from Streambed is north from Stream's End.
	Stream's End leads forestwise to Forest 1. 
	It leads buildwise to End of Road.
	Stream's End is depressive from End of Road
	 and depressive from Valley.
	Understand "gully" as north when the location is Stream's End. 
	
	Rule for supplying a missing noun when going
	 and the player's command includes "enter"
	 and the location is Stream's End: now the noun is down instead.

	The grate is a locked, closed, lockable door unlocked by the keys. The grate is down from Stream's End. 
		"[The grate] [are] [if open]open[otherwise]locked[end if]." 
		Before going inside in Stream's End, try going down instead. 
		Before going downstream in Stream's End,
			try going down instead. 
		Before going through the locked grate: 
			we will look later; 
			say "[We] [can't go] [if the location is Stream's End]in [end if]through a locked steel grate!" instead. 
		
		Unlocking keylessly the locked grate is attempting entry. 
		Unlocking the locked grate with is attempting entry. 
		Before attempting entry when the location encloses the keys: 
		[The original was forgiving in its world model.]
			now the grate is open; 
			now the grate is unlocked; 
			say "[The grate] [are] [now] unlocked." instead.
		
		Locking keylessly the unlocked grate is cave-sealing. 
		Locking the unlocked grate with is cave-sealing. 
		Before cave-sealing when the location encloses the keys: 
			now the grate is closed; 
			now the grate is locked; 
			say "[The grate] [are] [now] locked." instead.
		
		Unlocking keylessly the unlocked grate is acting ungrateful. 
		Unlocking the unlocked grate with is acting ungrateful. 
		Locking keylessly the locked grate is acting ungrateful. 
		Locking the locked grate with is acting ungrateful. 
		Before acting ungrateful when the location encloses the keys: 
			say "The grate was already [if the grate is unlocked]un[end if]locked." instead.
		
		Does the player mean unlocking keylessly the grate: it is likely. 
		Does the player mean locking keylessly the grate: it is likely.

		Rule for supplying a missing noun when locking keylessly,
		 unlocking keylessly, locking something with,
		 unlocking something with:
			if the grate is in the location, now the noun is the grate;
			otherwise say "There [are] nothing [here] with a lock!" instead.

		After printing a parser error when the locked grate is in the location,
		 pose the question "Are you trying to get into the cave? "
		 with affirmative response "The grate is very solid and has a hardened steel lock. [We] [cannot enter] without a key, and there [regarding them][are] no keys nearby. I would recommend looking elsewhere for the keys."

Part II - Cave Preamble

Xyzzy-link relates one room to another. 
	The verb to be xyzzy-linked with implies the xyzzy-link relation.
Pitwise relates one room to various rooms. 
	The verb to be pitwise from implies the pitwise relation.
Debrisness relates one room to various rooms. 
	The verb to be debrisward from implies the debrisness relation.

Table of Keywords (continued)
Name	Relevant relation
xyzzy	the xyzzy-link relation
pit-word	the pitwise relation
debrisroom	the debrisness relation

Understand "debris" or "debris room" as debrisroom. 
Understand "pit" as pit-word.

Chapter 1 - Below the grate

The Entryway is a privately-named room, inside from the grate. 
	The description is "[We] [are] in a small chamber[/b] beneath a 3x3 steel grate to the surface. A low crawl over cobbles [regarding it][lead] inward to the west."
	The short description is "[We]['re] Below the Grate." 
	The printed name is "Below the Grate".
	Instead of going by keyword bld in Entryway, try going outside.
	
Chapter 2 - Cobble crawl

Cobble Crawl is west of Entryway. 
	"[We] [are] crawling over cobbles[/b] in a low passage. [There] [are] a dim light at the east end of the passage." 
	The short description is "[We]['re] in Cobble Crawl."
	Outside is Entryway. 
	Understand "surface/null/nowhere" as outside
	 when the location is Cobble Crawl.
	Understand "cobble/crawl" and "cobble crawl" as west
	 when the location is Entryway.

	A small wicker cage is in the Cobble Crawl. 
		"There [are] a small wicker cage discarded nearby."
	
Chapter 3 - Debris room

The Debris Room is inside from Cobble Crawl. To become is a verb. To say is a verb.
	"[We] [are] in a debris room,[/b] filled with stuff washed in from the surface. A low wide passage with cobbles [regarding it][become] plugged with mud and debris [here], but an awkward canyon [lead] upward and west.[paragraph break]A note on the wall [say] [']Magic word XYZZY[']." 
	The short description is "[We]['re] in Debris Room."
	East is Cobble Crawl. Outside is nowhere.
	Building is xyzzy-linked with Debris Room. 
	Stream's End is depressive from Debris Room. 
	Debris Room is debrisward from Entryway,
	 debrisward from Cobble Crawl.
	Understand "passage/passageway" as "[passa]". 
	Understand "[passa]" and "low/crawl/cobble" and "cobble crawl"
	 as east when the location is Debris Room. 
	Understand "dark" as inside when the location is Cobble Crawl. 

	A black rod is in Debris room. To lie (he lies, they lie, he lay, it is lain, he is lying) is a verb.
		"A three foot [black rod] with a rusty star on an end [lie] nearby."
	
Chapter 4 - Awkward sloping canyon

The Awkward Sloping East/West Canyon is west of Debris Room. 
	"[We] [are] in an awkward sloping east/west canyon.[/b]".
	Down is Debris Room. 
	Inside from Debris Room is east from Awkward Sloping.
	Stream's End is depressive from Awkward Canyon. 
	Debris Room is debrisward from Awkward Canyon.
	Understand "canyon" as west when the location is Debris Room.
	
Chapter 5 - Bird chamber

The Bird Chamber is west of the Awkward Canyon. In Bird Chamber are a scenery, privately-named, plural-named thing called walls. To exit is a verb.
	"[We] [are] in a splendid chamber[/b] thirty feet high. The [walls] [are] frozen rivers of orange stone. An awkward canyon and a good passage [exit] from east and west sides of the chamber." 
	The short description is "[We]['re] in Bird Chamber."
	Inside from Awkward Canyon, up from Awkward Canyon
	 are east from Bird Chamber.
	Stream's End is depressive from Bird Chamber. 
	Debris Room is debrisward from Bird Chamber.
	Understand "canyon" as east when the location is Bird Chamber.

	A little bird is a thing in the Chamber. 
		"A cheerful [little bird] [are] sitting [here] singing."
		
		To approach is a verb. To catch is a verb.
		Check taking the little bird when the little bird is not held: 
			if the player carries the rod,
				say "The bird was unafraid when [we] entered, but as [we] [approach] [it] [become] disturbed and [we] [cannot catch] it." instead;
			if the player does not carry the cage,
				say "[We] [can catch] the bird, but [we] [cannot carry] it." instead;

		To try is a verb.
		After printing a parser error when the little bird is in the location
		 and the rod is carried, 
		 pose the question "Are you trying to catch the bird? "
		 with affirmative response "The bird [are] frightened right [now] and [we] [cannot catch] it no matter what [we] [try]. Perhaps [we] [might try] later."

		To disappear is a verb.
		Before attacking the little bird:
			say "[The little bird] [are] [now] dead. Its body [disappear].";
			now the little bird is nowhere;
			stop the action.
			
Chapter 6 - Top of small pit

The Top of Small is west of the Bird Chamber. To end is a verb.
	"At [our] feet [regarding it][are] a small pit[/b] breathing traces of white mist. An east passage [end] [here] except for a small crack leading on." 
	The short description is "[We]['re] at Top of Small Pit." 
	The printed name is "Top of Small Pit".
	Stream's End is depressive from Top of Small. 
	Debris Room is debrisward from Top of Small.
	Top of Small is pitwise from Entryway, pitwise from Cobble Crawl,
	 pitwise from Debris Room, pitwise from Awkward,
	 and pitwise from Bird Chamber. 
	 
	Instead of going west in Top of Small, 
		say "The crack [are] far too small for [us] to follow." 
		
	Understand "[passa]" as east when the location is Top of Small. 
	Understand "crack" as west when the location is Top of Small.
	Understand "[passa]" as west when the location is Bird Chamber.
	
	Some rough stone steps are an open unopenable door, below the Top of Small. 
		"Rough stone steps [regarding steps][lead] [if the location is Top of Small]down into the pit[otherwise]up the dome[end if]." 
		
		Instead of going by keyword pit-word in Top of Small,
			try going down.

Part III - Hall of Mists, East

Chapter 1 - The hall

The Hall of Mists is west from the steps. To blow is a verb.
	"[We] [are] at one end of a vast hall[/b] stretching forward out of sight to the west. There [regarding them][are] openings to either side. Nearby, a wide stone staircase [regarding it][lead] downward. The hall [are] filled with wisps of white mist swaying to and fro almost as if alive. A cold wind [blow] up the staircase. There [are] a passage at the top of a dome behind [us]."  
	The short description is "[We]['re] in Hall of Mists."
	Instead of going by keyword pit-word in Hall of Mists, try going east. 
	Instead of going up in Hall of Mists, try going east.
	Understand "dome" and "[passa]" as east when the location is Mists. 
	
Chapter 2 - Nugget of gold room

The Nugget of Gold Room is south from the Hall of Mists. 
	"This [are] a low room[/b] with a crude note on the wall. [It] [say] [']You won't get it up the steps[']." 
	The short description is "[We]['re] in Nugget of Gold Room."
	Outside from Nugget Room,
	 back from Nugget Room are south from Hall of Mists.
	Understand "hall" as north when the location is Gold Room.
	Understand "left" as south when the location is the Hall of Mists. 

	The sparkling gold nugget is in the Gold Room. 
		"There [are] a sparkling nugget of gold [here]!"
		Understand "sparkling/-- nugget of gold" as the gold nugget.
		[Later code puts every thing in scope;
		 to avoid spurious "Which did you mean?" messages,
		 the nugget is code-named without the word "of".]
	
		Before going through the steps
		 when the sparkling nugget is carried:
			we will look later;
			if the location is Hall of Mists,
				say "The dome [are] unclimbable." instead;
			if the location is Top of Small,
				end the story saying "[We]['re] at the bottom of the pit with a broken neck."
				[Originally, this death was bugged: after going down the steps
				 with the nugget, the original printed "I don't understand that!"
				 in an endless loop. Woods' version corrected this.] 

Chapter 3 - East bank of fissure

The East Bank of Fissure is west from the Hall of Mists. 
	"[We] [are] on the east bank of a fissure[/b] slicing clear across the hall. The mist [regarding it][are] quite thick [here], and the fissure [are] too wide to jump." 
	The short description is "[We]['re] on East Bank of Fissure."
	East Bank is forward from the Hall of Mists.
	Understand "hall" as east when the location is the East Bank. 
	Understand "hall" as west when the location is Hall of Mists. 

	The fissure-door is a privately-named, closed, unopenable scenery door,
	 west from the East Bank. To span is a verb.
		The initial appearance is "A crystal bridge [now] [span] the fissure." 
		The printed name is "fissure".
		
		Does the player mean doing something with the fissure-door: 
			it is unlikely.
			
		Instead of jumping in East Bank, try going west. 
		Instead of going inside in the East Bank, try going west. 
		
		Before going through the closed fissure-door: 
			we will look later; 
			say "There [are] no way across the fissure." instead. 
			
		Instead of going forward in the East Bank, 
			end the story saying "Game is over". 
			[That's right, "forward" killed the player here, even with the bridge.
			 Might as well keep it; it's an obscure action anyway.] 
			 
		Understand "fissure" as the fissure-door. 
		Understand "bridge" as the fissure-door
		 when the fissure-door is open. 
		Understand "magic/over/across" as west
		 when the location is the East Bank. 
		
		Instead of striking the fissure-door: 
			now the fissure-door is open;
			now the fissure-door is not scenery;
			say "[initial appearance of the fissure-door][line break]".
	
Part IV - Mountain King's Domain

Y2ness relates one room to one room. 
	The verb to be Y2wards from implies the Y2ness relation.
Plugh-linkage relates one room to another. 
	The verb to be plugh-linked with implies the plugh-linkage relation.

Table of Keywords (continued)
Name	Relevant Relation
plugh	the plugh-linkage relation
whytoo	the Y2ness relation

Understand "y2" as whytoo.

Chapter 1 - Hall of the mountain king

The Hall of Mt King is below the Hall of Mists. "[We] [are] in the Hall of the Mountain King,[/b] with passages off in all directions."
	The short description is "[We]['re] in Hall of Mt King."
	East from the Hall of Mt King is north from the Hall of Mists.
	Understand "stair/stairs/staircase" as "[stair]". 
	Understand "[stair]" as east when the location is Mt King. 
	Understand "[stair]" as down when the location is Mists. 

	To bar is a verb.
	The huge green fierce snake is an animal in Mt King. "[A huge green fierce snake] [bar] the way!"
	
		Going north in Mt King is moving dangerously. 
		Going west in Mt King is moving dangerously. 
		Going south in Mt King is moving dangerously. 
		Going forward in Mt King is moving dangerously. 
	
		To get by is a verb.
		Before moving dangerously when the snake is obvious: 
			we will look later; 
			say "[We] [can't get by] the snake." instead.
	
		To work is a verb.
		Instead of attacking the snake: 
			say "Attacking the snake both [don't work] and [are] very dangerous." 
	
		To drive is a verb. To attack is a verb.
		Instead of dropping the little bird when the snake is obvious:
			say "[The little bird] [attack] the green snake, and in an astounding flurry [drive] the snake away."; 
			now the snake is nowhere; 
			now the little bird is in Mt King;
			now the little bird is not handled.

	To kill is a verb. To avoid is a verb.
	After printing a parser error when the snake is in the location,
	 pose the question "Are you trying to attack or avoid the snake? "
	 with affirmative response "[We] [can't kill] the snake, or [drive] it away, or [avoid] it, or anything like that. [There] [are] a way to get by, but [we] [don't have] the necessary resources right now."
	
Chapter 2 - Low passage

The Low N/S Passage is north from Mt King. 
	"[We] [are] in a low N/S passage[/b] at a hole in the floor." 
	Outside from the Low Passage is north from Mt King. 
	Understand "hall" as south when the location is Low Passage. 
	Understand "hole" as down when the location is Low Passage.
	Understand "left" as north when the location is Mt King. 

	Some silver bars are in the Low Passage. "[There] [regarding bars][are] bars of silver [here]!"
		Understand "bars of silver" as the silver.
	
Chapter 3 - Side chambers

The South Side Chamber is south from Mt King. 
	"[We] [are] in the south side chamber.[/b]".
	Outside from South Side Chamber is south from Mt King. 
	Understand "hall" as north when the location is South Chamber.
	Understand "right" as south when the location is Mt King. 

	Some precious jewelry is in the South Chamber. "There [are] precious jewelry [here]!"

The West Side Chamber is west from Mt King. To continue is a verb.
	"[We] [are] in the west side chamber[/b] of Hall of Mt King. A passage [regarding it][continue] west and up [here]."
	Outside from West Side Chamber is west from Mt King. 
	Forward from Mt King is east from West Side Chamber.
	Understand "hall" as east when the location is West Chamber.

	Some coins are in the West Chamber. "There [regarding coins][are] many coins [here]!"	
	
Chapter 4 - Y2 area

Y2 is north from N/S Passage. 
	"[We] [are] in a large room,[/b] with a passage to the south, a passage to the west, and a wall of broken rock to the east. [There] [are] a large [']Y2['] on a rock in rooms center." 
	The short description is "[We]['re] at Y2."
	Y2 is plugh-linked with Building.
	After looking in Y2 when a random chance of 1 in 4 succeeds:
		say "A hollow voice [say] 'Plugh'." 

Down from Jumble of Rock is east from Y2. 
	"[We] [are] in a jumble of rock,[/b] with cracks everywhere."
	Above is Hall of Mists.
	Y2wards from Hall of Mists is Jumble of Rock.
	Understand "wall/broken/broke" as east when the location is Y2. 

Window on Pit is west from Y2. 
	"[We] [are] at a window on a huge pit,[/b] which [regarding it][go] up and down out of sight. A floor [are] indistinctly visible over 50 feet below. Directly opposite [us] and 25 feet away [there] [are] a similar window." 
	The short description is "[We]['re] at Window on Pit."
	
	Instead of going by keyword whytoo in Window on Pit,
		try going east.

Chapter 5 - Rough tunnels

The Dirty Passage is below Low N/S Passage. 
	"[We] [are] in a dirty broken passage.[/b] To the east [regarding it][are] a crawl. To the west [are] a large passage. Above [us] [regarding it][are] a hole to another passage." 
	The short description is "[We]['re] in Dirty Passage."
	Understand "hole" as up when the location is Dirty Passage.

The Pit Ledge is east from the Dirty Passage. 
	"[We] [are] on the brink of a small clean climbable pit.[/b] A crawl [regarding it][lead] west."
	Understand "crawl" as west when the location is Pit Ledge.
	Understand "crawl" as east when the location is the Dirty Passage. 

Bottom of Pit is below the Pit Ledge. To enter is a verb.
	"[We] [are] on the bottom of a small pit[/b] with a little stream, which [regarding it][enter] and exit through tiny slits."
	Instead of going by keyword pit-word in Pit Ledge, try going down.
	Understand "climb" as up when the location is Bottom of Pit. 
	Understand "climb" as down when the location is Pit Ledge.

The Dusty Rock Room is west from the Dirty Passage.
	"[We] [are] in a large room full of dusty rocks.[/b] [There] [are] a big hole in the floor. [There] [are] cracks everywhere, and a passage leading east." 
	The short description is "[We]['re] in Dusty Rock Room."
	Understand "hole/floor" as down when the location is Dusty Room.

Part V - Hall of Mists, West

Chapter 1 - West side of mists

The West Side of the Fissure is inside from the fissure-door.
	"[We] [are] on the west side of the fissure[/b] in the Hall of Mists." 
	Instead of retreating in West of Fissure, try going outside.
	Understand "hall" as outside when the location is West Fissure. 
	[Probably an oversight, but "east" never leads across from the West Side
	 in the original.]

	[	The original doesn't mention the bridge when on the west side.	]
	Rule for choosing notable locale objects for West of Fissure: 
		set the locale priority of the fissure-door to 0;
		continue the activity. 
	
	There are some diamonds in West of Fissure. "[There] [regarding diamonds][are] [diamonds] [here]!"

West End of Hall of Mists is west from West Fissure. 
	"[We] [are] at the west end of Hall of Mists.[/b] A low wide crawl [regarding it][continue] west and another [go] north. To the south [are] a little passage 6 feet off the floor." 
	The short description is "[We]['re] at West End of Hall of Mists."

Chapter 2 - Low wide passages

[	Surprisingly enough, Crowther implemented the low wide passage
	as two different rooms, each north of a different room. Any movement
	verb teleports the player to the other place.							]

A low wide passage is a kind of room. 
	The printed name of a low wide passage is usually "Low Wide Passage". 
	The description of a low wide passage is usually "[We] [singular have] crawled through a very low wide passage[/b] parallel to and north of the Hall of Mists." 
	Every low wide passage has a room called the connected room.
	
	Instead of going, going by keyword, retreating
	 in a low wide passage (called the venue):
		move the player to the connected room of the venue,
		 without printing a room description;
		we must look later.

Low Wide Passage 1 is a low wide passage, north from West End of Mists. 
	The connected room is West Side of the Fissure.

Low Wide Passage 2 is a low wide passage, north from West Side of the Fissure. 
	The connected room is West End of Mists.
		
Chapter 3 - Long hall

East End of Long Hall is west from West End of Mists. To slant is a verb.
	"[We] [are] at the east end of a very long hall[/b] apparently without side chambers. To the east a low wide crawl [regarding it][slant] up. To the north a round two foot hole [slant] down."
	The short description is "[We]['re] at East End of Long Hall."
	Up is West End of Mists.
	Understand "crawl" as west when the location is West End of Mists. 

West End of Long Hall is west from East End of Long.
	"[We] [are] at the west end of a very long featureless hall.[/b]".
	Outside from West of Long is west from East of Long.

Part VI - A-mazing

A mazing room is a kind of room. 
	The printed name of a mazing room is usually "Maze".
	The description of a mazing room is usually "[We] [are] in a maze[/b] of twisty little passages, all alike."

A dead end is a kind of room. 
	The printed name of a dead end is usually "Dead End". 
	The description of a dead end is usually "Dead End[/b]".
	
Chapter 1 - Main maze

Maze 1 is a mazing room. West from Maze 1 is up from West End of Mists. 
	Instead of going south in West End of Mists, try going up. 
	[Positioning Maze 1 south from West End of Mists wrecks the Inform 7 index map.
	 Mapping Maze 1 up, instead, places the whole maze on a level above the rest of
	 the game world, producing a much more readable map.
	 This has no effect in-game, so we might as well.]
	Understand "climb" and "[passa]" as up
	 when the location is West End of Hall of Mists. 

Maze 2 is a mazing room, east of Maze 1.

Maze 3 is a mazing room, south of Maze 1.
	North is Maze 1. 
	East from Maze 3 is south from Maze 2.

Maze 4 is a mazing room. East from Maze 2 is north from Maze 4.
	Index map with Maze 4 mapped southeast from Maze 2.
	
Deadend 1 is a dead end, east from Maze 4. Outside from Deadend 1 is east from Maze 4.
Deadend 2 is a dead end, south from Maze 4. Outside from Deadend 2 is south from Maze 4.
Deadend 3 is a dead end, below Maze 3. Outside from Deadend 3 is below Maze 4.

Maze 5 is a mazing room.

Maze 6 is a mazing room, below Maze 5.
	West is Maze 5.
	East of Maze 6 is south of Maze 3. 
	Index map with Maze 6 mapped southwest of Maze 3.

Maze 7 is a mazing room. West from Maze 5 is west from Maze 7.

Maze 8 is a mazing room, south of Maze 6. 
	West is Maze 7.

Maze 9 is a mazing room. Above Maze 8 is north from Maze 9.
	West from Maze 9 is south from Maze 7.

Deadend 4 is a dead end. East from Deadend 4 is south of Maze 9. Outside from Deadend 4 is south of Maze 9.

Maze A is a mazing room, east of Maze 8.

Deadend 5 is a dead end, below Maze A. Outside from Deadend 5 is below Maze A.

Chapter 2 - End of the maze

Brink of Pit is east of Maze A. To climb is a verb. To get is a verb.
	"[We] [are] on the brink of a thirty foot pit[/b] with a massive orange column down one wall. [We] [could climb] down [here] but [we] [could not get] back up. The maze [regarding it][continue] at this level." 
	The short description is "[We]['re] at Brink of Pit."
	Down is Bird Chamber. Up from Bird Chamber is nowhere.
	Understand "climb" as down when the location is Brink of Pit.

Deadend 6 is a dead end. West of Deadend 6 is south of Brink of Pit.
	Outside from Deadend 6 is south of Brink of Pit.
	Index map with Deadend 6 mapped southeast of Brink of Pit.

Part VII - Under Construction

Crossness relates one room to one room. 
	The verb to be towards crossover from implies the crossness relation.
Bedquiltness relates one room to one room. 
	The verb to be towards bedquilt from implies the bedquiltness relation.
Slabness relates one room to one room. 
	The verb to be towards slabroom from implies the slabness relation.

Table of Keywords (continued)
Name	Relevant Relation
cross	the crossness relation
bedqu	the bedquiltness relation
slabroom	the slabness relation

Understand "slab" or "slab room" as slabroom. 
Understand "bedquilt" as bedqu. 
Understand "crossover" as cross.

To transport the player randomly to (main place - a room)
 with likelihood (MN - a number) or to (second place - a room):
	let destinations be MN copies of the main place;
	add the second place to destinations;
	go to a room at random from destinations.
	
To transport the player randomly to (main place - a room)
 with likelihood (MN - a number) or to (second place - a room)
 with likelihood (SN - a number) or to (third place - a room):
	let destinations be MN copies of the main place;
	add SN copies of the second place to destinations;
	add the third place to destinations;
	go to a room at random from destinations.
	
To decide what list of rooms is (N - a number) copies of (R - a room):
	let L be a list of rooms;
	repeat with X running from 1 to N:
		add R to L;
	decide on L.
		
To go to a room at random from (LR - a list of rooms):
	sort LR in random order;
	if entry 1 in LR is the location,
		say "[We] [singular have] crawled around in some little holes and wound up back in the main passage.";
	move the player to entry 1 in LR, without printing a room description;
	we must look later.
	
Chapter 1 - Crossover

The Crossover is west of the West Chamber.
	"[We] [are] at a crossover[/b] of a high N/S passage and a low E/W one."
	South is the Hall of Mists. 
	Crossover is below West Chamber. Up is nowhere.
	West from Crossover is down from East End of Long Hall,
	 north from the East End of Long Hall. 
	Crossover is towards crossover from Hall of Mists.
	
Deadend 7 is a dead end, north from Crossover. 
	Outside from Deadend 7 is north from Crossover.
	
Chapter 2 - Complex junction

Complex Junction is below Dusty Rock Room. To join is a verb.
	"[We] [are] at a complex junction.[/b] A low hands and knees passage from the north [regarding it][join] a higher crawl from the east to make a walking passage going west. There [are] also a large room above. The air [are] damp [here].[paragraph break]A sign in midair [here] [say] [']Cave under construction beyond this point. Proceed at own risk.[']". 
	Understand "climb/room" as up when the location is Complex Junction.
	
Chapter 3 - Bedquilt

Bedquilt is west from Complex Junction.
	"[We] [are] in Bedquilt,[/b] a long east/west passage with holes everywhere. To explore at random select north, south, up, or down." 
	Bedquilt is towards bedquilt from Dusty Rock Room.
	
	Instead of going south in Bedquilt: 
		transport the player randomly to Bedquilt with likelihood 4
		 or to Slab Room;
		rule succeeds.
		
	Instead of going up in Bedquilt: 
		transport the player randomly to Bedquilt with likelihood 8
		 or to Secret N/S Canyon with likelihood 1 or to Dusty Room; 
		rule succeeds.
	
Chapter 4 - Swiss room

Northeast from Swiss Cheese Room is west from Bedquilt. To resemble is a verb.
	"[We] [are] in a room whose [walls] [resemble] swiss cheese.[/b] Obvious passages [go] west, east, ne, and nw. Part of the room [regarding it][are] occupied by a large bedrock block." 
	The short description is "[We]['re] in Swiss Cheese Room."
	
	Instead of going north in Swiss Cheese: 
		transport the player randomly to Swiss Cheese with likelihood 6
		 or to Junction Canyon with likelihood 3 or to Large Low; 
		rule succeeds.
		
	Instead of going south in Swiss Cheese: 
		transport the player randomly to Swiss Cheese with likelihood 4
		 or to Tall Canyon; 
		rule succeeds. 
		[This last random movement actually existed in the original,
		 but could never execute; due to a buggy GOTO statement,
		 going south in Swiss crashed the program.]
	
Chapter 5 - Twopit area

The Twopit Room is west from Swiss Cheese. To make is a verb.
	"[We] [are] in the Twopit Room.[/b] The floor [here] [regarding it][are] littered with thin rock slabs, which [regarding them][make] it easy to descend the pits. [There] [are] a path [here] bypassing the the pits to connect passages from east and west. There [regarding them][are] holes all over, but the only big one [regarding it][are] on the wall directly over the east pit where [we] [can't get] to it." 
	The short description is "[We]['re] in Twopit Room."

The Large Low Room is northeast from Twopit.
	"[We] [are] in a large low room.[/b] Crawls [regarding them][lead] N, SE, and SW."

Dead End Crawl is north from Large Low. "Dead End Crawl.[/b]"

Chapter 6 - Slab room

The Slab Room is north from Swiss Cheese. To bend is a verb.
	"[We] [are] in a large low circular chamber[/b] whose floor [regarding it][are] an immense slab fallen from the ceiling (slab room). East and west there once were large passages, but [regarding them][they] [are] [now] filled with boulders. Low small passages [go] north and south, and the south one quickly [regarding it][bend] west around the boulders." 
	The short description is "[We]['re] in Slab Room."
	Slab Room is towards slabroom from Bedquilt.

Part VIII - Secrets

Secretness relates one room to one room. 
	The verb to be towards secret from implies the secretness relation.
Canyonness relates one room to one room. 
	The verb to be towards canyon from implies the canyonness relation.

Table of Keywords (continued)
Name	Relevant Relation
secre	the secretness relation
canyo	the canyonness relation

Understand "canyon" as canyo. Understand "secret" as secre.

Chapter 1 - Secret north/south canyon

Secret NS Canyon is above the Slab Room.
	"[We] [are] in a secret NS canyon[/b] above a large room." 
	Index map with Secret NS Canyon mapped southwest of West Side Chamber.
	
Chapter 2 - East/west canyon

West from E/W Canyon is south from Secret NS Canyon. To cross is a verb.
	"[We] [are] in Secret Canyon[/b] which [here] [regarding it][run] E/W. [It] [cross] over a very tight canyon 15 feet below. If [we] [go] down [we] [may not are] able to get back up." 
	The printed name is "Secret Canyon".
	East is Hall of Mt King.
	E/W Canyon is towards secret from the Hall of Mt King.
	Index map with E/W Canyon mapped southeast from Secret NS Canyon.
	
Chapter 3 - Secret canyon

The Junction Canyon is a room.
	"[We] [are] in Secret Canyon[/b] at a junction of three canyons, bearing north, south, and se. The north one [regarding it][are] as tall as the other two combined." 
	The printed name is "Secret Canyon".
	Up is Dusty Room. Southeast is Bedquilt. 
	Northwest from Bedquilt is nowhere.
	
Chapter 4 - Secret north/south Canyon

The Secret N/S Canyon is south from Junction Canyon.
	"[We] [are] in a secret N/S canyon[/b] above a sizable passage."

Chapter 5 - Wide place

The Wide Place is below E/W Canyon.
	"[We] [are] at a wide place[/b] in a very tight N/S canyon."
	Up is nowhere.

Too Tight is south from Wide Place. 
	"The canyon [here] [become] too tight[/b] to go further south." 

Chapter 6 - Tall east/west canyon

East from Tall E/W Canyon is north from the Wide Place. To seem is a verb.
	"[We] [are] in a tall E/W canyon.[/b] A low tight crawl [regarding it][go] 3 feet north and [seem] to open up." 
	North is Swiss Cheese Room. 
	Tall Canyon is towards canyon from Swiss Cheese.

South from Boulders is west from Tall Canyon. To run is a verb.
	"The canyon [run] into a mass of boulders[/b] - dead end."
	Index map with Boulders mapped southwest from Swiss.

Part IX - Multi-Room Handling

Chapter 1 - Backdrops

To detour is a verb.
Some trees are a backdrop. 
	The description is "The trees of the forest [regarding trees][are] large hardwood oak and maple, with an occasional grove of pine or spruce. [There] [are] quite a bit of undergrowth, largely birch and ash saplings plus nondescript bushes of various sorts. [This] time of year visibility [are] quite restricted by all the leaves, but travel [are] quite easy if [we] [detour] around the spruce and berry bushes." 
	They are in End of Road, Hill in Road, Forest 1, Forest 2, Valley,
	 Streambed, and Stream's End. 
	 
To say This:
	if the story tense is present tense or the story tense is perfect tense:
		say "This";
	otherwise:
		say "That".

The mistiness is a privately-named backdrop.
	The description is "Mist is a white vapor, usually water, seen from time to time in caverns. It [can are] found anywhere but is frequently a sign of a deep pit leading down to water." 
	It is in the Top of Small, Hall of Mists, East Fissure, and West Fissure.
	Understand "mist" as the mistiness.

Understand "[trees]" and "[mistiness]" as examining.
[	To allow >TREES and >MIST to simply print a block of text, as in the original.	]
	
The crawlability marker is a privately-named backdrop. 
	It is in West End of Mists, Dirty Passage, Pit Ledge, Entryway,
	 and Debris Room.
	[This allows ">CRAWL" alone to work as a movement keyword in certain areas,
	and elsewhere to function as a synonym for "go".]

Chapter 2 - Regions

Outdoors is a region. 
	End of Road, Hill in Road, Valley, Streambed, Stream's End, Forest 1,
	 and Forest 2 are in Outdoors. 
	End of Road, Hill in Road, Forest 1, Forest 2, Valley, Streambed,
	 Stream's End, Building, Entryway, and Cobble Crawl are lighted.

Preliminary Cave is a region. 
	Cobble Crawl, Bird Chamber, Awkward Canyon, Debris Room,
	 Top of Small, and Entryway are in Preliminary Cave.

Deep Cave is a region.

	Misty Area is a region in Deep Cave. 
		Hall of Mists, East Bank of Fissure, Gold Room, West Fissure,
		 West End of Mists, Low Wide 1, Low Wide 2, East of Long,
		 and West of Long are in Misty Area.

	Mountain King's Domain is a region in Deep Cave. 
		Hall of Mt King, Low N/S, Y2, West Chamber, South Chamber,
		 Crossover, Jumble of Rock, Window on Pit, and Deadend 7
		 are in King's Domain.

		Rough Tunnels is a region in Mountain King's Domain. 
			Dirty Passage, Pit Ledge, Dusty Room, and Bottom of Pit
			 are in Rough Tunnels.

	Mazy is a region in Deep Cave. 
		Maze 1, Maze 2, Maze 3, Maze 4, Maze 5, Maze 6, Maze 7, Maze 8,
		 Maze 9, Maze A, Deadend 1, Deadend 2, Deadend 3, Deadend 4,
		 Deadend 5, Deadend 6, and Brink of Pit are in Mazy.

	Construction is a region in Deep Cave. 
		Complex Junction, Bedquilt, Swiss Cheese, Twopit Room, Large Low,
		 Dead End Crawl, and Slab Room are in Construction.

	Secrets is a region in Deep Cave. 
		Secret NS Canyon, E/W Canyon, Junction Canyon, Secret N/S Canyon,
		 Wide Place, Too Tight, Tall Canyon, and Boulders are in Secrets.

BOOK THREE - FRUSTRATIONS

Part I - Defining the Obstacles

The dwarf clock is a number that varies.

The little axe is a thing. "[There] [are] a little axe [here]."
			
A dwarf is a kind of person. There are 3 dwarves. 
	The printed name of a dwarf is always "dwarf".
	A dwarf has a room called old location. 
	A dwarf has a number called patrol position. 
	A dwarf can be curious. [Following the player.]
	A dwarf can be angry. [Attacking this turn.]
	A dwarf can be victorious. [Successfully hit the player with a knife.]
	A dwarf can be killed. 
	The dwarf patrol route is a list of rooms that varies. 
		The dwarf patrol route is {Dirty Passage, Low N/S Passage, Hall of Mt King, West Side Chamber, Crossover, East End of Long Hall, West End of Mists, West of Fissure, East of Fissure, Hall of Mists, Hall of Mt King, Low N/S Passage, Dirty Passage, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road, End of Road}.
		[Surprisingly enough, the dwarves walk along a preset pattern,
		rather than appearing randomly as they do in later versions.]


[	Dwarves patrol the sequence staggered with only 1 room between them.	]
When play begins: 
	let N be 2; 
	repeat with D running through dwarves:
		now the patrol position of D is 2 plus N;
		increase N by 2.
	
Part II - Behavior

Chapter 1 - Of dwarves

To decide if the dwarves are awake:
	if the player has been in the Hall of Mists, decide yes;
	decide no.

To throw is a verb. To curse is a verb. 

[	Looking serves as Crowther's "Every turn" rule: all game logic is
	contained within one big loop after printing the room description.
	Any turn that doesn't produce a room description is effectively either
	a parser error or an action out of world.							]
Before looking: 
	if the dwarves are menacing and the axe is off-stage:
		if a random chance of 1 in 20 succeeds:
			move the little axe to the location;
			say "A little [random dwarf] [optional have]just walked around a corner, [participlate the verb see] [us], [participlate the verb throw] a little axe at [us] which [regarding the axe][optional have][participlate the verb miss], [participlate the verb curse], and [participlate the verb run] away.";
			now dwarf clock is 2;
		continue the action;
	otherwise if the axe is on-stage:
		update dwarf status.
		
To say optional have:
	if the story tense is:
		-- present tense: 
			stop;
		-- perfect tense:
			say "has ";
		-- past perfect tense:
			say "had ";
		-- otherwise:
			say "[have] ";
		
To say participlate (V - a verb) :
	if the story tense is:
		-- present tense:
			say "[adapt V in past tense]";
		-- otherwise:
			say "[past participle of V]";
		
To decide if the dwarves are menacing:
	if the dwarves are awake and (the player is in Deep Cave
	 or the new location is regionally in Deep Cave), decide yes;
	 otherwise decide no.
To decide if the dwarves do not menace:
	if the dwarves are menacing, decide no;
	otherwise decide yes.

The new location is a room that varies.

Setting action variables for going:
	if the noun is a direction:
		now the new location is the room noun from the location;
	otherwise if the noun is a door:
		now the new location is the other side of the noun.
		
Every turn: now the new location is the location.

[	This complex block of AI code is basically lifted wholesale from
	Crowther's FORTRAN implementation.						]
To miss is a verb. To hit is a verb.
To update dwarf status: 
	increment dwarf clock;
	repeat with D running through not killed dwarves:
		now D is not angry;
		if (patrol position of D + dwarf clock) is less than 9, next; 
		[Dwarves don't appear right away after being awakened.]
		if (patrol position of D + dwarf clock) is greater than 23
		 and D is not curious, next; 
		[Disable incurious dwarves after a while.]
		now the old location of D is the location of D;
		if D is not curious or the dwarves do not menace:
		[Each dwarf follows the patrol route when not following the player,
		 or after the player has left the main cave area.]
			move D to entry (patrol position of D + dwarf clock - 8)
			 of dwarf patrol route;
			if D is in End of Road, now D is nowhere; 
			[End of Road is a sentinel value indicating the end of the patrol.]
			now D is not curious;
			if D is not in the location and the old location of D is not the location:
				next; 
				[This dwarf hasn't found the player, so try the next dwarf.]
		now D is curious; 
		[This dwarf has found the player; time to start following!]
		move D to the location;
		if the old location of D is the location of D: 
		[The dwarf hasn't moved this turn, and so decides to attack.]
			now D is angry;
			if a random chance of 1 in 10 succeeds, now D is victorious;
	if there is a curious dwarf:
		say "There [if there is exactly one curious dwarf][regarding curious dwarves][are] a threatening little dwarf[otherwise][regarding curious dwarves][are] [number of curious dwarves] threatening little dwarves[end if] in the room with [us]!";
		if there is an angry dwarf:
			if there is exactly one angry dwarf,
				say "One sharp nasty knife [regarding angry dwarves][are] thrown at [us]!";
			otherwise say "[number of angry dwarves] of them [regarding angry dwarves][throw] knives at [us]!";
			if there is a victorious dwarf:
				if there is exactly one angry dwarf, say "He [get] [us]!";
				otherwise say "[number of victorious dwarves] of them [regarding victorious dwarves][get] [us].";
				end the story saying "Games over";
			otherwise:
				if there is exactly one angry dwarf, say "It [miss]!";
				otherwise say "None of them [hit] [us]!";
	continue the action.


[	The preceding rule has already printed the dwarves' presence and action lines,
	so the paragraph writing activity shouldn't mention them.					]
Rule for writing a paragraph about a dwarf: 
	repeat with D running through dwarves in the location: 
		set the locale priority of D to 0. 
	
To block is a verb.
Before going:
	let intended destination be a room;
	if the noun is a direction,
		let intended destination be the room noun from the location;
	if the noun is a door,
		let intended destination be the other side of the noun;
	repeat with D running through curious dwarves:
		if the intended destination is the old location of D:
			we will look later;
			say "A little dwarf with a big knife [block] [our] way." instead.
		
Chapter 2 - Towards dwarves

Does the player mean taking a dwarf: it is very unlikely.
Does the player mean attacking a dwarf: it is very likely.

The block attacking rule is not listed in any rulebook.

Check attacking when the noun is not a curious dwarf:
	say "There [are] nothing [here] to attack." instead.

[	Typing "> ATTACK" alone should work in the presence of dwarves.	]
Rule for supplying a missing noun when attacking:
	if a dwarf is curious, now the noun is a random curious dwarf;
	if a dwarf is in the location and the noun is nothing,
		now the noun is a random dwarf in the location.

To dodge is a verb.
Instead of attacking a dwarf (called the target):
	if a random chance of 6 in 10 succeeds:
		say "[We] killed a little dwarf.";
		now the target is killed;
		now the target is not curious;
		now the target is not angry;
		now the target is nowhere;
	otherwise:
		say "[We] [attack] a little [random dwarf], but he [dodge] out of the way.";
	we will look later.
	
BOOK FOUR - AUGMENTATIONS

Part I - Text

Chapter 1 - The introduction

print the intro is a truth state that varies. 
When play begins, we must print the intro.

After printing the banner text when we must print the intro: 
	we no longer must print the intro; 
	say "[line break]Welcome to Adventure!! Would you like instructions?[paragraph break]  "; 
	if the player consents:
		say line break;
		say "Somewhere nearby is Colossal Cave, where others have found fortunes in treasure and gold, though it is rumored that some who enter are never seen again. Magic is said to work in the cave. I will be your eyes and hands. Direct me with commands of 1 or 2 words.";
		say "(Errors, suggestions, complaints to Crowther)[line break](If stuck type HELP for some hints)";
		say paragraph break;
	otherwise:
		say line break;
	say "(Type ABOUT for details about this specific Inform 7 implementation.)";

Chapter 2 - Help

Understand "help" or "what" as requesting help. 
Requesting help is an action out of world applying to nothing. 
Carry out requesting help:
	say "I know of places, actions, and things. Most of my vocabulary describes places and is used to move [us] there. To move try words like forest, building, downstream, enter, east, west, north, south, up, or down. I know about a few special objects, like a black rod hidden in the cave. These objects can be manipulated using one of the action words that I know. Usually you will need to give both the object and action words (in either order), but sometimes I can infer the object from the verb alone. The objects have side effects - for instance, the rod scares the bird.
	[paragraph break]Usually people having trouble moving just need to try a few more words. Usually people trying to manipulate an object are attempting something beyond their (or my!) capabilities and should try a completely different tack.
	[paragraph break]To speed the game [we] can sometimes move long distances with a single word. For instance, [']building['] usually gets you to the building from anywhere above ground except when lost in the forest. Also, note that cave passages turn a lot, and that leaving a room to the north does not guarantee entering the next from the south. Good luck!"

[	This arcane block is to parse ">?" as ">HELP".	]
After reading a command: 
	let T be text; 
	let T be the player's command; 
	replace the regular expression "^\s*\?" in T with "help";
	change the text of the player's command to T. 
		
Chapter 3 - About

Understand "about" as requesting the about info. 
Requesting the about info is an action out of world. 
Carry out requesting the about info:
		say "This is release [no line break][release number].[no line break][release subnumber] of the Inform 7 version of Will Crowther's Adventure, ported by Chris Conley. 
		[paragraph break]I started this project for two reasons: first, to learn Inform 7; second, to create a source text that could serve as a useful reference for future learners. It's grown much larger than I'd originally planned, but I've gotten it now to a shape I'm happy with. 
		[paragraph break]My main design goal was to reproduce the output text and functional world model of Crowther's original program as closely as feasible, while still keeping most of the helpful features of a modern IF engine. So, features that don't detract from the core gameplay of the original, such as commands like UNDO and INVENTORY and a parser capable of understanding commands more complex than >VERB NOUN, remain implemented by default in this Inform version.
		[paragraph break]Credit is owed to Will Crowther and Don Woods, for obvious reasons; to Graham Nelson and Emily Short, for making this possible; to Dennis G. Jerz, for the original inspiration; to Ron Newcomb, for his comment style and more readable truth state naming conventions; to my testers, Cheryl Lewis, Paul Laroquod, Finn Rosenloev, Laura Still, Kelly Belz, Chelsea Donahue, and Tony Portillo; and to Owen Williams and Oskat Forest Park, for facilitating much of the initial work on this project.
		[paragraph break]For fun, try >CHANGE THE STYLE."
		
Chapter 4 - Changing style

Changing the style is an action out of world.
Understand "change the/-- style/story" as changing the style.
Carry out changing the style: 
	now the story tense is a random grammatical tense;
	now the story viewpoint is a random narrative viewpoint;
Report changing the style: Say "OK, I will now speak in [story viewpoint], [story tense]."

Chapter 5 - Adapting for edge cases in English

To say regarding it: now the prior named object is nothing.

Some plural-placeholder are a privately-named thing. 
To say regarding them: now the prior named object is the plural-placeholder.

[	'Have' has two main functions in English:
	 as a normal verb, indicating possession; and as a helping verb.
	 The former can be doubled up for the perfect tenses
	 ("He has had the coin", "I had had some string"); the latter can not.		]
To say singular have:
	if the story tense is:
		-- past perfect tense:	
			say "had";
		-- perfect tense:
			say "[adapt the verb have in present tense]";
		-- otherwise:
			say "[have]";

Part II - New Ways of Going

Chapter 1 - Going in darkness

Before going, going by keyword, retreating when in darkness
 and a random chance of 1 in 4 succeeds:
	end the story saying "[We] fell into a pit and broke every bone in [our] body!" instead. 
	[Actually dying in darkness is surprisingly not guaranteed. And yes,
	 even traveling via magic words or back into lighted rooms can kill the player.]

Chapter 2 - Going by keyword

Going by keyword is an action applying to one value. 
	Understand "[goto] [keyword]" or "[keyword]" or "enter [keyword]"
	 or "go [keyword]" as going by keyword. 

The cave-keyword is a keyword. Understand "cave" as cave-keyword.

Check going by keyword:
	if the keyword understood is the cave-keyword:
		if the location is Building or the location is in Outdoors
		 and the location is not Stream's End:
			instead say "I don't know where the cave [are], but [here]abouts no stream [can run] on the surface for long. I would try the stream.";
		otherwise:
			instead say "I need more detailed instructions to do that.";
	otherwise:
		choose the row with the name of the keyword understood
		 from the Table of Keywords;
		unless a room relates to the location by the relevant relation entry:
			if the keyword understood is xyzzy: 
				we will look later; 
				say nothinghap instead; 
				[Xyzzy gets its own special error message.]
			otherwise: 
				say "[dunno][line break]" instead;
		otherwise:
			now the new location is
			 (the room which relates to the location by the relevant relation entry);
			continue the action.

Carry out going by keyword:
	if the keyword understood is depression
	 and the location is in preliminary cave and the grate is closed:
		move the player to Entryway,
		 without printing a room description;
	otherwise:
		move the player to the new location,
		 without printing a room description.

Chapter 3 - Going back

Retreating is an action applying to nothing. 
	Understand the commands "back", "return",
	 and "retreat" as something new. 
	Understand "retreat" as retreating. 
	Understand "go back" as retreating. 
	Understand the commands "back", "return" as "retreat".

The prior location is a room that varies. 
	Setting action variables for going: 
		now the prior location is the location. 
	Setting action variables for going by keyword: 
		now the prior location is the location.
	Setting action variables for retreating: 
		now the new location is the prior location.

Check retreating:
	if the room back from the location is a room, try going back instead; 
	[So that rooms with a "back" direction defined use it properly.]
	if the number of visited rooms is 1,
		say "[We] [haven't] gone anywhere yet!" instead. 
		[Not authentic; going "back" on the first turn was bugged,
		 with infinite thrashing-about-in-darkness results.]

Carry out retreating:
	let the temp location be the location; 
	[To properly account for ">GO BACK. GO BACK".]
	move the player to the prior location,
	 without printing a room description;
	now the prior location is the temp location.

Part III - Adding New Verbs
	
Singing is an action applying to nothing. 
	Understand "sing" as singing. Report singing: say "[nothinghap]".

Striking is an action applying to one thing. 
	Understand "strike [something]" as striking. 
	Carry out striking: say nothinghap instead.
	
Understand the command "pour" as something new. 
	Understand "pour [something preferably held]" as pouring. 
	Pouring is an action applying to one thing. 
	To pour is a verb.
	Carry out pouring: say "[We] [can't pour] that." instead.

Understand the command "throw" as something new. 
	Understand "throw [text]" and "throw" as a mistake
	 ("I have trouble with the word [']throw['] because [we] can throw a thing or throw at a thing. Please use drop or attack instead.").

Understand "dig [text]" and "dig" and "excavate [text]" and "excavate" as a mistake
 ("Digging without a shovel is quite impractical: even with a shovel progress is unlikely."). 
[The synonym in the original was spelled "EXCIV", but I assume that was a typo;
 Woods corrected this.]

Understand "blast [text]" and "blast" as a mistake
 ("Blasting requires dynamite.")

Understand "lost [text]" and "lost" as a mistake
 ("I'm as confused as you are.")

Understand "enter stream/streambed/water" as a mistake
 ("[Our] feet are now wet.")

Understand "opensesame" and "open sesame" as a mistake
 ("Good try, but that is an old worn-out magic word.")

To say unsure facing:
	say "I am unsure how [we] [are] facing. Use compass points or nearby objects." 
	
	Understand "turn" as a mistake ("[unsure facing]").
	Understand "right" and "[goto] right" and "go right" as a mistake
	 ("[unsure facing]") when the location is not Mt King.
	
	Understand "left" and "[goto] left" and "go left" as a mistake
	 ("[unsure facing]") when the location is not Hall of Mists
	  and the location is not Mt King.
	
	Check going forward
	 when the room forward from the location is nowhere:
		say unsure facing instead.
	
[	The original allowed typing any verb+direction pair, such as
	">CRAWL W" or even ">E ATTACK", to move. "Go" was effectively
	a dummy verb.													]
After reading a command when the player's command includes " [direction] "
 and the player's command does not include " all":
	let M be indexed text;
	let M be the matched text;
	if M is "down" and the player's command includes "put",
		continue the action; 
		[">PUT DOWN" a thing should not be parsed as movement.]
	if M is "up" and the player's command includes "cover/pick",
		continue the action;
		[Nor should ">COVER UP" and ">PICK UP" something.]
	change the text of the player's command to M.
	
[	"Crawl" gets its own special disambiguation message, possibly 
	because in some areas it can refer to specific rooms or directions,
	and otherwise it is a sensible synonym for "go".					]	
After reading a command
 when the player's command matches the regular expression "crawl"
 and the location is uncrawlable: 
	we will look later; 
	say "Which way?" instead. 
			
To decide if the location is uncrawlable:
	if the crawlability marker is in the location, decide no;
	otherwise decide yes.
	
Part IV - The Parser

Chapter 1 - Distant things

[	This chapter deserves further explanation. The original executable
	printed two different error messages when a mentioned object was
	not found in the location; the usual "I don't understand that!", similar
	to inform, when the vocabulary was not known to the parser; and this 
	message, when the object indeed existed, just not in the current 
	location. Duplicating the same functionality here in Inform 7 
	unfortunately requires some hacking at the I6 level.					]
After deciding the scope of the player: 
	repeat with R running through portable things: 
		place R in scope.
	
After reading a command
 when the player's command includes "[something distant]"
 and the player's command does not include " all/it/him/her/them/abstract/gonear":
	say "I see no [matched text] here." instead; 
		
Definition: a thing is distant:
	if it is a dwarf and there is a curious dwarf, no;
	if it is held, no;
	if it is in the location, no;
	yes.
		
Does the player mean doing something with a distant thing:
	it is unlikely.

Section 1a - avoiding spurious disambiguation messages

Before asking which do you mean when everything matched is distant:
	let L be the list of matched things;
	sort L in random order;
	now the noun is entry 1 in L instead.
	[To prevent "Which did you mean, the dwarf or the dwarf or the dwarf?",
	 etc., when all such duplicates are out of sight.]
		
Definition: a thing is matched if it fits the parse list.
	
To decide whether (N - a thing) fits the parse list:
	(- (FindInParseList({N})) -)

Include (-
[ FindInParseList obj i k marker;
	marker = 0;
	for (i=1 : i<=number_of_classes : i++) {
	while (((match_classes-->marker) ~= i) && ((match_classes-->marker) ~= -i)) marker++;
	k = match_list-->marker;
	if (k==obj) rtrue;
	}
	rfalse;
];
-)

Chapter 2 - Obvious things

[	Typing the name of a scenery thing leads to its description being printed;
	 of a door, to travelling through it; every other thing must follow a verb.		]
After reading a command when the player's command matches "[something obvious]":
	say "What do you want to do with the [player's command]?" instead.
	
Definition:
	a thing is obvious if it is not scenery
	 and it is not distant
	 and it is not a door.
	 
Chapter 3 - Dummy things

[	The original featured no "me/myself" object.	]
After reading a command when the player's command includes "[yourself]"
 and the player's command does not include " all":
	replace the matched text with "gibberish". 
		
The floor is a backdrop. The floor is everywhere.
	Understand "room/rock" as the floor.
	Instead of doing something with the floor, say "[dunno][line break]".
	
	Before taking the floor:
		we will look later;
		say "I can only tell you what you see as you move about and manipulate things. I cannot tell you where remote things are." instead.

The knife is a thing. Understand "knives/boulder/weapon" as the knife. 
[The player could refer to this thing, but not manipulate it.]

Part V - Test Cases

Test cave with "e / get all / west / south / south / south / open / down".

Test puzzle with "e / get lamp / xyzzy / light / e / get cage / w / get rod / w / w / drop rod / get bird, rod / w / d / d".

Test canyon with "e / get lamp / plugh / light / e / up / d / secret / w / d / s".

Test battle with "e / get lamp / xyzzy / light / w / w / w / d / abstract axe to mists".

Part VI - Writing with Inform

Chapter 1 - Truth States as 'We' Commands (adapted from "The Parser" by Ron Newcomb)

[ It's always difficult to name truth states because nothing reads naturally other than a letter: if x is true.  These phrases allow us to name a truth state after an imperative sentence, and the optional adverbs allow us to imply how the variable is being used. ]
To decide if we still/should/need/must/have/-- (bool - a truth state): (- ({bool}) -).
To decide if we can't/shouldn't/haven't (bool - a truth state): (- (~~({bool})) -).
To decide if we do/can/have not (bool - a truth state): (- (~~({bool})) -).
To we will/should/just/now/still/may/must/have (bool - a truth state) again/--: (- {bool} = true; -);
To we no/do longer/not have/must/-- (bool - a truth state): (- {bool} = false; -).
To we needn't/shouldn't/won't/haven't (bool - a truth state): (- {bool} = false; -).
To we will/should/may/must/have (bool - a truth state) if (c - a condition): (- {bool} = ({c}); -);
To we will/should/may/must/have (bool - a truth state) unless (c - a condition): (- {bool} = (~~({c})); -);