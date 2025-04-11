//Maya ASCII 2023 scene
//Name: kFishAnimation.ma
//Last modified: Fri, Sep 13, 2024 02:41:35 PM
//Codeset: 1252
file -rdi 1 -ns "KoiFish" -rfn "KoiFishRN" -op "v=0;" -typ "mayaAscii" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/CharacterCreation/KoiFish.ma";
file -r -ns "KoiFish" -dr 1 -rfn "KoiFishRN" -op "v=0;" -typ "mayaAscii" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/CharacterCreation/KoiFish.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.4.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "24A64918-4A7D-511A-2471-3786A8A7134E";
createNode transform -s -n "persp";
	rename -uid "209C4438-422D-D76E-8B77-678FCD7AD8B2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.8605536465123693 2.797041958656771 2.4459570281307372 ;
	setAttr ".r" -type "double3" -15.338352729714712 60.600000000001245 3.2394890628165078e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9C62E003-4EF8-A4E5-481E-5FA1CA1E2460";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.1818572749619261;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0.86898145641446378 -1.5837539525993174 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "68F88D74-4502-33B6-FD7E-EE9E5CE95543";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9FEFF5BE-4998-79F7-11B2-FA95DC15F35D";
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
	rename -uid "DAEEA0E6-4802-2C6F-64DF-00BED96C6D78";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5E8641BC-4CA6-611B-15AE-A9AA3E793BE7";
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
	rename -uid "E2E04DB5-4925-EDC6-0C33-BFA56907C079";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A3E4AB72-4463-FD90-E64F-93B16B6D3B48";
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
	rename -uid "498CECDF-452F-4C4A-0FBD-84BCAD48340E";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1529DD94-4BC0-65A7-ED45-ADA662D42A69";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9F476490-4FE1-520E-1A05-39A0C9696296";
createNode displayLayerManager -n "layerManager";
	rename -uid "DC1C42A8-4CDE-9045-08DD-CC92CA6172C8";
createNode displayLayer -n "defaultLayer";
	rename -uid "41FD4D67-4C5D-89E6-4319-6386AA5D63F5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5225C64A-4B2C-E6AC-E7D7-009845FFEA8A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D8F7E1CF-4AD2-139F-D748-83BED5E70FFA";
	setAttr ".g" yes;
createNode reference -n "KoiFishRN";
	rename -uid "75B03287-4BD6-7739-84B1-76A68ADEAD28";
	setAttr -s 210 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"KoiFishRN"
		"KoiFishRN" 0
		"KoiFishRN" 217
		2 "|KoiFish:aiSkyDomeLight1" "visibility" " 1"
		2 "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl" 
		"visibility" " 1"
		2 "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl" 
		"rotate" " -type \"double3\" 4.30941847699256986 0 0"
		2 "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Top_FIn_02_ctrl_grp|KoiFish:Top_FIn_02_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Top_Fin_01_ctrl_grp|KoiFish:Top_Fin_01_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.translateX" 
		"KoiFishRN.placeHolderList[1]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.translateY" 
		"KoiFishRN.placeHolderList[2]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[3]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[4]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[5]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[6]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[7]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[8]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[9]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl.visibility" 
		"KoiFishRN.placeHolderList[10]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.translateX" 
		"KoiFishRN.placeHolderList[11]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.translateY" 
		"KoiFishRN.placeHolderList[12]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[13]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[14]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[15]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[16]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[17]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[18]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[19]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl.visibility" 
		"KoiFishRN.placeHolderList[20]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.translateX" 
		"KoiFishRN.placeHolderList[21]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.translateY" 
		"KoiFishRN.placeHolderList[22]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[23]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[24]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[25]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[26]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[27]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[28]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[29]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl.visibility" 
		"KoiFishRN.placeHolderList[30]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.translateX" 
		"KoiFishRN.placeHolderList[31]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.translateY" 
		"KoiFishRN.placeHolderList[32]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[33]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[34]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[35]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[36]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[37]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[38]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[39]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl.visibility" 
		"KoiFishRN.placeHolderList[40]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.translateX" 
		"KoiFishRN.placeHolderList[41]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.translateY" 
		"KoiFishRN.placeHolderList[42]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[43]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[44]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[45]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[46]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[47]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[48]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[49]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl.visibility" 
		"KoiFishRN.placeHolderList[50]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.translateX" 
		"KoiFishRN.placeHolderList[51]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.translateY" 
		"KoiFishRN.placeHolderList[52]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[53]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[54]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[55]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[56]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[57]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[58]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[59]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl.visibility" 
		"KoiFishRN.placeHolderList[60]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.translateX" 
		"KoiFishRN.placeHolderList[61]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.translateY" 
		"KoiFishRN.placeHolderList[62]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[63]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[64]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[65]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[66]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[67]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[68]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[69]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl.visibility" 
		"KoiFishRN.placeHolderList[70]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.translateX" 
		"KoiFishRN.placeHolderList[71]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.translateY" 
		"KoiFishRN.placeHolderList[72]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[73]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[74]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[75]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[76]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[77]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[78]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[79]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Top_Tail_01_ctrl_grp|KoiFish:Top_Tail_01_ctrl|KoiFish:Top_Tail_02_ctrl_grp|KoiFish:Top_Tail_02_ctrl|KoiFish:Top_Tail_03_ctrl_grp|KoiFish:Top_Tail_03_ctrl.visibility" 
		"KoiFishRN.placeHolderList[80]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.translateX" 
		"KoiFishRN.placeHolderList[81]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.translateY" 
		"KoiFishRN.placeHolderList[82]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[83]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[84]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[85]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[86]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[87]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[88]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[89]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl.visibility" 
		"KoiFishRN.placeHolderList[90]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.translateX" 
		"KoiFishRN.placeHolderList[91]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.translateY" 
		"KoiFishRN.placeHolderList[92]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[93]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[94]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[95]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[96]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[97]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[98]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[99]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl.visibility" 
		"KoiFishRN.placeHolderList[100]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.translateX" 
		"KoiFishRN.placeHolderList[101]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.translateY" 
		"KoiFishRN.placeHolderList[102]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[103]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[104]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[105]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[106]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[107]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[108]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[109]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:Spine_04_ctrl_grp|KoiFish:Spine_04_ctrl|KoiFish:Tail_Base_ctrl_grp|KoiFish:Tail_Base_ctrl|KoiFish:Bottom_Tail_01_ctrl_grp|KoiFish:Bottom_Tail_01_ctrl|KoiFish:Bottom_Tail_02_ctrl_grp|KoiFish:Bottom_Tail_02_ctrl|KoiFish:Bottom_Tail_03_ctrl_grp|KoiFish:Bottom_Tail_03_ctrl.visibility" 
		"KoiFishRN.placeHolderList[110]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.translateX" 
		"KoiFishRN.placeHolderList[111]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.translateY" 
		"KoiFishRN.placeHolderList[112]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[113]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[114]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[115]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[116]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[117]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[118]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[119]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:L_Back_Fin_ctrl_grp|KoiFish:L_Back_Fin_ctrl.visibility" 
		"KoiFishRN.placeHolderList[120]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.translateX" 
		"KoiFishRN.placeHolderList[121]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.translateY" 
		"KoiFishRN.placeHolderList[122]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[123]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[124]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[125]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[126]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[127]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[128]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[129]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:Spine_02_ctrl_grp|KoiFish:Spine_02_ctrl|KoiFish:Spine_03_ctrl_grp|KoiFish:Spine_03_ctrl|KoiFish:R_Back_Fin_ctrl_grp|KoiFish:R_Back_Fin_ctrl.visibility" 
		"KoiFishRN.placeHolderList[130]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.translateX" 
		"KoiFishRN.placeHolderList[131]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.translateY" 
		"KoiFishRN.placeHolderList[132]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[133]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[134]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[135]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[136]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[137]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[138]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[139]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl.visibility" 
		"KoiFishRN.placeHolderList[140]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.translateX" 
		"KoiFishRN.placeHolderList[141]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.translateY" 
		"KoiFishRN.placeHolderList[142]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[143]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[144]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[145]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[146]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[147]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[148]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[149]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:L_Front_Fin_01_ctrl_grp|KoiFish:L_Front_Fin_01_ctrl|KoiFish:L_Front_Fin_02_ctrl_grp|KoiFish:L_Front_Fin_02_ctrl.visibility" 
		"KoiFishRN.placeHolderList[150]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.translateX" 
		"KoiFishRN.placeHolderList[151]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.translateY" 
		"KoiFishRN.placeHolderList[152]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[153]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[154]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[155]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[156]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[157]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[158]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[159]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl.visibility" 
		"KoiFishRN.placeHolderList[160]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.translateX" 
		"KoiFishRN.placeHolderList[161]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.translateY" 
		"KoiFishRN.placeHolderList[162]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[163]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[164]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[165]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[166]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[167]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[168]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[169]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Spine_01_ctrl_grp|KoiFish:Spine_01_ctrl|KoiFish:R_Front_Fin_01_ctrl_grp|KoiFish:R_Front_Fin_01_ctrl|KoiFish:R_Front_Fin_02_ctrl_grp|KoiFish:R_Front_Fin_02_ctrl.visibility" 
		"KoiFishRN.placeHolderList[170]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.translateX" 
		"KoiFishRN.placeHolderList[171]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.translateY" 
		"KoiFishRN.placeHolderList[172]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[173]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[174]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[175]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[176]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[177]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[178]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[179]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl.visibility" 
		"KoiFishRN.placeHolderList[180]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.translateX" 
		"KoiFishRN.placeHolderList[181]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.translateY" 
		"KoiFishRN.placeHolderList[182]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[183]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[184]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[185]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[186]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[187]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[188]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[189]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:Mouth_ctrl_grp|KoiFish:Mouth_ctrl.visibility" 
		"KoiFishRN.placeHolderList[190]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.translateX" 
		"KoiFishRN.placeHolderList[191]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.translateY" 
		"KoiFishRN.placeHolderList[192]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[193]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[194]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[195]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[196]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[197]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[198]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[199]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:L_Eye_ctrl_grp|KoiFish:L_Eye_ctrl.visibility" 
		"KoiFishRN.placeHolderList[200]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.translateX" 
		"KoiFishRN.placeHolderList[201]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.translateY" 
		"KoiFishRN.placeHolderList[202]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.translateZ" 
		"KoiFishRN.placeHolderList[203]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.rotateY" 
		"KoiFishRN.placeHolderList[204]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.rotateX" 
		"KoiFishRN.placeHolderList[205]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.rotateZ" 
		"KoiFishRN.placeHolderList[206]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.scaleX" 
		"KoiFishRN.placeHolderList[207]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.scaleY" 
		"KoiFishRN.placeHolderList[208]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.scaleZ" 
		"KoiFishRN.placeHolderList[209]" ""
		5 4 "KoiFishRN" "|KoiFish:KoiFish2|KoiFish:Controls|KoiFish:Root_ctrl_grp|KoiFish:Root_ctrl|KoiFish:Cog_ctrl_grp|KoiFish:Cog_ctrl|KoiFish:Head_01_ctrl_grp|KoiFish:Head_01_ctrl|KoiFish:R_Eye_ctrl_grp|KoiFish:R_Eye_ctrl.visibility" 
		"KoiFishRN.placeHolderList[210]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A742B16C-4A60-28A8-CE5C-93A79D9DFB1A";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".GI_diffuse_samples" 4;
	setAttr ".GI_specular_samples" 4;
	setAttr ".version" -type "string" "5.1.0";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1   1;Background.Offset=0   0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1   1;Foreground.Offset=0   0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "6C6F3412-430C-2F9F-7EE4-5A8E2FFCC135";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "7704EA46-419C-DB2D-273D-40AEAD52EEF2";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "46C3D4F2-4D09-A44A-C485-36A6A307A5FC";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BB5E1A09-46E3-9B8B-5B98-F5840A0D0584";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 615\n            -height 322\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 615\n            -height 321\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 615\n            -height 321\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1237\n            -height 688\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1237\\n    -height 688\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1237\\n    -height 688\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "FFA3878C-4482-075C-95BB-168F1783C5D0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 25 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode animCurveTU -n "Head_01_ctrl_visibility";
	rename -uid "F788574C-4949-495D-E9BC-1E9A2F7E82D5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[1:4]"  9 9 9 2;
	setAttr -s 5 ".kot[1:4]"  5 5 5 2;
