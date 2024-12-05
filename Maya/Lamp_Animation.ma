//Maya ASCII 2023 scene
//Name: Lamp_Animation.ma
//Last modified: Fri, Mar 08, 2024 07:24:02 PM
//Codeset: 1252
file -rdi 1 -ns "IK_Lamp_Rig" -rfn "IK_Lamp_RigRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/ferri/Documents/GitKraken/FallSemester2023/Maya/IK_Lamp_Rig.ma";
file -r -ns "IK_Lamp_Rig" -dr 1 -rfn "IK_Lamp_RigRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/ferri/Documents/GitKraken/FallSemester2023/Maya/IK_Lamp_Rig.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "1B2EAF3D-439A-513D-8040-7BB1A8546D75";
createNode transform -s -n "persp";
	rename -uid "16651880-43C6-D197-715E-4F88CDDF929B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 109.49411307904647 43.058219170233315 63.839299170211447 ;
	setAttr ".r" -type "double3" -11.138352729631661 78.200000000000728 -3.8882837257958024e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CC74D1C6-4824-AEA9-0995-D2958F13C32D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 110.08158446443377;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "90D9D7A5-4EC3-0CC3-E414-81B0A0EA0691";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "28211C4B-4B5B-1752-6A0C-8E92A78C90E1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 63.297515601728726;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "084C9C9F-4949-E0DF-7AAC-A99EE2323318";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E7C88D80-4CF7-9373-4ED9-83A87AF1D3D4";
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
	rename -uid "D6E2C6F0-4DCC-3EDF-B853-0EAB641A1412";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8390E0C8-459B-2796-FA1E-2A962EABE03B";
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
createNode transform -n "pPlane1";
	rename -uid "239E505B-4466-18A6-420C-AE8C0FC25E67";
	setAttr ".s" -type "double3" 272.40821986594051 272.40821986594051 272.40821986594051 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "9A58395D-488E-2002-BE80-1CB0114E5700";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7DDC13A3-4696-B8B9-2C16-AAA01551FFD3";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E1D0AB39-4BD8-3DED-E965-72A941C182D5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8B61A6EB-4A34-C666-9BD6-5DA0CDBAB899";
createNode displayLayerManager -n "layerManager";
	rename -uid "B97078F4-4C2F-39D1-493F-2886E5A4294A";
