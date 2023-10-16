//Maya ASCII 2023 scene
//Name: GrassWalking.ma
//Last modified: Fri, Oct 13, 2023 10:38:00 PM
//Codeset: 1252
file -rdi 1 -ns "Ultimate_Walker_Rig" -rfn "Ultimate_Walker_RigRN" -op "v=0;"
		 -typ "mayaAscii" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/LearningProject2023/Assets/Maya//scenes/Ultimate_Walker_Rig.ma";
file -rdi 1 -ns "Walking_Animation" -dr 1 -rfn "Walking_AnimationRN" -op "v=0;"
		 -typ "mayaAscii" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/LearningProject2023/Assets/Maya//scenes/Walking Animation.ma";
file -r -ns "Ultimate_Walker_Rig" -dr 1 -rfn "Ultimate_Walker_RigRN" -op "v=0;" 
		-typ "mayaAscii" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/LearningProject2023/Assets/Maya//scenes/Ultimate_Walker_Rig.ma";
file -r -ns "Walking_Animation" -dr 1 -rfn "Walking_AnimationRN" -op "v=0;" -typ
		 "mayaAscii" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/LearningProject2023/Assets/Maya//scenes/Walking Animation.ma";
requires maya "2023";
requires -nodeType "houdiniAsset" "houdiniEngine" "5.0 (API: 8)";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "2F834456-4433-2CE0-AAC4-D0B36144419F";
createNode transform -s -n "persp";
	rename -uid "0CF19639-49A0-4C7C-836F-02A6FE9173C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.732152694996145 11.084287238256062 -0.52340654724323854 ;
	setAttr ".r" -type "double3" -12.938352729559556 -89.799999999991869 2.277909122823682e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8C3B1126-413F-7625-46A4-BC8396845FA2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 21.439454398068982;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4819B076-44D7-34CC-3A8D-AE9ED3813961";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "959D7154-48F3-FF3D-1351-11A64F9020AA";
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
	rename -uid "DDF53778-434D-4116-E251-F7984BF48A21";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AC10375E-4973-3768-90CF-D7A0054CD2B7";
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
	rename -uid "688B731D-4F55-2B4B-F11E-E7843ABBF1E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E38042FB-4C3F-A615-8E77-24AEFE93076F";
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
createNode houdiniAsset -n "Natalie__dev__GrassBall__1_01";
	rename -uid "C061EF81-4161-2D1B-DDE8-EBA830AF7240";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 6;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_0__folder" -ln "houdiniAssetParm_stdswitcher3_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher3_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher3_1__folder" -ln "houdiniAssetParm_stdswitcher3_1__folder" 
		-nn "Subnet" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_outputobj" -ln "houdiniAssetParm_outputobj" 
		-nn "Output Transform" -min 0 -max 6 -en "No Object:Input Object 1:Input Object 2:Input Object 3:Input Object 4:_separator_:Grass" 
		-at "enum" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_visibleobjects" -ln "houdiniAssetParm_visibleobjects" 
		-nn "Visible Children" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher3_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_dist" -ln "houdiniAssetParm_dist" 
		-nn "Length" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_rows" -ln "houdiniAssetParm_rows" 
		-nn "Rows" -dv 3 -min 3 -smn 3 -smx 50 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_cols" -ln "houdiniAssetParm_cols" 
		-nn "Columns" -dv 3 -min 3 -smn 3 -smx 50 -at "long" -p "houdiniAssetParm";
	addAttr -is true -ci true -sn "houdiniAssetParm_npts" -ln "houdiniAssetParm_npts" 
		-nn "Force Total Count" -smn 1 -smx 100000 -at "long" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "C:/Users/ferri/OneDrive/Documents/houdini19.5/otls/object_Natalie.dev.GrassBall.1.0.hdanc";
	setAttr ".assetName" -type "string" "Natalie::dev::Object/GrassBall::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr -cb on ".houdiniAssetParm_outputobj" 1;
	setAttr ".houdiniAssetParm_visibleobjects" -type "string" "*";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_dist" 0.15000000596046448;
	setAttr -cb on ".houdiniAssetParm_rows" 20;
	setAttr -cb on ".houdiniAssetParm_cols" 20;
	setAttr -cb on ".houdiniAssetParm_npts" 1000;
createNode transform -n "Grass" -p "Natalie__dev__GrassBall__1_01";
	rename -uid "80746353-4B88-0D5C-D316-25A5824A86B6";
createNode transform -n "merge1_0" -p "Grass";
	rename -uid "44012B5E-43B7-CB76-08D1-2FB7D7B7538C";
createNode mesh -n "merge1_0Shape" -p "merge1_0";
	rename -uid "9F06EE76-4DA5-3BB7-78F0-2BA249C65B6A";
	addAttr -ci true -sn "pscale" -ln "pscale" -dt "floatArray";
	addAttr -ci true -sn "velocity" -ln "velocity" -dt "vectorArray";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uv";
	setAttr ".cuvs" -type "string" "uv";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "Cd";
	setAttr ".clst[0].clsn" -type "string" "Cd";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "collision" -p "Natalie__dev__GrassBall__1_01";
	rename -uid "C9D476CF-430C-8975-46BD-00906C18E991";
createNode transform -n "display" -p "Natalie__dev__GrassBall__1_01";
	rename -uid "DE87E860-4C08-5D32-C686-D6847842DA20";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "45C8D9B4-4096-13B0-A0D8-17A32232EA5C";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2E011E27-4D2B-AE04-F4B1-E7A07923CF46";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "BFC2BE37-450F-CAA3-3A76-559612CB0634";
createNode displayLayerManager -n "layerManager";
	rename -uid "2FD2CD8B-4B26-49D9-ADD1-EAA7797B8FCA";