createNode animCurveTL -n "Head_01_ctrl_translateX";
	rename -uid "D584409F-4B45-6242-6889-9F8F53973D44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTL -n "Head_01_ctrl_translateY";
	rename -uid "68DEE0CC-463D-3F32-BEAB-37A1CB4C1583";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTL -n "Head_01_ctrl_translateZ";
	rename -uid "66D2CD91-40D2-998B-F4EE-B5931D05570F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Head_01_ctrl_rotateX";
	rename -uid "AD834B0B-4900-9619-7981-2A8D488D8A40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Head_01_ctrl_rotateY";
	rename -uid "BAADFC5C-4B81-7DA1-8D2A-9781323913AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Head_01_ctrl_rotateZ";
	rename -uid "73FD83E7-430F-6650-3F1D-778E11C9117B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -3.0737237549810308 7 -6.5855701171601657
		 14 -2.5157169847684808 19 2.4917609177357734 26 -3.0737237549810308;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Head_01_ctrl_scaleX";
	rename -uid "F6A27834-48F4-701A-82F3-DBAE801C2946";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Head_01_ctrl_scaleY";
	rename -uid "84F68162-4E97-111D-6B2F-1AA4495E909F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Head_01_ctrl_scaleZ";
	rename -uid "3E6BF0BC-4D6E-F5A9-E1D6-15819B0D95D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_01_ctrl_visibility";
	rename -uid "35F5E58E-4E35-6D4E-A66C-46A2E921AF89";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[1:4]"  9 9 9 2;
	setAttr -s 5 ".kot[1:4]"  5 5 5 2;
createNode animCurveTL -n "Spine_01_ctrl_translateX";
	rename -uid "F5D9F330-42EA-CFC1-E3E5-95B2F3A2A794";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTL -n "Spine_01_ctrl_translateY";
	rename -uid "D186970B-4F18-F9EC-66BB-A8A8416C5AF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTL -n "Spine_01_ctrl_translateZ";
	rename -uid "5162A558-4BD5-E7BF-86C6-85A742CB54B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_01_ctrl_rotateX";
	rename -uid "3EEF6BC9-4EB7-D561-FC52-459730FD5E8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_01_ctrl_rotateY";
	rename -uid "E90B1A54-4BFC-98A8-ECF6-A49F6209EC04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_01_ctrl_rotateZ";
	rename -uid "EAB94295-4BE9-24F6-E63C-69B0F40F5EB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.81501345385138 7 -12.415013446569947
		 14 7.3849876147472333 19 11.106328207740084 26 -8.81501345385138;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_01_ctrl_scaleX";
	rename -uid "05CB9690-4E6C-28BF-E95A-BA8E88ECC7EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_01_ctrl_scaleY";
	rename -uid "E6FAA2DF-44F1-FAA1-14C7-2895C1E967CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_01_ctrl_scaleZ";
	rename -uid "47E4D0B7-417D-5D84-94B8-E8B50A3FE5C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_02_ctrl_visibility";
	rename -uid "4C92582A-4AAD-4AB0-24E5-249BF3A3895F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[1:4]"  9 9 9 2;
	setAttr -s 5 ".kot[1:4]"  5 5 5 2;
createNode animCurveTL -n "Spine_02_ctrl_translateX";
	rename -uid "8FEE13B9-48A7-B94F-CED8-6D8FF703E206";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTL -n "Spine_02_ctrl_translateY";
	rename -uid "E8D9AD7A-466A-60F0-6A68-F687B2B76BD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTL -n "Spine_02_ctrl_translateZ";
	rename -uid "27C5C476-47A5-DE76-034F-3496383FAEE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_02_ctrl_rotateX";
	rename -uid "98E3EE68-466E-7D44-03B6-EB9602107D6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_02_ctrl_rotateY";
	rename -uid "38E8F18F-42BD-70ED-DDA2-D49B8913AD97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_02_ctrl_rotateZ";
	rename -uid "32CC205E-4FA6-0989-8F0C-9DB6FE7852A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.81501345385138 7 -12.415013446569947
		 14 7.3849876147472333 19 11.106328207740084 26 -8.81501345385138;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_02_ctrl_scaleX";
	rename -uid "91E9441F-4045-8F9A-FE78-F5881A27A2A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_02_ctrl_scaleY";
	rename -uid "635B3282-4999-6F7C-030A-36A790A6FF8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_02_ctrl_scaleZ";
	rename -uid "17AB07B1-4E6C-9115-1811-389036C71CBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_03_ctrl_visibility";
	rename -uid "5C73F011-4798-2CA1-D4B1-A2B816EE7256";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[1:4]"  9 9 9 2;
	setAttr -s 5 ".kot[1:4]"  5 5 5 2;
createNode animCurveTL -n "Spine_03_ctrl_translateX";
	rename -uid "9E55CF24-40FC-EFDE-BAE0-259B2AB7D4FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTL -n "Spine_03_ctrl_translateY";
	rename -uid "53D17BE4-4779-F33E-7551-598EBBE0844B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTL -n "Spine_03_ctrl_translateZ";
	rename -uid "82084843-472A-0550-EF58-1392E393BA39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_03_ctrl_rotateX";
	rename -uid "7B9E7B11-4F07-F521-E9EE-76B236A6B4B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_03_ctrl_rotateY";
	rename -uid "BACD0069-4825-399B-0D98-559DBEF7F6C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTA -n "Spine_03_ctrl_rotateZ";
	rename -uid "62B588EB-4D0E-29DF-A66F-3FB528948213";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.81501345385138 7 -12.415013446569947
		 14 7.3849876147472333 19 11.106328207740084 26 -8.81501345385138;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_03_ctrl_scaleX";
	rename -uid "B43D53C7-4AED-FE76-296A-AFA64D8639A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_03_ctrl_scaleY";
	rename -uid "0012D33B-4019-3059-EDD5-C3BC4682C913";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_03_ctrl_scaleZ";
	rename -uid "BED24B23-40DC-3C09-3526-6F9AE0657F39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 2;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 2;
