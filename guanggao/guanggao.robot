***Settings***  

Library     Selenium2Library

***Variables***
${UserName}     shanxiaoguang
${PassWord}     12345678
# ${IdentifyingCode}      12345
# ${}
# ${}
# ${}



***Test Cases***
发布广告
    [Setup]
    打开MPOS管理系统
    登录
    点击业务管理
    点击广告管理
    点击发布
    点击渠道选择
    点击版本选择
    点击平台选择
    点击版面选择
    点击广告帧
    输入广告名称
    # 上传图片
    点击跳转业务
    输入跳转网页
    输入跳转页面标题
    广告发布日期
    广告结束日期
    点击申请发布

    [Teardown]
        # Close Browser

***Keywords***
打开MPOS管理系统
    Open Browser    http://10.7.111.196:9999/mposmsNew/index.html#/login     chrome
登录
    Input Text      xpath:/html/body/div/div/div/div/form/div[1]/div/div/input      ${UserName}
    Input Text      xpath:/html/body/div/div/div/div/form/div[2]/div/div/input      ${PassWord}
    # Input Text      xpath:/html/body/div/div/div/div/form/div[3]/div/div/input      ${IdentifyingCode}
    Click Element   xpath:/html/body/div/div/div/div/form/div[4]/div/button
    sleep       5s
点击业务管理
    Click Element       xpath:/html/body/div[1]/div/div[2]/div[1]/div/div[1]/div[1]/span[2]
    sleep       3s
点击广告管理
    Click Element       xpath: /html/body/div[1]/div/div[2]/div[1]/div/div[1]/div[2]/div[6]/div[1]/span[2]
    sleep       3s
点击发布
    Click Element       xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[2]/div/button[3]/span
    sleep       3s
点击渠道选择
    Click Element       xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[1]/div/div/div/div/div[1]/input
    sleep       3s
    Click Element       css:body > div.el-select-dropdown > div > div.el-select-dropdown__wrap.el-scrollbar__wrap > ul > li:nth-child(2) > span
    sleep       3s
点击版本选择
    Click Element       xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[2]/div/div/div/div/div[1]/input
    sleep       3s
    Click Element       css:body > div:nth-child(8) > div > div.el-select-dropdown__wrap.el-scrollbar__wrap > ul > li:nth-child(2) > span
    sleep       3s
点击平台选择
    Click Element       xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[3]/div/div/div/div/div[1]/input
    sleep       3s
    Click Element       css:body > div:nth-child(9) > div > div.el-select-dropdown__wrap.el-scrollbar__wrap > ul > li:nth-child(1) > span
    sleep       3s
点击版面选择
    Click Element       xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[4]/div/div/div/div/div[1]/i
    sleep       3s
    Click Element       css:body > div:nth-child(10) > div > div.el-select-dropdown__wrap.el-scrollbar__wrap > ul > li:nth-child(4) > span
    sleep       3s
点击广告帧
    Click Element       css:body > div.container > div > div.panel > div.panel-main > div.el-row > div:nth-child(2) > div > div:nth-child(5) > div > div.el-dialog__body > form > div:nth-child(5) > div > div > div > div > div.el-input > input
    sleep       3s
    Click Element       css:body > div:nth-child(11) > div > div.el-select-dropdown__wrap.el-scrollbar__wrap > ul > li:nth-child(4) > span
输入广告名称
    Input Text      xpath:/html/body/div[1]/div/div[2]/div[2]/div[2]/div[2]/div/div[5]/div/div[2]/form/div[6]/div/div/div/div/input     自动化
    sleep       3s
# 上传图片
点击跳转业务
输入跳转网页
输入跳转页面标题
广告发布日期
广告结束日期
点击申请发布  