createNode displayLayer -n "defaultLayer";
	rename -uid "65C425BE-4179-CF70-0FC5-CE9B8CE1B230";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6E2F73EF-4733-276C-3ED2-11B471EE2EA1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AA47058C-47E9-9410-EC5D-CAAC2F868A70";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A53D868F-4438-C8CF-01CD-B7B83EC14593";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "25A848F3-435D-AE5E-5E65-A9830FA8FAB6";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "EB6D3C1F-4380-91A5-FE91-2A9B4F0C8836";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "615A8D0D-487C-BEA6-FD01-BB88A0DBA3EE";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "IK_Lamp_RigRN";
	rename -uid "61E15F46-4EC1-F79D-ACB5-7D911D273D5C";
	setAttr -s 50 ".phl";
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
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"IK_Lamp_RigRN"
		"IK_Lamp_RigRN" 0
		"IK_Lamp_RigRN" 50
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.translateX" 
		"IK_Lamp_RigRN.placeHolderList[1]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.translateY" 
		"IK_Lamp_RigRN.placeHolderList[2]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.translateZ" 
		"IK_Lamp_RigRN.placeHolderList[3]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.rotateX" 
		"IK_Lamp_RigRN.placeHolderList[4]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.rotateY" 
		"IK_Lamp_RigRN.placeHolderList[5]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.rotateZ" 
		"IK_Lamp_RigRN.placeHolderList[6]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.scaleX" 
		"IK_Lamp_RigRN.placeHolderList[7]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.scaleY" 
		"IK_Lamp_RigRN.placeHolderList[8]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.scaleZ" 
		"IK_Lamp_RigRN.placeHolderList[9]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl.visibility" 
		"IK_Lamp_RigRN.placeHolderList[10]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.translateX" 
		"IK_Lamp_RigRN.placeHolderList[11]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.translateY" 
		"IK_Lamp_RigRN.placeHolderList[12]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.translateZ" 
		"IK_Lamp_RigRN.placeHolderList[13]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.rotateX" 
		"IK_Lamp_RigRN.placeHolderList[14]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.rotateY" 
		"IK_Lamp_RigRN.placeHolderList[15]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.rotateZ" 
		"IK_Lamp_RigRN.placeHolderList[16]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.scaleX" 
		"IK_Lamp_RigRN.placeHolderList[17]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.scaleY" 
		"IK_Lamp_RigRN.placeHolderList[18]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.scaleZ" 
		"IK_Lamp_RigRN.placeHolderList[19]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:base_ctrl_grp|IK_Lamp_Rig:base_ctrl.visibility" 
		"IK_Lamp_RigRN.placeHolderList[20]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.translateX" 
		"IK_Lamp_RigRN.placeHolderList[21]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.translateY" 
		"IK_Lamp_RigRN.placeHolderList[22]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.translateZ" 
		"IK_Lamp_RigRN.placeHolderList[23]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.rotateX" 
		"IK_Lamp_RigRN.placeHolderList[24]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.rotateY" 
		"IK_Lamp_RigRN.placeHolderList[25]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.rotateZ" 
		"IK_Lamp_RigRN.placeHolderList[26]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.visibility" 
		"IK_Lamp_RigRN.placeHolderList[27]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.scaleX" 
		"IK_Lamp_RigRN.placeHolderList[28]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.scaleY" 
		"IK_Lamp_RigRN.placeHolderList[29]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:lower_arm_ctrl_grp|IK_Lamp_Rig:lower_arm_ctrl.scaleZ" 
		"IK_Lamp_RigRN.placeHolderList[30]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.translateX" 
		"IK_Lamp_RigRN.placeHolderList[31]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.translateY" 
		"IK_Lamp_RigRN.placeHolderList[32]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.translateZ" 
		"IK_Lamp_RigRN.placeHolderList[33]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.visibility" 
		"IK_Lamp_RigRN.placeHolderList[34]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.rotateX" 
		"IK_Lamp_RigRN.placeHolderList[35]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.rotateY" 
		"IK_Lamp_RigRN.placeHolderList[36]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.rotateZ" 
		"IK_Lamp_RigRN.placeHolderList[37]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.scaleX" 
		"IK_Lamp_RigRN.placeHolderList[38]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.scaleY" 
		"IK_Lamp_RigRN.placeHolderList[39]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_grp|IK_Lamp_Rig:upper_arm_pv_ctrl_offset_grp|IK_Lamp_Rig:upper_arm_pv_ctrl.scaleZ" 
		"IK_Lamp_RigRN.placeHolderList[40]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.rotateX" 
		"IK_Lamp_RigRN.placeHolderList[41]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.rotateY" 
		"IK_Lamp_RigRN.placeHolderList[42]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.rotateZ" 
		"IK_Lamp_RigRN.placeHolderList[43]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.translateX" 
		"IK_Lamp_RigRN.placeHolderList[44]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.translateY" 
		"IK_Lamp_RigRN.placeHolderList[45]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.translateZ" 
		"IK_Lamp_RigRN.placeHolderList[46]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.visibility" 
		"IK_Lamp_RigRN.placeHolderList[47]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.scaleX" 
		"IK_Lamp_RigRN.placeHolderList[48]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.scaleY" 
		"IK_Lamp_RigRN.placeHolderList[49]" ""
		5 4 "IK_Lamp_RigRN" "|IK_Lamp_Rig:Lamp|IK_Lamp_Rig:Controls|IK_Lamp_Rig:lamp_ctrl_grp|IK_Lamp_Rig:lamp_ctrl|IK_Lamp_Rig:arm_IK_ctrl_main_grp|IK_Lamp_Rig:head_ctrl_grp|IK_Lamp_Rig:head_ctrl.scaleZ" 
		"IK_Lamp_RigRN.placeHolderList[50]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "7CA79A2E-4F39-1B6C-9473-6BA2112D25AC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 573\n            -height 322\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 573\n            -height 321\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 573\n            -height 321\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1153\n            -height 688\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1153\\n    -height 688\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1153\\n    -height 688\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "87BE6AF3-4C9C-6AA5-23F3-A4912993CED8";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode animCurveTL -n "lamp_ctrl_translateX";
	rename -uid "3AFAF9EA-45D6-62EB-715A-D399FED271CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 37 4.3572558550690266 42 22.99279351339289
		 47 30.961456682826409 50 20.807204851471205 53 4.0652784420370054 55 0 58 0 62 1.3381225367170675
		 66 1.1822247820668368 70 0.76803910152373778 73 0.82833173459783982 75 0.509971878161946
		 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 0.19725437285453712 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 -0.98035234094164492 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 0.19725437285453712 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 -0.98035234094164492 0;