createNode animCurveTU -n "Spine_04_ctrl_visibility";
	rename -uid "33258357-4141-7C0D-EA16-018E315C6AD8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 14 1 19 1 22 1 26 1;
	setAttr -s 6 ".kit[0:5]"  2 9 9 9 9 2;
	setAttr -s 6 ".kot[0:5]"  2 5 5 5 5 2;
createNode animCurveTL -n "Spine_04_ctrl_translateX";
	rename -uid "A5A6CD84-4CAF-8B03-5E7F-C186B552401D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 14 0 19 0 22 0 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTL -n "Spine_04_ctrl_translateY";
	rename -uid "513E84B2-427E-09D8-5A40-6592CD2ED118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 14 0 19 0 22 0 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTL -n "Spine_04_ctrl_translateZ";
	rename -uid "D2164513-4DFA-7D91-F4F7-88B5896C2229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 14 0 19 0 22 0 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTA -n "Spine_04_ctrl_rotateX";
	rename -uid "CEBDAFB0-4F38-9677-FFDD-C78A6F9E3060";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0.80168967144939685 14 0 19 0 22 0
		 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTA -n "Spine_04_ctrl_rotateY";
	rename -uid "FEE5CDE6-4EF9-6975-D797-46B3F91712E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 2.1931083126610047 14 0 19 0 22 0
		 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTA -n "Spine_04_ctrl_rotateZ";
	rename -uid "966E90A7-4498-C1D0-E6E9-D4846374554F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -8.81501345385138 7 -19.739093811529234
		 14 7.3849876147472333 19 11.106328207740084 22 9.5604743488743757 26 -8.81501345385138;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTU -n "Spine_04_ctrl_scaleX";
	rename -uid "0D0D6E90-4FBD-A794-D913-079E984A68CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 14 1 19 1 22 1 26 1;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTU -n "Spine_04_ctrl_scaleY";
	rename -uid "F46F6EBF-4E12-C0A1-9323-AE800AA40057";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 14 1 19 1 22 1 26 1;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTU -n "Spine_04_ctrl_scaleZ";
	rename -uid "A0C3065E-4D6F-8E49-7897-688FFCEFF3C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 14 1 19 1 22 1 26 1;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTU -n "Top_Tail_02_ctrl_visibility";
	rename -uid "B51EE227-424C-F0EF-A281-E5906FE9E307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[0:5]"  2 9 9 9 9 2;
	setAttr -s 6 ".kot[0:5]"  2 5 5 5 5 2;
createNode animCurveTL -n "Top_Tail_02_ctrl_translateX";
	rename -uid "F53F5D7B-422D-CAC8-D1E1-699D1E4E6289";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTL -n "Top_Tail_02_ctrl_translateY";
	rename -uid "3E955132-452A-3813-8359-65B2DAB78B5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTL -n "Top_Tail_02_ctrl_translateZ";
	rename -uid "A316D53C-46E6-4AEB-5825-028434EF5E77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTA -n "Top_Tail_02_ctrl_rotateX";
	rename -uid "9E64EBE0-4B5C-BE9E-A220-CBA8E05EFAF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTA -n "Top_Tail_02_ctrl_rotateY";
	rename -uid "0B3C7A10-487E-A5D4-0B31-7587778F4661";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 34.360916097645799 7 -21.124955556288473
		 10 -39.3430632803516 14 -21.125 19 30.281463218528611 26 34.360916097645799;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTA -n "Top_Tail_02_ctrl_rotateZ";
	rename -uid "E38F6CA6-4D76-91DA-45A7-D297ADB903E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTU -n "Top_Tail_02_ctrl_scaleX";
	rename -uid "37C14B0A-4A06-DAC5-B302-1CB61DBBD2CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTU -n "Top_Tail_02_ctrl_scaleY";
	rename -uid "FBCA8DFB-4766-D7D6-A114-ECBBF4E1F70B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTU -n "Top_Tail_02_ctrl_scaleZ";
	rename -uid "4645BA56-4160-5A84-2B11-14BA7BA17FB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[0:5]"  2 18 18 18 18 2;
	setAttr -s 6 ".kot[0:5]"  2 18 18 18 18 2;
createNode animCurveTU -n "Bottom_Tail_02_ctrl_visibility";
	rename -uid "4BDC54D1-4708-615C-AF09-E4A2EA716010";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 9 9 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "Bottom_Tail_02_ctrl_translateX";
	rename -uid "50F12B89-4C10-D06F-6444-F29BD48BC362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Bottom_Tail_02_ctrl_translateY";
	rename -uid "97B66790-46F5-EF2E-CBFC-F68D60897783";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Bottom_Tail_02_ctrl_translateZ";
	rename -uid "EAE5EC84-463D-1048-1373-8F8066B25F89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Bottom_Tail_02_ctrl_rotateX";
	rename -uid "599B1703-44E3-1BA4-3C13-C29C10BF977B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Bottom_Tail_02_ctrl_rotateY";
	rename -uid "D361ADCB-4865-DDDB-58B7-139EB9A01B92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 34.360916097645799 7 -21.124955556288473
		 10 -39.3430632803516 14 -21.125 19 30.281463218528611 26 34.360916097645799;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Bottom_Tail_02_ctrl_rotateZ";
	rename -uid "5321BD07-4584-956E-94FB-C99EBB2DE8D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Bottom_Tail_02_ctrl_scaleX";
	rename -uid "77F62F58-4916-2CB2-923A-23AD58A5D077";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Bottom_Tail_02_ctrl_scaleY";
	rename -uid "0741DC18-4A1D-F794-270C-C594F0C1F006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Bottom_Tail_02_ctrl_scaleZ";
	rename -uid "B7346A84-4D82-515E-07D3-78942A5579DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Top_Tail_01_ctrl_visibility";
	rename -uid "260540AD-4A6A-7F12-00F7-DD9C1744F1F0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 7 1 19 1 26 1;
	setAttr -s 4 ".kit[1:3]"  9 9 2;
	setAttr -s 4 ".kot[1:3]"  5 5 2;
createNode animCurveTL -n "Top_Tail_01_ctrl_translateX";
	rename -uid "5B24E9D5-4F3C-22D2-8F2A-6892F2D5D029";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTL -n "Top_Tail_01_ctrl_translateY";
	rename -uid "DB9C4EEA-4648-88E3-BE17-838151876053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTL -n "Top_Tail_01_ctrl_translateZ";
	rename -uid "E968EDBA-4770-D8D5-9B86-678722931611";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTA -n "Top_Tail_01_ctrl_rotateX";
	rename -uid "73119789-4BDD-9BC0-039C-4FA5D1D3BF41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTA -n "Top_Tail_01_ctrl_rotateY";
	rename -uid "7570CF7F-4B5E-70F0-B2F7-FA97E681A9E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 34.360916097645799 7 -21.124955556288473
		 19 30.281507662240138 26 34.360916097645799;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTA -n "Top_Tail_01_ctrl_rotateZ";
	rename -uid "A1282F42-4937-6C68-3A20-2F89B1184824";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTU -n "Top_Tail_01_ctrl_scaleX";
	rename -uid "0CA4219A-4A88-B28D-4CC3-529498FFE80F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 7 1 19 1 26 1;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTU -n "Top_Tail_01_ctrl_scaleY";
	rename -uid "2FF24790-43B6-3BFD-A5E4-A38D88100992";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 7 1 19 1 26 1;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTU -n "Top_Tail_01_ctrl_scaleZ";
	rename -uid "9BA936CA-4F31-CC09-ACA4-1992E278310F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 7 1 19 1 26 1;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTU -n "Top_Tail_03_ctrl_visibility";
	rename -uid "D10E4A0D-47B3-D1E6-E41C-B1A20670FEAD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 9 9 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "Top_Tail_03_ctrl_translateX";
	rename -uid "1C349D2C-42D3-C318-967B-6696E0311BC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Top_Tail_03_ctrl_translateY";
	rename -uid "F0927F43-48F8-2C23-AA35-17A5AE2B9914";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Top_Tail_03_ctrl_translateZ";
	rename -uid "BC68CE26-4F3A-580E-E291-A7810FC8F595";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Top_Tail_03_ctrl_rotateX";
	rename -uid "FF35AF36-45DF-FCE5-F304-C2A8326E1A10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Top_Tail_03_ctrl_rotateY";
	rename -uid "29EE3FF3-4F97-D831-9B9D-56981BA26966";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 34.360916097645799 7 -21.124955556288473
		 10 -39.3430632803516 14 -21.125 19 30.281463218528611 26 34.360916097645799;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Top_Tail_03_ctrl_rotateZ";
	rename -uid "D72E21A0-4B7D-BDB9-E36B-5F91183CD200";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Top_Tail_03_ctrl_scaleX";
	rename -uid "494CC836-4EFB-F978-D3E6-8D8884435BA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Top_Tail_03_ctrl_scaleY";
	rename -uid "923773D3-4E4E-322B-B677-6AA6ED7BFAF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Top_Tail_03_ctrl_scaleZ";
	rename -uid "20F74FDE-4945-312E-27EF-A9AC5E98F007";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Bottom_Tail_01_ctrl_visibility";
	rename -uid "F05B4313-4CB7-84A3-1907-DBA46889BBAF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 7 1 19 1 26 1;
	setAttr -s 4 ".kit[1:3]"  9 9 2;
	setAttr -s 4 ".kot[1:3]"  5 5 2;
