MG_IniFileVersion=1.31
MG_8Dir=0
MG_ActiveAsTarget=0
MG_Interval=20
MG_Threshold=30
MG_LongThresholdX=800
MG_LongThresholdY=600
MG_LongThreshold=700
MG_TimeoutThreshold=12
MG_Timeout=400
MG_DGInterval=100
MG_ORangeDefault=3
MG_ORangeA=3
MG_ORangeB=3
MG_EdgeInterval=20
MG_EdgeIndiv=0
MG_CornerX=1
MG_CornerY=1
MG_DisableDefMB=0
MG_DisableDefX1B=0
MG_DisableDefX2B=0
MG_UseNavi=1
MG_UseExNavi=3
MG_NaviInterval=10
MG_NaviPersist=0
MG_ExNaviTransBG=1
MG_ExNaviFG=000000
MG_ExNaviBG=FFFFFF
MG_ExNaviTranspcy=255
MG_ExNaviSize=24
MG_ExNaviSpacing=2
MG_ExNaviPadding=4
MG_ExNaviMargin=8
MG_AdNaviFG=FFFFFF
MG_AdNaviNI=7F7F7F
MG_AdNaviBG=000000
MG_AdNaviTranspcy=220
MG_AdNaviSize=12
MG_AdNaviFont=Meiryo
MG_AdNaviPosition=0
MG_AdNaviPaddingL=6
MG_AdNaviPaddingR=6
MG_AdNaviPaddingT=3
MG_AdNaviPaddingB=4
MG_AdNaviRound=1
MG_AdNaviMargin=14
MG_AdNaviSpaceX=2
MG_AdNaviSpaceY=2
MG_AdNaviOnClick=0
MG_ShowTrail=1
MG_DrawTrailWnd=1
MG_TrailColor=0000FF
MG_TrailTranspcy=255
MG_TrailWidth=3
MG_TrailStartMove=3
MG_TrailInterval=10
MG_ShowLogs=0
MG_LogPosition=4
MG_LogPosX=0
MG_LogPosY=0
MG_LogMax=20
MG_LogSizeW=400
MG_LogInterval=500
MG_LogFG=FFFFFF
MG_LogBG=000000
MG_LogTranspcy=100
MG_LogFontSize=10
MG_LogFont=MS UI Gothic
MG_HotkeyEnable=
MG_HotkeyNavi=
MG_ScriptEditor=
MG_TraySubmenu=0
MG_AdjustDlg=0
MG_DlgHeightLimit=800
MG_EditCommand=
MG_FoldTarget=0
MG_MaxLength=6
MG_Triggers=RB_X1B_X2B
MG_SubTriggers=WU_WD


Goto,MG_RB_End

MG_RB_Enable:
	Hotkey,*RButton,MG_RB_DownHotkey,On
	Hotkey,*RButton up,MG_RB_UpHotkey,On
	MG_RB_Enabled := 1
return

MG_RB_Disable:
	Hotkey,*RButton,MG_RB_DownHotkey,Off
	Hotkey,*RButton up,MG_RB_UpHotkey,Off
	MG_RB_Enabled := 0
return

MG_RB_DownHotkey:
	MG_TriggerDown("RB")
return

MG_RB_UpHotkey:
	MG_TriggerUp("RB")
return

MG_RB_Down:
	MG_SendButton("RB", "RButton", "Down")
return

MG_RB_Up:
	MG_SendButton("RB", "RButton", "Up")
return

MG_RB_Check:
	MG_CheckButton("RB", "RButton")
return

MG_RB_End:


Goto,MG_X1B_End

MG_X1B_Enable:
	Hotkey,*XButton1,MG_X1B_DownHotkey,On
	Hotkey,*XButton1 up,MG_X1B_UpHotkey,On
	MG_X1B_Enabled := 1
return

MG_X1B_Disable:
	Hotkey,*XButton1,MG_X1B_DownHotkey,Off
	Hotkey,*XButton1 up,MG_X1B_UpHotkey,Off
	MG_X1B_Enabled := 0
return