createNode displayLayer -n "defaultLayer";
	rename -uid "30A2350F-48E7-CCF1-806F-86A5296691F4";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C2BB109F-4BB6-4ECD-B5DF-20865BDE43CE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C087A334-46D9-E644-D230-2B9DC5BE261C";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "EAD37968-4FE9-F02C-6713-6A84EF341550";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "1D6C1ECF-4D03-9D46-994B-D09D97EDF3E3";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "18230B3D-4959-B830-0B5C-578535E0A6C2";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "460A20DD-410A-B633-CD09-87BFE56B2CF1";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "Ultimate_Walker_RigRN";
	rename -uid "E5AACAFB-413B-B653-84AA-18A76A8757C5";
	setAttr -s 506 ".phl";
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
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Ultimate_Walker_RigRN"
		"Ultimate_Walker_RigRN" 0
		"Ultimate_Walker_RigRN" 517
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translate" 
		" -type \"double3\" 0.38842644293601181 5.86367119534477688 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateX" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateY" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "translateZ" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotate" 
		" -type \"double3\" 0 90 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotateX" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotateY" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotateZ" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotatePivot" 
		" -type \"double3\" 0 0 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotatePivotTranslate" 
		" -type \"double3\" 0 0 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "scalePivot" 
		" -type \"double3\" 0 0 0"
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main.message" 
		"Ultimate_Walker_RigRN.placeHolderList[1]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root.message" 
		"Ultimate_Walker_RigRN.placeHolderList[2]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root|Ultimate_Walker_Rig:CTRL_RootShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[3]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[4]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[5]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[6]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_rev_rig_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[7]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_toe_rev_rig_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[8]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_ball_rev_rig_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[9]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_ball_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_ankle_rev_rig_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[10]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf__ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[11]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf__ik_jnt|Ultimate_Walker_Rig:walker_lf_ball_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[12]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_lf__ik_jnt|Ultimate_Walker_Rig:walker_lf_ball_ik_jnt|Ultimate_Walker_Rig:walker_lf_toe_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[13]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_lf_reverseFoot_rig_grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[14]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[15]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[16]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_lf_knee_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[17]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_lf_knee_fk_jnt|Ultimate_Walker_Rig:walker_lf_ankle_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[18]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_lf_knee_fk_jnt|Ultimate_Walker_Rig:walker_lf_ankle_fk_jnt|Ultimate_Walker_Rig:walker_lf_ball_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[19]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_lf_knee_fk_jnt|Ultimate_Walker_Rig:walker_lf_ankle_fk_jnt|Ultimate_Walker_Rig:walker_lf_ball_fk_jnt|Ultimate_Walker_Rig:walker_lf_toe_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[20]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_lf_knee_fk_jnt|Ultimate_Walker_Rig:walker_lf_ankle_fk_jnt|Ultimate_Walker_Rig:walker_lf_ball_fk_jnt|Ultimate_Walker_Rig:walker_lf_ballCtrl_fk_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[21]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_lf_knee_fk_jnt|Ultimate_Walker_Rig:walker_lf_ankle_fk_jnt|Ultimate_Walker_Rig:walker_lf_ankleCtrl_fk_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[22]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_lf_knee_fk_jnt|Ultimate_Walker_Rig:walker_lf_kneeCtrl_fk_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[23]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_fk_jnt_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[24]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp|Ultimate_Walker_Rig:walker_lf_legFK_Grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[25]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[26]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[27]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[28]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[29]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[30]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ball_fk_ctrl_frzGrp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[31]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[32]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[33]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[34]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[35]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[36]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_ankle_fk_ctrl_frzGrp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[37]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[38]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[39]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[40]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[41]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[42]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_fk_ctrl_frzGrp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[43]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegupJntFkCtrl_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[44]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegupJntFkCtrl_grp|Ultimate_Walker_Rig:walker_lf_upLegupJntFkCtrl_grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[45]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[46]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[47]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[48]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl_frzGrp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[49]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_upLeg_fk_ctrl_frzGrp_orientConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[50]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legIK_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[51]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legIK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[52]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legIK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_ik_jnt|Ultimate_Walker_Rig:walker_lf_knee_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[53]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legIK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_ik_jnt|Ultimate_Walker_Rig:walker_lf_knee_ik_jnt|Ultimate_Walker_Rig:walker_lf_ankle_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[54]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legIK_Grp|Ultimate_Walker_Rig:walker_lf_upLeg_ik_jnt|Ultimate_Walker_Rig:walker_lf_knee_ik_jnt|Ultimate_Walker_Rig:effector2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[55]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legIK_Grp|Ultimate_Walker_Rig:walker_lf_legIK_Grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[56]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[57]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.pvControl" 
		"Ultimate_Walker_RigRN.placeHolderList[58]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.legTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[59]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.heelTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[60]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.ballTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[61]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.toeTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[62]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[63]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[64]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[65]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[66]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[67]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[68]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.footRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[69]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.footBreak" 
		"Ultimate_Walker_RigRN.placeHolderList[70]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.toeRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[71]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[72]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrl|Ultimate_Walker_Rig:walker_lf_heel_ik_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[73]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_leg_ikHandle.message" 
		"Ultimate_Walker_RigRN.placeHolderList[74]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_leg_ikHandle|Ultimate_Walker_Rig:walker_lf_leg_ikHandle_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[75]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_leg_ikHandle|Ultimate_Walker_Rig:walker_lf_knee_pv_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[76]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_foot_ctrl.ikFkBlend" 
		"Ultimate_Walker_RigRN.placeHolderList[77]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_foot_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[78]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_foot_ctrl|Ultimate_Walker_Rig:walker_lf_foot_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[79]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_foot_ctrl|Ultimate_Walker_Rig:walker_lf_foot_ctrl_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[80]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[81]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_line_loc.message" 
		"Ultimate_Walker_RigRN.placeHolderList[82]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_line_loc|Ultimate_Walker_Rig:walker_lf_knee_line_locShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[83]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_line_loc|Ultimate_Walker_Rig:walker_lf_knee_line_loc_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[84]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_line_loc|Ultimate_Walker_Rig:abRTLine_walker_lf_knee_line_loc.message" 
		"Ultimate_Walker_RigRN.placeHolderList[85]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_knee_line_loc|Ultimate_Walker_Rig:abRTLine_walker_lf_knee_line_loc|Ultimate_Walker_Rig:abRTLine_walker_lf_knee_line_locShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[86]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[87]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_lfLegIkCtrlSpcParCon.message" 
		"Ultimate_Walker_RigRN.placeHolderList[88]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[89]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[90]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[91]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.lfLegIkCtrl" 
		"Ultimate_Walker_RigRN.placeHolderList[92]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[93]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[94]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_annLoc.message" 
		"Ultimate_Walker_RigRN.placeHolderList[95]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_annLoc|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_annLocShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[96]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_lf_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_annLoc|Ultimate_Walker_Rig:walker_lf_knee_pv_ctrl_annLoc_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[97]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist.message" 
		"Ultimate_Walker_RigRN.placeHolderList[98]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist|Ultimate_Walker_Rig:walker_lf_legStrDist_distShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[99]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_sp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[100]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_sp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_spShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[101]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_sp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_sp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[102]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_ep.message" 
		"Ultimate_Walker_RigRN.placeHolderList[103]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_ep|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_epShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[104]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_ep|Ultimate_Walker_Rig:walker_lf_legStrDist_dist_ep_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[105]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist.message" 
		"Ultimate_Walker_RigRN.placeHolderList[106]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_distShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[107]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_sp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[108]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_sp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_spShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[109]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_sp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_sp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[110]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_ep.message" 
		"Ultimate_Walker_RigRN.placeHolderList[111]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_ep|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_epShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[112]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_ep|Ultimate_Walker_Rig:walker_lf_upLegPvCtrl_dist_ep_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[113]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist.message" 
		"Ultimate_Walker_RigRN.placeHolderList[114]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_distShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[115]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_sp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[116]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_sp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_spShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[117]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_sp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_sp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[118]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_ep.message" 
		"Ultimate_Walker_RigRN.placeHolderList[119]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_ep|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_epShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[120]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_ep|Ultimate_Walker_Rig:walker_lf_legPvIkCtrl_dist_ep_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[121]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_legIkCtrl_space_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[122]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[123]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Knee_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[124]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Ankle_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[125]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Ankle_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Ball_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[126]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Ankle_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Ball_jnt|Ultimate_Walker_Rig:walker_lf_ankleReader_ball_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[127]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Ankle_jnt|Ultimate_Walker_Rig:walker_lf_ankleReader_ankle_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[128]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_lf_ankleReader_knee_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[129]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[130]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lf_leg_rig_grp|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_lf_ankleBallReader_UpLeg_jnt_orientConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[131]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_charVars.message" 
		"Ultimate_Walker_RigRN.placeHolderList[132]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lfLegIkCtrl_space_switch_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[133]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_lfLegIkCtrl_space_switch_grp|Ultimate_Walker_Rig:walker_lfLegIkCtrlSpace_par_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[134]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[135]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[136]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_rev_rig_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[137]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_toe_rev_rig_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[138]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_ball_rev_rig_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[139]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_ball_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_ankle_rev_rig_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[140]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt__ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[141]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt__ik_jnt|Ultimate_Walker_Rig:walker_rt_ball_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[142]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt_toe_rev_rig_jnt|Ultimate_Walker_Rig:walker_rt__ik_jnt|Ultimate_Walker_Rig:walker_rt_ball_ik_jnt|Ultimate_Walker_Rig:walker_rt_toe_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[143]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp|Ultimate_Walker_Rig:walker_rt_reverseFoot_rig_grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[144]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[145]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[146]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_rt_knee_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[147]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_rt_knee_fk_jnt|Ultimate_Walker_Rig:walker_rt_ankle_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[148]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_rt_knee_fk_jnt|Ultimate_Walker_Rig:walker_rt_ankle_fk_jnt|Ultimate_Walker_Rig:walker_rt_ball_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[149]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_rt_knee_fk_jnt|Ultimate_Walker_Rig:walker_rt_ankle_fk_jnt|Ultimate_Walker_Rig:walker_rt_ball_fk_jnt|Ultimate_Walker_Rig:walker_rt_toe_fk_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[150]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_rt_knee_fk_jnt|Ultimate_Walker_Rig:walker_rt_ankle_fk_jnt|Ultimate_Walker_Rig:walker_rt_ball_fk_jnt|Ultimate_Walker_Rig:walker_rt_ballCtrl_fk_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[151]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_rt_knee_fk_jnt|Ultimate_Walker_Rig:walker_rt_ankle_fk_jnt|Ultimate_Walker_Rig:walker_rt_ankleCtrl_fk_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[152]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_rt_knee_fk_jnt|Ultimate_Walker_Rig:walker_rt_kneeCtrl_fk_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[153]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_fk_jnt_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[154]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp|Ultimate_Walker_Rig:walker_rt_legFK_Grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[155]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[156]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[157]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[158]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[159]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[160]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ball_fk_ctrl_frzGrp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[161]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[162]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[163]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[164]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[165]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[166]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_ankle_fk_ctrl_frzGrp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[167]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[168]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[169]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[170]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[171]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[172]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_fk_ctrl_frzGrp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[173]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegupJntFkCtrl_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[174]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegupJntFkCtrl_grp|Ultimate_Walker_Rig:walker_rt_upLegupJntFkCtrl_grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[175]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[176]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[177]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[178]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl_frzGrp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[179]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_upLeg_fk_ctrl_frzGrp_orientConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[180]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legIK_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[181]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legIK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[182]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legIK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_ik_jnt|Ultimate_Walker_Rig:walker_rt_knee_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[183]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legIK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_ik_jnt|Ultimate_Walker_Rig:walker_rt_knee_ik_jnt|Ultimate_Walker_Rig:walker_rt_ankle_ik_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[184]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legIK_Grp|Ultimate_Walker_Rig:walker_rt_upLeg_ik_jnt|Ultimate_Walker_Rig:walker_rt_knee_ik_jnt|Ultimate_Walker_Rig:effector3.message" 
		"Ultimate_Walker_RigRN.placeHolderList[185]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legIK_Grp|Ultimate_Walker_Rig:walker_rt_legIK_Grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[186]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[187]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.pvControl" 
		"Ultimate_Walker_RigRN.placeHolderList[188]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.legTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[189]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.heelTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[190]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.ballTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[191]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.toeTwist" 
		"Ultimate_Walker_RigRN.placeHolderList[192]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[193]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[194]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[195]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[196]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[197]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[198]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.footRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[199]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.footBreak" 
		"Ultimate_Walker_RigRN.placeHolderList[200]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.toeRoll" 
		"Ultimate_Walker_RigRN.placeHolderList[201]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[202]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrl|Ultimate_Walker_Rig:walker_rt_heel_ik_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[203]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_leg_ikHandle.message" 
		"Ultimate_Walker_RigRN.placeHolderList[204]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_leg_ikHandle|Ultimate_Walker_Rig:walker_rt_leg_ikHandle_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[205]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_leg_ikHandle|Ultimate_Walker_Rig:walker_rt_knee_pv_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[206]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_foot_ctrl.ikFkBlend" 
		"Ultimate_Walker_RigRN.placeHolderList[207]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_foot_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[208]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_foot_ctrl|Ultimate_Walker_Rig:walker_rt_foot_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[209]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_foot_ctrl|Ultimate_Walker_Rig:walker_rt_foot_ctrl_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[210]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[211]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_line_loc.message" 
		"Ultimate_Walker_RigRN.placeHolderList[212]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_line_loc|Ultimate_Walker_Rig:walker_rt_knee_line_locShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[213]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_line_loc|Ultimate_Walker_Rig:walker_rt_knee_line_loc_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[214]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_line_loc|Ultimate_Walker_Rig:abRTLine_walker_rt_knee_line_loc.message" 
		"Ultimate_Walker_RigRN.placeHolderList[215]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_knee_line_loc|Ultimate_Walker_Rig:abRTLine_walker_rt_knee_line_loc|Ultimate_Walker_Rig:abRTLine_walker_rt_knee_line_locShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[216]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[217]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_rtLegIkCtrlSpcParCon.message" 
		"Ultimate_Walker_RigRN.placeHolderList[218]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[219]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[220]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[221]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.rtLegIkCtrl" 
		"Ultimate_Walker_RigRN.placeHolderList[222]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl.message" 
		"Ultimate_Walker_RigRN.placeHolderList[223]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrlShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[224]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_annLoc.message" 
		"Ultimate_Walker_RigRN.placeHolderList[225]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_annLoc|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_annLocShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[226]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_frzGrp|Ultimate_Walker_Rig:walker_rt_legPvCtrlGrp_space_grp|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_annLoc|Ultimate_Walker_Rig:walker_rt_knee_pv_ctrl_annLoc_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[227]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist.message" 
		"Ultimate_Walker_RigRN.placeHolderList[228]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist|Ultimate_Walker_Rig:walker_rt_legStrDist_distShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[229]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_sp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[230]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_sp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_spShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[231]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_sp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_sp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[232]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_ep.message" 
		"Ultimate_Walker_RigRN.placeHolderList[233]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_ep|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_epShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[234]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_ep|Ultimate_Walker_Rig:walker_rt_legStrDist_dist_ep_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[235]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist.message" 
		"Ultimate_Walker_RigRN.placeHolderList[236]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_distShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[237]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_sp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[238]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_sp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_spShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[239]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_sp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_sp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[240]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_ep.message" 
		"Ultimate_Walker_RigRN.placeHolderList[241]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_ep|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_epShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[242]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_ep|Ultimate_Walker_Rig:walker_rt_upLegPvCtrl_dist_ep_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[243]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist.message" 
		"Ultimate_Walker_RigRN.placeHolderList[244]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_distShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[245]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_sp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[246]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_sp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_spShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[247]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_sp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_sp_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[248]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_ep.message" 
		"Ultimate_Walker_RigRN.placeHolderList[249]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_ep|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_epShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[250]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_ep|Ultimate_Walker_Rig:walker_rt_legPvIkCtrl_dist_ep_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[251]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_legIkCtrl_space_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[252]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[253]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Knee_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[254]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Ankle_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[255]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Ankle_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Ball_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[256]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Ankle_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Ball_jnt|Ultimate_Walker_Rig:walker_rt_ankleReader_ball_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[257]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Ankle_jnt|Ultimate_Walker_Rig:walker_rt_ankleReader_ankle_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[258]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_Knee_jnt|Ultimate_Walker_Rig:walker_rt_ankleReader_knee_or_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[259]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt_pointConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[260]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rt_leg_rig_grp|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt|Ultimate_Walker_Rig:walker_rt_ankleBallReader_UpLeg_jnt_orientConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[261]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rtLegIkCtrl_space_switch_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[262]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:walker_rtLegIkCtrl_space_switch_grp|Ultimate_Walker_Rig:walker_rtLegIkCtrlSpace_par_cons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[263]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Rig_Leg_grp|Ultimate_Walker_Rig:Rig_Leg_grp_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[264]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[265]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[266]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[267]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_knee_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[268]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_knee_jnt|Ultimate_Walker_Rig:walker_lf_ankle_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[269]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_knee_jnt|Ultimate_Walker_Rig:walker_lf_ankle_jnt|Ultimate_Walker_Rig:walker_lf_ball_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[270]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_knee_jnt|Ultimate_Walker_Rig:walker_lf_ankle_jnt|Ultimate_Walker_Rig:walker_lf_ball_jnt|Ultimate_Walker_Rig:walker_lf_toe_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[271]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_knee_jnt|Ultimate_Walker_Rig:walker_lf_ankle_jnt|Ultimate_Walker_Rig:walker_lf_ball_jnt|Ultimate_Walker_Rig:walker_lf_toe_jnt|Ultimate_Walker_Rig:walker_lf_toe_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[272]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_knee_jnt|Ultimate_Walker_Rig:walker_lf_ankle_jnt|Ultimate_Walker_Rig:walker_lf_ball_jnt|Ultimate_Walker_Rig:walker_lf_ball_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[273]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_knee_jnt|Ultimate_Walker_Rig:walker_lf_ankle_jnt|Ultimate_Walker_Rig:walker_lf_ankle_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[274]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_knee_jnt|Ultimate_Walker_Rig:walker_lf_knee_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[275]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_jnt|Ultimate_Walker_Rig:walker_lf_upLeg_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[276]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[277]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_knee_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[278]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_knee_jnt|Ultimate_Walker_Rig:walker_rt_ankle_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[279]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_knee_jnt|Ultimate_Walker_Rig:walker_rt_ankle_jnt|Ultimate_Walker_Rig:walker_rt_ball_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[280]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_knee_jnt|Ultimate_Walker_Rig:walker_rt_ankle_jnt|Ultimate_Walker_Rig:walker_rt_ball_jnt|Ultimate_Walker_Rig:walker_rt_toe_jnt.message" 
		"Ultimate_Walker_RigRN.placeHolderList[281]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_knee_jnt|Ultimate_Walker_Rig:walker_rt_ankle_jnt|Ultimate_Walker_Rig:walker_rt_ball_jnt|Ultimate_Walker_Rig:walker_rt_toe_jnt|Ultimate_Walker_Rig:walker_rt_toe_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[282]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_knee_jnt|Ultimate_Walker_Rig:walker_rt_ankle_jnt|Ultimate_Walker_Rig:walker_rt_ball_jnt|Ultimate_Walker_Rig:walker_rt_ball_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[283]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_knee_jnt|Ultimate_Walker_Rig:walker_rt_ankle_jnt|Ultimate_Walker_Rig:walker_rt_ankle_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[284]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_knee_jnt|Ultimate_Walker_Rig:walker_rt_knee_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[285]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_jnt|Ultimate_Walker_Rig:walker_rt_upLeg_ikFkCons.message" 
		"Ultimate_Walker_RigRN.placeHolderList[286]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Skeleton_grp|Ultimate_Walker_Rig:walker_hip_jnt|Ultimate_Walker_Rig:walker_hip_jnt_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[287]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[288]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[289]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_Flex_GrpShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[290]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Extras_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[291]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Extras_Grp|Ultimate_Walker_Rig:ballTypes_pConst.message" 
		"Ultimate_Walker_RigRN.placeHolderList[292]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Extras_Grp|Ultimate_Walker_Rig:ballTypes_olcek.message" 
		"Ultimate_Walker_RigRN.placeHolderList[293]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Extras_Grp|Ultimate_Walker_Rig:ballTypes_olcek|Ultimate_Walker_Rig:ballTypes_olcekShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[294]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Loc_kuyruk.message" 
		"Ultimate_Walker_RigRN.placeHolderList[295]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Loc_kuyruk|Ultimate_Walker_Rig:Loc_kuyrukShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[296]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[297]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp|Ultimate_Walker_Rig:simple_body.message" 
		"Ultimate_Walker_RigRN.placeHolderList[298]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp|Ultimate_Walker_Rig:simple_body|Ultimate_Walker_Rig:simple_bodyShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[299]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp|Ultimate_Walker_Rig:simple_body_line.message" 
		"Ultimate_Walker_RigRN.placeHolderList[300]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:Mesh_Flex_Grp|Ultimate_Walker_Rig:Mesh_body_Grp|Ultimate_Walker_Rig:simple_body_line|Ultimate_Walker_Rig:simple_body_lineShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[301]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[302]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[303]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[304]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top.message" 
		"Ultimate_Walker_RigRN.placeHolderList[305]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top|Ultimate_Walker_Rig:CTRL_TopShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[306]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top|Ultimate_Walker_Rig:locator2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[307]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top|Ultimate_Walker_Rig:locator2|Ultimate_Walker_Rig:locator_Top.message" 
		"Ultimate_Walker_RigRN.placeHolderList[308]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top|Ultimate_Walker_Rig:ikHandle1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[309]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp|Ultimate_Walker_Rig:CTRL_Top_Grp_pConst.message" 
		"Ultimate_Walker_RigRN.placeHolderList[310]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[311]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp|Ultimate_Walker_Rig:CTRL_Bottom.message" 
		"Ultimate_Walker_RigRN.placeHolderList[312]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp|Ultimate_Walker_Rig:CTRL_Bottom|Ultimate_Walker_Rig:CTRL_BottomShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[313]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp|Ultimate_Walker_Rig:CTRL_Bottom|Ultimate_Walker_Rig:Jnt_main.message" 
		"Ultimate_Walker_RigRN.placeHolderList[314]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp|Ultimate_Walker_Rig:CTRL_Bottom|Ultimate_Walker_Rig:Jnt_main|Ultimate_Walker_Rig:joint2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[315]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp|Ultimate_Walker_Rig:CTRL_Bottom|Ultimate_Walker_Rig:Jnt_main|Ultimate_Walker_Rig:effector1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[316]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp|Ultimate_Walker_Rig:CTRL_Bottom|Ultimate_Walker_Rig:locator1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[317]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp|Ultimate_Walker_Rig:CTRL_Bottom|Ultimate_Walker_Rig:locator1|Ultimate_Walker_Rig:locator_Bottom.message" 
		"Ultimate_Walker_RigRN.placeHolderList[318]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp|Ultimate_Walker_Rig:CTRL_Bottom_Grp_pConst.message" 
		"Ultimate_Walker_RigRN.placeHolderList[319]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[320]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateY" 
		"Ultimate_Walker_RigRN.placeHolderList[321]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateX" 
		"Ultimate_Walker_RigRN.placeHolderList[322]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.translateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[323]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[324]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[325]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[326]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.message" 
		"Ultimate_Walker_RigRN.placeHolderList[327]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main|Ultimate_Walker_Rig:CTRL_MainShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[328]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp_pConst.message" 
		"Ultimate_Walker_RigRN.placeHolderList[329]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:JNT_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[330]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:JNT_Grp|Ultimate_Walker_Rig:JNT_kuyruk_01.message" 
		"Ultimate_Walker_RigRN.placeHolderList[331]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:JNT_Grp|Ultimate_Walker_Rig:JNT_kuyruk_01|Ultimate_Walker_Rig:JNT_kuyruk_02.message" 
		"Ultimate_Walker_RigRN.placeHolderList[332]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:JNT_Grp|Ultimate_Walker_Rig:JNT_kuyruk_01|Ultimate_Walker_Rig:JNT_kuyruk_02|Ultimate_Walker_Rig:JNT_kuyruk_03.message" 
		"Ultimate_Walker_RigRN.placeHolderList[333]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:JNT_Grp|Ultimate_Walker_Rig:JNT_kuyruk_01|Ultimate_Walker_Rig:JNT_kuyruk_02|Ultimate_Walker_Rig:JNT_kuyruk_03|Ultimate_Walker_Rig:JNT_kuyruk_04.message" 
		"Ultimate_Walker_RigRN.placeHolderList[334]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:JNT_Grp|Ultimate_Walker_Rig:JNT_kuyruk_01|Ultimate_Walker_Rig:JNT_kuyruk_02|Ultimate_Walker_Rig:JNT_kuyruk_03|Ultimate_Walker_Rig:JNT_kuyruk_04|Ultimate_Walker_Rig:JNT_kuyruk_05.message" 
		"Ultimate_Walker_RigRN.placeHolderList[335]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[336]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[337]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[338]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg.message" 
		"Ultimate_Walker_RigRN.placeHolderList[339]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg|Ultimate_Walker_Rig:R_upperlegShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[340]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg|Ultimate_Walker_Rig:polySurfaceShape2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[341]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg|Ultimate_Walker_Rig:polySurfaceShape5.message" 
		"Ultimate_Walker_RigRN.placeHolderList[342]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg|Ultimate_Walker_Rig:polySurfaceShape11.message" 
		"Ultimate_Walker_RigRN.placeHolderList[343]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg|Ultimate_Walker_Rig:polySurfaceShape12.message" 
		"Ultimate_Walker_RigRN.placeHolderList[344]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_upperleg|Ultimate_Walker_Rig:R_upperlegShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[345]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_leg.message" 
		"Ultimate_Walker_RigRN.placeHolderList[346]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_leg|Ultimate_Walker_Rig:R_legShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[347]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_leg|Ultimate_Walker_Rig:R_legShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[348]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_leg|Ultimate_Walker_Rig:polySurfaceShape10.message" 
		"Ultimate_Walker_RigRN.placeHolderList[349]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:R_leg_Grp|Ultimate_Walker_Rig:R_leg|Ultimate_Walker_Rig:R_legShapeOrig1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[350]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[351]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg.message" 
		"Ultimate_Walker_RigRN.placeHolderList[352]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg|Ultimate_Walker_Rig:L_upperlegShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[353]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg|Ultimate_Walker_Rig:polySurfaceShape2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[354]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg|Ultimate_Walker_Rig:polySurfaceShape5.message" 
		"Ultimate_Walker_RigRN.placeHolderList[355]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg|Ultimate_Walker_Rig:polySurfaceShape11.message" 
		"Ultimate_Walker_RigRN.placeHolderList[356]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg|Ultimate_Walker_Rig:polySurfaceShape12.message" 
		"Ultimate_Walker_RigRN.placeHolderList[357]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_upperleg|Ultimate_Walker_Rig:L_upperlegShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[358]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_leg.message" 
		"Ultimate_Walker_RigRN.placeHolderList[359]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_leg|Ultimate_Walker_Rig:L_legShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[360]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_leg|Ultimate_Walker_Rig:L_legShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[361]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_leg|Ultimate_Walker_Rig:polySurfaceShape10.message" 
		"Ultimate_Walker_RigRN.placeHolderList[362]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_binded_grp|Ultimate_Walker_Rig:L_leg_Grp|Ultimate_Walker_Rig:L_leg|Ultimate_Walker_Rig:L_legShapeOrig1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[363]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const.message" 
		"Ultimate_Walker_RigRN.placeHolderList[364]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_but.message" 
		"Ultimate_Walker_RigRN.placeHolderList[365]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_but|Ultimate_Walker_Rig:R_butShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[366]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_but|Ultimate_Walker_Rig:R_butShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[367]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_but|Ultimate_Walker_Rig:R_but_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[368]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_but|Ultimate_Walker_Rig:polySurfaceShape17.message" 
		"Ultimate_Walker_RigRN.placeHolderList[369]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_but.message" 
		"Ultimate_Walker_RigRN.placeHolderList[370]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_but|Ultimate_Walker_Rig:L_butShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[371]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_but|Ultimate_Walker_Rig:L_butShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[372]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_but|Ultimate_Walker_Rig:L_but_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[373]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_knee.message" 
		"Ultimate_Walker_RigRN.placeHolderList[374]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_knee|Ultimate_Walker_Rig:R_kneeShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[375]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_knee|Ultimate_Walker_Rig:R_kneeShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[376]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_knee|Ultimate_Walker_Rig:R_knee_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[377]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_knee|Ultimate_Walker_Rig:polySurfaceShape16.message" 
		"Ultimate_Walker_RigRN.placeHolderList[378]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_knee.message" 
		"Ultimate_Walker_RigRN.placeHolderList[379]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_knee|Ultimate_Walker_Rig:L_kneeShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[380]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_knee|Ultimate_Walker_Rig:L_kneeShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[381]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_knee|Ultimate_Walker_Rig:L_knee_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[382]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_ankle.message" 
		"Ultimate_Walker_RigRN.placeHolderList[383]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_ankle|Ultimate_Walker_Rig:R_ankleShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[384]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_ankle|Ultimate_Walker_Rig:R_ankleShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[385]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_ankle|Ultimate_Walker_Rig:R_ankle_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[386]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_ankle|Ultimate_Walker_Rig:polySurfaceShape13.message" 
		"Ultimate_Walker_RigRN.placeHolderList[387]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_ankle.message" 
		"Ultimate_Walker_RigRN.placeHolderList[388]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_ankle|Ultimate_Walker_Rig:L_ankleShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[389]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_ankle|Ultimate_Walker_Rig:L_ankleShapeOrig.message" 
		"Ultimate_Walker_RigRN.placeHolderList[390]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_ankle|Ultimate_Walker_Rig:L_ankle_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[391]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_foot.message" 
		"Ultimate_Walker_RigRN.placeHolderList[392]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_foot|Ultimate_Walker_Rig:R_footShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[393]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_foot|Ultimate_Walker_Rig:R_foot_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[394]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_foot.message" 
		"Ultimate_Walker_RigRN.placeHolderList[395]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_foot|Ultimate_Walker_Rig:L_footShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[396]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_foot|Ultimate_Walker_Rig:L_foot_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[397]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_foot|Ultimate_Walker_Rig:polySurfaceShape14.message" 
		"Ultimate_Walker_RigRN.placeHolderList[398]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_toe.message" 
		"Ultimate_Walker_RigRN.placeHolderList[399]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_toe|Ultimate_Walker_Rig:R_toeShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[400]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:R_toe|Ultimate_Walker_Rig:R_toe_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[401]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_toe.message" 
		"Ultimate_Walker_RigRN.placeHolderList[402]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_toe|Ultimate_Walker_Rig:L_toeShape.message" 
		"Ultimate_Walker_RigRN.placeHolderList[403]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_toe|Ultimate_Walker_Rig:L_toe_parentConstraint1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[404]" ""
		5 3 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Mesh_Grp|Ultimate_Walker_Rig:leg_scale_Const|Ultimate_Walker_Rig:L_toe|Ultimate_Walker_Rig:polySurfaceShape15.message" 
		"Ultimate_Walker_RigRN.placeHolderList[405]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_heel_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[406]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_heel_clamp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[407]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_toe2_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[408]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_toe_clamp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[409]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_toe_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[410]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_ball_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[411]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_ball_clamp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[412]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legUpStr_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[413]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legRefStr_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[414]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legTotStrAmt_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[415]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legStrAtt_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[416]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legLowStr_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[417]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legFkVis_cond.message" 
		"Ultimate_Walker_RigRN.placeHolderList[418]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_upLeg_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[419]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_upLegSnapSplice_blend.message" 
		"Ultimate_Walker_RigRN.placeHolderList[420]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legStr_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[421]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legStr_clamp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[422]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legStrScalar_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[423]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legStrNum_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[424]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legStrDenom_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[425]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_kneeSnapSplice_blend.message" 
		"Ultimate_Walker_RigRN.placeHolderList[426]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legIkVis_cond.message" 
		"Ultimate_Walker_RigRN.placeHolderList[427]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legPvCtrl_blend.message" 
		"Ultimate_Walker_RigRN.placeHolderList[428]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_heel_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[429]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_heel_clamp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[430]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_toe2_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[431]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_toe_clamp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[432]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_toe_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[433]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_ball_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[434]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_ball_clamp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[435]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legUpStr_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[436]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legRefStr_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[437]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legTotStrAmt_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[438]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legStrAtt_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[439]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legLowStr_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[440]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legFkVis_cond.message" 
		"Ultimate_Walker_RigRN.placeHolderList[441]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_upLeg_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[442]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_upLegSnapSplice_blend.message" 
		"Ultimate_Walker_RigRN.placeHolderList[443]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_armPvNegate_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[444]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legStr_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[445]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legStr_clamp.message" 
		"Ultimate_Walker_RigRN.placeHolderList[446]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legNegateTx_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[447]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legStrScalar_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[448]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legStrNum_multDiv.message" 
		"Ultimate_Walker_RigRN.placeHolderList[449]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legStrDenom_plsMns.message" 
		"Ultimate_Walker_RigRN.placeHolderList[450]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_kneeSnapSplice_blend.message" 
		"Ultimate_Walker_RigRN.placeHolderList[451]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legIkVis_cond.message" 
		"Ultimate_Walker_RigRN.placeHolderList[452]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legPvCtrl_blend.message" 
		"Ultimate_Walker_RigRN.placeHolderList[453]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legTrans_blend.message" 
		"Ultimate_Walker_RigRN.placeHolderList[454]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_lf_legIkFkSwitch_reverse.message" 
		"Ultimate_Walker_RigRN.placeHolderList[455]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legTrans_blend.message" 
		"Ultimate_Walker_RigRN.placeHolderList[456]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:walker_rt_legIkFkSwitch_reverse.message" 
		"Ultimate_Walker_RigRN.placeHolderList[457]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:multiplyDivide1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[458]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:multiplyDivide2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[459]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:Mesh_body_Grp_visibility.message" 
		"Ultimate_Walker_RigRN.placeHolderList[460]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:L_Objects.message" 
		"Ultimate_Walker_RigRN.placeHolderList[461]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:layerManager.message" 
		"Ultimate_Walker_RigRN.placeHolderList[462]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:Shdr_ball_turuncuSG.message" 
		"Ultimate_Walker_RigRN.placeHolderList[463]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:Shdr_ball_turuncu.message" 
		"Ultimate_Walker_RigRN.placeHolderList[464]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyPipe1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[465]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:Shdr_ball_turuncu2SG.message" 
		"Ultimate_Walker_RigRN.placeHolderList[466]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:Shdr_ball_turuncu2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[467]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:CNT_Grp_visibility.message" 
		"Ultimate_Walker_RigRN.placeHolderList[468]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:CTRL_Bottom_Grp_visibility.message" 
		"Ultimate_Walker_RigRN.placeHolderList[469]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:skinCluster1Set.message" 
		"Ultimate_Walker_RigRN.placeHolderList[470]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:skinCluster1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[471]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:bindPose1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[472]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:tweak1.message" "Ultimate_Walker_RigRN.placeHolderList[473]" 
		""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:tweakSet1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[474]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:transformGeometry1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[475]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyTweak3.message" 
		"Ultimate_Walker_RigRN.placeHolderList[476]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyAverageVertex3.message" 
		"Ultimate_Walker_RigRN.placeHolderList[477]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyTweak2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[478]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyAverageVertex2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[479]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyTweak1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[480]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyAverageVertex1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[481]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyExtrudeEdge1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[482]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:skinCluster2Set.message" 
		"Ultimate_Walker_RigRN.placeHolderList[483]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:skinCluster2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[484]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:tweak2.message" "Ultimate_Walker_RigRN.placeHolderList[485]" 
		""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:tweakSet2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[486]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:skinCluster3Set.message" 
		"Ultimate_Walker_RigRN.placeHolderList[487]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:skinCluster3.message" 
		"Ultimate_Walker_RigRN.placeHolderList[488]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:tweak3.message" "Ultimate_Walker_RigRN.placeHolderList[489]" 
		""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:tweakSet3.message" 
		"Ultimate_Walker_RigRN.placeHolderList[490]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:skinCluster4Set.message" 
		"Ultimate_Walker_RigRN.placeHolderList[491]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:skinCluster4.message" 
		"Ultimate_Walker_RigRN.placeHolderList[492]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:tweak4.message" "Ultimate_Walker_RigRN.placeHolderList[493]" 
		""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:tweakSet4.message" 
		"Ultimate_Walker_RigRN.placeHolderList[494]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:defaultLayer.message" 
		"Ultimate_Walker_RigRN.placeHolderList[495]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:uiConfigurationScriptNode.message" 
		"Ultimate_Walker_RigRN.placeHolderList[496]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:sceneConfigurationScriptNode.message" 
		"Ultimate_Walker_RigRN.placeHolderList[497]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:shapeEditorManager.message" 
		"Ultimate_Walker_RigRN.placeHolderList[498]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:poseInterpolatorManager.message" 
		"Ultimate_Walker_RigRN.placeHolderList[499]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyNormal1.message" 
		"Ultimate_Walker_RigRN.placeHolderList[500]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyNormal2.message" 
		"Ultimate_Walker_RigRN.placeHolderList[501]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyNormal3.message" 
		"Ultimate_Walker_RigRN.placeHolderList[502]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyNormal4.message" 
		"Ultimate_Walker_RigRN.placeHolderList[503]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyNormal5.message" 
		"Ultimate_Walker_RigRN.placeHolderList[504]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyNormal6.message" 
		"Ultimate_Walker_RigRN.placeHolderList[505]" ""
		5 3 "Ultimate_Walker_RigRN" "Ultimate_Walker_Rig:polyNormal7.message" 
		"Ultimate_Walker_RigRN.placeHolderList[506]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Walking_AnimationRN";
	rename -uid "1EFB9271-4389-1F99-18B1-9E8871780879";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Walking_AnimationRN"
		"Walking_Animation:Ultimate_Walker_RigRN" 0
		"Walking_AnimationRN" 0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "walker_lf_foot_ctrl_ikFkBlend";
	rename -uid "0160641E-47F4-C989-5201-008E45628EA4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 14 1 26 1 39 1 51 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 16 1 16 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "walker_rt_foot_ctrl_ikFkBlend";
	rename -uid "C1791884-43B1-AA27-6942-50BB29CADD58";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 14 1 26 1 39 1 51 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 16 1 16 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "FB8BCC26-4050-7A2F-7EA5-9DAFDD96D2DA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 1 5 1 8 1 11 1 12 1 14 1 17 1 20 1 21 1
		 23 1 26 1 30 1 33 1 36 1 37 1 39 1 42 1 45 1 46 1 48 1 51 1;
	setAttr -s 21 ".kit[4:20]"  9 16 16 16 9 16 16 16 
		16 16 9 16 16 16 9 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 5 16 16 16 
		5 16 1 16 16 16 5 16 16 16 5 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "9D81185B-4E8C-11B7-042A-2B9B8D63BCAE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 11 0 12 0 14 0 17 0 20 0 21 0
		 23 0 26 0 30 0 33 0 36 0 37 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "ACF0F09D-4665-480B-224D-AB8F462B7718";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 11 0 12 0 14 0 17 0 20 0 21 0
		 23 0 26 0 30 0 33 0 36 0 37 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "4025BB34-4368-8EB9-86F1-E581857751B3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 -5 5 -5 8 0 11 0 12 -1.2962962962962952
		 14 -5 17 -5 20 -5 21 -5 23 -5 26 -5 30 -5 33 0 36 0 37 -1.2962962962962952 39 -5
		 42 -5 45 -5 46 -5 48 -5 51 -5;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 0.02499219116020308 1 1 1 1 1 1 
		1 1 1 0.02499219116020307 1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 -0.9996876464081228 0 0 0 0 0 0 
		0 0 0 -0.9996876464081228 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "DA2B6FC3-4599-CF21-D945-AFA9FA476938";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 11 0 12 0 14 0 17 0 20 0 21 0
		 23 0 26 0 30 0 33 0 36 0 37 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateX";
	rename -uid "701F9E19-4F17-78A9-55BE-37930C51678F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 11 0 12 0 14 0 17 0 20 0 21 0
		 23 0 26 0 30 0 33 0 36 0 37 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "C5DAFC70-48EC-CE78-AC34-4C94796C2061";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 -1.2458855007637153 5 -1.6960443725011491
		 8 -1.3299885622746475 11 -0.41633976356874314 12 0.34048359884729096 14 1.0416162895599839
		 17 0.58733312944585936 20 -0.32129488103723047 21 -0.48686122383611419 23 -0.71880886485169238
		 26 -1.2458855007637153 30 -1.6960443725011491 33 -1.3299885622746475 36 -0.41633976356874314
		 37 0.34048359884729096 39 1.0416162895599839 42 0.58733312944585936 45 -0.32129488103723047
		 46 -0.48686122383611419 48 -0.71880886485169238 51 -1.2458855007637153;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 0.19173313334317996 0.09927927684370863 
		0.085423079645873035 1 0.18042069717084852 0.15332056403988284 0.29997299827447321 
		0.26468594214161073 1 1 0.19173313334317998 0.099279276843708672 0.085423079645872993 
		1 0.18042069717084852 0.15332056403988295 0.29997299827447316 0.26468594214161073 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0.98144709769727601 0.99505960886239886 
		0.99634476837278318 0 -0.98358953432434659 -0.98817650480189634 -0.95394769264683643 
		-0.96433466806529777 0 0 0.98144709769727601 0.99505960886239886 0.99634476837278307 
		0 -0.98358953432434659 -0.98817650480189634 -0.95394769264683632 -0.96433466806529777 
		0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateY";
	rename -uid "72A9665E-4B4E-D22D-2B9A-41876FD625F8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0.12550309765852752 11 0.05043939822136817
		 12 0.22193373172987335 14 -0.023790065585586467 17 -0.0049604111330354417 20 -0.01263020006439286
		 21 -0.015984130655141822 23 -0.014519427748437258 26 0 30 0 33 0.12550309765852752
		 36 0.05043939822136817 37 0.22193373172987335 39 -0.023790065585586467 42 -0.0049604111330354417
		 45 -0.01263020006439286 46 -0.015984130655141822 48 -0.014519427748437258 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 1 18 16 16 16 
		16 16 18 16 16 1 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 1 
		18 16 1 16 16 16 18 16 16 1 18 16 1;
	setAttr -s 21 ".kix[7:20]"  0.98825005055235837 1 1 1 1 1 1 1 1 1 0.98825005055235837 
		1 1 1;
	setAttr -s 21 ".kiy[7:20]"  -0.1528457967471174 0 0 0 0 0 0 0 0 0 -0.1528457967471174 
		0 0 0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 0.98825005291032486 1 1 1 
		1 1 1 1 1 1 0.98825005291032486 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 -0.1528457815012903 0 0 0 
		0 0 0 0 0 0 -0.1528457815012903 0 0 0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "F91D7A7A-48C2-06A5-7BEF-B6BAB94341C4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 11 0 12 0 14 0 17 0 20 0 21 0
		 23 0 26 0 30 0 33 0 36 0 37 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "88352186-4C97-191B-AAFA-35AB577DE5C7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 11 0 12 0 14 0 17 0 20 0 21 0
		 23 0 26 0 30 0 33 0 36 0 37 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "EDBACC9B-4F0C-6966-D351-5B9D43FCC995";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 11 0 12 0 14 0 17 0 20 0 21 0
		 23 0 26 0 30 0 33 0 36 0 37 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "71C56819-48F6-87FA-3AB8-CBBFC4020F22";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 35 5 57.1 8 58.9 11 45.599999999999994
		 12 8.555555555555566 14 -29.400000000000006 17 0 20 0 21 4.3319919517102621 23 21.3
		 26 35 30 57.1 33 58.9 36 45.599999999999994 37 8.555555555555566 39 -29.400000000000006
		 42 0 45 0 46 4.3319919517102621 48 21.3 51 35;
	setAttr -s 21 ".kit[1:20]"  1 16 16 18 16 16 16 18 
		1 16 1 16 16 18 16 16 16 18 1 1;
	setAttr -s 21 ".kot[0:20]"  1 1 16 16 18 16 16 16 
		18 1 1 1 16 16 18 16 16 16 18 1 1;
	setAttr -s 21 ".kix[1:20]"  0.044147914868312738 1 0.003310509336511652 
		0.0016666643518566751 1 1 1 0.0058684435477518093 0.0057281800426882551 0.0081468432232944914 
		0.044147914868312738 1 0.0033105093365116524 0.0016666643518566746 1 1 1 0.0058684435477518102 
		0.0057281800426882551 0.01565522148465268;
	setAttr -s 21 ".kiy[1:20]"  0.99902500549925177 0 -0.99999452024895263 
		-0.99999861111400468 0 0 0 0.99998278053690848 0.99998359384211832 0.99996681392208953 
		0.99902500549925177 0 -0.99999452024895263 -0.99999861111400468 0 0 0 0.99998278053690848 
		0.99998359384211832 0.99987744951082214;
	setAttr -s 21 ".kox[0:20]"  1 0.044147914237517863 1 0.003310509336511652 
		0.0016666643518566751 1 1 1 0.0058684435477518102 0.0057281805052428114 1 0.044147914237517863 
		1 0.0033105093365116524 0.0016666643518566744 1 1 1 0.0058684435477518093 0.0057281805052428114 
		0.015655224023938596;
	setAttr -s 21 ".koy[0:20]"  0 0.99902500552712736 0 -0.99999452024895263 
		-0.99999861111400468 0 0 0 0.99998278053690848 0.99998359383946867 0 0.99902500552712736 
		0 -0.99999452024895263 -0.99999861111400468 0 0 0 0.99998278053690848 0.99998359383946867 
		0.99987744947106416;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "C8651934-4B9D-52E3-9747-1AA242B95278";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 37.8 5 44.8 8 0 11 0 12 9.7999999999999901
		 14 37.8 17 0 20 0 21 3.7851851851852185 23 20.000000000000004 26 37.8 30 44.8 33 0
		 36 0 37 9.7999999999999901 39 37.8 42 0 45 0 46 3.7851851851852185 48 20.000000000000004
		 51 37.8;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 0.0033068602259351048 1 1 1 0.0062498779332636617 
		0.0061246673538498282 1 1 1 1 0.003306860225935104 1 1 1 0.0062498779332636608 0.0061246673538498282 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0.99999453232277524 0 0 0 0.99998046932218598 
		0.99998124404900945 0 0 0 0 0.99999453232277524 0 0 0 0.99998046932218587 0.99998124404900945 
		0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "CCBFD99C-4A97-2C18-A1DC-9B994F3085A0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 11 9.2000000000000011 12 4.5333333333333377
		 14 -8.8 17 0 20 0 21 0 23 0 26 0 30 0 33 0 36 9.2000000000000011 37 4.5333333333333377
		 39 -8.8 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 21 ".kit[4:20]"  18 16 16 16 18 16 16 16 
		16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 16 18 16 16 16 
		18 16 1 16 16 16 18 16 16 16 18 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 0.0069442770015123228 1 1 1 1 1 
		1 1 1 1 0.0069442770015123194 1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 -0.99997588821777394 0 0 0 0 0 
		0 0 0 0 -0.99997588821777394 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "AB0692FE-438C-1DBD-9DCF-AC8C04D10583";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 1 5 1 8 1 9 1 11 1 13 1 14 1 17 1 20 1
		 23 1 26 1 30 1 33 1 34 1 36 1 38 1 39 1 42 1 45 1 48 1 51 1;
	setAttr -s 21 ".kit[3:20]"  9 16 9 16 16 16 16 16 
		16 16 9 16 9 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 5 16 5 16 16 
		16 16 1 16 16 5 16 5 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "2B430208-4146-A957-C1EF-B3AE9EF0133A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 9 0 11 0 13 0 14 0 17 0 20 0
		 23 0 26 0 30 0 33 0 34 0 36 0 38 0 39 0 42 0 45 0 48 0 51 0;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "F9616DBA-4108-33B5-BE91-9293B9F5F244";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 -5 5 -5 8 -5 9 -5 11 -5 13 -1.2962962962962954
		 14 0 17 0 20 0 23 0 26 -5 30 -5 33 -5 34 -5 36 -5 38 -1.2962962962962954 39 0 42 0
		 45 0 48 0 51 -5;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 0.02499219116020308 1 1 1 1 1 
		1 1 1 1 0.02499219116020307 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0.9996876464081228 0 0 0 0 0 
		0 0 0 0 0.9996876464081228 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "C8F0B61E-47DA-36CD-37A3-A69B7200A480";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 9 0 11 0 13 -3.7037037037037046
		 14 -5 17 -5 20 0 23 0 26 0 30 0 33 0 34 0 36 0 38 -3.7037037037037046 39 -5 42 -5
		 45 0 48 0 51 0;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 0.02499219116020308 1 1 1 1 1 
		1 1 1 1 0.02499219116020307 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 -0.9996876464081228 0 0 0 0 0 
		0 0 0 0 -0.9996876464081228 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "1A4F615F-4865-EDB0-2E30-7AB95A2AA19A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 9 0 11 0 13 0 14 0 17 0 20 0
		 23 0 26 0 30 0 33 0 34 0 36 0 38 0 39 0 42 0 45 0 48 0 51 0;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateX";
	rename -uid "811B888C-45E8-2545-D3BD-D797A31C7CE6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 9 0 11 0 13 0 14 0 17 0 20 0
		 23 0 26 0 30 0 33 0 34 0 36 0 38 0 39 0 42 0 45 0 48 0 51 0;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "2416751A-4DEC-B3D3-4F0B-20BDE1A27411";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0.9592470971682574 5 0.63800737774928762
		 8 -0.20577066276350942 9 -0.4196193008771924 11 -0.76715798557934622 13 -1.070143892110875
		 14 -1.1964642442945084 17 -1.4360178006057192 20 -1.3749010178111745 23 -0.21593169427393816
		 26 0.9592470971682574 30 0.63800737774928762 33 -0.20577066276350942 34 -0.4196193008771924
		 36 -0.76715798557934622 38 -1.070143892110875 39 -1.1964642442945084 42 -1.4360178006057192
		 45 -1.3749010178111745 48 -0.21593169427393816 51 0.9592470971682574;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 0.24285866472924431 0.15566456377917937 
		0.21734012616783827 0.24818739937066822 0.27955821840199357 0.41454561038158688 1 
		1 0.10649635792544075 1 0.24285866472924436 0.15566456377917942 0.21734012616783829 
		0.24818739937066805 0.27955821840199352 0.41454561038158688 1 1 0.10649635792544079 
		1;
	setAttr -s 21 ".koy[0:20]"  0 -0.97006168307274587 -0.98780997341768018 
		-0.97609593255855132 -0.96871203914972825 -0.96012874268188819 -0.91002853631815173 
		0 0 0.99431309241537014 0 -0.97006168307274576 -0.98780997341767995 -0.97609593255855143 
		-0.96871203914972825 -0.96012874268188819 -0.91002853631815173 0 0 0.99431309241537014 
		0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateY";
	rename -uid "B7C58789-487F-FF3E-A444-AFBB6010F671";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 -0.0188450643895497 5 0.021 8 0.020580801311636025
		 9 0.020580801311636025 11 0.020580801311636025 13 0.020580801311636025 14 0.020580801311636025
		 17 0.0061029387171671612 20 0.069110930994005448 23 0.23762208707684151 26 -0.0188450643895497
		 30 0.021 33 0.020580801311636025 34 0.020580801311636025 36 0.020580801311636025
		 38 0.020580801311636025 39 0.020580801311636025 42 0.0061029387171671612 45 0.069110930994005448
		 48 0.23762208707684151 51 -0.0188450643895497;
	setAttr -s 21 ".kit[3:20]"  18 3 18 3 16 16 16 16 
		16 16 18 3 18 3 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 3 18 3 16 
		16 16 1 16 16 18 3 18 3 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 0.73370556209564586 1 1 
		1 1 1 1 1 1 1 0.73370556209564586 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0.67946754753256045 0 0 
		0 0 0 0 0 0 0 0.67946754753256045 0 0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateX";
	rename -uid "451CB2DC-404E-E8B7-417C-618B20A38A9B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 9 0 11 0 13 0 14 0 17 0 20 0
		 23 0 26 0 30 0 33 0 34 0 36 0 38 0 39 0 42 0 45 0 48 0 51 0;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "5916859F-4658-0860-77E3-9EAD59E4975D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 9 0 11 0 13 0 14 0 17 0 20 0
		 23 0 26 0 30 0 33 0 34 0 36 0 38 0 39 0 42 0 45 0 48 0 51 0;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "F7DF2AC3-443F-6C70-4ECC-CB938EEA1E4D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 9 0 11 0 13 0 14 0 17 0 20 0
		 23 0 26 0 30 0 33 0 34 0 36 0 38 0 39 0 42 0 45 0 48 0 51 0;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "F5A2D5E8-42C9-8E72-17E9-B5838DAE6BCD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 -21.500000000000004 5 0 8 0 9 3.0893360160965813
		 11 24.799999999999997 13 36.155555555555544 14 38.419114688128772 17 43.4 20 63.8
		 23 32.099999999999994 26 -21.500000000000004 30 0 33 0 34 3.0893360160965813 36 24.799999999999997
		 38 36.155555555555544 39 38.419114688128772 42 43.4 45 63.8 48 32.099999999999994
		 51 -21.500000000000004;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 0.0050402585575411493 0.0050403267110680191 
		0.0091778899104310706 0.023000049015712225 0.0098494544286006642 1 0.0029308197688702161 
		1 1 1 0.0050402585575411493 0.0050403267110680156 0.0091778899104310672 0.023000049015712225 
		0.0098494544286006642 1 0.0029308197688702178 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0.99998729781616391 0.99998729747264581 
		0.99995788228144489 0.99973546388295886 0.99995149294726227 0 -0.99999570513851821 
		0 0 0 0.99998729781616391 0.99998729747264581 0.99995788228144489 0.99973546388295886 
		0.99995149294726227 0 -0.99999570513851821 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "16301E70-4AEB-3433-9BEA-CDA0635F783C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 0 5 0 8 0 9 8.5502688101637627 11 38 13 38.434916384414059
		 14 38.300000000000004 17 38.300000000000004 20 0 23 0 26 0 30 0 33 0 34 8.5502688101637627
		 36 38 38 38.434916384414059 39 38.300000000000004 42 38.300000000000004 45 0 48 0
		 51 0;
	setAttr -s 21 ".kit[3:20]"  18 1 18 16 16 16 16 16 
		16 16 18 1 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 1 18 16 16 
		16 16 1 16 16 18 1 18 16 16 16 16 1;
	setAttr -s 21 ".kix[4:20]"  0.04349201795367319 1 1 1 1 1 1 1 1 0.003289455887254432 
		0.04349201795367319 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[4:20]"  0.99905377451582522 0 0 0 0 0 0 0 0 0.99999458972534738 
		0.99905377451582522 0 0 0 0 0 0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 0.003289455887254432 0.043492016036683546 
		1 1 1 1 1 1 1 1 0.003289455887254432 0.043492016036683546 1 1 1 1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0.99999458972534738 0.99905377459927791 
		0 0 0 0 0 0 0 0 0.99999458972534738 0.99905377459927791 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "17BA41E1-48D7-2704-402C-5EBDD76DAE10";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 -8.4 5 0 8 0 9 0 11 0 13 0 14 0 17 0 20 9.6000000000000014
		 23 -9.7000000000000028 26 -8.4 30 0 33 0 34 0 36 0 38 0 39 0 42 0 45 9.6000000000000014
		 48 -9.7000000000000028 51 -8.4;
	setAttr -s 21 ".kit[3:20]"  18 16 18 16 16 16 16 16 
		16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kot[0:20]"  1 16 16 18 16 18 16 16 
		16 16 1 16 16 18 16 18 16 16 16 16 1;
	setAttr -s 21 ".kix[20]"  1;
	setAttr -s 21 ".kiy[20]"  0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateX";
	rename -uid "B1889C18-4792-82FB-A317-45878AE1163E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 26 0 51 0;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateY";
	rename -uid "D2EA2763-4474-2D5A-BBB0-18B98318646F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.17029168503303804 26 0.17029168503303804
		 51 0.17029168503303804;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateZ";
	rename -uid "7CF69262-43C3-F3F1-B235-04B1123F2B15";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.2978935890428307 26 0.2978935890428307
		 51 0.2978935890428307;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "walker_lf_knee_pv_ctrl_lfLegIkCtrl";
	rename -uid "D7D3287E-4845-8BA7-06FB-B1855F06136F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 26 0 51 0;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateX";
	rename -uid "4BEB040D-4636-9E99-DC8F-3782A0208E62";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 26 0 51 0;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateY";
	rename -uid "9BAE0064-446B-8DE4-65F7-51868CAC89E3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.17029168503303804 26 0.17029168503303804
		 51 0.17029168503303804;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateZ";
	rename -uid "C2CADCE8-4779-34D1-CDAA-1D87541E1681";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.2978935890428307 26 0.2978935890428307
		 51 0.2978935890428307;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "walker_rt_knee_pv_ctrl_rtLegIkCtrl";
	rename -uid "919B3DDF-4FE6-F539-F2B2-678E935CCE41";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 26 0 51 0;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "CTRL_Top_translateY";
	rename -uid "DA6EABE7-4A36-463F-0CC3-E299ACB9F7F5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 26 0 51 0;
	setAttr -s 3 ".kit[0:2]"  16 16 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "CTRL_Main_translateY";
	rename -uid "D9BD802D-46E5-8968-3F64-5298E5EDD8C5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 -0.14627075708844384 5 -0.53753373728742515
		 8 -0.037916734841007216 11 0.040809148822294805 14 -0.146 17 -0.54466394460840262
		 20 -0.069748310102168615 21 -0.0034904532450562437 23 0.041 26 -0.14627075708844384
		 30 -0.53753373728742515 33 -0.037916734841007216 36 0.040809148822294805 39 -0.146
		 42 -0.54466394460840262 45 -0.069748310102168615 46 -0.0034904532450562437 48 0.041
		 51 -0.14627075708844384;
	setAttr -s 19 ".kit[0:18]"  1 16 1 16 16 16 16 1 
		1 1 16 1 16 16 16 16 1 1 1;
	setAttr -s 19 ".kot[0:18]"  1 16 1 16 16 16 16 1 
		16 1 16 1 16 16 16 16 1 16 3;
	setAttr -s 19 ".kix[0:18]"  0.69053928557928379 1 0.82820379800491917 
		1 0.39270198442130821 1 0.29433064384305546 0.60906201868741372 1 0.69053928557928379 
		1 0.82820379800491917 1 0.39270198442130821 1 0.29433064384305568 0.60906201868741372 
		1 1;
	setAttr -s 19 ".kiy[0:18]"  -0.72329488804473951 0 0.5604270416122219 
		0 -0.91966578246206732 0 0.95570365286260806 0.7931225992193216 0 -0.72329488804473951 
		0 0.5604270416122219 0 -0.91966578246206743 0 0.95570365286260806 0.7931225992193216 
		0 0;
	setAttr -s 19 ".kox[0:18]"  0.71835198093156849 1 0.82820381277809296 
		1 0.39270198442130821 1 0.29433064384305546 0.60906201550588213 1 0.71835198093156849 
		1 0.82820381277809296 1 0.39270198442130821 1 0.29433064384305568 0.60906201550588213 
		1 1;
	setAttr -s 19 ".koy[0:18]"  -0.69567983404127187 0 0.56042701978030085 
		0 -0.91966578246206732 0 0.95570365286260806 0.79312260166251247 0 -0.69567983404127187 
		0 0.56042701978030085 0 -0.91966578246206743 0 0.95570365286260806 0.79312260166251247 
		0 0;
