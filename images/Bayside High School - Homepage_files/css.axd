
/*----------------------------------------
Name: global.css
Developed by:
Date Created:
Last Updated:
Copyright:

Layout
Global Box Styles
Top Navigation
Login styles
Header defaults
Bullets and Icons and Misc Buttons
Left Nav New
Directory Pages
Summary List
Breadcrumbs
Upcoming Events
Calendar Page
Weather
Standard Definitions
Google translator
New Base Box
Item Lists
Survey
Mission Statement Content (resource info page)
News Resource
Parent Registration

----------------------------------------*/

/* global reset*/
*
{
    margin: 0;
    padding: 0;
}
h1, h2, h3, h4, hr
{
    margin: 0;
    /*padding-right:40px;  keep header content inside the box style */
}
body
{
    font-family: Arial, Sans-Serif;
    font-size: 100%; /*line-height:1.125em;*/
    line-height: normal;
    vertical-align: baseline;
    letter-spacing: normal;
}

blockquote
{
	margin: 1em 40px; /*DE2106 setting default margins lost by global reset*/
}

p
{
	margin: 1em 0; /*DE2106 setting default margins lost by global reset*/
}

/* Layout 

--------------------------*/

table.wrapperTable, #previewDiv
{
    font-size: .75em; /* 9pt, 12px = base font size for 6 original themes */
    /* #previewDiv brings this to photo album preview so font size will match*/
}
fieldset
{
    border: none;
}
a img
{
    border: none;
}
a:link, a
{
    text-decoration: underline;
    border: none;
}
.topNavigation a
{
    text-decoration: none;
}
table
{
    border-collapse: collapse;
    border-spacing: 0;
}
q:before, q:after, blockquote:before, blockquote:after
{
    content: "";
}

td.leftCol, td.mainCol
{
    vertical-align: top;
}
.wrapper
{
    width: 950px;
    margin: 0 auto;
}
/* Layout misc */

/* 13995 - this fix is for any aligned image in group listing page */
.groupListingPage table td, .subjectListingPage table td 
{
    width:auto !important;
}

/* Top Navigation 

---------------------------------*/
.topNav
{
    font-size: .9em;
    font-weight: bold;
}
ul.topNavigation
{
    margin: 0;
    padding: 0;
}
html > body span.topNavBullet
{
    position: relative;
    top: 2px;
}

*:first-child + html span.topNavBullet /* IE7 first child hack */
{
    position: relative;
    top: -1px;
}

.topNavLeft
{
    text-align: left;
    position: absolute;
}
.topNavRight
{
    float: right;
    margin-right: 10px;
    _margin-right: 5px;
}
/* Extra Region */
.extraRegion
{
    margin-top: 30px;
    width: 100%;
}

/* Login styles */
/* tableless login */
.login
{
    width:17em;
    display: inline-block; /* this is not working correctly for FF2 */ /* This allows for the positioning of the block via text-align */
    margin-right: 10px; /* login positioning doesn't work for FF2 */
    _margin-right: 5px;
    text-align:right;
}
.loginCompact 
{
    width:16em;
    display: -moz-inline-stack; /* this is not working correctly for FF2 */
    display: inline-block; /* This allows for the positioning of the block via text-align */
    text-align:left;
}
.loginCompact .loginLinks 
{
    text-align:left;
    margin-top:3px;
}
.login fieldset 
{
    padding:1px;
    text-align:right;
    width:100%;
}
.loginLinks, .forgotPasswordLink 
{
    font-size:.8em;
    text-align:right;
    _padding:0;
}
.forgotPasswordLink 
{
    margin-bottom:3px;
}
.loginField 
{
    width:100px;
    padding:1px;/* DE2376 *Removed height on field */
    
}



.loginHorizontal fieldset input.loginField, .loginCompact fieldset input.loginField
{
    border: 1px solid #ccc;
}
.loginHorizontal fieldset
{
    display: block;
    float: left;
    padding: 13px 2px 10px;
}
.loginHorizontal label
{
    position: relative;
    bottom: 2px;
}

.headerCell .loginHorizontal
{
    float: left;
    width: 100%;
    font-size: .9em;
}
.headerCell .loginHorizontal td 
{
    padding:14px 5px;
    vertical-align:middle;
}

.loginCompact label
{
    font-size: .9em;
   
}
.loginCompact fieldset
{
    padding: 0;
    margin: 5px 5px 5px 0px;
    text-align:left;
}
.loginLinks
{
    padding: 0;
    _padding: 5px 0 0 0;
    margin: 2px 0px 0px 0px; /* remove left margin for DE2292 */
    list-style-type: none;
}
.loginWord 
{
    display:none;
}

/* remove login label from all instances of the login */

.loginCompact ul.loginLinks
{
    margin-left: 0;
    list-style-type:none;
}
.loginCompact .loginLinks
{
    margin-left: 0px;
    margin-top:0px;
    padding-top:0px;
    display: block;
}    

/* form */
.forgotPassForm td, .contactUsForm td 
{
    padding:2px 0px\9;
}
.forgotPassHeader .headerBullet
{
    margin-top:-5px;
    margin-right:3px;
}
.forgotPassForm select 
{
    margin-left:5px;
    width:155px;
    _width:154px;
}

#ctl00_mainContent_ContactUsPublic_maction
{
	margin: 0 5px; /*DE2551 aligning send to dropdown with below textboxes*/
}

.contactUsForm td, .forgotPassForm td, .directionsForm td
{
	padding: 2px; /*DE2551 unifying spacing between text boxes in different browsers*/
}


.login input[type=text], .login input[type=password]
{
    margin-left: 5px;
    border: 1px solid #ccc;
}



.login table td
{
    padding: 1px; *padding:0;
}

.login label
{
    text-transform: capitalize;
    font-size: .9em;
    _margin-right: 5px;
}
.login td span, .loginLinks
{
    /*font-size: .8em;*/
    white-space:nowrap;
}
.loginButton
{
    margin-top: -1px;
    _margin-top: 1px;
}
.loginButton, .goButton
{
    position: relative;
    border: 2px solid #fff;
    font-size: .8em;
    text-transform: uppercase;
    font-weight: bold;
    font-family: Arial, Sans-Serif;
    width: 50px;
    height: 20px;
    padding: 0 5px;
    cursor: pointer;
}
.submitButton 
{
    width:75px;
}
/* Header defaults */
h1
{
    font-size: 1.33em;
}
h2
{
    font-size: 1.167em;
}
h3
{
    font-size: 1em;
}
.plainBox h1 
{
    *zoom:1 !important; /* fixes IE7 issue of header not showing up #13621*/ 
}
h1.hr, h2.hr /* class page announcements (style 6) */
{
    border-bottom: 1px solid #ccc;
    margin-bottom: 10px;
}
h2.hr
{
    padding-bottom: 0;
}
h2.forgotPassHeader 
{
    margin-bottom:10px;
    margin-top:15px;
}

/* 14078 */
.box-header table 
{
    display:inline-block;
}
/* Bullets and Icons and Misc Buttons*/
.icAttachment, .icUrgent 
{
    margin-right:5px;
}
.pageTitleContainer
{
    padding-bottom: 5px;
    _height: 1%;
}
.pageTitle /* bring page title text forward IE7 */
{
    position: relative;
    z-index: 2;
}
h1 img, h2 img
{
    padding-left: 5px;
}
.goButton
{
    text-transform: uppercase;
    width: auto;
}
.formButton /* contact us and forgot password buttons */
{
    display:inline-block\9;
    padding-top:5px\9;    
}



/* Site Admin Directory */
.siteAdminDirectory
{
    margin-left: 10px;
    margin-top:10px;
}
.siteAdminItem
{
    margin-bottom: 20px;
}
.siteAdminImage
{
    float: left;
	margin: 3px 10px 10px 0px;
    padding: 3px;
    border: 1px solid #ccc;
}

.siteAdminImageAndDescription
{
	margin: 1.5em 22px;
}

.siteAdminBullet
{
    display: block;
    float: left;
    width: 16px;
    height: 16px;
    margin-right: 5px;
    background-image: url(/themes/global/images/icBullets16.gif);
    background-repeat: no-repeat;
}
.siteAdminDirectory h2
{
    margin-left: 0;
    padding-left: 0;
}
.siteAdminPosition
{
    font-size: .833em;
    font-style: italic;
    font-weight: normal;
    display: inline;
}
/* Left Nav New */
.icon-new, .color-pc .icon-new, .color-mpc .icon-new, .color-sc .icon-new, .color-msc .icon-new, .color-ac .icon-new, .subItem .icon-new
{
    margin-left: 5px;
    width: 16px;
    height: 8px;
    font-size: .7em;
    background-image: url(/themes/global/images/new.png);
    background-repeat: no-repeat;
    background-position: 0px -3px;
    padding: 0px 2px;
    display: inline-block;
    text-indent: -9999px;
    *vertical-align: middle; /*DE2113 vertically centers new icon for IE67*/
}
/* Directory Pages 

------------------------*/
/* Search Panel */

.memberSearchForm label, .teacherSearchForm label, .adminSearchForm label 
{
    float:left;
}
.teacherSearchForm 
{
    *padding:5px 0;
}
.teacherSearchForm label, .memberSearchForm label, .adminSearchForm label
{
    padding-top:3px;
    padding-right:5px;
    width: 120px;
    text-align: right;
}
.memberSearchForm fieldset 
{
    padding:0 0 5px 0;
    /* *padding:0;  DE2551 removing IE7 specific rule which was breaking IE7 display*/
    margin:0;
}
.teacherSearchForm fieldset 
{
    padding:0 0 5px 0;
    margin:0;    
}