MG_X1B_DownHotkey:
	MG_TriggerDown("X1B")
return

MG_X1B_UpHotkey:
	MG_TriggerUp("X1B")
return

MG_X1B_Down:
	if (!MG_DisableDefX1B) {
		MG_SendButton("X1B", "XButton1", "Down")
	}
return

MG_X1B_Up:
	if (!MG_DisableDefX1B) {
		MG_SendButton("X1B", "XButton1", "Up")
	}
return

MG_X1B_Check:
	MG_CheckButton("X1B", "XButton1")
return

MG_X1B_End:


Goto,MG_X2B_End

MG_X2B_Enable:
	Hotkey,*XButton2,MG_X2B_DownHotkey,On
	Hotkey,*XButton2 up,MG_X2B_UpHotkey,On
	MG_X2B_Enabled := 1
return

MG_X2B_Disable:
	Hotkey,*XButton2,MG_X2B_DownHotkey,Off
	Hotkey,*XButton2 up,MG_X2B_UpHotkey,Off
	MG_X2B_Enabled := 0
return

MG_X2B_DownHotkey:
	MG_TriggerDown("X2B")
return

MG_X2B_UpHotkey:
	MG_TriggerUp("X2B")
return

MG_X2B_Down:
	if (!MG_DisableDefX2B) {
		MG_SendButton("X2B", "XButton2", "Down")
	}
return

MG_X2B_Up:
	if (!MG_DisableDefX2B) {
		MG_SendButton("X2B", "XButton2", "Up")
	}
return

MG_X2B_Check:
	MG_CheckButton("X2B", "XButton2")
return

MG_X2B_End:


Goto,MG_WU_End

MG_WU_Enable:
	Hotkey,*WheelUp,MG_WU_Hotkey,On
	MG_WU_Enabled := 1
return

MG_WU_Disable:
	Hotkey,*WheelUp,MG_WU_Hotkey,Off
	MG_WU_Enabled := 0
return

MG_WU_Hotkey:
	MG_ButtonPress("WU")
return

MG_WU_Press:
	MG_SendButton("WU", "WheelUp")
return

MG_WU_End:


Goto,MG_WD_End

MG_WD_Enable:
	Hotkey,*WheelDown,MG_WD_Hotkey,On
	MG_WD_Enabled := 1
return

MG_WD_Disable:
	Hotkey,*WheelDown,MG_WD_Hotkey,Off
	MG_WD_Enabled := 0
return

MG_WD_Hotkey:
	MG_ButtonPress("WD")
return

MG_WD_Press:
	MG_SendButton("WD", "WheelDown")
return

MG_WD_End:


Goto,MG_Config_End


MG_IsDisable(){
	global
	return ((MG_WClass="Dialog"))
}

MG_IsTarget1(){
	global
	return ((MG_WClass="TextEditorWindow") || (MG_IsTarget2()) || (MG_WClass="WinMergeWindowClassW") || (MG_WClass="PX_WINDOW_CLASS") || (MG_WClass="Basilica Tracer") || (MG_IsTarget4()))
}

MG_IsTarget2(){
	global
	return ((MG_StrComp(MG_Title, "- Microsoft Visual Studio", 4)) || (MG_Exe="devenv.exe"))
}

MG_IsTarget3(){
	global
	return ((MG_WClass="PX_WINDOW_CLASS"))
}

MG_IsTarget4(){
	global
	return ((MG_Exe="Code.exe"))
}

MG_IsTarget5(){
	global
	return ((MG_Exe="vivaldi.exe") || (MG_Exe="firefox.exe"))
}

