Installing an unofficial skill from a git repository
----------------------------------------------------

## Method 1
- Go to skills in [home.mycroft.ai](https://account.mycroft.ai/skills).
- Find the Installer skill.
- Expand it.  Be sure it is for the correct Mycroft device.
- Put the https:// URL of the git repository in the `Skill URL` text box.
  For example `https://github.com/fractal13/skill-my-first-skill.git`.
- Put the https:// URL of the git repository in the middle text box, that doesn't have a name. This must be surrounded by `[ ]`.
  For example `[https://github.com/fractal13/skill-my-first-skill.git]`.
- Click the `Save` button.
- "Hey Mycroft", *beep*, "Download custom skill".

## Method 2
- Go to skills in [home.mycroft.ai](https://account.mycroft.ai/skills).
- Find the Installer skill.
- Expand it.  Be sure it is for the correct Mycroft device.
- Put the https:// URL of the git repository in the `Skill URL` text box.
  For example `https://github.com/fractal13/skill-my-first-skill.git`.
- Put the https:// URL of the git repository in the middle text box, that doesn't have a name. This must be surrounded by `[ ]`.
  For example `[https://github.com/fractal13/skill-my-first-skill.git]`.
- Check the `Automatic Install` box.
- Click the `Save` button.
- Wait for a few minutes for the skill to be installed.

## Method 3
- Obtain bash access.
- `source ~/mycroft/.venv/bin/activate`
- `msm install https://github.com/fractal13/skill-my-first-skill.git`

## Method 4
- Obtain bash access.
- `cd` to a directory where you checkout or create skills
- `git clone https://github.com/fractal13/skill-my-first-skill.git`
- `cd skill-my-first-skill`
- `ln -s $( pwd ) /opt/mycroft/skills/`