.teacherSearchForm select
{
	margin: 0 5px;
}


/* member search form */
.adminSearchForm
{
	padding-left: 0;
}
.adminSearchForm label 
{
    padding-right:10px;
}

/* Summary List */
.summaryList
{
    margin: 0 0 0 4px;
    padding: 0;
}
.summaryList ul
{
    margin: 5px 15px;
    padding: 5px 15px;
}

.summaryList ol
{
    margin: 5px 17px;
    padding: 5px 17px;
}
.summaryListItem
{
    clear: both;
    margin: 10px 0;
    overflow: hidden;
}
.summaryListBullet
{
    display: block;
    float: left;
    width: 10px;
    height: 10px;
    overflow: hidden;
    background: url(/themes/global/images/icBullets.png) 0px -75px no-repeat;
    padding: 0;
}
.summaryListBullet2 /* currently only used for nanuet */
{
    display:none;
}
.groupDirItem 
{
    margin-left:12px;
    margin-bottom:10px;
}
.summaryListItemBox
{
    display: block;
    overflow: hidden;
    _margin-left: 10px;
}
.groupDir table td
{
    width:auto !important;
}
/* Quick List (Site Directory) */
.mainCol ul.quickList, .siteListingLinks .quickList 
{
    margin: 0px;
    padding: 10px 0 0 0;
    list-style-type: none;
}
.mainCol table.userProfileCallOuts ul.quickList 
{
    list-style-type:disc;
}
.mainCol ul.quickList li
{
    padding: 0 0 5px 0;
    margin: 0;
    list-style-type: none;
}
.siteListingLinks ul.quickList li
{
	padding-bottom: 10px;
}
.siteListingLinks ul.quickList 
{
    margin-left:5px;
    padding:0;
}
.siteListingLinks .plainBox .contentBox 
{
    padding:10px 0 0 10px;
    
}

.categoryName 
{
    font-weight:bold;
    position:relative;
    bottom:8px;
}

.siteListingLinks ul.quickList.categoryList
{
    padding-left:10px;
}
.siteListingLinks ul.quickList.categoryList li img
{
    padding:0 3px 0 0;    
}
.siteListingLinks img 
{
    _background-repeat:no-repeat;
}
  
.mainCol ul.quickList li img.nameIcon /*DE2484 resolving misalignment issue on site listing page*/
{
	float: none;
	padding: none;
	vertical-align: middle; 
	margin: 0;
	padding: 0;
	margin-right: 5px;
}
 
.siteListingLinks .baseBox_headInner 
{
    _padding-top:0;
}
.siteListingLinks ul.quickList
{
    padding:0px;
    margin:0 0 0 5px;
}

.siteListShowAll
{
    font-size: 1em;
    font-weight: bold;
    text-align: left; 
    margin:15px 0 0 15px;
}

/* DE100 site listing page admin header needs bullet */
.siteListAdminHeader {
padding-bottom:5px;
white-space:nowrap;
*width:12em; /* prevent h1 from wrapping in IE67 */
}

.siteListAdminHeader h1
{
	/*this header & bullet need to align with the one above*/
	position: relative;
	left: -10px;
	top: 5px;
	margin-bottom: 10px; /*keeps from running into text below*/
	*margin-bottom: 15px; /*keeps from running into text below in ie*/
}

.siteListAdminHeader .headerBullet {
float:left;
position:relative;
bottom:5px;
}

/* Breadcrumbs
------------------*/
.breadCrumbs
{
    _height: 1%;
    margin: 10px 10px 10px 0;
    font-size: .9em;
}
.rootBreadCrumb
{
    padding-left: 0px;
}
.rootBreadCrumb, .parentBreadCrumb
{
    color: #333;
}
.rootBreadCrumb, .parentBreadCrumb, .currentBreadCrumb
{
    font-weight: bold;
    *position:relative;
}
.breadCrumbs a.rootBreadCrumb, .breadCrumbs a.parentBreadCrumb
{
    text-decoration: none;
}
.breadCrumbs a.rootBreadCrumb:hover, .breadCrumbs a.parentBreadCrumb:hover
{
    text-decoration: underline;
}
span.breadCrumbSeperator
{
    display: inline-block;
    width: 10px;
    margin-left: 4px;
    background: url(/themes/global/images/icBullets.png) 3px -155px no-repeat;
}



/* Calendar Page 

---------------------------------*/

.calButtonLeft
{
    float: left;

}
.calButtonRight
{
    float: right;
    margin-right: 10px;
}

span.calView
{
    /*font-family:Trebuchet MS;*/
    font-size: .8em;
    text-transform: capitalize;
    position: relative;
    bottom: 5px;
}
.calViewBtn
{
    margin-left: 5px;
}
.calIconSeparate
{
    margin: 0px 15px;
}
.calButtonLeft
{
    position: relative;
    top:.85em;
}
.calButtonRight 
{
    position:relative;
    top:1em;
}


input.calCustomize
{
    width: 14.5em;
    _width:15em;
    padding: 2px .3em;
    font-family: Tahoma;
    font-size: .9em;
    font-weight: bold;
    color: #444;
    text-align: left;
}
html>body input.calCustomize 
{
    position:relative;
}


.calUI
{
    background-image: url(/themes/global/images/dotted.gif);
    background-repeat: repeat-x;
    background-position: top;
    background-color: #f4f4f4;
    padding: 8px 0 5px 0;
    text-align: center;
}
.calPrevMonth
{
    padding-right: 10px;
}
.calNextMonth
{
    padding-left: 10px;
}
.eventTypesFilter 
{
    padding-top:10px;
}

.calGridEvent .imageAndTitle img
{
	margin-top: -2px; /*aligns bullet to title*/
	overflow: hidden; /*this clears the float for the content below*/
}

/* Calendar Grid Styles */
.calendarMonthlyView 
{
    position:relative;
    bottom:20px;
}
.calMonthWrapper
{
   /* width: 100%; DE169*/
    position: relative;
    z-index: 1;
}
.monthlyCalendar, .monthlyCalendar TABLE
{
    /*margin-right: 10px; 
    *margin-right:-30px; DE169*/
    /*DE169*/width:100%;  
}
.monthlyCalendarMonth
{
    /*DE169 width: 100%; */
}
.monthlyCalendarDayHeader
{
    font-family: Trebuchet MS;
    font-weight: bold;
    text-transform: uppercase;
    color: #989898;
    text-align: center !important;
    background-color: #e3e3e3;
    padding: 14px 5px;
}
.monthlyCalendarDay
{
    height: 100px;
    border: solid 1px #CCC;
    padding: 5px;
    vertical-align: top; /*DF#10709*/ /*word-wrap:break-word;*/
}

.monthlyCalendarOtherMonthDay
{
    height: 100px;
    border: solid 1px #CCC;
    background-color: #F1F1F1;
    vertical-align: top;
}
.monthlyCalendarSelectedDay
{
    height: 100px;
    border: solid 1px #CCC;
    background-color: #d9e8f0;
    vertical-align: top;
}
.monthlyCalendarNumber
{
    font-family: Trebuchet MS;
    font-size: .9em;
    text-align: right;
    color: #666;
}
.monthlyCalendarOtherMonthDay .monthlyCalendarNumber
{
    color: #999;
}

.eventFilter
{
    background-color: #d9e8f0;
    padding: 2px;
    width: 175px;
    background-color: #d9e8f0;
    border: solid 1px #999999;
}
.searchPanel
{
    background-color: #d9e8f0;
    font-size: 11px;
    width: 200px;
    border: solid 1px #999999;
    white-space: normal !important;
    z-index: 1;
}
.searchPanelHeader
{
    background-color: #660000;
    padding: 2px;
    color: #FFFFFF;
    font-weight: bold;
}
/* Monthly Calendar Events */
.calGridEvent
{
    margin-bottom: 5px;
    padding-bottom: 10px;
    padding-top: 5px;
    clear:both;
}
div.calTitle
{
    font-weight: bold;
}
div.calTime
{
    padding-left: 5px;
    background-image: url(/themes/global/images/icBullets.gif);
    background-position: 0px -565px; /* DE2424 */
    background-repeat: no-repeat;
    text-transform: uppercase;
    font-size: .8em;
    line-height: normal;
}
div.calDescription
{
    font-size: .9em;
    line-height: normal;
}
/* Calendar List View */
.calendarEvents 
{
    overflow:hidden;
    /* float:left; DE2449 float is causing content to be truncated*/
    clear: left; /*DE2449 keeps from being hidden next to left-floated header*/
    display:block;
    border-right: 1px solid #cccccc;
    *width: 100%; /*keeps IE6-7 from expanding event divs out to the moon*/
}
td.listViewList 
{
    padding-right:2px;
}   
.listViewHeader
{
    width: 100%;
    margin-top: 5px;
    -moz-border-radius-topleft: 3px;
    -moz-border-radius-topright: 3px;
    -webkit-border-top-left-radius: 3px;
    -webkit-border-top-right-radius: 3px;
    font-weight:bold;
}
.calListViewNoResults 
{
    padding-top:20px;
    text-align:center;
    font-weight:bold;
}