createNode animCurveTL -n "lamp_ctrl_translateY";
	rename -uid "CD9D0BC2-424B-230B-5DA3-06899A3B01BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 37 5.1105244694371113 42 23.805087605292137
		 47 35.672788341718729 50 51.836334633537902 53 65.932945837322947 55 69.467130906352878
		 58 69.467130906352878 62 70.143878826255033 66 69.467130906352878 70 69.07070522780829
		 73 69.780899854487203 75 69.702858237483142 77 69.467;
	setAttr -s 15 ".kit[7:14]"  2 2 18 2 18 9 9 2;
	setAttr -s 15 ".kot[7:14]"  2 2 18 2 18 9 9 2;
createNode animCurveTL -n "lamp_ctrl_translateZ";
	rename -uid "F787CD35-47E9-43F1-1477-F2A183DB4E60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 37 0 42 0 47 0 50 0 53 0 55 0 58 0
		 62 0 66 0.7909577554417293 70 0 73 -0.26514113787076532 75 0 77 0;
	setAttr -s 15 ".kit[7:14]"  2 2 18 1 18 18 18 18;
	setAttr -s 15 ".kot[7:14]"  2 2 18 1 18 18 18 18;
	setAttr -s 15 ".kix[10:14]"  1 0.26620806893303012 1 1 1;
	setAttr -s 15 ".kiy[10:14]"  0 -0.96391558968352986 0 0 0;
	setAttr -s 15 ".kox[10:14]"  1 0.26620806893303012 1 1 1;
	setAttr -s 15 ".koy[10:14]"  0 -0.96391558968352975 0 0 0;
createNode animCurveTL -n "lower_arm_ctrl_translateX";
	rename -uid "CCF49EDB-4944-1E6B-CDC0-C98665565EBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "lower_arm_ctrl_translateY";
	rename -uid "8B0D8F13-4E74-693D-F04D-30976AD871DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "lower_arm_ctrl_translateZ";
	rename -uid "AFE45522-436B-F769-BFFF-7DAC7EA698DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "upper_arm_pv_ctrl_translateX";
	rename -uid "163637B7-40AB-63DB-11D9-E795A5E1565D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 0 24 -5.6719632710689365e-16
		 28 -5.6719632710689365e-16 32 -5.6719632710689365e-16;
createNode animCurveTL -n "upper_arm_pv_ctrl_translateY";
	rename -uid "A987AC83-427B-16F3-D0A7-B08D8BEF10C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 0 24 6.8348316126841126e-16
		 28 6.8348316126841126e-16 32 6.8348316126841126e-16;
createNode animCurveTL -n "upper_arm_pv_ctrl_translateZ";
	rename -uid "285A9849-4612-799D-42D7-37BC3AD194D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -3.9443045261050599e-31 15 0 20 4.1145462695399271
		 24 -3.9402026940734816 28 5.0320548290482074 32 0;
