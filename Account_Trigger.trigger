/**
 * Created by gerry on 9/26/2020.
 */

trigger Account_Trigger on Account (before insert)
{
	Process_Switches__c processSwitches = Process_Switches__c.getInstance(UserInfo.getProfileId());
	if(!processSwitches.Account_Process_Bypass__c)
	{
		System.debug('::: The trigger ran :::');
	}
}