do
--create an instance of the IADS
redIADS = SkynetIADS:create('SYRIA')

---debug settings remove from here on if you do not wan't any output on what the IADS is doing by default
--[[ local iadsDebug = redIADS:getDebugSettings()
iadsDebug.IADSStatus = true
iadsDebug.radarWentDark = true
iadsDebug.contacts = true
iadsDebug.radarWentLive = true
iadsDebug.noWorkingCommmandCenter = false
iadsDebug.ewRadarNoConnection = false
iadsDebug.samNoConnection = false
iadsDebug.jammerProbability = true
iadsDebug.addedEWRadar = false
iadsDebug.hasNoPower = false
iadsDebug.harmDefence = true
iadsDebug.samSiteStatusEnvOutput = true
iadsDebug.earlyWarningRadarStatusEnvOutput = true
iadsDebug.commandCenterStatusEnvOutput = true ]] -- end block comment
---end remove debug ---

--add all units with unit name beginning with 'EW' to the IADS:
redIADS:addEarlyWarningRadarsByPrefix('EW')

--add all groups begining with group name 'SAM' to the IADS:
redIADS:addSAMSitesByPrefix('SAM')

--add a command center:
commandCenter = StaticObject.getByName('Command-Center')
local powerSource = StaticObject.getByName('Command-Center-Power')
redIADS:addCommandCenter(commandCenter):addPowerSource(powerSource)

--all SA-10 and SA-5 sites shall act as EW sites, meaning their radars will be on all the time:
-- redIADS:getSAMSitesByNatoName('SA-10'):setActAsEW(true)
-- redIADS:getSAMSitesByNatoName('SA-5'):setActAsEW(true)

--turn on SA-5 and SA-10 early
redIADS:getSAMSitesByNatoName('SA-5'):setGoLiveRangeInPercent(160)
redIADS:getSAMSitesByNatoName('SA-10'):setGoLiveRangeInPercent(140)

--activate the radio menu to toggle IADS Status output
redIADS:addRadioMenu()

-- activate the IADS
redIADS:activate()	

-- --add the jammer
-- local jammer = SkynetIADSJammer:create(Unit.getByName('jammer-emitter'), redIADS)
-- jammer:masterArmOn()
-- jammer:addRadioMenu()

-- ---some special code to remove the jammer aircraft if player is not flying with it in formation, has nothing to do with the IADS:
-- local hornet = Unit.getByName('Hornet SA-11-2 Attack')
-- if hornet == nil then
-- 	Unit.getByName('jammer-emitter'):destroy()
-- 	jammer:removeRadioMenu()
-- end
-- --end special code


end