createNode animCurveTL -n "base_ctrl_translateX";
	rename -uid "9A10D591-48BE-2768-25D7-DCB9E10F490C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 38 0 41 0 42 0 47 0 50 0 55 0 58 0
		 62 0 66 0 70 0 73 0 75 0 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "base_ctrl_translateY";
	rename -uid "DEF2D01D-4A21-CED2-4D9A-DFBC3B144524";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 38 0 41 0 42 0 47 0 50 0 55 0 58 0
		 62 0 66 0 70 0 73 0 75 0 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "base_ctrl_translateZ";
	rename -uid "185B20A0-48DF-727D-D8D2-5BA2E884C76F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 38 0 41 0 42 0 47 0 50 0 55 0 58 0
		 62 0 66 0 70 0 73 0 75 0 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "lamp_ctrl_visibility";
	rename -uid "08189BD9-4184-98DF-4B59-B4B6D4BFF6FD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 1 35 1 37 1 42 1 47 1 50 1 53 1 55 1 58 1
		 62 1 66 1 70 1 73 1 75 1 77 1;
	setAttr -s 15 ".kit[0:14]"  9 9 9 9 9 9 9 9 
		1 9 1 9 9 9 9;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "lamp_ctrl_rotateX";
	rename -uid "14123375-47F1-2FAB-3D66-719B4C3135A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 37 0 42 0 47 0 50 0 53 0 55 0 58 0
		 62 0 66 0 70 0 73 0 75 0 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "lamp_ctrl_rotateY";
	rename -uid "B3F638D0-48E1-30F7-BC38-E090AA4A6973";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 37 0 42 0 47 0 50 0 53 0 55 0 58 0
		 62 0 66 0 70 0 73 0 75 0 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "lamp_ctrl_rotateZ";
	rename -uid "F7EFE988-4184-62AE-104B-E588960A4630";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 37 0 42 0 47 0 50 0 53 0 55 0 58 0
		 62 0 66 0 70 0 73 0 75 0 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "lamp_ctrl_scaleX";
	rename -uid "34796EE8-4AA1-64D7-47F3-40857788C820";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 1 35 1 37 1 42 1 47 1 50 1 53 1 55 1 58 1
		 62 1 66 1 70 1 73 1 75 1 77 1;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "lamp_ctrl_scaleY";
	rename -uid "75C491A3-49D2-CDEB-C323-4A98972C42BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 1 35 1 37 1 42 1 47 1 50 1 53 1 55 1 58 1
		 62 1 66 1 70 1 73 1 75 1 77 1;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "lamp_ctrl_scaleZ";
	rename -uid "AF26F2A0-448D-70FB-603C-BEA1AF3CE60E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 1 35 1 37 1 42 1 47 1 50 1 53 1 55 1 58 1
		 62 1 66 1 70 1 73 1 75 1 77 1;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "upper_arm_pv_ctrl_visibility";
	rename -uid "74C5DC89-4184-9E98-0D2C-BBBF58059C3D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 15 1 20 1 24 1 28 1 32 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "upper_arm_pv_ctrl_rotateX";
	rename -uid "E5FF004F-429E-CC4D-CE18-1A901B0F1F61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 0 24 0 28 0 32 0;
createNode animCurveTA -n "upper_arm_pv_ctrl_rotateY";
	rename -uid "85E44F9E-4D41-D63D-B79C-B38AAA3CB006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 0 24 0 28 0 32 0;
createNode animCurveTA -n "upper_arm_pv_ctrl_rotateZ";
	rename -uid "13D0C5F2-47B7-BCA9-AE0C-13A2CA453B09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 15 0 20 0 24 0 28 0 32 0;
createNode animCurveTU -n "upper_arm_pv_ctrl_scaleX";
	rename -uid "B0A973C3-4CAB-ED56-0741-DFADA438ACFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 15 0.99999999999999989
		 20 0.99999999999999989 24 0.99999999999999989 28 0.99999999999999989 32 0.99999999999999989;
createNode animCurveTU -n "upper_arm_pv_ctrl_scaleY";
	rename -uid "D0E27BB5-45F4-8295-348B-749023F36F34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.99999999999999989 15 0.99999999999999989
		 20 0.99999999999999989 24 0.99999999999999989 28 0.99999999999999989 32 0.99999999999999989;
createNode animCurveTU -n "upper_arm_pv_ctrl_scaleZ";
	rename -uid "754E0B0D-4861-DF00-AE12-6EAB2B4DAB21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 15 1 20 1 24 1 28 1 32 1;
createNode animCurveTU -n "base_ctrl_visibility";
	rename -uid "1B2093D9-4269-1A6F-72B1-4B832E94761C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 1 35 1 38 1 41 1 42 1 47 1 50 1 55 1 58 1
		 62 1 66 1 70 1 73 1 75 1 77 1;
	setAttr -s 15 ".kit[0:14]"  9 9 9 9 9 9 9 9 
		1 9 1 9 9 9 9;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "base_ctrl_rotateX";
	rename -uid "A64FA03A-4A6A-EA55-2958-C58094F6391F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 38 0 41 0 42 0 47 0 50 0 55 0 58 0
		 62 0 66 0 70 0 73 0 75 0 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "base_ctrl_rotateY";
	rename -uid "09658243-4B7D-F0FD-0436-A59229AF60D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 38 -54.3611676575592 41 -28.546463677773357
		 42 -1.3229592401057124 47 20.184672576900738 50 47.189242505904055 55 0 58 0 62 -11.054122220396911
		 66 0 70 7.1679576940137038 73 0 75 -4.207211474075879 77 0;
	setAttr -s 15 ".kit[7:14]"  2 2 18 9 18 2 18 2;
	setAttr -s 15 ".kot[7:14]"  2 2 18 9 18 2 18 2;