.listViewHeader span
{
    margin-top: 2px;
}
.listViewHeader input
{
    margin: 5px;
}
.listViewHeader td input
{
    margin-top: 3px;
}
.calListDayContainer
{
    width:99.7%;
    float:left; 
    position:relative;
    border-left: 1px solid #ccc;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}

/*RK - note I deleted some FF2-only stuff that was here.  
Couldn't comment it out because the hack itself closed the comment (so see history for it)
The FF2 only hack seems wonky and like it doesn't always work
It was breaking display for EVERY firefox including version 2
See DE290 and DE2053 for more details */

.calendarListDay
{
    float: left;
}
.calendarListDay .monthName, .calendarListDay .dayName
{
    float: left;
    display: block;
    width: 6.5em;
    padding: 15px;
    text-align: center;
}
.calendarListDay .dayName
{
    font-size: .8333em;
    font-weight: bold;
    text-transform: uppercase;
    color: #aaa;
    padding-right:1em;
}
.calendarListDay .monthName
{
    font-size: .9167em;
    font-weight: bold;
    width:5em;
}
.calendarListEvents
{
    padding: 0 10px 15px 0;    
}
.calendarListEvents .calTitle
{
    margin-top: 15px;
}

td.calListUI
{
    background-image: url(/themes/global/images/dotted.gif);
    background-repeat: repeat-x;
    background-position: top;
    background-color: #f6f6f6;
    padding: 6px 15px;
}
.calListViewButton
{
    font-family: Trebuchet MS;
    font-size: .8333em;   
    border: 0;
    width: 54px;
    height: 16px;
    cursor: pointer;
    background-image: url(/themes/global/images/bgCalListViewButton.png);
    background-repeat: no-repeat;
    position: relative;
    top: 4px;
}
.calListViewButton.selected
{
    background-position: 0px -16px;
}
.calListUI .calViewBtn
{
    position: relative;
    margin-right: 0;
    padding-right: 0;
    padding-left:5px;
    
}
/*
.eventListingDay
{
    width: 20px;
    font-size: 11px;
    text-align: center;
}
.eventListingDayHover
{
    width: 20px;
    font-size: 11px;
    text-align: center;
    font-weight: bold;
    text-decoration: underline;
    cursor: pointer;
}
.eventListingOtherMonthDay
{
    width: 20px;
    font-size: 11px;
    text-align: center;
    color: #999;
}
.eventListingSelectedDay
{
    width: 20px;
    border: solid 1px #b55100;
    background-color: #ffeb94;
    font-weight: bold;
    cursor: pointer;
}
.eventListingMonthTitle
{
    font-weight: bold;
}
.eventListingCalendar
{
    border: solid 1px #333333;
}
.eventListingNextPrev, eventListingNextPrev:hover
{
    font-family: Webdings;
    cursor: pointer;
    color: #000000;
    text-decoration: none;
}
.eventListingDayHeader
{
    font-size: 10px;
    font-weight: bold;
    text-align: center;
}
.searchPanel
{
    background-color: #d9e8f0;
    font-size: 11px;
    width: 200px;
    background-color: #d9e8f0;
    border: solid 1px #999999;
}
.searchPanelHeader
{
    background-color: #660000;
    padding: 2px;
    color: #FFFFFF;
    font-weight: bold;
}
*/
/* group calendar dropdown menus centered*/
table.wrapperTable td .CalNotActiveTbl 
{
    text-align:center;
}
/* Reference Calendar */

/* ref cal cells */
.listViewListSideBar .referenceCalendar
{
    position: relative;
    bottom: 30px;
    margin-bottom: -30px;
}
.referenceCalendar table table table table table td
{
    font-weight: bold;
    padding: 6px;
    text-align: center;
   /* border: 1px solid #eee;*//*Commented By RDS India for DE#289*/
}
.referenceCalendarOtherMonthDay
{
    color: #eee;
}

/*Calendar Event List title*/
.calendarCustomize .baseBox h1
{
    font-size: 1em;
    font-weight: bold;
    padding-left:5px;
}
/*14035 DE144*/
.calendarCustomize hr 
{
    margin:5px 0;
    padding:0;
}
.calendarCustomize .contentBox {
padding:0 5px 10px 5px;
}
.calendarCustomize center input {
margin:15px 0 5px 0;
}





/* event types */

.calEventType
{
    width: auto;
    text-align: left;
    padding-left: 3px;
    font-size: .65em;
    font-weight: bold;
    text-transform: uppercase;
}

/* calendar event search results page index */
.calSearchResults 
{
    margin:0 5px;
}
.gridFooter 
{
    width:100%;
} 
    .pagerText
    {
        font-size: .9167em;
        font-weight: normal;
    }

/* weather ----

--------------------*/
#weatherVert, #weatherHoriz, .weatherContainer 
{
    margin:0;
    padding:0;
    clear:both; 
}

td.weatherDay
{
width:50px;
}
.weatherOutlook
{
    padding-bottom:15px;
    padding-right:15px;
}
.weatherDay span
{
    display: block;
}
.weatherHigh, .weatherLow
{
    font-weight: bold;
}
.weatherHigh
{
    color: #c00;
}
.weatherLow
{
    color: #06f;
}
.weatherDate
{
    white-space: nowrap;
}

/* Standard Definitions
----------------------------------------*/
.bold 
{
    font-weight:bold;
}
.GrayItlTxt { color: #999999; font-size: .9167em; font-style: italic; padding-left:5px;}
.italics 
{
    font-style:italic;
}
.groupProfile_SiteName 
{
        font-size:.95em;
    padding-top:5px;
    padding-bottom:8px;
}
/* disappearing header in IE7 */
*:first-child + html .plainBox h1, .plainBox h2
{
    position: relative;
}
/* spacing between footer content and body content - need this because box styles without content were taking up space with the padding */
.box-footer a, .box-footer div, .box-footer p
{
    display: inline-block;
    padding: 10px 0px;
}
h1, h2
{
    _height: 1%;
}
td
{
    vertical-align: top;
}
/* WB: Commenting this out because it is breaking the UI in Layout Manager
 * Please be more careful and target  your CSS changes rather than putting
 * a global tag style in.
ol, ul
{
    margin: 0 0 0 20px;
    padding: 0;
}
*/
.mainCol ul, .mainCol ol
{   
    margin:0px 35px;
    padding:10px 0;
    overflow: hidden;
    zoom: 1;
    list-style-position: inside;
}
.mainCol ul li, .mainCol ol li 
{
    padding:0;
}
.mainCol ul 
{
     list-style-type: disc;
}
.mainCol ol 
{
    list-style-type:decimal;
}
.contentBox img, .box-body img
{
    position: relative;
    padding: 0; 
    margin: 5px; /*needs margin, not padding, in case there is a border*/
    margin-bottom: 0; /*prevents misalignment with text in inline images*/
	/*floated or aligned images have their margins built in already*/
}

.resourceBody img
{
	margin: 5px;
	margin-bottom: 0px; /*prevents misalignment with text in inline images*/
	/*floated or aligned images have their margins built in already*/
}

/* DE103 Need to nullify the above position:relative; rule for IE67 marquees with images */
.contentBox marquee img {
position: static;
}
.backLink
{
    margin-top: 30px;
}
span
{
    _overflow: hidden;
}
.backLinkBullet
{
    _overflow: hidden;
}
.float-left
{
    float: left;
}
.float-right
{
    float: right;
}
.clear-both
{
    clear: both;
}
.width-50p
{
    width: 50%;
}
.width-auto
{
    width: auto;
}

IMG.floatLeft
{
    float: left;
    margin-right: 10px;
}
IMG.floatRight
{
    float: right;
    margin-left: 10px;
}
.small
{
    font-size: .833em;
}
.large
{
    font-size: 1.167em;
}
.soft
{
    color: #D3D3D3;
}
.hide
{
    display: none;
}
.invisible 
{
    visibility:hidden;
}
.noUnderline, .no-url
{
    text-decoration: none;
}
p.last
{
    margin-bottom: 0px;
}
.addBtmMargin15
{
    margin-bottom: 15px;
}
.addBtmMargin10
{
    margin-bottom: 10px;
}
.addBtmMargin5
{
    margin-bottom: 5px;
}
.addTopMargin15
{
    margin-top: 15px;
}
.addTopMargin10
{
    margin-top: 10px;
}
.addTopMargin5
{
    margin-top: 5px;
}
.addLeftMargin10
{
    margin-left: 10px;
}
/* Google translator / Search */

.searchCalendarPublic td /* DE2354 */
{
    padding:15px 0 0 5px;
}

.googleSearchContainer /*DE2350--changed name of this selector; an existing selector had the same name*/
{
    margin:5px 0 5px 5px;   
}
.searchResultsMainTable .helpTips 
{
    margin:15px 0 0 0 !important;
    padding:0 5px;
}
.googleSearch label 
{
    display:none;
}
.googleSearch input[type="text"] 
{
    width:70%;
    max-width:250px;
    float:left;
    margin-left: 2px; /* DE2349 to match button in event of wrapping */
    margin-bottom: 5px; /* DE2349 to prevent overlap with button in event of wrapping */
    _width:auto;
}
.googleSearch input[type="button"] 
{
    float:left;
    position:relative;
    bottom:2px;
    padding:2px;
    margin-left:2px;
}
/* DE2350 commenting this out because it was breaking boxes in IE7
*:first-child+html .googleSearch .contentBox
{
    width:275px;
}*/
.transBox, .transBoxDrop
{
    margin-bottom: 10px;
    border: solid 1px #808080;
    background-color: #ffffff;
}
.transBoxDropContent
{
    padding: 0px !important;
}
.transBox TD
{
    padding: 0px;
}
.transBoxItem DIV, .transBoxItemHover DIV
{
    padding: 4px;
    background-color: #FFFFFF;
    text-align: left;
}
.transBoxItemHover DIV
{
    background-color: #808080;
    cursor: pointer;
}
.transBoxItem DIV IMG
{
    vertical-align: middle;
}
.transBoxItem DIV SPAN, .transBoxItemHover DIV SPAN
{
    padding-left: 20px;
    font-size: 11px;
    background-image: url(/images/flags.gif);
    background-repeat: no-repeat;
}
.transBoxItem DIV SPAN
{
    color: #333333 !important;
}
.transBoxItemHover DIV SPAN
{
    color: #FFFFFF !important;
}
/* Flags */
.flag_af
{
    background-position: 0 -520px;
}
.flag_sw
{
    background-position: 0 -456px;
}
.flag_sq
{
    background-position: 0 -533px;
}
.flag_be
{
    background-position: 0 -547px;
}
.flag_et
{
    background-position: 0 -562px;
}
.flag_gl
{
    background-position: 0 -574px;
}
.flag_hu
{
    background-position: 0 -588px;
}
.flag_is
{
    background-position: 0 -601px;
}
.flag_ga
{
    background-position: 0 -617px;
}
.flag_mk
{
    background-position: 0 -630px;
}
.flag_ms
{
    background-position: 0 -643px;
}
.flag_mt
{
    background-position: 0 -658px;
}
.flag_fa
{
    background-position: 0 -672px;
}
.flag_sw
{
    background-position: 0 -455px;
}
.flag_th
{
    background-position: 0 -468px;
}
.flag_tr
{
    background-position: 0 -481px;
}
.flag_cy
{
    background-position: 0 -494px;
}
.flag_yi
{
    background-position: 0 -506px;
}
.flag_pl
{
    background-position: 0 0px;
}
.flag_hr
{
    background-position: 0 -13px;
}
.flag_fi
{
    background-position: 0 -26px;
}
.flag_lt
{
    background-position: 0 -39px;
}
.flag_ja
{
    background-position: 0 -52px;
}
.flag_iw
{
    background-position: 0 -65px;
}
.flag_pt-PT
{
    background-position: 0 -78px;
}
.flag_no
{
    background-position: 0 -91px;
}
.flag_nl
{
    background-position: 0 -104px;
}
.flag_vi
{
    background-position: 0 -117px;
}
.flag_hi
{
    background-position: 0 -130px;
}
.flag_sv
{
    background-position: 0 -143px;
}
.flag_fr
{
    background-position: 0 -156px;
}
.flag_zh-CN
{
    background-position: 0 -169px;
}
.flag_ca
{
    background-position: 0 -182px;
}
.flag_id
{
    background-position: 0 -195px;
}
.flag_ar
{
    background-position: 0 -208px;
}
.flag_lv
{
    background-position: 0 -221px;
}
.flag_da
{
    background-position: 0 -234px;
}
.flag_en
{
    background-position: 0 -247px;
}
.flag_blank
{
    background-position: 0 -247px;
    * display: inline-block;
}
.flag_de
{
    background-position: 0 -260px;
}
.flag_el
{
    background-position: 0 -273px;
}
.flag_ko
{
    background-position: 0 -286px;
}
.flag_cs
{
    background-position: 0 -299px;
}
.flag_uk
{
    background-position: 0 -312px;
}
.flag_tl
{
    background-position: 0 -325px;
}
.flag_es
{
    background-position: 0 -338px;
}
.flag_sk
{
    background-position: 0 -351px;
}
.flag_ro
{
    background-position: 0 -364px;
}
.flag_sl
{
    background-position: 0 -377px;
}
.flag_sr
{
    background-position: 0 -390px;
}
.flag_zh-TW
{
    background-position: 0 -684px;
}
.flag_it
{
    background-position: 0 -416px;
}
.flag_bg
{
    background-position: 0 -429px;
}
.flag_ru
{
    background-position: 0 -442px;
}
.flag_ht
{
    background-position: 0 -701px;
}
/* New Base Box 

-------------------------------------*/
/* html>body .box-body 
{
    width:100%; 
} removed this for 14266 */

/* Global Box Styles */
html>body .plainBox.box 
{
    margin:10px 5px;
}

.plainBox
{
    background-color: #fff; /* !important; temporarily make all subpage plainBox box styles white */
}
    .mainCol .box-nc 
    {
        background-color:#fff;
    }
    .loginContainer .box-nc /* must revert back to transparent for login */
    {
        background-color:transparent;
    }
.baseBox, .borderBox, .borderBox2, .baseBox2
{
    background-position: bottom right;
    width: auto;
    _width: 100%;
    padding-right: 15px; /* the gap on the right edge of the image (not content padding) */
    _padding-right: 0;
    zoom: 1; /* fixes the rendering issue gap in the bottom right in IE67 */
    overflow: hidden;
}

/* workaround for 13166 */
html>body .borderBox_head.box, .borderBox_headInner.box
{
    height:auto !important;
}


/* set the top-right image */
.baseBox_head, .borderBox_head, .borderBox2_head, .baseBox2_head
{
    background-position: top right;
    margin-right: -15px; /* pull the right image over on top of border */
    _margin-right: 0px;
    padding-right: 20px; /* right-image-gap + right-inside padding */
}

/* set the top-left image */
.baseBox_headInner, .borderBox_headInner, .borderBox2_headInner, .baseBox2_headInner
{
    background-position: top left;
    margin: 0; /* reset main site styles*/
    border: 0; /* ditto */
    padding: 20px 0 0 20px; 
    *padding-top:0;/* padding-left = image gap + interior padding ... no padding-right */ *padding-top:10px;
_height:auto;
zoom:1;/* fixes the rendering issue gap in the bottom right in IE67 */
}

/* set the lower-left corner image */
.baseBox_body, .borderBox_body, .borderBox2_body, .baseBox2_body
{ /*display:inline-block\9; helps IE wrap around floated objects */
background-position:bottom left;
margin-right:0px;/* interior-padding right */
_margin-right:15px;
padding-top:0;
padding-right:0;
padding-left:15px;
padding-bottom:5px;
*height:1%;/* IE Holly Hack - now applied to both 6 and 7*/
padding-bottom:15px\9;
/*width:85%;
_width:81%;*/
}
/* the following targets safari 3+ and chrome 1+ */
@mediascreenand(-webkit-min-device-pixel-ratio:0)
{
.baseBox_body, .borderBox_body, .borderBox2_body, .baseBox2_body
{
    padding-bottom: 10px;
}
}
/* Clear padding and margins; fix custom height*/
/* DE204 */
/*.box-body 
{
	overflow: hidden;
}*/    /*This was commented out because it was totally breaking layout in FF2 - See DE504*/

.contentBox
{
    padding: 0 5px;
    margin: 0;
}
.box h2
{ 
    padding-left:5px;
    padding-bottom:5px; /* prevent text from wrapping around icons */ 
    *padding-top:15px;   
}

.contentBox p
{
    padding: 0;
    margin: 0;
}
.rssFeed
{
    margin-bottom: 10px;
    overflow: hidden; /*clears floated images within feed items*/
    _clear: both; /*ie6 needs the actual clear*/
}
/* rssFeed subscribe page */
.rssFAQ 
{
    margin:20px 0;
}
.rssFAQ .headerBullet 
{
    float:left;
    margin-right:2px;
}
.rssFAQ p 
{
    margin:5px 0;
    padding:0 0 10px 0;
}
.rssFAQ h1 
{
    padding-top:2px;    
}

/* the following hr facilitates the box wrapping around floated/aligned images */
hr.hrBlock
{
    display: none;
    margin:0;
}
hr 
{
    clear:both;
    margin:5px 0;
}
html > body hr.hrBlock
{
    display: block;
    visibility: hidden;
    display: none\9 /* hide from all IE */;
}


.ui-dialog
{
    border: solid 1px #515050;
    background-color: #f1f1f1;
    z-index: 3000;
}
html > body .ui-dialog-titlebar
{
    background-image: url(/images/ThemeEditor/ui_bg_highlight_1x30.png);
}
.ui-dialog-titlebar
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/images/ThemeEditor/ui_bg_highlight_1x30.png', sizingMethod='scale');
}
.ui-dialog-titlebar
{
    height: 28px;
    line-height: 28px;
    padding: 0 12px;
    font-size: 13px;
    font-weight: bold;
    color: #ffffff;
    background-repeat: repeat-x;
    background-position: 50% 50%;
    cursor: move;
    position: relative;
    -moz-border-radius: 0px;
    -webkit-border-radius: 0px;
}
.ui-dialog-titlebar, .ui-state-hover, .ui-dialog-titlebar .ui-state-focus
{
    background-color: #666666 !important;
}
.ui-dialog-titlebar-close
{
    /* border: solid 1px #373737; */
    position: absolute;
    margin: -9px 0 0 0;
    right: 10px;
    top: 50%;
}
.ui-dialog-titlebar-close span
{
    display: block;
    margin: 4px;
}
.ui-icon-closethick
{
    background: url('/images/ThemeEditor/icon_close.gif') no-repeat;
    display: block;
    height: 9px;
    width: 9px;
    text-indent: -99999px;
    overflow: hidden;
}
.ui-dialog-buttonpane
{
    background-color: #f1f1f1;
    padding: 5px;
    clear: both;
}
.dialog-buttonpane, .footerStyle
{
    text-align: center;
    margin: 10px 0;
}

/*login prompt box */
.promptStyle
{
    background-color: #f1f1f1;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    overflow: hidden;
}
.titleStyle, .ui-dialog-titlebar
{
    font-family: Tahoma;
    font-size: 13px;
    background: #373737 url(/images/ThemeEditor/ui_bg_highlight_1x30.png) repeat-x scroll 50% 50%;
    margin: 0;
    color: #fff;
}
.titleStyle
{
    -moz-border-radius-topleft: 3px;
    -moz-border-radius-topright: 3px;
    -webkit-border-top-left-radius: 3px;
    -webkit-border-top-right-radius: 3px;
}
.ui-dialog-titlebar
{
    -moz-border-radius-topleft: 0px;
    -moz-border-radius-topright: 0px;
    -webkit-border-top-left-radius: 0px;
    -webkit-border-top-right-radius: 0px;
}
.titleStyle /* pulled this out because it was causing private side prompts to have a huge header */
{
    padding: 10px;
}

/* The public side of the side uses a clear modal */
.modalStyle
{
    background-color: #FFFFFF;
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0.0;
}
.bodyStyle, .ui-dialog-content
{
    font-family: Tahoma;
    font-size: 12px;
    padding: 10px 15px;    
}
.bodyStyle
{
    color: #000;
}

.footerStyle
{
    font-family: Tahoma;
    font-size: 12px;
    color: #fff;
    text-align: center;
    padding-bottom: 10px;
}
.footerStyle input
{
    -moz-border-radius-bottomleft: 5px;
    -moz-border-radius-bottomright: 5px;
    -moz-border-radius-topleft: 5px;
    -moz-border-radius-topright: 5px;
    background-color: #696969;
    background-image: url(/images/ThemeEditor/ui_bg_highlight_1x30.png);
    background-position: 50% 50%;
    background-repeat: repeat-x;
    border: 1px solid #FFFFFF;
    color: #FFFFFF;
    font-size: 12px;
    font-weight: bold;
    margin: 0 2px;
    overflow: visible;
    padding: 2px 5px;
    text-align: center;
}
/* Group Profile */
.groupProfileSection
{
    margin-top: 20px;
}
/* Group Calendar */
.CalOutlineTbl table td
{
    padding: 3px;
    border: 1px solid #ccc;
}
.CalOutlineTbl table td table td 
{
    border:0;
}

/* Item Lists (user, groups, blogs, directory)

-------------------------------*/
.itemList
{
    margin: 5px 5px 0 5px;
}

.facultyDir table td, .classDir table td, .blogDir table td 
{
    padding:0;
    border:3px solid #fff;
}
.userDir table td.directoryItem 
{
    border-bottom:1px solid #fff;
    border-right:1px solid #fff;
    vertical-align:top;
}
.directoryItem div
{
    margin: 5px;
}
.userFullName
{
    font-weight: bold;
    font-size: 1em;
}
.userPosition
{
    font-size: .9167em;
    font-style: italic;
}

.mainCol .icEmail
{
    float: left;
    position: relative;
    bottom: 3px;
    margin-right: 0;
    padding-right: 0;
    margin:2px;
}

/* class directory listing */
.classDirUL li 
{
    list-style-type:none;
}
.mainCol .classDirUL 
{
    margin-left:5px;
}
/* groups list */
ul.summaryList li
{
    padding: 5px 0;
}
.instructorName a 
{
    text-decoration:none;
}
.summaryImg /* site listing summaryImg */
{    
    margin: 0 5px 5px 5px !important; /*changed to just have a margin of 5px and 0 on top for DE2911*/
   /* padding-top:5px !important;
    *margin:-5px 6px 0px 0 !important;
    *padding:0 !important; */
}
/* User Profile Pages

--------------------------------------*/
/* user profile page */
.userProfileCallOuts .summaryListBullet 
{
    background-color:transparent !important;
}
.userProfileType span br 
{
    display:none;
}

.profilePanelInfo
{
    width:300px;
}
.userInfoImage 
{
    max-width:90px;
}    
.userInfoImage img 
{
padding-right:10px;
}
.userInfoMid 
{
    width:auto;
    padding-right:10px;
}
.userInfoMid h3 
{
    float:left;
    padding-right:10px;
}
.userInfoRight 
{
    width:auto;
}

.userProfileName 
{
    font-size:1.3em;
}
.userProfileSiteName div, .userProfileOfficeHours div, .userProfileBlog div,
.userProfileRoom div, .userProfileGradesTaught div, .userProfileNickName div
{
    padding-top:8px;
}
.userProfilePosition 
{
    margin-top:0px;
}
.userProfileLeftCol /* DE79 */
{
    padding-right:10px;
}
.userProfileRightCol .baseBox.box, .userProfileRightCol .borderBox.box
{
    width:auto;
    min-width:180px;
}

.userProfileCallOuts .quickList div
{
    padding:2px 0;    
}
.userProfileCallOuts td
{
    vertical-align:top;
}

span.linkTitle 
{
    display:block;
    width:175px;
    background-image: url(/themes/global/images/icBullets.gif);
    background-position: 0px -560px;
    background-repeat: no-repeat;
    padding-left:10px;
    padding-top:5px;
    margin-left:-10px;
}
.linkCategory, .linkTitle 
{
    cursor:pointer;
}
.linkRow nobr
{
	white-space: normal;
}
.linkAddress
{
    text-decoration: underline;
    cursor: pointer;
    margin-bottom: 5px; 
    width:200px;
    word-wrap: break-word; 
    display:none; /*Used to break long urls in the fav links box. valid in IE, Safari, and FF 3.1+ */
}

/* align contents */
.classProfileAnnouncements
{
    width:70%;    
}
*:first-child+html .classProfileAnnouncements 
{
    padding-right:20px;
}

.userProfileName, .userProfileSiteName, .userProfileType
{
    font-weight: bold;
}
.linkCategory
{
    padding-top: 2px;
}
.selectedLinkCategory
{
    padding-top: 3px;
}

.linkRow nobr
{
	white-space: normal;
	word-wrap: break-word;
}

/* Search Page/Search Results */
.searchResultsMainTable 
{
    width:99%;
}
.searchResultsMainTable td 
{
    margin:0;
}
.txtBox 
{
    margin:0 5px;
}
#ecSearchResults
{
    margin: 10px;
}
.eventSearchResultsHeader, .blogSearchResultsHeader
{
    background-color: #eee;
    padding: 0px;
    margin: 0;
}
.eventSearchResultsHeader table td, .blogSearchResultsHeader table td
{
    text-decoration: underline;
    cursor: pointer;
}
#ecSearchResults table td
{
    padding: 2px;
}
#ecSearchResults table th 
{
    padding:4px;
}


/* Popup Body (Export Calendar Events)*/

#ToolTip
{
    position: absolute;
    top: 0;
    left: 0;
    background: InfoBackground;
    border-color: Gray;
    border-style: solid;
    border-width: 1px 1px 1px 1px;
    visibility: hidden;
}
.ToolTipTD
{
    color: black;
    font-family: verdana;
}
.popupHeader
{
    font-family: Arial, Verdana;
    font-size: 11px;
    font-weight: bold;
    color: #333333;
    background-color: #F1F1F1;
    padding: 2px 4px;
    border-top: solid 1px #333333;
    border-left: solid 1px #333333;
    border-right: solid 1px #333333;
}
.popupContent
{
    background-color: #FFFFFF;
    border: solid 1px #333333;
}
.popupIFrame
{
    width: 100%;
    height: 100%;
}
html > body .popupIFrame
{
    width: 100%;
    min-height: 250px;
}
.popupBody
{
    font-family: Arial, Verdana;
    color: #000000;
    font-size: 12px;
    padding: 10px;
    margin: 0px;
    background: #fff;
}
/* UI HELPERS */
.ui-helper-clearfix:after
{
    content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
.ui-helper-clearfix
{
    display: inline-block;
}
/* required comment for clearfix to work in Opera \*/
* html .ui-helper-clearfix
{
    height: 1%;
}
.ui-helper-clearfix
{
    display: block;
}
/* END UI HELPERS */
.contentRegion
{
	min-width: 200px;
}


/*Blog Directory/Blog Search*/
.gridFooter
{
	padding-top: 10px;
}
.gridFooter A
{
	padding: 0px 5px;
}
.gridHeadingCell
{
	background-color: #cecece;
	padding: 4px;
	font-color: #000000;
	font-size: 12px;
	font-weight: bold;
	border-right: solid 2px #ffffff;
}
.gridHeadingCell TD
{
	text-decoration: underline;
	cursor: pointer;
}
.gridDataCell
{
	background-color: #ffffff;
	padding: 4px;
	border-bottom: solid 1px #cecece;
}

/* Survey */
.surveyTable td.text span
{
    display:block;
    padding:2px 0 2px 5px;  
}
.surveyTable input[type="checkbox"] 
{
    margin-right:5px;
}
.surveyQuestions td.text span
{
    display:block;
    padding-top:20px;
}

 html >/**/ body .surveyQuestions .questionCell span /*this is hidden from IE6-7 because it can cause cells to overlap in that browser*/
{
	min-width: 250px; /*keeps longer questions from getting way too scrunched up*/
}


/* Mission Statement Content (resource info page)*/
.story h2 
{
    padding-top:15px;
padding-left:0px;
    margin-left:5px;
}
.story div 
{
    padding-left:5px;
    padding-top:5px;
}
.story ol li ul 
{
    margin-left:15px;
}
.resourceBody {
padding-top:10px;
}
/* classes no results */
.classNoResults 
{
    padding-top:20px;
    background-color:#fff;
}

td.resourceListingCell
{
	*width: 270px;
}

.resourcePanel
{
	min-width: 270px; 
}

/* 14131 */
.loginCompact label, .loginCompact ul.loginLinks
{
    *margin-left:5px;
}

.listViewSideBar, .groupProfileSideBar 
{
    width:230px;
}

/* 14191 */
.siteMessageImg 
{
    padding-right:8px;
}
/* News Resource */
resourceQuote {
padding:8px 0;
}
.resourceByLine {
padding:8px 0;
font-size:.9em;
font-style:italic;
}

/* Parent Registration */

.parentRegForm {
margin-top:10px;
}
.parentRegForm td {
padding:0 10px;
}

.parentRegForm h2 {
padding:15px 0 20px 0;
margin:0;
}

.parentRegMoreInfo {
position:relative;
bottom:30px;
left:60px;
}

/* DE148 */
.extraRegion .webPart {
margin: 0 0 40px 0;
}

.leftContentRegion
{
    overflow:hidden;
}
.contentBoxNoBackground, .contentBox
 {
overflow:hidden !important;
}

/* site listing DE447, DE413 and DE */

.siteListAdminHeader {
margin-top:0;
}
.siteListAdmin {
margin-bottom:40px;

}


/*Announcements*/

.announcementItem
{
	padding-top: 5px;
	padding-bottom: 5px;
	*padding: 0; /*corrects for the fact that IE wrongly adds padding to HRs*/
	overflow: hidden; /*clears floats*/
}

/*Photo Album*/

.photoAlbumFlashViewer /*this is for photo albums on the homepage which should default to centered*/
{
	text-align: center;
}

.flashviewer .photoAlbumFlashViewer /*this is for photo albums on resource pages which should left-align*/
{
	text-align: left;
}

.logoContainer .photoAlbumFlashViewer, .logoContainerTop .photoAlbumFlashViewer, .logoContainerBtm .photoAlbumFlashViewer, .logo .photoAlbumFlashViewer
{
	text-align: left; /*for logo region - overrides centering*/
}

.PApreview .wrapper
{
	width: auto !important; /*overrides set widths of .wrapper in certain themes for PA preview*/
}
.header .loginContainer .webPart, .header .loginContainer .loginHorizontal /*DE2596*/
{
    float:none;
}

/* DE3302 */
.siteList div a {
font-size:14px;
font-weight:bold;
}
.siteListTable h1 {
margin-bottom:20px;
}

#googleDocEmbedFrame iframe {
    width:100%;
    min-height:600px;
    height:80%;
    border:1px solid #eee;
    box-sizing:border-box;
    outline:none;
    }

#ctl00_navigationZone_navigationMenu ul > li {
    display: inline-block;
    padding:5px 10px;
    position: relative;
}