createNode animCurveTL -n "Bottom_Tail_01_ctrl_translateX";
	rename -uid "C68E6E05-44B2-A244-7B17-9D9057CD27A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTL -n "Bottom_Tail_01_ctrl_translateY";
	rename -uid "DE002138-4033-E545-5D28-45AB56EF99BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTL -n "Bottom_Tail_01_ctrl_translateZ";
	rename -uid "77CDE152-4AFC-C3B5-4502-B7A161DC06F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTA -n "Bottom_Tail_01_ctrl_rotateX";
	rename -uid "4B37E9DF-4329-3C08-A370-2981270D7EB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTA -n "Bottom_Tail_01_ctrl_rotateY";
	rename -uid "6D7E0C72-45EA-26A7-F2D8-1DB7613FF5C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 34.360916097645799 7 -21.124955556288473
		 19 30.281507662240138 26 34.360916097645799;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTA -n "Bottom_Tail_01_ctrl_rotateZ";
	rename -uid "23DCA3DB-47A0-C1FF-FC4C-CC9A8E2CF62A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 7 0 19 0 26 0;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTU -n "Bottom_Tail_01_ctrl_scaleX";
	rename -uid "4133123E-4AE0-131A-22AD-D59D37DF6937";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 7 1 19 1 26 1;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTU -n "Bottom_Tail_01_ctrl_scaleY";
	rename -uid "E881F17A-40B8-E2AE-7AE6-3FB26DC9E3A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 7 1 19 1 26 1;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTU -n "Bottom_Tail_01_ctrl_scaleZ";
	rename -uid "EBB4F881-4965-01F1-C062-6B9F387B010F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 7 1 19 1 26 1;
	setAttr -s 4 ".kit[0:3]"  2 18 18 2;
	setAttr -s 4 ".kot[0:3]"  2 18 18 2;
createNode animCurveTU -n "Bottom_Tail_03_ctrl_visibility";
	rename -uid "45E11509-4C38-48A9-0927-00A0CC3FA51E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[0:5]"  9 9 9 9 9 1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "Bottom_Tail_03_ctrl_translateX";
	rename -uid "36AE5EA2-4292-3325-751F-A28380A0C587";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Bottom_Tail_03_ctrl_translateY";
	rename -uid "1A51AAD4-4A63-71F5-0110-E4AA62431887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTL -n "Bottom_Tail_03_ctrl_translateZ";
	rename -uid "599AAF12-4EB3-ED6C-A2FD-FA992C9EB741";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Bottom_Tail_03_ctrl_rotateX";
	rename -uid "24B0501E-4697-ACFB-9045-61B412B1DE4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Bottom_Tail_03_ctrl_rotateY";
	rename -uid "3D3E91DE-4F2B-CB35-0DB4-3792FFB8B361";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 34.360916097645799 7 -21.124955556288473
		 10 -39.3430632803516 14 -21.125 19 30.281463218528611 26 34.360916097645799;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Bottom_Tail_03_ctrl_rotateZ";
	rename -uid "BB5D35B5-4094-9E22-18DC-7FBB64A0F864";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 7 0 10 0 14 0 19 0 26 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Bottom_Tail_03_ctrl_scaleX";
	rename -uid "970626A7-4F44-BFB5-E380-9AB9BC11A1B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Bottom_Tail_03_ctrl_scaleY";
	rename -uid "EF3C1E7E-4598-50F1-F754-51807591D2A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTU -n "Bottom_Tail_03_ctrl_scaleZ";
	rename -uid "8B73D78B-4BDA-C2B4-3586-2FB42D1D769E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 7 1 10 1 14 1 19 1 26 1;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[5]"  1;
	setAttr -s 6 ".koy[5]"  0;
createNode animCurveTA -n "Tail_Base_ctrl_rotateX";
	rename -uid "BEA8EA02-4317-A1F7-3D66-B6BAAD593EC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 1.0000001700680272 0 7 0 10 0 14 0 19 0
		 22 0 26 0 26.000000170068027 0;
	setAttr -s 9 ".kit[0:8]"  2 2 18 18 18 18 18 2 
		2;
	setAttr -s 9 ".kot[0:8]"  2 2 18 18 18 18 18 2 
		2;
createNode animCurveTA -n "Tail_Base_ctrl_rotateY";
	rename -uid "E3D0960D-4E18-84CA-C25F-959214E40D9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 32.362068395743755 7 -25.304267478403119
		 10 -30.968727083960989 14 -28.674776204933668 19 25.611150449672209 22 33.177155850045267
		 26 32.362068395743755;
	setAttr -s 7 ".kit[0:6]"  2 18 18 18 18 18 2;
	setAttr -s 7 ".kot[0:6]"  2 18 18 18 18 18 2;
createNode animCurveTA -n "Tail_Base_ctrl_rotateZ";
	rename -uid "E9790F04-4F6F-E9BC-E7D7-828018AF3C96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 1.0000001700680272 0 7 0 10 0 14 0 19 0
		 22 0 26 0 26.000000170068027 0;
	setAttr -s 9 ".kit[0:8]"  2 2 18 18 18 18 18 2 
		2;
	setAttr -s 9 ".kot[0:8]"  2 2 18 18 18 18 18 2 
		2;
createNode animCurveTU -n "Tail_Base_ctrl_visibility";
	rename -uid "318E475A-4C69-0061-353E-F9BF6704EAD3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 1.0000001700680272 1 7 1 10 1 14 1 19 1
		 22 1 26 1 26.000000170068027 1;
	setAttr -s 9 ".kit[2:8]"  9 9 9 9 9 2 2;
	setAttr -s 9 ".kot[2:8]"  5 5 5 5 5 2 2;
createNode animCurveTL -n "Tail_Base_ctrl_translateX";
	rename -uid "EC9BE086-4755-6946-8D22-A4AFF00DD291";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 1.0000001700680272 0 7 0 10 0 14 0 19 0
		 22 0 26 0 26.000000170068027 0;
	setAttr -s 9 ".kit[0:8]"  2 2 18 18 18 18 18 2 
		2;
	setAttr -s 9 ".kot[0:8]"  2 2 18 18 18 18 18 2 
		2;
createNode animCurveTL -n "Tail_Base_ctrl_translateY";
	rename -uid "D9901E5D-4F2D-A83B-4156-A9AE4E1BAE1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 1.0000001700680272 0 7 0 10 0 14 0 19 0
		 22 0 26 0 26.000000170068027 0;
	setAttr -s 9 ".kit[0:8]"  2 2 18 18 18 18 18 2 
		2;
	setAttr -s 9 ".kot[0:8]"  2 2 18 18 18 18 18 2 
		2;
createNode animCurveTL -n "Tail_Base_ctrl_translateZ";
	rename -uid "F09B2EF0-4328-4D6C-F762-3AB86E0F6BDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 1.0000001700680272 0 7 0 10 0 14 0 19 0
		 22 0 26 0 26.000000170068027 0;
	setAttr -s 9 ".kit[0:8]"  2 2 18 18 18 18 18 2 
		2;
	setAttr -s 9 ".kot[0:8]"  2 2 18 18 18 18 18 2 
		2;
createNode animCurveTU -n "Tail_Base_ctrl_scaleX";
	rename -uid "E1E4AF99-48BC-348B-2738-47B4A63E5198";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 1.0000001700680272 1 7 1 10 1 14 1 19 1
		 22 1 26 1 26.000000170068027 1;
	setAttr -s 9 ".kit[0:8]"  2 2 18 18 18 18 18 2 
		2;
	setAttr -s 9 ".kot[0:8]"  2 2 18 18 18 18 18 2 
		2;
createNode animCurveTU -n "Tail_Base_ctrl_scaleY";
	rename -uid "9A80E6DC-4886-6252-D06C-67B0C023D642";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 1.0000001700680272 1 7 1 10 1 14 1 19 1
		 22 1 26 1 26.000000170068027 1;
	setAttr -s 9 ".kit[0:8]"  2 2 18 18 18 18 18 2 
		2;
	setAttr -s 9 ".kot[0:8]"  2 2 18 18 18 18 18 2 
		2;
createNode animCurveTU -n "Tail_Base_ctrl_scaleZ";
	rename -uid "4C785D40-4CE9-16C6-0506-3792B0592247";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 1 1.0000001700680272 1 7 1 10 1 14 1 19 1
		 22 1 26 1 26.000000170068027 1;
	setAttr -s 9 ".kit[0:8]"  2 2 18 18 18 18 18 2 
		2;
	setAttr -s 9 ".kot[0:8]"  2 2 18 18 18 18 18 2 
		2;