createNode animCurveTA -n "base_ctrl_rotateZ";
	rename -uid "79A2BA1B-4E4D-CF40-306B-399B8FEC61A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 0 35 0 38 0 41 0 42 0 47 0 50 0 55 0 58 0
		 62 0 66 10.76755858837077 70 0 73 -7.168 75 0 77 0;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 2;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 2;
	setAttr -s 15 ".kix[8:14]"  1 1 1 0.68169479997136428 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 -0.73163665824779578 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 0.68169479997136428 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 -0.73163665824779567 0 0 0;
createNode animCurveTU -n "base_ctrl_scaleX";
	rename -uid "739F34FF-4DFE-4611-6955-1B9D82F3E87B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 1 35 1 38 1 41 1 42 1 47 1 50 1 55 1 58 1
		 62 1 66 1 70 1 73 1 75 1 77 1;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "base_ctrl_scaleY";
	rename -uid "8BBB4611-4605-5191-1A74-F2B39840424C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 1 35 1 38 1 41 1 42 1 47 1 50 1 55 1 58 1
		 62 1 66 1 70 1 73 1 75 1 77 1;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "base_ctrl_scaleZ";
	rename -uid "7EDA2B60-42B3-D52F-34C7-ABA5976761EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 1 35 1 38 1 41 1 42 1 47 1 50 1 55 1 58 1
		 62 1 66 1 70 1 73 1 75 1 77 1;
	setAttr -s 15 ".kit[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kot[8:14]"  1 18 1 18 18 18 18;
	setAttr -s 15 ".kix[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[8:14]"  0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[8:14]"  1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[8:14]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "lower_arm_ctrl_visibility";
	rename -uid "778E394B-4414-A383-DB9B-C89B3AA816BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "lower_arm_ctrl_rotateX";
	rename -uid "6AFDD34B-4727-59F8-CF1B-4BBC5655639E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "lower_arm_ctrl_rotateY";
	rename -uid "472002B7-44E2-65F1-A6F1-27AB3E0B7F4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "lower_arm_ctrl_rotateZ";
	rename -uid "ED7EF1E7-4644-854C-1855-37A916E83BA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "lower_arm_ctrl_scaleX";
	rename -uid "2D420A65-48D0-EBA0-2A6A-C6B7ABAAADA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "lower_arm_ctrl_scaleY";
	rename -uid "0EF90C63-427D-60DC-74A7-FB9C606F1A51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "lower_arm_ctrl_scaleZ";
	rename -uid "15D9D2D5-466C-93C1-2C9E-ABA66C13F052";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "head_ctrl_translateX";
	rename -uid "DA704D87-49A9-8F41-A244-8AA6F5F9E87D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 0 15 -8.3082457105847318 20 -8.9086252801887849
		 24 -9.2082505931113872 28 -9.5719596620619498 32 -9.8067866736573901 36 19.564961089398558
		 39 15.898344429452063 42 7.9766417690738356 47 -3.1724781706950034 50 -9.1060563654249442
		 53 -9.1482963600405327 55 -8.468972113768503 58 -3.6234581627578568 62 6.1443880019155896
		 66 -1.3397847605787081 70 -4.63799382669694 74 -1.6073289643756157 76 0;
createNode animCurveTL -n "head_ctrl_translateY";
	rename -uid "4DDF124D-4614-37D1-BC81-22835691C3C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 0 15 3.4461724866453372 20 4.1696421330145625
		 24 4.5306967560530165 28 4.9689736142553711 32 5.2519449604471449 36 11.120600688417465
		 39 10.112717191939813 42 7.9351911193029112 47 9.3199522400112489 50 -3.7170015188697016
		 53 -16.463746730636451 55 -15.492334651580864 58 -4.0087572380941152 62 9.484861138540559
		 66 4.4769557231044619 70 2.8453765128496098 74 -2.224827080868419 76 0;
createNode animCurveTL -n "head_ctrl_translateZ";
	rename -uid "4DB48EDC-4038-2DA6-C134-F7B059575041";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 -7.1054273576010019e-15 15 0 20 1.295444376681961
		 24 1.295444376681961 28 1.295444376681961 32 1.295444376681961 36 0 39 1.295444376681961
		 42 0 47 0 50 0 53 0 55 0 58 0 62 0 66 0 70 0 74 0 76 0;