#ctl00_navigationZone_navigationMenu ul > li > ul {
    position: absolute;
    display: none;
}/* Upcoming Events -----

--------------------*/

.upcomingEventDay p
{
    margin: 0;
    padding: 0;
}
.upcomingEventDay
{
    padding-top: 15px;
    _height: 1%;
}
.upcomingEvent
{
    background-image: url(/themes/global/images/bgUpcomingEvent.png);
    background-position: top left;
    background-repeat: no-repeat;
    padding: 1px 0 0 1px;
    margin-left:15px;
    margin-right:5px;
    line-height: normal;
}
.upcomingEventInner
{
    background-image: url(/themes/global/images/bgUpcomingEvent.png);
    background-position: bottom right;
    background-repeat: no-repeat;
}
/* DE133 IE7 fix for images in events that are floated to the right */
*:first-child+html .ueContent {
display:inline-block;
}
.ueContent
{
    padding: 5px;    
}

div.ueDate
{
    font-weight: bold;
    padding-left: 15px;
    margin-bottom: 5px;
    background-image: url(/themes/global/images/icBullets.gif);
    background-position: 5px -165px;
    background-repeat: no-repeat;
    white-space:nowrap;
}
.upcomingEvent div.ueTitle
{
    font-weight: bold;
    padding-top: 6px;
    margin-left: 12px;
}
.upcomingEvent div.ueDescription, div.ueTime
{
    margin-left: 20px;
    padding-top: 0px;
}
.upcomingEvent div.ueTime
{
    padding-left: 5px;
    background-image: url(/themes/global/images/icBullets.gif);
    background-position: 0px -565px;
    background-repeat: no-repeat;
    text-transform: uppercase;
    font-size: .8em;
}
.upcomingEvent .icon_attachment {
float:right;
}