createNode animCurveTA -n "Mouth_ctrl_rotateX";
	rename -uid "D512BA63-4D65-C639-5DC5-F9B6723CF12C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Mouth_ctrl_rotateY";
	rename -uid "3E3B4A01-4BE5-E3A6-AE34-C5ACFE2459E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 -18.002711362876173 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Mouth_ctrl_rotateZ";
	rename -uid "7E42BA31-4696-50DE-6D58-43A4464BFA58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Mouth_ctrl_visibility";
	rename -uid "FF181D7F-4BD9-1DA9-A5E3-79A182BF2969";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "Mouth_ctrl_translateX";
	rename -uid "EDA0B256-48D4-9ED5-555E-20A55E3AF1F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Mouth_ctrl_translateY";
	rename -uid "7E4D0EAB-44E0-8205-7121-4EB1E1E31D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Mouth_ctrl_translateZ";
	rename -uid "E81F57B6-4B72-508D-4FC6-BFBE42A471AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Mouth_ctrl_scaleX";
	rename -uid "CB70451F-4248-1A06-5810-69B1575736B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Mouth_ctrl_scaleY";
	rename -uid "537BE8A6-40F0-0B43-2C28-C1B87CA3BF0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Mouth_ctrl_scaleZ";
	rename -uid "7D725518-474F-CBF5-52A5-0794DAB57F59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Front_Fin_02_ctrl_rotateX";
	rename -uid "35C17B86-45FD-A3A7-A325-6E83D1B2673F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -26.458703380018445 14 -42.619435943415468
		 26 -26.458703380018445;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Front_Fin_02_ctrl_rotateY";
	rename -uid "9E57C0A5-44B1-AC41-99B6-9690B0859863";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 29.409459507617736 14 38.15042838818195
		 26 29.409459507617736;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Front_Fin_02_ctrl_rotateZ";
	rename -uid "6F01CDAB-44D2-CBDA-2192-B291FA049FA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -6.4901253298957204 14 -18.010744233478061
		 26 -6.4901253298957204;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Front_Fin_02_ctrl_visibility";
	rename -uid "47AA99BC-4E68-F1D2-66EA-CFBAB6F8021B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Front_Fin_02_ctrl_translateX";
	rename -uid "2EC6A348-4133-CCAD-E70F-4EB13884FCDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Front_Fin_02_ctrl_translateY";
	rename -uid "28D22C4D-41C8-0B21-30FF-12AA1B6F74DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Front_Fin_02_ctrl_translateZ";
	rename -uid "BE51FFB8-40A1-7980-1EF0-D496BE147271";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Front_Fin_02_ctrl_scaleX";
	rename -uid "7559CC7F-4215-4E4F-9188-4B8A6DF8626A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Front_Fin_02_ctrl_scaleY";
	rename -uid "13C0BBFF-4FEF-5F4B-872C-9BBB654988FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Front_Fin_02_ctrl_scaleZ";
	rename -uid "E09B503A-4652-6CDE-EB0E-489C4D8D7E70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Back_Fin_ctrl_rotateX";
	rename -uid "48BA9018-49EA-0A20-5840-2998D4B977A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -34.547714091050487 5 -26.527514750300924
		 14 -53.818293285973091 26 -34.547714091050487;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_Back_Fin_ctrl_rotateY";
	rename -uid "7F07B794-47F6-229E-0BBC-888758B3D5C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 46.207048698934663 5 28.512143439882767
		 14 44.665997578545536 26 46.207048698934663;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_Back_Fin_ctrl_rotateZ";
	rename -uid "8C41E454-4621-698A-F814-BE83EE0597B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -6.2047110917707462 5 6.8198798951738011
		 14 -25.993204636115507 26 -6.2047110917707462;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Back_Fin_ctrl_visibility";
	rename -uid "603D425D-47E6-D01B-630F-0CAF9B0FAE40";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 5 1 14 1 26 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "L_Back_Fin_ctrl_translateX";
	rename -uid "D2A7037D-4653-4C39-CF9C-9FA4B28E2FA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 5 0 14 0 26 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_Back_Fin_ctrl_translateY";
	rename -uid "095861F8-4DE1-E7C1-713F-44B6FF7F66C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 5 0 14 0 26 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_Back_Fin_ctrl_translateZ";
	rename -uid "3D307D27-4954-E469-69D7-C093FCD474F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 5 0 14 0 26 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Back_Fin_ctrl_scaleX";
	rename -uid "9622CD57-4D7E-3182-CA7A-D1BE66A92F52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 5 1 14 1 26 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Back_Fin_ctrl_scaleY";
	rename -uid "46BACE18-4B29-0BC2-8FF3-C0A8E70505E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 5 1 14 1 26 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Back_Fin_ctrl_scaleZ";
	rename -uid "0F2ED8ED-4DFD-B3F2-FA4F-95B748E3AF58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 5 1 14 1 26 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_Front_Fin_01_ctrl_rotateX";
	rename -uid "33684C19-4674-91F7-4279-6D9E390FA94F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 14.56752266755443 14 15.731163097984961
		 26 14.56752266755443;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Front_Fin_01_ctrl_rotateY";
	rename -uid "02513290-44DA-97C9-D7A6-EA9764DE7FF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 27.238251046576153 14 35.580784564198218
		 26 27.238251046576153;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Front_Fin_01_ctrl_rotateZ";
	rename -uid "5BEF7C71-4ACB-B787-0E29-D3A0165673E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.9958727035677826 14 -1.2330772575899895
		 26 2.9958727035677826;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Front_Fin_01_ctrl_visibility";
	rename -uid "5E333EDF-4B8A-2538-A499-C5AA514A5C01";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Front_Fin_01_ctrl_translateX";
	rename -uid "FF762B60-488A-4790-86FE-83A422E2CFD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Front_Fin_01_ctrl_translateY";
	rename -uid "148D5B9F-48C0-12CE-E2B0-ABB1175DDAFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Front_Fin_01_ctrl_translateZ";
	rename -uid "F60EB445-4868-6EA1-BC0C-92863C89DBB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 14 0 26 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Front_Fin_01_ctrl_scaleX";
	rename -uid "E3D65B89-42A0-906C-85E8-9887095B9255";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Front_Fin_01_ctrl_scaleY";
	rename -uid "E3E12101-48F1-BCE5-0AB3-39B2C36013A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Front_Fin_01_ctrl_scaleZ";
	rename -uid "890552B0-4DE3-59DD-BA88-D79D1866DACA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 14 1 26 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Front_Fin_02_ctrl_rotateX";
	rename -uid "010A6C35-4943-B088-8D13-6DAAD364D775";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -15.529789309271145 19 -1.2775042518756921
		 26 -15.529789309271145;
createNode animCurveTA -n "R_Front_Fin_02_ctrl_rotateY";
	rename -uid "28F09D73-4EDD-3BEC-B917-3E964EDF6289";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 29.442620235096548 19 17.44918042070822
		 26 29.442620235096548;
createNode animCurveTA -n "R_Front_Fin_02_ctrl_rotateZ";
	rename -uid "4199F94F-41DC-1886-6EAB-77B05F20978D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -22.469284552643096 19 -1.9905346097215022
		 26 -22.469284552643096;
createNode animCurveTU -n "R_Front_Fin_02_ctrl_visibility";
	rename -uid "70A0F6D0-41A3-0B2B-6B17-C3B659184255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_Front_Fin_02_ctrl_translateX";
	rename -uid "615B8B37-4AAF-1A63-9D6E-1C96F255CEEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTL -n "R_Front_Fin_02_ctrl_translateY";
	rename -uid "B9FE1C40-4143-0F2C-C388-1786853944EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTL -n "R_Front_Fin_02_ctrl_translateZ";
	rename -uid "32ADFAAD-4CD3-95CC-3200-DB9C20363146";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTU -n "R_Front_Fin_02_ctrl_scaleX";
	rename -uid "1FA9E1CC-434D-EFCC-3080-FC8B66F45640";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTU -n "R_Front_Fin_02_ctrl_scaleY";
	rename -uid "CA1C4223-4DA8-0193-8814-9DBE02FD81E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTU -n "R_Front_Fin_02_ctrl_scaleZ";
	rename -uid "A99E7E7C-4203-CC9D-29FB-8E8F715B33C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTA -n "R_Front_Fin_01_ctrl_rotateX";
	rename -uid "44E0D8CB-4036-7EAD-DB39-A1AB0BE153FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 10.829002402506081 19 7.9893144613593776
		 26 10.829002402506081;
createNode animCurveTA -n "R_Front_Fin_01_ctrl_rotateY";
	rename -uid "B2CF71F3-48B5-78C7-27B2-FBA424447AB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 22.199655168225643 19 11.920098003228246
		 26 22.199655168225643;
createNode animCurveTA -n "R_Front_Fin_01_ctrl_rotateZ";
	rename -uid "25156BC2-48BE-DCFF-CFCD-5CA3BE156F62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -8.2083077567336353 19 4.6657173926463749
		 26 -8.2083077567336353;
createNode animCurveTU -n "R_Front_Fin_01_ctrl_visibility";
	rename -uid "18235259-4CFD-CBC0-0342-D69FA50315B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_Front_Fin_01_ctrl_translateX";
	rename -uid "59603623-40A6-1430-6BFB-D7A0E1A5965D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTL -n "R_Front_Fin_01_ctrl_translateY";
	rename -uid "FB0BAFD3-4252-1B66-73BA-1993CCC29E50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTL -n "R_Front_Fin_01_ctrl_translateZ";
	rename -uid "AEFEC247-46E2-76B3-2FB1-12A9AB6C739D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTU -n "R_Front_Fin_01_ctrl_scaleX";
	rename -uid "0DE6E513-4F97-9EBA-128E-7B8B4095BEB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTU -n "R_Front_Fin_01_ctrl_scaleY";
	rename -uid "FAFBA7FE-4A22-4E35-16A6-E1BAEC737CA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTU -n "R_Front_Fin_01_ctrl_scaleZ";
	rename -uid "46E6BF59-470B-A220-03E0-A9AD3186EBA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTA -n "R_Back_Fin_ctrl_rotateX";
	rename -uid "D143CE73-4198-F0F4-A61B-8C8237731792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 3.4660396331856118 19 2.7924442236590643
		 26 3.4660396331856118;