createNode animCurveTL -n "CTRL_Main_translateX";
	rename -uid "08C351F5-41D2-E236-7097-999334DEC41E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 0 5 0 8 0 11 0 14 0 17 0 20 0 21 0 23 0
		 26 0 30 0 33 0 36 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 19 ".kit[7:18]"  18 1 16 16 16 16 16 16 
		16 18 1 1;
	setAttr -s 19 ".kot[0:18]"  1 16 16 16 16 16 16 18 
		16 1 16 16 16 16 16 16 18 16 1;
	setAttr -s 19 ".kix[8:18]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[8:18]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CTRL_Main_translateZ";
	rename -uid "8A142481-44BF-DBC5-0850-DBBB68DFF4AD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 0 5 0 8 0 11 0 14 0 17 0 20 0 21 0 23 0
		 26 0 30 0 33 0 36 0 39 0 42 0 45 0 46 0 48 0 51 0;
	setAttr -s 19 ".kit[7:18]"  18 1 16 16 16 16 16 16 
		16 18 1 1;
	setAttr -s 19 ".kot[0:18]"  1 16 16 16 16 16 16 18 
		16 1 16 16 16 16 16 16 18 16 1;
	setAttr -s 19 ".kix[8:18]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[8:18]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "CTRL_Main_rotateX";
	rename -uid "29A17D23-4B62-9622-83E5-CF8C346B20D0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 0 5 -11.572762075013268 8 -5.1861780027157138
		 11 0 14 0 17 -12.707380122507107 20 -5.6926557750843543 21 -3.2754946391360282 23 0
		 26 0 30 -11.572762075013268 33 -5.1861780027157138 36 0 39 0 42 -12.707380122507107
		 45 -5.6926557750843543 46 -3.2754946391360282 48 0 51 0;
	setAttr -s 19 ".kit[8:18]"  1 9 9 9 9 9 9 9 
		9 1 1;
	setAttr -s 19 ".kot[0:18]"  1 9 9 9 9 9 9 9 
		9 1 9 9 9 9 9 9 9 9 1;
	setAttr -s 19 ".kix[8:18]"  0.96435140256782792 0.82211339836782749 
		0.95506539711731675 0.77785033765006162 0.94026748686421813 0.74805766116533701 0.92930039968742961 
		0.71146709088082027 0.78283358974815831 0.96435140256782792 0.63645306142904534;
	setAttr -s 19 ".kiy[8:18]"  0.2646249654992196 -0.56932377451157068 
		-0.29639515385569626 0.62844956219070225 0.34043656258699256 -0.663633736010946 -0.36932474482599115 
		0.70271941669031923 0.62223112326691932 0.2646249654992196 -0.77131543521285506;
	setAttr -s 19 ".kox[0:18]"  0.63645306142904523 0.95506539711731675 
		0.77785033765006151 0.94026748686421813 0.74805766116533701 0.92930039968742961 0.71146709088082005 
		0.78283358974815831 0.96435140256782792 0.63645306142904523 0.95506539711731675 0.77785033765006162 
		0.94026748686421813 0.74805766116533701 0.92930039968742961 0.71146709088082027 0.78283358974815831 
		0.96435140256782792 0.63645306142904534;
	setAttr -s 19 ".koy[0:18]"  -0.77131543521285495 -0.29639515385569637 
		0.62844956219070214 0.34043656258699251 -0.66363373601094588 -0.36932474482599115 
		0.70271941669031945 0.62223112326691932 0.26462496549921971 -0.77131543521285495 
		-0.29639515385569626 0.62844956219070225 0.34043656258699256 -0.663633736010946 -0.36932474482599115 
		0.70271941669031923 0.62223112326691932 0.26462496549921971 -0.77131543521285506;