div.ueDescription
{
    font-size: .9em;
    overflow:  hidden; /*DE2361 to contain floats*/
    _zoom: 1; /*DE2361 give layout to IE6 to help contain floats*/
}
div.upcomingEventsFooter
{
    text-align: center;
    margin: 0px 10px 0px 10px;
    padding-top: 10px;
    white-space: nowrap;
}
div.upcomingEventsFooter a, .viewMonthlyCalLink
{
    white-space:nowrap;
}
.viewMonthlyCalLink /* DE2321 */
{
        display:block;
        width:10.25em;
        margin:.5em auto;
}
div.ueFooterDate
{
    padding: 0;
    margin: 0;
}
/* hide span << in all themes */
.upcomingEventsFooter .viewMonthlyCalendarLink span {
display:none;
}

.ueEventType
{
    padding: 2px;
    text-align: left;
    padding-left: 3px;
    font-size: .65em;
    font-weight: bold;
    text-transform: uppercase;
    margin-right: 1px;
}
/* template01 layout and common styles */

html>body 
{
    background-image: url(/themes/contemporary/images/bgBody.png);
}
body
{
    _background-image:none;
    margin:0;
    padding:0;
}
.bodyWrapper
{
    _background-image: url(/themes/contemporary/images/bgBody.png);
    background-position: top left;
    padding:20px 0;
}