createNode animCurveTU -n "head_ctrl_visibility";
	rename -uid "182D7BF0-480D-361B-3E6E-A6940AFA4A44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 1 15 1 20 1 24 1 28 1 32 1 36 1 39 1 42 1
		 47 1 50 1 53 1 55 1 58 1 62 1 66 1 70 1 74 1 76 1;
	setAttr -s 19 ".kot[0:18]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5;
createNode animCurveTA -n "head_ctrl_rotateX";
	rename -uid "2879821B-4AFD-4DFA-AB65-BA8945FF5813";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 0 15 0 20 -5.8496128101291704 24 -2.3056500661007826
		 28 -5.8473858424291016 32 0 36 0 39 0 42 0 47 0 50 0 53 0 55 0 58 0 62 0 66 0 70 0
		 74 0 76 0;
createNode animCurveTA -n "head_ctrl_rotateY";
	rename -uid "E6CF1E99-406A-887E-3631-72A248D4B282";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 0 15 0 20 0 24 0 28 0 32 0 36 0 39 0 42 0
		 47 0 50 0 53 0 55 0 58 0 62 0 66 0 70 0 74 0 76 0;
createNode animCurveTA -n "head_ctrl_rotateZ";
	rename -uid "B3F6F8AD-4398-21A6-FA9B-CEBBA477A05B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 -21.191884466556651 15 -55.962838633501434
		 20 -55.962838633501455 24 -55.96283863350147 28 -55.96283863350147 32 -55.962838633501505
		 36 -55.962838633501505 39 -55.962838633501505 42 -48.312664539112781 47 -28.57240466821715
		 50 -28.57240466821715 53 -28.57240466821715 55 -28.57240466821715 58 -28.57240466821715
		 62 -50.229181706123136 66 -50.229181706123136 70 -39.888176084500031 74 -24.481122254303944
		 76 -20.851324826512013;
createNode animCurveTU -n "head_ctrl_scaleX";
	rename -uid "87F4C349-463D-2643-5644-B387F74D9E73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 1 15 1 20 1 24 1 28 1 32 1 36 1 39 1 42 1
		 47 1 50 1 53 1 55 1 58 1 62 1 66 1 70 1 74 1 76 1;
createNode animCurveTU -n "head_ctrl_scaleY";
	rename -uid "73406D9B-4C6E-BF7E-508F-2AA5EB5B08D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 1 15 1 20 1 24 1 28 1 32 1 36 1 39 1 42 1
		 47 1 50 1 53 1 55 1 58 1 62 1 66 1 70 1 74 1 76 1;
createNode animCurveTU -n "head_ctrl_scaleZ";
	rename -uid "7071D24A-41F1-7438-3708-5A88EDC6324A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 1 15 1 20 1 24 1 28 1 32 1 36 1 39 1 42 1
		 47 1 50 1 53 1 55 1 58 1 62 1 66 1 70 1 74 1 76 1;
createNode polyPlane -n "polyPlane1";
	rename -uid "C8605CD4-4627-8AC8-B7B6-879A3D3254A2";
	setAttr ".cuv" 2;