createNode animCurveTA -n "CTRL_Main_rotateY";
	rename -uid "523E1C2A-4899-8348-BC19-B5A20EFB19E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  1 0 5 -1.2808476859336713 8 0 11 0 14 0
		 17 1.099424876143055 20 0 21 0 23 0 26 0 30 -1.2808476859336713 33 0 36 0 39 0 42 1.099424876143055
		 45 0 46 0 48 0 51 0;
	setAttr -s 19 ".kit[8:18]"  1 9 9 9 9 9 9 9 
		9 1 1;
	setAttr -s 19 ".kot[0:18]"  1 9 9 9 9 9 9 9 
		9 1 9 9 9 9 9 9 9 9 1;
	setAttr -s 19 ".kix[8:18]"  1 0.99707559322337291 1 0.99602584547834638 
		1 0.99706733735834219 1 0.99343753720350658 1 1 0.99112414929988846;
	setAttr -s 19 ".kiy[8:18]"  0 -0.076421602955310156 0 0.089064668298632715 
		0 0.076529241294723008 0 -0.11437595759175691 0 0 -0.13293953766495639;
	setAttr -s 19 ".kox[0:18]"  0.99112414929988846 1 0.99602584547834638 
		1 0.99706733735834219 1 0.99343753720350658 1 1 0.99112414929988846 1 0.99602584547834638 
		1 0.99706733735834219 1 0.99343753720350658 1 1 0.99112414929988846;
	setAttr -s 19 ".koy[0:18]"  -0.13293953766495639 0 0.089064668298632729 
		0 0.076529241294722994 0 -0.11437595759175698 0 0 -0.13293953766495639 0 0.089064668298632715 
		0 0.076529241294723008 0 -0.11437595759175691 0 0 -0.13293953766495639;
createNode animCurveTA -n "CTRL_Main_rotateZ";
	rename -uid "7287750E-4124-C63F-09EE-68B539A6D56A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  1 0 5 -7.9840638140042275 8 -6.5285980265996866
		 11 0 14 4.7637833459005412 17 7.7999383387462276 20 6.5048614441725459 23 1.9055133383602152
		 26 0 30 -7.9840638140042275 33 -6.5285980265996866 36 0 39 4.7637833459005412 42 7.7999383387462276
		 45 6.5048614441725459 48 1.9055133383602152 51 0;
	setAttr -s 17 ".kit[0:16]"  1 16 16 16 16 16 16 1 
		1 16 16 16 16 16 16 1 1;
	setAttr -s 17 ".kot[0:16]"  1 16 16 16 16 16 16 16 
		1 16 16 16 16 16 16 16 1;
	setAttr -s 17 ".kix[0:16]"  0.59952168245123949 1 0.87347513647753317 
		0.78530910121749053 0.87823358101638083 1 0.92476149383554074 1 0.59952168245123949 
		1 0.87347513647753317 0.78530910121749042 0.87823358101638083 1 0.92476149383554074 
		1 0.59952168245123949;
	setAttr -s 17 ".kiy[0:16]"  -0.80035851483621712 0 0.48686875639699323 
		0.619103881061149 0.47823192822640365 0 -0.38054721063103197 0 -0.80035851483621712 
		0 0.48686875639699312 0.619103881061149 0.47823192822640376 0 -0.38054721063103197 
		0 -0.80035851483621712;
	setAttr -s 17 ".kox[0:16]"  0.64102901997512729 1 0.87347513647753317 
		0.78530910121749053 0.87823358101638083 1 0.92476149383554074 1 0.64102901997512729 
		1 0.87347513647753317 0.78530910121749042 0.87823358101638083 1 0.92476149383554074 
		1 0.64102901997512729;
	setAttr -s 17 ".koy[0:16]"  -0.76751664187151536 0 0.48686875639699323 
		0.619103881061149 0.47823192822640365 0 -0.38054721063103197 0 -0.76751664187151536 
		0 0.48686875639699312 0.619103881061149 0.47823192822640376 0 -0.38054721063103197 
		0 -0.76751664187151536;
createNode reference -n "sharedReferenceNode";
	rename -uid "909ABFA8-4FFC-E666-BF10-D49E523AF7DF";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BCA1BD0C-4593-1F7F-9A5A-3B99B5A5CEF9";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 699\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 699\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 699\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CE6CF6C2-479D-1EB8-F948-3BA5BBB99AB2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 50 -ast -4 -aet 50 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:multiplyDivide1";
	rename -uid "605B0E9C-4F7D-67A9-9A16-14841DE42996";
	setAttr ".op" 2;
createNode multiplyDivide -n "Ultimate_Walker_Rig1:multiplyDivide2";
	rename -uid "48AA4B5E-4C12-C5D3-9265-CAA01AC7009F";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode animCurveTL -n "merge1_0_translateX";
	rename -uid "176293E1-40C1-E4FE-EA01-B2B73184308D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTL -n "merge1_0_translateY";
	rename -uid "ED66BFAA-49B1-E102-CD66-69927759503C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTL -n "merge1_0_translateZ";
	rename -uid "17BA5887-4EF3-45E3-C28C-DEA74B75CF9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTU -n "merge1_0_visibility";
	rename -uid "A8F408B3-4C9B-CC58-FF51-82AF2A98BBE6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 50 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "merge1_0_rotateX";
	rename -uid "5A1E3615-4484-0280-824F-A9B800665176";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTA -n "merge1_0_rotateY";
	rename -uid "C38BF5F7-4579-4474-F6F5-B08483AACFCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTA -n "merge1_0_rotateZ";
	rename -uid "F33B59E6-4874-EA3A-D39C-9B912B0DAC78";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 50 0;
createNode animCurveTU -n "merge1_0_scaleX";
	rename -uid "E5C869AC-4F2F-0DF8-450A-138E434D2AA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.4141748692483134 50 8.4141748692483134;
createNode animCurveTU -n "merge1_0_scaleY";
	rename -uid "67641D60-49E4-8F81-AE9A-C78E965AD6D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.4141748692483134 50 8.4141748692483134;
