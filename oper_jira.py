# -*- coding: utf-8 -*-
from jira import JIRA
 
jira_server = 'http://10.10.10.10:8080'
jira_username = 'ww'
jira_password = 'wwpwd'
 
myjira = JIRA(jira_server,basic_auth=(jira_username,jira_password))
myissue = myjira.issue('WWTES-69')
print (myissue)
myjira.add_comment(myissue, 'commented by python')
# missue = myissue.fields.customfield_13412.displayName
# summary = myissue.fields.customfield_13412;
# print(missue, summary)