table.wrapperTable
{
    padding: 0;
    margin: 20px auto;
    background: none;
}
/* table.wrapperTable td
{
    text-align: left;
}
removed 13912 */

td.leftSide, td.rightSide
{
    width: 4px;
    padding: 0;
}
html > body td.rightSide
{
    background: url(/themes/contemporary/images/bgRightSide.png) repeat-y left;
}
td.rightSide
{
    width:8px;
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgRightSide.png', sizingMethod='scale');
}
html > body td.leftSide
{
    background: url(/themes/contemporary/images/bgLeftSide.png) repeat-y right;
}
td.leftSide
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgLeftSide.png', sizingMethod='scale');
    width:8px;
}

td.leftCol 
{
    width:141px;
    background-color:#fff;
}
div.leftCol 
{
    width:141px;
}
td.mainCol, td.mainCol2
{
    background: url(/themes/contemporary/images/bgMainCol.png) repeat-x 0px 0px;
    background-color: #fff;
    padding-bottom: 2px;
    padding-top:3px;  
}
td.mainCol 
{
    width:100%;
}
/*
.mainContainer 
{
    margin: 10px 0 ;        
}*/
.mainContainerInner 
{
   margin:0 25px;
    margin-top:15px;
}

/* home page layout padding between columns*/
.brochure_1 .rightContentRegion,
.brochure_2 .rightContentRegion,
.brochure_3 .topRightContentRegion,
.brochure_3 .btmRightContentRegion,
.brochure_left .topRightContentRegion,
.brochure_left .centerContentRegion,
.brochure_left .btmRightContentRegion,
.brochure_right .centerContentRegion,
.brochure_right .rightContentRegion,
.columns_2 .rightContentRegion,
.columns_3 .midContentRegion,
.columns_3 .rightContentRegion,
.columns_leftW .rightContentRegion,
.columns_rightW .rightContentRegion 
{
    padding-left:25px;
}

    


html > body .topLeftCorner
{
    background: url(/themes/contemporary/images/bgCornersTL.png) no-repeat right bottom;
}
.topLeftCorner
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgCornersTL.png', sizingMethod='image');
}
html > body .topRightCorner
{
    background: url(/themes/contemporary/images/bgCornersTR.png) no-repeat left bottom;
}
.topRightCorner
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgCornersTR.png', sizingMethod='image');
}
html > body .btmLeftCorner
{
    background: url(/themes/contemporary/images/bgCornersBL.png) no-repeat right bottom;
}
.btmLeftCorner
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgCornersBL.png', sizingMethod='image');
    width:8px;
}
html > body .btmRightCorner
{
    background: url(/themes/contemporary/images/bgCornersBR.png) no-repeat left bottom;
}
.btmRightCorner
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgCornersBR.png', sizingMethod='image');
    width:8px;
}

html > body .topTD
{
    background: url(/themes/contemporary/images/bgTop.png) bottom repeat-x;
}
.topTD
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgTop.png', sizingMethod='scale');
}
html > body .bottomTD
{
    background: url(/themes/contemporary/images/bgBottom.png) bottom repeat-x;
}
.bottomTD
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgBottom.png', sizingMethod='scale');
}


