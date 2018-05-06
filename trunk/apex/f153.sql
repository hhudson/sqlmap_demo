prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>5510843774547541
,p_default_application_id=>153
,p_default_owner=>'HAYDEN'
);
end;
/
 
prompt APPLICATION 153 - SQLMAP DEMO
--
-- Application Export:
--   Application:     153
--   Name:            SQLMAP DEMO
--   Date and Time:   23:23 Sunday May 6, 2018
--   Exported By:     HAYDEN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.4.00.08
--   Instance ID:     220157641556111
--

-- Application Statistics:
--   Pages:                      5
--     Items:                   10
--     Processes:                8
--     Regions:                  9
--     Buttons:                  7
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,153)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HAYDEN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'SQLMAP DEMO')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_175153')
,p_application_group=>37948007125596585
,p_application_group_name=>'BBL'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt=>'5C34080BA3FC19D5F91F87AF3A5ADA62CD66DB9150C1C57D1D0AA9CBA7EF76DE'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(77896447564651881)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:SQL Injection Test'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'HAYDEN'
,p_last_upd_yyyymmddhh24miss=>'20180506212157'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77843982117651604)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77897652041651919)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(86649923750846097)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'SQLMAP TEST'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-hipster'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5069424356593125)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wrench'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(77896146578651862)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(77896331572651879)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77843423951651601)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77843567384651604)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77843611356651604)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77843767200651604)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77843871016651604)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(77843915692651604)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(77897513787651916)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(77897965430651920)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77844085855651617)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77844246279651637)
,p_page_template_id=>wwv_flow_api.id(77844085855651617)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77844287903651641)
,p_page_template_id=>wwv_flow_api.id(77844085855651617)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77844465166651641)
,p_page_template_id=>wwv_flow_api.id(77844085855651617)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77844508437651641)
,p_page_template_id=>wwv_flow_api.id(77844085855651617)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77844654928651641)
,p_page_template_id=>wwv_flow_api.id(77844085855651617)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77844685065651641)
,p_page_template_id=>wwv_flow_api.id(77844085855651617)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77844807841651641)
,p_page_template_id=>wwv_flow_api.id(77844085855651617)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77844888229651641)
,p_page_template_id=>wwv_flow_api.id(77844085855651617)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77845023116651655)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845172832651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845266597651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845324924651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845447588651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845546756651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845658049651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845716872651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845803202651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77845963541651656)
,p_page_template_id=>wwv_flow_api.id(77845023116651655)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77845984101651656)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77846111247651656)
,p_page_template_id=>wwv_flow_api.id(77845984101651656)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77846240629651656)
,p_page_template_id=>wwv_flow_api.id(77845984101651656)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77846364991651656)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77846428366651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77846512676651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77846591486651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77846734776651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77846807052651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77846878313651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77847019322651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77847156598651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77847192677651656)
,p_page_template_id=>wwv_flow_api.id(77846364991651656)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77847315902651656)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77847454617651656)
,p_page_template_id=>wwv_flow_api.id(77847315902651656)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77847561881651656)
,p_page_template_id=>wwv_flow_api.id(77847315902651656)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77847637660651656)
,p_page_template_id=>wwv_flow_api.id(77847315902651656)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77847806809651663)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77847902383651663)
,p_page_template_id=>wwv_flow_api.id(77847806809651663)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848019262651664)
,p_page_template_id=>wwv_flow_api.id(77847806809651663)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848142963651664)
,p_page_template_id=>wwv_flow_api.id(77847806809651663)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848200278651664)
,p_page_template_id=>wwv_flow_api.id(77847806809651663)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848324935651664)
,p_page_template_id=>wwv_flow_api.id(77847806809651663)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848397531651664)
,p_page_template_id=>wwv_flow_api.id(77847806809651663)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848498201651664)
,p_page_template_id=>wwv_flow_api.id(77847806809651663)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848612481651664)
,p_page_template_id=>wwv_flow_api.id(77847806809651663)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77848687793651664)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848848632651664)
,p_page_template_id=>wwv_flow_api.id(77848687793651664)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848911933651666)
,p_page_template_id=>wwv_flow_api.id(77848687793651664)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77848978493651666)
,p_page_template_id=>wwv_flow_api.id(77848687793651664)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77849180090651666)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77849326483651667)
,p_page_template_id=>wwv_flow_api.id(77849180090651666)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77849444879651667)
,p_page_template_id=>wwv_flow_api.id(77849180090651666)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77849491972651667)
,p_page_template_id=>wwv_flow_api.id(77849180090651666)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77849635526651667)
,p_page_template_id=>wwv_flow_api.id(77849180090651666)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77849691674651667)
,p_page_template_id=>wwv_flow_api.id(77849180090651666)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77849862366651667)
,p_page_template_id=>wwv_flow_api.id(77849180090651666)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77849950739651667)
,p_page_template_id=>wwv_flow_api.id(77849180090651666)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(77850009429651671)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77850133205651675)
,p_page_template_id=>wwv_flow_api.id(77850009429651671)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77850268503651675)
,p_page_template_id=>wwv_flow_api.id(77850009429651671)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77850314759651675)
,p_page_template_id=>wwv_flow_api.id(77850009429651671)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77850473088651675)
,p_page_template_id=>wwv_flow_api.id(77850009429651671)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77850506320651675)
,p_page_template_id=>wwv_flow_api.id(77850009429651671)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77850676485651675)
,p_page_template_id=>wwv_flow_api.id(77850009429651671)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(77850714810651675)
,p_page_template_id=>wwv_flow_api.id(77850009429651671)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(77885372516651773)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(77885396774651781)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(77885533181651781)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77850852557651677)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77850907753651686)
,p_plug_template_id=>wwv_flow_api.id(77850852557651677)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77852638806651702)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77852773139651702)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77852787985651702)
,p_plug_template_id=>wwv_flow_api.id(77852773139651702)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77853561618651702)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77853601305651703)
,p_plug_template_id=>wwv_flow_api.id(77853561618651702)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77853703707651703)
,p_plug_template_id=>wwv_flow_api.id(77853561618651702)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77853822775651703)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77853938643651703)
,p_plug_template_id=>wwv_flow_api.id(77853822775651703)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77854043495651703)
,p_plug_template_id=>wwv_flow_api.id(77853822775651703)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77857191308651715)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77857299073651715)
,p_plug_template_id=>wwv_flow_api.id(77857191308651715)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77857431146651715)
,p_plug_template_id=>wwv_flow_api.id(77857191308651715)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77857980243651715)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77858119242651715)
,p_plug_template_id=>wwv_flow_api.id(77857980243651715)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77858210517651715)
,p_plug_template_id=>wwv_flow_api.id(77857980243651715)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77860202637651716)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77861172917651717)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77861253005651717)
,p_plug_template_id=>wwv_flow_api.id(77861172917651717)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77862138170651717)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77862414395651717)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77862488981651717)
,p_plug_template_id=>wwv_flow_api.id(77862414395651717)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77862644975651717)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77862682989651717)
,p_plug_template_id=>wwv_flow_api.id(77862644975651717)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77862787395651717)
,p_plug_template_id=>wwv_flow_api.id(77862644975651717)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77865802700651718)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77865904028651718)
,p_plug_template_id=>wwv_flow_api.id(77865802700651718)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77865991792651718)
,p_plug_template_id=>wwv_flow_api.id(77865802700651718)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77867000817651719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(77867470324651719)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(77867507172651719)
,p_plug_template_id=>wwv_flow_api.id(77867470324651719)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77876057207651738)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77877693422651751)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77880084113651753)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77880654744651753)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77880775477651754)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77881287466651754)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77882116559651755)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77883344515651755)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77883379395651756)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77883523610651756)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(77884326349651757)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77868019305651720)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77868109123651728)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77869783213651729)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77872139194651732)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77872554300651732)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77872616307651732)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(77872616307651732)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77873955668651734)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77874885510651735)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(77875806128651735)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77884850973651759)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77884901870651767)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77885015274651767)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77885103077651767)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(77885235956651767)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(77885962318651784)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(77886177041651797)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(77886042411651790)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(77886725961651813)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(77849180090651666)
,p_default_dialog_template=>wwv_flow_api.id(77847315902651656)
,p_error_template=>wwv_flow_api.id(77845984101651656)
,p_printer_friendly_template=>wwv_flow_api.id(77849180090651666)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(77845984101651656)
,p_default_button_template=>wwv_flow_api.id(77885396774651781)
,p_default_region_template=>wwv_flow_api.id(77862644975651717)
,p_default_chart_template=>wwv_flow_api.id(77862644975651717)
,p_default_form_template=>wwv_flow_api.id(77862644975651717)
,p_default_reportr_template=>wwv_flow_api.id(77862644975651717)
,p_default_tabform_template=>wwv_flow_api.id(77862644975651717)
,p_default_wizard_template=>wwv_flow_api.id(77862644975651717)
,p_default_menur_template=>wwv_flow_api.id(77867000817651719)
,p_default_listr_template=>wwv_flow_api.id(77862644975651717)
,p_default_irr_template=>wwv_flow_api.id(77862138170651717)
,p_default_report_template=>wwv_flow_api.id(77872616307651732)
,p_default_label_template=>wwv_flow_api.id(77884901870651767)
,p_default_menu_template=>wwv_flow_api.id(77885962318651784)
,p_default_calendar_template=>wwv_flow_api.id(77886042411651790)
,p_default_list_template=>wwv_flow_api.id(77881287466651754)
,p_default_nav_list_template=>wwv_flow_api.id(77884326349651757)
,p_default_top_nav_list_temp=>wwv_flow_api.id(77884326349651757)
,p_default_side_nav_list_temp=>wwv_flow_api.id(77883344515651755)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(77857191308651715)
,p_default_dialogr_template=>wwv_flow_api.id(77852638806651702)
,p_default_option_label=>wwv_flow_api.id(77884901870651767)
,p_default_required_label=>wwv_flow_api.id(77885103077651767)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(77880654744651753)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77886254673651801)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77886297379651806)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77886417593651806)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77886502502651806)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(77886592818651806)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(87323278189789767)
,p_theme_id=>42
,p_name=>'Vita (Copy) 120917'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#334453"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#43649599970382197.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200D0A202A20566974612028436F707929203132303931370D0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290D0A202A200D0A202A2054686973204353532066696C65207761';
wwv_flow_api.g_varchar2_table(2) := '732067656E657261746564207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200D0A202A200D0A202A2F0D0A0D0A2E742D4156504C6973742D76616C7565207B0D';
wwv_flow_api.g_varchar2_table(3) := '0A2020636F6C6F723A20233336333633363B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D76';
wwv_flow_api.g_varchar2_table(4) := '616C7565207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C616265';
wwv_flow_api.g_varchar2_table(5) := '6C207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A0D0A2E742D416C6572742D2D77697A6172642C0D0A';
wwv_flow_api.g_varchar2_table(6) := '2E742D416C6572742D2D686F72697A6F6E74616C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0D0A2E742D416C6572742D2D636F6C';
wwv_flow_api.g_varchar2_table(7) := '6F7242472E742D416C6572742D2D79656C6C6F77207B0D0A20206261636B67726F756E642D636F6C6F723A20236665663765303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068322C0D0A2E742D';
wwv_flow_api.g_varchar2_table(8) := '416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F772068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068332C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572';
wwv_flow_api.g_varchar2_table(9) := '742D2D79656C6C6F77206833207B0D0A2020636F6C6F723A20233330333033303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E67202E742D416C6572742D626F64792C0D0A2E742D416C6572742D2D63';
wwv_flow_api.g_varchar2_table(10) := '6F6C6F7242472E742D416C6572742D2D79656C6C6F77202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233730373037303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373207B0D0A';
wwv_flow_api.g_varchar2_table(11) := '20206261636B67726F756E642D636F6C6F723A20236565666466333B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(12) := '73756363657373206833207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233736';
wwv_flow_api.g_varchar2_table(13) := '373637363B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(14) := '236663656165613B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C0D0A2E742D416C6572742D2D636F';
wwv_flow_api.g_varchar2_table(15) := '6C6F7242472E742D416C6572742D2D64616E6765722068332C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564206833207B0D0A2020636F6C6F723A20233334333433343B0D0A7D0D0A2E742D416C6572742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(16) := '7242472E742D416C6572742D2D64616E676572202E742D416C6572742D626F64792C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A2023373437343734';
wwv_flow_api.g_varchar2_table(17) := '3B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236564663666663B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D';
wwv_flow_api.g_varchar2_table(18) := '2D696E666F2068322C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F206833207B0D0A2020636F6C6F723A20233337333733373B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E';
wwv_flow_api.g_varchar2_table(19) := '666F202E742D416C6572742D626F6479207B0D0A2020636F6C6F723A20233736373637363B0D0A7D0D0A0D0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D79656C6C6F77202E742D416C';
wwv_flow_api.g_varchar2_table(20) := '6572742D69636F6E207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0D0A2020636F6C6F723A20233030613032643B0D0A7D0D0A0D0A2E742D416C';
wwv_flow_api.g_varchar2_table(21) := '6572742D2D696E666F202E742D416C6572742D69636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D726564202E74';
wwv_flow_api.g_varchar2_table(22) := '2D416C6572742D69636F6E207B0D0A2020636F6C6F723A20236535333933353B0D0A7D0D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(23) := '2D416C6572742D2D686F72697A6F6E74616C2C0D0A2E742D416C6572742D2D77697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D416C6572';
wwv_flow_api.g_varchar2_table(24) := '742D2D706167652E742D416C6572742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C203136302C2034352C20302E39293B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73';
wwv_flow_api.g_varchar2_table(25) := '756363657373202E742D49636F6E2C0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D416C6572742D7469746C65207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D70';
wwv_flow_api.g_varchar2_table(26) := '616765202E742D427574746F6E2D2D636C6F7365416C657274207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(27) := '703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365366536653620696E7365743B0D0A7D0D0A2E742D42616467654C6973742061207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D4261';
wwv_flow_api.g_varchar2_table(28) := '6467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D42616467654C6973742D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(29) := '42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B0D0A2020636F6C6F723A20233733373337333B0D0A2020626F782D736861646F773A2030203020302031707820726762612836342C2036342C203634';
wwv_flow_api.g_varchar2_table(30) := '2C20302E312920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0D0A2020626F78';
wwv_flow_api.g_varchar2_table(31) := '2D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A2020636F6C6F723A20233264336334613B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061';
wwv_flow_api.g_varchar2_table(32) := '3A686F766572207B0D0A2020626F782D736861646F773A20302030203020347078202333333434353320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(33) := '0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0D0A2020626F782D736861646F773A2030203020302032707820726762612835312C2036382C2038332C20302E3235';
wwv_flow_api.g_varchar2_table(34) := '292C20302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(35) := '742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233333343435333B0D0A20207472616E736974696F';
wwv_flow_api.g_varchar2_table(36) := '6E3A20626F782D736861646F7720302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D77726170';
wwv_flow_api.g_varchar2_table(37) := '3A686F766572202E742D42616467654C6973742D76616C7565207B0D0A2020626F782D736861646F773A20302030203020347078202333333434353320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A20';
wwv_flow_api.g_varchar2_table(38) := '20636F6C6F723A20234646463B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(39) := '742D76616C7565207B0D0A2020626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A0D0A2E742D42616467654C6973742D2D626F74746F6D426F72646572207B0D0A202062';
wwv_flow_api.g_varchar2_table(40) := '6F726465722D626F74746F6D2D636F6C6F723A20236366636663663B0D0A7D0D0A0D0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023663266326632';
wwv_flow_api.g_varchar2_table(41) := '3B0D0A7D0D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233530353035303B0D0A7D0D0A2E742D426F64792D7469746C6520';
wwv_flow_api.g_varchar2_table(42) := '2E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233537353735373B0D0A7D0D0A2E742D426F64792D696E666F202E612D4261724368617274202E612D';
wwv_flow_api.g_varchar2_table(43) := '42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233537353735373B0D0A7D0D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42';
wwv_flow_api.g_varchar2_table(44) := '617243686172742D76616C75652C0D0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D';
wwv_flow_api.g_varchar2_table(45) := '0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D626172207B0D0A202062';
wwv_flow_api.g_varchar2_table(46) := '61636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D636C617373';
wwv_flow_api.g_varchar2_table(47) := '6963202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D4261';
wwv_flow_api.g_varchar2_table(48) := '7243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0D0A2E612D';
wwv_flow_api.g_varchar2_table(49) := '42617243686172742D2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D697465';
wwv_flow_api.g_varchar2_table(50) := '6D3A686F766572202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D66696C6C6564207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(51) := '67726F756E642D636F6C6F723A20233333343435333B0D0A7D0D0A0D0A626F6479207B0D0A20206261636B67726F756E643A20236366636663663B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A61207B0D0A2020636F6C6F723A20233264';
wwv_flow_api.g_varchar2_table(52) := '336334613B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236362636263623B0D0A2020626F726465722D6C6566743A2031707820736F6C6964207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(53) := '303735293B0D0A7D0D0A2E742D426F64792D7469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283231352C203231352C203231352C20302E39293B0D0A2020636F6C6F723A20233138313831383B0D0A20202D7765626B';
wwv_flow_api.g_varchar2_table(54) := '69742D6261636B64726F702D66696C7465723A20736174757261746528313830252920626C757228387078293B0D0A7D0D0A2E75692D7769646765742D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(55) := '0D0A7D0D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(56) := '3A20233138313831383B0D0A7D0D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E74';
wwv_flow_api.g_varchar2_table(57) := '2C0D0A2E742D427574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D73696465207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(58) := '6463646364633B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D69';
wwv_flow_api.g_varchar2_table(59) := '6E666F202E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236437643764373B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E65722E69732D73747563';
wwv_flow_api.g_varchar2_table(60) := '6B207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283231352C203231352C203231352C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(61) := '64792D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236437643764373B0D0A7D0D0A2E742D426F64792D7469746C652E6A732D6869646542726561646372756D6273207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(62) := '7267626128302C20302C20302C20302E3935293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236539653965393B0D0A';
wwv_flow_api.g_varchar2_table(63) := '2020636F6C6F723A20236366636663663B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365742C20302031707820327078207267';
wwv_flow_api.g_varchar2_table(64) := '626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A686F7665722C0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020636F6C6F723A20233333343435333B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(65) := '2D426F64792D746F70427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236636663666363B0D0A2020636F6C6F723A20236463646364633B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B';
wwv_flow_api.g_varchar2_table(66) := '0D0A20206865696768743A20343870783B0D0A7D0D0A0D0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0D0A2E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(67) := '202E742D426F64792D7469746C65207B0D0A2020746F703A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E61706578';
wwv_flow_api.g_varchar2_table(68) := '2D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020207269676874';
wwv_flow_api.g_varchar2_table(69) := '3A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964';
wwv_flow_api.g_varchar2_table(70) := '652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D';
wwv_flow_api.g_varchar2_table(71) := '52544C29202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F6479';
wwv_flow_api.g_varchar2_table(72) := '2D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C';
wwv_flow_api.g_varchar2_table(73) := '6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A0D0A2E617065782D746F702D6E6176202E742D426F64792D616374';
wwv_flow_api.g_varchar2_table(74) := '696F6E73207B0D0A2020746F703A20383870783B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20383870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D6178';
wwv_flow_api.g_varchar2_table(75) := '2D77696474683A20363430707829207B0D0A20202E617065782D746F702D6E61762E6A732D6D656E754E6176436F6C6C6170736564202E742D4865616465722D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C';
wwv_flow_api.g_varchar2_table(76) := '61746559282D31303025293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A202020207472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A20207D0D0A7D0D0A0D0A2E74';
wwv_flow_api.g_varchar2_table(77) := '2D426F64792D6E6176207B0D0A202077696474683A2032303070783B0D0A7D0D0A0D0A2E742D426F64792D616374696F6E73207B0D0A202077696474683A2032303070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D426F64792D616374696F';
wwv_flow_api.g_varchar2_table(78) := '6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(79) := '34307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765';
wwv_flow_api.g_varchar2_table(80) := '626B69742D7472616E73666F726D3A207472616E736C617465336428343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C6174652834307078293B0D0A20207472616E73666F726D3A207472616E736C61746533';
wwv_flow_api.g_varchar2_table(81) := '6428343070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D426F64792D73696465207B0D0A2020202077696474683A203234307078';
wwv_flow_api.g_varchar2_table(82) := '3B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D73696465207B';
wwv_flow_api.g_varchar2_table(83) := '0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A3A6E6F74282E752D';
wwv_flow_api.g_varchar2_table(84) := '52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A73';
wwv_flow_api.g_varchar2_table(85) := '2D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E74';
wwv_flow_api.g_varchar2_table(86) := '2D426F64792D6D61696E207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283135327078293B0D0A2020';
wwv_flow_api.g_varchar2_table(87) := '7472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20202D776562';
wwv_flow_api.g_varchar2_table(88) := '6B69742D7472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3135327078293B0D0A20207472616E73666F726D3A207472616E736C61';
wwv_flow_api.g_varchar2_table(89) := '74653364282D31353270782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(90) := '732D6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D';
wwv_flow_api.g_varchar2_table(91) := '52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D';
wwv_flow_api.g_varchar2_table(92) := '6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20202E752D52544C202E61';
wwv_flow_api.g_varchar2_table(93) := '7065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D';
wwv_flow_api.g_varchar2_table(94) := '6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E64656420';
wwv_flow_api.g_varchar2_table(95) := '2E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E';
wwv_flow_api.g_varchar2_table(96) := '207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E';
wwv_flow_api.g_varchar2_table(97) := '73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D77';
wwv_flow_api.g_varchar2_table(98) := '65626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(99) := '72616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E61762E6A732D';
wwv_flow_api.g_varchar2_table(100) := '6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C6566';
wwv_flow_api.g_varchar2_table(101) := '74202E742D426F64792D636F6E74656E742C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F';
wwv_flow_api.g_varchar2_table(102) := '726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A20';
wwv_flow_api.g_varchar2_table(103) := '2020206C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A20';
wwv_flow_api.g_varchar2_table(104) := '20202072696768743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D746974';
wwv_flow_api.g_varchar2_table(105) := '6C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C6520';
wwv_flow_api.g_varchar2_table(106) := '7B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74';
wwv_flow_api.g_varchar2_table(107) := '656E74207B0D0A202020206D617267696E2D6C6566743A2031353270783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D';
wwv_flow_api.g_varchar2_table(108) := '426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2031353270783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F';
wwv_flow_api.g_varchar2_table(109) := '64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50';
wwv_flow_api.g_varchar2_table(110) := '616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20343870783B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D42';
wwv_flow_api.g_varchar2_table(111) := '6F64792D73696465207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A';
wwv_flow_api.g_varchar2_table(112) := '202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B';
wwv_flow_api.g_varchar2_table(113) := '0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E';
wwv_flow_api.g_varchar2_table(114) := '73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F6479';
wwv_flow_api.g_varchar2_table(115) := '2D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C6566';
wwv_flow_api.g_varchar2_table(116) := '74202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C';
wwv_flow_api.g_varchar2_table(117) := '656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F';
wwv_flow_api.g_varchar2_table(118) := '64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73';
wwv_flow_api.g_varchar2_table(119) := '686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D';
wwv_flow_api.g_varchar2_table(120) := '2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D';
wwv_flow_api.g_varchar2_table(121) := '50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(122) := '732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030';
wwv_flow_api.g_varchar2_table(123) := '293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283135327078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E61';
wwv_flow_api.g_varchar2_table(124) := '7065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(125) := '3364282D31353270782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3135327078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D';
wwv_flow_api.g_varchar2_table(126) := '0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2030';
wwv_flow_api.g_varchar2_table(127) := '3B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A';
wwv_flow_api.g_varchar2_table(128) := '20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(129) := '7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(130) := '33642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A';
wwv_flow_api.g_varchar2_table(131) := '202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E7366';
wwv_flow_api.g_varchar2_table(132) := '6F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(133) := '61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E6170';
wwv_flow_api.g_varchar2_table(134) := '65782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E';
wwv_flow_api.g_varchar2_table(135) := '617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20202E61706578';
wwv_flow_api.g_varchar2_table(136) := '2D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020207472616E73666F726D3A206E6F6E652021696D706F7274616E743B0D0A20207D0D';
wwv_flow_api.g_varchar2_table(137) := '0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A';
wwv_flow_api.g_varchar2_table(138) := '2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D61726769';
wwv_flow_api.g_varchar2_table(139) := '6E2D72696768743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74';
wwv_flow_api.g_varchar2_table(140) := '656E74207B0D0A202020206D617267696E2D6C6566743A2034343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(141) := '426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2034343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F';
wwv_flow_api.g_varchar2_table(142) := '64792D2D73686F774C656674202E742D426F64792D636F6E74656E742C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D63';
wwv_flow_api.g_varchar2_table(143) := '6F6E74656E74207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A7D0D0A0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61';
wwv_flow_api.g_varchar2_table(144) := '762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C';
wwv_flow_api.g_varchar2_table(145) := '6C6170736564202E742D426F64792D636F6E74656E742C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A3A6E6F74282E752D52544C29202E61';
wwv_flow_api.g_varchar2_table(146) := '7065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_api.g_varchar2_table(147) := '6C6C6170736564202E742D426F64792D636F6E74656E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A2E752D52544C202E617065782D736964652D6E61';
wwv_flow_api.g_varchar2_table(148) := '762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A203438307078';
wwv_flow_api.g_varchar2_table(149) := '29207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A20202020';
wwv_flow_api.g_varchar2_table(150) := '2D6D732D7472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A202020207472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(151) := '732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465582834387078293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(152) := '582834387078293B0D0A202020207472616E73666F726D3A207472616E736C617465582834387078293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F';
wwv_flow_api.g_varchar2_table(153) := '64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61';
wwv_flow_api.g_varchar2_table(154) := '762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C617073';
wwv_flow_api.g_varchar2_table(155) := '6564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A73';
wwv_flow_api.g_varchar2_table(156) := '2D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A203634';
wwv_flow_api.g_varchar2_table(157) := '30707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A2020';
wwv_flow_api.g_varchar2_table(158) := '20206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D';
wwv_flow_api.g_varchar2_table(159) := '6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E61';
wwv_flow_api.g_varchar2_table(160) := '7065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E';
wwv_flow_api.g_varchar2_table(161) := '6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365';
wwv_flow_api.g_varchar2_table(162) := '64202E742D426F64792D7469746C65207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A2020';
wwv_flow_api.g_varchar2_table(163) := '202072696768743A20343870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465';
wwv_flow_api.g_varchar2_table(164) := '207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73';
wwv_flow_api.g_varchar2_table(165) := '696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674';
wwv_flow_api.g_varchar2_table(166) := '202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(167) := '2D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A2039';
wwv_flow_api.g_varchar2_table(168) := '3933707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D5254';
wwv_flow_api.g_varchar2_table(169) := '4C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874457870';
wwv_flow_api.g_varchar2_table(170) := '616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C';
wwv_flow_api.g_varchar2_table(171) := '0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20';
wwv_flow_api.g_varchar2_table(172) := '302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50';
wwv_flow_api.g_varchar2_table(173) := '616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B6974';
wwv_flow_api.g_varchar2_table(174) := '2D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A20207472616E73666F726D3A207472616E736C617465336428';
wwv_flow_api.g_varchar2_table(175) := '32303070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(176) := '426F64792D2D686964654C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0D0A202020';
wwv_flow_api.g_varchar2_table(177) := '207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D6169';
wwv_flow_api.g_varchar2_table(178) := '6E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F';
wwv_flow_api.g_varchar2_table(179) := '64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964';
wwv_flow_api.g_varchar2_table(180) := '654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964';
wwv_flow_api.g_varchar2_table(181) := '654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(182) := '2D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D7368';
wwv_flow_api.g_varchar2_table(183) := '6F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C617073';
wwv_flow_api.g_varchar2_table(184) := '65642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E';
wwv_flow_api.g_varchar2_table(185) := '6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E';
wwv_flow_api.g_varchar2_table(186) := '742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A';
wwv_flow_api.g_varchar2_table(187) := '20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020207269676874';
wwv_flow_api.g_varchar2_table(188) := '3A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E64';
wwv_flow_api.g_varchar2_table(189) := '65642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874';
wwv_flow_api.g_varchar2_table(190) := '457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D72696768744578';
wwv_flow_api.g_varchar2_table(191) := '70616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F';
wwv_flow_api.g_varchar2_table(192) := '64792D6E6176207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C6566';
wwv_flow_api.g_varchar2_table(193) := '74202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C6566';
wwv_flow_api.g_varchar2_table(194) := '74202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365';
wwv_flow_api.g_varchar2_table(195) := '642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A';
wwv_flow_api.g_varchar2_table(196) := '732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E64';
wwv_flow_api.g_varchar2_table(197) := '20286D61782D77696474683A20393932707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73';
wwv_flow_api.g_varchar2_table(198) := '666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20';
wwv_flow_api.g_varchar2_table(199) := '203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E742D506167';
wwv_flow_api.g_varchar2_table(200) := '65426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32';
wwv_flow_api.g_varchar2_table(201) := '303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D';
wwv_flow_api.g_varchar2_table(202) := '0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D';
wwv_flow_api.g_varchar2_table(203) := '7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D';
wwv_flow_api.g_varchar2_table(204) := '73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A20747261';
wwv_flow_api.g_varchar2_table(205) := '6E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(206) := '426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20343870782021696D706F7274616E743B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874';
wwv_flow_api.g_varchar2_table(207) := '457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A203070782021696D706F7274616E743B0D0A2020202072696768743A20343870782021696D70';
wwv_flow_api.g_varchar2_table(208) := '6F7274616E743B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A203070783B0D0A7D0D0A2E742D50616765426F64';
wwv_flow_api.g_varchar2_table(209) := '792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202072696768743A203070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E74';
wwv_flow_api.g_varchar2_table(210) := '2D426F64792D616374696F6E73207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D';
wwv_flow_api.g_varchar2_table(211) := '0A20207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D616374696F6E73207B0D0A';
wwv_flow_api.g_varchar2_table(212) := '20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(213) := '72616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E742D5061676542';
wwv_flow_api.g_varchar2_table(214) := '6F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792D2D73686F774C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(215) := '792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D636F6E74656E74496E6E6572207B0D0A20206D617267696E3A2030206175746F3B0D0A20206D61782D7769';
wwv_flow_api.g_varchar2_table(216) := '6474683A20313030253B0D0A7D0D0A0D0A2E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A20726762612831362C2031362C2031362C20302E3735293B0D0A7D0D0A2E742D42726561646372756D622D6974656D';
wwv_flow_api.g_varchar2_table(217) := '2C0D0A2E742D42726561646372756D622D6974656D2061207B0D0A2020636F6C6F723A20233433343334333B0D0A7D0D0A2E742D42726561646372756D622D6974656D20613A686F7665722C0D0A2E742D42726561646372756D622D6974656D20613A66';
wwv_flow_api.g_varchar2_table(218) := '6F637573207B0D0A2020636F6C6F723A20233264336334613B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D426F64792D7469746C652D736872696E6B20';
wwv_flow_api.g_varchar2_table(219) := '2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C652D736872696E6B202E742D4272656164';
wwv_flow_api.g_varchar2_table(220) := '6372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A406D65646961206F6E6C79207363726565';
wwv_flow_api.g_varchar2_table(221) := '6E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A20';
wwv_flow_api.g_varchar2_table(222) := '202020636F6C6F723A20233130313031303B0D0A20207D0D0A7D0D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F766572207B0D0A2020636F6C6F723A20233333343435333B0D0A7D0D0A2E742D42726561646372756D6252';
wwv_flow_api.g_varchar2_table(223) := '6567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(224) := '3138313831383B0D0A7D0D0A0D0A2E742D427574746F6E2C0D0A2E612D427574746F6E207B0D0A2020626F726465723A206E6F6E653B0D0A2020746578742D736861646F773A206E6F6E653B0D0A2020626F726465722D7261646975733A203270783B0D';
wwv_flow_api.g_varchar2_table(225) := '0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E327320656173652C20626F782D736861646F7720302E327320656173652C20636F6C6F7220302E327320656173653B0D0A7D0D0A2E742D427574746F6E202E742D49';
wwv_flow_api.g_varchar2_table(226) := '636F6E2C0D0A2E612D427574746F6E202E742D49636F6E207B0D0A20207472616E736974696F6E3A20696E68657269743B0D0A7D0D0A2E742D427574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F7665722C0D0A2E742D427574746F6E3A';
wwv_flow_api.g_varchar2_table(227) := '666F6375732C0D0A2E612D427574746F6E3A666F637573207B0D0A20207A2D696E6465783A203130303B0D0A20206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6265666F72652C0D';
wwv_flow_api.g_varchar2_table(228) := '0A2E612D427574746F6E3A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6265666F7265207B0D0A202062';
wwv_flow_api.g_varchar2_table(229) := '6F782D736861646F773A20302030203020317078202333333434353320696E7365742021696D706F7274616E743B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E61';
wwv_flow_api.g_varchar2_table(230) := '2D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6163';
wwv_flow_api.g_varchar2_table(231) := '746976653A6265666F7265207B0D0A20206F7061636974793A20303B0D0A7D0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572293A6163746976652C0D0A2E742D42';
wwv_flow_api.g_varchar2_table(232) := '7574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572292E69732D616374697665207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(233) := '20302E31352920696E7365742C20302032707820327078207267626128302C20302C20302C20302E312920696E7365742021696D706F7274616E743B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F42757474';
wwv_flow_api.g_varchar2_table(234) := '6F6E47726F7570207461626C652E726164696F2D67726F757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F757020696E7075743A636865636B6564';
wwv_flow_api.g_varchar2_table(235) := '202B206C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E72616469';
wwv_flow_api.g_varchar2_table(236) := '6F2D67726F7570206C6162656C2C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C207B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E3273206561';
wwv_flow_api.g_varchar2_table(237) := '73652C20626F782D736861646F7720302E327320656173652C20636F6C6F7220302E327320656173653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D';
wwv_flow_api.g_varchar2_table(238) := '67726F7570206C6162656C3A66697273742D6F662D747970652C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C3A66697273742D6F662D74797065207B0D0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(239) := '6975733A2032707820302030203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6C6173742D6F662D747970652C';
wwv_flow_api.g_varchar2_table(240) := '0D0A2E617065782D627574746F6E2D67726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6C6173742D6F662D74797065207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F';
wwv_flow_api.g_varchar2_table(241) := '726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570207461626C652E726164696F2D67726F7570206C6162656C3A6F6E6C792D6F662D747970652C0D0A2E617065782D627574746F6E2D67726F7570207461626C652E';
wwv_flow_api.g_varchar2_table(242) := '726164696F2D67726F7570206C6162656C3A6F6E6C792D6F662D74797065207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265666F72652C0D0A';
wwv_flow_api.g_varchar2_table(243) := '2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A6166746572207B0D0A2020636F6E74656E743A2027273B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A20303B0D0A20206C6566743A20303B0D0A20';
wwv_flow_api.g_varchar2_table(244) := '2077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A2020626F726465722D7261646975733A20696E68657269743B0D0A20206F7061636974793A20303B0D0A20207472616E736974696F6E3A202E327320656173653B0D0A7D';
wwv_flow_api.g_varchar2_table(245) := '0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265666F7265207B0D0A20207A2D696E6465783A20313B0D0A7D0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A6166746572207B0D0A20207A2D';
wwv_flow_api.g_varchar2_table(246) := '696E6465783A202D313B0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E303735293B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A2E612D427574';
wwv_flow_api.g_varchar2_table(247) := '746F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E612D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E742D427574746F6E3A6E6F74';
wwv_flow_api.g_varchar2_table(248) := '282E742D427574746F6E2D2D6C696E6B293A686F7665723A6166746572207B0D0A20206F7061636974793A20313B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A61637469';
wwv_flow_api.g_varchar2_table(249) := '76653A61667465722C0D0A2E742D427574746F6E3A666F6375733A6163746976653A6166746572207B0D0A20206F7061636974793A20303B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A2E612D42757474';
wwv_flow_api.g_varchar2_table(250) := '6F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A6166746572207B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A2020626F782D736861646F773A20302030203170782031707820726762';
wwv_flow_api.g_varchar2_table(251) := '612835312C2036382C2038332C20302E3235293B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C2C0D';
wwv_flow_api.g_varchar2_table(252) := '0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292C0D0A2E612D427574746F6E207B0D0A2020636F6C6F723A2023333833383338';
wwv_flow_api.g_varchar2_table(253) := '3B0D0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D466F726D2D666965';
wwv_flow_api.g_varchar2_table(254) := '6C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C3A686F7665722C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C616265';
wwv_flow_api.g_varchar2_table(255) := '6C3A686F7665722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A2E612D427574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(256) := '2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065';
wwv_flow_api.g_varchar2_table(257) := '782D6974656D2D726164696F20696E707574202B206C6162656C3A666F6375732C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A666F6375732C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(258) := '2D73696D706C65293A666F6375732C0D0A2E612D427574746F6E3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F4275';
wwv_flow_api.g_varchar2_table(259) := '74746F6E47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C2E69732D6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2E69732D6163746976652C0D0A2E74';
wwv_flow_api.g_varchar2_table(260) := '2D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A2E612D427574746F6E2E69732D6163746976652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E';
wwv_flow_api.g_varchar2_table(261) := '47726F7570202E617065782D6974656D2D726164696F20696E707574202B206C6162656C3A6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A6163746976652C0D0A2E742D427574746F6E3A6E6F';
wwv_flow_api.g_varchar2_table(262) := '74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A2E612D427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E74';
wwv_flow_api.g_varchar2_table(263) := '61696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E7075743A616374697665202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47';
wwv_flow_api.g_varchar2_table(264) := '726F7570202E617065782D6974656D2D726164696F20696E7075743A666F637573202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A616374697665202B206C6162656C2C0D0A2E617065782D627574746F6E2D67';
wwv_flow_api.g_varchar2_table(265) := '726F757020696E7075743A666F637573202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365742021696D706F7274616E743B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(266) := '2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D726164696F20696E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F7570';
wwv_flow_api.g_varchar2_table(267) := '20696E7075743A636865636B6564202B206C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A2020636F6C6F723A20233338333833383B0D0A2020626F782D736861646F773A203020302030203170782072';
wwv_flow_api.g_varchar2_table(268) := '67626128302C20302C20302C20302E31352920696E7365742C20302032707820327078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A0D0A2E612D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D686F743A';
wwv_flow_api.g_varchar2_table(269) := '6E6F74282E742D427574746F6E2D2D73696D706C65292C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0D0A626F6479202E75692D73746174652D64656661756C742E7569';
wwv_flow_api.g_varchar2_table(270) := '2D7072696F726974792D7072696D617279207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D427574746F6E2D2D686F743A686F7665722C0D0A2E742D42';
wwv_flow_api.g_varchar2_table(271) := '7574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0D0A626F';
wwv_flow_api.g_varchar2_table(272) := '6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F7665722C0D0A2E612D427574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D0A2E742D427574746F6E2D2D686F743A';
wwv_flow_api.g_varchar2_table(273) := '6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74283A616374697665293A666F6375732C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6E6F74283A616374';
wwv_flow_api.g_varchar2_table(274) := '697665293A666F6375732C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(275) := '64353136333B0D0A7D0D0A2E612D427574746F6E2D2D686F743A6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A626F6479202E75692D73746174652D646566';
wwv_flow_api.g_varchar2_table(276) := '61756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0D0A2E612D427574746F6E';
wwv_flow_api.g_varchar2_table(277) := '2D2D686F742E69732D6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E';
wwv_flow_api.g_varchar2_table(278) := '2E75692D627574746F6E2D2D686F742E69732D6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(279) := '6F723A20233239333734333B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A2023343433333032';
wwv_flow_api.g_varchar2_table(280) := '3B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E';
wwv_flow_api.g_varchar2_table(281) := '742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236663646337633B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(282) := '6F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E';
wwv_flow_api.g_varchar2_table(283) := '6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D61637469766520';
wwv_flow_api.g_varchar2_table(284) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F742920';
wwv_flow_api.g_varchar2_table(285) := '7B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(286) := '74746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(287) := '3030626133343B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E';
wwv_flow_api.g_varchar2_table(288) := '742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(289) := '6F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F';
wwv_flow_api.g_varchar2_table(290) := '74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(291) := '6F74293A686F7665722C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(292) := '6B67726F756E642D636F6C6F723A20236538346634633B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(293) := '2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65';
wwv_flow_api.g_varchar2_table(294) := '293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(295) := '6F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E';
wwv_flow_api.g_varchar2_table(296) := '6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665';
wwv_flow_api.g_varchar2_table(297) := '293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236134623763373B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(298) := '2D686F74292C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F';
wwv_flow_api.g_varchar2_table(299) := '74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233934616162653B0D0A7D0D0A0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(300) := '73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F';
wwv_flow_api.g_varchar2_table(301) := '74282E742D427574746F6E2D2D7761726E696E6729207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F782D736861646F773A20302030203020317078207267';
wwv_flow_api.g_varchar2_table(302) := '626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(303) := '74746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(304) := '6F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E69';
wwv_flow_api.g_varchar2_table(305) := '6E67293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74';
wwv_flow_api.g_varchar2_table(306) := '282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(307) := '6F6E2D2D73696D706C652E742D427574746F6E2D2D686F74207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(308) := '0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20233333343435333B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(309) := '2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D';
wwv_flow_api.g_varchar2_table(310) := '427574746F6E2D2D686F742E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574';
wwv_flow_api.g_varchar2_table(311) := '746F6E2D2D686F743A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(312) := '2D686F742E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(313) := '2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202339346161626520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E';
wwv_flow_api.g_varchar2_table(314) := '742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429202E742D49';
wwv_flow_api.g_varchar2_table(315) := '636F6E207B0D0A2020636F6C6F723A20233934616162653B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(316) := '6F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(317) := '427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233934616162653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D4275';
wwv_flow_api.g_varchar2_table(318) := '74746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(319) := '2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(320) := '20636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A2030203020';
wwv_flow_api.g_varchar2_table(321) := '3020317078202366626365346120696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(322) := '74746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130343B0D0A7D';
wwv_flow_api.g_varchar2_table(323) := '0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E';
wwv_flow_api.g_varchar2_table(324) := '673A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20';
wwv_flow_api.g_varchar2_table(325) := '206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E';
wwv_flow_api.g_varchar2_table(326) := '2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(327) := '74746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A0D0A2E742D42';
wwv_flow_api.g_varchar2_table(328) := '7574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202365353339333520696E7365743B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(329) := '67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(330) := '652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236535333933353B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(331) := '64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E74';
wwv_flow_api.g_varchar2_table(332) := '2D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A2020636F';
wwv_flow_api.g_varchar2_table(333) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(334) := '73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E';
wwv_flow_api.g_varchar2_table(335) := '742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F7428';
wwv_flow_api.g_varchar2_table(336) := '2E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202330306130326420696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(337) := '6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(338) := '2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20233030613032643B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F766572';
wwv_flow_api.g_varchar2_table(339) := '2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7375636365';
wwv_flow_api.g_varchar2_table(340) := '73733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(341) := '696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F7428';
wwv_flow_api.g_varchar2_table(342) := '2E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E74';
wwv_flow_api.g_varchar2_table(343) := '2D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(344) := '2E742D427574746F6E2D2D6E6F55493A6E6F74283A686F766572293A6E6F74283A666F637573293A6E6F74282E69732D61637469766529207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A68';
wwv_flow_api.g_varchar2_table(345) := '6F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A666F6375732C0D0A2E742D427574746F6E2D2D6E6F55492E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(346) := '6F6E2D2D6E6F55493A666F6375733A686F766572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6C696E6B207B0D';
wwv_flow_api.g_varchar2_table(347) := '0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B3A686F76';
wwv_flow_api.g_varchar2_table(348) := '6572207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2C0D0A2E742D427574746F6E2D2D6C696E6B202E742D49636F6E207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(349) := '723A20233264336334613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(350) := '233333343435333B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6E6F';
wwv_flow_api.g_varchar2_table(351) := '55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0D0A2020636F6C6F723A20233934616162652021696D706F7274';
wwv_flow_api.g_varchar2_table(352) := '616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6E6F55492E74';
wwv_flow_api.g_varchar2_table(353) := '2D427574746F6E2D2D7761726E696E67202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130342021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(354) := '0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F';
wwv_flow_api.g_varchar2_table(355) := '6E2D2D64616E676572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0D0A2020636F6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A0D0A2E';
wwv_flow_api.g_varchar2_table(356) := '742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563';
wwv_flow_api.g_varchar2_table(357) := '63657373202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0D0A2020636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A0D0A2E742D4865';
wwv_flow_api.g_varchar2_table(358) := '616465722D6272616E64696E67202E742D427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(359) := '65722D7261646975733A203270783B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E742D427574746F';
wwv_flow_api.g_varchar2_table(360) := '6E2D2D6865616465723A6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202335303662383220696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E742D42';
wwv_flow_api.g_varchar2_table(361) := '7574746F6E2D2D6865616465723A686F7665722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(362) := '67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(363) := '20302E31293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(364) := '6E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(365) := '2C20302C20302C20302E3235293B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A20206D696E2D77696474683A20333270783B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(366) := '427574746F6E2E742D427574746F6E2D2D686561646572547265653A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202335303662383220696E7365743B0D0A7D0D0A406D65646961206F6E6C792073637265656E2061';
wwv_flow_api.g_varchar2_table(367) := '6E6420286D61782D77696474683A20343830707829207B0D0A20202E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A202020206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E32';
wwv_flow_api.g_varchar2_table(368) := '35293B0D0A20207D0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465725269676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236362636263623B0D0A2020626F726465723A2031707820736F6C6964202362';
wwv_flow_api.g_varchar2_table(369) := '32623262323B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236232623262323B0D0A7D0D0A2E742D427574746F6E2E742D427574';
wwv_flow_api.g_varchar2_table(370) := '746F6E2D2D68656164657252696768743A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0D0A2020636F6C6F723A20233063306330633B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(371) := '6F6E2D2D6E6176426172202E742D427574746F6E2D6261646765207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(372) := '2D427574746F6E2D2D68656C70427574746F6E202E612D49636F6E207B0D0A20206F7061636974793A202E353B0D0A7D0D0A0D0A2E742D4865616465722D6E6176426172202E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A';
wwv_flow_api.g_varchar2_table(373) := '2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233136316432343B0D0A202063';
wwv_flow_api.g_varchar2_table(374) := '6F6C6F723A20236463646364633B0D0A7D0D0A0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(375) := '74746F6E2E742D427574746F6E2D2D73696D706C65202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D';
wwv_flow_api.g_varchar2_table(376) := '427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A0D0A2E742D427574746F6E2D2D737563';
wwv_flow_api.g_varchar2_table(377) := '63657373202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B';
wwv_flow_api.g_varchar2_table(378) := '0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(379) := '726F756E642D636F6C6F723A20233934616162653B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572';
wwv_flow_api.g_varchar2_table(380) := '202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D42757474';
wwv_flow_api.g_varchar2_table(381) := '6F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A7D0D0A0D0A2E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(382) := '20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(383) := '207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A2020626F726465722D7261646975733A20302030203270';
wwv_flow_api.g_varchar2_table(384) := '78203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F6479202E742D427574746F6E5265';
wwv_flow_api.g_varchar2_table(385) := '67696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469';
wwv_flow_api.g_varchar2_table(386) := '746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E';
wwv_flow_api.g_varchar2_table(387) := '526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0D0A2E';
wwv_flow_api.g_varchar2_table(388) := '742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D616374';
wwv_flow_api.g_varchar2_table(389) := '696F6E73202E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A0D0A2E66632E75692D776964676574207B0D';
wwv_flow_api.g_varchar2_table(390) := '0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E66632D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(391) := '66663B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E66632D746F6F6C6261722068322C0D0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0D0A2E6663202E66';
wwv_flow_api.g_varchar2_table(392) := '632D6461792D6E756D626572207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0D0A2E66632D76696577202E75692D7769646765742D686561646572207B';
wwv_flow_api.g_varchar2_table(393) := '0D0A20206261636B67726F756E642D636F6C6F723A20236364636463643B0D0A2020636F6C6F723A20233031303130313B0D0A2020626F726465722D636F6C6F723A20236330633063303B0D0A7D0D0A6469762E66632D6167656E64614C697374207B0D';
wwv_flow_api.g_varchar2_table(394) := '0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D6461';
wwv_flow_api.g_varchar2_table(395) := '79486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236233623362333B0D0A2020636F6C6F723A20233031303130313B0D0A2020626F726465722D636F6C6F723A20236661666166613B0D0A7D0D0A2E6663202E66632D616765';
wwv_flow_api.g_varchar2_table(396) := '6E64614C6973742D646179207B0D0A2020636F6C6F723A20233031303130313B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617465207B0D0A2020636F6C6F723A20233237323732373B0D0A7D0D0A2E6663202E66632D6167656E6461';
wwv_flow_api.g_varchar2_table(397) := '4C697374202E66632D6576656E742D73746172742D74696D652C0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D646179207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A626F6479202E66632074';
wwv_flow_api.g_varchar2_table(398) := '642E66632D746F6461792C0D0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(399) := '2D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D69';
wwv_flow_api.g_varchar2_table(400) := '74656D207B0D0A2020626F726465722D636F6C6F723A20236661666166613B0D0A7D0D0A0D0A2E742D436172642D77726170207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D436172642D777261703A666F637573207B';
wwv_flow_api.g_varchar2_table(401) := '0D0A2020626F726465722D636F6C6F723A20233333343435333B0D0A7D0D0A2E742D436172642D69636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436172642D64657363207B0D0A2020636F6C6F723A20233430343034';
wwv_flow_api.g_varchar2_table(402) := '303B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E742D436172642D';
wwv_flow_api.g_varchar2_table(403) := '64657363207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436172642D696E666F207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436172642D7469746C65207B0D0A2020636F6C6F723A20233430343034';
wwv_flow_api.g_varchar2_table(404) := '303B0D0A7D0D0A2E742D436172642D636F6C6F7246696C6C2C0D0A2E742D436172642D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D4361726420';
wwv_flow_api.g_varchar2_table(405) := '2E742D436172642D77726170207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C6557726170207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(406) := '67726F756E642D636F6C6F723A20236439643964393B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D777261702C0D0A2E742D436172642D2D6665617475726564202E742D436172642D7772617020';
wwv_flow_api.g_varchar2_table(407) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0D0A2E742D436172642D2D6665617475726564202E742D43';
wwv_flow_api.g_varchar2_table(408) := '6172642D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0D0A2020636F6C6F723A2023343034303430';
wwv_flow_api.g_varchar2_table(409) := '3B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179436F6C756D6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(410) := '2D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C';
wwv_flow_api.g_varchar2_table(411) := '617373696343616C656E6461722D6461792E69732D696E616374697665202E742D436C617373696343616C656E6461722D64617465207B0D0A20206F7061636974793A202E353B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69';
wwv_flow_api.g_varchar2_table(412) := '732D7765656B656E642C0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0D0A7D0D0A2E742D436C617373696343616C656E6461';
wwv_flow_api.g_varchar2_table(413) := '722D6461792E69732D746F646179202E742D436C617373696343616C656E6461722D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C61';
wwv_flow_api.g_varchar2_table(414) := '7373696343616C656E6461722D64617465207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D';
wwv_flow_api.g_varchar2_table(415) := '0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(416) := '6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0D0A2E742D436C617373';
wwv_flow_api.g_varchar2_table(417) := '696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E742D436C617373696343616C656E6461722D';
wwv_flow_api.g_varchar2_table(418) := '2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0D0A202063';
wwv_flow_api.g_varchar2_table(419) := '6F6C6F723A20233430343034303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E747320612C0D0A2E742D436C617373696343616C656E6461722D2D64';
wwv_flow_api.g_varchar2_table(420) := '61696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C61737369';
wwv_flow_api.g_varchar2_table(421) := '6343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D646179';
wwv_flow_api.g_varchar2_table(422) := '2E69732D746F646179207B0D0A20206261636B67726F756E642D636F6C6F723A20236234633364313B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C697374207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A7D';
wwv_flow_api.g_varchar2_table(423) := '0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C61';
wwv_flow_api.g_varchar2_table(424) := '7373696343616C656E6461722D6C6973745469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973';
wwv_flow_api.g_varchar2_table(425) := '744576656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436F6D6D656E74732D7573657249636F6E2C0D0A2E742D436F6D6D656E74732D75736572496D67207B0D0A2020626F726465722D7261646975733A20313030253B';
wwv_flow_api.g_varchar2_table(426) := '0D0A7D0D0A2E742D436F6D6D656E74732D7573657249636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233539353935393B0D0A7D0D0A2E742D436F6D6D656E74732D696E666F207B0D';
wwv_flow_api.g_varchar2_table(427) := '0A2020636F6C6F723A20233632363236323B0D0A7D0D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0D0A2020636F6C6F723A20233363336333633B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E';
wwv_flow_api.g_varchar2_table(428) := '666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236662666266623B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A2020626F726465722D636F6C6F723A20236532653265323B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(429) := '6F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6166746572207B0D0A2020626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0D0A2020626F726465722D72696768742D636F6C6F';
wwv_flow_api.g_varchar2_table(430) := '723A20236662666266623B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B';
wwv_flow_api.g_varchar2_table(431) := '0D0A2020626F726465722D72696768742D636F6C6F723A20236532653265323B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(432) := '62666266623B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A2020626F726465722D636F6C6F723A20236532653265323B0D0A7D0D0A2E742D436F6E66696750616E656C2D61626F7574207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(433) := '6F756E642D636F6C6F723A20236666663765303B0D0A2020636F6C6F723A20233536353635363B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(434) := '756E642D636F6C6F723A20234130413041303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032';
wwv_flow_api.g_varchar2_table(435) := '643B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A7D0D0A2E742D436F6E66696750616E656C2D73657474696E672C0D0A';
wwv_flow_api.g_varchar2_table(436) := '2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D436F6E';
wwv_flow_api.g_varchar2_table(437) := '66696750616E656C2D617474724C696E6B207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261';
wwv_flow_api.g_varchar2_table(438) := '28302C20302C20302C20302E3035293B0D0A7D0D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0D0A2020636F6C6F723A20233264336334613B0D0A7D0D0A2E742D4469616C6F67207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(439) := '6F723A20236666666666663B0D0A7D0D0A0D0A2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D4469616C6F67';
wwv_flow_api.g_varchar2_table(440) := '203A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236233623362333B0D0A7D0D0A2E742D4469616C6F673A3A2D7765626B69742D7363726F6C6C6261722D7472';
wwv_flow_api.g_varchar2_table(441) := '61636B207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D466F6F7465722D746F70427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(442) := '6F723A20233433343334333B0D0A7D0D0A2E742D466F6F7465722D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E742D466F726D2D696E70';
wwv_flow_api.g_varchar2_table(443) := '7574436F6E7461696E65723A6265666F7265207B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D2C0D0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(444) := '74436F6E7461696E657220696E7075742E746578745F6669656C642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265';
wwv_flow_api.g_varchar2_table(445) := '612E74657874617265612C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C792C0D0A2E74';
wwv_flow_api.g_varchar2_table(446) := '2D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742C0D0A2E752D54462D6974656D2D2D746578742C0D0A2E752D54462D6974656D';
wwv_flow_api.g_varchar2_table(447) := '2D2D74657874617265612C0D0A2E752D54462D6974656D2D2D646174657069636B65722C0D0A2E752D54462D6974656D2D2D73656C656374207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020636F6C6F723A20233339333933393B';
wwv_flow_api.g_varchar2_table(448) := '0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874';
wwv_flow_api.g_varchar2_table(449) := '225D2E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E70';
wwv_flow_api.g_varchar2_table(450) := '7574436F6E7461696E657220696E7075742E70617373776F72642E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265612E617065782D70616765';
wwv_flow_api.g_varchar2_table(451) := '2D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(452) := '7370616E2E646973706C61795F6F6E6C792E617065782D706167652D6974656D2D6572726F722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762E617065782D706167652D6974656D2D6572726F72';
wwv_flow_api.g_varchar2_table(453) := '2C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E617065782D706167652D6974656D2D6572726F722C0D0A2E752D54462D6974656D2D2D746578742E617065782D706167652D6974656D2D6572726F722C0D0A2E752D54';
wwv_flow_api.g_varchar2_table(454) := '462D6974656D2D2D74657874617265612E617065782D706167652D6974656D2D6572726F722C0D0A2E752D54462D6974656D2D2D646174657069636B65722E617065782D706167652D6974656D2D6572726F722C0D0A2E752D54462D6974656D2D2D7365';
wwv_flow_api.g_varchar2_table(455) := '6C6563742E617065782D706167652D6974656D2D6572726F72207B0D0A2020626F726465722D636F6C6F723A20236562363536323B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D2E';
wwv_flow_api.g_varchar2_table(456) := '617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642E617065782D706167652D6974656D2D6572726F723A72';
wwv_flow_api.g_varchar2_table(457) := '657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(458) := '696E707574436F6E7461696E65722074657874617265612E74657874617265612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E';
wwv_flow_api.g_varchar2_table(459) := '646174657069636B65722E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C792E617065782D706167652D';
wwv_flow_api.g_varchar2_table(460) := '6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C';
wwv_flow_api.g_varchar2_table(461) := '69642C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E752D54462D6974656D2D2D746578742E617065782D706167652D';
wwv_flow_api.g_varchar2_table(462) := '6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E752D54462D6974656D2D2D74657874617265612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E752D54462D6974656D2D2D64';
wwv_flow_api.g_varchar2_table(463) := '6174657069636B65722E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E752D54462D6974656D2D2D73656C6563742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C';
wwv_flow_api.g_varchar2_table(464) := '6964207B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0D0A2E742D466F726D2D696E707574436F';
wwv_flow_api.g_varchar2_table(465) := '6E7461696E657220696E7075742E746578745F6669656C643A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E65';
wwv_flow_api.g_varchar2_table(466) := '722074657874617265612E74657874617265613A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073';
wwv_flow_api.g_varchar2_table(467) := '70616E2E646973706C61795F6F6E6C793A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375732C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563';
wwv_flow_api.g_varchar2_table(468) := '743A666F6375732C0D0A2E752D54462D6974656D2D2D746578743A666F6375732C0D0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0D0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375732C0D0A2E752D5446';
wwv_flow_api.g_varchar2_table(469) := '2D6974656D2D2D73656C6563743A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A20233333343435332021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(470) := '0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F66';
wwv_flow_api.g_varchar2_table(471) := '69656C643A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E746169';
wwv_flow_api.g_varchar2_table(472) := '6E65722074657874617265612E74657874617265613A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0D0A';
wwv_flow_api.g_varchar2_table(473) := '2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A66';
wwv_flow_api.g_varchar2_table(474) := '6F6375733A3A2D6D732D76616C75652C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563743A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D746578743A666F6375733A3A2D6D732D76616C7565';
wwv_flow_api.g_varchar2_table(475) := '2C0D0A2E752D54462D6974656D2D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0D0A2E752D54462D6974656D2D2D73656C';
wwv_flow_api.g_varchar2_table(476) := '6563743A666F6375733A3A2D6D732D76616C7565207B0D0A2020636F6C6F723A20233339333933393B0D0A20200D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0D0A';
wwv_flow_api.g_varchar2_table(477) := '2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0D0A2E742D466F72';
wwv_flow_api.g_varchar2_table(478) := '6D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A686F7665722C0D0A2E742D466F726D2D69';
wwv_flow_api.g_varchar2_table(479) := '6E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A686F7665722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A686F7665722C0D0A2E742D466F726D2D696E707574';
wwv_flow_api.g_varchar2_table(480) := '436F6E7461696E65722073656C6563743A686F7665722C0D0A2E752D54462D6974656D2D2D746578743A686F7665722C0D0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0D0A2E752D54462D6974656D2D2D646174657069636B65';
wwv_flow_api.g_varchar2_table(481) := '723A686F7665722C0D0A2E752D54462D6974656D2D2D73656C6563743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A';
wwv_flow_api.g_varchar2_table(482) := '3A2D7765626B69742D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D';
wwv_flow_api.g_varchar2_table(483) := '6D6F7A2D706C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C61';
wwv_flow_api.g_varchar2_table(484) := '6365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E35353B0D0A7D0D0A2E742D466F726D20696E7075742E66696C65207B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E742D466F';
wwv_flow_api.g_varchar2_table(485) := '726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(486) := '3B0D0A7D0D0A2E742D466F726D2D73656C6563742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F';
wwv_flow_api.g_varchar2_table(487) := '6E6F207B0D0A2020636F6C6F723A20233339333933393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(488) := '207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D726164696F4C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0D0A2E742D466F726D2D636865636B626F784C';
wwv_flow_api.g_varchar2_table(489) := '6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0D0A2E742D466F726D2D6C6162656C207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(490) := '2D6572726F72207B0D0A2020636F6C6F723A20236535333933353B0D0A7D0D0A2E742D466F726D2D706F737454657874207B0D0A2020636F6C6F723A20236363636363633B0D0A7D0D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F';
wwv_flow_api.g_varchar2_table(491) := '726D2D7365617263684669656C64207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E68';
wwv_flow_api.g_varchar2_table(492) := '6173446174657069636B65722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D746F702D72696768742D7261646975733A20303B0D0A2020626F726465722D626F74';
wwv_flow_api.g_varchar2_table(493) := '746F6D2D72696768742D7261646975733A20303B0D0A7D0D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D746F70';
wwv_flow_api.g_varchar2_table(494) := '2D6C6566742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A2020626F726465722D626F74746F6D2D';
wwv_flow_api.g_varchar2_table(495) := '72696768742D7261646975733A203270783B0D0A7D0D0A0D0A2E636865636B626F785F67726F757020696E7075742C0D0A2E726164696F5F67726F757020696E707574207B0D0A20200D0A20200D0A7D0D0A2E636865636B626F785F67726F757020696E';
wwv_flow_api.g_varchar2_table(496) := '707574202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A2E636865636B626F78';
wwv_flow_api.g_varchar2_table(497) := '5F67726F757020696E7075743A666F637573202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A202333333434';
wwv_flow_api.g_varchar2_table(498) := '35333B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F6375733A636865636B6564202B206C616265';
wwv_flow_api.g_varchar2_table(499) := '6C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233333343435333B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A636865636B6564';
wwv_flow_api.g_varchar2_table(500) := '202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233663366336633B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(501) := '642D636F6C6F723A20233663366336633B0D0A7D0D0A0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A0D0A2E742D466F';
wwv_flow_api.g_varchar2_table(502) := '726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D7072652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F72';
wwv_flow_api.g_varchar2_table(503) := '6D2D6974656D546578742D2D706F7374207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F782D736861646F773A20302030203020317078202364666466646620696E7365743B0D0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(504) := '61646975733A203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A203270782030';
wwv_flow_api.g_varchar2_table(505) := '2030203270783B0D0A2020626F726465722D746F702D72696768742D7261646975733A20303B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D';
wwv_flow_api.g_varchar2_table(506) := '2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A0D0A2E617065782D6974656D2D6861732D69636F6E3A666F63';
wwv_flow_api.g_varchar2_table(507) := '7573202B202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A20233333343435333B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A';
wwv_flow_api.g_varchar2_table(508) := '7D0D0A2E742D4865616465722D6C6F676F2C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976652C0D0A2E742D486561646572202E742D427574746F6E2D2D686561646572207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(509) := '236666666666663B0D0A7D0D0A2E742D4865616465722D6C6F676F3A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0D0A2E742D486561646572202E742D427574746F';
wwv_flow_api.g_varchar2_table(510) := '6E2D2D6865616465723A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D48656164';
wwv_flow_api.g_varchar2_table(511) := '65722D6C6F676F2D6C696E6B3A666F6375732C0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A203020302030203170782023';
wwv_flow_api.g_varchar2_table(512) := '35303662383220696E7365743B0D0A7D0D0A2E742D4865616465722D6E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20233063313031343B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F76657220';
wwv_flow_api.g_varchar2_table(513) := '7B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(514) := '626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A';
wwv_flow_api.g_varchar2_table(515) := '7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D4865616465722D6E61762D6C69737420';
wwv_flow_api.g_varchar2_table(516) := '7B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D4865726F526567696F6E2D69636F6E207B0D0A2020626F726465722D7261646975733A203470783B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(517) := '6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865726F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D4865726F526567696F6E2D636F6C2D';
wwv_flow_api.g_varchar2_table(518) := '2D636F6E74656E74207B0D0A2020636F6C6F723A20233433343334333B0D0A7D0D0A0D0A2E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(519) := '2E31293B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E612D4952';
wwv_flow_api.g_varchar2_table(520) := '522D7265706F727453756D6D6172792D76616C7565207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0D0A2020626F726465722D746F702D636F6C6F723A202366356635';
wwv_flow_api.g_varchar2_table(521) := '66353B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E612D4952522D66756C6C56696577207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D627574';
wwv_flow_api.g_varchar2_table(522) := '746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D746F6F6C626172207B0D0A20206261636B67726F756E643A2023';
wwv_flow_api.g_varchar2_table(523) := '6439643964393B0D0A2020626F726465722D636F6C6F723A20236330633063303B0D0A7D0D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A7D';
wwv_flow_api.g_varchar2_table(524) := '0D0A2E612D5265706F72742D70657263656E744368617274207B0D0A20206261636B67726F756E642D636F6C6F723A20236234633364313B0D0A7D0D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0D0A20202D7765626B69742D62';
wwv_flow_api.g_varchar2_table(525) := '6F726465722D746F702D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A20202D6D';
wwv_flow_api.g_varchar2_table(526) := '6F7A2D626F726465722D7261646975732D746F7072696768743A20307078202021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0D0A2020626F';
wwv_flow_api.g_varchar2_table(527) := '726465722D746F702D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A7D0D0A2E612D4952522D69636F';
wwv_flow_api.g_varchar2_table(528) := '6E566965775461626C652C0D0A2E612D4952522D6368617274566965772C0D0A2E612D4952522D7069766F74566965772C0D0A2E612D4952522D67726F75704279566965772C0D0A2E612D4952522D64657461696C56696577207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(529) := '722D746F702D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0D0A7D0D0A2E612D4952522D6865';
wwv_flow_api.g_varchar2_table(530) := '61646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0D0A2020626F782D736861646F773A20696E736574203170782030203020';
wwv_flow_api.g_varchar2_table(531) := '3020236536653665363B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652061207B0D0A';
wwv_flow_api.g_varchar2_table(532) := '2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F7274207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D68656164';
wwv_flow_api.g_varchar2_table(533) := '65722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D686561';
wwv_flow_api.g_varchar2_table(534) := '6465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D7461626C65207472207464207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20';
wwv_flow_api.g_varchar2_table(535) := '20636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D7461626C65207B0D0A2020626F726465722D636F6C6C617073653A2073657061726174653B0D0A7D0D0A2E612D4952522D7461626C652074723A686F766572207464207B0D0A2020';
wwv_flow_api.g_varchar2_table(536) := '6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D74';
wwv_flow_api.g_varchar2_table(537) := '61626C65207464207B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236632663266323B0D0A2020626F726465722D746F703A2031707820736F6C696420236632663266323B0D0A7D0D0A2E612D4952522D6865616465724C696E6B';
wwv_flow_api.g_varchar2_table(538) := '3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0D0A2020626F726465722D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(539) := '33343435333B0D0A2020626F782D736861646F773A202D31707820302030202333333434353320696E7365742C2031707820302030202333333434353320696E7365743B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D652C0D0A2E612D';
wwv_flow_api.g_varchar2_table(540) := '4952522D73696E676C65526F772D76616C7565207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D73696E676C65526F772D76616C7565';
wwv_flow_api.g_varchar2_table(541) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(542) := '6E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F';
wwv_flow_api.g_varchar2_table(543) := '773A686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E61';
wwv_flow_api.g_varchar2_table(544) := '74696F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0D0A2E612D4952522D636F6E74726F6C734C6162656C207B0D0A';
wwv_flow_api.g_varchar2_table(545) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0D0A20202E69732D6D6178696D697A65642E742D4952522D';
wwv_flow_api.g_varchar2_table(546) := '726567696F6E202E742D6668742D7468656164202E612D4952522D686561646572207B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0D0A20207D0D0A7D0D0A2E75692D7769646765742D636F6E7465';
wwv_flow_api.g_varchar2_table(547) := '6E74202E612D4952522D69636F6E4C6973742D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6C696E6B3A';
wwv_flow_api.g_varchar2_table(548) := '686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A0D0A2E612D4952522D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20696E68657269743B0D0A7D0D0A0D0A2E612D49';
wwv_flow_api.g_varchar2_table(549) := '52522D736F7274576964676574207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D';
wwv_flow_api.g_varchar2_table(550) := '0A2020636F6C6F723A20234646463B0D0A2020626F726465722D77696474683A20303B0D0A2020626F782D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E35292C2030203870782031367078202D3470';
wwv_flow_api.g_varchar2_table(551) := '78207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C626172207B0D0A202077696474683A203870783B0D0A20206865696768743A203870783B0D0A7D';
wwv_flow_api.g_varchar2_table(552) := '0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(553) := '612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A0D0A2E';
wwv_flow_api.g_varchar2_table(554) := '612D4952522D736F72745769646765742D68656C70207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0D0A20207061646469';
wwv_flow_api.g_varchar2_table(555) := '6E673A203870783B0D0A2020626F726465722D7261646975733A203270783B0D0A202077696474683A206175746F3B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374';
wwv_flow_api.g_varchar2_table(556) := '696F6E732D6974656D207B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(557) := '723A207472616E73706172656E743B0D0A2020636F6C6F723A20234646463B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F76';
wwv_flow_api.g_varchar2_table(558) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A666F637573207B0D0A202062';
wwv_flow_api.g_varchar2_table(559) := '6F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2E69732D6163746976652C0D0A2E612D4952522D627574';
wwv_flow_api.g_varchar2_table(560) := '746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D736F727457';
wwv_flow_api.g_varchar2_table(561) := '69646765742D7365617263684C6162656C207B0D0A20206865696768743A20343070783B0D0A202070616464696E673A2031327078203870783B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F726520';
wwv_flow_api.g_varchar2_table(562) := '7B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(563) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020617070656172616E63653A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A202068';
wwv_flow_api.g_varchar2_table(564) := '65696768743A20343070783B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874';
wwv_flow_api.g_varchar2_table(565) := '225D3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F7773207B0D0A2020626F726465722D746F702D77696474683A';
wwv_flow_api.g_varchar2_table(566) := '20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F77207B0D0A2020636F6C6F723A20234646463B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A686F766572';
wwv_flow_api.g_varchar2_table(567) := '207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A666F637573207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(568) := '302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E612D4947202E612D4952522D736F72745769646765743A6265666F7265207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(569) := '2E6F6A2D6476742D63617465676F727931207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727932207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E6F6A2D6476742D63617465676F';
wwv_flow_api.g_varchar2_table(570) := '727933207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E6F6A2D6476742D63617465676F727934207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E6F6A2D6476742D63617465676F727935207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(571) := '3A20233835346539623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727936207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E6F6A2D6476742D63617465676F727937207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D';
wwv_flow_api.g_varchar2_table(572) := '0A2E6F6A2D6476742D63617465676F727938207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E6F6A2D6476742D63617465676F727939207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E6F6A2D6476742D6361746567';
wwv_flow_api.g_varchar2_table(573) := '6F72793130207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793131207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793132207B0D0A202063';
wwv_flow_api.g_varchar2_table(574) := '6F6C6F723A20236464646535333B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D6974656D2C0D0A2E742D4C696E6B734C6973742D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(575) := '6973742D69636F6E207B0D0A2020636F6C6F723A20236439643964393B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D4C696E';
wwv_flow_api.g_varchar2_table(576) := '6B734C6973742D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C69';
wwv_flow_api.g_varchar2_table(577) := '73742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A20236439643964393B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(578) := '2D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C697374';
wwv_flow_api.g_varchar2_table(579) := '2D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564203E202E';
wwv_flow_api.g_varchar2_table(580) := '742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D627269676874486F76657220';
wwv_flow_api.g_varchar2_table(581) := '2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A';
wwv_flow_api.g_varchar2_table(582) := '7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(583) := '66663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235';
wwv_flow_api.g_varchar2_table(584) := '352C203235352C20302E3735293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0D0A20206261636B67726F756E643A206C696E65';
wwv_flow_api.g_varchar2_table(585) := '61722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(586) := '20302E30313529293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A20233333343435333B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(587) := '2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(588) := '4C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A2020626F726465722D7261646975733A203470783B0D0A7D0D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D';
wwv_flow_api.g_varchar2_table(589) := '69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0D0A2020636F6C6F723A20233063306330633B0D0A7D0D';
wwv_flow_api.g_varchar2_table(590) := '0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20233063306330633B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C697374';
wwv_flow_api.g_varchar2_table(591) := '2D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0D0A2E';
wwv_flow_api.g_varchar2_table(592) := '742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F64792D616374';
wwv_flow_api.g_varchar2_table(593) := '696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A0D0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(594) := '67726F756E643A20233030613032643B0D0A2020636F6C6F723A2077686974653B0D0A7D0D0A626F6479202E742D4C6F67696E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4C6F67696E2D726567696F6E207B';
wwv_flow_api.g_varchar2_table(595) := '0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4C6F67696E2D6C6F676F207B0D0A2020636F6C6F723A20233333343435333B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61';
wwv_flow_api.g_varchar2_table(596) := '782D77696474683A20343830707829207B0D0A20202E742D50616765426F64792D2D6C6F67696E2C0D0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0D0A202020206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(597) := '6666663B0D0A20207D0D0A7D0D0A0D0A2E742D4D656469614C697374207B0D0A2020626F726465722D636F6C6F723A20236530653065303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656469614C';
wwv_flow_api.g_varchar2_table(598) := '6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A20236530653065303B0D0A7D0D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D72696768';
wwv_flow_api.g_varchar2_table(599) := '743A2031707820736F6C696420236530653065303B0D0A7D0D0A0D0A612E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233264336334613B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A68';
wwv_flow_api.g_varchar2_table(600) := '6F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020636F6C6F723A20233264336334613B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(601) := '61646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D4D656469614C6973742D6261646765';
wwv_flow_api.g_varchar2_table(602) := '2C0D0A2E742D4D656469614C6973742D64657363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D4D656469614C6973742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A202063';
wwv_flow_api.g_varchar2_table(603) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656469614C6973742D2D636F6C73207B0D0A2020626F782D736861646F773A202D317078202D31707820302030202365306530653020696E7365743B0D0A7D0D0A2E742D4D656469614C697374';
wwv_flow_api.g_varchar2_table(604) := '2D2D636F6C73202E742D4D656469614C6973742D6974656D3A6265666F72652C0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(605) := '236536653665363B0D0A7D0D0A0D0A2E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D';
wwv_flow_api.g_varchar2_table(606) := '4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E2D726967';
wwv_flow_api.g_varchar2_table(607) := '68743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20233333343435333B0D0A2020626F726465722D72696768743A2031707820736F';
wwv_flow_api.g_varchar2_table(608) := '6C696420233436356537333B0D0A2020626F726465722D6C6566743A2031707820736F6C696420233436356537333B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C';
wwv_flow_api.g_varchar2_table(609) := '64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E754261722E752D52544C202E612D';
wwv_flow_api.g_varchar2_table(610) := '4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A2038';
wwv_flow_api.g_varchar2_table(611) := '70782038707820387078203470783B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35';
wwv_flow_api.g_varchar2_table(612) := '293B0D0A7D0D0A2E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233436356537333B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261';
wwv_flow_api.g_varchar2_table(613) := '636B67726F756E642D636F6C6F723A20233436356537333B0D0A7D0D0A0D0A2E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A203270783B0D0A202070';
wwv_flow_api.g_varchar2_table(614) := '616464696E673A2030203670783B0D0A2020666F6E742D73697A653A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(615) := '6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A20206D617267696E2D';
wwv_flow_api.g_varchar2_table(616) := '6C6566743A203470783B0D0A20206D617267696E2D746F703A203870783B0D0A7D0D0A0D0A2E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(617) := '656D207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D4D656E752D2D';
wwv_flow_api.g_varchar2_table(618) := '63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20233561373839323B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(619) := '756E642D636F6C6F723A20236366636663663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E7543';
wwv_flow_api.g_varchar2_table(620) := '6F6C207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D61636365';
wwv_flow_api.g_varchar2_table(621) := '6C207B0D0A2020636F6C6F723A20233530353035303B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A202062';
wwv_flow_api.g_varchar2_table(622) := '61636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D';
wwv_flow_api.g_varchar2_table(623) := '4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(624) := '752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E';
wwv_flow_api.g_varchar2_table(625) := '6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D656E75202E612D';
wwv_flow_api.g_varchar2_table(626) := '4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D616363656C207B';
wwv_flow_api.g_varchar2_table(627) := '0D0A2020636F6C6F723A20726762612831362C2031362C2031362C20302E3735293B0D0A7D0D0A2E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283230372C203230372C203230372C20302E';
wwv_flow_api.g_varchar2_table(628) := '3935293B0D0A2020626F726465722D636F6C6F723A20236236623662363B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D4D656E75426172207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(629) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A7D0D0A2E742D526567696F6E207B';
wwv_flow_api.g_varchar2_table(630) := '0D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233333333333333B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(631) := '4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20';
wwv_flow_api.g_varchar2_table(632) := '746F703B0D0A20206D617267696E2D72696768743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A2023663266';
wwv_flow_api.g_varchar2_table(633) := '3266323B0D0A2020626F726465722D72696768743A2031707820736F6C696420236439643964393B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236439643964393B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D';
wwv_flow_api.g_varchar2_table(634) := '0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73';
wwv_flow_api.g_varchar2_table(635) := '706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E754261722E752D52544C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D65';
wwv_flow_api.g_varchar2_table(636) := '6E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A203870782038707820387078203470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D69';
wwv_flow_api.g_varchar2_table(637) := '74656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20726762612835312C2035312C2035312C20302E35293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F';
wwv_flow_api.g_varchar2_table(638) := '766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(639) := '20236439643964393B0D0A7D0D0A2E742D526567696F6E202E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A203270783B0D0A202070616464696E673A';
wwv_flow_api.g_varchar2_table(640) := '2030203670783B0D0A2020666F6E742D73697A653A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F756E642D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(641) := '6128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D526567696F6E202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A20206D617267';
wwv_flow_api.g_varchar2_table(642) := '696E2D6C6566743A203470783B0D0A20206D617267696E2D746F703A203870783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(643) := '6F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233161316131613B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(644) := '6128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D526567696F6E202E612D4D65';
wwv_flow_api.g_varchar2_table(645) := '6E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E75';
wwv_flow_api.g_varchar2_table(646) := '2D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A2020636F6C6F723A20233161316131613B0D0A7D0D0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(647) := '612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233561356135613B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(648) := '2D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(649) := '2D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E61';
wwv_flow_api.g_varchar2_table(650) := '2D4D656E752D737461747573436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E742D';
wwv_flow_api.g_varchar2_table(651) := '526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(652) := '752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E20';
wwv_flow_api.g_varchar2_table(653) := '2E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363';
wwv_flow_api.g_varchar2_table(654) := '656C207B0D0A2020636F6C6F723A20233333333333333B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612832362C2032362C2032362C20302E3735293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(655) := '2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283231372C203231372C203231372C20302E3935293B0D0A2020626F726465722D636F6C6F723A2023633063306330';
wwv_flow_api.g_varchar2_table(656) := '3B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A0D0A2E742D486561646572207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D486561';
wwv_flow_api.g_varchar2_table(657) := '646572202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236366636663663B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0D0A20';
wwv_flow_api.g_varchar2_table(658) := '20766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0D0A';
wwv_flow_api.g_varchar2_table(659) := '20206261636B67726F756E642D636F6C6F723A20233239333734332021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D486561646572202E61';
wwv_flow_api.g_varchar2_table(660) := '2D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20233239333734332021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E61';
wwv_flow_api.g_varchar2_table(661) := '2D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F63757365';
wwv_flow_api.g_varchar2_table(662) := '64202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236366636663662021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974';
wwv_flow_api.g_varchar2_table(663) := '656D2E69732D657870616E6465642C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233239333734';
wwv_flow_api.g_varchar2_table(664) := '332021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2072676261283230372C203230372C20';
wwv_flow_api.g_varchar2_table(665) := '3230372C20302E38293B0D0A2020626F726465722D636F6C6F723A20233333343435333B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63';
wwv_flow_api.g_varchar2_table(666) := '757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F7665';
wwv_flow_api.g_varchar2_table(667) := '72202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233436356537333B0D0A2020626F726465722D636F6C6F723A20233436356537333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D486561646572';
wwv_flow_api.g_varchar2_table(668) := '202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20233530366238323B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(669) := '233530366238323B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(670) := '206261636B67726F756E642D636F6C6F723A20236366636663663B0D0A2020626F726465722D636F6C6F723A20236366636663663B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974';
wwv_flow_api.g_varchar2_table(671) := '656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233762393661653B0D0A2020626F726465722D636F6C6F723A2023376239366165';
wwv_flow_api.g_varchar2_table(672) := '3B0D0A2020636F6C6F723A20233032303330343B0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233239333734';
wwv_flow_api.g_varchar2_table(673) := '333B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20236366636663663B0D0A7D0D0A2E742D486561646572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A2072';
wwv_flow_api.g_varchar2_table(674) := '676261283230372C203230372C203230372C20302E3735293B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(675) := '6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233230326133332021696D706F7274616E743B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D';
wwv_flow_api.g_varchar2_table(676) := '0D0A2E742D426F6479202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233130313031303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D20';
wwv_flow_api.g_varchar2_table(677) := '7B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D3A686F766572207B0D0A';
wwv_flow_api.g_varchar2_table(678) := '20206261636B67726F756E642D636F6C6F723A20236236623662362021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D426F6479202E612D4D656E';
wwv_flow_api.g_varchar2_table(679) := '754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236236623662362021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(680) := '61722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E';
wwv_flow_api.g_varchar2_table(681) := '754261722D6C6162656C207B0D0A2020636F6C6F723A20233130313031302021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D65787061';
wwv_flow_api.g_varchar2_table(682) := '6E6465642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236236623662362021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(683) := '3B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612831362C2031362C2031362C20302E38293B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(684) := '6465722D636F6C6F723A20236636663666363B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E';
wwv_flow_api.g_varchar2_table(685) := '202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(686) := '6F756E642D636F6C6F723A20233930393039303B0D0A2020626F726465722D636F6C6F723A20233930393039303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E75';
wwv_flow_api.g_varchar2_table(687) := '2D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E61';
wwv_flow_api.g_varchar2_table(688) := '2D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233130313031';
wwv_flow_api.g_varchar2_table(689) := '303B0D0A2020626F726465722D636F6C6F723A20233130313031303B0D0A2020636F6C6F723A20236366636663663B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375';
wwv_flow_api.g_varchar2_table(690) := '624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236236623662363B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(691) := '2D426F6479202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236236623662363B0D0A7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(692) := '752D6974656D207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F6479202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612831362C2031362C2031362C20302E3735293B0D0A7D0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(693) := '79202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(694) := '236333633363332021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D426F6479202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(695) := '61722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236236623662363B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D';
wwv_flow_api.g_varchar2_table(696) := '0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233430343034303B0D0A202076657274696361';
wwv_flow_api.g_varchar2_table(697) := '6C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E';
wwv_flow_api.g_varchar2_table(698) := '69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(699) := '6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(700) := '6F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D';
wwv_flow_api.g_varchar2_table(701) := '526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(702) := '2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63';
wwv_flow_api.g_varchar2_table(703) := '757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E';
wwv_flow_api.g_varchar2_table(704) := '752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E38293B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(705) := '313030253B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(706) := '696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(707) := '6F723A20236266626662663B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E';
wwv_flow_api.g_varchar2_table(708) := '612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E';
wwv_flow_api.g_varchar2_table(709) := '69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0D0A2020626F726465722D636F6C6F723A20233430343034303B0D0A';
wwv_flow_api.g_varchar2_table(710) := '2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(711) := '6F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A20';
wwv_flow_api.g_varchar2_table(712) := '20626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A202334303430';
wwv_flow_api.g_varchar2_table(713) := '34303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(714) := '656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(715) := '3B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A202062';
wwv_flow_api.g_varchar2_table(716) := '6F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D4865616465722D';
wwv_flow_api.g_varchar2_table(717) := '757365724D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233230326133333B0D0A7D0D0A2E742D4865616465722D757365724D656E7520';
wwv_flow_api.g_varchar2_table(718) := '2E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A2023313631643234';
wwv_flow_api.g_varchar2_table(719) := '2021696D706F7274616E743B0D0A7D0D0A2E742D4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F723A20236434646465343B0D0A7D0D0A0D0A2E742D';
wwv_flow_api.g_varchar2_table(720) := '4E617669676174696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233136316432343B0D0A20';
wwv_flow_api.g_varchar2_table(721) := '20626F726465722D77696474683A20303B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(722) := '6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233239333734332021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69';
wwv_flow_api.g_varchar2_table(723) := '732D666F6375736564203E202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(724) := '723A20236463646364632021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E752E';
wwv_flow_api.g_varchar2_table(725) := '612D4D656E75202E612D4D656E752D6974656D20612C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(726) := '6666662021696D706F7274616E743B0D0A7D0D0A0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233264336334613B0D0A2020636F6C6F723A20236661666266633B0D0A';
wwv_flow_api.g_varchar2_table(727) := '7D0D0A2E742D506F7075704C4F562D726573756C74735365742074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0D0A7D0D0A2E742D506F7075704C4F562D726573';
wwv_flow_api.g_varchar2_table(728) := '756C74735365742074723A6E74682D6368696C6428326E29207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0D0A2E75692D7769';
wwv_flow_api.g_varchar2_table(729) := '646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D6C696E6B207B0D0A2020636F6C6F723A20233264336334613B0D0A7D0D0A2E742D506167652D2D706F7075704C4F56207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(730) := '2D636F6C6F723A20234646463B0D0A7D0D0A2E742D506F7075704C4F562D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236366636663663B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B7320';
wwv_flow_api.g_varchar2_table(731) := '61207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D426F64792D696E666F202E';
wwv_flow_api.g_varchar2_table(732) := '742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0D0A2E742D427574746F6E526567696F6E202E742D506F707570';
wwv_flow_api.g_varchar2_table(733) := '4C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233431353636393B0D0A2020636F';
wwv_flow_api.g_varchar2_table(734) := '6C6F723A20236661666266633B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233530353035303B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D';
wwv_flow_api.g_varchar2_table(735) := '706167696E6174696F6E207B0D0A2020636F6C6F723A20233537353735373B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233537353735373B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(736) := '526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A0D0A2E74';
wwv_flow_api.g_varchar2_table(737) := '2D526567696F6E2C0D0A2E742D436F6E74656E74426C6F636B2D2D6C696768744247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F647920';
wwv_flow_api.g_varchar2_table(738) := '2E6669656C64646174612062207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D426F64792D696E';
wwv_flow_api.g_varchar2_table(739) := '666F202E6669656C64646174612062207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D526567696F6E202E6669656C646461746120622C0D0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0D0A2020';
wwv_flow_api.g_varchar2_table(740) := '636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020636F6C6F723A20233031303130313B0D0A7D0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(741) := '6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233031303130313B0D0A7D0D0A2E742D426F64792D616374696F6E73';
wwv_flow_api.g_varchar2_table(742) := '202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E643A207472616E73706172656E743B0D0A2020636F6C6F723A20233063306330633B0D0A7D0D0A2E742D526567696F6E2D2D737461636B6564207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(743) := '722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(744) := '2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D6E6F426F72646572203E';
wwv_flow_api.g_varchar2_table(745) := '202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74313A6E6F74282E742D526567696F6E2D2D7465787443';
wwv_flow_api.g_varchar2_table(746) := '6F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431';
wwv_flow_api.g_varchar2_table(747) := '3A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74313A6E6F74282E742D526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(748) := '74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E';
wwv_flow_api.g_varchar2_table(749) := '2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74323A6E6F74282E';
wwv_flow_api.g_varchar2_table(750) := '742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(751) := '526567696F6E2D2D616363656E74323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74323A';
wwv_flow_api.g_varchar2_table(752) := '6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D61';
wwv_flow_api.g_varchar2_table(753) := '6363656E74322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(754) := '2D2D616363656E74333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(755) := '6630666366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D52';
wwv_flow_api.g_varchar2_table(756) := '6567696F6E2D2D616363656E74333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666366623B0D0A';
wwv_flow_api.g_varchar2_table(757) := '7D0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233265626662633B0D';
wwv_flow_api.g_varchar2_table(758) := '0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A202333636166';
wwv_flow_api.g_varchar2_table(759) := '38353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D42757474';
wwv_flow_api.g_varchar2_table(760) := '6F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(761) := '6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A202063';
wwv_flow_api.g_varchar2_table(762) := '6F6C6F723A20233363616638353B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(763) := '6E642D636F6C6F723A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(764) := '2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F';
wwv_flow_api.g_varchar2_table(765) := '6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D52656769';
wwv_flow_api.g_varchar2_table(766) := '6F6E2D7469746C65207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(767) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D74657874436F6E7465';
wwv_flow_api.g_varchar2_table(768) := '6E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74363A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(769) := '686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74362E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(770) := '2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E20';
wwv_flow_api.g_varchar2_table(771) := '2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74282E742D5265';
wwv_flow_api.g_varchar2_table(772) := '67696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74373A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E';
wwv_flow_api.g_varchar2_table(773) := '7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74372E742D526567696F6E2D2D74657874436F6E74';
wwv_flow_api.g_varchar2_table(774) := '656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74383A6E6F74282E742D526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(775) := '74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D6163';
wwv_flow_api.g_varchar2_table(776) := '63656E74383A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E74383A6E6F74282E742D526567';
wwv_flow_api.g_varchar2_table(777) := '696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74382E742D52';
wwv_flow_api.g_varchar2_table(778) := '6567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E74393A';
wwv_flow_api.g_varchar2_table(779) := '6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(780) := '0D0A2E742D526567696F6E2D2D616363656E74393A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363';
wwv_flow_api.g_varchar2_table(781) := '656E74393A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(782) := '6F6E2D2D616363656E74392E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A0D0A2E742D52';
wwv_flow_api.g_varchar2_table(783) := '6567696F6E2D2D616363656E7431303A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A2020636F';
wwv_flow_api.g_varchar2_table(784) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431303A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549';
wwv_flow_api.g_varchar2_table(785) := '2C0D0A2E742D526567696F6E2D2D616363656E7431303A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(786) := '66666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431302E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(787) := '236538356438383B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(788) := '6C6F723A20236361353839643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561';
wwv_flow_api.g_varchar2_table(789) := '646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431313A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(790) := '6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(791) := '2D7469746C65207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572';
wwv_flow_api.g_varchar2_table(792) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D74657874436F6E7465';
wwv_flow_api.g_varchar2_table(793) := '6E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431323A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(794) := '2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D52656769';
wwv_flow_api.g_varchar2_table(795) := '6F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431333A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429';
wwv_flow_api.g_varchar2_table(796) := '203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431333A6E6F74282E';
wwv_flow_api.g_varchar2_table(797) := '742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431333A6E6F74282E742D526567696F6E2D2D7465787443';
wwv_flow_api.g_varchar2_table(798) := '6F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431332E742D526567696F6E2D2D7465';
wwv_flow_api.g_varchar2_table(799) := '7874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431343A6E6F74282E742D52';
wwv_flow_api.g_varchar2_table(800) := '6567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(801) := '696F6E2D2D616363656E7431343A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431343A6E';
wwv_flow_api.g_varchar2_table(802) := '6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D526567696F6E2D2D6163';
wwv_flow_api.g_varchar2_table(803) := '63656E7431342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(804) := '2D2D616363656E7431353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(805) := '236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E74';
wwv_flow_api.g_varchar2_table(806) := '2D526567696F6E2D2D616363656E7431353A6E6F74282E742D526567696F6E2D2D74657874436F6E74656E7429203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(807) := '3B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C65207B0D0A2020636F6C6F723A202336653835';
wwv_flow_api.g_varchar2_table(808) := '39383B0D0A7D0D0A2E742D526567696F6E2D626F6479207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0D0A2020626F726465722D626F74746F6D2D';
wwv_flow_api.g_varchar2_table(809) := '636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D6163';
wwv_flow_api.g_varchar2_table(810) := '74696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D73696465202E742D526567696F6E207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(811) := '642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D526567696F6E2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E2D2D6E6F424720';
wwv_flow_api.g_varchar2_table(812) := '7B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(813) := '3B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A203270783B0D';
wwv_flow_api.g_varchar2_table(814) := '0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A686F76';
wwv_flow_api.g_varchar2_table(815) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976652C0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(816) := '696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(817) := '2D6361726F7573656C202E612D546162732D6E6578742D726567696F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D7072657669';
wwv_flow_api.g_varchar2_table(818) := '6F75732D726567696F6E207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D54616273';
wwv_flow_api.g_varchar2_table(819) := '2D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C';
wwv_flow_api.g_varchar2_table(820) := '202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A202333333434';
wwv_flow_api.g_varchar2_table(821) := '35333B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A2020626F';
wwv_flow_api.g_varchar2_table(822) := '726465722D7261646975733A20313030253B0D0A7D0D0A0D0A2E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D636F6C48656164207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(823) := '722D72696768742D77696474683A20303B0D0A7D0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D';
wwv_flow_api.g_varchar2_table(824) := '636F6C486561643A6C6173742D6368696C64207B0D0A2020626F726465722D72696768743A2031707820736F6C696420236536653665363B0D0A7D0D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72';
wwv_flow_api.g_varchar2_table(825) := '742D63656C6C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0D0A7D0D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(826) := '756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D5265706F72742D2D726F77486967686C';
wwv_flow_api.g_varchar2_table(827) := '69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(828) := '64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166612021696D706F7274616E743B0D0A7D0D0A2E742D5265706F72742D2D737461746963526F77436F6C6F72';
wwv_flow_api.g_varchar2_table(829) := '73202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E742D526570';
wwv_flow_api.g_varchar2_table(830) := '6F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A2023666366636663';
wwv_flow_api.g_varchar2_table(831) := '3B0D0A7D0D0A0D0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0D0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023333334343533';
wwv_flow_api.g_varchar2_table(832) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D536F6369616C466F6F746572207B0D0A202070616464696E672D746F703A20343870783B0D0A202070616464696E672D626F74746F6D3A20323470783B0D0A7D0D0A2E742D536F63';
wwv_flow_api.g_varchar2_table(833) := '69616C466F6F746572202E726F77207B0D0A202070616464696E672D746F703A203870783B0D0A7D0D0A2E742D536F6369616C466F6F746572202E636F6C207B0D0A202070616464696E672D626F74746F6D3A203870783B0D0A2020746578742D616C69';
wwv_flow_api.g_varchar2_table(834) := '676E3A2063656E7465723B0D0A20207472616E736974696F6E3A20616C6C202E32733B0D0A7D0D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(835) := '59282D387078293B0D0A20202D6D6F7A2D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0D0A20202D6F2D7472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(836) := '72616E736C61746559282D387078293B0D0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0D0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E303529';
wwv_flow_api.g_varchar2_table(837) := '3B0D0A7D0D0A2E742D536F6369616C466F6F7465722061207B0D0A20207472616E736974696F6E3A20616C6C202E32733B0D0A2020646973706C61793A20626C6F636B3B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A20207465';
wwv_flow_api.g_varchar2_table(838) := '78742D616C69676E3A2063656E7465723B0D0A2020636F6C6F723A20726762612831362C2031362C2031362C20302E38293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0D0A2020646973706C61793A20626C6F636B';
wwv_flow_api.g_varchar2_table(839) := '3B0D0A20206D617267696E3A2030206175746F3B0D0A2020636F6C6F723A20726762612831362C2031362C2031362C20302E34293B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E6661207B0D0A2020666F6E742D73697A653A2032387078';
wwv_flow_api.g_varchar2_table(840) := '3B0D0A202077696474683A20333270783B0D0A20206865696768743A20333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D536F6369616C466F6F74657220';
wwv_flow_api.g_varchar2_table(841) := '61202E612D49636F6E207B0D0A202077696474683A20333270783B0D0A20206865696768743A20333270783B0D0A20206C696E652D6865696768743A20333270783B0D0A7D0D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A626566';
wwv_flow_api.g_varchar2_table(842) := '6F7265207B0D0A2020666F6E742D73697A653A20333270783B0D0A7D0D0A2E742D536F6369616C466F6F74657220613A686F7665722C0D0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(843) := '233264336334613B0D0A7D0D0A2E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233433343334';
wwv_flow_api.g_varchar2_table(844) := '333B0D0A7D0D0A2E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20233433343334333B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(845) := '30343034303B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D69736320';
wwv_flow_api.g_varchar2_table(846) := '7B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0D0A2020636F6C6F723A20233430343034303B0D0A20206261636B67726F756E642D636F6C6F723A2023643964396439';
wwv_flow_api.g_varchar2_table(847) := '3B0D0A7D0D0A2E742D5374617475734C6973742D68656164657254657874416C742C0D0A2E742D5374617475734C6973742D617474722C0D0A2E742D5374617475734C6973742D7465787444657363207B0D0A2020636F6C6F723A20233733373337333B';
wwv_flow_api.g_varchar2_table(848) := '0D0A7D0D0A2E742D5374617475734C6973742D6974656D5469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0D0A20';
wwv_flow_api.g_varchar2_table(849) := '20636F6C6F723A20233730373037303B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475';
wwv_flow_api.g_varchar2_table(850) := '734C6973742D6D61726B65723A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D5374617475734C6973742D';
wwv_flow_api.g_varchar2_table(851) := '2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0D0A2020626F726465722D7261646975733A20323470783B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F723A2023343034303430';
wwv_flow_api.g_varchar2_table(852) := '3B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(853) := '6F723A20233730373037303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0D0A2E742D5374617475';
wwv_flow_api.g_varchar2_table(854) := '734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(855) := '2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936';
wwv_flow_api.g_varchar2_table(856) := '343B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(857) := '6F723A20236666636330303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(858) := '756E642D636F6C6F723A20234630463046303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A2020';
wwv_flow_api.g_varchar2_table(859) := '636F6C6F723A20234130413041303B0D0A7D0D0A0D0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A2020626F782D736861646F773A2030202D327078203020';
wwv_flow_api.g_varchar2_table(860) := '2333333434353320696E7365743B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(861) := '2E742D546162732D2D70696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(862) := '636F6C6F723A20233430343034303B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A68';
wwv_flow_api.g_varchar2_table(863) := '6F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078';
wwv_flow_api.g_varchar2_table(864) := '202333333434353320696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D70';
wwv_flow_api.g_varchar2_table(865) := '696C6C202E742D546162732D6974656D3A66697273742D6368696C64202E742D546162732D6C696E6B207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D54616273';
wwv_flow_api.g_varchar2_table(866) := '2D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(867) := '20233430343034303B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F76';
wwv_flow_api.g_varchar2_table(868) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(869) := '756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(870) := '2D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D';
wwv_flow_api.g_varchar2_table(871) := '6C696E6B207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A2E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2030202D3270782030202333333434353320';
wwv_flow_api.g_varchar2_table(872) := '696E7365743B0D0A7D0D0A2E617065782D72647320613A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E617065782D7264732061207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(873) := '3130313031303B0D0A7D0D0A2E742D426F64792D7469746C65202E617065782D7264732061207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D526567696F6E202E617065782D7264732061207B0D0A2020636F6C6F723A20233430';
wwv_flow_api.g_varchar2_table(874) := '343034303B0D0A7D0D0A2E617065782D72647320613A686F766572207B0D0A2020636F6C6F723A20233264336334613B0D0A7D0D0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0D0A2020636F6C6F723A2023326433';
wwv_flow_api.g_varchar2_table(875) := '6334613B0D0A7D0D0A2E617065782D7264732D686F7665722E6C6566742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023643764376437203530252C207267626128323535';
wwv_flow_api.g_varchar2_table(876) := '2C203235352C203235352C2030292031303025293B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2023643764376437203530252C2072676261283235352C203235352C203235352C20';
wwv_flow_api.g_varchar2_table(877) := '30292031303025293B0D0A20200D0A7D0D0A2E617065782D7264732D686F7665722E72696768742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236437643764372030252C';
wwv_flow_api.g_varchar2_table(878) := '2072676261283235352C203235352C203235352C2030292031252C202364376437643720353025293B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236437643764372030252C2072';
wwv_flow_api.g_varchar2_table(879) := '676261283235352C203235352C203235352C2030292031252C202364376437643720353025293B0D0A20200D0A7D0D0A0D0A2E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A';
wwv_flow_api.g_varchar2_table(880) := '2E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2034707820302030202333333434353320696E7365743B0D0A7D0D0A2E752D52544C202E76';
wwv_flow_api.g_varchar2_table(881) := '6572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E752D52544C202E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C656374656420737061';
wwv_flow_api.g_varchar2_table(882) := '6E207B0D0A2020626F782D736861646F773A202D34707820302030202333333434353320696E7365743B0D0A7D0D0A0D0A2E612D546167436C6F75642D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(883) := '6465722D7261646975733A203270783B0D0A20206261636B67726F756E643A20236661666166613B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F';
wwv_flow_api.g_varchar2_table(884) := '782D736861646F7720302E32732C20636F6C6F7220302E32733B0D0A2020636F6C6F723A20233262336134363B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B207370616E207B0D0A20207472616E736974696F6E3A20636F6C6F72202E32733B0D';
wwv_flow_api.g_varchar2_table(885) := '0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(886) := '3A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020327078202333333434353320696E7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F76657220737061';
wwv_flow_api.g_varchar2_table(887) := '6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D546167436C6F75642D636F756E74207B0D0A2020636F6C6F723A20233636363636363B0D0A2020666F6E742D7765696768743A203230303B0D0A7D0D0A2E742D54696D656C69';
wwv_flow_api.g_varchar2_table(888) := '6E65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D54696D656C696E652D757365726E616D652C0D0A2E742D54696D656C696E652D646174652C0D0A2E742D54696D656C696E652D64657363207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(889) := '3733373337333B0D0A7D0D0A2E742D54696D656C696E652D77726170207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D54696D656C696E652D74797065207B0D0A20206261636B67726F756E642D636F6C6F723A20236366636663';
wwv_flow_api.g_varchar2_table(890) := '663B0D0A2020636F6C6F723A20233031303130313B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032643B0D0A2020636F6C6F723A20234646463B0D0A7D';
wwv_flow_api.g_varchar2_table(891) := '0D0A2E742D54696D656C696E652D747970652E69732D75706461746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69';
wwv_flow_api.g_varchar2_table(892) := '732D72656D6F766564207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D777261703A666F637573207B0D0A20206F75746C696E653A206E';
wwv_flow_api.g_varchar2_table(893) := '6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(894) := '6C6F723A20233063313031343B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(895) := '3163323532643B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020233063313031343B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C';
wwv_flow_api.g_varchar2_table(896) := '6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C';
wwv_flow_api.g_varchar2_table(897) := '6261722D747261636B207B0D0A20206261636B67726F756E643A20233063313031343B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F';
wwv_flow_api.g_varchar2_table(898) := '766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233239333734333B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_api.g_varchar2_table(899) := '54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D';
wwv_flow_api.g_varchar2_table(900) := '0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_api.g_varchar2_table(901) := '704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E74';
wwv_flow_api.g_varchar2_table(902) := '2D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(903) := '65772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D';
wwv_flow_api.g_varchar2_table(904) := '526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(905) := '2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D5472656556';
wwv_flow_api.g_varchar2_table(906) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(907) := '76656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(908) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(909) := '4C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D5472656556';
wwv_flow_api.g_varchar2_table(910) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(911) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_api.g_varchar2_table(912) := '656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A202063';
wwv_flow_api.g_varchar2_table(913) := '6F6C6F723A20726762612836342C2036342C2036342C20302E3935293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72';
wwv_flow_api.g_varchar2_table(914) := '652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(915) := '0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(916) := '2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(917) := '2D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70';
wwv_flow_api.g_varchar2_table(918) := '202E612D49636F6E207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(919) := '20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(920) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_api.g_varchar2_table(921) := '6965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(922) := '772D746F67676C65207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F';
wwv_flow_api.g_varchar2_table(923) := '67676C653A686F766572207B0D0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F7720';
wwv_flow_api.g_varchar2_table(924) := '7B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E61';
wwv_flow_api.g_varchar2_table(925) := '2D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E6973';
wwv_flow_api.g_varchar2_table(926) := '2D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69';
wwv_flow_api.g_varchar2_table(927) := '732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E6176';
wwv_flow_api.g_varchar2_table(928) := '202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472';
wwv_flow_api.g_varchar2_table(929) := '6565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D7365';
wwv_flow_api.g_varchar2_table(930) := '6C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233163323532643B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D';
wwv_flow_api.g_varchar2_table(931) := '63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E';
wwv_flow_api.g_varchar2_table(932) := '612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20233136316432343B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_api.g_varchar2_table(933) := '656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233232326433372021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(934) := '64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69';
wwv_flow_api.g_varchar2_table(935) := '732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A2072676261283231322C203232312C203232382C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(936) := '6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(937) := '4C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20236434646465342021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565';
wwv_flow_api.g_varchar2_table(938) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20236434646465342021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54';
wwv_flow_api.g_varchar2_table(939) := '726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20236434646465343B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(940) := '4C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D';
wwv_flow_api.g_varchar2_table(941) := '0A2020636F6C6F723A20236434646465343B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D547265';
wwv_flow_api.g_varchar2_table(942) := '654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E';
wwv_flow_api.g_varchar2_table(943) := '6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_api.g_varchar2_table(944) := '656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E7465';
wwv_flow_api.g_varchar2_table(945) := '6E742E69732D686F766572202E612D49636F6E2C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49';
wwv_flow_api.g_varchar2_table(946) := '636F6E207B0D0A2020636F6C6F723A20236434646465343B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68';
wwv_flow_api.g_varchar2_table(947) := '657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D547265654E6176202E612D5472656556';
wwv_flow_api.g_varchar2_table(948) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(949) := '65772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236434646465343B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(950) := '772D746F67676C65207B0D0A2020636F6C6F723A2072676261283231322C203232312C203232382C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(951) := '772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20236434646465342021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(952) := '2D726F77207B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C';
wwv_flow_api.g_varchar2_table(953) := '65202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74';
wwv_flow_api.g_varchar2_table(954) := '202E612D49636F6E207B0D0A2020636F6C6F723A20236434646465343B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D63';
wwv_flow_api.g_varchar2_table(955) := '6F6E74656E74207B0D0A2020636F6C6F723A20236434646465343B0D0A7D0D0A2E6A732D6E6176436F6C6C6170736564202E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(956) := '2D636F6E74656E74202E612D54726565566965772D6C6162656C202E612D54726565566965772D6261646765207B0D0A20206261636B67726F756E643A20233030303030303B0D0A2020636F6C6F723A20236434646465343B0D0A7D0D0A2E742D547265';
wwv_flow_api.g_varchar2_table(957) := '654E6176202E612D54726565566965772D6261646765207B0D0A2020626F782D736861646F773A203020302030203170782072676261283231322C203232312C203232382C20302E31293B0D0A7D0D0A0D0A2E742D56616C69646174696F6E2D64617465';
wwv_flow_api.g_varchar2_table(958) := '207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233539353935393B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D';
wwv_flow_api.g_varchar2_table(959) := '64617465207B0D0A2020636F6C6F723A20233063306330633B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A0D0A2E742D4469616C6F';
wwv_flow_api.g_varchar2_table(960) := '672D706167652D2D77697A617264207B0D0A2020626F726465723A20236536653665363B0D0A7D0D0A2E742D57697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(961) := '203270783B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D57697A617264202E742D';
wwv_flow_api.g_varchar2_table(962) := '57697A6172642D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020626F726465722D636F6C6F723A20236564656465643B0D0A7D0D0A2E742D57697A61726453746570732D777261703A61667465';
wwv_flow_api.g_varchar2_table(963) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(964) := '723A20236363636363633B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A2023303061303264';
wwv_flow_api.g_varchar2_table(965) := '3B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233333';
wwv_flow_api.g_varchar2_table(966) := '343435333B0D0A7D0D0A2E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A6172645374657073';
wwv_flow_api.g_varchar2_table(967) := '2D6C6162656C207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A626F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(968) := '636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742061207B0D0A2020636F6C6F723A20233264336334613B0D0A7D0D0A626F6479202E75692D77';
wwv_flow_api.g_varchar2_table(969) := '69646765742D686561646572207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020636F6C6F723A20233031303130313B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(970) := '75692D7769646765742D6865616465722061207B0D0A2020636F6C6F723A20233031303130313B0D0A7D0D0A0D0A626F6479202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73';
wwv_flow_api.g_varchar2_table(971) := '746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0D0A2020636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(972) := '38333833383B0D0A7D0D0A626F6479202E75692D73746174652D64656661756C7420612C0D0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0D0A626F6479202E75692D73746174652D64656661756C7420613A7669736974';
wwv_flow_api.g_varchar2_table(973) := '65642C0D0A626F6479202E75692D73746174652D61637469766520612C0D0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0D0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0D0A202063';
wwv_flow_api.g_varchar2_table(974) := '6F6C6F723A20233264336334613B0D0A7D0D0A626F6479202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D';
wwv_flow_api.g_varchar2_table(975) := '686561646572202E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D73746174652D666F6375732C0D';
wwv_flow_api.g_varchar2_table(976) := '0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0D0A2020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(977) := '2030203020317078202333333434353320696E7365742C20302030203170782032707820726762612835312C2036382C2038332C20302E3235292021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(978) := '0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E';
wwv_flow_api.g_varchar2_table(979) := '653B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365742C20302030203170782032707820726762612835312C2036382C2038332C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(980) := '75692D73746174652D686F76657220612C0D0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0D0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0D0A626F6479202E75692D73746174652D686F766572';
wwv_flow_api.g_varchar2_table(981) := '20613A766973697465642C0D0A626F6479202E75692D73746174652D666F63757320612C0D0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0D0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0D0A62';
wwv_flow_api.g_varchar2_table(982) := '6F6479202E75692D73746174652D666F63757320613A76697369746564207B0D0A2020636F6C6F723A20233264336334613B0D0A7D0D0A626F6479202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E7465';
wwv_flow_api.g_varchar2_table(983) := '6E74202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(984) := '6F723A20233338333833383B0D0A7D0D0A0D0A626F6479202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(985) := '2D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236234633364313B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73';
wwv_flow_api.g_varchar2_table(986) := '746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D';
wwv_flow_api.g_varchar2_table(987) := '686967686C696768742061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C';
wwv_flow_api.g_varchar2_table(988) := '0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(989) := '202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572';
wwv_flow_api.g_varchar2_table(990) := '726F722061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D74';
wwv_flow_api.g_varchar2_table(991) := '6578742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0D0A2020636F6C6F723A20236535333933353B0D0A7D0D0A0D0A626F6479202E75692D646174657069636B657220746420';
wwv_flow_api.g_varchar2_table(992) := '7370616E2E75692D73746174652D64656661756C742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(993) := '3B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652C0D0A626F6479202E75692D646174';
wwv_flow_api.g_varchar2_table(994) := '657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A2020';
wwv_flow_api.g_varchar2_table(995) := '666F6E742D7765696768743A20626F6C643B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0D';
wwv_flow_api.g_varchar2_table(996) := '0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233333';
wwv_flow_api.g_varchar2_table(997) := '343435332021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B';
wwv_flow_api.g_varchar2_table(998) := '657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D64617465';
wwv_flow_api.g_varchar2_table(999) := '7069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F6375732C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0D0A20206F75746C696E65';
wwv_flow_api.g_varchar2_table(1000) := '3A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202333333434353320696E7365742C20302030203170782032707820726762612835312C2036382C2038332C20302E3235292021696D706F7274616E743B0D0A7D0D0A62';
wwv_flow_api.g_varchar2_table(1001) := '6F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64';
wwv_flow_api.g_varchar2_table(1002) := '656661756C742E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0D0A7D0D0A626F6479202E75692D646174657069636B6572207468207B0D0A2020636F6C6F723A20233830';
wwv_flow_api.g_varchar2_table(1003) := '383038303B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6865616465722C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520';
wwv_flow_api.g_varchar2_table(1004) := '627574746F6E2C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1005) := '65722D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1006) := '626F74746F6D3A2031707820736F6C6964207267626128302C20302C20302C20302E3035293B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233031303130313B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1007) := '0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0D0A2E742D4469616C6F672D70616765207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A202334303430';
wwv_flow_api.g_varchar2_table(1008) := '34303B0D0A7D0D0A0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0D0A2E742D4469616C6F672D';
wwv_flow_api.g_varchar2_table(1009) := '2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(1010) := '2D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A0D0A626F6479202E75692D636F726E65722D616C6C207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1011) := '722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C';
wwv_flow_api.g_varchar2_table(1012) := '6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D7472207B0D0A2020626F726465722D746F';
wwv_flow_api.g_varchar2_table(1013) := '702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D626C207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(1014) := '6465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D6272';
wwv_flow_api.g_varchar2_table(1015) := '207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D';
wwv_flow_api.g_varchar2_table(1016) := '0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0D';
wwv_flow_api.g_varchar2_table(1017) := '0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C';
wwv_flow_api.g_varchar2_table(1018) := '0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F7474';
wwv_flow_api.g_varchar2_table(1019) := '6F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A2032';
wwv_flow_api.g_varchar2_table(1020) := '70783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E';
wwv_flow_api.g_varchar2_table(1021) := '65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A2E752D7761726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F727461';
wwv_flow_api.g_varchar2_table(1022) := '6E743B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D7761726E696E672D74657874207B0D0A2020636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1023) := '636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1024) := '0A0D0A2E752D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D737563636573732D74657874207B0D0A20';
wwv_flow_api.g_varchar2_table(1025) := '20636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A2E752D73756363';
wwv_flow_api.g_varchar2_table(1026) := '6573732D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233030613032642021696D706F7274616E743B0D0A7D0D0A0D0A2E752D64616E676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236535333933352021696D';
wwv_flow_api.g_varchar2_table(1027) := '706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D64616E6765722D74657874207B0D0A2020636F6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D6267207B0D0A20';
wwv_flow_api.g_varchar2_table(1028) := '206261636B67726F756E642D636F6C6F723A20236535333933352021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236535333933352021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1029) := '7D0D0A0D0A2E752D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D696E666F2D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1030) := '6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D626F72646572';
wwv_flow_api.g_varchar2_table(1031) := '207B0D0A2020626F726465722D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A0D0A2E752D686F74207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435332021696D706F7274616E743B0D0A202063';
wwv_flow_api.g_varchar2_table(1032) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E752D686F742D74657874207B0D0A2020636F6C6F723A20233333343435332021696D706F7274616E743B0D0A7D0D0A2E752D686F742D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1033) := '233333343435332021696D706F7274616E743B0D0A7D0D0A2E752D686F742D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233333343435332021696D706F7274616E743B0D0A7D0D0A0D0A2E752D6E6F726D616C207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1034) := '636B67726F756E642D636F6C6F723A20236366636663662021696D706F7274616E743B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E752D6E6F726D616C2D74657874207B0D0A2020636F6C6F723A20233130313031302021696D706F72';
wwv_flow_api.g_varchar2_table(1035) := '74616E743B0D0A7D0D0A2E752D6E6F726D616C2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233130313031302021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1036) := '6F6C6F723A20233130313031302021696D706F7274616E743B0D0A7D0D0A0D0A2E61635F726573756C7473207B0D0A2020626F726465723A2031707820736F6C696420236439643964393B0D0A20206261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1037) := '666666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E61635F6F6464207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A626F6479202E61635F6F766572207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1038) := '6E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D617869732D7469746C652C0D0A626F6479202E612D4433';
wwv_flow_api.g_varchar2_table(1039) := '4261724368617274202E612D44334C696E6543686172742D617869732D7469746C65207B0D0A202066696C6C3A20233430343034303B0D0A7D0D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973202E';
wwv_flow_api.g_varchar2_table(1040) := '7469636B20746578742C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973202E7469636B2074657874207B0D0A202066696C6C3A20233830383038303B0D0A7D0D0A626F6479202E612D44334C696E65';
wwv_flow_api.g_varchar2_table(1041) := '4368617274202E612D44334C696E6543686172742D61786973206C696E652C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0D0A626F6479202E612D44334C696E654368617274202E';
wwv_flow_api.g_varchar2_table(1042) := '612D44334C696E6543686172742D6178697320706174682C0D0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732070617468207B0D0A20207374726F6B653A20236536653665363B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(1043) := '202E612D44334261724368617274202E612D443342617243686172742D617869732D7469746C65207B0D0A202066696C6C3A20233430343034303B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D677269';
wwv_flow_api.g_varchar2_table(1044) := '64206C696E652C0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964207B0D0A20207374726F6B653A20236536653665363B0D0A7D0D0A626F6479202E612D44334261724368617274202E612D4433426172';
wwv_flow_api.g_varchar2_table(1045) := '43686172742D61786973206C696E652C0D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732070617468207B0D0A20207374726F6B653A20236363636363633B0D0A7D0D0A626F6479202E612D4433426172';
wwv_flow_api.g_varchar2_table(1046) := '4368617274202E612D443342617243686172742D61786973202E7469636B2074657874207B0D0A202066696C6C3A20233830383038303B0D0A7D0D0A626F6479202E612D4433546F6F6C746970207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1047) := '20233830383038303B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0D0A2020626F726465722D746F703A20233939393939393B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1048) := '626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D65787465726E616C2D626F7264657273207B0D0A2020626F726465722D77696474683A20303B0D0A7D0D0A626F6479202E612D443343686172744C6567';
wwv_flow_api.g_varchar2_table(1049) := '656E642D6974656D2C0D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D6261636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1050) := '2D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D77696474683A20302021696D706F7274616E743B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1051) := '20233636363636363B0D0A7D0D0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F6C6F72207B0D0A202062';
wwv_flow_api.g_varchar2_table(1052) := '6F726465722D7261646975733A20313030253B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D696E6943616C207B0D0A2020';
wwv_flow_api.g_varchar2_table(1053) := '626F726465723A2031707820736F6C696420236236623662363B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236366636663663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943';
wwv_flow_api.g_varchar2_table(1054) := '616C2D7469746C65207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233530353035303B0D0A7D0D0A2E742D426F6479202E612D4D';
wwv_flow_api.g_varchar2_table(1055) := '696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236339633963393B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E';
wwv_flow_api.g_varchar2_table(1056) := '6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E61';
wwv_flow_api.g_varchar2_table(1057) := '2D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B65';
wwv_flow_api.g_varchar2_table(1058) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361636163613B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A2023633563356335';
wwv_flow_api.g_varchar2_table(1059) := '3B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(1060) := '6975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D52';
wwv_flow_api.g_varchar2_table(1061) := '6567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A2023663966';
wwv_flow_api.g_varchar2_table(1062) := '3966393B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1063) := '20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1064) := '636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1065) := '61666166613B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20';
wwv_flow_api.g_varchar2_table(1066) := '200D0A20200D0A20200D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236232623262323B0D0A2020626F726465722D7261646975733A203270783B0D0A202062';
wwv_flow_api.g_varchar2_table(1067) := '61636B67726F756E642D636F6C6F723A20236362636263623B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233063306330633B0D0A7D0D0A2E742D426F64792D61637469';
wwv_flow_api.g_varchar2_table(1068) := '6F6E73202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233463346334633B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1069) := '236335633563353B0D0A2020636F6C6F723A20233063306330633B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1070) := '756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D6461746520';
wwv_flow_api.g_varchar2_table(1071) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A';
wwv_flow_api.g_varchar2_table(1072) := '20206261636B67726F756E642D636F6C6F723A20236336633663363B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A202363316331';
wwv_flow_api.g_varchar2_table(1073) := '63313B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236264626462643B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1074) := '726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236437643764373B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233138313831';
wwv_flow_api.g_varchar2_table(1075) := '383B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233537353735373B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0D0A202062';
wwv_flow_api.g_varchar2_table(1076) := '6F726465722D636F6C6F723A20236431643164313B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D';
wwv_flow_api.g_varchar2_table(1077) := '0A20206261636B67726F756E642D636F6C6F723A20233333343435333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E694361';
wwv_flow_api.g_varchar2_table(1078) := '6C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64';
wwv_flow_api.g_varchar2_table(1079) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A2023636463';
wwv_flow_api.g_varchar2_table(1080) := '6463643B0D0A7D0D0A0D0A2E742D426F6479202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233130313031303B0D0A7D0D0A2E742D426F64792D696E666F202E612D44657461696C6564436F6E';
wwv_flow_api.g_varchar2_table(1081) := '74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233138313831383B0D0A7D0D0A2E742D526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C652C0D0A2E742D427574746F6E526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(1082) := '44657461696C6564436F6E74656E744C6973742D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D3A666F637573202E612D44657461696C65';
wwv_flow_api.g_varchar2_table(1083) := '64436F6E74656E744C6973742D686561646572207B0D0A2020626F782D736861646F773A20302030203020317078202332303261333320696E7365743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69';
wwv_flow_api.g_varchar2_table(1084) := '732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A203020302030203170782023';
wwv_flow_api.g_varchar2_table(1085) := '33333434353320696E7365743B0D0A2020636F6C6F723A20233333343435333B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E74';
wwv_flow_api.g_varchar2_table(1086) := '4C6973742D747269676765723A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233230326133333B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078202332303261';
wwv_flow_api.g_varchar2_table(1087) := '333320696E7365743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A626F6479202E612D44';
wwv_flow_api.g_varchar2_table(1088) := '657461696C6564436F6E74656E744C6973742D69636F6E207B0D0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E35293B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6261646765207B0D0A';
wwv_flow_api.g_varchar2_table(1089) := '2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0D0A20206261636B67726F756E643A20236666666666663B0D0A2020636F6C6F723A20726762612836';
wwv_flow_api.g_varchar2_table(1090) := '342C2036342C2036342C20302E3735293B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A686F766572207B0D0A2020636F6C6F723A20233230326133333B0D0A7D0D0A626F6479202E612D446574';
wwv_flow_api.g_varchar2_table(1091) := '61696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0D0A2020636F6C6F723A20233230326133333B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1092) := '6F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A202330';
wwv_flow_api.g_varchar2_table(1093) := '63313031343B0D0A7D0D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(1094) := '202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0D0A2020636F6C6F723A20233561373839323B0D0A7D0D0A626F6479202E612D44657461696C656443';
wwv_flow_api.g_varchar2_table(1095) := '6F6E74656E744C6973742D626F64792D686561646572207B0D0A20206261636B67726F756E643A20236666666666663B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0D0A20';
wwv_flow_api.g_varchar2_table(1096) := '20636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0D0A2020636F6C6F723A20233063313031343B0D0A7D0D0A626F6479202E612D44';
wwv_flow_api.g_varchar2_table(1097) := '657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166746572207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1098) := '723A2023666666666666207472616E73706172656E743B0D0A7D0D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F';
wwv_flow_api.g_varchar2_table(1099) := '6E74656E744C6973742D626F64793A6265666F7265207B0D0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970207B';
wwv_flow_api.g_varchar2_table(1100) := '0D0A20202D7765626B69742D626F726465722D7261646975733A203270783B0D0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D746F6F6C';
wwv_flow_api.g_varchar2_table(1101) := '7469702E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0D0A20202D7765626B69742D626F726465722D7261646975733A203270783B0D0A20202D6D6F7A2D626F726465722D72616469';
wwv_flow_api.g_varchar2_table(1102) := '75733A203270783B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F7265207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1103) := '722D636F6C6F723A2023306331303134207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6166746572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1104) := '6F6C6F723A2023306331303134207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D2E6C696768743A6166746572207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1105) := '722D636F6C6F723A2023656165616561207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6265666F7265207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1106) := '6F723A2023306331303134207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6166746572207B0D0A2020626F726465722D636F6C6F723A202330';
wwv_flow_api.g_varchar2_table(1107) := '6331303134207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6265666F7265207B0D0A2020626F726465722D636F6C6F723A207472616E7370';
wwv_flow_api.g_varchar2_table(1108) := '6172656E742023666666666666207472616E73706172656E74207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6166746572207B0D0A202062';
wwv_flow_api.g_varchar2_table(1109) := '6F726465722D636F6C6F723A207472616E73706172656E742023306331303134207472616E73706172656E74207472616E73706172656E743B0D0A7D0D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F';
wwv_flow_api.g_varchar2_table(1110) := '772E72696768743A6265666F7265207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420726762612836342C2036342C2036342C20302E35293B0D0A7D0D0A626F64';
wwv_flow_api.g_varchar2_table(1111) := '79202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6166746572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172';
wwv_flow_api.g_varchar2_table(1112) := '656E7420233063313031343B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A626F6479202E75692D6469';
wwv_flow_api.g_varchar2_table(1113) := '616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0D0A2020626F726465722D746F702D636F6C6F723A20236562656265623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1114) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(1115) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1116) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(1117) := '646F773A2030202D38707820302030202335626233653320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1118) := '6E74682D6368696C6428203229207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1119) := '42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1120) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332616432656220696E7365';
wwv_flow_api.g_varchar2_table(1121) := '743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1122) := '642D636F6C6F723A20233265626662633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329';
wwv_flow_api.g_varchar2_table(1123) := '2061207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1124) := '6C642820332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334636434643120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6461';
wwv_flow_api.g_varchar2_table(1125) := '73682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1126) := '742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1127) := '626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F';
wwv_flow_api.g_varchar2_table(1128) := '766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335386336396520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(1129) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1130) := '742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261';
wwv_flow_api.g_varchar2_table(1131) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820';
wwv_flow_api.g_varchar2_table(1132) := '302030202339646361383320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036';
wwv_flow_api.g_varchar2_table(1133) := '29207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1134) := '656D3A6E74682D6368696C64282036292061207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1135) := '6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364346435323920696E7365743B0D0A7D0D0A626F647920';
wwv_flow_api.g_varchar2_table(1136) := '2E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0D0A20206261636B67726F756E642D636F6C6F723A20236662';
wwv_flow_api.g_varchar2_table(1137) := '636534613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1138) := '723A20233434333330323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42';
wwv_flow_api.g_varchar2_table(1139) := '616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366616330313820696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1140) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1141) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(1142) := '654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F78';
wwv_flow_api.g_varchar2_table(1143) := '2D736861646F773A2030202D38707820302030202366313966366420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1144) := '74656D3A6E74682D6368696C6428203929207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1145) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(1146) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365663836383120';
wwv_flow_api.g_varchar2_table(1147) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1148) := '67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1149) := '6428203130292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1150) := '74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365653861613920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1151) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D';
wwv_flow_api.g_varchar2_table(1152) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1153) := '6666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1154) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364363766623420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1155) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1156) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1157) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1158) := '61646F773A2030202D38707820302030202339653639623320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1159) := '3A6E74682D6368696C642820313329207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1160) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1161) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337633837626520';
wwv_flow_api.g_varchar2_table(1162) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1163) := '67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1164) := '6428203134292061207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1165) := '74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339316131623020696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1166) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D';
wwv_flow_api.g_varchar2_table(1167) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1168) := '6666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1169) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338633965616420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1170) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1171) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1172) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1173) := '61646F773A2030202D38707820302030202338356336656120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1174) := '3A6E74682D6368696C642820313729207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1175) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0D0A2020636F6C6F723A20236561666166643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1176) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332376163633120';
wwv_flow_api.g_varchar2_table(1177) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1178) := '67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1179) := '6428203138292061207B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1180) := '74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333386238623620696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1181) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D';
wwv_flow_api.g_varchar2_table(1182) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203139292061207B0D0A2020636F6C6F723A2023663366';
wwv_flow_api.g_varchar2_table(1183) := '6266383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1184) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338376365623420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1185) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1186) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1187) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1188) := '61646F773A2030202D38707820302030202337656239356220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1189) := '3A6E74682D6368696C642820323129207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1190) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0D0A2020636F6C6F723A20233534353533393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1191) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364626463346220';
wwv_flow_api.g_varchar2_table(1192) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1193) := '67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1194) := '6428203232292061207B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1195) := '74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366626361336320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1196) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D';
wwv_flow_api.g_varchar2_table(1197) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1198) := '6666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1199) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366356239393320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1200) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1201) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1202) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1203) := '61646F773A2030202D38707820302030202366336137613320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1204) := '3A6E74682D6368696C642820323529207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1205) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1206) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336161633120';
wwv_flow_api.g_varchar2_table(1207) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1208) := '67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1209) := '6428203236292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1210) := '74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365316130633720696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1211) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D';
wwv_flow_api.g_varchar2_table(1212) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0D0A2020636F6C6F723A2023663766';
wwv_flow_api.g_varchar2_table(1213) := '3366393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1214) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362343932633120696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1215) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1216) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1217) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1218) := '61646F773A2030202D38707820302030202339646135636520696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1219) := '3A6E74682D6368696C642820323929207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1220) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1221) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361316165626220';
wwv_flow_api.g_varchar2_table(1222) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1223) := '67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1224) := '6428203330292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1225) := '74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361396236633220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1226) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D';
wwv_flow_api.g_varchar2_table(1227) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203331292061207B0D0A2020636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(1228) := '3665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033312920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1229) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334636137643820696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1230) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1231) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203332292061207B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1232) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1233) := '61646F773A2030202D38707820302030202331356364653920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1234) := '3A6E74682D6368696C642820333329207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1235) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203333292061207B0D0A2020636F6C6F723A20236438653265323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1236) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333396366636320';
wwv_flow_api.g_varchar2_table(1237) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1238) := '67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1239) := '6428203334292061207B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1240) := '74682D6368696C64282033342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202334376330393420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1241) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D';
wwv_flow_api.g_varchar2_table(1242) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203335292061207B0D0A2020636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(1243) := '3665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033352920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1244) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339306261373720696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1245) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333629207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1246) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203336292061207B0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1247) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1248) := '61646F773A2030202D38707820302030202361616162333420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1249) := '3A6E74682D6368696C642820333729207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1250) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203337292061207B0D0A2020636F6C6F723A20233365326530313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1251) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364316134323020';
wwv_flow_api.g_varchar2_table(1252) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1253) := '67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1254) := '6428203338292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1255) := '74682D6368696C64282033382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364653932363220696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1256) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D';
wwv_flow_api.g_varchar2_table(1257) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203339292061207B0D0A2020636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(1258) := '3665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033392920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1259) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364633739373420696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1260) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1261) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203430292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1262) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1263) := '61646F773A2030202D38707820302030202364633763393920696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1264) := '3A6E74682D6368696C642820343129207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1265) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203431292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1266) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202363353733613520';
wwv_flow_api.g_varchar2_table(1267) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1268) := '67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1269) := '6428203432292061207B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1270) := '74682D6368696C64282034322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339343539616320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1271) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D';
wwv_flow_api.g_varchar2_table(1272) := '0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203433292061207B0D0A2020636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(1273) := '3665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034332920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1274) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202336643739623320696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1275) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D64617368';
wwv_flow_api.g_varchar2_table(1276) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203434292061207B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1277) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1278) := '61646F773A2030202D38707820302030202362616331633820696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1279) := '3A6E74682D6368696C642820343529207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1280) := '742D42616467654C6973742D6974656D3A6E74682D6368696C6428203435292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1281) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337653931613120';
wwv_flow_api.g_varchar2_table(1282) := '696E7365743B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D426164';
wwv_flow_api.g_varchar2_table(1283) := '67654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233234393263653B0D0A2020636F6C6F723A20233234393263653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1284) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1285) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1286) := '3A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1287) := '616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233131613162383B0D0A2020636F6C6F723A20233131613162383B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1288) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D77726170202E';
wwv_flow_api.g_varchar2_table(1289) := '742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1290) := '3229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236534663966643B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1291) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1292) := '233239616161383B0D0A2020636F6C6F723A20233239616161383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1293) := '3A6E74682D6368696C6428203329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1294) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236630666366623B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1295) := '233265626662633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42';
wwv_flow_api.g_varchar2_table(1296) := '616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233335396337373B0D0A2020636F6C6F723A20233335396337373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1297) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(1298) := '654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1299) := '6F723A20236630666166363B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(1300) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233733623334643B0D0A2020636F6C6F723A20233733623334643B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1301) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170';
wwv_flow_api.g_varchar2_table(1302) := '202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1303) := '28203529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1304) := '63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1305) := '3A20236439646133653B0D0A2020636F6C6F723A20236439646133653B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1306) := '656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(1307) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233261326130383B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1308) := '3A20236464646535333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E74';
wwv_flow_api.g_varchar2_table(1309) := '2D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236661633733313B0D0A2020636F6C6F723A20236661633733313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1310) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1311) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C75652061207B0D0A202063';
wwv_flow_api.g_varchar2_table(1312) := '6F6C6F723A20233434333330323B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(1313) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236562373232373B0D0A2020636F6C6F723A20236562373232373B0D0A7D';
wwv_flow_api.g_varchar2_table(1314) := '0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(1315) := '6170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1316) := '6C6428203829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1317) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1318) := '6F723A20236536343533643B0D0A2020636F6C6F723A20236536343533643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1319) := '6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1320) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1321) := '6F723A20236539356235343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029';
wwv_flow_api.g_varchar2_table(1322) := '202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236535343737383B0D0A2020636F6C6F723A20236535343737383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E74';
wwv_flow_api.g_varchar2_table(1323) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1324) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C75652061207B';
wwv_flow_api.g_varchar2_table(1325) := '0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1326) := '65644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236334343539323B0D0A2020636F6C6F723A202363343435';
wwv_flow_api.g_varchar2_table(1327) := '39323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D4261646765';
wwv_flow_api.g_varchar2_table(1328) := '4C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1329) := '6E74682D6368696C642820313129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1330) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0D0A202062';
wwv_flow_api.g_varchar2_table(1331) := '6F726465722D636F6C6F723A20233736343538613B0D0A2020636F6C6F723A20233736343538613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1332) := '616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1333) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236636663066383B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1334) := '6B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1335) := '2D6368696C642820313329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233466356339663B0D0A2020636F6C6F723A20233466356339663B0D0A7D0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1336) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C';
wwv_flow_api.g_varchar2_table(1337) := '75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1338) := '742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1339) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236130616462613B0D0A202063';
wwv_flow_api.g_varchar2_table(1340) := '6F6C6F723A20236130616462613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031';
wwv_flow_api.g_varchar2_table(1341) := '3429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1342) := '654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233331336134343B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D';
wwv_flow_api.g_varchar2_table(1343) := '0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1344) := '616C7565207B0D0A2020626F726465722D636F6C6F723A20233632373838613B0D0A2020636F6C6F723A20233632373838613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(1345) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1346) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1347) := '6666663B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1348) := '73742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233434613864653B0D0A2020636F6C6F723A20233434613864653B0D0A7D0D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(1349) := '2D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D77726170202E742D4261';
wwv_flow_api.g_varchar2_table(1350) := '6467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920';
wwv_flow_api.g_varchar2_table(1351) := '2E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369726375';
wwv_flow_api.g_varchar2_table(1352) := '6C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(1353) := '64626564343B0D0A2020636F6C6F723A20233264626564343B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1354) := '74682D6368696C642820313729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(1355) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236561666166643B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1356) := '233432633564393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D';
wwv_flow_api.g_varchar2_table(1357) := '42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233434633663333B0D0A2020636F6C6F723A20233434633663333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D426164';
wwv_flow_api.g_varchar2_table(1358) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1359) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C75652061207B0D0A2020';
wwv_flow_api.g_varchar2_table(1360) := '636F6C6F723A20236633666366633B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(1361) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233531623839323B0D0A2020636F6C6F723A20233531623839323B0D';
wwv_flow_api.g_varchar2_table(1362) := '0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1363) := '2D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1364) := '6368696C642820313929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236633666266383B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(1365) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1366) := '722D636F6C6F723A20233863633136643B0D0A2020636F6C6F723A20233863633136643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(1367) := '4C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1368) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1369) := '756E642D636F6C6F723A20233961633937663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1370) := '6C642820323129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236530653036303B0D0A2020636F6C6F723A20236530653036303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(1371) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D';
wwv_flow_api.g_varchar2_table(1372) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1373) := '6C75652061207B0D0A2020636F6C6F723A20233534353533393B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1374) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236662643135353B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1375) := '3A20236662643135353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E';
wwv_flow_api.g_varchar2_table(1376) := '742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1377) := '742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233661356333343B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1378) := '6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C7565';
wwv_flow_api.g_varchar2_table(1379) := '207B0D0A2020626F726465722D636F6C6F723A20236565386234643B0D0A2020636F6C6F723A20236565386234643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1380) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C';
wwv_flow_api.g_varchar2_table(1381) := '61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1382) := '0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1383) := '74656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236561363636303B0D0A2020636F6C6F723A20236561363636303B0D0A7D0D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(1384) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D77726170202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1385) := '6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42';
wwv_flow_api.g_varchar2_table(1386) := '616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E';
wwv_flow_api.g_varchar2_table(1387) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236539363738';
wwv_flow_api.g_varchar2_table(1388) := '663B0D0A2020636F6C6F723A20236539363738663B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1389) := '68696C642820323529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720';
wwv_flow_api.g_varchar2_table(1390) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A2023656437';
wwv_flow_api.g_varchar2_table(1391) := '6461303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467';
wwv_flow_api.g_varchar2_table(1392) := '654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236365363661353B0D0A2020636F6C6F723A20236365363661353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1393) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1394) := '6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1395) := '723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(1396) := '42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233932363161363B0D0A2020636F6C6F723A20233932363161363B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1397) := '626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(1398) := '70202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1399) := '642820323729202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236637663366393B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1400) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1401) := '6C6F723A20233661373762353B0D0A2020636F6C6F723A20233661373762353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1402) := '2D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1403) := '2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1404) := '636F6C6F723A20233762383662643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1405) := '323929202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236230626263363B0D0A2020636F6C6F723A20236230626263363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61';
wwv_flow_api.g_varchar2_table(1406) := '722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F64';
wwv_flow_api.g_varchar2_table(1407) := '79202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C756520';
wwv_flow_api.g_varchar2_table(1408) := '61207B0D0A2020636F6C6F723A20233561363236393B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1409) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233763393161323B0D0A2020636F6C6F723A202337';
wwv_flow_api.g_varchar2_table(1410) := '63393161323B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D4261';
wwv_flow_api.g_varchar2_table(1411) := '6467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1412) := '656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1413) := '742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129202E742D42616467654C6973742D76616C7565207B0D0A';
wwv_flow_api.g_varchar2_table(1414) := '2020626F726465722D636F6C6F723A20233237383062303B0D0A2020636F6C6F723A20233237383062303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(1415) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E74';
wwv_flow_api.g_varchar2_table(1416) := '2D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A2020';
wwv_flow_api.g_varchar2_table(1417) := '6261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1418) := '6E74682D6368696C642820333229202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233066386661333B0D0A2020636F6C6F723A20233066386661333B0D0A7D0D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1419) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1420) := '76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229202E742D4261646765';
wwv_flow_api.g_varchar2_table(1421) := '4C6973742D76616C75652061207B0D0A2020636F6C6F723A20236365653065333B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261';
wwv_flow_api.g_varchar2_table(1422) := '6467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233234393739353B0D0A';
wwv_flow_api.g_varchar2_table(1423) := '2020636F6C6F723A20233234393739353B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1424) := '2820333329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1425) := '616467654C6973742D6974656D3A6E74682D6368696C642820333329202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236438653265323B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B';
wwv_flow_api.g_varchar2_table(1426) := '0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1427) := '742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233266386236393B0D0A2020636F6C6F723A20233266386236393B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1428) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1429) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1430) := '6438653164653B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(1431) := '654C6973742D6974656D3A6E74682D6368696C642820333529202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233638393734643B0D0A2020636F6C6F723A20233638393734643B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(1432) := '202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529202E742D42616467654C6973742D77726170202E74';
wwv_flow_api.g_varchar2_table(1433) := '2D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033';
wwv_flow_api.g_varchar2_table(1434) := '3529202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1435) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333629202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1436) := '20236265626633613B0D0A2020636F6C6F723A20236265626633613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1437) := '6D3A6E74682D6368696C642820333629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(1438) := '6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333629202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233236323630373B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1439) := '723A20236337633834623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033372920';
wwv_flow_api.g_varchar2_table(1440) := '2E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236465623132643B0D0A2020636F6C6F723A20236465623132643B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D';
wwv_flow_api.g_varchar2_table(1441) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(1442) := '2D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729202E742D42616467654C6973742D76616C75652061207B0D';
wwv_flow_api.g_varchar2_table(1443) := '0A2020636F6C6F723A20233365326530313B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(1444) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236339363732613B0D0A2020636F6C6F723A20236339363732';
wwv_flow_api.g_varchar2_table(1445) := '613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1446) := '6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1447) := '74682D6368696C642820333829202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A626F6479202E742D4261';
wwv_flow_api.g_varchar2_table(1448) := '6467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929202E742D42616467654C6973742D76616C7565207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1449) := '726465722D636F6C6F723A20236364336533373B0D0A2020636F6C6F723A20236364336533373B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(1450) := '6467654C6973742D6974656D3A6E74682D6368696C642820333929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D426164';
wwv_flow_api.g_varchar2_table(1451) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1452) := '67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1453) := '6368696C642820343029202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236362343036623B0D0A2020636F6C6F723A20236362343036623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1454) := '63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75';
wwv_flow_api.g_varchar2_table(1455) := '652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343029202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1456) := '2D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C';
wwv_flow_api.g_varchar2_table(1457) := '6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343129202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20236136343538303B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1458) := '6C6F723A20236136343538303B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203431';
wwv_flow_api.g_varchar2_table(1459) := '29202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(1460) := '4C6973742D6974656D3A6E74682D6368696C642820343129202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1461) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1462) := '6C7565207B0D0A2020626F726465722D636F6C6F723A20233639336537623B0D0A2020636F6C6F723A20233639336537623B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1463) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(1464) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343229202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A202364646438';
wwv_flow_api.g_varchar2_table(1465) := '64663B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1466) := '742D6974656D3A6E74682D6368696C642820343329202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233438353438623B0D0A2020636F6C6F723A20233438353438623B0D0A7D0D0A626F6479202E742D';
wwv_flow_api.g_varchar2_table(1467) := '42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329202E742D42616467654C6973742D77726170202E742D426164';
wwv_flow_api.g_varchar2_table(1468) := '67654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329202E';
wwv_flow_api.g_varchar2_table(1469) := '742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C';
wwv_flow_api.g_varchar2_table(1470) := '61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429202E742D42616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233866';
wwv_flow_api.g_varchar2_table(1471) := '396261363B0D0A2020636F6C6F723A20233866396261363B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1472) := '682D6368696C642820343429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(1473) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20233263333533643B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1474) := '3965613762313B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529202E742D42';
wwv_flow_api.g_varchar2_table(1475) := '616467654C6973742D76616C7565207B0D0A2020626F726465722D636F6C6F723A20233538366237613B0D0A2020636F6C6F723A20233538366237613B0D0A7D0D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467';
wwv_flow_api.g_varchar2_table(1476) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(1477) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529202E742D42616467654C6973742D76616C75652061207B0D0A202063';
wwv_flow_api.g_varchar2_table(1478) := '6F6C6F723A20236536653665363B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920';
wwv_flow_api.g_varchar2_table(1479) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1480) := '20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D73';
wwv_flow_api.g_varchar2_table(1481) := '6861646F773A2030202D38707820302030202335626233653320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1482) := '756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0D0A2020636F6C6F723A20236534663966643B0D0A7D';
wwv_flow_api.g_varchar2_table(1483) := '0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1484) := '7820302030202332616432656220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1485) := '3265626662633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1486) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870782030203020233463643464';
wwv_flow_api.g_varchar2_table(1487) := '3120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1488) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1489) := '42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202335386336396520696E7365743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1490) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1491) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1492) := '656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339646361383320696E7365743B0D0A7D0D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1493) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1494) := '6467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1495) := '2820362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364346435323920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1496) := '616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1497) := '3A6E74682D6368696C64282037292061207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D426164';
wwv_flow_api.g_varchar2_table(1498) := '67654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366616330313820696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1499) := '6D3A6E74682D6368696C6428203829207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1500) := '38292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D777261703A';
null;
end;
/
begin
wwv_flow_api.g_varchar2_table(1501) := '686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366313966366420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1502) := '203929207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1503) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0D0A202062';
wwv_flow_api.g_varchar2_table(1504) := '6F782D736861646F773A2030202D38707820302030202365663836383120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1505) := '636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0D0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(1506) := '66663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(1507) := '3A2030202D38707820302030202365653861613920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1508) := '636F6C6F723A20236361353839643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1509) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820';
wwv_flow_api.g_varchar2_table(1510) := '302030202364363766623420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0D0A20206261636B67726F756E642D636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(1511) := '35346539623B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1512) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339653639';
wwv_flow_api.g_varchar2_table(1513) := '623320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D';
wwv_flow_api.g_varchar2_table(1514) := '0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203133292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1515) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337633837626520696E7365743B';
wwv_flow_api.g_varchar2_table(1516) := '0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1517) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1518) := '6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339316131623020696E7365743B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(1519) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1520) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1521) := '6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338633965616420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C';
wwv_flow_api.g_varchar2_table(1522) := '6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1523) := '67654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1524) := '282031362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338356336656120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1525) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974';
wwv_flow_api.g_varchar2_table(1526) := '656D3A6E74682D6368696C6428203137292061207B0D0A2020636F6C6F723A20236561666166643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E74';
wwv_flow_api.g_varchar2_table(1527) := '2D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202332376163633120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1528) := '2D6974656D3A6E74682D6368696C642820313829207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1529) := '696C6428203138292061207B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1530) := '742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202333386238623620696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1531) := '2D6368696C642820313929207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920';
wwv_flow_api.g_varchar2_table(1532) := '61207B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F';
wwv_flow_api.g_varchar2_table(1533) := '766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202338376365623420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(1534) := '3029207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1535) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1536) := '626F782D736861646F773A2030202D38707820302030202337656239356220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0D0A202062';
wwv_flow_api.g_varchar2_table(1537) := '61636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0D0A2020636F6C6F723A2023353435';
wwv_flow_api.g_varchar2_table(1538) := '3533393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(1539) := '773A2030202D38707820302030202364626463346220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1540) := '2D636F6C6F723A20236663643836653B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1541) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078';
wwv_flow_api.g_varchar2_table(1542) := '20302030202366626361336320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1543) := '6631396136353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D';
wwv_flow_api.g_varchar2_table(1544) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D387078203020302023663562';
wwv_flow_api.g_varchar2_table(1545) := '39393320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A';
wwv_flow_api.g_varchar2_table(1546) := '7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65';
wwv_flow_api.g_varchar2_table(1547) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336137613320696E736574';
wwv_flow_api.g_varchar2_table(1548) := '3B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E742D436172';
wwv_flow_api.g_varchar2_table(1549) := '64732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1550) := '4C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202366336161633120696E7365743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(1551) := '43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1552) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1553) := '3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202365316130633720696E7365743B0D0A7D0D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1554) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261';
wwv_flow_api.g_varchar2_table(1555) := '6467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0D0A2020636F6C6F723A20236637663366393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1556) := '64282032372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202362343932633120696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E74';
wwv_flow_api.g_varchar2_table(1557) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1558) := '74656D3A6E74682D6368696C6428203238292061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032382920612E';
wwv_flow_api.g_varchar2_table(1559) := '742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339646135636520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1560) := '742D6974656D3A6E74682D6368696C642820323929207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1561) := '68696C6428203239292061207B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1562) := '73742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361316165626220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1563) := '682D6368696C642820333029207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029';
wwv_flow_api.g_varchar2_table(1564) := '2061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A68';
wwv_flow_api.g_varchar2_table(1565) := '6F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361396236633220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1566) := '333129207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203331292061207B0D0A202063';
wwv_flow_api.g_varchar2_table(1567) := '6F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033312920612E742D42616467654C6973742D777261703A686F766572207B0D0A20';
wwv_flow_api.g_varchar2_table(1568) := '20626F782D736861646F773A2030202D38707820302030202334636137643820696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333229207B0D0A2020';
wwv_flow_api.g_varchar2_table(1569) := '6261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203332292061207B0D0A2020636F6C6F723A20236365';
wwv_flow_api.g_varchar2_table(1570) := '653065333B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033322920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(1571) := '6F773A2030202D38707820302030202331356364653920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333329207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1572) := '642D636F6C6F723A20233239616361393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203333292061207B0D0A2020636F6C6F723A20236438653265323B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1573) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870';
wwv_flow_api.g_varchar2_table(1574) := '7820302030202333396366636320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333429207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1575) := '233336396537383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203334292061207B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A2E742D4361726473';
wwv_flow_api.g_varchar2_table(1576) := '2D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D3870782030203020233437';
wwv_flow_api.g_varchar2_table(1577) := '6330393420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333529207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D';
wwv_flow_api.g_varchar2_table(1578) := '0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203335292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_api.g_varchar2_table(1579) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202339306261373720696E7365';
wwv_flow_api.g_varchar2_table(1580) := '743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333629207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A2E742D4361';
wwv_flow_api.g_varchar2_table(1581) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203336292061207B0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467';
wwv_flow_api.g_varchar2_table(1582) := '654C6973742D6974656D3A6E74682D6368696C64282033362920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202361616162333420696E7365743B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(1583) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333729207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A2E742D43617264732D2D636F6C6F';
wwv_flow_api.g_varchar2_table(1584) := '72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203337292061207B0D0A2020636F6C6F723A20233365326530313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1585) := '6D3A6E74682D6368696C64282033372920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364316134323020696E7365743B0D0A7D0D0A2E742D43617264732D2D63';
wwv_flow_api.g_varchar2_table(1586) := '6F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333829207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1587) := '616467654C6973742D6974656D3A6E74682D6368696C6428203338292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D636869';
wwv_flow_api.g_varchar2_table(1588) := '6C64282033382920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364653932363220696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1589) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820333929207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1590) := '6974656D3A6E74682D6368696C6428203339292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203339292061';
wwv_flow_api.g_varchar2_table(1591) := '2E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364633739373420696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1592) := '73742D6974656D3A6E74682D6368696C642820343029207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1593) := '6368696C6428203430292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034302920612E742D42616467654C';
wwv_flow_api.g_varchar2_table(1594) := '6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202364633763393920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1595) := '74682D6368696C642820343129207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203431';
wwv_flow_api.g_varchar2_table(1596) := '292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034312920612E742D42616467654C6973742D777261703A';
wwv_flow_api.g_varchar2_table(1597) := '686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202363353733613520696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1598) := '20343229207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203432292061207B0D0A2020';
wwv_flow_api.g_varchar2_table(1599) := '636F6C6F723A20236464643864663B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034322920612E742D42616467654C6973742D777261703A686F766572207B0D0A';
wwv_flow_api.g_varchar2_table(1600) := '2020626F782D736861646F773A2030202D38707820302030202339343539616320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343329207B0D0A20';
wwv_flow_api.g_varchar2_table(1601) := '206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203433292061207B0D0A2020636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(1602) := '36653665363B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034332920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(1603) := '646F773A2030202D38707820302030202336643739623320696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343429207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1604) := '6E642D636F6C6F723A20233965613762313B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203434292061207B0D0A2020636F6C6F723A20233263333533643B0D0A7D';
wwv_flow_api.g_varchar2_table(1605) := '0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034342920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38';
wwv_flow_api.g_varchar2_table(1606) := '707820302030202362616331633820696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820343529207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1607) := '20233633373838393B0D0A7D0D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203435292061207B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1608) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034352920612E742D42616467654C6973742D777261703A686F766572207B0D0A2020626F782D736861646F773A2030202D38707820302030202337';
wwv_flow_api.g_varchar2_table(1609) := '653931613120696E7365743B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D747874207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1610) := '3A20233330396664623B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D66696C6C207B0D0A202066696C6C3A20233330396664623B0D0A7D0D0A2E752D436F6C6F722D312D42472D2D6272207B0D0A20207374726F6B653A20233330396664623B0D0A';
wwv_flow_api.g_varchar2_table(1611) := '2020626F726465722D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D6267207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1612) := '67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D312D46472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1613) := '3A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D747874207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D';
wwv_flow_api.g_varchar2_table(1614) := '6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0D0A202066696C6C3A20233133623663663B0D0A7D0D0A2E752D436F6C6F722D322D42472D2D6272';
wwv_flow_api.g_varchar2_table(1615) := '207B0D0A20207374726F6B653A20233133623663663B0D0A2020626F726465722D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D747874207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1616) := '436F6C6F722D322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236534663966643B0D0A7D0D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0D0A202066696C6C3A20236534663966643B0D0A7D0D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1617) := '6C6F722D322D46472D2D6272207B0D0A20207374726F6B653A20236534663966643B0D0A2020626F726465722D636F6C6F723A20236534663966643B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D747874207B0D0A2020636F6C6F723A2023326562';
wwv_flow_api.g_varchar2_table(1618) := '6662633B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D66696C6C207B0D0A202066696C6C3A20233265626662';
wwv_flow_api.g_varchar2_table(1619) := '633B0D0A7D0D0A2E752D436F6C6F722D332D42472D2D6272207B0D0A20207374726F6B653A20233265626662633B0D0A2020626F726465722D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D747874207B0D0A20';
wwv_flow_api.g_varchar2_table(1620) := '20636F6C6F723A20236630666366623B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236630666366623B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D66696C6C207B0D0A2020';
wwv_flow_api.g_varchar2_table(1621) := '66696C6C3A20236630666366623B0D0A7D0D0A2E752D436F6C6F722D332D46472D2D6272207B0D0A20207374726F6B653A20236630666366623B0D0A2020626F726465722D636F6C6F723A20236630666366623B0D0A7D0D0A2E752D436F6C6F722D342D';
wwv_flow_api.g_varchar2_table(1622) := '42472D2D747874207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E752D436F6C6F722D342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D436F6C6F722D342D4247';
wwv_flow_api.g_varchar2_table(1623) := '2D2D66696C6C207B0D0A202066696C6C3A20233363616638353B0D0A7D0D0A2E752D436F6C6F722D342D42472D2D6272207B0D0A20207374726F6B653A20233363616638353B0D0A2020626F726465722D636F6C6F723A20233363616638353B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1624) := '0A2E752D436F6C6F722D342D46472D2D747874207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E752D436F6C6F722D342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236630666166363B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1625) := '752D436F6C6F722D342D46472D2D66696C6C207B0D0A202066696C6C3A20236630666166363B0D0A7D0D0A2E752D436F6C6F722D342D46472D2D6272207B0D0A20207374726F6B653A20236630666166363B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1626) := '236630666166363B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D747874207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A202338';
wwv_flow_api.g_varchar2_table(1627) := '31626235663B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D66696C6C207B0D0A202066696C6C3A20233831626235663B0D0A7D0D0A2E752D436F6C6F722D352D42472D2D6272207B0D0A20207374726F6B653A20233831626235663B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1628) := '726465722D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D6267207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1629) := '6E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D352D46472D2D6272207B0D0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1630) := '66666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D747874207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D6267207B';
wwv_flow_api.g_varchar2_table(1631) := '0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D66696C6C207B0D0A202066696C6C3A20236464646535333B0D0A7D0D0A2E752D436F6C6F722D362D42472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1632) := '20207374726F6B653A20236464646535333B0D0A2020626F726465722D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D747874207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1633) := '722D362D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233261326130383B0D0A7D0D0A2E752D436F6C6F722D362D46472D2D66696C6C207B0D0A202066696C6C3A20233261326130383B0D0A7D0D0A2E752D436F6C6F722D';
wwv_flow_api.g_varchar2_table(1634) := '362D46472D2D6272207B0D0A20207374726F6B653A20233261326130383B0D0A2020626F726465722D636F6C6F723A20233261326130383B0D0A7D0D0A2E752D436F6C6F722D372D42472D2D747874207B0D0A2020636F6C6F723A20236662636534613B';
wwv_flow_api.g_varchar2_table(1635) := '0D0A7D0D0A2E752D436F6C6F722D372D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D436F6C6F722D372D42472D2D66696C6C207B0D0A202066696C6C3A20236662636534613B0D0A';
wwv_flow_api.g_varchar2_table(1636) := '7D0D0A2E752D436F6C6F722D372D42472D2D6272207B0D0A20207374726F6B653A20236662636534613B0D0A2020626F726465722D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D747874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1637) := '6F723A20233434333330323B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233434333330323B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D66696C6C207B0D0A202066696C6C';
wwv_flow_api.g_varchar2_table(1638) := '3A20233434333330323B0D0A7D0D0A2E752D436F6C6F722D372D46472D2D6272207B0D0A20207374726F6B653A20233434333330323B0D0A2020626F726465722D636F6C6F723A20233434333330323B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D';
wwv_flow_api.g_varchar2_table(1639) := '747874207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D6669';
wwv_flow_api.g_varchar2_table(1640) := '6C6C207B0D0A202066696C6C3A20236564383133653B0D0A7D0D0A2E752D436F6C6F722D382D42472D2D6272207B0D0A20207374726F6B653A20236564383133653B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1641) := '436F6C6F722D382D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1642) := '6C6F722D382D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D382D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1643) := '6666663B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D747874207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235';
wwv_flow_api.g_varchar2_table(1644) := '343B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D66696C6C207B0D0A202066696C6C3A20236539356235343B0D0A7D0D0A2E752D436F6C6F722D392D42472D2D6272207B0D0A20207374726F6B653A20236539356235343B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1645) := '2D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D6267207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1646) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D392D46472D2D6272207B0D0A20207374726F6B653A20236666666666';
wwv_flow_api.g_varchar2_table(1647) := '663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D747874207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D6267207B0D0A';
wwv_flow_api.g_varchar2_table(1648) := '20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D66696C6C207B0D0A202066696C6C3A20236538356438383B0D0A7D0D0A2E752D436F6C6F722D31302D42472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1649) := '20207374726F6B653A20236538356438383B0D0A2020626F726465722D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1650) := '6F722D31302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31302D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1651) := '6F722D31302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D747874207B0D0A2020636F6C6F723A20233230';
wwv_flow_api.g_varchar2_table(1652) := '383362383B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233230383362383B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D66696C6C207B0D0A202066696C6C3A20233230';
wwv_flow_api.g_varchar2_table(1653) := '383362383B0D0A7D0D0A2E752D436F6C6F722D31312D42472D2D6272207B0D0A20207374726F6B653A20233230383362383B0D0A2020626F726465722D636F6C6F723A20233230383362383B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D747874';
wwv_flow_api.g_varchar2_table(1654) := '207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D66696C';
wwv_flow_api.g_varchar2_table(1655) := '6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1656) := '436F6C6F722D31322D42472D2D747874207B0D0A2020636F6C6F723A20233066386461303B0D0A7D0D0A2E752D436F6C6F722D31322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233066386461303B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1657) := '436F6C6F722D31322D42472D2D66696C6C207B0D0A202066696C6C3A20233066386461303B0D0A7D0D0A2E752D436F6C6F722D31322D42472D2D6272207B0D0A20207374726F6B653A20233066386461303B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1658) := '233066386461303B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1659) := '236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31322D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(1660) := '2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D747874207B0D0A2020636F6C6F723A20233234393639343B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1661) := '636B67726F756E642D636F6C6F723A20233234393639343B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D66696C6C207B0D0A202066696C6C3A20233234393639343B0D0A7D0D0A2E752D436F6C6F722D31332D42472D2D6272207B0D0A20207374';
wwv_flow_api.g_varchar2_table(1662) := '726F6B653A20233234393639343B0D0A2020626F726465722D636F6C6F723A20233234393639343B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1663) := '332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31332D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1664) := '332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D747874207B0D0A2020636F6C6F723A2023326638393638';
wwv_flow_api.g_varchar2_table(1665) := '3B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233266383936383B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D66696C6C207B0D0A202066696C6C3A2023326638393638';
wwv_flow_api.g_varchar2_table(1666) := '3B0D0A7D0D0A2E752D436F6C6F722D31342D42472D2D6272207B0D0A20207374726F6B653A20233266383936383B0D0A2020626F726465722D636F6C6F723A20233266383936383B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D747874207B0D0A';
wwv_flow_api.g_varchar2_table(1667) := '2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D66696C6C207B0D';
wwv_flow_api.g_varchar2_table(1668) := '0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31342D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1669) := '722D31352D42472D2D747874207B0D0A2020636F6C6F723A20233637613234353B0D0A7D0D0A2E752D436F6C6F722D31352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233637613234353B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1670) := '722D31352D42472D2D66696C6C207B0D0A202066696C6C3A20233637613234353B0D0A7D0D0A2E752D436F6C6F722D31352D42472D2D6272207B0D0A20207374726F6B653A20233637613234353B0D0A2020626F726465722D636F6C6F723A2023363761';
wwv_flow_api.g_varchar2_table(1671) := '3234353B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1672) := '6666663B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1673) := '726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D747874207B0D0A2020636F6C6F723A20236434643532393B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D6267207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1674) := '6F756E642D636F6C6F723A20236434643532393B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D66696C6C207B0D0A202066696C6C3A20236434643532393B0D0A7D0D0A2E752D436F6C6F722D31362D42472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1675) := '3A20236434643532393B0D0A2020626F726465722D636F6C6F723A20236434643532393B0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D747874207B0D0A2020636F6C6F723A20233534353531303B0D0A7D0D0A2E752D436F6C6F722D31362D4647';
wwv_flow_api.g_varchar2_table(1676) := '2D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233534353531303B0D0A7D0D0A2E752D436F6C6F722D31362D46472D2D66696C6C207B0D0A202066696C6C3A20233534353531303B0D0A7D0D0A2E752D436F6C6F722D31362D4647';
wwv_flow_api.g_varchar2_table(1677) := '2D2D6272207B0D0A20207374726F6B653A20233534353531303B0D0A2020626F726465722D636F6C6F723A20233534353531303B0D0A7D0D0A2E752D436F6C6F722D31372D42472D2D747874207B0D0A2020636F6C6F723A20236661633031383B0D0A7D';
wwv_flow_api.g_varchar2_table(1678) := '0D0A2E752D436F6C6F722D31372D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236661633031383B0D0A7D0D0A2E752D436F6C6F722D31372D42472D2D66696C6C207B0D0A202066696C6C3A20236661633031383B0D0A7D';
wwv_flow_api.g_varchar2_table(1679) := '0D0A2E752D436F6C6F722D31372D42472D2D6272207B0D0A20207374726F6B653A20236661633031383B0D0A2020626F726465722D636F6C6F723A20236661633031383B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D747874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1680) := '6C6F723A20233736353930333B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233736353930333B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D66696C6C207B0D0A202066';
wwv_flow_api.g_varchar2_table(1681) := '696C6C3A20233736353930333B0D0A7D0D0A2E752D436F6C6F722D31372D46472D2D6272207B0D0A20207374726F6B653A20233736353930333B0D0A2020626F726465722D636F6C6F723A20233736353930333B0D0A7D0D0A2E752D436F6C6F722D3138';
wwv_flow_api.g_varchar2_table(1682) := '2D42472D2D747874207B0D0A2020636F6C6F723A20236533363431353B0D0A7D0D0A2E752D436F6C6F722D31382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236533363431353B0D0A7D0D0A2E752D436F6C6F722D3138';
wwv_flow_api.g_varchar2_table(1683) := '2D42472D2D66696C6C207B0D0A202066696C6C3A20236533363431353B0D0A7D0D0A2E752D436F6C6F722D31382D42472D2D6272207B0D0A20207374726F6B653A20236533363431353B0D0A2020626F726465722D636F6C6F723A20236533363431353B';
wwv_flow_api.g_varchar2_table(1684) := '0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1685) := '0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31382D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1686) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D747874207B0D0A2020636F6C6F723A20236533333032373B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1687) := '2D636F6C6F723A20236533333032373B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D66696C6C207B0D0A202066696C6C3A20236533333032373B0D0A7D0D0A2E752D436F6C6F722D31392D42472D2D6272207B0D0A20207374726F6B653A202365';
wwv_flow_api.g_varchar2_table(1688) := '33333032373B0D0A2020626F726465722D636F6C6F723A20236533333032373B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D6267';
wwv_flow_api.g_varchar2_table(1689) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D31392D46472D2D6272';
wwv_flow_api.g_varchar2_table(1690) := '207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D42472D2D747874207B0D0A2020636F6C6F723A20236532333036373B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1691) := '2D436F6C6F722D32302D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236532333036373B0D0A7D0D0A2E752D436F6C6F722D32302D42472D2D66696C6C207B0D0A202066696C6C3A20236532333036373B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1692) := '2D436F6C6F722D32302D42472D2D6272207B0D0A20207374726F6B653A20236532333036373B0D0A2020626F726465722D636F6C6F723A20236532333036373B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D747874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1693) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D66696C6C207B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1694) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32312D42472D';
wwv_flow_api.g_varchar2_table(1695) := '2D747874207B0D0A2020636F6C6F723A20233837633765613B0D0A7D0D0A2E752D436F6C6F722D32312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233837633765613B0D0A7D0D0A2E752D436F6C6F722D32312D42472D';
wwv_flow_api.g_varchar2_table(1696) := '2D66696C6C207B0D0A202066696C6C3A20233837633765613B0D0A7D0D0A2E752D436F6C6F722D32312D42472D2D6272207B0D0A20207374726F6B653A20233837633765613B0D0A2020626F726465722D636F6C6F723A20233837633765613B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1697) := '0A2E752D436F6C6F722D32312D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32312D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1698) := '0A2E752D436F6C6F722D32312D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32312D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1699) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D747874207B0D0A2020636F6C6F723A20233538646366303B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1700) := '6F723A20233538646366303B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D66696C6C207B0D0A202066696C6C3A20233538646366303B0D0A7D0D0A2E752D436F6C6F722D32322D42472D2D6272207B0D0A20207374726F6B653A20233538646366';
wwv_flow_api.g_varchar2_table(1701) := '303B0D0A2020626F726465722D636F6C6F723A20233538646366303B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D6267207B0D0A';
wwv_flow_api.g_varchar2_table(1702) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32322D46472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1703) := '20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D747874207B0D0A2020636F6C6F723A20233735646564633B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1704) := '6F722D32332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233735646564633B0D0A7D0D0A2E752D436F6C6F722D32332D42472D2D66696C6C207B0D0A202066696C6C3A20233735646564633B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1705) := '6F722D32332D42472D2D6272207B0D0A20207374726F6B653A20233735646564633B0D0A2020626F726465722D636F6C6F723A20233735646564633B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D747874207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1706) := '666666663B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D66696C6C207B0D0A202066696C6C3A20236666';
wwv_flow_api.g_varchar2_table(1707) := '666666663B0D0A7D0D0A2E752D436F6C6F722D32332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D747874';
wwv_flow_api.g_varchar2_table(1708) := '207B0D0A2020636F6C6F723A20233765643362343B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233765643362343B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D66696C';
wwv_flow_api.g_varchar2_table(1709) := '6C207B0D0A202066696C6C3A20233765643362343B0D0A7D0D0A2E752D436F6C6F722D32342D42472D2D6272207B0D0A20207374726F6B653A20233765643362343B0D0A2020626F726465722D636F6C6F723A20233765643362343B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1710) := '436F6C6F722D32342D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1711) := '436F6C6F722D32342D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32342D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1712) := '236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D747874207B0D0A2020636F6C6F723A20236239643961373B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1713) := '236239643961373B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D66696C6C207B0D0A202066696C6C3A20236239643961373B0D0A7D0D0A2E752D436F6C6F722D32352D42472D2D6272207B0D0A20207374726F6B653A20236239643961373B0D0A';
wwv_flow_api.g_varchar2_table(1714) := '2020626F726465722D636F6C6F723A20236239643961373B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1715) := '636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32352D46472D2D6272207B0D0A20207374';
wwv_flow_api.g_varchar2_table(1716) := '726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D747874207B0D0A2020636F6C6F723A20236565656561393B0D0A7D0D0A2E752D436F6C6F722D32';
wwv_flow_api.g_varchar2_table(1717) := '362D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236565656561393B0D0A7D0D0A2E752D436F6C6F722D32362D42472D2D66696C6C207B0D0A202066696C6C3A20236565656561393B0D0A7D0D0A2E752D436F6C6F722D32';
wwv_flow_api.g_varchar2_table(1718) := '362D42472D2D6272207B0D0A20207374726F6B653A20236565656561393B0D0A2020626F726465722D636F6C6F723A20236565656561393B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D747874207B0D0A2020636F6C6F723A2023376638303138';
wwv_flow_api.g_varchar2_table(1719) := '3B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D66696C6C207B0D0A202066696C6C3A2023376638303138';
wwv_flow_api.g_varchar2_table(1720) := '3B0D0A7D0D0A2E752D436F6C6F722D32362D46472D2D6272207B0D0A20207374726F6B653A20233766383031383B0D0A2020626F726465722D636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D747874207B0D0A';
wwv_flow_api.g_varchar2_table(1721) := '2020636F6C6F723A20236664653961653B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236664653961653B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D66696C6C207B0D';
wwv_flow_api.g_varchar2_table(1722) := '0A202066696C6C3A20236664653961653B0D0A7D0D0A2E752D436F6C6F722D32372D42472D2D6272207B0D0A20207374726F6B653A20236664653961653B0D0A2020626F726465722D636F6C6F723A20236664653961653B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1723) := '722D32372D46472D2D747874207B0D0A2020636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D32372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1724) := '722D32372D46472D2D66696C6C207B0D0A202066696C6C3A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D32372D46472D2D6272207B0D0A20207374726F6B653A20236138376530343B0D0A2020626F726465722D636F6C6F723A2023613837';
wwv_flow_api.g_varchar2_table(1725) := '6530343B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D747874207B0D0A2020636F6C6F723A20236636626539623B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A2023663662';
wwv_flow_api.g_varchar2_table(1726) := '6539623B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D66696C6C207B0D0A202066696C6C3A20236636626539623B0D0A7D0D0A2E752D436F6C6F722D32382D42472D2D6272207B0D0A20207374726F6B653A20236636626539623B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1727) := '726465722D636F6C6F723A20236636626539623B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D6267207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1728) := '6F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32382D46472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1729) := '3A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D747874207B0D0A2020636F6C6F723A20236635623261653B0D0A7D0D0A2E752D436F6C6F722D32392D4247';
wwv_flow_api.g_varchar2_table(1730) := '2D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236635623261653B0D0A7D0D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0D0A202066696C6C3A20236635623261653B0D0A7D0D0A2E752D436F6C6F722D32392D4247';
wwv_flow_api.g_varchar2_table(1731) := '2D2D6272207B0D0A20207374726F6B653A20236635623261653B0D0A2020626F726465722D636F6C6F723A20236635623261653B0D0A7D0D0A2E752D436F6C6F722D32392D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(1732) := '0D0A2E752D436F6C6F722D32392D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D32392D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D';
wwv_flow_api.g_varchar2_table(1733) := '0D0A2E752D436F6C6F722D32392D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D747874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1734) := '6C6F723A20236635623663613B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236635623663613B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D66696C6C207B0D0A202066';
wwv_flow_api.g_varchar2_table(1735) := '696C6C3A20236635623663613B0D0A7D0D0A2E752D436F6C6F722D33302D42472D2D6272207B0D0A20207374726F6B653A20236635623663613B0D0A2020626F726465722D636F6C6F723A20236635623663613B0D0A7D0D0A2E752D436F6C6F722D3330';
wwv_flow_api.g_varchar2_table(1736) := '2D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D3330';
wwv_flow_api.g_varchar2_table(1737) := '2D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1738) := '0D0A7D0D0A2E752D436F6C6F722D33312D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1739) := '0D0A7D0D0A2E752D436F6C6F722D33312D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1740) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D46472D2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1741) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33312D46472D2D6272207B0D0A20207374726F6B653A202366';
wwv_flow_api.g_varchar2_table(1742) := '66666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D42472D2D6267';
wwv_flow_api.g_varchar2_table(1743) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D42472D2D6272';
wwv_flow_api.g_varchar2_table(1744) := '207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1745) := '2D436F6C6F722D33322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33322D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1746) := '2D436F6C6F722D33322D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D42472D2D747874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1747) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D42472D2D66696C6C207B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1748) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D46472D';
wwv_flow_api.g_varchar2_table(1749) := '2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D46472D';
wwv_flow_api.g_varchar2_table(1750) := '2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1751) := '0A2E752D436F6C6F722D33342D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1752) := '0A2E752D436F6C6F722D33342D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1753) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1754) := '6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33342D46472D2D6272207B0D0A20207374726F6B653A20236666666666';
wwv_flow_api.g_varchar2_table(1755) := '663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D42472D2D6267207B0D0A';
wwv_flow_api.g_varchar2_table(1756) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D42472D2D6272207B0D0A';
wwv_flow_api.g_varchar2_table(1757) := '20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1758) := '6F722D33352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33352D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1759) := '6F722D33352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33362D42472D2D747874207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1760) := '666666663B0D0A7D0D0A2E752D436F6C6F722D33362D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33362D42472D2D66696C6C207B0D0A202066696C6C3A20236666';
wwv_flow_api.g_varchar2_table(1761) := '666666663B0D0A7D0D0A2E752D436F6C6F722D33362D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33362D46472D2D747874';
wwv_flow_api.g_varchar2_table(1762) := '207B0D0A2020636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D33362D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D33362D46472D2D66696C';
wwv_flow_api.g_varchar2_table(1763) := '6C207B0D0A202066696C6C3A20233766383031383B0D0A7D0D0A2E752D436F6C6F722D33362D46472D2D6272207B0D0A20207374726F6B653A20233766383031383B0D0A2020626F726465722D636F6C6F723A20233766383031383B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1764) := '436F6C6F722D33372D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33372D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1765) := '436F6C6F722D33372D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33372D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1766) := '236666666666663B0D0A7D0D0A2E752D436F6C6F722D33372D46472D2D747874207B0D0A2020636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D33372D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1767) := '236138376530343B0D0A7D0D0A2E752D436F6C6F722D33372D46472D2D66696C6C207B0D0A202066696C6C3A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D33372D46472D2D6272207B0D0A20207374726F6B653A20236138376530343B0D0A';
wwv_flow_api.g_varchar2_table(1768) := '2020626F726465722D636F6C6F723A20236138376530343B0D0A7D0D0A2E752D436F6C6F722D33382D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D42472D2D6267207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1769) := '636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D42472D2D6272207B0D0A20207374';
wwv_flow_api.g_varchar2_table(1770) := '726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33';
wwv_flow_api.g_varchar2_table(1771) := '382D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33382D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33';
wwv_flow_api.g_varchar2_table(1772) := '382D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D42472D2D747874207B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1773) := '3B0D0A7D0D0A2E752D436F6C6F722D33392D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D42472D2D66696C6C207B0D0A202066696C6C3A2023666666666666';
wwv_flow_api.g_varchar2_table(1774) := '3B0D0A7D0D0A2E752D436F6C6F722D33392D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D46472D2D747874207B0D0A';
wwv_flow_api.g_varchar2_table(1775) := '2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D46472D2D66696C6C207B0D';
wwv_flow_api.g_varchar2_table(1776) := '0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D33392D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1777) := '722D34302D42472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1778) := '722D34302D42472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D42472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1779) := '6666663B0D0A7D0D0A2E752D436F6C6F722D34302D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1780) := '6666663B0D0A7D0D0A2E752D436F6C6F722D34302D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34302D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1781) := '726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34312D42472D2D747874207B0D0A2020636F6C6F723A20236232646266323B0D0A7D0D0A2E752D436F6C6F722D34312D42472D2D6267207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1782) := '6F756E642D636F6C6F723A20236232646266323B0D0A7D0D0A2E752D436F6C6F722D34312D42472D2D66696C6C207B0D0A202066696C6C3A20236232646266323B0D0A7D0D0A2E752D436F6C6F722D34312D42472D2D6272207B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1783) := '3A20236232646266323B0D0A2020626F726465722D636F6C6F723A20236232646266323B0D0A7D0D0A2E752D436F6C6F722D34312D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34312D4647';
wwv_flow_api.g_varchar2_table(1784) := '2D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34312D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34312D4647';
wwv_flow_api.g_varchar2_table(1785) := '2D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34322D42472D2D747874207B0D0A2020636F6C6F723A20233837653566343B0D0A7D';
wwv_flow_api.g_varchar2_table(1786) := '0D0A2E752D436F6C6F722D34322D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233837653566343B0D0A7D0D0A2E752D436F6C6F722D34322D42472D2D66696C6C207B0D0A202066696C6C3A20233837653566343B0D0A7D';
wwv_flow_api.g_varchar2_table(1787) := '0D0A2E752D436F6C6F722D34322D42472D2D6272207B0D0A20207374726F6B653A20233837653566343B0D0A2020626F726465722D636F6C6F723A20233837653566343B0D0A7D0D0A2E752D436F6C6F722D34322D46472D2D747874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1788) := '6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34322D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34322D46472D2D66696C6C207B0D0A202066';
wwv_flow_api.g_varchar2_table(1789) := '696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34322D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D3433';
wwv_flow_api.g_varchar2_table(1790) := '2D42472D2D747874207B0D0A2020636F6C6F723A20233965653865363B0D0A7D0D0A2E752D436F6C6F722D34332D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233965653865363B0D0A7D0D0A2E752D436F6C6F722D3433';
wwv_flow_api.g_varchar2_table(1791) := '2D42472D2D66696C6C207B0D0A202066696C6C3A20233965653865363B0D0A7D0D0A2E752D436F6C6F722D34332D42472D2D6272207B0D0A20207374726F6B653A20233965653865363B0D0A2020626F726465722D636F6C6F723A20233965653865363B';
wwv_flow_api.g_varchar2_table(1792) := '0D0A7D0D0A2E752D436F6C6F722D34332D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34332D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1793) := '0D0A7D0D0A2E752D436F6C6F722D34332D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34332D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1794) := '2D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34342D42472D2D747874207B0D0A2020636F6C6F723A20236134653063613B0D0A7D0D0A2E752D436F6C6F722D34342D42472D2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1795) := '2D636F6C6F723A20236134653063613B0D0A7D0D0A2E752D436F6C6F722D34342D42472D2D66696C6C207B0D0A202066696C6C3A20236134653063613B0D0A7D0D0A2E752D436F6C6F722D34342D42472D2D6272207B0D0A20207374726F6B653A202361';
wwv_flow_api.g_varchar2_table(1796) := '34653063613B0D0A2020626F726465722D636F6C6F723A20236134653063613B0D0A7D0D0A2E752D436F6C6F722D34342D46472D2D747874207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34342D46472D2D6267';
wwv_flow_api.g_varchar2_table(1797) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34342D46472D2D66696C6C207B0D0A202066696C6C3A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34342D46472D2D6272';
wwv_flow_api.g_varchar2_table(1798) := '207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34352D42472D2D747874207B0D0A2020636F6C6F723A20236436653963613B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1799) := '2D436F6C6F722D34352D42472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236436653963613B0D0A7D0D0A2E752D436F6C6F722D34352D42472D2D66696C6C207B0D0A202066696C6C3A20236436653963613B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1800) := '2D436F6C6F722D34352D42472D2D6272207B0D0A20207374726F6B653A20236436653963613B0D0A2020626F726465722D636F6C6F723A20236436653963613B0D0A7D0D0A2E752D436F6C6F722D34352D46472D2D747874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1801) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34352D46472D2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34352D46472D2D66696C6C207B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1802) := '20236666666666663B0D0A7D0D0A2E752D436F6C6F722D34352D46472D2D6272207B0D0A20207374726F6B653A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1803) := '6E74682D6368696C642834356E202B203129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1804) := '6368696C642834356E202B203129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1805) := '6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D63';
wwv_flow_api.g_varchar2_table(1806) := '6F6C6F722D74657874207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1807) := '696C642834356E202B203129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1808) := '72207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D6267';
wwv_flow_api.g_varchar2_table(1809) := '2C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1810) := '203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023313362';
wwv_flow_api.g_varchar2_table(1811) := '3663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D626F7264';
wwv_flow_api.g_varchar2_table(1812) := '6572207B0D0A2020626F726465722D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1813) := '3265626662633B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1814) := '34356E202B203329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D';
wwv_flow_api.g_varchar2_table(1815) := '636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1816) := '6368696C642834356E202B203329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023326562';
wwv_flow_api.g_varchar2_table(1817) := '6662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A2020636F6C6F723A20236630666166363B';
wwv_flow_api.g_varchar2_table(1818) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D6261636B67726F75';
wwv_flow_api.g_varchar2_table(1819) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1820) := '74682D6368696C642834356E202B203429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D6264';
wwv_flow_api.g_varchar2_table(1821) := '2C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1822) := '6368696C642834356E202B203529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1823) := '642834356E202B203529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1824) := '233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1825) := '2D74657874207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1826) := '34356E202B203529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F72207B0D';
wwv_flow_api.g_varchar2_table(1827) := '0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62672C0D0A2E';
wwv_flow_api.g_varchar2_table(1828) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1829) := '6E74682D6368696C642834356E202B203629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236464646535333B';
wwv_flow_api.g_varchar2_table(1830) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D626F72646572207B';
wwv_flow_api.g_varchar2_table(1831) := '0D0A2020626F726465722D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A202366626365';
wwv_flow_api.g_varchar2_table(1832) := '34613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1833) := '2B203729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1834) := '722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1835) := '642834356E202B203729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534613B';
wwv_flow_api.g_varchar2_table(1836) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1837) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D6261636B67726F756E64207B';
wwv_flow_api.g_varchar2_table(1838) := '0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1839) := '68696C642834356E202B203829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(1840) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1841) := '642834356E202B203929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1842) := '6E202B203929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023653935';
wwv_flow_api.g_varchar2_table(1843) := '6235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D746578';
wwv_flow_api.g_varchar2_table(1844) := '74207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1845) := '2B203929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F72207B0D0A2020';
wwv_flow_api.g_varchar2_table(1846) := '6261636B67726F756E642D636F6C6F723A20236538356438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62672C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1847) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1848) := '74682D6368696C642834356E202B20313029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023653835643838';
wwv_flow_api.g_varchar2_table(1849) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D626F726465';
wwv_flow_api.g_varchar2_table(1850) := '72207B0D0A2020626F726465722D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1851) := '6361353839643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1852) := '2834356E202B20313129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031312920';
wwv_flow_api.g_varchar2_table(1853) := '2E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1854) := '6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1855) := '3A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1856) := '6636663066383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1857) := '2D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D7478742C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1858) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229';
wwv_flow_api.g_varchar2_table(1859) := '202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1860) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1861) := '7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1862) := '636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1863) := '34356E202B20313329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62642C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1864) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1865) := '34356E202B20313429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E';
wwv_flow_api.g_varchar2_table(1866) := '202B20313429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236166';
wwv_flow_api.g_varchar2_table(1867) := '626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1868) := '74657874207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1869) := '34356E202B20313429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F7220';
wwv_flow_api.g_varchar2_table(1870) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62672C';
wwv_flow_api.g_varchar2_table(1871) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1872) := '203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A202336';
wwv_flow_api.g_varchar2_table(1873) := '65383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1874) := '626F72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1875) := '6F723A20233539623265323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1876) := '6368696C642834356E202B20313629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1877) := '20313629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1878) := '73203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1879) := '636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1880) := '6F723A20236561666166643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D';
wwv_flow_api.g_varchar2_table(1881) := '636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D7478742C0D';
wwv_flow_api.g_varchar2_table(1882) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1883) := '2B20313729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564393B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1884) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1885) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D6261636B67726F756E64207B0D';
wwv_flow_api.g_varchar2_table(1886) := '0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1887) := '68696C642834356E202B20313829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62642C0D';
wwv_flow_api.g_varchar2_table(1888) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1889) := '68696C642834356E202B20313929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1890) := '642834356E202B20313929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1891) := '3A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D63';
wwv_flow_api.g_varchar2_table(1892) := '6F6C6F722D74657874207B0D0A2020636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1893) := '68696C642834356E202B20313929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D63';
wwv_flow_api.g_varchar2_table(1894) := '6F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1895) := '722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1896) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1897) := '723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D63';
wwv_flow_api.g_varchar2_table(1898) := '6F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F72207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1899) := '642D636F6C6F723A20236534653537353B0D0A2020636F6C6F723A20233534353533393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E20';
wwv_flow_api.g_varchar2_table(1900) := '3A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1901) := '34356E202B20323129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236534653537353B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1902) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D626F72646572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1903) := '726465722D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A';
wwv_flow_api.g_varchar2_table(1904) := '2020636F6C6F723A20233661356333343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203232';
wwv_flow_api.g_varchar2_table(1905) := '29202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1906) := '7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1907) := '2834356E202B20323229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023666364383665';
wwv_flow_api.g_varchar2_table(1908) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(1909) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D6261636B67726F75';
wwv_flow_api.g_varchar2_table(1910) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1911) := '6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1912) := '2D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1913) := '6E74682D6368696C642834356E202B20323429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1914) := '2D6368696C642834356E202B20323429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1915) := '636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429';
wwv_flow_api.g_varchar2_table(1916) := '202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1917) := '6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529';
wwv_flow_api.g_varchar2_table(1918) := '202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E75';
wwv_flow_api.g_varchar2_table(1919) := '2D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1920) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D74657874207B0D0A20';
wwv_flow_api.g_varchar2_table(1921) := '20636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529';
wwv_flow_api.g_varchar2_table(1922) := '202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F72207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1923) := '67726F756E642D636F6C6F723A20236435373962313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1924) := '7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1925) := '68696C642834356E202B20323629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236435373962313B0D0A7D';
wwv_flow_api.g_varchar2_table(1926) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D626F72646572207B0D';
wwv_flow_api.g_varchar2_table(1927) := '0A2020626F726465722D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A202339643731';
wwv_flow_api.g_varchar2_table(1928) := '61663B0D0A2020636F6C6F723A20236637663366393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E';
wwv_flow_api.g_varchar2_table(1929) := '202B20323729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D63';
wwv_flow_api.g_varchar2_table(1930) := '6F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1931) := '6368696C642834356E202B20323729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A202339';
wwv_flow_api.g_varchar2_table(1932) := '64373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(1933) := '66663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D626163';
wwv_flow_api.g_varchar2_table(1934) := '6B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1935) := '73203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D';
wwv_flow_api.g_varchar2_table(1936) := '636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1937) := '73203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1938) := '203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1939) := '6F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1940) := '2B20323929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1941) := '73203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1942) := '2B20333029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033';
wwv_flow_api.g_varchar2_table(1943) := '3029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023386239646164';
wwv_flow_api.g_varchar2_table(1944) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D74657874';
wwv_flow_api.g_varchar2_table(1945) := '207B0D0A2020636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1946) := '2B20333029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F72207B0D0A20';
wwv_flow_api.g_varchar2_table(1947) := '206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62672C0D0A2E75';
wwv_flow_api.g_varchar2_table(1948) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1949) := '6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233262386663';
wwv_flow_api.g_varchar2_table(1950) := '353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D626F7264';
wwv_flow_api.g_varchar2_table(1951) := '6572207B0D0A2020626F726465722D636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1952) := '233131613462613B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1953) := '642834356E202B20333229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229';
wwv_flow_api.g_varchar2_table(1954) := '202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F7273203E20';
wwv_flow_api.g_varchar2_table(1955) := '3A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1956) := '723A20233131613462613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1957) := '236438653265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1958) := '722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D7478742C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1959) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203333';
wwv_flow_api.g_varchar2_table(1960) := '29202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233239616361393B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1961) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A2020636F6C6F723A20236438653164653B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1962) := '6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D6261636B67726F756E64207B0D0A202062';
wwv_flow_api.g_varchar2_table(1963) := '61636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1964) := '2834356E202B20333429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62642C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1965) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1966) := '2834356E202B20333529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1967) := '6E202B20333529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202337';
wwv_flow_api.g_varchar2_table(1968) := '34613835363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1969) := '2D74657874207B0D0A2020636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1970) := '2834356E202B20333529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1971) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D6267';
wwv_flow_api.g_varchar2_table(1972) := '2C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1973) := '73203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1974) := '6337633834623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1975) := '2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1976) := '6C6F723A20236532623934333B0D0A2020636F6C6F723A20233365326530313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1977) := '2D6368696C642834356E202B20333729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1978) := '2B20333729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1979) := '7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D626F72646572207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(1980) := '2D636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1981) := '6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E75';
wwv_flow_api.g_varchar2_table(1982) := '2D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D7478742C';
wwv_flow_api.g_varchar2_table(1983) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E';
wwv_flow_api.g_varchar2_table(1984) := '202B20333829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373433383B0D0A7D';
wwv_flow_api.g_varchar2_table(1985) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1986) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D6261636B67726F756E64207B';
wwv_flow_api.g_varchar2_table(1987) := '0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1988) := '6368696C642834356E202B20333929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62642C';
wwv_flow_api.g_varchar2_table(1989) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1990) := '6368696C642834356E202B20343029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236431353437613B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1991) := '6C642834356E202B20343029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1992) := '723A20236431353437613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D';
wwv_flow_api.g_varchar2_table(1993) := '636F6C6F722D74657874207B0D0A2020636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1994) := '6368696C642834356E202B20343029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D';
wwv_flow_api.g_varchar2_table(1995) := '636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C';
wwv_flow_api.g_varchar2_table(1996) := '6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1997) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1998) := '6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D';
wwv_flow_api.g_varchar2_table(1999) := '636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F72207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(2000) := '6E642D636F6C6F723A20233738343638633B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(2001) := '203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(2002) := '2834356E202B20343229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233738343638633B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(2003) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D626F72646572207B0D0A202062';
wwv_flow_api.g_varchar2_table(2004) := '6F726465722D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D';
wwv_flow_api.g_varchar2_table(2005) := '0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2034';
wwv_flow_api.g_varchar2_table(2006) := '3329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2007) := '2D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(2008) := '642834356E202B20343329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233531356539';
wwv_flow_api.g_varchar2_table(2009) := '633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A2020636F6C6F723A20233263333533643B0D';
wwv_flow_api.g_varchar2_table(2010) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D6261636B67726F';
wwv_flow_api.g_varchar2_table(2011) := '756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E20';
wwv_flow_api.g_varchar2_table(2012) := '3A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2013) := '722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F7273203E20';
wwv_flow_api.g_varchar2_table(2014) := '3A6E74682D6368696C642834356E202B20343529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(2015) := '682D6368696C642834356E202B20343529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(2016) := '2D636F6C6F723A20233633373838393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203435';
wwv_flow_api.g_varchar2_table(2017) := '29202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233633373838393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E20';
wwv_flow_api.g_varchar2_table(2018) := '3A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633373838393B0D0A7D0D0A0D0A2E752D636F6C6F722D31207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(2019) := '6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D312D62672C0D0A2E752D636F6C6F722D312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(2020) := '30396664623B0D0A7D0D0A2E752D636F6C6F722D312D7478742C0D0A2E752D636F6C6F722D312D74657874207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F722D312D62642C0D0A2E752D636F6C6F722D312D626F7264';
wwv_flow_api.g_varchar2_table(2021) := '6572207B0D0A2020626F726465722D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F722D32207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D';
wwv_flow_api.g_varchar2_table(2022) := '0A2E752D636F6C6F722D322D62672C0D0A2E752D636F6C6F722D322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F722D322D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2023) := '2D322D74657874207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F722D322D62642C0D0A2E752D636F6C6F722D322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133623663663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(2024) := '752D636F6C6F722D33207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E752D636F6C6F722D332D62672C0D0A2E752D636F6C6F722D332D6261636B67726F75';
wwv_flow_api.g_varchar2_table(2025) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F722D332D7478742C0D0A2E752D636F6C6F722D332D74657874207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(2026) := '636F6C6F722D332D62642C0D0A2E752D636F6C6F722D332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F722D34207B0D0A20206261636B67726F756E642D636F6C6F723A20233363';
wwv_flow_api.g_varchar2_table(2027) := '616638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E752D636F6C6F722D342D62672C0D0A2E752D636F6C6F722D342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A';
wwv_flow_api.g_varchar2_table(2028) := '7D0D0A2E752D636F6C6F722D342D7478742C0D0A2E752D636F6C6F722D342D74657874207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F722D342D62642C0D0A2E752D636F6C6F722D342D626F72646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(2029) := '626F726465722D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F722D35207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2030) := '722D352D62672C0D0A2E752D636F6C6F722D352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F722D352D7478742C0D0A2E752D636F6C6F722D352D7465787420';
wwv_flow_api.g_varchar2_table(2031) := '7B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F722D352D62642C0D0A2E752D636F6C6F722D352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(2032) := '36207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E752D636F6C6F722D362D62672C0D0A2E752D636F6C6F722D362D6261636B67726F756E64207B0D0A2020';
wwv_flow_api.g_varchar2_table(2033) := '6261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F722D362D7478742C0D0A2E752D636F6C6F722D362D74657874207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F722D362D';
wwv_flow_api.g_varchar2_table(2034) := '62642C0D0A2E752D636F6C6F722D362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F722D37207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A20';
wwv_flow_api.g_varchar2_table(2035) := '20636F6C6F723A20233434333330323B0D0A7D0D0A2E752D636F6C6F722D372D62672C0D0A2E752D636F6C6F722D372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(2036) := '6C6F722D372D7478742C0D0A2E752D636F6C6F722D372D74657874207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F722D372D62642C0D0A2E752D636F6C6F722D372D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(2037) := '6F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F722D38207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D382D62672C0D';
wwv_flow_api.g_varchar2_table(2038) := '0A2E752D636F6C6F722D382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F722D382D7478742C0D0A2E752D636F6C6F722D382D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(2039) := '6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F722D382D62642C0D0A2E752D636F6C6F722D382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F722D39207B0D0A202062';
wwv_flow_api.g_varchar2_table(2040) := '61636B67726F756E642D636F6C6F723A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D392D62672C0D0A2E752D636F6C6F722D392D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(2041) := '6E642D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F722D392D7478742C0D0A2E752D636F6C6F722D392D74657874207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F722D392D62642C0D0A2E752D';
wwv_flow_api.g_varchar2_table(2042) := '636F6C6F722D392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F722D3130207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(2043) := '20236666666666663B0D0A7D0D0A2E752D636F6C6F722D31302D62672C0D0A2E752D636F6C6F722D31302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F722D31';
wwv_flow_api.g_varchar2_table(2044) := '302D7478742C0D0A2E752D636F6C6F722D31302D74657874207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F722D31302D62642C0D0A2E752D636F6C6F722D31302D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(2045) := '6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F722D3131207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D31312D62672C';
wwv_flow_api.g_varchar2_table(2046) := '0D0A2E752D636F6C6F722D31312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F722D31312D7478742C0D0A2E752D636F6C6F722D31312D74657874207B0D0A20';
wwv_flow_api.g_varchar2_table(2047) := '20636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F722D31312D62642C0D0A2E752D636F6C6F722D31312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F722D3132';
wwv_flow_api.g_varchar2_table(2048) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E752D636F6C6F722D31322D62672C0D0A2E752D636F6C6F722D31322D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(2049) := '206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F722D31322D7478742C0D0A2E752D636F6C6F722D31322D74657874207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2050) := '2D31322D62642C0D0A2E752D636F6C6F722D31322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F722D3133207B0D0A20206261636B67726F756E642D636F6C6F723A202335613638';
wwv_flow_api.g_varchar2_table(2051) := '61643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D31332D62672C0D0A2E752D636F6C6F722D31332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A';
wwv_flow_api.g_varchar2_table(2052) := '7D0D0A2E752D636F6C6F722D31332D7478742C0D0A2E752D636F6C6F722D31332D74657874207B0D0A2020636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F722D31332D62642C0D0A2E752D636F6C6F722D31332D626F72646572207B';
wwv_flow_api.g_varchar2_table(2053) := '0D0A2020626F726465722D636F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F722D3134207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(2054) := '2D636F6C6F722D31342D62672C0D0A2E752D636F6C6F722D31342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F722D31342D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2055) := '2D31342D74657874207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F722D31342D62642C0D0A2E752D636F6C6F722D31342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236166626163353B0D0A7D';
wwv_flow_api.g_varchar2_table(2056) := '0D0A2E752D636F6C6F722D3135207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D31352D62672C0D0A2E752D636F6C6F722D31352D6261';
wwv_flow_api.g_varchar2_table(2057) := '636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F722D31352D7478742C0D0A2E752D636F6C6F722D31352D74657874207B0D0A2020636F6C6F723A20233665383539383B';
wwv_flow_api.g_varchar2_table(2058) := '0D0A7D0D0A2E752D636F6C6F722D31352D62642C0D0A2E752D636F6C6F722D31352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F722D3136207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(2059) := '2D636F6C6F723A20233539623265323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D31362D62672C0D0A2E752D636F6C6F722D31362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(2060) := '723A20233539623265323B0D0A7D0D0A2E752D636F6C6F722D31362D7478742C0D0A2E752D636F6C6F722D31362D74657874207B0D0A2020636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F722D31362D62642C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2061) := '722D31362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F722D3137207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A2020636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(2062) := '61666166643B0D0A7D0D0A2E752D636F6C6F722D31372D62672C0D0A2E752D636F6C6F722D31372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F722D31372D74';
wwv_flow_api.g_varchar2_table(2063) := '78742C0D0A2E752D636F6C6F722D31372D74657874207B0D0A2020636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F722D31372D62642C0D0A2E752D636F6C6F722D31372D626F72646572207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(2064) := '3A20233432633564393B0D0A7D0D0A2E752D636F6C6F722D3138207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A2020636F6C6F723A20236633666366633B0D0A7D0D0A2E752D636F6C6F722D31382D62672C0D0A2E';
wwv_flow_api.g_varchar2_table(2065) := '752D636F6C6F722D31382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F722D31382D7478742C0D0A2E752D636F6C6F722D31382D74657874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(2066) := '6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F722D31382D62642C0D0A2E752D636F6C6F722D31382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F722D3139207B0D';
wwv_flow_api.g_varchar2_table(2067) := '0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A2020636F6C6F723A20236633666266383B0D0A7D0D0A2E752D636F6C6F722D31392D62672C0D0A2E752D636F6C6F722D31392D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(2068) := '636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F722D31392D7478742C0D0A2E752D636F6C6F722D31392D74657874207B0D0A2020636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F722D3139';
wwv_flow_api.g_varchar2_table(2069) := '2D62642C0D0A2E752D636F6C6F722D31392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F722D3230207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B';
wwv_flow_api.g_varchar2_table(2070) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32302D62672C0D0A2E752D636F6C6F722D32302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(2071) := '2E752D636F6C6F722D32302D7478742C0D0A2E752D636F6C6F722D32302D74657874207B0D0A2020636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F722D32302D62642C0D0A2E752D636F6C6F722D32302D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(2072) := '20626F726465722D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F722D3231207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A2020636F6C6F723A20233534353533393B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(2073) := '6C6F722D32312D62672C0D0A2E752D636F6C6F722D32312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F722D32312D7478742C0D0A2E752D636F6C6F722D3231';
wwv_flow_api.g_varchar2_table(2074) := '2D74657874207B0D0A2020636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F722D32312D62642C0D0A2E752D636F6C6F722D32312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537353B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(2075) := '752D636F6C6F722D3232207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A2020636F6C6F723A20233661356333343B0D0A7D0D0A2E752D636F6C6F722D32322D62672C0D0A2E752D636F6C6F722D32322D6261636B67';
wwv_flow_api.g_varchar2_table(2076) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F722D32322D7478742C0D0A2E752D636F6C6F722D32322D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D';
wwv_flow_api.g_varchar2_table(2077) := '0D0A2E752D636F6C6F722D32322D62642C0D0A2E752D636F6C6F722D32322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F722D3233207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(2078) := '6C6F723A20236631396136353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32332D62672C0D0A2E752D636F6C6F722D32332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(2079) := '236631396136353B0D0A7D0D0A2E752D636F6C6F722D32332D7478742C0D0A2E752D636F6C6F722D32332D74657874207B0D0A2020636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F722D32332D62642C0D0A2E752D636F6C6F722D32';
wwv_flow_api.g_varchar2_table(2080) := '332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F722D3234207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(2081) := '66663B0D0A7D0D0A2E752D636F6C6F722D32342D62672C0D0A2E752D636F6C6F722D32342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F722D32342D7478742C';
wwv_flow_api.g_varchar2_table(2082) := '0D0A2E752D636F6C6F722D32342D74657874207B0D0A2020636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F722D32342D62642C0D0A2E752D636F6C6F722D32342D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(2083) := '6564376337363B0D0A7D0D0A2E752D636F6C6F722D3235207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32352D62672C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2084) := '6F6C6F722D32352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F722D32352D7478742C0D0A2E752D636F6C6F722D32352D74657874207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(2085) := '3A20236564376461303B0D0A7D0D0A2E752D636F6C6F722D32352D62642C0D0A2E752D636F6C6F722D32352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F722D3236207B0D0A2020';
wwv_flow_api.g_varchar2_table(2086) := '6261636B67726F756E642D636F6C6F723A20236435373962313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D32362D62672C0D0A2E752D636F6C6F722D32362D6261636B67726F756E64207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(2087) := '726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F722D32362D7478742C0D0A2E752D636F6C6F722D32362D74657874207B0D0A2020636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F722D32362D6264';
wwv_flow_api.g_varchar2_table(2088) := '2C0D0A2E752D636F6C6F722D32362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F722D3237207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A20';
wwv_flow_api.g_varchar2_table(2089) := '20636F6C6F723A20236637663366393B0D0A7D0D0A2E752D636F6C6F722D32372D62672C0D0A2E752D636F6C6F722D32372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(2090) := '636F6C6F722D32372D7478742C0D0A2E752D636F6C6F722D32372D74657874207B0D0A2020636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F722D32372D62642C0D0A2E752D636F6C6F722D32372D626F72646572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(2091) := '726465722D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F722D3238207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(2092) := '2D32382D62672C0D0A2E752D636F6C6F722D32382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F722D32382D7478742C0D0A2E752D636F6C6F722D32382D7465';
wwv_flow_api.g_varchar2_table(2093) := '7874207B0D0A2020636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F722D32382D62642C0D0A2E752D636F6C6F722D32382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2094) := '6F6C6F722D3239207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A2020636F6C6F723A20233561363236393B0D0A7D0D0A2E752D636F6C6F722D32392D62672C0D0A2E752D636F6C6F722D32392D6261636B67726F75';
wwv_flow_api.g_varchar2_table(2095) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F722D32392D7478742C0D0A2E752D636F6C6F722D32392D74657874207B0D0A2020636F6C6F723A20236266633864313B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(2096) := '752D636F6C6F722D32392D62642C0D0A2E752D636F6C6F722D32392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F722D3330207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(2097) := '3A20233862396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F722D33302D62672C0D0A2E752D636F6C6F722D33302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862';
wwv_flow_api.g_varchar2_table(2098) := '396461643B0D0A7D0D0A2E752D636F6C6F722D33302D7478742C0D0A2E752D636F6C6F722D33302D74657874207B0D0A2020636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F722D33302D62642C0D0A2E752D636F6C6F722D33302D62';
wwv_flow_api.g_varchar2_table(2099) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F722D3331207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A2020636F6C6F723A20236536653665363B';
wwv_flow_api.g_varchar2_table(2100) := '0D0A7D0D0A2E752D636F6C6F722D33312D62672C0D0A2E752D636F6C6F722D33312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F722D33312D7478742C0D0A2E';
wwv_flow_api.g_varchar2_table(2101) := '752D636F6C6F722D33312D74657874207B0D0A2020636F6C6F723A20233262386663353B0D0A7D0D0A2E752D636F6C6F722D33312D62642C0D0A2E752D636F6C6F722D33312D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023326238';
wwv_flow_api.g_varchar2_table(2102) := '6663353B0D0A7D0D0A2E752D636F6C6F722D3332207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A2020636F6C6F723A20236365653065333B0D0A7D0D0A2E752D636F6C6F722D33322D62672C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2103) := '722D33322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F722D33322D7478742C0D0A2E752D636F6C6F722D33322D74657874207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(2104) := '3131613462613B0D0A7D0D0A2E752D636F6C6F722D33322D62642C0D0A2E752D636F6C6F722D33322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233131613462613B0D0A7D0D0A2E752D636F6C6F722D3333207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(2105) := '6B67726F756E642D636F6C6F723A20233239616361393B0D0A2020636F6C6F723A20236438653265323B0D0A7D0D0A2E752D636F6C6F722D33332D62672C0D0A2E752D636F6C6F722D33332D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(2106) := '6E642D636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F722D33332D7478742C0D0A2E752D636F6C6F722D33332D74657874207B0D0A2020636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F722D33332D62642C0D0A';
wwv_flow_api.g_varchar2_table(2107) := '2E752D636F6C6F722D33332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233239616361393B0D0A7D0D0A2E752D636F6C6F722D3334207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A2020636F';
wwv_flow_api.g_varchar2_table(2108) := '6C6F723A20236438653164653B0D0A7D0D0A2E752D636F6C6F722D33342D62672C0D0A2E752D636F6C6F722D33342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(2109) := '6F722D33342D7478742C0D0A2E752D636F6C6F722D33342D74657874207B0D0A2020636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F722D33342D62642C0D0A2E752D636F6C6F722D33342D626F72646572207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(2110) := '722D636F6C6F723A20233336396537383B0D0A7D0D0A2E752D636F6C6F722D3335207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D3335';
wwv_flow_api.g_varchar2_table(2111) := '2D62672C0D0A2E752D636F6C6F722D33352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F722D33352D7478742C0D0A2E752D636F6C6F722D33352D7465787420';
wwv_flow_api.g_varchar2_table(2112) := '7B0D0A2020636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F722D33352D62642C0D0A2E752D636F6C6F722D33352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233734613835363B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2113) := '722D3336207B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A2020636F6C6F723A20233236323630373B0D0A7D0D0A2E752D636F6C6F722D33362D62672C0D0A2E752D636F6C6F722D33362D6261636B67726F756E6420';
wwv_flow_api.g_varchar2_table(2114) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F722D33362D7478742C0D0A2E752D636F6C6F722D33362D74657874207B0D0A2020636F6C6F723A20236337633834623B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2115) := '6F6C6F722D33362D62642C0D0A2E752D636F6C6F722D33362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236337633834623B0D0A7D0D0A2E752D636F6C6F722D3337207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(2116) := '6532623934333B0D0A2020636F6C6F723A20233365326530313B0D0A7D0D0A2E752D636F6C6F722D33372D62672C0D0A2E752D636F6C6F722D33372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236532623934';
wwv_flow_api.g_varchar2_table(2117) := '333B0D0A7D0D0A2E752D636F6C6F722D33372D7478742C0D0A2E752D636F6C6F722D33372D74657874207B0D0A2020636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F722D33372D62642C0D0A2E752D636F6C6F722D33372D626F7264';
wwv_flow_api.g_varchar2_table(2118) := '6572207B0D0A2020626F726465722D636F6C6F723A20236532623934333B0D0A7D0D0A2E752D636F6C6F722D3338207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A2020636F6C6F723A20236536653665363B0D0A7D';
wwv_flow_api.g_varchar2_table(2119) := '0D0A2E752D636F6C6F722D33382D62672C0D0A2E752D636F6C6F722D33382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F722D33382D7478742C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(2120) := '6F6C6F722D33382D74657874207B0D0A2020636F6C6F723A20236435373433383B0D0A7D0D0A2E752D636F6C6F722D33382D62642C0D0A2E752D636F6C6F722D33382D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023643537343338';
wwv_flow_api.g_varchar2_table(2121) := '3B0D0A7D0D0A2E752D636F6C6F722D3339207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D33392D62672C0D0A2E752D636F6C6F722D33';
wwv_flow_api.g_varchar2_table(2122) := '392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F722D33392D7478742C0D0A2E752D636F6C6F722D33392D74657874207B0D0A2020636F6C6F723A2023643235';
wwv_flow_api.g_varchar2_table(2123) := '3234633B0D0A7D0D0A2E752D636F6C6F722D33392D62642C0D0A2E752D636F6C6F722D33392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432353234633B0D0A7D0D0A2E752D636F6C6F722D3430207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(2124) := '6F756E642D636F6C6F723A20236431353437613B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D34302D62672C0D0A2E752D636F6C6F722D34302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(2125) := '636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F722D34302D7478742C0D0A2E752D636F6C6F722D34302D74657874207B0D0A2020636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F722D34302D62642C0D0A2E752D';
wwv_flow_api.g_varchar2_table(2126) := '636F6C6F722D34302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236431353437613B0D0A7D0D0A2E752D636F6C6F722D3431207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(2127) := '3A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D34312D62672C0D0A2E752D636F6C6F722D34312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(2128) := '34312D7478742C0D0A2E752D636F6C6F722D34312D74657874207B0D0A2020636F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F722D34312D62642C0D0A2E752D636F6C6F722D34312D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(2129) := '6F6C6F723A20236236346638643B0D0A7D0D0A2E752D636F6C6F722D3432207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A2020636F6C6F723A20236464643864663B0D0A7D0D0A2E752D636F6C6F722D34322D6267';
wwv_flow_api.g_varchar2_table(2130) := '2C0D0A2E752D636F6C6F722D34322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F722D34322D7478742C0D0A2E752D636F6C6F722D34322D74657874207B0D0A';
wwv_flow_api.g_varchar2_table(2131) := '2020636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F722D34322D62642C0D0A2E752D636F6C6F722D34322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233738343638633B0D0A7D0D0A2E752D636F6C6F722D34';
wwv_flow_api.g_varchar2_table(2132) := '33207B0D0A20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E752D636F6C6F722D34332D62672C0D0A2E752D636F6C6F722D34332D6261636B67726F756E64207B0D0A';
wwv_flow_api.g_varchar2_table(2133) := '20206261636B67726F756E642D636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F722D34332D7478742C0D0A2E752D636F6C6F722D34332D74657874207B0D0A2020636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2134) := '722D34332D62642C0D0A2E752D636F6C6F722D34332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233531356539633B0D0A7D0D0A2E752D636F6C6F722D3434207B0D0A20206261636B67726F756E642D636F6C6F723A2023396561';
wwv_flow_api.g_varchar2_table(2135) := '3762313B0D0A2020636F6C6F723A20233263333533643B0D0A7D0D0A2E752D636F6C6F722D34342D62672C0D0A2E752D636F6C6F722D34342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233965613762313B0D';
wwv_flow_api.g_varchar2_table(2136) := '0A7D0D0A2E752D636F6C6F722D34342D7478742C0D0A2E752D636F6C6F722D34342D74657874207B0D0A2020636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F722D34342D62642C0D0A2E752D636F6C6F722D34342D626F7264657220';
wwv_flow_api.g_varchar2_table(2137) := '7B0D0A2020626F726465722D636F6C6F723A20233965613762313B0D0A7D0D0A2E752D636F6C6F722D3435207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(2138) := '752D636F6C6F722D34352D62672C0D0A2E752D636F6C6F722D34352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633373838393B0D0A7D0D0A2E752D636F6C6F722D34352D7478742C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(2139) := '722D34352D74657874207B0D0A2020636F6C6F723A20233633373838393B0D0A7D0D0A2E752D636F6C6F722D34352D62642C0D0A2E752D636F6C6F722D34352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633373838393B0D0A';
wwv_flow_api.g_varchar2_table(2140) := '7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(87323604932789932)
,p_theme_id=>42
,p_file_name=>'43649599970382197.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77851172730651695)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77851348072651700)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77851612004651700)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77852077125651701)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77852965984651702)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77853133119651702)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77854088534651703)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77854517314651704)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77855160651651709)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77855693592651714)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77855909826651714)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77856862277651715)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77857653668651715)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77859202809651716)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77860463687651717)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77860847589651717)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77861558418651717)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77866129844651718)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77866308672651718)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77866681635651719)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77867656187651719)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77868245833651728)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77868454739651729)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77870022751651729)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77870734506651729)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77870961450651730)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77871334091651730)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77872267904651732)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77872688533651734)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77873049894651734)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77873197701651734)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77874073571651734)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77876103778651744)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77876880851651748)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77877912870651753)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77878582653651753)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77878881077651753)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77879236941651753)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77880875695651754)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77881823798651755)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77882777064651755)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77885639688651781)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77886839883651851)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77887049528651852)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77887825094651853)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77888033772651853)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77888823143651853)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77888989204651853)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77889790800651853)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77889984561651853)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77890874509651854)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77891042561651854)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77891206609651854)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77891405140651854)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77891606295651854)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77891839264651854)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77892056871651854)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77892724382651856)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77893380271651856)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77893963461651856)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77894149464651857)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77894288542651857)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77894548095651857)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77894865406651857)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77895109528651857)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77895299178651857)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77895482948651857)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(77895750229651857)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77847685699651657)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(77847315902651656)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77849118020651666)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(77848687793651664)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77850994400651691)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77851251795651699)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(77851172730651695)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77851423289651700)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(77851348072651700)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77851542693651700)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(77851348072651700)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77851685185651700)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(77851612004651700)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77851852301651700)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(77851172730651695)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77851912605651700)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(77851172730651695)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77852140278651701)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(77852077125651701)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77852196858651701)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(77851172730651695)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77852334325651702)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(77851612004651700)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77852405059651702)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(77852077125651701)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77852515093651702)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77850852557651677)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(77852077125651701)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77853047528651702)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77852773139651702)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(77852965984651702)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77853183399651702)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77852773139651702)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77853341940651702)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77852773139651702)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77853402253651702)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77852773139651702)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77854220423651703)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(77854088534651703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77854350812651704)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(77854088534651703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77854402631651704)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(77854088534651703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77854634078651704)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77854777456651704)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77854871255651707)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77854940586651707)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(77854088534651703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77855023923651707)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77855248165651709)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77855334147651713)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77855380523651713)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77855514614651714)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77855667155651714)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77855783611651714)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(77855693592651714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77855998889651714)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(77855909826651714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856165299651714)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(77855693592651714)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856209080651714)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856317141651714)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856392607651714)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856531393651714)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(77855909826651714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856608795651714)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856682478651715)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856931326651715)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(77856862277651715)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77856987196651715)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(77856862277651715)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77857081866651715)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77853822775651703)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77857556253651715)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77857191308651715)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77857722655651715)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(77857191308651715)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(77857653668651715)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77857829806651715)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(77857191308651715)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77857908069651715)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(77857191308651715)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(77857653668651715)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77858338330651716)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77858443812651716)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77858519370651716)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77858669831651716)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77858729559651716)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77858830662651716)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77858920116651716)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859007206651716)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859144803651716)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859321498651716)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(77859202809651716)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859456543651716)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(77859202809651716)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859514600651716)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(77855909826651714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859627301651716)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859730371651716)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859872255651716)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859882944651716)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77859989498651716)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(77855909826651714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77860150788651716)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77857980243651715)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77860371416651717)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77860202637651716)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77860546546651717)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77860202637651716)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(77860463687651717)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77860674378651717)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77860202637651716)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(77860463687651717)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77860773659651717)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77860202637651716)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(77860463687651717)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77860963461651717)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77860202637651716)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(77860847589651717)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77861056991651717)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77860202637651716)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(77860847589651717)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77861369255651717)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77861172917651717)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77861474499651717)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77861172917651717)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77861642759651717)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77861172917651717)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(77861558418651717)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77861732870651717)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77861172917651717)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(77861558418651717)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77861808488651717)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77861172917651717)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77861879622651717)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77861172917651717)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77862012581651717)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77861172917651717)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(77861558418651717)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77862242904651717)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77862138170651717)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77862373331651717)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77862138170651717)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77862905553651717)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863016612651717)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863121175651717)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863207993651717)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(77854517314651704)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863342814651717)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863457112651717)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863507132651717)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863664541651717)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863684880651717)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863815828651717)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863956218651717)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77863993143651718)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864129052651718)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864203494651718)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864355334651718)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864402383651718)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864534693651718)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864666137651718)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864766785651718)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(77855160651651709)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864867328651718)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(77855693592651714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77864917479651718)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(77855909826651714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77865027006651718)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(77855693592651714)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77865101697651718)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77865198263651718)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77865333169651718)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77865414100651718)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(77855909826651714)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77865514434651718)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77865622950651718)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77865751718651718)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(77862644975651717)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(77853133119651702)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77866273167651718)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77865802700651718)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(77866129844651718)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77866450506651719)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77865802700651718)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(77866308672651718)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77866568597651719)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77865802700651718)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77866673001651719)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77865802700651718)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(77866308672651718)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77866804836651719)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77865802700651718)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(77866681635651719)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77866910491651719)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77865802700651718)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(77866681635651719)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77867144765651719)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77867000817651719)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(77860463687651717)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77867235749651719)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77867000817651719)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77867279485651719)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(77867000817651719)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(77860463687651717)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77867680756651719)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(77867470324651719)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(77867656187651719)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77867863254651719)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77867470324651719)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(77867656187651719)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77867921144651719)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(77867470324651719)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77868347771651728)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(77868245833651728)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77868498310651729)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77868648916651729)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(77868245833651728)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77868728567651729)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77868855633651729)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(77868245833651728)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77868969902651729)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869066247651729)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869114003651729)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(77868245833651728)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869221755651729)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(77868245833651728)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869362222651729)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869457399651729)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869529478651729)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869629635651729)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869689575651729)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77868109123651728)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77869914429651729)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77870163839651729)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(77870022751651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77870231946651729)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77870330355651729)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(77870022751651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77870423841651729)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77870498346651729)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(77870022751651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77870659517651729)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77870829587651729)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(77870734506651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871007350651730)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(77870961450651730)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871101286651730)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(77870961450651730)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871223394651730)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(77870734506651729)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871458502651730)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(77871334091651730)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871565877651730)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(77871334091651730)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871588826651730)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(77870734506651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871768650651732)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871788990651732)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(77870022751651729)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77871922127651732)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77872042752651732)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77869783213651729)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77872356246651732)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77872139194651732)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(77872267904651732)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77872405898651732)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77872139194651732)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(77872267904651732)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77872808868651734)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(77872688533651734)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77872977757651734)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(77872688533651734)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77873083688651734)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(77873049894651734)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77873331092651734)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(77873197701651734)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77873399957651734)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(77873197701651734)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77873516567651734)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(77873197701651734)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77873592140651734)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(77873049894651734)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77873743858651734)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77873828532651734)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77872616307651732)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(77873197701651734)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77874141161651734)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77873955668651734)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77874228806651734)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77873955668651734)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77874332432651734)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77873955668651734)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77874436994651735)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77873955668651734)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77874576341651735)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77873955668651734)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77874594176651735)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(77873955668651734)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77874729521651735)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77873955668651734)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77874836656651735)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77873955668651734)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875057196651735)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(77874885510651735)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875079212651735)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77874885510651735)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875234106651735)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77874885510651735)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875309892651735)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(77874885510651735)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875440993651735)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(77874885510651735)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(77868454739651729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875526950651735)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(77874885510651735)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875581094651735)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(77874885510651735)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875690897651735)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(77874885510651735)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(77874073571651734)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77875902316651735)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(77875806128651735)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(77870734506651729)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77876222105651744)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77876321840651745)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77876424738651745)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77876510744651745)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77876662334651745)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77876775350651748)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77876782127651748)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77877025752651748)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(77876880851651748)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77877169292651748)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(77876880851651748)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77877196935651748)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77877319551651748)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(77876880851651748)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77877469192651748)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77877550249651751)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(77876880851651748)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77877624531651751)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77876057207651738)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(77876880851651748)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77877798673651753)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77878020028651753)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(77877912870651753)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77878084987651753)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77878193732651753)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(77877912870651753)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77878317352651753)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77878454981651753)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(77877912870651753)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77878534234651753)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77878710949651753)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(77878582653651753)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77878824987651753)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879051906651753)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(77878881077651753)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879103496651753)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(77878582653651753)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879347293651753)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(77879236941651753)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879429098651753)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(77879236941651753)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879493303651753)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(77878582653651753)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879604593651753)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879730544651753)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(77877912870651753)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879779384651753)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(77878881077651753)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77879913008651753)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77880016248651753)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77877693422651751)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77880265865651753)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77880084113651753)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77880297034651753)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77880084113651753)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77880466199651753)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77880084113651753)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77880574686651753)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77880084113651753)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77880907135651754)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77880775477651754)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(77880875695651754)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77881055608651754)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77880775477651754)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(77880875695651754)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77881128874651754)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77880775477651754)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(77880875695651754)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77881259594651754)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77880775477651754)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77881387090651755)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77881287466651754)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(77878582653651753)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77881552621651755)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77881287466651754)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77881586891651755)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77881287466651754)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77881721321651755)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77881287466651754)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77881924922651755)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77881287466651754)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(77881823798651755)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77882016742651755)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77881287466651754)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(77881823798651755)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77882276266651755)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77882329416651755)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77882403557651755)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77882538748651755)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77882599228651755)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77882804950651755)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(77882777064651755)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77882962265651755)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77883037141651755)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77883161138651755)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77883226334651755)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77883626059651756)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77883523610651756)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(77879236941651753)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77883751498651756)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77883523610651756)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(77876103778651744)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77883877506651756)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77883523610651756)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(77879236941651753)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77883911953651756)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77883523610651756)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(77882777064651755)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77884005999651756)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(77883523610651756)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(77878582653651753)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77884114454651756)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(77883523610651756)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(77878582653651753)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77884203600651756)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(77883523610651756)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(77882777064651755)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77884415853651757)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77884326349651757)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77884555871651757)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77884326349651757)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77884616055651757)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77884326349651757)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77884694489651757)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(77884326349651757)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77885682934651781)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(77885533181651781)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(77885639688651781)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77885780578651782)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(77885533181651781)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(77885639688651781)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77886917672651851)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(77886839883651851)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77887112888651852)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(77887049528651852)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77887269093651853)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(77886839883651851)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77887341321651853)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(77887049528651852)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77887397771651853)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(77886839883651851)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77887565793651853)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(77887049528651852)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77887584570651853)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(77886839883651851)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77887744139651853)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(77887049528651852)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77887954234651853)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(77887825094651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77888113933651853)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(77888033772651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77888211596651853)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(77887825094651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77888302577651853)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(77888033772651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77888464712651853)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(77887825094651853)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77888535552651853)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(77888033772651853)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77888626475651853)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(77887825094651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77888683961651853)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(77888033772651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77888950114651853)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(77888823143651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77889098554651853)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(77888989204651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77889247362651853)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(77888823143651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77889314626651853)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(77888989204651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77889412960651853)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(77888823143651853)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77889566200651853)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(77888989204651853)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77889608932651853)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(77888823143651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77889699467651853)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(77888989204651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77889942503651853)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(77889790800651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77890099906651853)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(77889984561651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77890184014651853)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(77889790800651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77890284792651853)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(77889984561651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77890383039651853)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(77889790800651853)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77890549343651854)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(77889984561651853)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77890641543651854)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(77889790800651853)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77890766335651854)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(77889984561651853)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77890975574651854)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(77890874509651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77891148323651854)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(77891042561651854)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77891362051651854)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(77891206609651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77891521238651854)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(77891405140651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77891748537651854)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(77891606295651854)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77891880772651854)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(77891839264651854)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77892167471651856)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(77892056871651854)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77892184001651856)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(77892056871651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77892327082651856)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(77891042561651854)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77892412861651856)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(77891206609651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77892511024651856)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(77891405140651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77892610640651856)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(77891606295651854)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77892852166651856)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(77892724382651856)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77892909138651856)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(77892724382651856)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77893063050651856)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(77892724382651856)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77893116595651856)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(77890874509651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77893225762651856)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(77892056871651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77893355517651856)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(77891839264651854)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77893494969651856)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(77893380271651856)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77893633878651856)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(77890874509651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77893712690651856)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(77891839264651854)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77893807359651856)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(77890874509651854)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77894001497651856)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(77893963461651856)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77894225267651857)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(77894149464651857)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77894400076651857)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(77894288542651857)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77894590354651857)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(77894548095651857)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77894777324651857)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(77894548095651857)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77894929479651857)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(77894865406651857)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77895026288651857)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(77894149464651857)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77895274835651857)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(77895109528651857)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77895439860651857)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(77895299178651857)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77895606846651857)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(77895482948651857)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77895822512651858)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(77895750229651857)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77895925201651858)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(77896005312651858)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(77895109528651857)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(77896447564651881)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(77896243556651862)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(77843982117651604)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(77883344515651755)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(77896146578651862)
,p_nav_bar_list_template_id=>wwv_flow_api.id(77880654744651753)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(77896243556651862)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>'MUST_NOT_BE_PUBLIC_USER'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'HAYDEN'
,p_last_upd_yyyymmddhh24miss=>'20171209145528'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77898015130651922)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77867000817651719)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(77897513787651916)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(77885962318651784)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80325093846039399)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77852638806651702)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81003177337306900)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(80325277928039400)
,p_name=>'P1_ITEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80325093846039399)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(77884901870651767)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(77896243556651862)
,p_name=>'Manage Sample Data'
,p_alias=>'SETTINGS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Sample Data'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Manage Sample Data'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(77849180090651666)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'HAYDEN'
,p_last_upd_yyyymmddhh24miss=>'20180506211756'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2051480410387446928)
,p_plug_name=>'Manage Sample Data'
,p_region_css_classes=>'t-Alert--accessibleHeading'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77850852557651677)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>This application ships with sample data.  You can remove and recreate sample data using this page.  If the sample data is old recreating the data makes the dates more current.  Removing or adding sample data will not affect any decisions you creat'
||'ed.</p>'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2051480738509446929)
,p_plug_name=>'Button Region'
,p_parent_plug_id=>wwv_flow_api.id(2051480410387446928)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(77857191308651715)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5070454159593134)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2051480738509446929)
,p_button_name=>'remove_sample_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(77885396774651781)
,p_button_image_alt=>'Remove Sample Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null from demo_product_info where product_id <= 10',
'union all',
'select null from demo_customers where customer_id <= 10',
'union all',
'select null from demo_states',
'union all',
'select null from demo_constraint_lookup where constraint_name in (''DEMO_CUST_CREDIT_LIMIT_MAX'',''DEMO_CUSTOMERS_UK'',''DEMO_PRODUCT_INFO_UK'',''DEMO_ORDER_ITEMS_UK'');'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5070874773593135)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2051480738509446929)
,p_button_name=>'load_sample_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(77885396774651781)
,p_button_image_alt=>'Load Sample Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null from demo_product_info where product_id <= 10',
'union all',
'select null from demo_customers where customer_id <= 10',
'union all',
'select null from demo_states',
'union all',
'select null from demo_constraint_lookup where constraint_name in (''DEMO_CUST_CREDIT_LIMIT_MAX'',''DEMO_CUSTOMERS_UK'',''DEMO_PRODUCT_INFO_UK'',''DEMO_ORDER_ITEMS_UK'');'))
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5071239818593135)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2051480738509446929)
,p_button_name=>'reset_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(77885396774651781)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5071617756593135)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(2051480738509446929)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(77885396774651781)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:RP,SETTINGS::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5073203480593147)
,p_branch_name=>'Go To Administration'
,p_branch_action=>'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 06-JAN-2012 15:08 by MIKE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5072076121593145)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sample_data_pkg.delete_data();',
'sample_data_pkg.insert_data();'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5071239818593135)
,p_process_success_message=>'Sample data reset.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5072362585593145)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove sample data'
,p_process_sql_clob=>'sample_data_pkg.delete_data();'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5070454159593134)
,p_process_success_message=>'Sample Data Removed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5072794316593146)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Sample Data'
,p_process_sql_clob=>'sample_data_pkg.insert_data();'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5070874773593135)
,p_process_success_message=>'Sample Data Loaded.'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(77896243556651862)
,p_name=>'Administration'
,p_page_mode=>'NORMAL'
,p_step_title=>'Administration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Administration'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'HAYDEN'
,p_last_upd_yyyymmddhh24miss=>'20180506211717'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(992519130402437322)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77862644975651717)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(993209004958921130)
,p_plug_name=>'Reports'
,p_region_name=>'adminReports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77862644975651717)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(77882116559651755)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5077914763621783)
,p_name=>'P3_STATE_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(992519130402437322)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'999G990'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'from demo_states'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5078356328621784)
,p_name=>'P3_FEEDBACK_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(992519130402437322)
,p_use_cache_before_default=>'NO'
,p_source=>'case when :ENABLE_FEEDBACK = ''YES'' then ''Enabled'' else ''Disabled'' end'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5079027350621786)
,p_name=>'P3_USER_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(993209004958921130)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(distinct userid)',
'from apex_activity_log l',
'where flow_id = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5079402105621786)
,p_name=>'P3_PAGE_VIEWS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(993209004958921130)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'from apex_activity_log l',
'where flow_id = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(77896243556651862)
,p_name=>'SQLMAP TEST'
,p_page_mode=>'NORMAL'
,p_step_title=>'SQLMAP TEST'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'SQLMAP TEST'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HAYDEN'
,p_last_upd_yyyymmddhh24miss=>'20171211084936'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81003229809306901)
,p_plug_name=>'DEMO CUSTOMERS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77862138170651717)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from DEMO_CUSTOMERS',
'where 1=1',
'   &P7_WHERE_CLAUSE_LS.'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(81003465570306903)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'HAYDEN'
,p_internal_uid=>37329787350899333
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81003496159306904)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Customer id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81003653785306905)
,p_db_column_name=>'CUST_FIRST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Cust first name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81003743524306906)
,p_db_column_name=>'CUST_LAST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Cust last name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81003856985306907)
,p_db_column_name=>'CUST_STREET_ADDRESS1'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cust street address1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81003907070306908)
,p_db_column_name=>'CUST_STREET_ADDRESS2'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cust street address2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004031303306909)
,p_db_column_name=>'CUST_CITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Cust city'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004139755306910)
,p_db_column_name=>'CUST_STATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Cust state'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004208694306911)
,p_db_column_name=>'CUST_POSTAL_CODE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cust postal code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004295160306912)
,p_db_column_name=>'CUST_EMAIL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cust email'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004450097306913)
,p_db_column_name=>'PHONE_NUMBER1'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Phone number1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004518321306914)
,p_db_column_name=>'PHONE_NUMBER2'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Phone number2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004659165306915)
,p_db_column_name=>'URL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Url'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004763042306916)
,p_db_column_name=>'CREDIT_LIMIT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Credit limit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(81004807874306917)
,p_db_column_name=>'TAGS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(87326189084800985)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'436526'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>':CUSTOMER_ID:CUST_FIRST_NAME:CUST_LAST_NAME:CUST_STREET_ADDRESS1:CUST_STREET_ADDRESS2:CUST_CITY:CUST_STATE:CUST_POSTAL_CODE:CUST_EMAIL:PHONE_NUMBER1:PHONE_NUMBER2:URL:CREDIT_LIMIT:TAGS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(223798863384047169)
,p_plug_name=>'List Search clause'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(77862644975651717)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P7_WHERE_CLAUSE_LS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(86668052598846151)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(223798863384047169)
,p_button_name=>'clear_list_search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77885396774651781)
,p_button_image_alt=>'Clear Page Filter'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(86668424832846155)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(223798863384047169)
,p_button_name=>'search_omissions'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77885396774651781)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'See List Search Omissions'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:10005:&SESSION.::&DEBUG.:RP::'
,p_button_condition=>'P10005_LS_NOT_FOUND_LIST'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86667309283846141)
,p_name=>'P7_WHERE_CLAUSE_LS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81003229809306901)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86668824203846155)
,p_name=>'P7_FILTER_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(223798863384047169)
,p_source=>'This report is currently being filtered by your List Search criteria. You can clear the filter for this page by clicking the ''Clear Page Filter'' button or for all pages by going to the List Search page.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(77884850973651759)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(86669273615846155)
,p_name=>'P7_OMISSION_TEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(223798863384047169)
,p_source=>'Search Criteria that was not found can viewed by clicking the ''See List Search Omissions'' button.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_display_when=>'P10005_LS_NOT_FOUND_LIST'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(77884850973651759)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(86670022707846157)
,p_name=>'Click - IR Action Button'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#READ_ID_LOG_ID_actions_button'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(86670548652846161)
,p_event_id=>wwv_flow_api.id(86670022707846157)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_TODAYS_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'to_char(sysdate,''YYYYMMDD_HH24MI'')'
,p_attribute_07=>'P0_TODAYS_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(86669643509846156)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear list search for page'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'  l_region_id number;',
'',
'begin',
'  ',
'    -- get the region_id',
'    select distinct region_id ',
'      into l_region_id ',
'      from apex_application_page_ir_col',
'     where application_id = :APP_ID',
'       and page_id        = 201;  ',
'',
'    -- reset the IR',
'    apex_ir.reset_report(p_page_id   => 201',
'                        ,p_region_id => l_region_id',
'                        ,p_report_id => NULL',
'                        ); ',
'',
'   ',
'  -- reset the where clause',
'  :P7_WHERE_CLAUSE_LS := NULL;',
'',
'end;'))
,p_process_error_message=>'Unable to clear List Search filters for this this page'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(86668052598846151)
,p_process_success_message=>'List Search filters cleared for this page'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(77896243556651862)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Hayden testing ssp - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(77845984101651656)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'HAYDEN'
,p_last_upd_yyyymmddhh24miss=>'20171209145932'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77896759018651899)
,p_plug_name=>'SQLMAP DEMO'
,p_icon_css_classes=>'fa-hipster'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(77862414395651717)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(77897048927651912)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(77896759018651899)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(77885396774651781)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77896810782651908)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(77896759018651899)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(77884850973651759)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(77896941743651912)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(77896759018651899)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(77884850973651759)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77897188060651916)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77897101887651914)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77897474739651916)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(77897300150651916)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