select -ne :time1;
	setAttr ".o" 80;
	setAttr ".unw" 80;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
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
connectAttr "lamp_ctrl_translateX.o" "IK_Lamp_RigRN.phl[1]";
connectAttr "lamp_ctrl_translateY.o" "IK_Lamp_RigRN.phl[2]";
connectAttr "lamp_ctrl_translateZ.o" "IK_Lamp_RigRN.phl[3]";
connectAttr "lamp_ctrl_rotateX.o" "IK_Lamp_RigRN.phl[4]";
connectAttr "lamp_ctrl_rotateY.o" "IK_Lamp_RigRN.phl[5]";
connectAttr "lamp_ctrl_rotateZ.o" "IK_Lamp_RigRN.phl[6]";
connectAttr "lamp_ctrl_scaleX.o" "IK_Lamp_RigRN.phl[7]";
connectAttr "lamp_ctrl_scaleY.o" "IK_Lamp_RigRN.phl[8]";
connectAttr "lamp_ctrl_scaleZ.o" "IK_Lamp_RigRN.phl[9]";
connectAttr "lamp_ctrl_visibility.o" "IK_Lamp_RigRN.phl[10]";
connectAttr "base_ctrl_translateX.o" "IK_Lamp_RigRN.phl[11]";
connectAttr "base_ctrl_translateY.o" "IK_Lamp_RigRN.phl[12]";
connectAttr "base_ctrl_translateZ.o" "IK_Lamp_RigRN.phl[13]";
connectAttr "base_ctrl_rotateX.o" "IK_Lamp_RigRN.phl[14]";
connectAttr "base_ctrl_rotateY.o" "IK_Lamp_RigRN.phl[15]";
connectAttr "base_ctrl_rotateZ.o" "IK_Lamp_RigRN.phl[16]";
connectAttr "base_ctrl_scaleX.o" "IK_Lamp_RigRN.phl[17]";
connectAttr "base_ctrl_scaleY.o" "IK_Lamp_RigRN.phl[18]";
connectAttr "base_ctrl_scaleZ.o" "IK_Lamp_RigRN.phl[19]";
connectAttr "base_ctrl_visibility.o" "IK_Lamp_RigRN.phl[20]";
connectAttr "lower_arm_ctrl_translateX.o" "IK_Lamp_RigRN.phl[21]";
connectAttr "lower_arm_ctrl_translateY.o" "IK_Lamp_RigRN.phl[22]";
connectAttr "lower_arm_ctrl_translateZ.o" "IK_Lamp_RigRN.phl[23]";
connectAttr "lower_arm_ctrl_rotateX.o" "IK_Lamp_RigRN.phl[24]";
connectAttr "lower_arm_ctrl_rotateY.o" "IK_Lamp_RigRN.phl[25]";
connectAttr "lower_arm_ctrl_rotateZ.o" "IK_Lamp_RigRN.phl[26]";
connectAttr "lower_arm_ctrl_visibility.o" "IK_Lamp_RigRN.phl[27]";
connectAttr "lower_arm_ctrl_scaleX.o" "IK_Lamp_RigRN.phl[28]";
connectAttr "lower_arm_ctrl_scaleY.o" "IK_Lamp_RigRN.phl[29]";
connectAttr "lower_arm_ctrl_scaleZ.o" "IK_Lamp_RigRN.phl[30]";
connectAttr "upper_arm_pv_ctrl_translateX.o" "IK_Lamp_RigRN.phl[31]";
connectAttr "upper_arm_pv_ctrl_translateY.o" "IK_Lamp_RigRN.phl[32]";
connectAttr "upper_arm_pv_ctrl_translateZ.o" "IK_Lamp_RigRN.phl[33]";
connectAttr "upper_arm_pv_ctrl_visibility.o" "IK_Lamp_RigRN.phl[34]";
connectAttr "upper_arm_pv_ctrl_rotateX.o" "IK_Lamp_RigRN.phl[35]";
connectAttr "upper_arm_pv_ctrl_rotateY.o" "IK_Lamp_RigRN.phl[36]";
connectAttr "upper_arm_pv_ctrl_rotateZ.o" "IK_Lamp_RigRN.phl[37]";
connectAttr "upper_arm_pv_ctrl_scaleX.o" "IK_Lamp_RigRN.phl[38]";
connectAttr "upper_arm_pv_ctrl_scaleY.o" "IK_Lamp_RigRN.phl[39]";
connectAttr "upper_arm_pv_ctrl_scaleZ.o" "IK_Lamp_RigRN.phl[40]";
connectAttr "head_ctrl_rotateX.o" "IK_Lamp_RigRN.phl[41]";
connectAttr "head_ctrl_rotateY.o" "IK_Lamp_RigRN.phl[42]";
connectAttr "head_ctrl_rotateZ.o" "IK_Lamp_RigRN.phl[43]";
connectAttr "head_ctrl_translateX.o" "IK_Lamp_RigRN.phl[44]";
connectAttr "head_ctrl_translateY.o" "IK_Lamp_RigRN.phl[45]";
connectAttr "head_ctrl_translateZ.o" "IK_Lamp_RigRN.phl[46]";
connectAttr "head_ctrl_visibility.o" "IK_Lamp_RigRN.phl[47]";
connectAttr "head_ctrl_scaleX.o" "IK_Lamp_RigRN.phl[48]";
connectAttr "head_ctrl_scaleY.o" "IK_Lamp_RigRN.phl[49]";
connectAttr "head_ctrl_scaleZ.o" "IK_Lamp_RigRN.phl[50]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
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
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Lamp_Animation.ma
