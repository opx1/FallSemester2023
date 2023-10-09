//Maya ASCII 2023 scene
//Name: Walking Animation.ma
//Last modified: Wed, Oct 04, 2023 12:35:32 PM
//Codeset: 1252
file -rdi 1 -ns "Ultimate_Walker_Rig" -rfn "Ultimate_Walker_RigRN" -op "v=0;"
		 -typ "mayaAscii" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/LearningProject2023/Assets/Maya//scenes/Ultimate_Walker_Rig.ma";
file -r -ns "Ultimate_Walker_Rig" -dr 1 -rfn "Ultimate_Walker_RigRN" -op "v=0;" 
		-typ "mayaAscii" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/LearningProject2023/Assets/Maya//scenes/Ultimate_Walker_Rig.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "5208159E-4262-7B1A-AAB5-8683149D8427";
createNode transform -s -n "persp";
	rename -uid "3C4D983A-4EC9-FF75-13F3-C8BE8AA43B9D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.48118261343732716 1.3441839284349348 -10.179509469519873 ;
	setAttr ".r" -type "double3" 3.8616472641667325 533.79999999992333 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "80175105-4180-4C78-501F-F6829FA9AB1B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 11.265708034747858;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FEEC0340-4495-6F55-C759-1798BD961A9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DC07F902-452A-8DEB-2EEF-6ABB0DC0C4D0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "AF7FF602-4CCE-F501-4121-EEA2974C2E43";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "362DB573-4AAF-51B9-09D4-BB9FD1DF71CA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "7F1FDCEE-4746-7A80-CB73-60A228CD823C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BECE1F41-401F-DF93-4ED1-6CA18FBF9C17";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4B70D348-4572-E23E-0362-70BD4EB1E9E9";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8104F2BA-4350-BB63-CC84-6F9EF8E91D06";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "462088E7-46F2-4564-ECCB-219B93131D6F";
createNode displayLayerManager -n "layerManager";
	rename -uid "EA6DEC62-4880-6628-2C86-A4A51400325D";
createNode displayLayer -n "defaultLayer";
	rename -uid "DB76D544-411C-72D7-9DE3-82BD9477B1BA";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BF032562-49BC-E691-9D54-148344685A47";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EAFFE9D8-497B-3B1E-3649-4EB01ECF686D";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "8E90B686-4907-A9A2-1DC9-2A9368A824B6";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "E7CE0344-4D6A-D606-25E0-E1B3065C0BC4";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "14A58C25-48BC-6E44-FF05-D08C91EDA6BC";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "B8F77F72-4786-70F0-554C-BA9B92B82CFB";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "Ultimate_Walker_RigRN";
	rename -uid "E02B2E89-4B3C-E858-AB89-3F879B7AB1A9";
	setAttr -s 45 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Ultimate_Walker_RigRN"
		"Ultimate_Walker_RigRN" 0
		"Ultimate_Walker_RigRN" 49
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translate" 
		" -type \"double3\" 0 -0.044369169537656794 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateX" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateY" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateZ" 
		" -k 0 -cb 1"
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.pvControl" 
		"Ultimate_Walker_RigRN.placeHolderList[1]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.legTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[2]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.heelTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[3]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.ballTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[4]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.toeTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[5]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[6]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[7]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[8]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[9]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[10]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[11]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.footRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[12]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.footBreak" 
		"Ultimate_Walker_RigRN.placeHolderList[13]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.toeRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[14]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_foot_ctrl.ikFkBlend" 
		"Ultimate_Walker_RigRN.placeHolderList[15]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[16]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[17]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[18]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.lfLegIkCtrl" 
		"Ultimate_Walker_RigRN.placeHolderList[19]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.pvControl" 
		"Ultimate_Walker_RigRN.placeHolderList[20]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.legTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[21]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.heelTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[22]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.ballTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[23]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.toeTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[24]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[25]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[26]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[27]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[28]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[29]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[30]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.footRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[31]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.footBreak" 
		"Ultimate_Walker_RigRN.placeHolderList[32]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.toeRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[33]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_foot_ctrl.ikFkBlend" 
		"Ultimate_Walker_RigRN.placeHolderList[34]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[35]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[36]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[37]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.rtLegIkCtrl" 
		"Ultimate_Walker_RigRN.placeHolderList[38]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[39]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[40]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[41]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[42]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[43]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[44]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[45]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "49ABF328-4352-22D0-21DE-438867A63D10";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 903\n            -height 689\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 903\\n    -height 689\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 903\\n    -height 689\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8415CB2E-418F-67B2-00C8-E3A56BC5FD79";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 126 -ast 0 -aet 126 ";
	setAttr ".st" 6;
createNode animCurveTL -n "CTRL_Main_translateX";
	rename -uid "9A32CF97-4E1D-0915-42FF-118F28124247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 0 13 0 16 0 19 0 20 0 22 0
		 25 0 26 0 30 0.029434311571564033 34 0.14327862346313758 38 0 41 -0.087770607922336485
		 45 -0.17012998398435708 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0 59 0 62 0 65 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0 96 0
		 101 0 102 0 104 0 108 0 108.00000017006802 0 112 0;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 16 16 16 18 
		1 1 2 18 18 2 18 18 1 9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 18 18 18 18 3 18 18 18 9 9 9 
		9 9 9;
	setAttr -s 45 ".kot[0:44]"  1 16 16 16 16 16 16 18 
		16 1 2 18 18 2 18 18 1 9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 18 18 18 18 5 18 18 18 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[8:44]"  1 1 1 0.9187239003559089 1 0.7583082413503125 
		0.86379037884844589 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[8:44]"  0 0 0 0.39490048735703798 0 -0.65189616588855337 
		-0.50385134852340963 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[0:44]"  1 1 1 1 1 1 1 1 1 1 0.98476075101387384 
		0.9187239003559089 1 0.81839870524781611 0.86379037884844578 1 0.98476075101387384 
		1 1 1 1 1 1 1 1 1 1 1 1 0.98476075101387384 0.98476075101387384 1 1 1 1 0 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 45 ".koy[0:44]"  0 0 0 0 0 0 0 0 0 0 0.17391452861273846 
		0.39490048735703798 0 -0.57465081505963111 -0.50385134852340963 0 0.17391452861273846 
		0 0 0 0 0 0 0 0 0 0 0 0 0.17391452861273846 0.17391452861273846 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "CTRL_Main_translateY";
	rename -uid "FDAA3EBC-409D-7222-010D-3D8000364126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 -0.14627075708844384 4 -0.53753373728742515
		 7 -0.037916734841007216 10 0.040809148822294805 13 -0.146 16 -0.54466394460840262
		 19 -0.069748310102168615 20 -0.0034904532450562437 22 0.041 25 -0.14627075708844384
		 26 -0.14627075708844384 30 -0.1145353048136715 34 -0.18360703701085868 38 -0.14627075708844384
		 41 -0.12794310057703448 45 -0.2130183276921489 49 -0.14627075708844384 50 -0.14627075708844384
		 50.000000170068027 -0.14627075708844384 53 0.041 55 -0.0034904532450562437 56 -0.069748310102168615
		 59 -0.54466394460840262 62 -0.146 65 0.040809148822294805 68 -0.037916734841007216
		 71 -0.53753373728742515 75 -0.14627075708844384 75.00000017006802 -0.14627075708844384
		 76 -0.14627075708844384 78 -0.078149907280622877 82 -0.92891312382661528 84 0.034007642965695251
		 86 0.32583322709377871 88 0.32583322709377871 90 0.32583322709377871 92 0.1546512724660869
		 94 -0.22152851962314207 96 -1.0237571147801421 101 -0.14627075708844384 102 -0.14627075708844384
		 104 -0.4539500132851142 108 -0.93127785177143041 108.00000017006802 -0.93127785177143041
		 112 -1.7410971528719101;
	setAttr -s 45 ".kit[0:44]"  1 16 1 16 16 16 16 1 
		1 3 2 18 1 1 1 2 1 9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 18 18 18 18 16 16 18 18 9 9 9 
		9 9 9;
	setAttr -s 45 ".kot[0:44]"  1 16 1 16 16 16 16 1 
		16 3 2 18 1 1 1 2 1 9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 18 18 18 18 16 16 18 18 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[0:44]"  0.69053928557928379 1 0.82820379800491917 
		1 0.39270198442130805 1 0.29433064384305568 0.60906201868741372 1 1 1 1 0.96383277231242415 
		0.97922460503294029 0.99978064481817908 0.890672691315058 1 1 0.55517002330249665 
		0.8248707143328412 0.74848704980961533 0.29433064384305602 0.95649814725548044 0.39270198442130821 
		0.91789026212401992 0.39678516355311666 0.93740356687121029 0.391897147373238 1 1 
		1 1 0.13167246599449903 1 1 1 0.29128687302822032 0.14003999774468026 1 0.27400122369103291 
		0.37639075074908074 0.30345166304774801 0.32964891749625924 0.20158233087064742 0.20158232264824291;
	setAttr -s 45 ".kiy[0:44]"  -0.72329488804473951 0 0.5604270416122219 
		0 -0.91966578246206732 0 0.95570365286260806 0.7931225992193216 0 0 0 0 -0.26650776164409734 
		0.20277863027962831 0.020944265252001229 -0.45464508899315237 0 0 0.83173688461334061 
		0.56532141710360506 -0.66314940719818083 -0.95570365286260783 -0.29173840044950056 
		0.91966578246206743 0.39683430635203132 -0.91791150661930709 -0.34824496093573581 
		0.92000903576036597 0 0 0 0 0.99129327733972228 0 0 0 -0.95663574969862042 -0.99014584735364619 
		0 0.96172934311885094 -0.92646100983826807 -0.95284683354333299 -0.94410359134659827 
		-0.97947157379923833 -0.97947157549146857;
	setAttr -s 45 ".kox[0:44]"  0.71835198093156849 1 0.82820381277809296 
		1 0.39270198442130805 1 0.29433064384305568 0.60906201550588213 1 1 0.98235002616137135 
		1 0.94686485675939724 0.99163109464196419 0.99978064482893714 0.92832122028955477 
		0.98235002616137135 1 0.55517002330249665 0.8248707143328412 0.74848704980961533 
		0.29433064384305602 0.95649814725548044 0.39270198442130821 0.91789026212401992 0.39678516355311666 
		0.93740356687121029 0.391897147373238 1 0.98235002616137135 0.98235002616137135 1 
		0.13167246599449903 1 1 1 0.29128687302822032 0.14003999774468026 1 0.27400122369103291 
		0.37639075074908074 0.30345166304774801 0.32964891749625924 0.20158233087064742 0.20158232264824291;
	setAttr -s 45 ".koy[0:44]"  -0.69567983404127187 0 0.56042701978030085 
		0 -0.91966578246206732 0 0.95570365286260806 0.79312260166251247 0 0 0.18705193423419328 
		0 0.32163168847923879 0.12910372627921998 0.020944264738460734 0.37177911716516854 
		0.18705193423419328 0 0.83173688461334061 0.56532141710360506 -0.66314940719818083 
		-0.95570365286260783 -0.29173840044950056 0.91966578246206743 0.39683430635203132 
		-0.91791150661930709 -0.34824496093573581 0.92000903576036597 0 0.18705193423419328 
		0.18705193423419328 0 0.99129327733972228 0 0 0 -0.95663574969862042 -0.99014584735364608 
		0 0.96172934311885094 -0.92646100983826807 -0.95284683354333299 -0.94410359134659827 
		-0.97947157379923833 -0.97947157549146857;