MG_Gesture_RB_D_:
	if(MG_IsTarget1()){
		;キー操作を発生させる
		Send, {Enter}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_D_:
	if(MG_IsTarget1()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_LD_:
	if(MG_IsTarget1()){
		;キー操作を発生させる
		Send, {Backspace}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_LD_:
	if(MG_IsTarget1()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_UD_:
	if(MG_IsTarget2()){
		;キー操作を発生させる
		Send, {F5}
	}else if(MG_IsTarget4()){
		;キー操作を発生させる
		Send, {F5}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_UD_:
	if(MG_IsTarget2()){
		MG_ActionStr := "キー操作を発生させる"
	}else if(MG_IsTarget4()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_U_:
	if(MG_IsTarget2()){
		;キー操作を発生させる
		Send, {F6}
			;キー操作を発生させる
		Send, ^{F7}
	}else if(MG_IsTarget1()){
		;キー操作を発生させる
		Send, ^s
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_U_:
	if(MG_IsTarget2()){
		MG_ActionStr := "キー操作を発生させる"
	}else if(MG_IsTarget1()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_:
	if(MG_IsTarget5()){
		MG_Abort()
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_:
	if(MG_IsTarget5()){
		MG_ActionStr := "MG_Abort()"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_R_:
	if(MG_IsTarget2()){
		;キー操作を発生させる
		Send, ^k
		;キー操作を発生させる
		Send, ^c
	}else if(MG_IsTarget3()){
		;キー操作を発生させる
		Send, ^/
	}else if(MG_IsTarget4()){
		;キー操作を発生させる
		Send, ^/
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_R_:
	if(MG_IsTarget2()){
		MG_ActionStr := "キー操作を発生させる"
	}else if(MG_IsTarget3()){
		MG_ActionStr := "キー操作を発生させる"
	}else if(MG_IsTarget4()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_L_:
	if(MG_IsTarget2()){
		;キー操作を発生させる
		Send, ^k
		;キー操作を発生させる
		Send, ^u
	}else if(MG_IsTarget3()){
		;キー操作を発生させる
		Send, ^/
	}else if(MG_IsTarget4()){
		;キー操作を発生させる
		Send, ^/
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_L_:
	if(MG_IsTarget2()){
		MG_ActionStr := "キー操作を発生させる"
	}else if(MG_IsTarget3()){
		MG_ActionStr := "キー操作を発生させる"
	}else if(MG_IsTarget4()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_RL_:
	if(MG_IsTarget1()){
		;キー操作を発生させる
		Send, ^k
		;キー操作を発生させる
		Send, ^f
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_RL_:
	if(MG_IsTarget1()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_RD_:
	if(MG_IsTarget1()){
		;キー操作を発生させる
		Send, {Delete}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_RD_:
	if(MG_IsTarget1()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_WD_:
	if(MG_IsTarget1()){
		;キー操作を発生させる
		Send, ^{F3}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_WD_:
	if(MG_IsTarget1()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_RB_WU_:
	if(MG_IsTarget1()){
		;キー操作を発生させる
		Send, +^{F3}
	}else{
		MG_Cancel()
	}
return

MG_GetAction_RB_WU_:
	if(MG_IsTarget1()){
		MG_ActionStr := "キー操作を発生させる"
	}else{
		MG_ActionStr := ""
	}
return

MG_Gesture_X1B__:
	if(MG_Hold()){
	if(MG_Hold()<500){
	;短クリック時の動作 
	Send, ^c
	}else{
	;長押し時の動作 
	}
	}
return

MG_GetAction_X1B__:
	MG_ActionStr := "if(MG_Hold()){"
return

MG_Gesture_X1B_:
	if(!MG_Timer(-500)){
	;指定時間経過後に実行される動作
	Send, ^x
	MG_Abort()
	}
	
return

MG_GetAction_X1B_:
	MG_ActionStr := "if(!MG_Timer(-500)){"
return

MG_Gesture_X2B__:
	if(MG_Hold()){
	if(MG_Hold()<500){
	;短クリック時の動作 
	Send, ^v
	}else{
	;長押し時の動作 
	}
	}
return

MG_GetAction_X2B__:
	MG_ActionStr := "if(MG_Hold()){"
return

MG_Gesture_X2B_:
	if(!MG_Timer(-500)){
	;指定時間経過後に実行される動作
	Send, !c
	MG_Abort()
	}
return

MG_GetAction_X2B_:
	MG_ActionStr := "if(!MG_Timer(-500)){"
return


MG_Config_end: