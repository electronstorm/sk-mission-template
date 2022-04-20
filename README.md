# Mission Template
This template is designed to speed up the mission creation process and reduce common errors such as Datalink blocked by TACAN or ICLS not being enabled.

# Features
* ATIS
* Supercarrier (Escort, TACAN, ICLS)
* SkyNet IADS
* Tankers (TACAN, Pattern, Airspeed, Altitude, Type)
* AWACS

# Usage

Extract the template to your missions folder. Rename or copy the .miz to create your mission. Load up the file in the editor.

## SAM Systems

You can copy/move/delete any of the SAM or EW systems on the map. Avoid editing the units within the group. If you have to edit the units, do not change the type of the first unit in the group. New systems that are not in the list can be added with the right prefix in the group name. AWACS aircraft can act as EW system if named with the right prefix.

Prefixes:
* SAM for RED SAM systems (e.g. SAM SA-6 Aleppo)
* EW for RED EW system (e.g. EW Mainstay)
* BLAM for Blue SAM systems (e.g. BLAM Patriot Incirlik)
* BLEW for Blue EW system (e.g. BLEW Sentry)

## Command Center

A single command center with a generator is already configured and can be used an objective. The types of buildings can be changed as long as the unit name remains the same. Do not delete command center. Move it to the edge of the map instead. If you absolutely need to delete it or add a second command center, you have to edit skynet-iads-setup-syria.lua.

## Scripts

All the scripts are contained in the `/Scripts` folder. If you want to edit one of the scripts, remember to update the embedded scripts in the mission file by editing the trigger in the mission editor.

## ATIS
ATIS is configured at the start of the briefing with the following line:

`ATIS Incirlik 305.000, TRAFFIC 305.500`

Update the airfield name and frequencies as needed.

The carrier is configured by the unit name of the supercarrier unit:

`CARRIER Mother 128.000`


# Credits

* Skynet-IADS by Mike Walder: https://github.com/walder/Skynet-IADS

* DATIS by Markus Ast: https://github.com/rkusa/DATIS