createNode animCurveTU -n "merge1_0_scaleZ";
	rename -uid "A8425DA8-4AE9-41CA-6D32-66B20882FE2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.4141748692483134 50 8.4141748692483134;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "630717F9-4E69-AB8F-6279-11BF11F5EA92";
	setAttr ".pee" yes;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 0 -30.95237972244389 ;
	setAttr ".tgi[0].vh" -type "double2" 114.28570974440821 0 ;
	setAttr -s 531 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -190;
	setAttr ".tgi[0].ni[0].y" 17.142856597900391;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -3334.28564453125;
	setAttr ".tgi[0].ni[1].y" 6898.5712890625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -1967.142822265625;
	setAttr ".tgi[0].ni[2].y" 5112.85693359375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 3404.28564453125;
	setAttr ".tgi[0].ni[3].y" 5815.71435546875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -3334.28564453125;
	setAttr ".tgi[0].ni[4].y" 8035.71435546875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -3334.28564453125;
	setAttr ".tgi[0].ni[5].y" 7731.4287109375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -3334.28564453125;
	setAttr ".tgi[0].ni[6].y" 7934.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -3682.857177734375;
	setAttr ".tgi[0].ni[7].y" 7762.85693359375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -3682.857177734375;
	setAttr ".tgi[0].ni[8].y" 7560;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -3334.28564453125;
	setAttr ".tgi[0].ni[9].y" 7528.5712890625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -3334.28564453125;
	setAttr ".tgi[0].ni[10].y" 7000;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -4628.5712890625;
	setAttr ".tgi[0].ni[11].y" 7748.5712890625;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -3334.28564453125;
	setAttr ".tgi[0].ni[12].y" 7101.4287109375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -4941.4287109375;
	setAttr ".tgi[0].ni[13].y" 7437.14306640625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -3334.28564453125;
	setAttr ".tgi[0].ni[14].y" 7630;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -3682.857177734375;
	setAttr ".tgi[0].ni[15].y" 8168.5712890625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -3682.857177734375;
	setAttr ".tgi[0].ni[16].y" 8067.14306640625;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -3682.857177734375;
	setAttr ".tgi[0].ni[17].y" 7965.71435546875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -3334.28564453125;
	setAttr ".tgi[0].ni[18].y" 8340;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -3334.28564453125;
	setAttr ".tgi[0].ni[19].y" 7427.14306640625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -3682.857177734375;
	setAttr ".tgi[0].ni[20].y" 8371.4287109375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -3682.857177734375;
	setAttr ".tgi[0].ni[21].y" 8270;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -3682.857177734375;
	setAttr ".tgi[0].ni[22].y" 7864.28564453125;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -3682.857177734375;
	setAttr ".tgi[0].ni[23].y" 7661.4287109375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -3682.857177734375;
	setAttr ".tgi[0].ni[24].y" 7458.5712890625;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -3682.857177734375;
	setAttr ".tgi[0].ni[25].y" 7357.14306640625;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -3682.857177734375;
	setAttr ".tgi[0].ni[26].y" 7255.71435546875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -3334.28564453125;
	setAttr ".tgi[0].ni[27].y" 8137.14306640625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -3682.857177734375;
	setAttr ".tgi[0].ni[28].y" 7154.28564453125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" -1967.142822265625;
	setAttr ".tgi[0].ni[29].y" 5937.14306640625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -1967.142822265625;
	setAttr ".tgi[0].ni[30].y" 5835.71435546875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -1967.142822265625;
	setAttr ".tgi[0].ni[31].y" 5734.28564453125;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -1967.142822265625;
	setAttr ".tgi[0].ni[32].y" 5632.85693359375;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -1967.142822265625;
	setAttr ".tgi[0].ni[33].y" 5417.14306640625;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -3334.28564453125;
	setAttr ".tgi[0].ni[34].y" 8238.5712890625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -3334.28564453125;
	setAttr ".tgi[0].ni[35].y" 7832.85693359375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -3682.857177734375;
	setAttr ".tgi[0].ni[36].y" 7052.85693359375;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -3334.28564453125;
	setAttr ".tgi[0].ni[37].y" 7202.85693359375;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -1967.142822265625;
	setAttr ".tgi[0].ni[38].y" 5315.71435546875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" -1967.142822265625;
	setAttr ".tgi[0].ni[39].y" 5214.28564453125;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 4562.85693359375;
	setAttr ".tgi[0].ni[40].y" -9768.5712890625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 3404.28564453125;
	setAttr ".tgi[0].ni[41].y" 5714.28564453125;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 3404.28564453125;
	setAttr ".tgi[0].ni[42].y" 5612.85693359375;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 3404.28564453125;
	setAttr ".tgi[0].ni[43].y" 5511.4287109375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 3404.28564453125;
	setAttr ".tgi[0].ni[44].y" 5410;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 3404.28564453125;
	setAttr ".tgi[0].ni[45].y" 5308.5712890625;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 117.14286041259766;
	setAttr ".tgi[0].ni[46].y" 18.571428298950195;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" -197.14285278320312;
	setAttr ".tgi[0].ni[47].y" 82.857139587402344;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 124.28571319580078;
	setAttr ".tgi[0].ni[48].y" 31.428571701049805;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 124.28571319580078;
	setAttr ".tgi[0].ni[49].y" -70;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 124.28571319580078;
	setAttr ".tgi[0].ni[50].y" 234.28572082519531;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 124.28571319580078;
	setAttr ".tgi[0].ni[51].y" 132.85714721679688;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 4684.28564453125;
	setAttr ".tgi[0].ni[52].y" 5652.85693359375;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 4740;
	setAttr ".tgi[0].ni[53].y" -4372.85693359375;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 4684.28564453125;
	setAttr ".tgi[0].ni[54].y" 9752.857421875;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" -1967.142822265625;
	setAttr ".tgi[0].ni[55].y" 6828.5712890625;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 4234.28564453125;
	setAttr ".tgi[0].ni[56].y" 9512.857421875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 4234.28564453125;
	setAttr ".tgi[0].ni[57].y" -6257.14306640625;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 4684.28564453125;
	setAttr ".tgi[0].ni[58].y" 9618.5712890625;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 332.85714721679688;
	setAttr ".tgi[0].ni[59].y" 840;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -281.42855834960938;
	setAttr ".tgi[0].ni[60].y" 3072.857177734375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 4684.28564453125;
	setAttr ".tgi[0].ni[61].y" 9495.7138671875;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 25.714284896850586;
	setAttr ".tgi[0].ni[62].y" 2854.28564453125;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 4234.28564453125;
	setAttr ".tgi[0].ni[63].y" 9752.857421875;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 4684.28564453125;
	setAttr ".tgi[0].ni[64].y" 9274.2861328125;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 4684.28564453125;
	setAttr ".tgi[0].ni[65].y" 9022.857421875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -611.4285888671875;
	setAttr ".tgi[0].ni[66].y" 5244.28564453125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -281.42855834960938;
	setAttr ".tgi[0].ni[67].y" 4280;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 4684.28564453125;
	setAttr ".tgi[0].ni[68].y" 8720;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" -611.4285888671875;
	setAttr ".tgi[0].ni[69].y" 3494.28564453125;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 4684.28564453125;
	setAttr ".tgi[0].ni[70].y" 8195.7138671875;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 4684.28564453125;
	setAttr ".tgi[0].ni[71].y" 8024.28564453125;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 4684.28564453125;
	setAttr ".tgi[0].ni[72].y" 7841.4287109375;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 3738.571533203125;
	setAttr ".tgi[0].ni[73].y" 7477.14306640625;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" -281.42855834960938;
	setAttr ".tgi[0].ni[74].y" 3367.142822265625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" -2331.428466796875;
	setAttr ".tgi[0].ni[75].y" 6817.14306640625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 4234.28564453125;
	setAttr ".tgi[0].ni[76].y" -871.4285888671875;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 4684.28564453125;
	setAttr ".tgi[0].ni[77].y" 3862.857177734375;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 4234.28564453125;
	setAttr ".tgi[0].ni[78].y" 7475.71435546875;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 4684.28564453125;
	setAttr ".tgi[0].ni[79].y" 7718.5712890625;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 4684.28564453125;
	setAttr ".tgi[0].ni[80].y" 7415.71435546875;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 3738.571533203125;
	setAttr ".tgi[0].ni[81].y" 1965.7142333984375;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 4234.28564453125;
	setAttr ".tgi[0].ni[82].y" 7295.71435546875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -918.5714111328125;
	setAttr ".tgi[0].ni[83].y" 4604.28564453125;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 4234.28564453125;
	setAttr ".tgi[0].ni[84].y" 8921.4287109375;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 4234.28564453125;
	setAttr ".tgi[0].ni[85].y" 7721.4287109375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 4748.5712890625;
	setAttr ".tgi[0].ni[86].y" -15427.142578125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 4234.28564453125;
	setAttr ".tgi[0].ni[87].y" 8618.5712890625;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 4684.28564453125;
	setAttr ".tgi[0].ni[88].y" 7292.85693359375;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 4684.28564453125;
	setAttr ".tgi[0].ni[89].y" 4351.4287109375;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 3404.28564453125;
	setAttr ".tgi[0].ni[90].y" 6690;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 4234.28564453125;
	setAttr ".tgi[0].ni[91].y" 8024.28564453125;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 4684.28564453125;
	setAttr ".tgi[0].ni[92].y" 6262.85693359375;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" -2331.428466796875;
	setAttr ".tgi[0].ni[93].y" 6940;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 4748.5712890625;
	setAttr ".tgi[0].ni[94].y" -15275.7138671875;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 332.85714721679688;
	setAttr ".tgi[0].ni[95].y" 5592.85693359375;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 4748.5712890625;
	setAttr ".tgi[0].ni[96].y" -3767.142822265625;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 25.714284896850586;
	setAttr ".tgi[0].ni[97].y" 3205.71435546875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 4748.5712890625;
	setAttr ".tgi[0].ni[98].y" -15124.2861328125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 3097.142822265625;
	setAttr ".tgi[0].ni[99].y" 7905.71435546875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 4748.5712890625;
	setAttr ".tgi[0].ni[100].y" -14972.857421875;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 332.85714721679688;
	setAttr ".tgi[0].ni[101].y" 5012.85693359375;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" -918.5714111328125;
	setAttr ".tgi[0].ni[102].y" 5668.5712890625;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 4748.5712890625;
	setAttr ".tgi[0].ni[103].y" -14821.4287109375;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 4684.28564453125;
	setAttr ".tgi[0].ni[104].y" 4935.71435546875;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 4234.28564453125;
	setAttr ".tgi[0].ni[105].y" -7288.5712890625;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 4684.28564453125;
	setAttr ".tgi[0].ni[106].y" 4812.85693359375;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 4234.28564453125;
	setAttr ".tgi[0].ni[107].y" -8082.85693359375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 4684.28564453125;
	setAttr ".tgi[0].ni[108].y" 4674.28564453125;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 4748.5712890625;
	setAttr ".tgi[0].ni[109].y" -14670;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 4748.5712890625;
	setAttr ".tgi[0].ni[110].y" -3615.71435546875;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 4684.28564453125;
	setAttr ".tgi[0].ni[111].y" 4502.85693359375;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 4748.5712890625;
	setAttr ".tgi[0].ni[112].y" -14518.5712890625;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 4748.5712890625;
	setAttr ".tgi[0].ni[113].y" -14367.142578125;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 4870;
	setAttr ".tgi[0].ni[114].y" -9768.5712890625;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 4234.28564453125;
	setAttr ".tgi[0].ni[115].y" 7901.4287109375;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 4234.28564453125;
	setAttr ".tgi[0].ni[116].y" 2908.571533203125;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 3738.571533203125;
	setAttr ".tgi[0].ni[117].y" 5608.5712890625;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 4684.28564453125;
	setAttr ".tgi[0].ni[118].y" 4204.28564453125;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 4684.28564453125;
	setAttr ".tgi[0].ni[119].y" 3991.428466796875;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 4748.5712890625;
	setAttr ".tgi[0].ni[120].y" -14064.2861328125;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 4748.5712890625;
	setAttr ".tgi[0].ni[121].y" -13912.857421875;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 4234.28564453125;
	setAttr ".tgi[0].ni[122].y" -8451.4287109375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 3097.142822265625;
	setAttr ".tgi[0].ni[123].y" 6835.71435546875;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 4234.28564453125;
	setAttr ".tgi[0].ni[124].y" 3962.857177734375;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 4441.4287109375;
	setAttr ".tgi[0].ni[125].y" -3161.428466796875;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 3520;
	setAttr ".tgi[0].ni[126].y" -3161.428466796875;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 4748.5712890625;
	setAttr ".tgi[0].ni[127].y" -13761.4287109375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 4748.5712890625;
	setAttr ".tgi[0].ni[128].y" -13610;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 4748.5712890625;
	setAttr ".tgi[0].ni[129].y" -13458.5712890625;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 4748.5712890625;
	setAttr ".tgi[0].ni[130].y" -13307.142578125;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 4748.5712890625;
	setAttr ".tgi[0].ni[131].y" -13155.7138671875;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 4748.5712890625;
	setAttr ".tgi[0].ni[132].y" -13004.2861328125;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 4748.5712890625;
	setAttr ".tgi[0].ni[133].y" -12852.857421875;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 4748.5712890625;
	setAttr ".tgi[0].ni[134].y" -12701.4287109375;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 4134.28564453125;
	setAttr ".tgi[0].ni[135].y" -3161.428466796875;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 4684.28564453125;
	setAttr ".tgi[0].ni[136].y" 3617.142822265625;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 1561.4285888671875;
	setAttr ".tgi[0].ni[137].y" 4602.85693359375;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 4684.28564453125;
	setAttr ".tgi[0].ni[138].y" 3494.28564453125;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 4234.28564453125;
	setAttr ".tgi[0].ni[139].y" 4502.85693359375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 4234.28564453125;
	setAttr ".tgi[0].ni[140].y" -9180;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 4748.5712890625;
	setAttr ".tgi[0].ni[141].y" -12550;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 4684.28564453125;
	setAttr ".tgi[0].ni[142].y" 3371.428466796875;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 4234.28564453125;
	setAttr ".tgi[0].ni[143].y" -8942.857421875;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 4748.5712890625;
	setAttr ".tgi[0].ni[144].y" -12398.5712890625;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 1561.4285888671875;
	setAttr ".tgi[0].ni[145].y" 2525.71435546875;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 4748.5712890625;
	setAttr ".tgi[0].ni[146].y" -12247.142578125;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 4234.28564453125;
	setAttr ".tgi[0].ni[147].y" -8574.2861328125;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 4748.5712890625;
	setAttr ".tgi[0].ni[148].y" -12095.7138671875;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 4684.28564453125;
	setAttr ".tgi[0].ni[149].y" 2757.142822265625;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 4748.5712890625;
	setAttr ".tgi[0].ni[150].y" -11944.2861328125;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 3404.28564453125;
	setAttr ".tgi[0].ni[151].y" 6281.4287109375;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 4234.28564453125;
	setAttr ".tgi[0].ni[152].y" 4142.85693359375;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 4684.28564453125;
	setAttr ".tgi[0].ni[153].y" 3248.571533203125;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 4684.28564453125;
	setAttr ".tgi[0].ni[154].y" 3002.857177734375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 3738.571533203125;
	setAttr ".tgi[0].ni[155].y" 5428.5712890625;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 4748.5712890625;
	setAttr ".tgi[0].ni[156].y" -11792.857421875;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 4748.5712890625;
	setAttr ".tgi[0].ni[157].y" -11641.4287109375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 4748.5712890625;
	setAttr ".tgi[0].ni[158].y" -3161.428466796875;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 4234.28564453125;
	setAttr ".tgi[0].ni[159].y" -9360;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 4748.5712890625;
	setAttr ".tgi[0].ni[160].y" -11490;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 4684.28564453125;
	setAttr ".tgi[0].ni[161].y" 2880;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 3097.142822265625;
	setAttr ".tgi[0].ni[162].y" 6712.85693359375;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 4748.5712890625;
	setAttr ".tgi[0].ni[163].y" -11338.5712890625;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 4234.28564453125;
	setAttr ".tgi[0].ni[164].y" 2728.571533203125;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 3404.28564453125;
	setAttr ".tgi[0].ni[165].y" -7098.5712890625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 4748.5712890625;
	setAttr ".tgi[0].ni[166].y" -11187.142578125;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 4748.5712890625;
	setAttr ".tgi[0].ni[167].y" -11035.7138671875;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 4748.5712890625;
	setAttr ".tgi[0].ni[168].y" -10884.2861328125;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 4684.28564453125;
	setAttr ".tgi[0].ni[169].y" 2624.28564453125;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 4748.5712890625;
	setAttr ".tgi[0].ni[170].y" -10732.857421875;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 4748.5712890625;
	setAttr ".tgi[0].ni[171].y" -10581.4287109375;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 4748.5712890625;
	setAttr ".tgi[0].ni[172].y" -10430;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 3827.142822265625;
	setAttr ".tgi[0].ni[173].y" -3161.428466796875;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 4684.28564453125;
	setAttr ".tgi[0].ni[174].y" 2501.428466796875;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 4684.28564453125;
	setAttr ".tgi[0].ni[175].y" 2340;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 4234.28564453125;
	setAttr ".tgi[0].ni[176].y" -8328.5712890625;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 4748.5712890625;
	setAttr ".tgi[0].ni[177].y" -10278.5712890625;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 4234.28564453125;
	setAttr ".tgi[0].ni[178].y" 2311.428466796875;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 4234.28564453125;
	setAttr ".tgi[0].ni[179].y" 2491.428466796875;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[180].y" 6680;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 4684.28564453125;
	setAttr ".tgi[0].ni[181].y" 1080;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 3404.28564453125;
	setAttr ".tgi[0].ni[182].y" -6607.14306640625;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 4234.28564453125;
	setAttr ".tgi[0].ni[183].y" 2131.428466796875;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 4234.28564453125;
	setAttr ".tgi[0].ni[184].y" 1951.4285888671875;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 4234.28564453125;
	setAttr ".tgi[0].ni[185].y" 1591.4285888671875;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" -2988.571533203125;
	setAttr ".tgi[0].ni[186].y" 7644.28564453125;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 4234.28564453125;
	setAttr ".tgi[0].ni[187].y" -7714.28564453125;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 4684.28564453125;
	setAttr ".tgi[0].ni[188].y" 1980;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 4684.28564453125;
	setAttr ".tgi[0].ni[189].y" 1620;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 4234.28564453125;
	setAttr ".tgi[0].ni[190].y" 568.5714111328125;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 4684.28564453125;
	setAttr ".tgi[0].ni[191].y" 1407.142822265625;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 3404.28564453125;
	setAttr ".tgi[0].ni[192].y" 331.42855834960938;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" -2658.571533203125;
	setAttr ".tgi[0].ni[193].y" 8008.5712890625;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 4684.28564453125;
	setAttr ".tgi[0].ni[194].y" 1227.142822265625;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 4748.5712890625;
	setAttr ".tgi[0].ni[195].y" -10127.142578125;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 4234.28564453125;
	setAttr ".tgi[0].ni[196].y" -7591.4287109375;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 4684.28564453125;
	setAttr ".tgi[0].ni[197].y" 2160;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 4234.28564453125;
	setAttr ".tgi[0].ni[198].y" 748.5714111328125;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[199].y" 7254.28564453125;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 4748.5712890625;
	setAttr ".tgi[0].ni[200].y" -9975.7138671875;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 4234.28564453125;
	setAttr ".tgi[0].ni[201].y" 1051.4285888671875;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 4684.28564453125;
	setAttr ".tgi[0].ni[202].y" 870;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 4234.28564453125;
	setAttr ".tgi[0].ni[203].y" -8697.142578125;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 4234.28564453125;
	setAttr ".tgi[0].ni[204].y" -7468.5712890625;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 4234.28564453125;
	setAttr ".tgi[0].ni[205].y" -7837.14306640625;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" -4011.428466796875;
	setAttr ".tgi[0].ni[206].y" 8084.28564453125;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 4684.28564453125;
	setAttr ".tgi[0].ni[207].y" 747.14288330078125;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 4684.28564453125;
	setAttr ".tgi[0].ni[208].y" 597.14288330078125;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 4234.28564453125;
	setAttr ".tgi[0].ni[209].y" -8820;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 4234.28564453125;
	setAttr ".tgi[0].ni[210].y" 388.57144165039062;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" -1967.142822265625;
	setAttr ".tgi[0].ni[211].y" 6231.4287109375;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 4684.28564453125;
	setAttr ".tgi[0].ni[212].y" 204.28572082519531;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 4234.28564453125;
	setAttr ".tgi[0].ni[213].y" 85.714286804199219;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 3404.28564453125;
	setAttr ".tgi[0].ni[214].y" -6975.71435546875;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 4684.28564453125;
	setAttr ".tgi[0].ni[215].y" 27.142856597900391;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 3404.28564453125;
	setAttr ".tgi[0].ni[216].y" -6730;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 4748.5712890625;
	setAttr ".tgi[0].ni[217].y" -9824.2861328125;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[218].y" 6860;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 3404.28564453125;
	setAttr ".tgi[0].ni[219].y" -6852.85693359375;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" -1967.142822265625;
	setAttr ".tgi[0].ni[220].y" 7720;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 4234.28564453125;
	setAttr ".tgi[0].ni[221].y" 7598.5712890625;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 4684.28564453125;
	setAttr ".tgi[0].ni[222].y" 417.14285278320312;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 4234.28564453125;
	setAttr ".tgi[0].ni[223].y" 265.71429443359375;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 4234.28564453125;
	setAttr ".tgi[0].ni[224].y" 1468.5714111328125;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 4234.28564453125;
	setAttr ".tgi[0].ni[225].y" -8205.7138671875;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" -2988.571533203125;
	setAttr ".tgi[0].ni[226].y" 7890;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" -3334.28564453125;
	setAttr ".tgi[0].ni[227].y" 8462.857421875;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 3738.571533203125;
	setAttr ".tgi[0].ni[228].y" 1785.7142333984375;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" -3682.857177734375;
	setAttr ".tgi[0].ni[229].y" 8494.2861328125;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" -2331.428466796875;
	setAttr ".tgi[0].ni[230].y" 7832.85693359375;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" -2658.571533203125;
	setAttr ".tgi[0].ni[231].y" 7885.71435546875;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 4684.28564453125;
	setAttr ".tgi[0].ni[232].y" -95.714286804199219;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 4234.28564453125;
	setAttr ".tgi[0].ni[233].y" -94.285713195800781;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 4234.28564453125;
	setAttr ".tgi[0].ni[234].y" 1288.5714111328125;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 3738.571533203125;
	setAttr ".tgi[0].ni[235].y" 1605.7142333984375;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 4234.28564453125;
	setAttr ".tgi[0].ni[236].y" 928.5714111328125;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" -3334.28564453125;
	setAttr ".tgi[0].ni[237].y" 6617.14306640625;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" -3682.857177734375;
	setAttr ".tgi[0].ni[238].y" 6591.4287109375;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" -3334.28564453125;
	setAttr ".tgi[0].ni[239].y" 6257.14306640625;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" -4011.428466796875;
	setAttr ".tgi[0].ni[240].y" 7251.4287109375;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" -4318.5712890625;
	setAttr ".tgi[0].ni[241].y" 7362.85693359375;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" -3334.28564453125;
	setAttr ".tgi[0].ni[242].y" 6437.14306640625;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" -1967.142822265625;
	setAttr ".tgi[0].ni[243].y" 6705.71435546875;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 4748.5712890625;
	setAttr ".tgi[0].ni[244].y" -9672.857421875;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 4748.5712890625;
	setAttr ".tgi[0].ni[245].y" -9521.4287109375;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" -611.4285888671875;
	setAttr ".tgi[0].ni[246].y" 4454.28564453125;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[247].y" 4942.85693359375;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 4684.28564453125;
	setAttr ".tgi[0].ni[248].y" -237.14285278320312;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 3738.571533203125;
	setAttr ".tgi[0].ni[249].y" 2585.71435546875;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 3738.571533203125;
	setAttr ".tgi[0].ni[250].y" 1482.857177734375;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 4748.5712890625;
	setAttr ".tgi[0].ni[251].y" -9370;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 4684.28564453125;
	setAttr ".tgi[0].ni[252].y" -360;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 4684.28564453125;
	setAttr ".tgi[0].ni[253].y" -605.71429443359375;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 4748.5712890625;
	setAttr ".tgi[0].ni[254].y" -15578.5712890625;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 4684.28564453125;
	setAttr ".tgi[0].ni[255].y" -728.5714111328125;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 4684.28564453125;
	setAttr ".tgi[0].ni[256].y" -851.4285888671875;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 4234.28564453125;
	setAttr ".tgi[0].ni[257].y" -1714.2857666015625;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 3404.28564453125;
	setAttr ".tgi[0].ni[258].y" 454.28570556640625;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 4234.28564453125;
	setAttr ".tgi[0].ni[259].y" 3497.142822265625;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[260].y" 5048.5712890625;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" -192.85714721679688;
	setAttr ".tgi[0].ni[261].y" 17.142856597900391;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 25.714284896850586;
	setAttr ".tgi[0].ni[262].y" 4447.14306640625;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 4684.28564453125;
	setAttr ".tgi[0].ni[263].y" -974.28570556640625;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 4748.5712890625;
	setAttr ".tgi[0].ni[264].y" -9218.5712890625;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 4684.28564453125;
	setAttr ".tgi[0].ni[265].y" -1097.142822265625;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 4234.28564453125;
	setAttr ".tgi[0].ni[266].y" -1174.2857666015625;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" -192.85714721679688;
	setAttr ".tgi[0].ni[267].y" -84.285713195800781;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 4748.5712890625;
	setAttr ".tgi[0].ni[268].y" -9067.142578125;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 4684.28564453125;
	setAttr ".tgi[0].ni[269].y" -1220;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 4684.28564453125;
	setAttr ".tgi[0].ni[270].y" -1342.857177734375;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 3738.571533203125;
	setAttr ".tgi[0].ni[271].y" 3544.28564453125;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" -192.85714721679688;
	setAttr ".tgi[0].ni[272].y" 118.57142639160156;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 4234.28564453125;
	setAttr ".tgi[0].ni[273].y" 9044.2861328125;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 4234.28564453125;
	setAttr ".tgi[0].ni[274].y" -1354.2857666015625;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 4684.28564453125;
	setAttr ".tgi[0].ni[275].y" -1465.7142333984375;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 4234.28564453125;
	setAttr ".tgi[0].ni[276].y" -1477.142822265625;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" -918.5714111328125;
	setAttr ".tgi[0].ni[277].y" 5488.5712890625;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 4234.28564453125;
	setAttr ".tgi[0].ni[278].y" -625.71429443359375;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 332.85714721679688;
	setAttr ".tgi[0].ni[279].y" 962.85711669921875;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 4234.28564453125;
	setAttr ".tgi[0].ni[280].y" -1051.4285888671875;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 114.28571319580078;
	setAttr ".tgi[0].ni[281].y" 17.142856597900391;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 4684.28564453125;
	setAttr ".tgi[0].ni[282].y" 3740;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 4684.28564453125;
	setAttr ".tgi[0].ni[283].y" -1588.5714111328125;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 4748.5712890625;
	setAttr ".tgi[0].ni[284].y" -8915.7138671875;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 4234.28564453125;
	setAttr ".tgi[0].ni[285].y" -2082.857177734375;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" -918.5714111328125;
	setAttr ".tgi[0].ni[286].y" 4481.4287109375;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 4684.28564453125;
	setAttr ".tgi[0].ni[287].y" -1711.4285888671875;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 4684.28564453125;
	setAttr ".tgi[0].ni[288].y" -1834.2857666015625;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 4748.5712890625;
	setAttr ".tgi[0].ni[289].y" -8764.2861328125;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 4684.28564453125;
	setAttr ".tgi[0].ni[290].y" -1957.142822265625;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 4748.5712890625;
	setAttr ".tgi[0].ni[291].y" -8612.857421875;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 4234.28564453125;
	setAttr ".tgi[0].ni[292].y" -1837.142822265625;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 4234.28564453125;
	setAttr ".tgi[0].ni[293].y" -1960;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 4234.28564453125;
	setAttr ".tgi[0].ni[294].y" -748.5714111328125;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 4234.28564453125;
	setAttr ".tgi[0].ni[295].y" -388.57144165039062;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 3097.142822265625;
	setAttr ".tgi[0].ni[296].y" 348.57144165039062;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 4741.4287109375;
	setAttr ".tgi[0].ni[297].y" -4827.14306640625;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 3738.571533203125;
	setAttr ".tgi[0].ni[298].y" -7.1428570747375488;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 4684.28564453125;
	setAttr ".tgi[0].ni[299].y" -2080;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 3097.142822265625;
	setAttr ".tgi[0].ni[300].y" 4190;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 4671.4287109375;
	setAttr ".tgi[0].ni[301].y" -3464.28564453125;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" -1967.142822265625;
	setAttr ".tgi[0].ni[302].y" 8137.14306640625;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 3097.142822265625;
	setAttr ".tgi[0].ni[303].y" 8085.71435546875;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 4234.28564453125;
	setAttr ".tgi[0].ni[304].y" -3417.142822265625;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" -1967.142822265625;
	setAttr ".tgi[0].ni[305].y" 7474.28564453125;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" -4318.5712890625;
	setAttr ".tgi[0].ni[306].y" 7748.5712890625;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 3404.28564453125;
	setAttr ".tgi[0].ni[307].y" 8044.28564453125;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 4748.5712890625;
	setAttr ".tgi[0].ni[308].y" -8461.4287109375;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 4684.28564453125;
	setAttr ".tgi[0].ni[309].y" -2202.857177734375;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 4748.5712890625;
	setAttr ".tgi[0].ni[310].y" -8310;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" -3334.28564453125;
	setAttr ".tgi[0].ni[311].y" 8765.7138671875;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 4748.5712890625;
	setAttr ".tgi[0].ni[312].y" -8158.5712890625;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 4684.28564453125;
	setAttr ".tgi[0].ni[313].y" -2325.71435546875;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" -918.5714111328125;
	setAttr ".tgi[0].ni[314].y" 6551.4287109375;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 4741.4287109375;
	setAttr ".tgi[0].ni[315].y" -4675.71435546875;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" -918.5714111328125;
	setAttr ".tgi[0].ni[316].y" 6370;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 4234.28564453125;
	setAttr ".tgi[0].ni[317].y" -2451.428466796875;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[318].y" 5744.28564453125;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 4684.28564453125;
	setAttr ".tgi[0].ni[319].y" -2448.571533203125;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" -2988.571533203125;
	setAttr ".tgi[0].ni[320].y" 7767.14306640625;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 4684.28564453125;
	setAttr ".tgi[0].ni[321].y" -2571.428466796875;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[322].y" 7100;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 4684.28564453125;
	setAttr ".tgi[0].ni[323].y" -2694.28564453125;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 4741.4287109375;
	setAttr ".tgi[0].ni[324].y" -4524.28564453125;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 4748.5712890625;
	setAttr ".tgi[0].ni[325].y" -8007.14306640625;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 4684.28564453125;
	setAttr ".tgi[0].ni[326].y" -2817.142822265625;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 4234.28564453125;
	setAttr ".tgi[0].ni[327].y" -2328.571533203125;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 4747.14306640625;
	setAttr ".tgi[0].ni[328].y" -5281.4287109375;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 4234.28564453125;
	setAttr ".tgi[0].ni[329].y" -3597.142822265625;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 4234.28564453125;
	setAttr ".tgi[0].ni[330].y" -2205.71435546875;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 4748.5712890625;
	setAttr ".tgi[0].ni[331].y" -7855.71435546875;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 4748.5712890625;
	setAttr ".tgi[0].ni[332].y" -7704.28564453125;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" -1967.142822265625;
	setAttr ".tgi[0].ni[333].y" 7597.14306640625;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" 4234.28564453125;
	setAttr ".tgi[0].ni[334].y" -2820;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 4684.28564453125;
	setAttr ".tgi[0].ni[335].y" -3062.857177734375;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 4684.28564453125;
	setAttr ".tgi[0].ni[336].y" -3185.71435546875;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 3738.571533203125;
	setAttr ".tgi[0].ni[337].y" 7600;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 4684.28564453125;
	setAttr ".tgi[0].ni[338].y" -3308.571533203125;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[339].y" 7478.5712890625;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" 4234.28564453125;
	setAttr ".tgi[0].ni[340].y" -3842.857177734375;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 4684.28564453125;
	setAttr ".tgi[0].ni[341].y" -3431.428466796875;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 4684.28564453125;
	setAttr ".tgi[0].ni[342].y" -3554.28564453125;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 4684.28564453125;
	setAttr ".tgi[0].ni[343].y" 8405.7138671875;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 4307.14306640625;
	setAttr ".tgi[0].ni[344].y" -3464.28564453125;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 4234.28564453125;
	setAttr ".tgi[0].ni[345].y" -4022.857177734375;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 4234.28564453125;
	setAttr ".tgi[0].ni[346].y" -4382.85693359375;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 4234.28564453125;
	setAttr ".tgi[0].ni[347].y" -4260;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" 4234.28564453125;
	setAttr ".tgi[0].ni[348].y" -2697.142822265625;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" -1967.142822265625;
	setAttr ".tgi[0].ni[349].y" 8014.28564453125;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" -2988.571533203125;
	setAttr ".tgi[0].ni[350].y" 8264.2861328125;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" 4234.28564453125;
	setAttr ".tgi[0].ni[351].y" -2574.28564453125;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" -3334.28564453125;
	setAttr ".tgi[0].ni[352].y" 8642.857421875;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" 4684.28564453125;
	setAttr ".tgi[0].ni[353].y" -3677.142822265625;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" 4234.28564453125;
	setAttr ".tgi[0].ni[354].y" -3720;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" 4684.28564453125;
	setAttr ".tgi[0].ni[355].y" -3800;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" 4234.28564453125;
	setAttr ".tgi[0].ni[356].y" -3237.142822265625;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" 3738.571533203125;
	setAttr ".tgi[0].ni[357].y" -3387.142822265625;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" 4684.28564453125;
	setAttr ".tgi[0].ni[358].y" -3922.857177734375;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" 4748.5712890625;
	setAttr ".tgi[0].ni[359].y" -7552.85693359375;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" 3738.571533203125;
	setAttr ".tgi[0].ni[360].y" -2368.571533203125;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" 4684.28564453125;
	setAttr ".tgi[0].ni[361].y" -4045.71435546875;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 4684.28564453125;
	setAttr ".tgi[0].ni[362].y" -4168.5712890625;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" 4684.28564453125;
	setAttr ".tgi[0].ni[363].y" -4291.4287109375;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" 4684.28564453125;
	setAttr ".tgi[0].ni[364].y" -4414.28564453125;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 4234.28564453125;
	setAttr ".tgi[0].ni[365].y" -4628.5712890625;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" 4684.28564453125;
	setAttr ".tgi[0].ni[366].y" -4537.14306640625;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[367].y" 4762.85693359375;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" 3404.28564453125;
	setAttr ".tgi[0].ni[368].y" 748.5714111328125;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" 3738.571533203125;
	setAttr ".tgi[0].ni[369].y" 2145.71435546875;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" 4684.28564453125;
	setAttr ".tgi[0].ni[370].y" -4660;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" 4684.28564453125;
	setAttr ".tgi[0].ni[371].y" -4782.85693359375;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" 4684.28564453125;
	setAttr ".tgi[0].ni[372].y" -4905.71435546875;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" 4748.5712890625;
	setAttr ".tgi[0].ni[373].y" -7401.4287109375;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" 4234.28564453125;
	setAttr ".tgi[0].ni[374].y" -5602.85693359375;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" 4684.28564453125;
	setAttr ".tgi[0].ni[375].y" 6030;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" 4234.28564453125;
	setAttr ".tgi[0].ni[376].y" -4751.4287109375;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" 4234.28564453125;
	setAttr ".tgi[0].ni[377].y" -3114.28564453125;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" 4234.28564453125;
	setAttr ".tgi[0].ni[378].y" -5725.71435546875;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" 4234.28564453125;
	setAttr ".tgi[0].ni[379].y" 8741.4287109375;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[380].y" 4144.28564453125;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" 3738.571533203125;
	setAttr ".tgi[0].ni[381].y" 1242.857177734375;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" 4748.5712890625;
	setAttr ".tgi[0].ni[382].y" -7250;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" 4748.5712890625;
	setAttr ".tgi[0].ni[383].y" -7098.5712890625;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" 4748.5712890625;
	setAttr ".tgi[0].ni[384].y" -6947.14306640625;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" 4684.28564453125;
	setAttr ".tgi[0].ni[385].y" -5028.5712890625;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" 3738.571533203125;
	setAttr ".tgi[0].ni[386].y" 6558.5712890625;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" 4745.71435546875;
	setAttr ".tgi[0].ni[387].y" -5130;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" 4740;
	setAttr ".tgi[0].ni[388].y" -4221.4287109375;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" 4684.28564453125;
	setAttr ".tgi[0].ni[389].y" -5151.4287109375;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[390].y" 5180;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" -918.5714111328125;
	setAttr ".tgi[0].ni[391].y" 5365.71435546875;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" 4748.5712890625;
	setAttr ".tgi[0].ni[392].y" -6795.71435546875;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" 3097.142822265625;
	setAttr ".tgi[0].ni[393].y" -2090;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" -918.5714111328125;
	setAttr ".tgi[0].ni[394].y" 4358.5712890625;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" 4748.5712890625;
	setAttr ".tgi[0].ni[395].y" -6644.28564453125;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" -918.5714111328125;
	setAttr ".tgi[0].ni[396].y" 5242.85693359375;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" 4684.28564453125;
	setAttr ".tgi[0].ni[397].y" -2940;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" 3738.571533203125;
	setAttr ".tgi[0].ni[398].y" -2188.571533203125;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" 4234.28564453125;
	setAttr ".tgi[0].ni[399].y" -5234.28564453125;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" 4684.28564453125;
	setAttr ".tgi[0].ni[400].y" -5274.28564453125;
	setAttr ".tgi[0].ni[400].nvs" 18304;
	setAttr ".tgi[0].ni[401].x" 4684.28564453125;
	setAttr ".tgi[0].ni[401].y" -5397.14306640625;
	setAttr ".tgi[0].ni[401].nvs" 18304;
	setAttr ".tgi[0].ni[402].x" 4684.28564453125;
	setAttr ".tgi[0].ni[402].y" -5520;
	setAttr ".tgi[0].ni[402].nvs" 18304;
	setAttr ".tgi[0].ni[403].x" 4234.28564453125;
	setAttr ".tgi[0].ni[403].y" 6091.4287109375;
	setAttr ".tgi[0].ni[403].nvs" 18304;
	setAttr ".tgi[0].ni[404].x" 3404.28564453125;
	setAttr ".tgi[0].ni[404].y" -648.5714111328125;
	setAttr ".tgi[0].ni[404].nvs" 18304;
	setAttr ".tgi[0].ni[405].x" 4684.28564453125;
	setAttr ".tgi[0].ni[405].y" -5642.85693359375;
	setAttr ".tgi[0].ni[405].nvs" 18304;
	setAttr ".tgi[0].ni[406].x" 4684.28564453125;
	setAttr ".tgi[0].ni[406].y" -482.85714721679688;
	setAttr ".tgi[0].ni[406].nvs" 18304;
	setAttr ".tgi[0].ni[407].x" 4684.28564453125;
	setAttr ".tgi[0].ni[407].y" 1800;
	setAttr ".tgi[0].ni[407].nvs" 18304;
	setAttr ".tgi[0].ni[408].x" 4234.28564453125;
	setAttr ".tgi[0].ni[408].y" -4874.28564453125;
	setAttr ".tgi[0].ni[408].nvs" 18304;
	setAttr ".tgi[0].ni[409].x" 4234.28564453125;
	setAttr ".tgi[0].ni[409].y" 1771.4285888671875;
	setAttr ".tgi[0].ni[409].nvs" 18304;
	setAttr ".tgi[0].ni[410].x" 4234.28564453125;
	setAttr ".tgi[0].ni[410].y" -5480;
	setAttr ".tgi[0].ni[410].nvs" 18304;
	setAttr ".tgi[0].ni[411].x" 4234.28564453125;
	setAttr ".tgi[0].ni[411].y" -4505.71435546875;
	setAttr ".tgi[0].ni[411].nvs" 18304;
	setAttr ".tgi[0].ni[412].x" -918.5714111328125;
	setAttr ".tgi[0].ni[412].y" 6077.14306640625;
	setAttr ".tgi[0].ni[412].nvs" 18304;
	setAttr ".tgi[0].ni[413].x" 4234.28564453125;
	setAttr ".tgi[0].ni[413].y" -5357.14306640625;
	setAttr ".tgi[0].ni[413].nvs" 18304;
	setAttr ".tgi[0].ni[414].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[414].y" 4868.5712890625;
	setAttr ".tgi[0].ni[414].nvs" 18304;
	setAttr ".tgi[0].ni[415].x" 4234.28564453125;
	setAttr ".tgi[0].ni[415].y" -4997.14306640625;
	setAttr ".tgi[0].ni[415].nvs" 18304;
	setAttr ".tgi[0].ni[416].x" 3097.142822265625;
	setAttr ".tgi[0].ni[416].y" 997.14288330078125;
	setAttr ".tgi[0].ni[416].nvs" 18304;
	setAttr ".tgi[0].ni[417].x" 4748.5712890625;
	setAttr ".tgi[0].ni[417].y" -6492.85693359375;
	setAttr ".tgi[0].ni[417].nvs" 18304;
	setAttr ".tgi[0].ni[418].x" -3334.28564453125;
	setAttr ".tgi[0].ni[418].y" 7325.71435546875;
	setAttr ".tgi[0].ni[418].nvs" 18304;
	setAttr ".tgi[0].ni[419].x" 4748.5712890625;
	setAttr ".tgi[0].ni[419].y" -6341.4287109375;
	setAttr ".tgi[0].ni[419].nvs" 18304;
	setAttr ".tgi[0].ni[420].x" 4684.28564453125;
	setAttr ".tgi[0].ni[420].y" -5765.71435546875;
	setAttr ".tgi[0].ni[420].nvs" 18304;
	setAttr ".tgi[0].ni[421].x" 3738.571533203125;
	setAttr ".tgi[0].ni[421].y" 6852.85693359375;
	setAttr ".tgi[0].ni[421].nvs" 18304;
	setAttr ".tgi[0].ni[422].x" -4628.5712890625;
	setAttr ".tgi[0].ni[422].y" 7437.14306640625;
	setAttr ".tgi[0].ni[422].nvs" 18304;
	setAttr ".tgi[0].ni[423].x" 4748.5712890625;
	setAttr ".tgi[0].ni[423].y" -6190;
	setAttr ".tgi[0].ni[423].nvs" 18304;
	setAttr ".tgi[0].ni[424].x" 4684.28564453125;
	setAttr ".tgi[0].ni[424].y" -5888.5712890625;
	setAttr ".tgi[0].ni[424].nvs" 18304;
	setAttr ".tgi[0].ni[425].x" 4684.28564453125;
	setAttr ".tgi[0].ni[425].y" -6011.4287109375;
	setAttr ".tgi[0].ni[425].nvs" 18304;
	setAttr ".tgi[0].ni[426].x" 4684.28564453125;
	setAttr ".tgi[0].ni[426].y" -6134.28564453125;
	setAttr ".tgi[0].ni[426].nvs" 18304;
	setAttr ".tgi[0].ni[427].x" 4740;
	setAttr ".tgi[0].ni[427].y" -4070;
	setAttr ".tgi[0].ni[427].nvs" 18304;
	setAttr ".tgi[0].ni[428].x" -1967.142822265625;
	setAttr ".tgi[0].ni[428].y" 6951.4287109375;
	setAttr ".tgi[0].ni[428].nvs" 18304;
	setAttr ".tgi[0].ni[429].x" -3682.857177734375;
	setAttr ".tgi[0].ni[429].y" 6894.28564453125;
	setAttr ".tgi[0].ni[429].nvs" 18304;
	setAttr ".tgi[0].ni[430].x" 4234.28564453125;
	setAttr ".tgi[0].ni[430].y" -6928.5712890625;
	setAttr ".tgi[0].ni[430].nvs" 18304;
	setAttr ".tgi[0].ni[431].x" 4684.28564453125;
	setAttr ".tgi[0].ni[431].y" -6257.14306640625;
	setAttr ".tgi[0].ni[431].nvs" 18304;
	setAttr ".tgi[0].ni[432].x" -2331.428466796875;
	setAttr ".tgi[0].ni[432].y" 7062.85693359375;
	setAttr ".tgi[0].ni[432].nvs" 18304;
	setAttr ".tgi[0].ni[433].x" -3334.28564453125;
	setAttr ".tgi[0].ni[433].y" 6740;
	setAttr ".tgi[0].ni[433].nvs" 18304;
	setAttr ".tgi[0].ni[434].x" 4670;
	setAttr ".tgi[0].ni[434].y" -3312.857177734375;
	setAttr ".tgi[0].ni[434].nvs" 18304;
	setAttr ".tgi[0].ni[435].x" 4304.28564453125;
	setAttr ".tgi[0].ni[435].y" -3312.857177734375;
	setAttr ".tgi[0].ni[435].nvs" 18304;
	setAttr ".tgi[0].ni[436].x" 4684.28564453125;
	setAttr ".tgi[0].ni[436].y" -6380;
	setAttr ".tgi[0].ni[436].nvs" 18304;
	setAttr ".tgi[0].ni[437].x" 4684.28564453125;
	setAttr ".tgi[0].ni[437].y" -6502.85693359375;
	setAttr ".tgi[0].ni[437].nvs" 18304;
	setAttr ".tgi[0].ni[438].x" 4684.28564453125;
	setAttr ".tgi[0].ni[438].y" -6625.71435546875;
	setAttr ".tgi[0].ni[438].nvs" 18304;
	setAttr ".tgi[0].ni[439].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[439].y" 5564.28564453125;
	setAttr ".tgi[0].ni[439].nvs" 18304;
	setAttr ".tgi[0].ni[440].x" 4234.28564453125;
	setAttr ".tgi[0].ni[440].y" -6502.85693359375;
	setAttr ".tgi[0].ni[440].nvs" 18304;
	setAttr ".tgi[0].ni[441].x" 4234.28564453125;
	setAttr ".tgi[0].ni[441].y" -6380;
	setAttr ".tgi[0].ni[441].nvs" 18304;
	setAttr ".tgi[0].ni[442].x" 4748.5712890625;
	setAttr ".tgi[0].ni[442].y" -6038.5712890625;
	setAttr ".tgi[0].ni[442].nvs" 18304;
	setAttr ".tgi[0].ni[443].x" 4684.28564453125;
	setAttr ".tgi[0].ni[443].y" -6748.5712890625;
	setAttr ".tgi[0].ni[443].nvs" 18304;
	setAttr ".tgi[0].ni[444].x" 4234.28564453125;
	setAttr ".tgi[0].ni[444].y" -6682.85693359375;
	setAttr ".tgi[0].ni[444].nvs" 18304;
	setAttr ".tgi[0].ni[445].x" 4684.28564453125;
	setAttr ".tgi[0].ni[445].y" -6871.4287109375;
	setAttr ".tgi[0].ni[445].nvs" 18304;
	setAttr ".tgi[0].ni[446].x" 4234.28564453125;
	setAttr ".tgi[0].ni[446].y" -6134.28564453125;
	setAttr ".tgi[0].ni[446].nvs" 18304;
	setAttr ".tgi[0].ni[447].x" -3682.857177734375;
	setAttr ".tgi[0].ni[447].y" 6771.4287109375;
	setAttr ".tgi[0].ni[447].nvs" 18304;
	setAttr ".tgi[0].ni[448].x" 4234.28564453125;
	setAttr ".tgi[0].ni[448].y" -6805.71435546875;
	setAttr ".tgi[0].ni[448].nvs" 18304;
	setAttr ".tgi[0].ni[449].x" 4745.71435546875;
	setAttr ".tgi[0].ni[449].y" -4978.5712890625;
	setAttr ".tgi[0].ni[449].nvs" 18304;
	setAttr ".tgi[0].ni[450].x" 4748.5712890625;
	setAttr ".tgi[0].ni[450].y" -5887.14306640625;
	setAttr ".tgi[0].ni[450].nvs" 18304;
	setAttr ".tgi[0].ni[451].x" 4684.28564453125;
	setAttr ".tgi[0].ni[451].y" -6994.28564453125;
	setAttr ".tgi[0].ni[451].nvs" 18304;
	setAttr ".tgi[0].ni[452].x" -2331.428466796875;
	setAttr ".tgi[0].ni[452].y" 7185.71435546875;
	setAttr ".tgi[0].ni[452].nvs" 18304;
	setAttr ".tgi[0].ni[453].x" 3738.571533203125;
	setAttr ".tgi[0].ni[453].y" -6874.28564453125;
	setAttr ".tgi[0].ni[453].nvs" 18304;
	setAttr ".tgi[0].ni[454].x" 2482.857177734375;
	setAttr ".tgi[0].ni[454].y" 4117.14306640625;
	setAttr ".tgi[0].ni[454].nvs" 18304;
	setAttr ".tgi[0].ni[455].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[455].y" 6471.4287109375;
	setAttr ".tgi[0].ni[455].nvs" 18304;
	setAttr ".tgi[0].ni[456].x" -2331.428466796875;
	setAttr ".tgi[0].ni[456].y" 6465.71435546875;
	setAttr ".tgi[0].ni[456].nvs" 18304;
	setAttr ".tgi[0].ni[457].x" -2988.571533203125;
	setAttr ".tgi[0].ni[457].y" 6865.71435546875;
	setAttr ".tgi[0].ni[457].nvs" 18304;
	setAttr ".tgi[0].ni[458].x" 4441.4287109375;
	setAttr ".tgi[0].ni[458].y" -3767.142822265625;
	setAttr ".tgi[0].ni[458].nvs" 18304;
	setAttr ".tgi[0].ni[459].x" 3404.28564453125;
	setAttr ".tgi[0].ni[459].y" 3418.571533203125;
	setAttr ".tgi[0].ni[459].nvs" 18304;
	setAttr ".tgi[0].ni[460].x" -1604.2857666015625;
	setAttr ".tgi[0].ni[460].y" 6260;
	setAttr ".tgi[0].ni[460].nvs" 18304;
	setAttr ".tgi[0].ni[461].x" -611.4285888671875;
	setAttr ".tgi[0].ni[461].y" 7387.14306640625;
	setAttr ".tgi[0].ni[461].nvs" 18304;
	setAttr ".tgi[0].ni[462].x" 4684.28564453125;
	setAttr ".tgi[0].ni[462].y" -7117.14306640625;
	setAttr ".tgi[0].ni[462].nvs" 18304;
	setAttr ".tgi[0].ni[463].x" 3738.571533203125;
	setAttr ".tgi[0].ni[463].y" 7837.14306640625;
	setAttr ".tgi[0].ni[463].nvs" 18304;
	setAttr ".tgi[0].ni[464].x" 640;
	setAttr ".tgi[0].ni[464].y" 701.4285888671875;
	setAttr ".tgi[0].ni[464].nvs" 18304;
	setAttr ".tgi[0].ni[465].x" 3097.142822265625;
	setAttr ".tgi[0].ni[465].y" 3671.428466796875;
	setAttr ".tgi[0].ni[465].nvs" 18304;
	setAttr ".tgi[0].ni[466].x" 3738.571533203125;
	setAttr ".tgi[0].ni[466].y" -7120;
	setAttr ".tgi[0].ni[466].nvs" 18304;
	setAttr ".tgi[0].ni[467].x" -611.4285888671875;
	setAttr ".tgi[0].ni[467].y" 3757.142822265625;
	setAttr ".tgi[0].ni[467].nvs" 18304;
	setAttr ".tgi[0].ni[468].x" -2988.571533203125;
	setAttr ".tgi[0].ni[468].y" 6988.5712890625;
	setAttr ".tgi[0].ni[468].nvs" 18304;
	setAttr ".tgi[0].ni[469].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[469].y" 5691.4287109375;
	setAttr ".tgi[0].ni[469].nvs" 18304;
	setAttr ".tgi[0].ni[470].x" 3404.28564453125;
	setAttr ".tgi[0].ni[470].y" -1898.5714111328125;
	setAttr ".tgi[0].ni[470].nvs" 18304;
	setAttr ".tgi[0].ni[471].x" 4684.28564453125;
	setAttr ".tgi[0].ni[471].y" -7995.71435546875;
	setAttr ".tgi[0].ni[471].nvs" 18304;
	setAttr ".tgi[0].ni[472].x" 4684.28564453125;
	setAttr ".tgi[0].ni[472].y" -8390;
	setAttr ".tgi[0].ni[472].nvs" 18304;
	setAttr ".tgi[0].ni[473].x" 4234.28564453125;
	setAttr ".tgi[0].ni[473].y" 3031.428466796875;
	setAttr ".tgi[0].ni[473].nvs" 18304;
	setAttr ".tgi[0].ni[474].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[474].y" 7241.4287109375;
	setAttr ".tgi[0].ni[474].nvs" 18304;
	setAttr ".tgi[0].ni[475].x" 1254.2857666015625;
	setAttr ".tgi[0].ni[475].y" 1037.142822265625;
	setAttr ".tgi[0].ni[475].nvs" 18304;
	setAttr ".tgi[0].ni[476].x" -1265.7142333984375;
	setAttr ".tgi[0].ni[476].y" 6385.71435546875;
	setAttr ".tgi[0].ni[476].nvs" 18304;
	setAttr ".tgi[0].ni[477].x" 4234.28564453125;
	setAttr ".tgi[0].ni[477].y" 4265.71435546875;
	setAttr ".tgi[0].ni[477].nvs" 18304;
	setAttr ".tgi[0].ni[478].x" 3404.28564453125;
	setAttr ".tgi[0].ni[478].y" -3068.571533203125;
	setAttr ".tgi[0].ni[478].nvs" 18304;
	setAttr ".tgi[0].ni[479].x" 3738.571533203125;
	setAttr ".tgi[0].ni[479].y" 3225.71435546875;
	setAttr ".tgi[0].ni[479].nvs" 18304;
	setAttr ".tgi[0].ni[480].x" 3404.28564453125;
	setAttr ".tgi[0].ni[480].y" 7864.28564453125;
	setAttr ".tgi[0].ni[480].nvs" 18304;
	setAttr ".tgi[0].ni[481].x" 4684.28564453125;
	setAttr ".tgi[0].ni[481].y" 3125.71435546875;
	setAttr ".tgi[0].ni[481].nvs" 18304;
	setAttr ".tgi[0].ni[482].x" 3738.571533203125;
	setAttr ".tgi[0].ni[482].y" -7488.5712890625;
	setAttr ".tgi[0].ni[482].nvs" 18304;
	setAttr ".tgi[0].ni[483].x" 4728.5712890625;
	setAttr ".tgi[0].ni[483].y" -3918.571533203125;
	setAttr ".tgi[0].ni[483].nvs" 18304;
	setAttr ".tgi[0].ni[484].x" 4748.5712890625;
	setAttr ".tgi[0].ni[484].y" -5735.71435546875;
	setAttr ".tgi[0].ni[484].nvs" 18304;
	setAttr ".tgi[0].ni[485].x" 3738.571533203125;
	setAttr ".tgi[0].ni[485].y" -6997.14306640625;
	setAttr ".tgi[0].ni[485].nvs" 18304;
	setAttr ".tgi[0].ni[486].x" 3738.571533203125;
	setAttr ".tgi[0].ni[486].y" -6628.5712890625;
	setAttr ".tgi[0].ni[486].nvs" 18304;
	setAttr ".tgi[0].ni[487].x" 4441.4287109375;
	setAttr ".tgi[0].ni[487].y" -3615.71435546875;
	setAttr ".tgi[0].ni[487].nvs" 18304;
	setAttr ".tgi[0].ni[488].x" 2790;
	setAttr ".tgi[0].ni[488].y" 3864.28564453125;
	setAttr ".tgi[0].ni[488].nvs" 18304;
	setAttr ".tgi[0].ni[489].x" -1967.142822265625;
	setAttr ".tgi[0].ni[489].y" 6468.5712890625;
	setAttr ".tgi[0].ni[489].nvs" 18304;
	setAttr ".tgi[0].ni[490].x" 4234.28564453125;
	setAttr ".tgi[0].ni[490].y" 6500;
	setAttr ".tgi[0].ni[490].nvs" 18304;
	setAttr ".tgi[0].ni[491].x" 4234.28564453125;
	setAttr ".tgi[0].ni[491].y" -7165.71435546875;
	setAttr ".tgi[0].ni[491].nvs" 18304;
	setAttr ".tgi[0].ni[492].x" 2175.71435546875;
	setAttr ".tgi[0].ni[492].y" 4310;
	setAttr ".tgi[0].ni[492].nvs" 18304;
	setAttr ".tgi[0].ni[493].x" 1868.5714111328125;
	setAttr ".tgi[0].ni[493].y" 4560;
	setAttr ".tgi[0].ni[493].nvs" 18304;
	setAttr ".tgi[0].ni[494].x" 4684.28564453125;
	setAttr ".tgi[0].ni[494].y" -8957.142578125;
	setAttr ".tgi[0].ni[494].nvs" 18304;
	setAttr ".tgi[0].ni[495].x" -611.4285888671875;
	setAttr ".tgi[0].ni[495].y" 4607.14306640625;
	setAttr ".tgi[0].ni[495].nvs" 18304;
	setAttr ".tgi[0].ni[496].x" -2658.571533203125;
	setAttr ".tgi[0].ni[496].y" 6882.85693359375;
	setAttr ".tgi[0].ni[496].nvs" 18304;
	setAttr ".tgi[0].ni[497].x" -3682.857177734375;
	setAttr ".tgi[0].ni[497].y" 6411.4287109375;
	setAttr ".tgi[0].ni[497].nvs" 18304;
	setAttr ".tgi[0].ni[498].x" 947.14288330078125;
	setAttr ".tgi[0].ni[498].y" 4048.571533203125;
	setAttr ".tgi[0].ni[498].nvs" 18304;
	setAttr ".tgi[0].ni[499].x" 4684.28564453125;
	setAttr ".tgi[0].ni[499].y" -9080;
	setAttr ".tgi[0].ni[499].nvs" 18304;
	setAttr ".tgi[0].ni[500].x" 3738.571533203125;
	setAttr ".tgi[0].ni[500].y" -391.42855834960938;
	setAttr ".tgi[0].ni[500].nvs" 18304;
	setAttr ".tgi[0].ni[501].x" 4234.28564453125;
	setAttr ".tgi[0].ni[501].y" -7960;
	setAttr ".tgi[0].ni[501].nvs" 18304;
	setAttr ".tgi[0].ni[502].x" 4684.28564453125;
	setAttr ".tgi[0].ni[502].y" -9204.2861328125;
	setAttr ".tgi[0].ni[502].nvs" 18304;
	setAttr ".tgi[0].ni[503].x" 3738.571533203125;
	setAttr ".tgi[0].ni[503].y" -7791.4287109375;
	setAttr ".tgi[0].ni[503].nvs" 18304;
	setAttr ".tgi[0].ni[504].x" 4684.28564453125;
	setAttr ".tgi[0].ni[504].y" -9327.142578125;
	setAttr ".tgi[0].ni[504].nvs" 18304;
	setAttr ".tgi[0].ni[505].x" 4684.28564453125;
	setAttr ".tgi[0].ni[505].y" -9450;
	setAttr ".tgi[0].ni[505].nvs" 18304;
	setAttr ".tgi[0].ni[506].x" 3738.571533203125;
	setAttr ".tgi[0].ni[506].y" -7914.28564453125;
	setAttr ".tgi[0].ni[506].nvs" 18304;
	setAttr ".tgi[0].ni[507].x" 3404.28564453125;
	setAttr ".tgi[0].ni[507].y" -7221.4287109375;
	setAttr ".tgi[0].ni[507].nvs" 18304;
	setAttr ".tgi[0].ni[508].x" 4684.28564453125;
	setAttr ".tgi[0].ni[508].y" -9572.857421875;
	setAttr ".tgi[0].ni[508].nvs" 18304;
	setAttr ".tgi[0].ni[509].x" 4748.5712890625;
	setAttr ".tgi[0].ni[509].y" -5584.28564453125;
	setAttr ".tgi[0].ni[509].nvs" 18304;
	setAttr ".tgi[0].ni[510].x" 4748.5712890625;
	setAttr ".tgi[0].ni[510].y" -5432.85693359375;
	setAttr ".tgi[0].ni[510].nvs" 18304;
	setAttr ".tgi[0].ni[511].x" 4684.28564453125;
	setAttr ".tgi[0].ni[511].y" -9695.7138671875;
	setAttr ".tgi[0].ni[511].nvs" 18304;
	setAttr ".tgi[0].ni[512].x" 3738.571533203125;
	setAttr ".tgi[0].ni[512].y" -8037.14306640625;
	setAttr ".tgi[0].ni[512].nvs" 18304;
	setAttr ".tgi[0].ni[513].x" 3738.571533203125;
	setAttr ".tgi[0].ni[513].y" -7668.5712890625;
	setAttr ".tgi[0].ni[513].nvs" 18304;
	setAttr ".tgi[0].ni[514].x" 3738.571533203125;
	setAttr ".tgi[0].ni[514].y" -6751.4287109375;
	setAttr ".tgi[0].ni[514].nvs" 18304;
	setAttr ".tgi[0].ni[515].x" 3738.571533203125;
	setAttr ".tgi[0].ni[515].y" -7365.71435546875;
	setAttr ".tgi[0].ni[515].nvs" 18304;
	setAttr ".tgi[0].ni[516].x" 260;
	setAttr ".tgi[0].ni[516].y" 207.14285278320312;
	setAttr ".tgi[0].ni[516].nvs" 18304;
	setAttr ".tgi[0].ni[517].x" 1254.2857666015625;
	setAttr ".tgi[0].ni[517].y" 3048.571533203125;
	setAttr ".tgi[0].ni[517].nvs" 18304;
	setAttr ".tgi[0].ni[518].x" -47.142856597900391;
	setAttr ".tgi[0].ni[518].y" 227.14285278320312;
	setAttr ".tgi[0].ni[518].nvs" 18304;
	setAttr ".tgi[0].ni[519].x" -190;
	setAttr ".tgi[0].ni[519].y" 68.571426391601562;
	setAttr ".tgi[0].ni[519].nvs" 18304;
	setAttr ".tgi[0].ni[520].x" -190;
	setAttr ".tgi[0].ni[520].y" -32.857143402099609;
	setAttr ".tgi[0].ni[520].nvs" 18304;
	setAttr ".tgi[0].ni[521].x" 117.14286041259766;
	setAttr ".tgi[0].ni[521].y" 17.142856597900391;
	setAttr ".tgi[0].ni[521].nvs" 18304;
	setAttr ".tgi[0].ni[522].x" 3738.571533203125;
	setAttr ".tgi[0].ni[522].y" -7242.85693359375;
	setAttr ".tgi[0].ni[522].nvs" 18304;
	setAttr ".tgi[0].ni[523].x" -190;
	setAttr ".tgi[0].ni[523].y" 474.28570556640625;
	setAttr ".tgi[0].ni[523].nvs" 18304;
	setAttr ".tgi[0].ni[524].x" -190;
	setAttr ".tgi[0].ni[524].y" 372.85714721679688;
	setAttr ".tgi[0].ni[524].nvs" 18304;
	setAttr ".tgi[0].ni[525].x" -190;
	setAttr ".tgi[0].ni[525].y" -337.14285278320312;
	setAttr ".tgi[0].ni[525].nvs" 18304;
	setAttr ".tgi[0].ni[526].x" -190;
	setAttr ".tgi[0].ni[526].y" 170;
	setAttr ".tgi[0].ni[526].nvs" 18304;
	setAttr ".tgi[0].ni[527].x" -190;
	setAttr ".tgi[0].ni[527].y" 271.42855834960938;
	setAttr ".tgi[0].ni[527].nvs" 18304;
	setAttr ".tgi[0].ni[528].x" -190;
	setAttr ".tgi[0].ni[528].y" -235.71427917480469;
	setAttr ".tgi[0].ni[528].nvs" 18304;
	setAttr ".tgi[0].ni[529].x" -190;
	setAttr ".tgi[0].ni[529].y" -438.57144165039062;
	setAttr ".tgi[0].ni[529].nvs" 18304;
	setAttr ".tgi[0].ni[530].x" -190;
	setAttr ".tgi[0].ni[530].y" -134.28572082519531;
	setAttr ".tgi[0].ni[530].nvs" 18304;
