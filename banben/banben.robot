***Settings***  
Library     BuiltIn
Library     Selenium2Library

***Variables***
${UserName}     shanxiaoguang
${PassWord}     12345678
${IdentifyingCode}      12345
# ${}
# ${}
# ${}



***Test Cases***
推送新版本
    [Setup]
    打开登录状态MPOS管理系统
    登录
    点击业务管理
    点击APP版本管理
    点击APP版本信息管理
    点击新建
    输入推送内容选择渠道
    选择平台
    选择版本
    点击确定
    点击审核
    点击驳回或者通过
    禁用
    [Teardown]
        # Close Browser

***Keywords***
打开登录状态MPOS管理系统
    Open Browser    http://10.7.111.196:9999/mposmsNew/index.html#/login     chrome
登录
    Input Text      xpath:/html/body/div/div/div/div/form/div[1]/div/div/input      ${UserName}
    Input Text      xpath:/html/body/div/div/div/div/form/div[2]/div/div/input      ${PassWord}
    # Input Text      xpath:/html/body/div/div/div/div/form/div[3]/div/div/input      ${IdentifyingCode}
    Click Element   xpath:/html/body/div/div/div/div/form/div[4]/div/button
    sleep      3s
点击业务管理
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[1]/div/div[1]/div[1]/span[2]
    sleep      2s
点击APP版本管理
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[1]/div/div[1]/div[2]/div[12]/div[1]/span[2]
    sleep      2s
点击APP版本信息管理
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[1]/div/div[1]/div[2]/div[12]/div[2]/div/div[1]/span[2]
    sleep      2s
点击新建
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[2]/div/button[3]/span
    sleep      2s
输入推送内容选择渠道
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[1]/div/div/div[1]/i
    sleep   2s
    Click Element   css:body > div.el-select-dropdown > div > div.el-select-dropdown__wrap.el-scrollbar__wrap > ul > li:nth-child(2) > span
    sleep   2s
选择平台
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[2]/div/div/div[1]/input
    sleep   2s
    Click Element   css:body > div:nth-child(9) > div > div.el-select-dropdown__wrap.el-scrollbar__wrap > ul > li:nth-child(1) > span  
    sleep   2s  
选择版本    
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[3]/div/div/div[1]/input
    sleep   2s
    Click Element   css:body > div:nth-child(10) > div > div.el-select-dropdown__wrap.el-scrollbar__wrap > ul > li:nth-child(1) > span

    Input Text      xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[4]/div[1]/div/div/div[1]/Input   V5.5
    Input Text      xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[5]/div/div[1]/input      输入标题
    Input Text      xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[6]/div/div[1]/textarea       输入内容
    Input Text      xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[7]/div/div[1]/input      http://www.baidu.com
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[8]/div/label[1]/span[1]/span
    sleep      2s
点击确定
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[3]/span/button/span
    sleep      6s


点击审核
    # Click Element   css:body > div.container > div > div.panel > div.panel-main > div.el-row > div:nth-child(2) > div > div:nth-child(3) > div > div.el-table__fixed-right > div.el-table__fixed-body-wrapper > table > tbody > tr.el-table__row.hover-row > td.el-table_1_column_11 > div > span > button > span
    Click Element   css:body > div.container > div > div.panel > div.panel-main > div.el-row > div:nth-child(2) > div > div:nth-child(3) > div > div.el-table__fixed-right > div.el-table__fixed-body-wrapper > table > tbody > tr:nth-child(1) > td.el-table_1_column_11 > div > span > button > span
    sleep      4s
点击驳回或者通过
    Click Element   xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[6]/div/div[2]/div/div/button[2]/span
    sleep      4s
# 禁用
#     Click Element   xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[3]/div/div[4]/div[2]/table/tbody/tr[1]/td[11]/div/span/button/span
#     Click Element   xpath:/html/body/div[3]/div/div[3]/button[2]/span