createNode animCurveTA -n "R_Back_Fin_ctrl_rotateY";
	rename -uid "5E61A976-4161-F54E-3F28-2F8F3A2C6B71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 21.563252717578994 19 8.129064789728135
		 26 21.563252717578994;
createNode animCurveTA -n "R_Back_Fin_ctrl_rotateZ";
	rename -uid "075404CB-4C40-5A0C-BEAE-94939BD25476";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -9.5679127684638061 19 -1.2816283694105992
		 26 -9.5679127684638061;
createNode animCurveTU -n "R_Back_Fin_ctrl_visibility";
	rename -uid "B28A663A-4467-FAF2-5C77-FF8EDD7F5745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_Back_Fin_ctrl_translateX";
	rename -uid "D48D8314-4385-1C8A-D517-EA8A3F732734";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTL -n "R_Back_Fin_ctrl_translateY";
	rename -uid "F17CD887-4F12-35FB-7ABD-AF897EF12B6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTL -n "R_Back_Fin_ctrl_translateZ";
	rename -uid "7490BD24-4198-7BBA-B521-27994AB9F173";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 19 0 26 0;
createNode animCurveTU -n "R_Back_Fin_ctrl_scaleX";
	rename -uid "5E7952EF-421F-EECA-06A7-F0BBD3A7F32F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTU -n "R_Back_Fin_ctrl_scaleY";
	rename -uid "D108C10C-44E1-BA66-6BFD-8D943B6F945F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTU -n "R_Back_Fin_ctrl_scaleZ";
	rename -uid "13F4B316-4BDE-DC55-B64F-19AC2FC00E38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 19 1 26 1;
createNode animCurveTA -n "R_Eye_ctrl_rotateX";
	rename -uid "88E4290A-44A3-AF81-B7AE-1BB749A3DC0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "R_Eye_ctrl_rotateY";
	rename -uid "70128708-4C9E-1D18-F00A-22A354D2D7D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 6.9309441138679855 7 20.241081565747415
		 14 20.0031901213083 19 7.8875070500958291 26 6.9309441138679855;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 1;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  0.73255548484190824;
	setAttr -s 5 ".koy[4]"  0.68070732450006499;
createNode animCurveTA -n "R_Eye_ctrl_rotateZ";
	rename -uid "DCC7832E-4C48-DA80-6421-3DBF74713039";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "R_Eye_ctrl_visibility";
	rename -uid "EF6F197A-43F5-AB33-35C1-A08D7F64B1F0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "R_Eye_ctrl_translateX";
	rename -uid "6FBABDF7-467C-BED3-3653-818F10E6B80F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "R_Eye_ctrl_translateY";
	rename -uid "B85153AC-41ED-D61B-21F0-FC808E8E5A7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "R_Eye_ctrl_translateZ";
	rename -uid "69A78B96-4DC1-5092-F902-539C4DB6867F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "R_Eye_ctrl_scaleX";
	rename -uid "D3DE655B-4D7C-7D3C-1335-7F9D366C2018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "R_Eye_ctrl_scaleY";
	rename -uid "FD6F0057-477E-5DC8-F79A-D6B5A1649403";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "R_Eye_ctrl_scaleZ";
	rename -uid "403FFD6F-42D3-B2FB-748D-589239081B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "L_Eye_ctrl_rotateX";
	rename -uid "B2A1F5F7-43D1-D145-6905-E48171D392AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "L_Eye_ctrl_rotateY";
	rename -uid "50C775C9-487E-D37C-F0AF-D5A0BF022350";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 3.4148033970794995 7 -4.041062926673888
		 14 9.545842821916672 19 9.9066855525148316 26 3.4148033970794995;
	setAttr -s 5 ".kit[0:4]"  2 18 18 18 1;
	setAttr -s 5 ".kot[0:4]"  2 18 18 18 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  0.88702877501517408;
	setAttr -s 5 ".koy[4]"  -0.46171414565191715;