select -ne :time1;
	setAttr ".o" 50;
	setAttr ".unw" 50;
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
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
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
connectAttr "Ultimate_Walker_RigRN.phl[1]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[2]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[3]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[4]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[5]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[6]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[7]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[8]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[9]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[10]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[11]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[12]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[13]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[14]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[15]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[16]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[17]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[18]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[19]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[20]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[21]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[22]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[23]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[24]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[25]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[26]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[27]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[28]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[29]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[30]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[31]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[32]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[33]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[34]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[35]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[36]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[37]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[38]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[39]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[40]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[41]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[42]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[43]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[44]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[45]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[46]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[47]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[48]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[49]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[50]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[51]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[52]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[53]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[54]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[55]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[56]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[57]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_pvControl.o" "Ultimate_Walker_RigRN.phl[58]"
		;
connectAttr "walker_lf_heel_ik_ctrl_legTwist.o" "Ultimate_Walker_RigRN.phl[59]";
connectAttr "walker_lf_heel_ik_ctrl_heelTwist.o" "Ultimate_Walker_RigRN.phl[60]"
		;
connectAttr "walker_lf_heel_ik_ctrl_ballTwist.o" "Ultimate_Walker_RigRN.phl[61]"
		;
connectAttr "walker_lf_heel_ik_ctrl_toeTwist.o" "Ultimate_Walker_RigRN.phl[62]";
connectAttr "walker_lf_heel_ik_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[63]"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[64]"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[65]"
		;