/* standard headers */
h1 
{
    font-size:1.33em;
}
h2
{
    font-variant:small-caps;
    font-size:1em;
}
h2.h2-4 
{
    font-variant:normal;
}
/* side nav */
.cnb_TopGroup, .cnb_Group
{
    border:0 !important;
    background:#fff !important;
    border-top:1px solid #cecece;    
}
.cnb_TopItem, .cnb_TopItemHover 
{
    margin-top:5px;
}
.cnb_TopItem, .cnb_Item, .cnb_TopItemHover, .cnb_ItemHover  
{
    background-image:url(/themes/contemporary/images/bgSideNav.gif);
    background-repeat:repeat-x;
    background-position:top left; 
    background-color:#fff;    
    padding:0;
    margin-bottom:3px;
    margin-right:2px;    
    border:0 !important;
    font-size:1em !important;
    color:#333 !important;
    width:139px !important;
}
.cnb_TopItemHover, .cnb_ItemHover
{
    background-image:url(/themes/contemporary/images/bgSideNav.gif);
    background-repeat:repeat-x;
    background-position:0px -37px ;
}
    
.cnb_TopItem td, .cnb_Item td 
{
    border:0;
    word-wrap:break-word; 
}
.cnb_TopItem div div, .cnb_Item div div, .cnb_TopItemHover div div, .cnb_ItemHover div div
{
     margin:11px 6px;         
}

/* top nav */
.topNav 
{
    clear:both;
    float:none;
       
}
ul.topNavigation
{
    margin: 0;
    padding: 5px 0 5px 5px;
    background-image:url(/themes/global/images/dotted_white.gif);
    background-position:bottom;
    background-repeat:repeat-x; 
    
}
ul.topNavigation li
{
    display: inline;
    padding: 0 0 0 5px;
    margin: 0;
    /*font-family:Verdana;*/
    font-size:.833em;
}
html > body span.topNavBullet
{
    position: relative;
    top: 2px;
}

*:first-child + html span.topNavBullet /* IE7 first child hack */
{
    position: relative;
    top: -1px;
}

span.topNavBullet
{
    display: inline-block;    
    background-image:url(/themes/global/images/icBullets.gif);
    background-position: 0px -88px;
    background-repeat: no-repeat;
    width: 7px;
    height: 10px; 
    *position:relative;
    *bottom:1px!important;
    _overflow:hidden;
}
/* login -----------------
---------------------------*/
.login 
{
    margin-bottom:10px;
}
.loginContentCompact 
{
    padding:20px;
}
.headerCell 
{
    background-color:#fff;
}
.headerCell .loginHorizontal
{
    font-size: .9em;
    padding-bottom:2px;
    margin-bottom:3px;
    background-color:transparent;
    width:98%; /*DE2295 */
}
.headerCell .loginHorizontal td 
{
    padding:14px 0;
    vertical-align:middle;
}
.headerCell .loginHorizContainer
{
    background-image:url(/themes/contemporary/images/bgLogin.gif);
    width:800px;
    border:1px solid #ccc;
    border-left:none;
    border-right:none;
    height:50px;
}
.headerCell .loginHorizontal .loginWord
{
    display:block;
}
.headerCell .loginCompact .loginWord
{
    display:none;
}
.headerCell .loginHorizontal h2.loginWord
{
    background: url(/themes/global/images/icBullets.png) no-repeat;
    background-position: right -153px;
    text-transform: uppercase;
    font: bold 14px 'trebuchet ms' , arial, sans-serif;
    color: #666;
    letter-spacing: normal;   
    margin: 0;
    padding:0 8px 0 15px;
}
.header .logoContainer .loginHorizContainer, .header .logoContainer .loginHorizContainer a
{
    color:#333 !important; /* DE2306 */
}
.loginHorizontal .loginLabel label 
{
    position:relative;
    top:0px;
}
.loginHorizontal .loginField 
{
    width:143px !important;
}
.headerRegion .webPartZone 
{
    min-height:40px !important;
}

/* breadcrumbs */
.breadCrumbs
{
    border-bottom:1px solid #eee;
    position:relative;
    bottom:5px;
}
/* buttons */
.goButton 
{
    border:0;
}
/* bulleted items need more indention... 13298 */
.mainCol ul, .mainCol ol 
{
    margin:0 0 0 40px;
}

/* Nav Bar Horizontal */
.horizNavContainer 
{
    border-bottom:3px solid #fff;
    border-top:3px solid #fff;
    float:left;
    width:100%;
}
.horizNavContainer table
{
    vertical-align: middle;
    width: 100%;
    clear:both;    
}
/*
.horizNavZone 
{
    min-height:30px;
}
.horizNavZone .webPartZone
{
    min-height:30px !important;
}*/

html > body .TrootItem, .TrootItemHover, .TrootItemExpanded, .TrootItemSelected
{
    background: url(/themes/contemporary/images/bgBannerHead.png) repeat-x;
}

.TrootItem, .TrootItemHover, .TrootItemExpanded, .TrootItemSelected 
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgBannerHead.png', sizingMethod='scale');
    cursor: pointer;
    /*font-family: arial,sans-serif;*/
    font-size: 1em;
    font-variant: small-caps;
    border-right: 1px solid #fff;
    border-top: 3px solid #fff;
    vertical-align:middle;   
    padding:4px 3px; 
    height:30px;
    *height:24px;
}


.TsubItem, .TsubItemHover, .TsubItemSelected
{
    cursor: pointer;
    font-size:.75em;
    font-variant:small-caps;
    padding: 5px;
}

.dropdown 
{
    border:2px solid #fff;
    border-bottom:none;  
}
.dropdown td 
{
    border-bottom:1px solid #fff;
}
/*
.subItem
{
    background-repeat: repeat-y;
    background-position: left;    
}

.subItem td div, .subItemHover td div, .subItemSelected td div
{
    background-position: top left;
    background-repeat: repeat-y;
    text-decoration: none;
    margin: 0;
    white-space: normal;
    padding: 50px 0 5px 22px;
    width: 175px;
    cursor: pointer;
    font-size:.5em;
}*/

/* wrap all menu items */
td.leftNavigation table td
{
    white-space: normal;
}

/* summary list */
.summaryListBullet 
{
    margin-top:3px;
    background:url(/themes/global/images/icBullets.gif) 0px -168px no-repeat;    
}
.resourceListBullet, .summaryListBullet 
{
    background-color:#fff !important; /* resource bullets need to be white in this theme*/
}
/* back link */
.backLink 
{
    padding-bottom:20px;
}
.backLinkBullet
{
    display: block;
    float: left;
    width: 16px;
    height: 16px;
    background-image:url(/themes/contemporary/images/icBullets16.png);
    background-repeat:no-repeat;
    background-position:0 -80px;
    margin:1px 0 0 0;
} 

/* administration directory */
.siteAdminDirectory 
{
    margin-top:20px;
}
.siteAdminPosition
{
    font-size:.9em;
    font-variant: normal;
    font-style:normal;
    font-weight:bold;
    display: block;
    text-transform:none;
}
.siteAdminBullet
{
    display: block;
    float: left;
    width: 24px;
    height: 24px;
    margin-right: 5px;
    background-image: url(/themes/contemporary/images/icBullets24.png);
    background-repeat: no-repeat;
}

.siteAdminImageAndDescription
{
	margin: 1.5em 29px;
}

/* 14256*/
.siteAdminImage 
{
    margin-right:10px;
}

.siteListAdminHeader h1
{
	left: -25px; /*overrides global positioning for DE209*/
}


/* NEW box modules */
.baseBox, .borderBox, .borderBox2
{
    margin: 5px 0px 5px 0; /* use to position the box */
}
.baseBox, .baseBox_head, .baseBox_headInner, .baseBox_body 
{
    background-image:url(/themes/global/images/bgBox.gif);    
    background-repeat:no-repeat;
}
html>body .borderBox, .borderBox_head, .borderBox_headInner, .borderBox_body 
{
    background-image: url(/themes/contemporary/images/bgBoxBorderTex.png);
}
.borderBox, .borderBox_head, .borderBox_headInner, .borderBox_body 
{    
    _background-image: url(/themes/contemporary/images/bgBoxBorderTex.gif);
    background-repeat:no-repeat;    
}
.borderBox2, .borderBox2_head, .borderBox2_headInner, .borderBox2_body 
{
    background-image:url(/themes/global/images/bgBoxBorder.gif);    
    background-repeat:no-repeat;
}
.baseBox_headInner, .borderBox_headInner, .borderBox2_headInner
{
    padding: 6px 0 0 6px; /* whole header padding top and left*/
}

/* banner/headers */

html > body .baseBox h2.banner, .borderBox2 h2.banner 
{
    background-image: url(/themes/contemporary/images/bgBannerHead.png);
}
.baseBox h2.banner, .borderBox2 h2.banner  
{
    _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='/themes/contemporary/images/bgBannerHead.png', sizingMethod='scale');   
    background-repeat:repeat-x;
    background-position:top;
}
.borderBox_head, .baseBox_head, .borderBox2_head
{
    padding-right:6px; /* whole header padding border box - note: anything below 6px hides covers the border */
}
/* remove padding around banner */
.baseBox_head 
{
   padding-right:5px;
} 
.baseBox_headInner 
{
    padding-left:5px;
    padding-top:5px;
}