createNode animCurveTA -n "L_Eye_ctrl_rotateZ";
	rename -uid "CECCAF7D-45B5-0DF4-9A95-C9A73BCABA43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Eye_ctrl_visibility";
	rename -uid "FF6418C3-4634-DC4F-E31F-8CB55EA55E30";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "L_Eye_ctrl_translateX";
	rename -uid "D7BC6BE1-4ACB-C941-7A63-06A9825AB451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "L_Eye_ctrl_translateY";
	rename -uid "75CCD3D6-403C-A515-F955-D28E01AD3429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "L_Eye_ctrl_translateZ";
	rename -uid "D6BE5899-4F77-41A4-1DC1-49A6F9E4E96F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 7 0 14 0 19 0 26 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Eye_ctrl_scaleX";
	rename -uid "C561906F-4307-B1DC-CC14-CC956A8056C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Eye_ctrl_scaleY";
	rename -uid "238713F5-460F-E24A-9610-0FBBD33C69EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "L_Eye_ctrl_scaleZ";
	rename -uid "79A0F8C9-426D-7DB5-62DA-45803C74698A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 7 1 14 1 19 1 26 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 25;
	setAttr -av ".unw" 25;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".hfd";
	setAttr -av ".hfs";
	setAttr -av ".hfe";
	setAttr -av ".hfcr";
	setAttr -av ".hfcg";
	setAttr -av ".hfcb";
	setAttr -av ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 14 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 2 ".r";
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :defaultTextureList1;
	setAttr -s 12 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -k on ".exrc";
	setAttr -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
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
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "Spine_01_ctrl_translateX.o" "KoiFishRN.phl[1]";
connectAttr "Spine_01_ctrl_translateY.o" "KoiFishRN.phl[2]";
connectAttr "Spine_01_ctrl_translateZ.o" "KoiFishRN.phl[3]";
connectAttr "Spine_01_ctrl_rotateY.o" "KoiFishRN.phl[4]";
connectAttr "Spine_01_ctrl_rotateX.o" "KoiFishRN.phl[5]";
connectAttr "Spine_01_ctrl_rotateZ.o" "KoiFishRN.phl[6]";
connectAttr "Spine_01_ctrl_scaleX.o" "KoiFishRN.phl[7]";
connectAttr "Spine_01_ctrl_scaleY.o" "KoiFishRN.phl[8]";
connectAttr "Spine_01_ctrl_scaleZ.o" "KoiFishRN.phl[9]";
connectAttr "Spine_01_ctrl_visibility.o" "KoiFishRN.phl[10]";
connectAttr "Spine_02_ctrl_translateX.o" "KoiFishRN.phl[11]";
connectAttr "Spine_02_ctrl_translateY.o" "KoiFishRN.phl[12]";
connectAttr "Spine_02_ctrl_translateZ.o" "KoiFishRN.phl[13]";
connectAttr "Spine_02_ctrl_rotateY.o" "KoiFishRN.phl[14]";
connectAttr "Spine_02_ctrl_rotateX.o" "KoiFishRN.phl[15]";
connectAttr "Spine_02_ctrl_rotateZ.o" "KoiFishRN.phl[16]";
connectAttr "Spine_02_ctrl_scaleX.o" "KoiFishRN.phl[17]";
connectAttr "Spine_02_ctrl_scaleY.o" "KoiFishRN.phl[18]";
connectAttr "Spine_02_ctrl_scaleZ.o" "KoiFishRN.phl[19]";
connectAttr "Spine_02_ctrl_visibility.o" "KoiFishRN.phl[20]";
connectAttr "Spine_03_ctrl_translateX.o" "KoiFishRN.phl[21]";
connectAttr "Spine_03_ctrl_translateY.o" "KoiFishRN.phl[22]";
connectAttr "Spine_03_ctrl_translateZ.o" "KoiFishRN.phl[23]";
connectAttr "Spine_03_ctrl_rotateY.o" "KoiFishRN.phl[24]";
connectAttr "Spine_03_ctrl_rotateX.o" "KoiFishRN.phl[25]";
connectAttr "Spine_03_ctrl_rotateZ.o" "KoiFishRN.phl[26]";
connectAttr "Spine_03_ctrl_scaleX.o" "KoiFishRN.phl[27]";
connectAttr "Spine_03_ctrl_scaleY.o" "KoiFishRN.phl[28]";
connectAttr "Spine_03_ctrl_scaleZ.o" "KoiFishRN.phl[29]";
connectAttr "Spine_03_ctrl_visibility.o" "KoiFishRN.phl[30]";
connectAttr "Spine_04_ctrl_translateX.o" "KoiFishRN.phl[31]";
connectAttr "Spine_04_ctrl_translateY.o" "KoiFishRN.phl[32]";
connectAttr "Spine_04_ctrl_translateZ.o" "KoiFishRN.phl[33]";
connectAttr "Spine_04_ctrl_rotateY.o" "KoiFishRN.phl[34]";
connectAttr "Spine_04_ctrl_rotateX.o" "KoiFishRN.phl[35]";
connectAttr "Spine_04_ctrl_rotateZ.o" "KoiFishRN.phl[36]";
connectAttr "Spine_04_ctrl_scaleX.o" "KoiFishRN.phl[37]";
connectAttr "Spine_04_ctrl_scaleY.o" "KoiFishRN.phl[38]";
connectAttr "Spine_04_ctrl_scaleZ.o" "KoiFishRN.phl[39]";
connectAttr "Spine_04_ctrl_visibility.o" "KoiFishRN.phl[40]";
connectAttr "Tail_Base_ctrl_translateX.o" "KoiFishRN.phl[41]";
connectAttr "Tail_Base_ctrl_translateY.o" "KoiFishRN.phl[42]";
connectAttr "Tail_Base_ctrl_translateZ.o" "KoiFishRN.phl[43]";
connectAttr "Tail_Base_ctrl_rotateY.o" "KoiFishRN.phl[44]";
connectAttr "Tail_Base_ctrl_rotateX.o" "KoiFishRN.phl[45]";
connectAttr "Tail_Base_ctrl_rotateZ.o" "KoiFishRN.phl[46]";
connectAttr "Tail_Base_ctrl_scaleX.o" "KoiFishRN.phl[47]";
connectAttr "Tail_Base_ctrl_scaleY.o" "KoiFishRN.phl[48]";
connectAttr "Tail_Base_ctrl_scaleZ.o" "KoiFishRN.phl[49]";
connectAttr "Tail_Base_ctrl_visibility.o" "KoiFishRN.phl[50]";
connectAttr "Top_Tail_01_ctrl_translateX.o" "KoiFishRN.phl[51]";
connectAttr "Top_Tail_01_ctrl_translateY.o" "KoiFishRN.phl[52]";
connectAttr "Top_Tail_01_ctrl_translateZ.o" "KoiFishRN.phl[53]";
connectAttr "Top_Tail_01_ctrl_rotateY.o" "KoiFishRN.phl[54]";
connectAttr "Top_Tail_01_ctrl_rotateX.o" "KoiFishRN.phl[55]";
connectAttr "Top_Tail_01_ctrl_rotateZ.o" "KoiFishRN.phl[56]";
connectAttr "Top_Tail_01_ctrl_scaleX.o" "KoiFishRN.phl[57]";
connectAttr "Top_Tail_01_ctrl_scaleY.o" "KoiFishRN.phl[58]";
connectAttr "Top_Tail_01_ctrl_scaleZ.o" "KoiFishRN.phl[59]";
connectAttr "Top_Tail_01_ctrl_visibility.o" "KoiFishRN.phl[60]";
connectAttr "Top_Tail_02_ctrl_translateX.o" "KoiFishRN.phl[61]";
connectAttr "Top_Tail_02_ctrl_translateY.o" "KoiFishRN.phl[62]";
connectAttr "Top_Tail_02_ctrl_translateZ.o" "KoiFishRN.phl[63]";
connectAttr "Top_Tail_02_ctrl_rotateY.o" "KoiFishRN.phl[64]";
connectAttr "Top_Tail_02_ctrl_rotateX.o" "KoiFishRN.phl[65]";
connectAttr "Top_Tail_02_ctrl_rotateZ.o" "KoiFishRN.phl[66]";
connectAttr "Top_Tail_02_ctrl_scaleX.o" "KoiFishRN.phl[67]";
connectAttr "Top_Tail_02_ctrl_scaleY.o" "KoiFishRN.phl[68]";
connectAttr "Top_Tail_02_ctrl_scaleZ.o" "KoiFishRN.phl[69]";
connectAttr "Top_Tail_02_ctrl_visibility.o" "KoiFishRN.phl[70]";
connectAttr "Top_Tail_03_ctrl_translateX.o" "KoiFishRN.phl[71]";
connectAttr "Top_Tail_03_ctrl_translateY.o" "KoiFishRN.phl[72]";
connectAttr "Top_Tail_03_ctrl_translateZ.o" "KoiFishRN.phl[73]";
connectAttr "Top_Tail_03_ctrl_rotateY.o" "KoiFishRN.phl[74]";
connectAttr "Top_Tail_03_ctrl_rotateX.o" "KoiFishRN.phl[75]";
connectAttr "Top_Tail_03_ctrl_rotateZ.o" "KoiFishRN.phl[76]";
connectAttr "Top_Tail_03_ctrl_scaleX.o" "KoiFishRN.phl[77]";
connectAttr "Top_Tail_03_ctrl_scaleY.o" "KoiFishRN.phl[78]";
connectAttr "Top_Tail_03_ctrl_scaleZ.o" "KoiFishRN.phl[79]";
connectAttr "Top_Tail_03_ctrl_visibility.o" "KoiFishRN.phl[80]";
connectAttr "Bottom_Tail_01_ctrl_translateX.o" "KoiFishRN.phl[81]";
connectAttr "Bottom_Tail_01_ctrl_translateY.o" "KoiFishRN.phl[82]";
connectAttr "Bottom_Tail_01_ctrl_translateZ.o" "KoiFishRN.phl[83]";
connectAttr "Bottom_Tail_01_ctrl_rotateY.o" "KoiFishRN.phl[84]";
connectAttr "Bottom_Tail_01_ctrl_rotateX.o" "KoiFishRN.phl[85]";
connectAttr "Bottom_Tail_01_ctrl_rotateZ.o" "KoiFishRN.phl[86]";
connectAttr "Bottom_Tail_01_ctrl_scaleX.o" "KoiFishRN.phl[87]";
connectAttr "Bottom_Tail_01_ctrl_scaleY.o" "KoiFishRN.phl[88]";
connectAttr "Bottom_Tail_01_ctrl_scaleZ.o" "KoiFishRN.phl[89]";
connectAttr "Bottom_Tail_01_ctrl_visibility.o" "KoiFishRN.phl[90]";
connectAttr "Bottom_Tail_02_ctrl_translateX.o" "KoiFishRN.phl[91]";
connectAttr "Bottom_Tail_02_ctrl_translateY.o" "KoiFishRN.phl[92]";
connectAttr "Bottom_Tail_02_ctrl_translateZ.o" "KoiFishRN.phl[93]";
connectAttr "Bottom_Tail_02_ctrl_rotateY.o" "KoiFishRN.phl[94]";
connectAttr "Bottom_Tail_02_ctrl_rotateX.o" "KoiFishRN.phl[95]";
connectAttr "Bottom_Tail_02_ctrl_rotateZ.o" "KoiFishRN.phl[96]";
connectAttr "Bottom_Tail_02_ctrl_scaleX.o" "KoiFishRN.phl[97]";
connectAttr "Bottom_Tail_02_ctrl_scaleY.o" "KoiFishRN.phl[98]";
connectAttr "Bottom_Tail_02_ctrl_scaleZ.o" "KoiFishRN.phl[99]";
connectAttr "Bottom_Tail_02_ctrl_visibility.o" "KoiFishRN.phl[100]";
connectAttr "Bottom_Tail_03_ctrl_translateX.o" "KoiFishRN.phl[101]";
connectAttr "Bottom_Tail_03_ctrl_translateY.o" "KoiFishRN.phl[102]";
connectAttr "Bottom_Tail_03_ctrl_translateZ.o" "KoiFishRN.phl[103]";
connectAttr "Bottom_Tail_03_ctrl_rotateY.o" "KoiFishRN.phl[104]";
connectAttr "Bottom_Tail_03_ctrl_rotateX.o" "KoiFishRN.phl[105]";
connectAttr "Bottom_Tail_03_ctrl_rotateZ.o" "KoiFishRN.phl[106]";
connectAttr "Bottom_Tail_03_ctrl_scaleX.o" "KoiFishRN.phl[107]";
connectAttr "Bottom_Tail_03_ctrl_scaleY.o" "KoiFishRN.phl[108]";
connectAttr "Bottom_Tail_03_ctrl_scaleZ.o" "KoiFishRN.phl[109]";
connectAttr "Bottom_Tail_03_ctrl_visibility.o" "KoiFishRN.phl[110]";
connectAttr "L_Back_Fin_ctrl_translateX.o" "KoiFishRN.phl[111]";
connectAttr "L_Back_Fin_ctrl_translateY.o" "KoiFishRN.phl[112]";
connectAttr "L_Back_Fin_ctrl_translateZ.o" "KoiFishRN.phl[113]";
connectAttr "L_Back_Fin_ctrl_rotateY.o" "KoiFishRN.phl[114]";
connectAttr "L_Back_Fin_ctrl_rotateX.o" "KoiFishRN.phl[115]";
connectAttr "L_Back_Fin_ctrl_rotateZ.o" "KoiFishRN.phl[116]";
connectAttr "L_Back_Fin_ctrl_scaleX.o" "KoiFishRN.phl[117]";
connectAttr "L_Back_Fin_ctrl_scaleY.o" "KoiFishRN.phl[118]";
connectAttr "L_Back_Fin_ctrl_scaleZ.o" "KoiFishRN.phl[119]";
connectAttr "L_Back_Fin_ctrl_visibility.o" "KoiFishRN.phl[120]";
connectAttr "R_Back_Fin_ctrl_translateX.o" "KoiFishRN.phl[121]";
connectAttr "R_Back_Fin_ctrl_translateY.o" "KoiFishRN.phl[122]";
connectAttr "R_Back_Fin_ctrl_translateZ.o" "KoiFishRN.phl[123]";
connectAttr "R_Back_Fin_ctrl_rotateY.o" "KoiFishRN.phl[124]";
connectAttr "R_Back_Fin_ctrl_rotateX.o" "KoiFishRN.phl[125]";
connectAttr "R_Back_Fin_ctrl_rotateZ.o" "KoiFishRN.phl[126]";
connectAttr "R_Back_Fin_ctrl_scaleX.o" "KoiFishRN.phl[127]";
connectAttr "R_Back_Fin_ctrl_scaleY.o" "KoiFishRN.phl[128]";
connectAttr "R_Back_Fin_ctrl_scaleZ.o" "KoiFishRN.phl[129]";
connectAttr "R_Back_Fin_ctrl_visibility.o" "KoiFishRN.phl[130]";
connectAttr "L_Front_Fin_01_ctrl_translateX.o" "KoiFishRN.phl[131]";
connectAttr "L_Front_Fin_01_ctrl_translateY.o" "KoiFishRN.phl[132]";
connectAttr "L_Front_Fin_01_ctrl_translateZ.o" "KoiFishRN.phl[133]";
connectAttr "L_Front_Fin_01_ctrl_rotateY.o" "KoiFishRN.phl[134]";
connectAttr "L_Front_Fin_01_ctrl_rotateX.o" "KoiFishRN.phl[135]";
connectAttr "L_Front_Fin_01_ctrl_rotateZ.o" "KoiFishRN.phl[136]";
connectAttr "L_Front_Fin_01_ctrl_scaleX.o" "KoiFishRN.phl[137]";
connectAttr "L_Front_Fin_01_ctrl_scaleY.o" "KoiFishRN.phl[138]";
connectAttr "L_Front_Fin_01_ctrl_scaleZ.o" "KoiFishRN.phl[139]";
connectAttr "L_Front_Fin_01_ctrl_visibility.o" "KoiFishRN.phl[140]";
connectAttr "L_Front_Fin_02_ctrl_translateX.o" "KoiFishRN.phl[141]";
connectAttr "L_Front_Fin_02_ctrl_translateY.o" "KoiFishRN.phl[142]";
connectAttr "L_Front_Fin_02_ctrl_translateZ.o" "KoiFishRN.phl[143]";
connectAttr "L_Front_Fin_02_ctrl_rotateX.o" "KoiFishRN.phl[144]";
connectAttr "L_Front_Fin_02_ctrl_rotateY.o" "KoiFishRN.phl[145]";
connectAttr "L_Front_Fin_02_ctrl_rotateZ.o" "KoiFishRN.phl[146]";
connectAttr "L_Front_Fin_02_ctrl_scaleX.o" "KoiFishRN.phl[147]";
connectAttr "L_Front_Fin_02_ctrl_scaleY.o" "KoiFishRN.phl[148]";
connectAttr "L_Front_Fin_02_ctrl_scaleZ.o" "KoiFishRN.phl[149]";
connectAttr "L_Front_Fin_02_ctrl_visibility.o" "KoiFishRN.phl[150]";
connectAttr "R_Front_Fin_01_ctrl_translateX.o" "KoiFishRN.phl[151]";
connectAttr "R_Front_Fin_01_ctrl_translateY.o" "KoiFishRN.phl[152]";
connectAttr "R_Front_Fin_01_ctrl_translateZ.o" "KoiFishRN.phl[153]";
connectAttr "R_Front_Fin_01_ctrl_rotateY.o" "KoiFishRN.phl[154]";
connectAttr "R_Front_Fin_01_ctrl_rotateX.o" "KoiFishRN.phl[155]";
connectAttr "R_Front_Fin_01_ctrl_rotateZ.o" "KoiFishRN.phl[156]";
connectAttr "R_Front_Fin_01_ctrl_scaleX.o" "KoiFishRN.phl[157]";
connectAttr "R_Front_Fin_01_ctrl_scaleY.o" "KoiFishRN.phl[158]";
connectAttr "R_Front_Fin_01_ctrl_scaleZ.o" "KoiFishRN.phl[159]";
connectAttr "R_Front_Fin_01_ctrl_visibility.o" "KoiFishRN.phl[160]";
connectAttr "R_Front_Fin_02_ctrl_translateX.o" "KoiFishRN.phl[161]";
connectAttr "R_Front_Fin_02_ctrl_translateY.o" "KoiFishRN.phl[162]";
connectAttr "R_Front_Fin_02_ctrl_translateZ.o" "KoiFishRN.phl[163]";
connectAttr "R_Front_Fin_02_ctrl_rotateY.o" "KoiFishRN.phl[164]";
connectAttr "R_Front_Fin_02_ctrl_rotateX.o" "KoiFishRN.phl[165]";
connectAttr "R_Front_Fin_02_ctrl_rotateZ.o" "KoiFishRN.phl[166]";
connectAttr "R_Front_Fin_02_ctrl_scaleX.o" "KoiFishRN.phl[167]";
connectAttr "R_Front_Fin_02_ctrl_scaleY.o" "KoiFishRN.phl[168]";
connectAttr "R_Front_Fin_02_ctrl_scaleZ.o" "KoiFishRN.phl[169]";
connectAttr "R_Front_Fin_02_ctrl_visibility.o" "KoiFishRN.phl[170]";
connectAttr "Head_01_ctrl_translateX.o" "KoiFishRN.phl[171]";
connectAttr "Head_01_ctrl_translateY.o" "KoiFishRN.phl[172]";
connectAttr "Head_01_ctrl_translateZ.o" "KoiFishRN.phl[173]";
connectAttr "Head_01_ctrl_rotateZ.o" "KoiFishRN.phl[174]";
connectAttr "Head_01_ctrl_rotateY.o" "KoiFishRN.phl[175]";
connectAttr "Head_01_ctrl_rotateX.o" "KoiFishRN.phl[176]";
connectAttr "Head_01_ctrl_scaleX.o" "KoiFishRN.phl[177]";
connectAttr "Head_01_ctrl_scaleY.o" "KoiFishRN.phl[178]";
connectAttr "Head_01_ctrl_scaleZ.o" "KoiFishRN.phl[179]";
connectAttr "Head_01_ctrl_visibility.o" "KoiFishRN.phl[180]";
connectAttr "Mouth_ctrl_translateX.o" "KoiFishRN.phl[181]";
connectAttr "Mouth_ctrl_translateY.o" "KoiFishRN.phl[182]";
connectAttr "Mouth_ctrl_translateZ.o" "KoiFishRN.phl[183]";
connectAttr "Mouth_ctrl_rotateY.o" "KoiFishRN.phl[184]";
connectAttr "Mouth_ctrl_rotateX.o" "KoiFishRN.phl[185]";
connectAttr "Mouth_ctrl_rotateZ.o" "KoiFishRN.phl[186]";
connectAttr "Mouth_ctrl_scaleX.o" "KoiFishRN.phl[187]";
connectAttr "Mouth_ctrl_scaleY.o" "KoiFishRN.phl[188]";
connectAttr "Mouth_ctrl_scaleZ.o" "KoiFishRN.phl[189]";
connectAttr "Mouth_ctrl_visibility.o" "KoiFishRN.phl[190]";
connectAttr "L_Eye_ctrl_translateX.o" "KoiFishRN.phl[191]";
connectAttr "L_Eye_ctrl_translateY.o" "KoiFishRN.phl[192]";
connectAttr "L_Eye_ctrl_translateZ.o" "KoiFishRN.phl[193]";
connectAttr "L_Eye_ctrl_rotateY.o" "KoiFishRN.phl[194]";
connectAttr "L_Eye_ctrl_rotateX.o" "KoiFishRN.phl[195]";
connectAttr "L_Eye_ctrl_rotateZ.o" "KoiFishRN.phl[196]";
connectAttr "L_Eye_ctrl_scaleX.o" "KoiFishRN.phl[197]";
connectAttr "L_Eye_ctrl_scaleY.o" "KoiFishRN.phl[198]";
connectAttr "L_Eye_ctrl_scaleZ.o" "KoiFishRN.phl[199]";
connectAttr "L_Eye_ctrl_visibility.o" "KoiFishRN.phl[200]";
connectAttr "R_Eye_ctrl_translateX.o" "KoiFishRN.phl[201]";
connectAttr "R_Eye_ctrl_translateY.o" "KoiFishRN.phl[202]";
connectAttr "R_Eye_ctrl_translateZ.o" "KoiFishRN.phl[203]";
connectAttr "R_Eye_ctrl_rotateY.o" "KoiFishRN.phl[204]";
connectAttr "R_Eye_ctrl_rotateX.o" "KoiFishRN.phl[205]";
connectAttr "R_Eye_ctrl_rotateZ.o" "KoiFishRN.phl[206]";
connectAttr "R_Eye_ctrl_scaleX.o" "KoiFishRN.phl[207]";
connectAttr "R_Eye_ctrl_scaleY.o" "KoiFishRN.phl[208]";
connectAttr "R_Eye_ctrl_scaleZ.o" "KoiFishRN.phl[209]";
connectAttr "R_Eye_ctrl_visibility.o" "KoiFishRN.phl[210]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of kFishAnimation.ma