connectAttr "walker_lf_heel_ik_ctrl_rotateX.o" "Ultimate_Walker_RigRN.phl[66]";
connectAttr "walker_lf_heel_ik_ctrl_rotateY.o" "Ultimate_Walker_RigRN.phl[67]";
connectAttr "walker_lf_heel_ik_ctrl_rotateZ.o" "Ultimate_Walker_RigRN.phl[68]";
connectAttr "walker_lf_heel_ik_ctrl_footRoll.o" "Ultimate_Walker_RigRN.phl[69]";
connectAttr "walker_lf_heel_ik_ctrl_footBreak.o" "Ultimate_Walker_RigRN.phl[70]"
		;
connectAttr "walker_lf_heel_ik_ctrl_toeRoll.o" "Ultimate_Walker_RigRN.phl[71]";
connectAttr "Ultimate_Walker_RigRN.phl[72]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[73]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[74]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[75]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[76]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn"
		;
connectAttr "walker_lf_foot_ctrl_ikFkBlend.o" "Ultimate_Walker_RigRN.phl[77]";
connectAttr "Ultimate_Walker_RigRN.phl[78]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[79]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[80]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[81]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[82]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[83]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[84]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[85]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[86]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[87]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[88]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[89]"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[90]"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[91]"
		;
connectAttr "walker_lf_knee_pv_ctrl_lfLegIkCtrl.o" "Ultimate_Walker_RigRN.phl[92]"
		;