/* headers */
div.headerBullet, span.headerBullet
{
    background-image: url(/themes/contemporary/images/icBullets24.png);
    background-repeat: no-repeat;
    display: block;  
    width: 25px;
    _width:24px;
    height: 24px;
    position:relative;
    z-index:5;
}
.plainBox span.headerBullet 
{
    display:block;
    float:left;
}

.pageTitleContainer 
{
    background-image:url(/themes/global/images/dottedClear.gif);
    background-position:bottom;
    background-repeat:repeat-x;
    padding-left:0;
    margin-left:0;
    padding-bottom:2px;
    margin-bottom:10px;
    overflow: hidden; /*expands h1 to contain floats*/
    *padding-bottom: 5px; /*for ie6-7*/
}

.pageTitleContainer .headerBullet
{
	float: left;
	margin-right: 5px;
	margin-bottom: 5px;
}
	
.pageTitle
{
	top: 2px;
}

.plainBox .headerBullet
{
    width: 25px;
    height: 24px;  
    background-image: url(/themes/contemporary/images/icBullets24.png);
}
.plainBox h1 
{
    padding-top:3px;
}

.plainBox h2 
{
    padding:2px 0 0 0;
}
.mainContainer .plainBox .summaryList 
{
    padding-left:0;
    margin-left:0;
}
.hb_bs1 
{
    background-position:0px -32px;
}
.hb_bs10 
{
    background-position:0px -64px;
}

.hb_bs9
{
	background-position: 0px -98px;
	height: 25px;
	float: left;
}

.baseBox span.headerBullet2, .borderBox2 span.headerBullet2  
{
    display:block;
    _display: inline-block;
    float: left;
    width: 16px;
    height: 16px;
    position:relative;
    right:2px;
    top:1px;
    margin-right:2px;
    background-image: url(/themes/contemporary/images/icBullets16.png);
    background-position:0px -160px;
    background-repeat:no-repeat;
}  
.borderBox span.headerBullet2, .plainBox span.headerBullet2 
{
    display:block;
    _display: inline-block;
    float: left;
    width: 16px;
    height: 16px;
    position:relative;
    left:0px;
    top:0px;
    margin-right:2px;
    background-image: url(/themes/contemporary/images/icBullets16.png);
    background-position:0px -240px;
    background-repeat:no-repeat;
    overflow:hidden;
}  
.baseBox h1, .borderBox h1, .borderBox2 h1,  .baseBox h2, .borderBox h2, .borderBox2 h2 
{
    padding:5px 10px;
}
.borderBox h1, .borderBox h2, .baseBox h1.banner, .borderBox2 h1.banner
{
    background-image:url(/themes/contemporary/images/dotted.gif);
    background-repeat:repeat-x;
    background-position:bottom;
    padding:5px 10px;    
}

/* bottom padding of solid boxes all browsers*/
.baseBox_body
{
    padding-bottom:15px;
}

.plainBox
{
    background-color:#fff;
    margin: 10px;    
}

/* Content Spacing 

----------------------------*/

/* box style 5 spacing bottom */
.borderBox_body
{
    margin-right: 0px; /* interior-padding right */
    _margin-right: 15px;
    padding:0 0 25px 15px;
    *height: 1%; /* IE Holly Hack */ 
    padding: 0 0 30px 15px \9; /* mirror .cssbox_head right/left */  
}
/* the following targets safari 3+ and chrome 1+ */
@media screen and (-webkit-min-device-pixel-ratio:0) 
{    
.borderBox_body
 {
    padding:0 0 15px 15px;
 }
}   
/* end default box module spacing */

.contentBox 
{
    padding:10px 0 0 0;
}
/* indent content for large icon box style */
.contemporary_bs3 .contentBox
{
    padding:10px 5px 0 25px;
}
.groupProfileSection .plainBox .contentBox 
{
    padding-left:10px;
}
.profileBiography, .profileMessage, .profileSiteMessage 
{
    position:relative;
    bottom:10px;
    right:20px; /* 14255 ligning up content with icon better */
}


/* footer */
.footerTD 
{
    font-size:.9em;
    background:url(/themes/contemporary/images/echalkPower.gif) no-repeat bottom right #fff;
    padding-bottom:59px;
}
.footer 
{    
    background-color:#eee;
    float:left;
    padding:10px 0; 
    width:100%;
}   
/* site info */

.footerRegion .siteInformation 
{
    padding-left:10px;
    margin-right:150px;
}
.footerRegion div .transBox 
{
    float:right;
    clear:right;
    margin-top:5px;
    margin-right:10px;
}
.subFooterRegion .transBox 
{
    margin-left:5px;
    margin-top:5px;
}
/* locate school link */
.footer .locateSchoolLink, .userPolicyLink
{
    float:left;
    /*clear:left;*/
    margin-bottom:10px;
    margin-left:10px;
}
.footer a 
{
    text-decoration:underline;
}
.userPolicy 
{
    float:right;
    margin-right:10px;
}

.footerRegion table.weatherContainer 
{
    position:relative;
    left:10px;
}




/* user profile callouts */
.userProfileCallOuts .summaryListBullet 
{
    background-color:transparent !important;
}
.userProfileRightCol 
{
    width:200px;
}
.userProfileTable 
{
    width:100%;    
}

/* 14247 */
.headerCell .loginHorizContainer {
width:auto;
}

/* DE169 additional alignment issues */
.calMonthWrapper
{
   /* width: 100%; DE169*/
    position: relative;
    *top:10px;
    *right:20px;
    z-index: 1;
}

div.login table
{
	clear: both;
}


/*header box*/

.headerBox
{
   height: 100%;
   margin: 5px;
}

.headerBox .box-header

{
   height: auto; /*expandable*/
}

.headerBox h2, .headerBox h1
{
   margin: 0; /*keeps IE from making header overflow */
   padding: 5px 5px 15px 5px; /*keeps text from running over the bottom of the image and indents heading slightly to match mainBoxes*/
}

.headerBox .box-body

{
   padding: 10px; /*keeps content even with header content */
}

/* box styles */

.contemporary_bs5 .box, .contemporary_bs8 .box 
{
    width:auto !important; /* fixes broken box style when custom width is added */
}
.contemporary_bs9 .box-header

{
   background: transparent url(/themes/Contemporary/Images/bs09header.png) repeat-x bottom;
   _background: transparent url(/themes/Contemporary/Images/bs09header.gif) repeat-x bottom;
}

.contemporary_bs9 .box-body
{
   background: white;
}

.contemporary_bs9 .contentBox
{
	padding-top: 0;
}

/* DE1109 box styles 5 and 8 custom width fix */
.contemporary_bs5 .box, .contemporary_bs8 .box 
{
    width:auto !important;
}
BODY { background-color: rgb(255,255,255); font-family: arial } .template { color: rgb(51,51,51) } .template A { color: rgb(255,153,52) } .background { color: rgb(102,102,102) } .background A { color: rgb(102,102,102) } .color-pc { background-color: rgb(255,153,52); color: rgb(51,51,51) } .color-sc { background-color: rgb(0,51,102); color: rgb(255,255,255) } .color-mpc { background-color: rgb(255,241,226); color: rgb(0,0,0) } .color-msc { background-color: rgb(217,225,232); color: rgb(0,0,0) } .color-ac { background-color: rgb(255,241,184); color: rgb(51,51,51) } .color-pc A { color: rgb(51,51,51) } .color-sc A { color: rgb(255,255,255) } .color-mpc A { color: rgb(0,0,0) } .color-msc A { color: rgb(0,0,0) } .color-ac A { color: rgb(51,51,51) } .box-pc .box { background-color: rgb(255,153,52); color: rgb(51,51,51) } .box-sc .box { background-color: rgb(0,51,102); color: rgb(255,255,255) } .box-mpc .box { background-color: rgb(255,241,226); color: rgb(0,0,0) } .box-msc .box { background-color: rgb(217,225,232); color: rgb(0,0,0) } .box-ac .box { background-color: rgb(255,241,184); color: rgb(51,51,51) } .box-pc .box A { color: rgb(51,51,51) } .box-sc .box A { color: rgb(255,255,255) } .box-mpc .box A { color: rgb(0,0,0) } .box-msc .box A { color: rgb(0,0,0) } .box-ac .box A { color: rgb(51,51,51) } .box-pc .template A { color: rgb(255,153,52) } .box-sc .template A { color: rgb(255,153,52) } .box-mpc .template A { color: rgb(255,153,52) } .box-msc .template A { color: rgb(255,153,52) } .box-ac .template A { color: rgb(255,153,52) } .font-pc { color: rgb(255,153,52) } .font-sc { color: rgb(0,51,102) } .font-mpc { color: rgb(255,241,226) } .font-msc { color: rgb(217,225,232) } .font-ac { color: rgb(255,241,184) } .font-pc A { color: rgb(255,153,52) } .font-sc A { color: rgb(0,51,102) } .font-mpc A { color: rgb(255,241,226) } .font-msc A { color: rgb(217,225,232) } .font-ac A { color: rgb(255,241,184) } .prep .color-sc A {  } .prep .color-pc A {  } .prep .font-pc A {  } .elementary .template A {  } .academic .template A {  } .wp1699876889 .box { width: 280px } .wp864492080CalendarEvents .box { width: 280px } .wp1751056310Weather .box { width: 280px } .wp864492080CalendarEvents .box-body { padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px } .wp1010911754 .box { width: 280px } .wp409318672 .box-body { font-family: ; font-size: 1.17em } .box-270025051 .box-body { font-family: arial }