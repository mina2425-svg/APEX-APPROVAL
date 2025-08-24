prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.12'
,p_default_workspace_id=>1601193944415179
,p_default_application_id=>111
,p_default_id_offset=>25702612785514776
,p_default_owner=>'ADMIN'
);
end;
/
 
prompt APPLICATION 111 - Approval Cycle Demo
--
-- Application Export:
--   Application:     111
--   Name:            Approval Cycle Demo
--   Date and Time:   11:30 Sunday August 24, 2025
--   Exported By:     MINA.ISKANDAR
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      5
--       Items:                   11
--       Processes:                7
--       Regions:                  9
--       Buttons:                  7
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:              3
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                10
--           Region:              21
--           Label:                7
--           List:                13
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              12
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         22.2.12
--   Instance ID:     706426639245045
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ADMIN')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Approval Cycle Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'APPROVAL-CYCLE-DEMO111')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'6AC8D051A803111E2A848370B43955B154094A44D1F46CDC9955136153707784'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(50467935154510108)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Approval Cycle Demo'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Approval Cycle Demo'
,p_last_updated_by=>'MINA.ISKANDAR'
,p_last_upd_yyyymmddhh24miss=>'20250821145151'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>4
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(111)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(50468798612510110)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(50628645081510160)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(50669028349510179)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(50631470986510161)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(50468798612510110)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(50679613329510197)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(50681113030510199)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(50685999534510205)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'New Request'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22358000000000050)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Approval Inbox'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-inbox'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(50669028349510179)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(50705184380510232)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(50705669908510232)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(50705184380510232)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(50706090747510232)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(50705184380510232)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(50703267341510230)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(50703641237510230)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(50704069593510230)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'New Request'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(50468293225510108)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(50468511008510108)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(50685590259510204)
,p_short_name=>'Requests'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(50693882751510219)
,p_short_name=>'New Request'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22358000000000051)
,p_short_name=>'Approval Inbox'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Approval Cycle Demo'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'MINA.ISKANDAR'
,p_last_upd_yyyymmddhh24miss=>'20250819134712'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50680585527510197)
,p_plug_name=>'Approval Cycle Demo'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(50560634466510138)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50704729942510230)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(50589285862510147)
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(50703267341510230)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(50631878771510161)
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Requests'
,p_alias=>'REQUESTS'
,p_step_title=>'Requests'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_last_updated_by=>'MINA.ISKANDAR'
,p_last_upd_yyyymmddhh24miss=>'20250821135000'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50681870530510199)
,p_plug_name=>'Requests'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50527859915510130)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT REQUEST_ID,',
'       REQUESTOR,',
'       DESCRIPTION,',
'       STATUS,',
'       CREATED_ON',
'FROM APP_REQUESTS',
'where REQUESTOR_id = 2427'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Requests'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(50681969048510199)
,p_name=>'Requests'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MINA.ISKANDAR'
,p_internal_uid=>24979356262995423
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50682355543510201)
,p_db_column_name=>'REQUEST_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Request Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50682712796510202)
,p_db_column_name=>'REQUESTOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Requestor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50683134646510202)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50683579252510202)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(50683962199510202)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(50706562748514088)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'250040'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REQUEST_ID:REQUESTOR:DESCRIPTION:STATUS:CREATED_ON'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50685160677510204)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50541330501510133)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(50468293225510108)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(50645457160510166)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50684323964510202)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50681870530510199)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(50643991509510166)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'New Request'
,p_alias=>'NEW-REQUEST'
,p_step_title=>'New Request'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'MINA.ISKANDAR'
,p_last_upd_yyyymmddhh24miss=>'20250821144916'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50686633824510215)
,p_plug_name=>'App Request'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(50579458136510144)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APP_REQUESTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(50693481303510219)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50541330501510133)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(50468293225510108)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(50645457160510166)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50691591184510218)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(50643841633510166)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P3_REQUEST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50690580666510218)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(50643841633510166)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50692002052510219)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(50643841633510166)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P3_REQUEST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(50691210659510218)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(50643841633510166)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_REQUEST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22357341332998842)
,p_name=>'P3_REQUEST_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_prompt=>'Request Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(50641404666510165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22357456065998843)
,p_name=>'P3_FIRST_APPROVER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_prompt=>'First Approver '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select u.username ,u.user_id',
'from ',
'user_roles ur ,',
'roles r ,',
'users u  ',
'where r.role_id = ur.role_id',
'and u.user_id = ur.user_id',
'and r.department_id =(select uu.department_id from ',
'users uu , user_roles urr',
'where',
'uu.user_id = urr.user_id',
'and uu.user_id = 2427) --Req req.department_id',
'and r.role_name like ''%Manager%'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(50641404666510165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22357662997998845)
,p_name=>'P3_REQUESTOR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_item_source_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select U.USER_ID from ',
'users u',
'where',
' u.user_id = 2427'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'REQUESTOR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50687030662510215)
,p_name=>'P3_REQUEST_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_item_source_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_source=>'REQUEST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50687455630510216)
,p_name=>'P3_REQUESTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_item_source_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_prompt=>'Requestor'
,p_source=>'REQUESTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(50641404666510165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50687904819510216)
,p_name=>'P3_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_item_source_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(50641404666510165)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50688244047510216)
,p_name=>'P3_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_item_source_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(50688665181510216)
,p_name=>'P3_CREATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_item_source_plug_id=>wwv_flow_imp.id(50686633824510215)
,p_source=>'CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50692779781510219)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(50686633824510215)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form New Request'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(50690580666510218)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22357590385998844)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Request'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'PKG_APPROVAL_PROCESS.SUBMIT_REQUEST(:P3_REQUEST_TYPE,:P3_DESCRIPTION, :P3_REQUESTOR_ID, :P3_FIRST_APPROVER_ID,:P3_REQUEST_ID);',
'',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error submitting request.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(50692002052510219)
,p_process_success_message=>'Request submitted successfully.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(50692344288510219)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(50686633824510215)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form New Request'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Approval Inbox'
,p_alias=>'APPROVAL-INBOX'
,p_step_title=>'Approval Inbox'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JULES'
,p_last_upd_yyyymmddhh24miss=>'20250824053000'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22358000000000052)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50541330501510133)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(50468293225510108)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(50645457160510166)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22358000000000053)
,p_plug_name=>'Approval Inbox'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(50527859915510130) -- Classic Report
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT req.request_id,',
'       req.description,',
'       req.status,',
'       a.approval_id,',
'       ''Approve'' as "APPROVE",',
'       ''Reject'' as "REJECT",',
'       ''Request Info'' as "REQUEST_INFO"',
'FROM   app_requests req',
'       join approvals a',
'         on req.request_id = a.request_id',
'WHERE  a.approver_id = (select user_id from users where lower(username) = lower(:APP_USER))',
'AND    a.status = ''Pending'''
))
,p_plug_source_type=>'NATIVE_CLASSIC_REPORT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22358000000000053)
,p_template_id=>wwv_flow_imp.id(50622963056510156)
,p_show_query_info=>'N'
,p_show_nulls_as=>'-'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22358000000000054)
,p_query_column_id=>1
,p_column_alias=>'REQUEST_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22358000000000055)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22358000000000056)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22358000000000057)
,p_query_column_id=>4
,p_column_alias=>'APPROVAL_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22358000000000058)
,p_query_column_id=>5
,p_column_alias=>'APPROVE'
,p_column_display_sequence=>5
,p_column_heading=>'Approve'
,p_column_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.::P5_REQUEST_ID,P5_APPROVAL_ID,P5_ACTION:#REQUEST_ID#,#APPROVAL_ID#,Approve'
,p_column_linktext=>'#APPROVE#'
,p_column_link_attributes=>'class="t-Button t-Button--success t-Button--small"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22358000000000059)
,p_query_column_id=>6
,p_column_alias=>'REJECT'
,p_column_display_sequence=>6
,p_column_heading=>'Reject'
,p_column_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.::P5_REQUEST_ID,P5_APPROVAL_ID,P5_ACTION:#REQUEST_ID#,#APPROVAL_ID#,Reject'
,p_column_linktext=>'#REJECT#'
,p_column_link_attributes=>'class="t-Button t-Button--danger t-Button--small"'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22358000000000060)
,p_query_column_id=>7
,p_column_alias=>'REQUEST_INFO'
,p_column_display_sequence=>7
,p_column_heading=>'Request Info'
,p_column_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.::P5_REQUEST_ID,P5_APPROVAL_ID,P5_ACTION:#REQUEST_ID#,#APPROVAL_ID#,RequestInfo'
,p_column_linktext=>'#REQUEST_INFO#'
,p_column_link_attributes=>'class="t-Button t-Button--warning t-Button--small"'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22358000000000065)
,p_name=>'Refresh Inbox on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22358000000000053)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22358000000000066)
,p_event_id=>wwv_flow_imp.id(22358000000000065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22358000000000053)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Approval Action'
,p_alias=>'APPROVAL-ACTION'
,p_step_title=>'Approval Action'
,p_autocomplete_on_off=>'OFF'
,p_page_mode=>'MODAL'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JULES'
,p_last_upd_yyyymmddhh24miss=>'20250824015800'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22358000000000001)
,p_plug_name=>'Approval Action'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(50579458136510144)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22358000000000002)
,p_name=>'P5_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22358000000000001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22358000000000003)
,p_name=>'P5_APPROVAL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22358000000000001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22358000000000004)
,p_name=>'P5_ACTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22358000000000001)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22358000000000005)
,p_name=>'P5_COMMENTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22358000000000001)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(50641404666510165)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22358000000000006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22358000000000001)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(50643841633510166)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'CREATE'
,p_button_condition=>':P5_ACTION = ''Approve'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22358000000000007)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22358000000000001)
,p_button_name=>'REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(50643841633510166)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reject'
,p_button_position=>'CREATE'
,p_button_condition=>':P5_ACTION = ''Reject'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22358000000000008)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22358000000000001)
,p_button_name=>'REQUEST_INFO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(50643841633510166)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Request Information'
,p_button_position=>'CREATE'
,p_button_condition=>':P5_ACTION = ''RequestInfo'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22358000000000009)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22358000000000001)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(50643841633510166)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
    p_id=>wwv_flow_imp.id(22358000000000010)
   ,p_name=>'Cancel Dialog'
   ,p_event_sequence=>10
   ,p_triggering_element_type=>'BUTTON'
   ,p_triggering_button_id=>wwv_flow_imp.id(22358000000000009)
   ,p_bind_type=>'bind'
   ,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
    p_id=>wwv_flow_imp.id(22358000000000011)
   ,p_event_id=>wwv_flow_imp.id(22358000000000010)
   ,p_event_result=>'TRUE'
   ,p_action_sequence=>10
   ,p_execute_on_page_init=>'N'
   ,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22358000000000012)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve Request'
,p_process_sql_clob=>'PKG_APPROVAL_PROCESS.PROCESS_APPROVAL(p_approval_id => :P5_APPROVAL_ID, p_approver_id => :APP_USER_ID, p_action => ''Approve'', p_comments => :P5_COMMENTS);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22358000000000006)
,p_process_success_message=>'Request Approved.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22358000000000013)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reject Request'
,p_process_sql_clob=>'PKG_APPROVAL_PROCESS.PROCESS_APPROVAL(p_approval_id => :P5_APPROVAL_ID, p_approver_id => :APP_USER_ID, p_action => ''Reject'', p_comments => :P5_COMMENTS);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22358000000000007)
,p_process_success_message=>'Request Rejected.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22358000000000014)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Request More Information'
,p_process_sql_clob=>'PKG_APPROVAL_PROCESS.REQUEST_MORE_INFORMATION(p_request_id => :P5_REQUEST_ID, p_approver_id => :APP_USER_ID, p_comments => :P5_COMMENTS);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22358000000000008)
,p_process_success_message=>'Information Requested.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22358000000000015)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/deployment/definition
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
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
