do
    --create an instance of the IADS for Red
    redIADS = SkynetIADS:create('Red Syria')
    
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
    
    --turn on SAMs a bit earlier
    redIADS:getSAMSitesByNatoName('SA-2'):setGoLiveRangeInPercent(115)
    redIADS:getSAMSitesByNatoName('SA-3'):setGoLiveRangeInPercent(115)
    redIADS:getSAMSitesByNatoName('SA-5'):setGoLiveRangeInPercent(150)
    redIADS:getSAMSitesByNatoName('SA-6'):setGoLiveRangeInPercent(115)
    redIADS:getSAMSitesByNatoName('SA-8'):setGoLiveRangeInPercent(115)
    redIADS:getSAMSitesByNatoName('SA-10'):setGoLiveRangeInPercent(135)
    redIADS:getSAMSitesByNatoName('SA-11'):setGoLiveRangeInPercent(115)
    redIADS:getSAMSitesByNatoName('SA-15'):setGoLiveRangeInPercent(115)
    redIADS:getSAMSitesByNatoName('SA-19'):setGoLiveRangeInPercent(115)
    
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

    --create an instance of the IADS for Blue
    redIADS = SkynetIADS:create('Blue Syria')
    
    --add all units with unit name beginning with 'BLEW' to the IADS:
    redIADS:addEarlyWarningRadarsByPrefix('BLEW')
    
    --add all groups begining with group name 'BLAM' to the IADS:
    redIADS:addSAMSitesByPrefix('BLAM')
    
    
    end