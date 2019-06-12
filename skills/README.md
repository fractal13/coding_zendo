Creating a Skill
----------------

[Mycroft instructions for creating a skill](https://mycroft.ai/documentation/skills/introduction-developing-skills/).

You may want to look at the [sample skill](https://github.com/fractal13/skill-my-first-skill)
source code while reading this description.

Skill creation requires user's intent, Mycroft's dialog responses,
and programming logic.

Vocabulary
----------

Text files are used to define vocabulary words that users
will utter to signal their *intent* to Mycroft.  For example, maybe the
user's intent is to hear something about the Guardians of the Galaxy.
So, we would want to recognize words like `guardians` and `galaxy`.
The intent words are defined in a directory named `vocab`, which contains
a directory for every language that the skill supports.  `en-us` for
English in the United States.  Finally, this directory contains `.voc`
files to define words or phrases that match the intent.

For example, `vocab/en-us/RocketmanKeyword.voc` contains the following
lines:

    rocketman
    rocket man
    rocky raccoon

This allows the user to utter any one of the 3 phrases, to express the
`Rocketman` intent.

In this example skill, we have vocabulary for "Galaxy", "Guardians", 
"Rocketman", "Up", and "What".


Dialog
----------

Text files are also used to define dialog Mycroft will speak to 
the user.  For example, a response to the Guardians of the Galaxy 
request may be "You don't understand.  What if i want it more?".
The dialog phrases are defined in a directory named `dialog`, which
contains a directory for every language that the skill supports.
`en-us` for English in the United States.  Finally, this directory
contains `.dialog` files to define phrases that can be used for the
response.

For example, `dialog/en-us/guardians.galaxy.dialog` contains the following
lines:

    is gamora alive?
    you don't understand.  what if i want it more?
    Drax is invisible

When the skill speaks the `guardian.galaxy` dialog, one of the 3 lines
will be selected randomly, and spoken.

In this example skill, we have dialogs for "guardians.galaxy", 
"rocketman", and "whats.up".


Programming Logic
-----------------

Programming logic is required to configure what intents the user
can utter, which vocabulary words are required to express an
intent, and which dialogs to use when an intent is expressed.
It is also possible to do more complicated things with the
programming logic, but this example will be fairly simple.

The programming logic is stored in the `__init__.py` file.  That's
two underscores, followed by `init` followed by two underscores, followed
by dot followed by `py`.  It's a special, magic name.  Always use it.

This is the entire content of the file for the sample skill.

    from adapt.intent import IntentBuilder
    from mycroft.skills.core import MycroftSkill, intent_handler
    from mycroft.util.log import LOG

    __author__ = 'fractal13'
    LOGGER = LOG.create_logger( __name__ )

    class MyFirstSkill( MycroftSkill ):

        def __init__( self ):
            super( MyFirstSkill, self ).__init__( name="MyFirstSkill" )
            LOGGER.info( "__init__" )

        @intent_handler( IntentBuilder( "" ).require( "RocketmanKeyword" ) )
        def handle_rocketman_intent( self, message ):
            LOGGER.info( "rocketman" )
            self.speak_dialog( "rocketman", data={} )

        @intent_handler( IntentBuilder( "" ).require( "GuardiansKeyword" ).require( "GalaxyKeyword" ) )
        def handle_guardians_of_the_galaxy_intent( self, message ):
            LOGGER.info( "guardians" )
            self.speak_dialog( "guardians.galaxy", data={} )

        @intent_handler( IntentBuilder( "" ).require( "WhatKeyword" ).require( "UpKeyword" ) )
        def handle_whats_up_intent( self, message ):
            LOGGER.info( "what's up" )
            self.speak_dialog( "whats.up", data={} )

    def create_skill():
        return MyFirstSkill()


We should talk about Python here.  Note, that the spaces at the beginning of lines are very important.
Indentation is used to tell which parts of the program contain other parts.
Also, when programming, case is important. `myfirstskill` is completely different than `MyFirstSkill`.

This skill can recognize three different intents from user utterances.  Let's look at the
Guardians of the Galaxy intent.  The user is required to utter one of the words or phrases in the
`GuardiansKeyword.voc` file, followed later by one of the words or phrases in the `GalaxyKeyword.voc`
file.  If they do, then the code in `handle_guardians_of_the_galaxy_intent` is executed.  In this case,
a log message will be recorded, then the one of the phrase from `guardians.galaxy.dialog` will be
spoken.

Can you figure out what the other intents require and what they will do from reading the code?


Customizing a Skill
-------------------

So, you can see how the skill works, but you want to modify it to make it fit your
purposes better.  You're going to make a copy of this skill, modify it to your
liking, then install it on your device.

- *Create github account*: 
- *Fork the skill*: 
- *Download skill to computer*: 
- *Edit skill*: 
- *Send changes to github*: 
- *Install skill on Mycroft*: [install skill](install_skill/)