connectAttr "Ultimate_Walker_RigRN.phl[93]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[94]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[95]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[96]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[97]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[98]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[99]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[100]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[101]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[102]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[103]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[104]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[105]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[106]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[107]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[108]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[109]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[110]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[112]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[113]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[114]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[115]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[116]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[117]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[118]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[119]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[120]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[121]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[122]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[123]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[124]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[125]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[126]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[127]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[128]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[129]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[130]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[131]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[132]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[133]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[134]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[135]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[136]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[137]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[138]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[139]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[140]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[141]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[142]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[143]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[144]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[145]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[146]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[147]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[148]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[149]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[150]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[151]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[152]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[153]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[154]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[155]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[156]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[157]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[158]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[159]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[160]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[161]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[162]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[163]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[164]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[165]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[166]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[167]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[168]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[169]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[170]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[171]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[172]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[173]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[174]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[175]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[176]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[177]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[178]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[179]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[180]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[181]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[182]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[183]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[184]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[185]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[186]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[187]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_pvControl.o" "Ultimate_Walker_RigRN.phl[188]"
		;
connectAttr "walker_rt_heel_ik_ctrl_legTwist.o" "Ultimate_Walker_RigRN.phl[189]"
		;
connectAttr "walker_rt_heel_ik_ctrl_heelTwist.o" "Ultimate_Walker_RigRN.phl[190]"
		;
connectAttr "walker_rt_heel_ik_ctrl_ballTwist.o" "Ultimate_Walker_RigRN.phl[191]"
		;
connectAttr "walker_rt_heel_ik_ctrl_toeTwist.o" "Ultimate_Walker_RigRN.phl[192]"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[193]"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[194]"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[195]"
		;
connectAttr "walker_rt_heel_ik_ctrl_rotateX.o" "Ultimate_Walker_RigRN.phl[196]";
connectAttr "walker_rt_heel_ik_ctrl_rotateY.o" "Ultimate_Walker_RigRN.phl[197]";
connectAttr "walker_rt_heel_ik_ctrl_rotateZ.o" "Ultimate_Walker_RigRN.phl[198]";
connectAttr "walker_rt_heel_ik_ctrl_footRoll.o" "Ultimate_Walker_RigRN.phl[199]"
		;
connectAttr "walker_rt_heel_ik_ctrl_footBreak.o" "Ultimate_Walker_RigRN.phl[200]"
		;
connectAttr "walker_rt_heel_ik_ctrl_toeRoll.o" "Ultimate_Walker_RigRN.phl[201]";
connectAttr "Ultimate_Walker_RigRN.phl[202]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[203]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[204]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[205]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[206]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn"
		;
connectAttr "walker_rt_foot_ctrl_ikFkBlend.o" "Ultimate_Walker_RigRN.phl[207]";
connectAttr "Ultimate_Walker_RigRN.phl[208]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[209]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[210]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[211]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[212]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[213]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[214]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[446].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[215]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[438].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[216]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[217]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[436].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[218]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[441].dn"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateX.o" "Ultimate_Walker_RigRN.phl[219]"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateY.o" "Ultimate_Walker_RigRN.phl[220]"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateZ.o" "Ultimate_Walker_RigRN.phl[221]"
		;
connectAttr "walker_rt_knee_pv_ctrl_rtLegIkCtrl.o" "Ultimate_Walker_RigRN.phl[222]"
		;
connectAttr "Ultimate_Walker_RigRN.phl[223]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[439].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[224]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[449].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[225]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[437].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[226]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[227]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[440].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[228]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[442].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[229]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[230]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[443].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[231]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[232]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[444].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[233]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[445].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[234]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[447].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[235]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[448].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[236]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[450].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[237]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[238]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[451].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[239]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[452].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[240]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[241]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[242]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[243]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[244]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[245]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[246]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[247]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[248]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[249]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[250]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[251]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[252]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[253]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[254]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[255]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[256]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[257]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[258]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[259]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[260]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[261]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[262]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[263]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[264]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[265]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[266]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[267]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[268]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[269]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[270]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[271]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[272]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[273]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[274]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[275]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[276]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[277]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[278]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[279]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[280]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[281]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[282]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[283]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[284]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[285]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[286]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[287]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[288]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[289]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[290]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[291]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[292]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[293]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[294]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[295]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[296]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[297]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[298]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[299]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[300]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[301]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[302]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[303]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "CTRL_Top_translateY.o" "Ultimate_Walker_RigRN.phl[304]";
connectAttr "Ultimate_Walker_RigRN.phl[305]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[306]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[307]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[308]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[309]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[310]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[311]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[312]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[313]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[314]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[315]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[316]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[317]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[318]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[319]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[320]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "CTRL_Main_translateY.o" "Ultimate_Walker_RigRN.phl[321]";
connectAttr "CTRL_Main_translateX.o" "Ultimate_Walker_RigRN.phl[322]";
connectAttr "CTRL_Main_translateZ.o" "Ultimate_Walker_RigRN.phl[323]";
connectAttr "CTRL_Main_rotateX.o" "Ultimate_Walker_RigRN.phl[324]";
connectAttr "CTRL_Main_rotateY.o" "Ultimate_Walker_RigRN.phl[325]";
connectAttr "CTRL_Main_rotateZ.o" "Ultimate_Walker_RigRN.phl[326]";
connectAttr "Ultimate_Walker_RigRN.phl[327]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[328]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[329]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[330]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[331]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[332]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[333]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[334]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[335]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[336]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[337]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[338]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[339]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[340]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[341]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[342]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[343]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[344]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[345]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[346]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[347]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[348]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[349]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[350]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[351]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[352]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[353]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[354]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[355]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[356]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[357]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[358]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[359]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[360]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[361]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[362]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[363]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[364]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[365]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[366]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[367]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[368]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[369]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[370]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[371]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[372]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[373]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[374]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[375]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[376]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[377]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[378]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[379]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[380]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[381]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[382]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[383]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[384]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[385]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[386]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[387]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[388]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[389]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[390]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[391]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[392]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[393]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[394]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[395]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[396]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[397]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[398]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[399]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[400]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[401]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[402]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[403]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[404]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[405]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[406]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[407]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[408]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[409]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[410]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[411]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[412]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[413]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[414]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[415]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[416]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[417]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[418]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[419]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[420]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[421]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[422]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[423]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[424]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[425]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[426]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[427]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[428]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[429]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[430]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[431]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[432]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[433]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[434]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[435]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[436]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[437]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[438]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[439]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[440]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[441]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[442]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[470].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[443]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[476].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[444]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[455].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[445]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[460].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[446]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[489].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[447]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[456].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[448]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[496].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[449]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[468].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[450]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[457].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[451]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[469].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[452]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[497].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[453]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[490].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[454]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[467].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[455]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[461].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[456]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[495].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[457]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[474].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[458]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[463].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[459]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[480].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[460]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[458].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[461]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[500].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[462]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[478].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[463]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[471].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[464]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[491].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[465]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[453].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[466]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[472].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[467]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[501].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[468]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[487].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[469]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[477].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[470]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[481].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[471]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[498].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[472]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[464].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[473]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[475].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[474]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[462].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[475]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[473].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[476]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[479].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[477]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[459].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[478]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[465].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[479]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[488].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[480]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[454].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[481]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[492].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[482]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[493].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[483]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[499].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[484]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[507].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[485]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[482].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[486]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[494].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[487]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[502].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[488]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[513].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[489]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[503].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[490]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[504].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[491]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[505].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[492]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[506].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[493]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[512].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[494]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[511].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[495]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[508].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[496]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[509].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[497]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[483].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[498]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[510].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[499]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[484].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[500]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[485].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[501]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[486].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[502]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[514].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[503]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[515].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[504]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[466].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[505]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[517].dn"
		;
connectAttr "Ultimate_Walker_RigRN.phl[506]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[522].dn"
		;
connectAttr ":time1.o" "Natalie__dev__GrassBall__1_01.inTime";
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[0].outputObjectTranslate" "Grass.t"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[0].outputObjectRotate" "Grass.r"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[0].outputObjectScale" "Grass.s"
		;
connectAttr "merge1_0_translateX.o" "merge1_0.tx";
connectAttr "merge1_0_translateY.o" "merge1_0.ty";
connectAttr "merge1_0_translateZ.o" "merge1_0.tz";
connectAttr "merge1_0_visibility.o" "merge1_0.v";
connectAttr "merge1_0_rotateX.o" "merge1_0.rx";
connectAttr "merge1_0_rotateY.o" "merge1_0.ry";
connectAttr "merge1_0_rotateZ.o" "merge1_0.rz";
connectAttr "merge1_0_scaleX.o" "merge1_0.sx";
connectAttr "merge1_0_scaleY.o" "merge1_0.sy";
connectAttr "merge1_0_scaleZ.o" "merge1_0.sz";
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "merge1_0Shape.i"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[1].outputPartExtraAttributeData" "merge1_0Shape.velocity"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartExtraAttributes[0].outputPartExtraAttributeData" "merge1_0Shape.pscale"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[1].outputObjectTranslate" "collision.t"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[1].outputObjectRotate" "collision.r"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[1].outputObjectScale" "collision.s"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[2].outputObjectTranslate" "display.t"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[2].outputObjectRotate" "display.r"
		;
connectAttr "Natalie__dev__GrassBall__1_01.outputObjects[2].outputObjectScale" "display.s"
		;
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
connectAttr "sharedReferenceNode.sr" "Walking_AnimationRN.sr";
connectAttr "Ultimate_Walker_Rig1:multiplyDivide2.ox" "Ultimate_Walker_Rig1:multiplyDivide1.i1y"
		;
connectAttr "Ultimate_Walker_Rig1:multiplyDivide2.ox" "Ultimate_Walker_Rig1:multiplyDivide1.i2x"
		;
connectAttr "sharedReferenceNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_toeRoll.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "walker_rt_knee_pv_ctrl_rtLegIkCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "CTRL_Main_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_ballTwist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_toeTwist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_footBreak.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "walker_lf_foot_ctrl_ikFkBlend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_footRoll.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "walker_rt_foot_ctrl_ikFkBlend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_heelTwist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_ballTwist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_toeTwist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_pvControl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_pvControl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_legTwist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_footRoll.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_heelTwist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_footBreak.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "walker_lf_knee_pv_ctrl_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "walker_lf_knee_pv_ctrl_lfLegIkCtrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_legTwist.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "walker_rt_heel_ik_ctrl_toeRoll.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "walker_lf_heel_ik_ctrl_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "walker_rt_knee_pv_ctrl_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "CTRL_Top_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "CTRL_Main_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "CTRL_Main_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "CTRL_Main_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "CTRL_Main_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "CTRL_Main_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "merge1_0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "Natalie__dev__GrassBall__1_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "collision.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "Grass.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "merge1_0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn";
connectAttr "display.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "Ultimate_Walker_RigRN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr ":defaultArnoldFilter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr ":defaultArnoldDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr ":defaultArnoldRenderOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "Ultimate_Walker_Rig1:multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[516].dn"
		;
connectAttr "Ultimate_Walker_Rig1:multiplyDivide2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[518].dn"
		;
connectAttr "merge1_0_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[519].dn"
		;
connectAttr "merge1_0_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[520].dn"
		;
connectAttr "Walking_AnimationRN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[521].dn"
		;
connectAttr "merge1_0_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[523].dn"
		;
connectAttr "merge1_0_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[524].dn"
		;
connectAttr "merge1_0_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[525].dn"
		;
connectAttr "merge1_0_visibility.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[526].dn"
		;
connectAttr "merge1_0_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[527].dn"
		;
connectAttr "merge1_0_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[528].dn"
		;
connectAttr "merge1_0_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[529].dn"
		;
connectAttr "merge1_0_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[530].dn"
		;
connectAttr "Ultimate_Walker_Rig1:multiplyDivide1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Ultimate_Walker_Rig1:multiplyDivide2.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "merge1_0Shape.iog" ":initialShadingGroup.dsm" -na;
// End of GrassWalking.ma