createNode animCurveTL -n "CTRL_Main_translateZ";
	rename -uid "0D9FA348-4C94-5580-6F8B-5DB30033F222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 0 13 0 16 0 19 0 20 0 22 0
		 25 0 26 0 30 0 34 0 38 0 41 0 45 0 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0
		 59 0 62 0 65 0 68 0 71 0 75 0 75.00000017006802 0 76 0 78 -0.23733298211134291 82 -0.76364432170143171
		 84 -0.66243672180754365 86 -0.55039525364749387 88 -0.29296008032122078 90 -0.077227220358145443
		 92 -0.097197477638347296 94 -0.084931129294413266 96 0.12581419598379595 101 0 102 0
		 104 -0.18662817232086981 108 -0.79666922356798231 108.00000017006802 -0.79666922356798231
		 112 -1.7653107841217854;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 16 16 16 18 
		1 1 18 18 18 1 18 18 1 9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 18 18 18 18 3 18 18 18 9 9 9 
		9 9 9;
	setAttr -s 45 ".kot[0:44]"  1 16 16 16 16 16 16 18 
		16 1 18 18 18 1 18 18 1 9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 18 18 18 18 5 18 18 18 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[8:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 0.61579507535176614 0.41118964744868214 0.33222834191072903 1 1 0.91477853946573984 
		1 0.89326050053221673 0.5564902840503303 0.29941046235308427 0.26354691453419782 
		0.16957047610270548 0.16957046910038284;
	setAttr -s 45 ".kiy[8:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0.7879063555858099 0.91154981971970606 0.94319898686928605 0 0 0.40395572001511232 
		0 -0.44953940671417597 -0.83085411701307865 -0.95412440228384909 -0.9646465797583611 
		-0.98551806357585436 -0.98551806478068993;
	setAttr -s 45 ".kox[0:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.61579507535176614 0.41118964744868214 0.33222834191072903 
		0 1 0.91477853946573995 1 0.89326050053221673 0.5564902840503303 0.29941046235308427 
		0.26354691453419782 0.16957047610270548 0.16957046910038284;
	setAttr -s 45 ".koy[0:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.7879063555858099 0.91154981971970617 0.94319898686928605 
		0 0 0.40395572001511232 0 -0.44953940671417597 -0.83085411701307865 -0.95412440228384909 
		-0.9646465797583611 -0.98551806357585436 -0.98551806478068993;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateX";
	rename -uid "74495186-4124-DE4E-67D7-D49B535CBDC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 5.6424753588643008e-17 4 1.7851400968523797e-16
		 7 4.7731109124358642e-16 10 1.2352933901050463e-15 11 0 13 1.0205558869883875e-16
		 16 1.3516594797748607e-15 19 0 20 3.0402296273937448e-16 22 1.1726599991375837e-15
		 25 5.6424753588643008e-17 26 5.6424753588643008e-17 49 5.6424753588643008e-17 50 5.6424753588643008e-17
		 50.000000170068027 0 53 0 55 0 56 0 59 0 62 0 64 0 65 0 68 0 71 0 75 5.6424753588643008e-17
		 75.00000017006802 0 76 5.6424753588643008e-17 78 0 80 0 82 0 84 0 86 8.8525017607167248e-16
		 88 2.6938992699601736e-15 90 2.7297781778977783e-15 92 2.8613991374309491e-15 94 2.889830399337938e-15
		 96 3.0915037004522946e-15 98 2.1341782136188085e-15 101 5.6424753588643008e-17 102 2.9995560765685964e-17
		 104 -4.5516418728475784e-17 108 -1.773608613288483e-17 108.00000017006802 0 110 0
		 112 0;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateY";
	rename -uid "0CF367B5-458A-1FBA-B3A3-DC9EB46C4C25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0.12550309765852752 10 0.05043939822136817
		 11 0.22193373172987335 13 -0.023790065585586467 16 -0.0049604111330354417 19 -0.01263020006439286
		 20 -0.015984130655141822 22 -0.014519427748437258 25 0 26 0 49 0 50 0 50.000000170068027 0
		 53 -0.014519427748437258 55 -0.015984130655141822 56 -0.01263020006439286 59 -0.0049604111330354417
		 62 -0.023790065585586467 64 0.22193373172987335 65 0.05043939822136817 68 0.12550309765852752
		 71 0 75 0 75.00000017006802 0 76 0 78 0 80 0 82 0 84 0.19888388431715098 86 1.4407781628421172
		 88 1.1205167100377991 90 0.73183036542847324 92 0.32063512360938473 94 0.044300570744352563
		 96 0.0056326264910413482 98 0.10817578835522201 101 0 102 0 104 0 108 0 108.00000017006802 0
		 110 -0.022641289370800177 112 0.31085831688306453;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 1 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 1 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[7:44]"  0.98825005055235837 1 1 1 1 1 1 0.99332146401293819 
		0.99706965784178836 0.99988580576371489 0.99781974797479167 0.99900514578648603 0.67633659771890364 
		0.85982239047000064 0.86556270499233257 0.98024795386588959 0.9185703759296292 1 
		1 1 1 1 1 0.13832565929605761 1 0.22885122024017199 0.20398319104836332 0.23559038238684965 
		0.58343096428873342 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[7:44]"  -0.1528457967471174 0 0 0 0 0 0 -0.11537967382166221 
		-0.076499002681466297 0.015112095561054797 0.065998110211757763 -0.044595052327830391 
		0.7365927006059847 0.51059324011041707 -0.50080056282551844 -0.19777246760289174 
		-0.39525746604523421 0 0 0 0 0 0 0.99038679917510564 0 -0.97346141114816898 -0.97897439076296922 
		-0.97185244339190613 -0.81216273609980327 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[7:44]"  0.98825005291032486 1 1 1 1 1 1 0.99332146401293819 
		0.99706965784178836 0.99988580576371489 0.99781974797479167 0.99900514578648603 0.67633659771890364 
		0.85982239047000064 0.86556270499233257 0.98024795386588959 0.9185703759296292 1 
		1 1 1 1 1 0.13832565929605761 1 0.22885122024017199 0.20398319104836332 0.23559038238684965 
		0.58343096428873342 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[7:44]"  -0.1528457815012903 0 0 0 0 0 0 -0.11537967382166221 
		-0.076499002681466297 0.015112095561054797 0.065998110211757763 -0.044595052327830391 
		0.7365927006059847 0.51059324011041707 -0.50080056282551844 -0.19777246760289174 
		-0.39525746604523421 0 0 0 0 0 0 0.99038679917510564 0 -0.97346141114816898 -0.97897439076296922 
		-0.97185244339190613 -0.81216273609980327 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "5E07B2FD-47F4-56A2-2C02-5CB91D143E27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 -1.2458855007637153 4 -1.6960443725011491
		 7 -1.3299885622746475 10 -0.41633976356874314 11 0.34048359884729096 13 1.0416162895599839
		 16 0.58733312944585936 19 -0.32129488103723047 20 -0.48686122383611419 22 -0.71880886485169238
		 25 -1.2458855007637153 26 0 49 0 50 -1.2458855007637153 50.000000170068027 -1.2458855007637153
		 53 -0.71880886485169238 55 -0.48686122383611419 56 -0.32129488103723047 59 0.58733312944585936
		 62 1.0416162895599839 64 0.34048359884729096 65 -0.41633976356874314 68 -1.3299885622746475
		 71 -1.6960443725011491 75 -1.2458855007637153 75.00000017006802 -1.2458855007637153
		 76 0 78 0 80 0 82 -0.049037924810139577 84 -1.1552432697852373 86 1.3315690933008115
		 88 1.4770004785810475 90 1.6385847149992994 92 1.2313528193070322 94 0.85939583983701806
		 96 0.2676516435862154 98 0.085043264374917826 101 0 102 -0.11902650294917234 104 -0.45910222566108772
		 108 -0.83399073013535585 108.00000017006802 -0.83399073013535585 110 -1.541146603638484
		 112 -2.2483025673400903;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 0.033424734416377049 0.23075664644254631 
		0.26468593376942007 0.29997299827447321 0.15332056403988312 0.18042069717084852 0.64496866405686237 
		0.085423079645872993 0.099279276843708783 0.19173313334317998 0.9608512683770325 
		0.34720657239678659 0.033424728738249906 1 1 1 0.49287316026567934 1 0.18761107621877865 
		0.47709416998772014 1 0.20916625091461577 0.17041459112628887 0.21041495332886898 
		0.61423418906149763 1 0.26270717975311603 0.33007108688871067 1 1 0.11703312096623887 
		1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 -0.99944123745680746 0.97301149537021903 
		0.96433467036325637 0.95394769264683632 0.98817650480189623 0.98358953432434659 -0.76420901747146786 
		-0.99634476837278307 -0.99505960886239886 -0.98144709769727601 0.27706468569315701 
		0.93778867346778882 0.99944123764670345 0 0 0 -0.87010117106559637 0 0.98224339350286882 
		0.87885217924502435 0 -0.97788009463242664 -0.98537245097032211 -0.97761216615568469 
		-0.78912379319594994 0 -0.96487560737442413 -0.9439560782155626 0 0 -0.99312801219022195 
		0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 0.033424734416377049 0.23075664644254631 
		0.26468593376942007 0.29997299827447321 0.15332056403988312 0.18042069717084852 0.64496866405686237 
		0.085423079645872993 0.099279276843708783 0.19173313334317998 0.9608512683770325 
		0.34720657239678659 0.033424728738249906 1 1 1 0.49287316026567929 1 0.18761107621877868 
		0.4770941699877202 1 0.2091662509146158 0.17041459112628887 0.21041495332886895 0.61423418906149763 
		1 0.26270717975311603 0.33007108688871062 1 1 0.11703312096623888 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 -0.99944123745680746 0.97301149537021903 
		0.96433467036325637 0.95394769264683632 0.98817650480189623 0.98358953432434659 -0.76420901747146786 
		-0.99634476837278307 -0.99505960886239886 -0.98144709769727601 0.27706468569315701 
		0.93778867346778882 0.99944123764670345 0 0 0 -0.87010117106559626 0 0.98224339350286882 
		0.87885217924502435 0 -0.97788009463242687 -0.985372450970322 -0.97761216615568458 
		-0.78912379319595005 0 -0.96487560737442413 -0.94395607821556249 0 0 -0.99312801219022206 
		0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateX";
	rename -uid "B0465070-4D66-B9B8-620F-A99111FC6326";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 6.6145664288714978e-17 25 6.6145664288714978e-17
		 26 6.6145664288714978e-17 49 6.6145664288714978e-17 50 6.6145664288714978e-17 50.000000170068027 0
		 75 6.6145664288714978e-17 75.00000017006802 0 76 6.6145664288714978e-17 78 0 82 0
		 84 0 86 2.7711714605209341e-16 88 2.7711714605209341e-16 90 2.7711714605209341e-16
		 96 2.1159192535469878e-17 101 6.6145664288714978e-17 102 6.6145664288714978e-17 108 0
		 112 0;
	setAttr -s 20 ".kit[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kot[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateY";
	rename -uid "F38ED0BB-48D9-D771-6414-809DD7BD64CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.17029168503303804 25 0.17029168503303804
		 26 0.17029168503303804 49 0.17029168503303804 50 0.17029168503303804 50.000000170068027 0.17029168503303804
		 75 0.17029168503303804 75.00000017006802 0.17029168503303804 76 0.17029168503303804
		 78 0.17029168503303804 82 0.17029168503303804 84 0.17029168503303804 86 1.4951533000595005
		 88 1.4951533000595005 90 1.4951533000595005 96 0.067071984631255743 101 0.17029168503303804
		 102 0.17029168503303804 108 0.17029168503303804 112 -1.1780248409987455;
	setAttr -s 20 ".kit[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kot[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateZ";
	rename -uid "95D3F3C3-4260-326F-55BA-C3BDE5CE4E2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.2978935890428307 25 0.2978935890428307
		 26 0.2978935890428307 49 0.2978935890428307 50 0.2978935890428307 50.000000170068027 0.2978935890428307
		 75 0.2978935890428307 75.00000017006802 0.2978935890428307 76 0.2978935890428307
		 78 0.2978935890428307 82 0.2978935890428307 84 0.2978935890428307 86 1.0459182647410139
		 88 1.0459182647410139 90 1.0459182647410139 96 0.39318612066103342 101 0.2978935890428307
		 102 0.2978935890428307 108 0.2978935890428307 112 0.2978935890428307;
	setAttr -s 20 ".kit[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kot[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.58895235497258758 
		1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.80816775707290078 
		0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.58895235497258758 
		1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.80816775707290089 
		0 0 0 0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateX";
	rename -uid "67B3B005-49F8-F59A-6609-D5B5D987963A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 6.5708485256627125e-16 4 4.7473300351914259e-16
		 7 0 8 1.1160034822429995e-16 10 4.3045848600801482e-16 12 1.0755998771191626e-16
		 13 -5.4544866917181286e-18 16 2.744208459263198e-16 19 0 22 -5.1981323167255361e-16
		 25 6.5708485256627125e-16 26 6.5708485256627125e-16 49 6.5708485256627125e-16 50 6.5708485256627125e-16
		 50.000000170068027 0 53 0 56 0 59 0 62 0 63 0 65 0 67 0 68 0 71 0 75 6.5708485256627125e-16
		 75.00000017006802 0 76 6.5708485256627125e-16 78 0 82 0 84 0 86 -3.1487731345533382e-18
		 88 1.186912755688452e-15 90 1.4424121645477028e-15 92 1.5534344670102184e-15 94 1.4871422725637188e-15
		 96 1.2477182316969006e-15 101 6.5708485256627125e-16 102 6.5708485256627125e-16 108 5.8884169522016951e-16
		 108.00000017006802 -0.16878819002951181 109.99999982993198 -0.03682256925620294 110 0.18312018439996239
		 112 0.53502860371572136;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.23043131412833612 0.14420247978417786 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.97308859281623905 0.98954820237525254 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.23043131412833615 0.14420247978417786 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.97308859281623905 0.98954820237525265 0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateY";
	rename -uid "A1420325-4103-F91C-03B1-1CAFB6E0A722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 -0.0188450643895497 4 0.021 7 0.020580801311636025
		 8 0.020580801311636025 10 0.020580801311636025 12 0.020580801311636025 13 0.020580801311636025
		 16 0.0061029387171671612 19 0.069110930994005448 22 0.23762208707684151 25 -0.0188450643895497
		 26 0 49 0 50 -0.0188450643895497 50.000000170068027 -0.0188450643895497 53 0.23762208707684151
		 56 0.069110930994005448 59 0.0061029387171671612 62 0.020580801311636025 63 0.020580801311636025
		 65 0.020580801311636025 67 0.020580801311636025 68 0.020580801311636025 71 0.021
		 75 -0.0188450643895497 75.00000017006802 -0.0188450643895497 76 0 78 0.3272633625681316
		 82 0 84 0 86 -0.2764295552350533 88 0.85479423056685322 90 0.72615584994454263 92 0.2021752937994194
		 94 0.095703885166373348 96 0.016622853092629286 101 0 102 0 108 0 108.00000017006802 0
		 109.99999982993198 -0.21561924352536496 110 -0.13259687709911044 112 0.0909471274014928;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 3 18 3 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 3 18 3 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 0.91114195921978669 0.43812369738940982 
		0.94332061897300357 0.73370556209564586 0.98167492059619232 0.99624826627606522 1 
		1 1 0.99999683691928176 0.99098726616964994 0.97259210275368824 0.91114193290508572 
		1 1 1 1 1 1 0.24743976984485938 0.2555806007806361 0.66823223874198467 0.97252636837512241 
		1 1 1 1 1 0.26230965698488751 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 -0.41209262326463536 0.898914693275081 
		0.3318828254375169 -0.67946754753256045 -0.19056324480985168 0.086541273054736287 
		0 0 0 0.0025151841744281223 -0.13395610583173659 -0.23251795986796217 0.41209268144676414 
		0 0 0 0 0 0 -0.96890327706078216 -0.96678775152802232 -0.74395273714522703 -0.23279274648299453 
		0 0 0 0 0 0.96498375315466878 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 0.91114195921978669 0.43812369738940982 
		0.94332061897300357 0.73370556209564586 0.98167492059619232 0.99624826627606522 1 
		1 1 0.99999683691928176 0.99098726616964994 0.97259210275368824 0.91114193290508572 
		1 1 1 1 1 1 0.24743976984485938 0.2555806007806361 0.66823223874198479 0.97252636837512241 
		1 1 1 1 1 0.26230965698488756 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 -0.41209262326463536 0.898914693275081 
		0.3318828254375169 -0.67946754753256045 -0.19056324480985168 0.086541273054736287 
		0 0 0 0.0025151841744281223 -0.13395610583173659 -0.23251795986796217 0.41209268144676414 
		0 0 0 0 0 0 -0.96890327706078216 -0.96678775152802232 -0.74395273714522703 -0.23279274648299456 
		0 0 0 0 0 0.96498375315466878 0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "8A37B5FC-45CD-FE5F-E701-28BD60BD0C36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0.9592470971682574 4 0.63800737774928762
		 7 -0.20577066276350942 8 -0.4196193008771924 10 -0.76715798557934622 12 -1.070143892110875
		 13 -1.1964642442945084 16 -1.4360178006057192 19 -1.3749010178111745 22 -0.21593169427393816
		 25 0.9592470971682574 26 0 49 0 50 0.9592470971682574 50.000000170068027 0.9592470971682574
		 53 -0.21593169427393816 56 -1.3749010178111745 59 -1.4360178006057192 62 -1.1964642442945084
		 63 -1.070143892110875 65 -0.76715798557934622 67 -0.4196193008771924 68 -0.20577066276350942
		 71 0.63800737774928762 75 0.9592470971682574 75.00000017006802 0.9592470971682574
		 76 0 78 0.31852892136560096 82 0.54234172878813536 84 0.25188038659213408 86 -1.2623004269233147
		 88 0.097260230831932581 90 1.2479272733638358 92 1.2479272733638358 94 0.9493737711570065
		 96 -0.12889625007433247 101 0 102 0 108 -0.30733985799449026 108.00000017006802 -0.30733985799449026
		 109.99999982993198 -1.020140478101168 110 -0.96730886419333095 112 -1.6272779545719152;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 0.043395931979468359 0.1057701403918057 
		0.10649635494107203 0.20073296282059011 0.81394077312220892 0.41454561038158638 0.27955821840199346 
		0.24818739937066805 0.21734012616783829 0.15566456377917962 0.24285866472924422 0.46053041276722351 
		0.043395924613107324 1 1 1 0.095198962675173152 1 0.06624917665302596 1 1 0.12017429868729183 
		1 1 1 1 1 1 1 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0.99905795281736953 -0.99439060605050855 
		-0.99431309273501234 -0.97964599608086378 0.58094786155835076 0.91002853631815184 
		0.96012874268188808 0.96871203914972825 0.97609593255855143 0.98780997341767995 0.97006168307274598 
		0.88764392574750994 -0.99905795313734114 0 0 0 -0.99545826507471979 0 0.99780311013385614 
		0 0 -0.99275280807208865 0 0 0 0 0 0 0 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 0.043395931979468359 0.1057701403918057 
		0.10649635494107203 0.20073296282059011 0.81394077312220892 0.41454561038158638 0.27955821840199346 
		0.24818739937066805 0.21734012616783829 0.15566456377917962 0.24285866472924422 0.46053041276722351 
		0.043395924613107324 1 1 1 0.095198962675173152 1 0.06624917665302596 1 1 0.12017429868729183 
		1 1 1 1 1 1 1 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0.99905795281736953 -0.99439060605050855 
		-0.99431309273501234 -0.97964599608086378 0.58094786155835076 0.91002853631815184 
		0.96012874268188808 0.96871203914972825 0.97609593255855143 0.98780997341767995 0.97006168307274598 
		0.88764392574750994 -0.99905795313734114 0 0 0 -0.99545826507471979 0 0.99780311013385614 
		0 0 -0.99275280807208877 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateX";
	rename -uid "2B2039B2-4F58-9A03-F987-DE88BE477BC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 6.6145664288714978e-17 25 6.6145664288714978e-17
		 26 6.6145664288714978e-17 49 6.6145664288714978e-17 50 6.6145664288714978e-17 50.000000170068027 0
		 75 6.6145664288714978e-17 75.00000017006802 0 76 6.6145664288714978e-17 78 0 82 0
		 84 0 86 0 88 0 90 0 96 0 101 6.6145664288714978e-17 102 6.6145664288714978e-17 108 0
		 112 0;
	setAttr -s 20 ".kit[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kot[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateY";
	rename -uid "4CCBB808-40F9-A089-4A60-6E8990981CDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.17029168503303804 25 0.17029168503303804
		 26 0.17029168503303804 49 0.17029168503303804 50 0.17029168503303804 50.000000170068027 0.17029168503303804
		 75 0.17029168503303804 75.00000017006802 0.17029168503303804 76 0.17029168503303804
		 78 0.17029168503303804 82 0.17029168503303804 84 0.17029168503303804 86 0.17029168503303804
		 88 0.17029168503303804 90 0.17029168503303804 96 0.17029168503303804 101 0.17029168503303804
		 102 0.17029168503303804 108 0.17029168503303804 112 -1.2635965892726015;
	setAttr -s 20 ".kit[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kot[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateZ";
	rename -uid "945DD1D7-4716-36BA-5D6D-6BBADAC11630";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.2978935890428307 25 0.2978935890428307
		 26 0.2978935890428307 49 0.2978935890428307 50 0.2978935890428307 50.000000170068027 0.2978935890428307
		 75 0.2978935890428307 75.00000017006802 0.2978935890428307 76 0.2978935890428307
		 78 0.2978935890428307 82 0.2978935890428307 84 0.2978935890428307 86 0.2978935890428307
		 88 0.2978935890428307 90 0.2978935890428307 96 0.2978935890428307 101 0.2978935890428307
		 102 0.2978935890428307 108 0.2978935890428307 112 0.2978935890428307;
	setAttr -s 20 ".kit[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kot[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_knee_pv_ctrl_rtLegIkCtrl";
	rename -uid "CC2F1CB2-4C26-7F01-AD07-3E8C39988C22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 25 0 26 0 49 0 50 0 50.000000170068027 0
		 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 96 0 101 0 102 0 108 0
		 112 0;
	setAttr -s 20 ".kit[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kot[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_foot_ctrl_ikFkBlend";
	rename -uid "EA187F07-4021-DAA9-21DA-EB8BB5792963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 13 1 25 1 26 1 49 1 50 1 50.000000170068027 1
		 62 1 75 1 75.00000017006802 1 76 1 78 1 82 1 84 1 86 1 88 1 90 1 92 1 96 1 101 1
		 102 1 108 1 112 1;
	setAttr -s 23 ".kit[0:22]"  16 16 1 18 1 9 9 9 
		9 9 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kot[0:22]"  16 16 1 18 1 9 9 9 
		9 9 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "FBB9A6C8-4445-1565-3DB2-3A83350B5BCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 0 11 0 13 0 16 0 19 0 20 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0 59 0 62 0 64 0 65 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 80 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0
		 96 0 98 0 101 0 102 0 104 0 108 0 108.00000017006802 0 110 11.13366042304607 112 22.267322266202282;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.39413401397997277 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0.9190529794435327 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.39413401397997277 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0.9190529794435327 0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "D1FC6FDF-47D0-16FD-24F9-E088F3431137";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 0 11 0 13 0 16 0 19 0 20 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0 59 0 62 0 64 0 65 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 80 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0
		 96 0 98 0 101 0 102 0 104 0 108 0 108.00000017006802 0 110 0 112 0;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "8A7668A9-4072-4F5B-D663-12819E8CAD49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 0 11 0 13 0 16 0 19 0 20 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0 59 0 62 0 64 0 65 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 80 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0
		 96 0 98 0 101 0 102 0 104 0 108 0 108.00000017006802 -14.735791432067082 110 -34.321269940386728
		 112 -43.125400207414756;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.13778935296745967 0.31881347426038831 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.99046155614885367 -0.94781747643205061 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 0.13778935296745964 0.31881347426038831 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.99046155614885367 -0.94781747643205061 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "BF0E24A2-4AAE-8CA4-5535-50ACEBDF5A87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 4 1 7 1 10 1 11 1 13 1 16 1 19 1 20 1
		 22 1 25 1 26 1 49 1 50 1 50.000000170068027 1 53 1 55 1 56 1 59 1 62 1 64 1 65 1
		 68 1 71 1 75 1 75.00000017006802 1 76 1 78 1 80 1 82 1 84 1 86 1 88 1 90 1 92 1 94 1
		 96 1 98 1 101 1 102 1 104 1 108 1 108.00000017006802 1 110 1 112 1;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 9 16 16 16 
		9 16 1 9 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 9 9 9 9 9 9 9 9 9 1 9 9 9 
		9 9 9;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 5 16 16 16 
		5 16 1 5 5 9 9 9 9 9 9 9 9 9 9 9 9 
		9 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5;
	setAttr -s 45 ".kix[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[10:44]"  1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "EA583E3A-47EA-DF46-8D56-3986F8548FBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 35 4 57.1 7 58.9 10 45.599999999999994
		 11 8.555555555555566 13 -29.400000000000006 16 0 19 0 20 4.3319919517102621 22 21.3
		 25 35 26 0 49 0 50 35 50.000000170068027 35 53 21.3 55 4.3319919517102621 56 0 59 0
		 62 -29.400000000000006 64 8.555555555555566 65 45.599999999999994 68 58.9 71 57.1
		 75 35 75.00000017006802 35 76 0 78 0 80 0 82 23.700000000000003 84 121.2 86 -8.3000000000000114
		 88 -8.3000000000000114 90 -18.20000000000001 92 -18.20000000000001 94 -7.0000000000000089
		 96 0 98 7.4 101 0 102 0 104 0 108 17.5 108.00000017006802 17.5 110 81.049995947065483
		 112 144.60000000000002;
	setAttr -s 45 ".kit[0:44]"  16 1 16 16 18 16 16 16 
		18 1 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 1 16 16 18 16 16 16 
		18 1 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[1:44]"  0.044147914868312738 1 0.0033105093365116507 
		0.001666664351856674 1 1 1 0.0058684435477518102 0.0057281800426882551 0.01565522148465268 
		1 1 0.0011904755493471933 0.0091237078294847656 0.0067930241532008105 0.0058684435477518102 
		0.03844500515617201 0.0085030939459455022 0.024343433150672597 0.0016666643518566744 
		0.0033105093365116568 0.021733995409215556 0.012202717588021673 0.0075412640028666659 
		0.0011904753468856783 1 1 1 0.001375136213558511 1 1 1 1 1 0.0091571252074177222 
		0.011573298925154057 1 1 1 1 1 1 0.0013113022524598233 1;
	setAttr -s 45 ".kiy[1:44]"  0.99902500549925177 0 -0.99999452024895263 
		-0.99999861111400468 0 0 0 0.99998278053690848 0.99998359384211832 0.99987744951082214 
		0 0 0.999999291383732 -0.99995837811153032 -0.99997692714524877 -0.99998278053690848 
		-0.99926071751997825 -0.99996384804319116 0.99970365472095724 0.99999861111400468 
		0.99999452024895263 0.99976378882391626 -0.99992554406989076 -0.99997156426432399 
		-0.99999929138397314 0 0 0 0.99999905449975013 0 0 0 0 0 0.99995807265001657 0.99993302713331211 
		0 0 0 0 0 0 0.99999914024283176 0;
	setAttr -s 45 ".kox[1:44]"  0.044147914237517863 1 0.0033105093365116507 
		0.0016666643518566738 1 1 1 0.0058684435477518093 0.0057281805052428114 0.015655224023938596 
		1 1 0.0011904755493471933 0.0091237078294847656 0.0067930241532008105 0.0058684435477518102 
		0.03844500515617201 0.0085030939459455022 0.024343433150672597 0.0016666643518566744 
		0.0033105093365116568 0.021733995409215556 0.012202717588021673 0.0075412640028666659 
		0.0011904753468856783 1 1 1 0.001375136213558511 1 1 1 1 1 0.0091571252074177205 
		0.011573298925154057 1 1 1 1 1 1 0.0013113022524598235 1;
	setAttr -s 45 ".koy[1:44]"  0.99902500552712736 0 -0.99999452024895263 
		-0.99999861111400468 0 0 0 0.99998278053690848 0.99998359383946867 0.99987744947106416 
		0 0 0.999999291383732 -0.99995837811153032 -0.99997692714524877 -0.99998278053690848 
		-0.99926071751997825 -0.99996384804319116 0.99970365472095724 0.99999861111400468 
		0.99999452024895263 0.99976378882391626 -0.99992554406989076 -0.99997156426432399 
		-0.99999929138397314 0 0 0 0.99999905449975013 0 0 0 0 0 0.99995807265001657 0.99993302713331211 
		0 0 0 0 0 0 0.99999914024283176 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "19E9AFE3-4118-9104-50BA-7CB905E4F134";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 37.8 4 44.8 7 0 10 0 11 9.7999999999999901
		 13 37.8 16 0 19 0 20 3.7851851851852185 22 20.000000000000004 25 37.8 26 0 49 0 50 37.8
		 50.000000170068027 37.8 53 20.000000000000004 55 3.7851851851852185 56 0 59 0 62 37.8
		 64 9.7999999999999901 65 0 68 0 71 44.8 75 37.8 75.00000017006802 37.8 76 0 78 0
		 80 0 82 37.6 84 0 86 0 88 0 90 0 92 0 94 0 96 0 98 11.9 101 0 102 0 104 0 108 33.2
		 108.00000017006802 33.2 110 16.600001058673694 112 0;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 0.0011022922867544094 0.0070222987595231134 
		0.0061246671455356221 0.0062498779332636608 0.043988690126124178 0.0066136119697698713 
		0.021253701415305307 0.003306860225935104 0.01700434380431266 0.0055802702576490852 
		0.0077158196961432061 0.023802778957738399 0.0011022920992899868 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.00502001685300975 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0.99999939247567282 -0.99997534335609095 
		-0.99998124405028532 -0.99998046932218587 -0.99903202908664945 0.99997812982920442 
		0.9997741145759621 -0.99999453232277535 -0.9998554156935815 0.99998443017071603 0.99997023262015983 
		-0.99971667372005402 -0.99999939247587943 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99998739963601324 
		0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 0.0011022922867544094 0.0070222987595231134 
		0.0061246671455356221 0.0062498779332636608 0.043988690126124178 0.0066136119697698713 
		0.021253701415305307 0.003306860225935104 0.01700434380431266 0.0055802702576490852 
		0.0077158196961432061 0.023802778957738399 0.0011022920992899868 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.0050200168530097483 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0.99999939247567282 -0.99997534335609095 
		-0.99998124405028532 -0.99998046932218587 -0.99903202908664945 0.99997812982920442 
		0.9997741145759621 -0.99999453232277535 -0.9998554156935815 0.99998443017071603 0.99997023262015983 
		-0.99971667372005402 -0.99999939247587943 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99998739963601313 
		0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "A6F957AC-477A-B45E-68C9-699C52F151D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 9.2000000000000011 11 4.5333333333333377
		 13 -8.8 16 0 19 0 20 0 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0
		 59 0 62 -8.8 64 4.5333333333333377 65 9.2000000000000011 68 0 71 0 75 0 75.00000017006802 0
		 76 0 78 0 80 0 82 0 84 0 86 0 88 -13.600000000000001 90 -13.600000000000001 92 -13.600000000000001
		 94 -13.600000000000001 96 0 98 0 101 0 102 0 104 0 108 0 108.00000017006802 0 110 0
		 112 0;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 1 1 1 1 1 0.028397633689697107 0.045907430979512644 
		0.0069442770015123211 0.036739884651933168 0.027163885694948493 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0 0 0 0 0 -0.99959670587733829 0.99894569811419742 
		0.99997588821777417 -0.99932486253258146 -0.99963099357410468 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 1 1 1 1 1 0.028397633689697107 0.045907430979512644 
		0.0069442770015123211 0.036739884651933168 0.027163885694948493 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0 0 0 0 0 -0.99959670587733829 0.99894569811419742 
		0.99997588821777417 -0.99932486253258146 -0.99963099357410468 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "DAFCD041-4E28-DA4A-27DB-41B30D41FB02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 0 11 0 13 0 16 0 19 0 20 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0 59 0 62 0 64 0 65 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 80 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0
		 96 0 98 0 101 0 102 0 104 0 108 63.8 108.00000017006802 63.8 110 63.8 112 63.8;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "12851F2A-42F0-9704-EAF3-47980E694138";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 0 11 0 13 0 16 0 19 0 20 0
		 22 0 25 0 26 5 49 5 50 0 50.000000170068027 0 53 0 55 0 56 0 59 0 62 0 64 0 65 0
		 68 0 71 0 75 0 75.00000017006802 0 76 5 78 5 80 5 82 5 84 5 86 5 88 5 90 5 92 5 94 5
		 96 5 98 5 101 5 102 5 104 5 108 5 108.00000017006802 5 110 5 112 5;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 0.0083330454136369934 1 1 1 1 1 1 
		1 1 1 1 1 0.0083330439965509893 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 -0.99996527957431314 0 0 0 0 0 0 
		0 0 0 0 0 0.99996527958612225 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 0.0083330454136369934 1 1 1 1 1 1 
		1 1 1 1 1 0.0083330439965509893 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 -0.99996527957431314 0 0 0 0 0 0 
		0 0 0 0 0 0.99996527958612225 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "6A068544-4242-D114-82CF-B9AA60F99FC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 -5 4 -5 7 0 10 0 11 -1.2962962962962952
		 13 -5 16 -5 19 -5 20 -5 22 -5 25 -5 26 0 49 0 50 -5 50.000000170068027 -5 53 -5 55 -5
		 56 -5 59 -5 62 -5 64 -1.2962962962962952 65 0 68 0 71 -5 75 -5 75.00000017006802 -5
		 76 0 78 0 80 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0 96 0 98 0 101 0 102 0 104 0 108 23.700000000000003
		 108.00000017006802 23.700000000000003 110 16.950000430484785 112 10.200000000000003;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 0.0083330454136369934 1 1 1 1 1 0.056161221362593869 
		0.02499219116020307 0.12752174253952653 0.049937616943892232 0.058234338220406641 
		1 0.0083330439965509893 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.012344737756888055 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 -0.99996527957431314 0 0 0 0 0 0.99842171311278172 
		0.9996876464081228 0.99183577530742595 -0.99875233887784454 -0.99830294092125726 
		0 0.99996527958612225 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99992380082169952 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 0.0083330454136369934 1 1 1 1 1 0.056161221362593869 
		0.02499219116020307 0.12752174253952653 0.049937616943892232 0.058234338220406641 
		1 0.0083330439965509893 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.012344737756888052 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 -0.99996527957431314 0 0 0 0 0 0.99842171311278172 
		0.9996876464081228 0.99183577530742595 -0.99875233887784454 -0.99830294092125726 
		0 0.99996527958612225 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.9999238008216994 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "86F0A46A-4ECE-B909-747F-20AEFAF31C74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 0 7 0 10 0 11 0 13 0 16 0 19 0 20 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0 59 0 62 0 64 0 65 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 80 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0
		 96 0 98 0 101 0 102 0 104 0 108 0 108.00000017006802 0 110 0 112 0;
	setAttr -s 45 ".kit[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kot[0:44]"  16 16 16 16 18 16 16 16 
		18 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 1 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18;
	setAttr -s 45 ".kix[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[10:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[10:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_foot_ctrl_ikFkBlend";
	rename -uid "8072FCFD-425E-B4E9-76B1-0486691320BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 13 1 25 1 26 1 49 1 50 1 50.000000170068027 1
		 62 1 75 1 75.00000017006802 1 76 1 78 1 82 1 84 1 86 1 88 1 90 1 92 1 96 1 101 1
		 102 1 108 1 112 1;
	setAttr -s 23 ".kit[0:22]"  16 16 1 18 1 9 9 9 
		9 9 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kot[0:22]"  16 16 1 18 1 9 9 9 
		9 9 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateX";
	rename -uid "3E6BE213-4C48-602E-9D57-E1B10D97925E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0 4 0 7 0 8 0 10 0 12 0 13 0 16 0 19 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 56 0 59 0 62 0 63 0 65 0 67 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 -9.7941951343441502 82 0 84 0 86 0 88 0
		 90 0 92 0 94 0 96 0 101 0 102 0 108 0 108.00000017006802 0 109.99999982993198 9.6193956848453226
		 110 25.65172564347527 112 51.303454558855208;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.18299066333263336 0.11379964831125058 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.98311465106216533 0.99350371918993607 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.18299066333263334 0.11379964831125058 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.98311465106216522 0.9935037191899363 0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "3C478A43-48B5-045C-9B1C-148A434D79E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0 4 0 7 0 8 0 10 0 12 0 13 0 16 0 19 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 56 0 59 0 62 0 63 0 65 0 67 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0 96 0
		 101 0 102 0 108 0 108.00000017006802 0 109.99999982993198 2.4070415576878696 110 6.418778442343017
		 112 12.837557703407999;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.59684040884222544 0.41622209693259177 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.80235997306261808 0.90926297957468616 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.59684040884222544 0.41622209693259177 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0.80235997306261808 0.90926297957468616 0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "064E3409-4E26-B894-F5C4-079B0E2FF122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0 4 0 7 0 8 0 10 0 12 0 13 0 16 0 19 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 56 0 59 0 62 0 63 0 65 0 67 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0 96 0
		 101 0 102 0 108 0 108.00000017006802 -15.889515701748797 109.99999982993198 -28.269080763373125
		 110 -35.308101906802122 112 -43.781351912537438;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.16654123070453603 0.23876858465418715 0.29417827638839616 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 -0.98603449152421563 -0.97107649697757403 -0.95575056458322449 
		0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.16654123070453603 0.23876858465418713 0.29417827638839616 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 -0.98603449152421574 -0.97107649697757403 -0.95575056458322449 
		0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "98B319E2-40C7-418E-2733-5EAA2CF3DCB5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 1 4 1 7 1 8 1 10 1 12 1 13 1 16 1 19 1
		 22 1 25 1 26 1 49 1 50 1 50.000000170068027 1 53 1 56 1 59 1 62 1 63 1 65 1 67 1
		 68 1 71 1 75 1 75.00000017006802 1 76 1 78 1 82 1 84 1 86 1 88 1 90 1 92 1 94 1 96 1
		 101 1 102 1 108 1 108.00000017006802 1 109.99999982993198 1 110 1 112 1;
	setAttr -s 43 ".kit[0:42]"  16 16 16 9 16 9 16 16 
		16 16 1 9 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 9 9 9 9 9 9 9 9 1 9 9 9 9 9 
		9;
	setAttr -s 43 ".kot[0:42]"  16 16 16 5 16 5 16 16 
		16 16 1 5 5 9 9 9 9 9 9 9 9 9 9 9 9 
		9 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 43 ".kox[10:42]"  1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "7132942D-48D5-4455-B15B-1389459E55C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 -21.500000000000004 4 0 7 0 8 3.0893360160965813
		 10 24.799999999999997 12 36.155555555555544 13 38.419114688128772 16 43.4 19 63.8
		 22 32.099999999999994 25 -21.500000000000004 26 0 49 0 50 -21.500000000000004 50.000000170068027 -21.500000000000004
		 53 32.099999999999994 56 63.8 59 43.4 62 38.419114688128772 63 36.155555555555544
		 65 24.799999999999997 67 3.0893360160965813 68 0 71 0 75 -21.500000000000004 75.00000017006802 -21.500000000000004
		 76 0 78 0 82 0 84 14.6 86 48 88 30.3 90 6.5 92 -24.8 94 -10.700000000000001 96 0
		 101 0 102 0 108 0 108.00000017006802 18.1 109.99999982993198 58.923434837369705 110 50.737498450257362
		 112 66.7;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 0.0019379811863961408 0.0023320832105649539 
		0.0029308196857978103 0.02211848133775279 0.0098494544286006642 0.023000049015712194 
		0.0091778899104310654 0.0050403267110680156 0.0050402585575411484 0.053870686941232496 
		0.01356464335649332 0.0077517054077210455 0.0019379808568087836 1 1 1 0.0034722012912879485 
		1 0.0040160318703272727 0.003024789550252953 1 0.0067202783513069988 1 1 1 1 0.00141426315587262 
		1 1 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 -0.99999812211269745 0.99999728069025218 
		0.99999570513876179 0.99975535646642655 -0.99995149294726227 -0.99973546388295886 
		-0.99995788228144489 -0.99998729747264581 -0.9999872978161638 -0.99854792027647821 
		-0.99990799599293678 -0.99996995508028741 0.99999812211333605 0 0 0 0.99999397189092731 
		0 -0.99999193571149192 -0.9999954253136244 0 0.99997741867448231 0 0 0 0 0.99999899992936303 
		0 0 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 0.0019379811863961408 0.0023320832105649539 
		0.0029308196857978103 0.02211848133775279 0.0098494544286006642 0.023000049015712194 
		0.0091778899104310654 0.0050403267110680156 0.0050402585575411484 0.053870686941232496 
		0.01356464335649332 0.0077517054077210455 0.0019379808568087836 1 1 1 0.0034722012912879485 
		1 0.0040160318703272727 0.003024789550252953 1 0.0067202783513069988 1 1 1 1 0.00141426315587262 
		1 1 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 -0.99999812211269745 0.99999728069025218 
		0.99999570513876179 0.99975535646642655 -0.99995149294726227 -0.99973546388295886 
		-0.99995788228144489 -0.99998729747264581 -0.9999872978161638 -0.99854792027647821 
		-0.99990799599293678 -0.99996995508028741 0.99999812211333605 0 0 0 0.99999397189092731 
		0 -0.99999193571149192 -0.9999954253136244 0 0.9999774186744822 0 0 0 0 0.99999899992936292 
		0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "859C6058-486F-BE69-29D4-8EB7783A0990";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0 4 0 7 0 8 8.5502688101637627 10 38 12 38.434916384414059
		 13 38.300000000000004 16 38.300000000000004 19 0 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0
		 53 0 56 0 59 38.300000000000004 62 38.300000000000004 63 38.434916384414059 65 38
		 67 8.5502688101637627 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 82 0 84 20.6 86 0
		 88 0 90 0 92 0 94 0 96 0 101 0 102 0 108 0 108.00000017006802 12.8 109.99999982993198 10.400000510204066
		 110 6.4000004081633515 112 0;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 1 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 1 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[4:42]"  0.04349201795367319 1 1 1 1 1 1 1 1 1 1 
		1 0.0065272760907735677 0.0065272760907735677 0.77725456456088604 0.38461538461537992 
		0.0055769128413741317 0.0032894558872544324 0.019488862402718032 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.013019729407216579 0.0080125635807048543 1;
	setAttr -s 43 ".kiy[4:42]"  0.99905377451582522 0 0 0 0 0 0 0 0 0 0 
		0 0.99997869710651077 0.99997869710651077 0.62918625371925241 -0.92307692307692502 
		-0.99998444890066152 -0.99999458972534738 -0.9998100740851974 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.99991523973092988 -0.99996789889719206 0;
	setAttr -s 43 ".kox[4:42]"  0.043492016036683546 1 1 1 1 1 1 1 1 1 
		1 1 0.0065272760907735677 0.0065272760907735677 0.77725456456088604 0.38461538461537992 
		0.0055769128413741317 0.0032894558872544324 0.019488862402718032 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.013019729407216577 0.0080125635807048561 1;
	setAttr -s 43 ".koy[4:42]"  0.99905377459927791 0 0 0 0 0 0 0 0 0 0 
		0 0.99997869710651077 0.99997869710651077 0.62918625371925241 -0.92307692307692502 
		-0.99998444890066152 -0.99999458972534738 -0.9998100740851974 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.99991523973092988 -0.99996789889719229 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "DD9652E6-45AC-E427-7920-A7A78FAAE000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 -8.4 4 0 7 0 8 0 10 0 12 0 13 0 16 0 19 9.6000000000000014
		 22 -9.7000000000000028 25 -8.4 26 0 49 0 50 -8.4 50.000000170068027 -8.4 53 -9.7000000000000028
		 56 9.6000000000000014 59 0 62 0 63 0 65 0 67 0 68 0 71 0 75 -8.4 75.00000017006802 -8.4
		 76 0 78 0 82 0 84 0 86 0 88 -19.1 90 -19.1 92 -19.1 94 -19.1 96 0 101 0 102 0 108 0
		 108.00000017006802 0 109.99999982993198 0 110 0 112 0;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 0.0049602572813200324 0.095712406644257605 
		0.013887549097195622 0.025764640117524332 0.026032840837717293 1 1 1 1 1 0.034701310006119937 
		0.019837366321352929 0.0049602564377597257 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 -0.99998769784818009 -0.99540902910028106 
		0.99990356334002195 0.99966803655994441 -0.9996610881683442 0 0 0 0 0 -0.99939772817625472 
		-0.99980322008754929 0.99998769785236441 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 0.0049602572813200324 0.095712406644257605 
		0.013887549097195622 0.025764640117524332 0.026032840837717293 1 1 1 1 1 0.034701310006119937 
		0.019837366321352929 0.0049602564377597257 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 -0.99998769784818009 -0.99540902910028106 
		0.99990356334002195 0.99966803655994441 -0.9996610881683442 0 0 0 0 0 -0.99939772817625472 
		-0.99980322008754929 0.99998769785236441 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "80754196-4E50-6F51-618A-CA97588F0AA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0 4 0 7 0 8 0 10 0 12 0 13 0 16 0 19 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 56 0 59 0 62 0 63 0 65 0 67 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0 96 0
		 101 0 102 0 108 0 108.00000017006802 0 109.99999982993198 0 110 0 112 0;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "0D585C55-4380-9C9F-8659-5BB7B57D4838";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 -5 4 -5 7 -5 8 -5 10 -5 12 -1.2962962962962954
		 13 0 16 0 19 0 22 0 25 -5 26 -5 49 -5 50 -5 50.000000170068027 -5 53 0 56 0 59 0
		 62 0 63 -1.2962962962962954 65 -5 67 -5 68 -5 71 -5 75 -5 75.00000017006802 -5 76 -5
		 78 -5 82 -5 84 -5 86 -5 88 -5 90 -5 92 -5 94 -5 96 -5 101 -5 102 -5 108 -30.3 108.00000017006802 -30.3
		 109.99999982993198 -30.3 110 -30.3 112 -30.3;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 0.02499219116020307 0.049937615531956761 
		1 1 0.12752174253952617 0.02499219116020307 0.044954506581481653 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0.9996876464081228 0.9987523389484414 
		0 0 -0.99183577530742595 -0.9996876464081228 -0.99898903514403781 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 1 0.02499219116020307 0.049937615531956761 
		1 1 0.12752174253952617 0.02499219116020307 0.044954506581481653 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0.9996876464081228 0.9987523389484414 
		0 0 -0.99183577530742595 -0.9996876464081228 -0.99898903514403781 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "BBC2D721-4029-981B-7016-33806CFE03D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0 4 0 7 0 8 0 10 0 12 -3.7037037037037046
		 13 -5 16 -5 19 0 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 56 0 59 -5 62 -5
		 63 -3.7037037037037046 65 0 67 0 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 82 0
		 84 0 86 0 88 0 90 0 92 0 94 0 96 0 101 0 102 0 108 0 108.00000017006802 0 109.99999982993198 0
		 110 0 112 0;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 1 1 0.049937616943892232 0.049937616943892232 
		0.12752174253952617 0.02499219116020307 0.044954506581481653 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0 0 -0.99875233887784454 -0.99875233887784454 
		0.99183577530742595 0.9996876464081228 0.99898903514403781 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 1 1 1 0.049937616943892232 0.049937616943892232 
		0.12752174253952617 0.02499219116020307 0.044954506581481653 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0 0 -0.99875233887784454 -0.99875233887784454 
		0.99183577530742595 0.9996876464081228 0.99898903514403781 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "65CBA1E0-4CBD-4E77-3D49-B293A587112B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0 4 0 7 0 8 0 10 0 12 0 13 0 16 0 19 0
		 22 0 25 0 26 0 49 0 50 0 50.000000170068027 0 53 0 56 0 59 0 62 0 63 0 65 0 67 0
		 68 0 71 0 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0 96 0
		 101 0 102 0 108 0 108.00000017006802 0 109.99999982993198 0 110 0 112 0;
	setAttr -s 43 ".kit[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kot[0:42]"  16 16 16 18 16 18 16 16 
		16 16 1 18 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18;
	setAttr -s 43 ".kix[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".kiy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 43 ".kox[10:42]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 43 ".koy[10:42]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CTRL_Top_translateY";
	rename -uid "FCA8FAB7-4FDC-4C36-545D-AB9A0A0DA749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 25 0 26 0 49 0 50 0 50.000000170068027 0
		 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 101 0 102 0 108 0 112 0;
	setAttr -s 19 ".kit[0:18]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 1 18 18 18;
	setAttr -s 19 ".kot[0:18]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 1 18 18 18;
	setAttr -s 19 ".kix[1:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_knee_pv_ctrl_lfLegIkCtrl";
	rename -uid "44468CE3-4EDC-B879-5B9C-999F461E3690";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 25 0 26 0 49 0 50 0 50.000000170068027 0
		 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 96 0 101 0 102 0 108 0
		 112 0;
	setAttr -s 20 ".kit[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kot[0:19]"  16 1 18 1 9 9 9 9 
		1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CTRL_Main_rotateX";
	rename -uid "A5E5C158-4183-57F0-7701-928F54B9FF0D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 -11.572762075013268 7 -5.1861780027157138
		 10 0 13 0 16 -12.707380122507107 19 -5.6926557750843543 20 -3.2754946391360282 22 0
		 25 0 26 0 30 -1.1836312214923532 34 -2 38 0 41 0 45 -2 49 0 50 0 50.000000170068027 0
		 53 0 55 -3.2754946391360282 56 -5.6926557750843543 59 -12.707380122507107 62 0 65 0
		 68 -5.1861780027157138 71 -11.572762075013268 75 0 75.00000017006802 0 76 0 78 0
		 82 -10.790237095825205 84 1.9629071810932137 86 1.9629071810932137 88 1.9629071810932137
		 90 1.9629071810932137 92 1.9629071810932137 94 1.7151877563187627 96 9.3181080615738541
		 101 0 102 0 104 -16.554726597136202 108 -29.596440314267202 108.00000017006802 -29.596440314267202
		 112 -64.534121897761096;
	setAttr -s 45 ".kit[8:44]"  1 1 2 18 18 1 18 18 
		1 9 9 9 9 9 9 9 9 9 9 9 9 1 1 18 18 
		18 18 3 18 18 9 9 9 9 9 9 9;
	setAttr -s 45 ".kot[0:44]"  1 9 9 9 9 9 9 9 
		9 1 2 18 18 1 18 18 1 9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 18 18 18 18 5 18 18 9 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[8:44]"  0.96435140256782792 0.63645306142904534 
		1 0.9945615750429232 1 1 1 1 1 1 1 0.96435140027088795 0.78283358974815831 0.71146709088082083 
		0.92930039968742961 0.74805766116533701 0.94026748686421813 0.77785033765006162 0.95506539711731675 
		0.63645307752782954 1 1 1 1 1 1 1 1 1 1 0.99477411674587424 0.83824183226798687 0.39705928524101491 
		0.43563699241978293 0.5907750763870826 0.26365286415199823 0.26365285372148728;
	setAttr -s 45 ".kiy[8:44]"  0.2646249654992196 -0.77131543521285506 
		0 -0.10415024458991801 0 0 0 0 0 0 0 -0.26462497386977241 -0.62223112326691932 -0.70271941669031879 
		0.36932474482599115 0.663633736010946 -0.34043656258699256 -0.62844956219070225 0.29639515385569648 
		0.77131542192889846 0 0 0 0 0 0 0 0 0 0 -0.10210022846431746 -0.54529866186889553 
		-0.91779296358377827 -0.9001224421352052 -0.80683629635746845 -0.96461762746927238 
		-0.96461763032017811;
	setAttr -s 45 ".kox[0:44]"  0.63645306142904523 0.95506539711731675 
		0.77785033765006162 0.94026748686421813 0.7480576611653369 0.92930039968742961 0.71146709088082027 
		0.78283358974815831 0.96435140256782792 0.63645306142904534 0.99240564751482152 0.9945615750429232 
		1 1 1 1 0.99240564751482152 1 1 0.96435140027088795 0.78283358974815831 0.71146709088082083 
		0.92930039968742961 0.74805766116533701 0.94026748686421813 0.77785033765006162 0.95506539711731675 
		0.63645307752782954 1 0.99240564751482152 0.99240564751482152 1 1 1 1 0 1 1 0.99477411674587424 
		0.83824183226798687 0.39705928524101491 0.43563699241978293 0.5907750763870826 0.26365286415199823 
		0.26365285372148728;
	setAttr -s 45 ".koy[0:44]"  -0.77131543521285495 -0.29639515385569631 
		0.62844956219070225 0.34043656258699262 -0.66363373601094611 -0.36932474482599115 
		0.70271941669031923 0.62223112326691932 0.2646249654992196 -0.77131543521285506 -0.12300825492903941 
		-0.10415024458991801 0 0 0 0 -0.12300825492903941 0 0 -0.26462497386977241 -0.62223112326691932 
		-0.70271941669031879 0.36932474482599115 0.663633736010946 -0.34043656258699256 -0.62844956219070225 
		0.29639515385569648 0.77131542192889846 0 -0.12300825492903941 -0.12300825492903941 
		0 0 0 0 0 0 0 -0.10210022846431746 -0.54529866186889553 -0.91779296358377827 -0.9001224421352052 
		-0.80683629635746845 -0.96461762746927238 -0.96461763032017811;
createNode animCurveTA -n "CTRL_Main_rotateY";
	rename -uid "24605E58-42E7-14D0-0567-8EBDE185C9BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 4 -1.2808476859336713 7 0 10 0 13 0
		 16 1.099424876143055 19 0 20 0 22 0 25 0 26 0 30 0.048960724017307201 34 0 38 0 41 0
		 45 0 49 0 50 0 50.000000170068027 0 53 0 55 0 56 0 59 1.099424876143055 62 0 65 0
		 68 0 71 -1.2808476859336713 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0
		 90 0 92 0 94 0 96 0 101 0 102 0 104 2.290514986128855 108 4.0954108888755512 108.00000017006802 4.0954108888755512
		 112 -2.0330588370927214;
	setAttr -s 45 ".kit[8:44]"  1 1 2 18 18 1 18 18 
		1 9 9 9 9 9 9 9 9 9 9 9 9 1 1 18 18 
		18 18 3 18 18 18 9 9 9 9 9 9;
	setAttr -s 45 ".kot[0:44]"  1 9 9 9 9 9 9 9 
		9 1 2 18 18 1 18 18 1 9 9 9 9 9 9 9 9 
		9 9 9 9 1 1 18 18 18 18 5 18 18 18 9 9 9 
		9 9 9;
	setAttr -s 45 ".kix[8:44]"  1 0.99112414929988846 1 1 1 1 1 1 1 1 1 
		1 1 0.99343753720350658 1 0.99706733735834219 1 0.99602584547834638 1 0.99112415004461873 
		1 1 1 1 1 1 1 1 1 1 1 1 0.9524749442597662 0.96147330635226469 0.98260270477468048 
		0.84159369800111672 0.84159368756277586;
	setAttr -s 45 ".kiy[8:44]"  0 -0.13293953766495639 0 0 0 0 0 0 0 0 
		0 0 0 0.11437595759175676 0 -0.076529241294723008 0 -0.089064668298632715 0 0.13293953211265636 
		0 0 0 0 0 0 0 0 0 0 0 0 0.3046169406933163 0.27489831060238329 0.1857200166096325 
		-0.54011114364064472 -0.54011115990552228;
	setAttr -s 45 ".kox[0:44]"  0.99112414929988846 1 0.99602584547834638 
		1 0.99706733735834219 1 0.99343753720350658 1 1 0.99112414929988846 0.99998685639978713 
		1 1 1 1 1 0.99998685639978713 1 1 1 1 0.99343753720350658 1 0.99706733735834219 1 
		0.99602584547834638 1 0.99112415004461873 1 0.99998685639978713 0.99998685639978713 
		1 1 1 1 0 1 1 1 1 0.9524749442597662 0.96147330635226469 0.98260270477468048 0.84159369800111672 
		0.84159368756277586;
	setAttr -s 45 ".koy[0:44]"  -0.13293953766495639 0 0.089064668298632715 
		0 0.076529241294723022 0 -0.11437595759175691 0 0 -0.13293953766495639 0.0051270876402977148 
		0 0 0 0 0 0.0051270876402977148 0 0 0 0 0.11437595759175676 0 -0.076529241294723008 
		0 -0.089064668298632715 0 0.13293953211265636 0 0.0051270876402977148 0.0051270876402977148 
		0 0 0 0 0 0 0 0 0 0.3046169406933163 0.27489831060238329 0.1857200166096325 -0.54011114364064472 
		-0.54011115990552228;
createNode animCurveTA -n "CTRL_Main_rotateZ";
	rename -uid "69A0B0AE-49B0-5B38-746B-0DAC52C560CF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0 4 -7.9840638140042275 7 -6.5285980265996866
		 10 0 13 4.7637833459005412 16 7.7999383387462276 19 6.5048614441725459 22 1.9055133383602152
		 25 0 26 0 29 4.6270307814204914 34 10.04614659358381 38 0 40 -4.7801974062113315
		 45 -10.41899628734806 49 0 50 0 50.000000170068027 0 53 1.9055133383602152 56 6.5048614441725459
		 59 7.7999383387462276 62 4.7637833459005412 65 0 68 -6.5285980265996866 71 -7.9840638140042275
		 75 0 75.00000017006802 0 76 0 78 0 82 0 84 0 86 0 88 0 90 0 92 0 94 0 96 0 101 0
		 102 0 104 7.6576383986018328 108 13.800084892523737 108.00000017006802 13.800084892523737
		 112 46.437724741159087;
	setAttr -s 43 ".kit[0:42]"  1 16 16 16 16 16 16 1 
		1 2 18 16 2 18 16 1 9 9 9 9 9 9 9 9 9 
		9 9 1 1 18 18 18 18 3 18 18 18 9 9 9 9 9 
		9;
	setAttr -s 43 ".kot[0:42]"  1 16 16 16 16 16 16 16 
		1 2 18 16 2 18 16 1 9 9 9 9 9 9 9 9 9 
		9 9 1 1 18 18 18 18 5 18 18 18 9 9 9 9 9 
		9;
	setAttr -s 43 ".kix[0:42]"  0.59952168245123949 1 0.87347513647753317 
		0.7853091012174902 0.87823358101638072 1 0.92476149383554074 1 0.59952168245123949 
		1 0.88502791237468559 1 0.68895638852420771 0.84858082127822199 1 1 1 0.96638077931550903 
		0.91051063448337444 0.92476149383554074 0.99269363833946211 0.87823358101638083 0.78530910121749042 
		0.87347513647753317 0.93144301945700336 0.76718048324232879 1 1 1 1 1 1 1 1 1 1 1 
		1 0.6830744832104727 0.72015298024167429 0.84103371266169846 0.2808125263665705 0.28081251536874408;
	setAttr -s 43 ".kiy[0:42]"  -0.80035851483621712 0 0.48686875639699312 
		0.61910388106114911 0.47823192822640376 0 -0.38054721063103197 0 -0.80035851483621712 
		0 0.46553796227343908 0 -0.72480279711910678 -0.52906577073061367 0 0 0 0.25711512862830449 
		0.41348565210014615 0.38054721063103197 -0.12066209181164231 -0.47823192822640376 
		-0.619103881061149 -0.48686875639699312 0.36388720986704176 0.64143129494285434 0 
		0 0 0 0 0 0 0 0 0 0 0 0.73034871834401516 0.69381531047464995 0.54098271152272481 
		0.95976263994574418 0.95976264316354731;
	setAttr -s 43 ".kox[0:42]"  0.64102901997512729 1 0.87347513647753317 
		0.7853091012174902 0.87823358101638072 1 0.92476149383554074 1 0.64102901997512729 
		0.83995436967559867 0.88502791237468548 1 0.70669599961864371 0.84858082127822188 
		1 0.83995436967559867 1 0.96638077931550903 0.91051063448337444 0.92476149383554074 
		0.99269363833946211 0.87823358101638083 0.78530910121749042 0.87347513647753317 0.93144301945700336 
		0.76718048324232879 1 0.83995436967559867 0.83995436967559867 1 1 1 1 0 1 1 1 1 0.6830744832104727 
		0.72015298024167429 0.84103371266169846 0.2808125263665705 0.28081251536874408;
	setAttr -s 43 ".koy[0:42]"  -0.76751664187151536 0 0.48686875639699312 
		0.61910388106114911 0.47823192822640376 0 -0.38054721063103197 0 -0.76751664187151536 
		0.54265703428857137 0.46553796227343908 0 -0.70751732425644953 -0.52906577073061367 
		0 0.54265703428857126 0 0.25711512862830449 0.41348565210014615 0.38054721063103197 
		-0.12066209181164231 -0.47823192822640376 -0.619103881061149 -0.48686875639699312 
		0.36388720986704176 0.64143129494285434 0 0.54265703428857126 0.54265703428857126 
		0 0 0 0 0 0 0 0 0 0.73034871834401516 0.69381531047464995 0.54098271152272481 0.95976263994574418 
		0.95976264316354731;
select -ne :time1;
	setAttr ".o" 126;
	setAttr ".unw" 126;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "walker_lf_heel_ik_ctrl_pvControl.o" "Ultimate_Walker_RigRN.phl[1]";
connectAttr "walker_lf_heel_ik_ctrl_legTwist.o" "Ultimate_Walker_RigRN.phl[2]";
connectAttr "walker_lf_heel_ik_ctrl_heelTwist.o" "Ultimate_Walker_RigRN.phl[3]";
connectAttr "walker_lf_heel_ik_ctrl_ballTwist.o" "Ultimate_Walker_RigRN.phl[4]";
connectAttr "walker_lf_heel_ik_ctrl_toeTwist.o" "Ultimate_Walker_RigRN.phl[5]";
connectAttr "walker_lf_heel_ik_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[6]"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[7]"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[8]"
		;
connectAttr "walker_lf_heel_ik_ctrl_rotateX.o" "Ultimate_Walker_RigRN.phl[9]";
connectAttr "walker_lf_heel_ik_ctrl_rotateY.o" "Ultimate_Walker_RigRN.phl[10]";
connectAttr "walker_lf_heel_ik_ctrl_rotateZ.o" "Ultimate_Walker_RigRN.phl[11]";
connectAttr "walker_lf_heel_ik_ctrl_footRoll.o" "Ultimate_Walker_RigRN.phl[12]";
connectAttr "walker_lf_heel_ik_ctrl_footBreak.o" "Ultimate_Walker_RigRN.phl[13]"
		;
connectAttr "walker_lf_heel_ik_ctrl_toeRoll.o" "Ultimate_Walker_RigRN.phl[14]";
connectAttr "walker_lf_foot_ctrl_ikFkBlend.o" "Ultimate_Walker_RigRN.phl[15]";
connectAttr "walker_lf_knee_pv_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[16]"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[17]"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[18]"
		;
connectAttr "walker_lf_knee_pv_ctrl_lfLegIkCtrl.o" "Ultimate_Walker_RigRN.phl[19]"
		;
connectAttr "walker_rt_heel_ik_ctrl_pvControl.o" "Ultimate_Walker_RigRN.phl[20]"
		;
connectAttr "walker_rt_heel_ik_ctrl_legTwist.o" "Ultimate_Walker_RigRN.phl[21]";
connectAttr "walker_rt_heel_ik_ctrl_heelTwist.o" "Ultimate_Walker_RigRN.phl[22]"
		;
connectAttr "walker_rt_heel_ik_ctrl_ballTwist.o" "Ultimate_Walker_RigRN.phl[23]"
		;
connectAttr "walker_rt_heel_ik_ctrl_toeTwist.o" "Ultimate_Walker_RigRN.phl[24]";
connectAttr "walker_rt_heel_ik_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[25]"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[26]"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[27]"
		;
connectAttr "walker_rt_heel_ik_ctrl_rotateX.o" "Ultimate_Walker_RigRN.phl[28]";
connectAttr "walker_rt_heel_ik_ctrl_rotateY.o" "Ultimate_Walker_RigRN.phl[29]";
connectAttr "walker_rt_heel_ik_ctrl_rotateZ.o" "Ultimate_Walker_RigRN.phl[30]";
connectAttr "walker_rt_heel_ik_ctrl_footRoll.o" "Ultimate_Walker_RigRN.phl[31]";
connectAttr "walker_rt_heel_ik_ctrl_footBreak.o" "Ultimate_Walker_RigRN.phl[32]"
		;
connectAttr "walker_rt_heel_ik_ctrl_toeRoll.o" "Ultimate_Walker_RigRN.phl[33]";
connectAttr "walker_rt_foot_ctrl_ikFkBlend.o" "Ultimate_Walker_RigRN.phl[34]";
connectAttr "walker_rt_knee_pv_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[35]"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[36]"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[37]"
		;
connectAttr "walker_rt_knee_pv_ctrl_rtLegIkCtrl.o" "Ultimate_Walker_RigRN.phl[38]"
		;
connectAttr "CTRL_Top_translateY.o" "Ultimate_Walker_RigRN.phl[39]";
connectAttr "CTRL_Main_translateY.o" "Ultimate_Walker_RigRN.phl[40]";
connectAttr "CTRL_Main_translateX.o" "Ultimate_Walker_RigRN.phl[41]";
connectAttr "CTRL_Main_translateZ.o" "Ultimate_Walker_RigRN.phl[42]";
connectAttr "CTRL_Main_rotateX.o" "Ultimate_Walker_RigRN.phl[43]";
connectAttr "CTRL_Main_rotateY.o" "Ultimate_Walker_RigRN.phl[44]";
connectAttr "CTRL_Main_rotateZ.o" "Ultimate_Walker_RigRN.phl[45]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Walking Animation.ma
