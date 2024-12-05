//Maya ASCII 2023 scene
//Name: PalBotWalkCycle.ma
//Last modified: Mon, Dec 11, 2023 04:10:47 PM
//Codeset: 1252
file -rdi 1 -ns "PALBot" -rfn "PALBotRN" -op "v=0;" -typ "mayaAscii" "C:/Users/ferri/Downloads/PALBOT/PALBOT/scenes/PALBot.ma";
file -r -ns "PALBot" -dr 1 -rfn "PALBotRN" -op "v=0;" -typ "mayaAscii" "C:/Users/ferri/Downloads/PALBOT/PALBOT/scenes/PALBot.ma";
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "B1DEE1D0-4153-AEA3-708B-B9A7B7B01014";
createNode transform -s -n "persp";
	rename -uid "EF7D1F0C-487A-A140-7B96-C99B89D6B339";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -56.164468646300428 28.832570009707361 54.474068733427551 ;
	setAttr ".r" -type "double3" -14.73835272586161 -1125.7999999998572 1.1405313707013158e-15 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 -5.773159728050814e-15 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" -1.429439373783954e-14 5.5990174264893391e-15 -4.7579329268613416e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5DAF6D8C-458C-8562-9BDF-C3B92EC81D42";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 82.47489234297197;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -5.2813009142974856 0.26930588888870882 3.7299451795922534 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "35898DFC-41A6-5B16-C58B-13B83CE76B4C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "48A1AF99-4241-D339-B31D-969B255775ED";
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
	rename -uid "EE3FC5A7-4B57-0BFB-D185-A89FF567CDC0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7D9283A3-4760-E322-257C-6481434F286B";
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
	rename -uid "22CA3F79-49D2-3017-EF1E-EF881625D70D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B558B74C-4F01-ABC4-9E4F-0B8BA0B31A46";
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
	rename -uid "98442847-44F1-9DB4-AB19-09B308C75284";
	setAttr -s 17 ".lnk";
	setAttr -s 17 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "46B05551-4B08-6EF6-A7F5-4C8C7731270F";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C1748CF4-4353-F725-B58A-489930ECE813";
createNode displayLayerManager -n "layerManager";
	rename -uid "AA561579-4DA5-5888-C2D6-E3B0E4D80BDE";
createNode displayLayer -n "defaultLayer";
	rename -uid "A6C23CB6-443F-AE2B-9755-B4968CE5049D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F0500E05-47B1-BFDE-9E3C-E7AE8B127D28";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "ABFF3DD8-4791-1245-4437-CDBE764425CC";
	setAttr ".g" yes;
createNode reference -n "PALBotRN";
	rename -uid "36C3316F-4583-3908-EBEB-1FB1F28C584C";
	setAttr -s 366 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"PALBotRN"
		"PALBotRN" 0
		"PALBotRN" 458
		1 |PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Elbow_ctrlShape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		1 |PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl|PALBot:PALbot_R_FK_Wrist_ctrlShape 
		"lockLength" "ll" " -ci 1 -k 1 -min 0 -max 1 -at \"bool\""
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_HeadGRP|PALBot:GLASS_clean|PALBot:GLASS_cleanShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_RightARM_GRP|PALBot:PALbot_Right_Forearm_grp|PALBot:PALbot_Right_Forearm_lightbeamgrp|PALBot:PALbot_Right_Forearm_lightbeam01" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN" 
		"global_scale" " -k 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN" 
		"Mesh_lock" " -k 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_offset_parentConstraint1" 
		"target" " -s 2"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" 0.048280353794097897 4.74006149398806542 7.94200000052289123"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" 180 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_offset_parentConstraint1" 
		"target[1].targetOffsetTranslate" " -type \"double3\" 1.6054188058280936 -4.89362600219723731 7.94200000000000284"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_offset_parentConstraint1" 
		"target[1].targetOffsetRotate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" -0.05253135209143478 -1.01489527172989691 0.0021240159461069288"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" -2.31407361435471692 -0.19059055351682863 -92.95874828182030569"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary_offset_parentConstraint1" 
		"L_foot_secondary_LOCW0" " -k 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" 0.0076524768713470692 2.4446322112364034 0.026694783021283825"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" -179.99993168059083359 -0.019651124968076167 0.018103007060223678"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 1.8205086158573644e-06 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl_offset_parentConstraint1" 
		"PALbot_L_BASE_ankleW0" " -k 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" 1.6536991596221926 -10.76073789596557617 0"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" 0 180 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" -1.44525938743972615 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" 8.8726760008265974e-06 -89.99999112732400874 0"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS_offset_parentConstraint1" 
		"Jhsn_R_Hand01W0" " -k 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl" 
		"visibility" " -av 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl_offset_orientConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl_offset_orientConstraint1" 
		"offset" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl_offset_orientConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Elbow_ctrlShape" 
		"lockLength" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl" 
		"rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl|PALBot:PALbot_R_FK_Wrist_ctrlShape" 
		"lockLength" " -k 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:Head_root_loc" 
		"visibility" " 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:Head_root_loc" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:Head_root_loc" 
		"translateX" " -av"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:Head_root_loc" 
		"translateY" " -av"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:Head_root_loc" 
		"translateZ" " -av"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:Head_root_loc" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:Head_root_loc" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp" 
		"scale" " -type \"double3\" 0.99999999999999967 0.99999999999999978 0.99999999999999978"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_arm_IK_FOLLOW|PALBot:PALbot_L_arm_IK_offset|PALBot:PALbot_L_arm_IK_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_elbow_aim_offset|PALBot:PALbot_L_elbow_aim_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_offset_parentConstraint1" 
		"target" " -s 2"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" 0.048280353794098785 4.74006149398806542 7.94200000052289123"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" 0 180 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_offset_parentConstraint1" 
		"target[1].targetOffsetTranslate" " -type \"double3\" -1.6054188058280936 -4.89362600219723731 7.94200000000000284"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_offset_parentConstraint1" 
		"target[1].targetOffsetRotate" " -type \"double3\" 0 180 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" -0.052531352079415949 -1.01489527173881222 -0.0021240159530284269"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" 2.31407361438372172 0.19059055671418723 -92.95874828478827112"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary_offset_parentConstraint1" 
		"R_foot_secondary_LOCW0" " -k 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl_offset1_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl_offset1_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" 0.0075815671603933765 -2.44462889597606114 -0.026689563871829237"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl_offset1_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" 6.8473801408501701e-05 -0.019653736679477028 0.018068486701957209"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl_offset1_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl_offset1_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 1.8231775206645926e-06 -4.5637857066066517e-08 -6.0257845293777372e-07"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl_offset1_parentConstraint1" 
		"PALbot_R_BASE_ankleW0" " -k 1 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" -1.6536991596221926 -10.76073789596557617 0"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS_offset_parentConstraint1" 
		"nodeState" " -k 1 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS_offset_parentConstraint1" 
		"target[0].targetOffsetTranslate" " -type \"double3\" -1.44523965294569434 -0.0010424643601627537 -0.0075001711909737472"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS_offset_parentConstraint1" 
		"target[0].targetOffsetRotate" " -type \"double3\" 172.72512044766318695 89.7045042972883806 -7.23364124584351842"
		
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS_offset_parentConstraint1" 
		"interpType" " 1"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS_offset_parentConstraint1" 
		"rotationDecompositionTarget" " -type \"double3\" 0 0 0"
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS_offset_parentConstraint1" 
		"Jhsn_L_FK_Wrist_ctrlW0" " -k 1 1"
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateX" 
		"PALBotRN.placeHolderList[1]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateY" 
		"PALBotRN.placeHolderList[2]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateZ" 
		"PALBotRN.placeHolderList[3]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateX" 
		"PALBotRN.placeHolderList[4]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateY" 
		"PALBotRN.placeHolderList[5]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateZ" 
		"PALBotRN.placeHolderList[6]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.space_switch" 
		"PALBotRN.placeHolderList[7]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateX" 
		"PALBotRN.placeHolderList[8]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateY" 
		"PALBotRN.placeHolderList[9]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateZ" 
		"PALBotRN.placeHolderList[10]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateX" 
		"PALBotRN.placeHolderList[11]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateY" 
		"PALBotRN.placeHolderList[12]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[13]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateX" 
		"PALBotRN.placeHolderList[14]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateY" 
		"PALBotRN.placeHolderList[15]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateZ" 
		"PALBotRN.placeHolderList[16]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateX" 
		"PALBotRN.placeHolderList[17]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateY" 
		"PALBotRN.placeHolderList[18]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateZ" 
		"PALBotRN.placeHolderList[19]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateX" 
		"PALBotRN.placeHolderList[20]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateY" 
		"PALBotRN.placeHolderList[21]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateZ" 
		"PALBotRN.placeHolderList[22]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateX" 
		"PALBotRN.placeHolderList[23]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateY" 
		"PALBotRN.placeHolderList[24]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateZ" 
		"PALBotRN.placeHolderList[25]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateX" 
		"PALBotRN.placeHolderList[26]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateY" 
		"PALBotRN.placeHolderList[27]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateZ" 
		"PALBotRN.placeHolderList[28]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateX" 
		"PALBotRN.placeHolderList[29]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateY" 
		"PALBotRN.placeHolderList[30]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateZ" 
		"PALBotRN.placeHolderList[31]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.on_off" 
		"PALBotRN.placeHolderList[32]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateX" 
		"PALBotRN.placeHolderList[33]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateY" 
		"PALBotRN.placeHolderList[34]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateZ" 
		"PALBotRN.placeHolderList[35]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateX" 
		"PALBotRN.placeHolderList[36]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateY" 
		"PALBotRN.placeHolderList[37]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[38]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleX" 
		"PALBotRN.placeHolderList[39]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleY" 
		"PALBotRN.placeHolderList[40]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleZ" 
		"PALBotRN.placeHolderList[41]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.Heel_Peel" 
		"PALBotRN.placeHolderList[42]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.follow_hip" 
		"PALBotRN.placeHolderList[43]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateX" 
		"PALBotRN.placeHolderList[44]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateZ" 
		"PALBotRN.placeHolderList[45]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateY" 
		"PALBotRN.placeHolderList[46]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateX" 
		"PALBotRN.placeHolderList[47]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateY" 
		"PALBotRN.placeHolderList[48]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[49]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateX" 
		"PALBotRN.placeHolderList[50]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateY" 
		"PALBotRN.placeHolderList[51]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateZ" 
		"PALBotRN.placeHolderList[52]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateX" 
		"PALBotRN.placeHolderList[53]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateY" 
		"PALBotRN.placeHolderList[54]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateZ" 
		"PALBotRN.placeHolderList[55]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateX" 
		"PALBotRN.placeHolderList[56]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateY" 
		"PALBotRN.placeHolderList[57]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateZ" 
		"PALBotRN.placeHolderList[58]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateX" 
		"PALBotRN.placeHolderList[59]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateY" 
		"PALBotRN.placeHolderList[60]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateZ" 
		"PALBotRN.placeHolderList[61]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateX" 
		"PALBotRN.placeHolderList[62]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateY" 
		"PALBotRN.placeHolderList[63]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateZ" 
		"PALBotRN.placeHolderList[64]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateX" 
		"PALBotRN.placeHolderList[65]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateY" 
		"PALBotRN.placeHolderList[66]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[67]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS.Hand_Vis" 
		"PALBotRN.placeHolderList[68]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS.canon_light" 
		"PALBotRN.placeHolderList[69]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.secondary_vis" 
		"PALBotRN.placeHolderList[70]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateY" 
		"PALBotRN.placeHolderList[71]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateX" 
		"PALBotRN.placeHolderList[72]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateZ" 
		"PALBotRN.placeHolderList[73]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateX" 
		"PALBotRN.placeHolderList[74]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateY" 
		"PALBotRN.placeHolderList[75]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[76]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.secondary_vis" 
		"PALBotRN.placeHolderList[77]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateY" 
		"PALBotRN.placeHolderList[78]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateX" 
		"PALBotRN.placeHolderList[79]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[80]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateX" 
		"PALBotRN.placeHolderList[81]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateY" 
		"PALBotRN.placeHolderList[82]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateZ" 
		"PALBotRN.placeHolderList[83]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateX" 
		"PALBotRN.placeHolderList[84]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateY" 
		"PALBotRN.placeHolderList[85]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateZ" 
		"PALBotRN.placeHolderList[86]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateX" 
		"PALBotRN.placeHolderList[87]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateY" 
		"PALBotRN.placeHolderList[88]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[89]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Space_switch" 
		"PALBotRN.placeHolderList[90]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.FaceLight" 
		"PALBotRN.placeHolderList[91]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Led_color" 
		"PALBotRN.placeHolderList[92]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Face_Drawing" 
		"PALBotRN.placeHolderList[93]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateY" 
		"PALBotRN.placeHolderList[94]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateX" 
		"PALBotRN.placeHolderList[95]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[96]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateX" 
		"PALBotRN.placeHolderList[97]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateY" 
		"PALBotRN.placeHolderList[98]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateZ" 
		"PALBotRN.placeHolderList[99]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateX" 
		"PALBotRN.placeHolderList[100]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateY" 
		"PALBotRN.placeHolderList[101]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateZ" 
		"PALBotRN.placeHolderList[102]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateX" 
		"PALBotRN.placeHolderList[103]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateY" 
		"PALBotRN.placeHolderList[104]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[105]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[106]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"PALBotRN.placeHolderList[107]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"PALBotRN.placeHolderList[108]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"PALBotRN.placeHolderList[109]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[110]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateY" 
		"PALBotRN.placeHolderList[111]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateX" 
		"PALBotRN.placeHolderList[112]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateY" 
		"PALBotRN.placeHolderList[113]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateZ" 
		"PALBotRN.placeHolderList[114]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.rotateX" 
		"PALBotRN.placeHolderList[115]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateX" 
		"PALBotRN.placeHolderList[116]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateY" 
		"PALBotRN.placeHolderList[117]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateZ" 
		"PALBotRN.placeHolderList[118]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateX" 
		"PALBotRN.placeHolderList[119]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateY" 
		"PALBotRN.placeHolderList[120]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateZ" 
		"PALBotRN.placeHolderList[121]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateX" 
		"PALBotRN.placeHolderList[122]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateY" 
		"PALBotRN.placeHolderList[123]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[124]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_arm_IK_FK_switch_offset|PALBot:PALbot_R_arm_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[125]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateX" 
		"PALBotRN.placeHolderList[126]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateY" 
		"PALBotRN.placeHolderList[127]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateZ" 
		"PALBotRN.placeHolderList[128]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateX" 
		"PALBotRN.placeHolderList[129]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateY" 
		"PALBotRN.placeHolderList[130]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[131]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[132]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"PALBotRN.placeHolderList[133]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"PALBotRN.placeHolderList[134]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"PALBotRN.placeHolderList[135]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[136]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateY" 
		"PALBotRN.placeHolderList[137]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateX" 
		"PALBotRN.placeHolderList[138]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateY" 
		"PALBotRN.placeHolderList[139]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateZ" 
		"PALBotRN.placeHolderList[140]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.rotateX" 
		"PALBotRN.placeHolderList[141]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateX" 
		"PALBotRN.placeHolderList[142]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateY" 
		"PALBotRN.placeHolderList[143]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateZ" 
		"PALBotRN.placeHolderList[144]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateX" 
		"PALBotRN.placeHolderList[145]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateY" 
		"PALBotRN.placeHolderList[146]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateZ" 
		"PALBotRN.placeHolderList[147]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateX" 
		"PALBotRN.placeHolderList[148]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateY" 
		"PALBotRN.placeHolderList[149]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[150]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_arm_IK_FK_switch_offset|PALBot:PALbot_L_arm_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[151]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateX" 
		"PALBotRN.placeHolderList[152]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateY" 
		"PALBotRN.placeHolderList[153]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateZ" 
		"PALBotRN.placeHolderList[154]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateX" 
		"PALBotRN.placeHolderList[155]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateY" 
		"PALBotRN.placeHolderList[156]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[157]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateX" 
		"PALBotRN.placeHolderList[158]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateY" 
		"PALBotRN.placeHolderList[159]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateZ" 
		"PALBotRN.placeHolderList[160]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateX" 
		"PALBotRN.placeHolderList[161]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateY" 
		"PALBotRN.placeHolderList[162]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateZ" 
		"PALBotRN.placeHolderList[163]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip|PALBot:PALbot_R_leg_IK_FK_switch_offset|PALBot:PALbot_R_leg_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[164]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateX" 
		"PALBotRN.placeHolderList[165]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateY" 
		"PALBotRN.placeHolderList[166]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateZ" 
		"PALBotRN.placeHolderList[167]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateX" 
		"PALBotRN.placeHolderList[168]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateY" 
		"PALBotRN.placeHolderList[169]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateZ" 
		"PALBotRN.placeHolderList[170]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip|PALBot:PALbot_L_leg_IK_FK_switch_offset|PALBot:PALbot_L_leg_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[171]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateX" 
		"PALBotRN.placeHolderList[172]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateY" 
		"PALBotRN.placeHolderList[173]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[174]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[175]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[176]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[177]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateX" 
		"PALBotRN.placeHolderList[178]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateY" 
		"PALBotRN.placeHolderList[179]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[180]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[181]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[182]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[183]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateX" 
		"PALBotRN.placeHolderList[184]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateY" 
		"PALBotRN.placeHolderList[185]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateZ" 
		"PALBotRN.placeHolderList[186]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateX" 
		"PALBotRN.placeHolderList[187]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateY" 
		"PALBotRN.placeHolderList[188]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[189]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateX" 
		"PALBotRN.placeHolderList[190]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateY" 
		"PALBotRN.placeHolderList[191]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[192]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[193]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[194]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[195]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateX" 
		"PALBotRN.placeHolderList[196]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateY" 
		"PALBotRN.placeHolderList[197]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[198]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[199]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[200]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[201]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateX" 
		"PALBotRN.placeHolderList[202]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateY" 
		"PALBotRN.placeHolderList[203]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[204]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[205]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[206]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[207]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateX" 
		"PALBotRN.placeHolderList[208]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateY" 
		"PALBotRN.placeHolderList[209]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[210]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[211]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[212]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[213]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateX" 
		"PALBotRN.placeHolderList[214]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateY" 
		"PALBotRN.placeHolderList[215]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[216]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[217]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[218]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[219]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateX" 
		"PALBotRN.placeHolderList[220]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateY" 
		"PALBotRN.placeHolderList[221]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[222]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[223]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[224]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[225]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateX" 
		"PALBotRN.placeHolderList[226]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateY" 
		"PALBotRN.placeHolderList[227]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[228]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[229]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[230]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[231]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateX" 
		"PALBotRN.placeHolderList[232]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateY" 
		"PALBotRN.placeHolderList[233]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[234]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[235]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[236]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[237]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateX" 
		"PALBotRN.placeHolderList[238]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateY" 
		"PALBotRN.placeHolderList[239]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[240]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[241]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[242]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[243]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateX" 
		"PALBotRN.placeHolderList[244]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateY" 
		"PALBotRN.placeHolderList[245]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[246]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[247]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[248]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[249]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateX" 
		"PALBotRN.placeHolderList[250]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateY" 
		"PALBotRN.placeHolderList[251]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateZ" 
		"PALBotRN.placeHolderList[252]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateX" 
		"PALBotRN.placeHolderList[253]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateY" 
		"PALBotRN.placeHolderList[254]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[255]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateX" 
		"PALBotRN.placeHolderList[256]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateY" 
		"PALBotRN.placeHolderList[257]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[258]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[259]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[260]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[261]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateX" 
		"PALBotRN.placeHolderList[262]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateY" 
		"PALBotRN.placeHolderList[263]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[264]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[265]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[266]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[267]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateX" 
		"PALBotRN.placeHolderList[268]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateY" 
		"PALBotRN.placeHolderList[269]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[270]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[271]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[272]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[273]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateX" 
		"PALBotRN.placeHolderList[274]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateY" 
		"PALBotRN.placeHolderList[275]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[276]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[277]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[278]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[279]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateX" 
		"PALBotRN.placeHolderList[280]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateY" 
		"PALBotRN.placeHolderList[281]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[282]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[283]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[284]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[285]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateX" 
		"PALBotRN.placeHolderList[286]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateY" 
		"PALBotRN.placeHolderList[287]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[288]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[289]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[290]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[291]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateX" 
		"PALBotRN.placeHolderList[292]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateY" 
		"PALBotRN.placeHolderList[293]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[294]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[295]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[296]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[297]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateX" 
		"PALBotRN.placeHolderList[298]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateY" 
		"PALBotRN.placeHolderList[299]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[300]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[301]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[302]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[303]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.space_switch" 
		"PALBotRN.placeHolderList[304]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateX" 
		"PALBotRN.placeHolderList[305]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateY" 
		"PALBotRN.placeHolderList[306]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateZ" 
		"PALBotRN.placeHolderList[307]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateX" 
		"PALBotRN.placeHolderList[308]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateY" 
		"PALBotRN.placeHolderList[309]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[310]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateX" 
		"PALBotRN.placeHolderList[311]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateY" 
		"PALBotRN.placeHolderList[312]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateZ" 
		"PALBotRN.placeHolderList[313]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateX" 
		"PALBotRN.placeHolderList[314]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateY" 
		"PALBotRN.placeHolderList[315]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateZ" 
		"PALBotRN.placeHolderList[316]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateX" 
		"PALBotRN.placeHolderList[317]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateY" 
		"PALBotRN.placeHolderList[318]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateZ" 
		"PALBotRN.placeHolderList[319]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateX" 
		"PALBotRN.placeHolderList[320]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateY" 
		"PALBotRN.placeHolderList[321]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateZ" 
		"PALBotRN.placeHolderList[322]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateX" 
		"PALBotRN.placeHolderList[323]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateY" 
		"PALBotRN.placeHolderList[324]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateZ" 
		"PALBotRN.placeHolderList[325]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateX" 
		"PALBotRN.placeHolderList[326]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateY" 
		"PALBotRN.placeHolderList[327]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateZ" 
		"PALBotRN.placeHolderList[328]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.on_off" 
		"PALBotRN.placeHolderList[329]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateX" 
		"PALBotRN.placeHolderList[330]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateY" 
		"PALBotRN.placeHolderList[331]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateZ" 
		"PALBotRN.placeHolderList[332]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateX" 
		"PALBotRN.placeHolderList[333]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateY" 
		"PALBotRN.placeHolderList[334]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[335]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleX" 
		"PALBotRN.placeHolderList[336]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleY" 
		"PALBotRN.placeHolderList[337]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleZ" 
		"PALBotRN.placeHolderList[338]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.Heel_Peel" 
		"PALBotRN.placeHolderList[339]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.follow_hip" 
		"PALBotRN.placeHolderList[340]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateZ" 
		"PALBotRN.placeHolderList[341]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateX" 
		"PALBotRN.placeHolderList[342]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateY" 
		"PALBotRN.placeHolderList[343]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateX" 
		"PALBotRN.placeHolderList[344]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateY" 
		"PALBotRN.placeHolderList[345]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[346]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateX" 
		"PALBotRN.placeHolderList[347]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateY" 
		"PALBotRN.placeHolderList[348]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateZ" 
		"PALBotRN.placeHolderList[349]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateX" 
		"PALBotRN.placeHolderList[350]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateY" 
		"PALBotRN.placeHolderList[351]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateZ" 
		"PALBotRN.placeHolderList[352]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateX" 
		"PALBotRN.placeHolderList[353]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateY" 
		"PALBotRN.placeHolderList[354]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateZ" 
		"PALBotRN.placeHolderList[355]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateX" 
		"PALBotRN.placeHolderList[356]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateY" 
		"PALBotRN.placeHolderList[357]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateZ" 
		"PALBotRN.placeHolderList[358]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateX" 
		"PALBotRN.placeHolderList[359]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateY" 
		"PALBotRN.placeHolderList[360]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateZ" 
		"PALBotRN.placeHolderList[361]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateX" 
		"PALBotRN.placeHolderList[362]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateY" 
		"PALBotRN.placeHolderList[363]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[364]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS.Hand_Vis" 
		"PALBotRN.placeHolderList[365]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS.canon_light" 
		"PALBotRN.placeHolderList[366]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "0D7A7371-4701-A753-D181-10ACC8DE577F";
	setAttr ".version" -type "string" "5.1.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "FF14F7AC-47B9-578C-8654-1985B15AAEFA";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "17F6E83C-4C4A-C84C-227F-7A84DFD05102";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "FE24732E-4E71-3267-0B56-61A1F427AE55";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTA -n "PALbot_root_rotateX";
	rename -uid "168B8C96-4183-5303-638A-1A98D4EA3651";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_root_rotateY";
	rename -uid "0B5B71B5-4CCB-7A12-0667-3193AE15917C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_root_rotateZ";
	rename -uid "EA793AC6-4A07-355F-7533-6D8748818D07";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateX";
	rename -uid "4ED69D1F-4A7C-7B00-AFF8-9281E1AFEF39";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 34.337589928628823 44 36.578741133156726 47 33.792250136908301 52 13.018608853949127
		 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[13:23]"  2 16 1 1 9 3 9 1 
		1 3 3;
	setAttr -s 24 ".kot[13:23]"  2 16 1 1 9 5 9 5 
		5 5 5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateY";
	rename -uid "4D5069AB-4C22-DC5C-C9A4-97860591440F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 47 0 52 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateZ";
	rename -uid "8C901DC5-47E1-6D5D-9BCD-F7834691E289";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 47 0 52 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateX";
	rename -uid "53A39AD2-42F2-A39C-B892-A1A822C32E2E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateY";
	rename -uid "B273F100-4208-7F34-961E-A78069369516";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateZ";
	rename -uid "DDC733F5-4921-3A06-5819-50AFAF9991F7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateX";
	rename -uid "FCF6F85B-4E41-FFB0-37CD-1290A5BC2F14";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateY";
	rename -uid "A39022F2-4415-B562-6390-0E8CD8DD4008";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateZ";
	rename -uid "C921CDDC-49A0-9CF7-2E44-72B4031F83D2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateX";
	rename -uid "E76BAE5E-48CF-8C6E-950A-71ACC52A9231";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateY";
	rename -uid "17DEA97F-4467-455E-32DE-F990A696B6C7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateZ";
	rename -uid "622B4389-4E94-A496-D23C-9FB460D99F47";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateX";
	rename -uid "6F5D76F8-492A-E9AE-37ED-2B9A6F2AD7F6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateY";
	rename -uid "B9D1245D-492F-6F60-2CFB-A2B731357858";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateZ";
	rename -uid "908D683A-486F-DF51-FBC2-26A814F10A92";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateX";
	rename -uid "31CC10F3-480C-3908-1C02-85B261C7955E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 44.317073656601785 118 44.317073656601785 126 44.317073656601785;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateY";
	rename -uid "1D88D025-4604-FC8F-787B-C6B75B8B9FF9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateZ";
	rename -uid "068BF5D6-4151-2FA7-C312-FC9BE6224892";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateX";
	rename -uid "083B09A6-4F90-1501-0CCF-2092562C65A0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 41.999999829931973 0
		 42 0 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[8:16]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 17 ".kot[8:16]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateY";
	rename -uid "412552B1-4402-7F03-10CB-078883FF579B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 41.999999829931973 0
		 42 0 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[8:16]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 17 ".kot[8:16]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateZ";
	rename -uid "87008690-4CAA-ABB4-B89C-4F91C5C40DCE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 41.999999829931973 0
		 42 0 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[8:16]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 17 ".kot[8:16]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateX";
	rename -uid "64A56D78-4E7C-0357-515A-629BA62BD609";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 3 0 9 0 12 0 15 0 21 0 27 0 42 0 49 0
		 55 0 56 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateY";
	rename -uid "2BE04748-4D55-F5A9-E583-099C045FE28D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 3 0 9 0 12 0 15 0 21 0 27 0 42 0 49 0
		 55 0 56 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateZ";
	rename -uid "52BCDE29-46EA-E966-9A34-A9894B8C9F03";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 3 0 9 0 12 0 15 0 21 0 27 0 42 0 49 0
		 55 0 56 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateX";
	rename -uid "CF20BE8F-4CC3-0975-DADB-39B451F6AF82";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 11 0 14 31.278689934033139 17 45.014840417804677
		 20 33.809855217862435 25 3.5396480847653842 27 0 30 0 35 0 40 0 44 0 47 0 50 0 51 0
		 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[3:23]"  2 2 2 16 16 16 16 16 
		16 16 16 16 1 1 9 3 9 1 1 3 3;
	setAttr -s 24 ".kot[3:23]"  2 2 2 16 16 16 16 16 
		16 16 16 16 1 1 9 5 9 5 5 5 5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateY";
	rename -uid "95850162-43A2-2B01-5E9B-8581E916A50E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 11 0 14 0 17 0 20 0 25 0 27 0 30 0
		 35 0 40 0 44 0 47 0 50 0 51 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateZ";
	rename -uid "83827962-482C-5143-A983-E0A93949CC4D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 11 0 14 0 17 0 20 0 25 0 27 0 30 0
		 35 0 40 0 44 0 47 0 50 0 51 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateX";
	rename -uid "5033BE19-441A-D5F0-A24F-C0ACA613BBA6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateY";
	rename -uid "3278E9F0-4AA3-39ED-EA01-0FAEE0BB3ECE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateZ";
	rename -uid "FE33353D-4A76-9FF3-F65F-2EBCC1E38FE8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateX";
	rename -uid "B8636BE6-430A-14BC-9738-4E9F6BF418FA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateY";
	rename -uid "4D044CEB-4887-4ACD-6E27-A9B97B69AAD8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateZ";
	rename -uid "28FEA626-4DE7-898C-AB13-8D9F3A81FE8D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateX";
	rename -uid "F2D9D89F-42B3-4DBF-04FD-9AA2022AA2C3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateY";
	rename -uid "DC88D1AA-44FD-76C4-CE17-1DB9AAFBEE6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateZ";
	rename -uid "3AF1C436-40D5-3BC9-45E3-91A1FD6CCA4F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateX";
	rename -uid "69347CE8-48CE-8122-025E-17AC51A25332";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateY";
	rename -uid "167E58D9-408C-A78E-8BDB-59802AFF8EEF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateZ";
	rename -uid "936FDE55-4C46-89FB-0047-E08A956E58B9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateX";
	rename -uid "404C6F1A-4A2A-97A6-31CC-BCADFE1F38EF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateY";
	rename -uid "1E512858-46CC-2182-0034-45ABB70EBF1C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateZ";
	rename -uid "F7F5F6F3-40D7-116E-04C7-9CBEA7140B16";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateX";
	rename -uid "1831D462-4203-4FD6-A85E-7E8AA8B29128";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 44.317073656601785 118 44.317073656601785 126 44.317073656601785;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateY";
	rename -uid "0BE4CB17-4B3A-8887-5D4E-F49E795D3AC1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateZ";
	rename -uid "DB6DD674-4AC7-04FD-692C-D286E242E8B3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateX";
	rename -uid "3DADF4F2-4116-B01C-63AB-F1B071B92060";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateY";
	rename -uid "61CA6A77-417D-7B6D-32F0-16A9C626D854";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateZ";
	rename -uid "7165A460-4CE3-85C9-B35F-759346C95C74";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateX";
	rename -uid "B28DEE51-410E-275B-E995-3CA2752E45F7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 4.6497476700116573 3 0 6 2.2626578056105191
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 19.002289023290245 32 -1.0482131879799115 41 0
		 42 0 47 7.2023714324659478 49 0 55 4.6497476700116573 56 4.6497476700116573 61 -14.969805001826611
		 65 -14.969805001826611 70 4.6497476700116573 72 5.8851669120374082 91 4.6497476700116573
		 109 5.8851669120374082 110 5.8851669120374082 113 5.8851669120374082 120 16.502160424378232
		 121 -0.068216482102744516 126 -0.068216482102744516;
	setAttr -s 29 ".kit[16:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 29 ".kot[16:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 29 ".kix[16:28]"  1 1 0.73845167651311383 1 0.62531754286817476 
		1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[16:28]"  0 0 -0.67430640027733058 0 0.78037040601326524 
		0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[16:28]"  1 1 0.73845167651311383 1 0.62531754286817476 
		0 1 0 0 0 0 0 0;
	setAttr -s 29 ".koy[16:28]"  0 0 -0.67430640027733058 0 0.78037040601326524 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateY";
	rename -uid "EF174613-46A5-6E7F-D894-55AC89C37BD3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 120 0 121 0 126 0;
	setAttr -s 29 ".kit[16:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 29 ".kot[16:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 29 ".kix[16:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[16:28]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 29 ".koy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateZ";
	rename -uid "8EBA602E-4B74-AF2F-9752-15930E5E65B1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 120 0 121 0 126 0;
	setAttr -s 29 ".kit[16:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 29 ".kot[16:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 29 ".kix[16:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[16:28]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 29 ".koy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateX";
	rename -uid "96646648-46D2-16A4-E2EA-7E8075866067";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 12.907728046256008 3 0 6 -3.7049794369566826
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 24.400806193179612 32 4.8952530560728507 41 0
		 42 0 47 8.0806338511995488 49 0 55 12.907728046256008 56 12.907728046256008 61 10.851095639226328
		 65 10.851095639226328 70 12.907728046256008 72 13.037231674188629 91 12.907728046256008
		 109 13.037231674188629 110 13.037231674188629 113 13.037231674188629 118 25.92387798266941
		 119 41.213382250428637 120 43.356799573047397 121 71.296673362480959 122 37.066679456560841
		 123 32.332048794292604 124 2.8082131151009708 126 2.8082131151009708;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 0.99545008111448474 1 0.9915515978352919 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 -0.095284500361632801 0 0.12971287071944596 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 0.99545008111448474 1 0.9915515978352919 
		0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 -0.095284500361632801 0 0.12971287071944596 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateY";
	rename -uid "89F6DA55-4F39-0E9E-9C88-838905FEB0F3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateZ";
	rename -uid "EF7B2824-45BA-8297-A706-88921DEA1192";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateX";
	rename -uid "3A19B153-4E08-3DFC-2DE4-40814195343C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 3.945872181026242 3 0 6 1.913239078209416
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 8.2751665494219306 32 2.787330709559094 41 0
		 42 0 47 7.7133079779969451 49 0 55 3.945872181026242 56 3.945872181026242 61 -14.161817717837488
		 65 -14.161817717837488 70 3.945872181026242 72 5.0860912728612009 91 3.945872181026242
		 109 5.0860912728612009 110 5.0860912728612009 113 5.0860912728612009 118 10.417476513777535
		 119 16.008602483513435 120 21.025934502464672 121 2.5307542278567117 126 2.5307542278567117;
	setAttr -s 31 ".kit[16:30]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 31 ".kot[16:30]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 31 ".kix[16:30]"  1 1 0.76466063948437302 1 0.65559673737702251 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[16:30]"  0 0 -0.64443316676234907 0 0.75511119574576779 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[16:30]"  1 1 0.76466063948437302 1 0.65559673737702251 
		0 1 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".koy[16:30]"  0 0 -0.64443316676234907 0 0.75511119574576779 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateY";
	rename -uid "9FE87338-4928-E806-463D-13AC503035CE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 126 0;
	setAttr -s 31 ".kit[16:30]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 31 ".kot[16:30]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 31 ".kix[16:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[16:30]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".koy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateZ";
	rename -uid "DAAA572E-4922-8A24-5048-9BAFE1CB91ED";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 126 0;
	setAttr -s 31 ".kit[16:30]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 31 ".kot[16:30]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 31 ".kix[16:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[16:30]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".koy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateX";
	rename -uid "F5D2BB4B-4D4E-A7B0-7308-FFB156369DDF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 16.084800930427324 3 0 6 -2.6866159892092623
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 39.272807727417671 32 14.712234296917863 41 0
		 42 0 47 1.9181107934543671 49 0 55 16.084800930427324 56 16.084800930427324 61 8.9474821889861023
		 65 8.9474821889861023 70 16.084800930427324 72 16.534229164451446 91 16.084800930427324
		 109 16.534229164451446 110 16.534229164451446 113 16.534229164451446 118 18.037426448653562
		 119 30.848285292746212 120 47.538090762269711 121 84.891384788441073 122 54.825238396755211
		 123 39.826070067631484 124 20.124875284746437 126 20.124875284746437;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 0.94900946989923829 1 0.9105569539024424 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 -0.31524756310171009 0 0.41338363985516574 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 0.94900946989923829 1 0.9105569539024424 
		0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 -0.31524756310171009 0 0.41338363985516574 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateY";
	rename -uid "41F657B8-4485-FF8D-F6CE-B3844EC065DA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -0.0067173827631207212 3 0 6 -0.0042978430930753798
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 0 32 0.62874702662809812 41 0 42 0 47 0 49 0
		 55 -0.0067173827631207212 56 -0.0067173827631207212 61 0 65 0 70 -0.0067173827631207212
		 72 -0.0071403681420648315 91 -0.0067173827631207212 109 -0.0071403681420648315 110 -0.0071403681420648315
		 113 -0.0071403681420648315 118 -0.0071403681420647786 119 -0.0071403681420647569
		 120 -0.0071403681420647404 121 -0.0071403681420647109 122 -0.0071403681420646736
		 123 -0.0071403681420646389 124 -0.00714036814206458 126 -0.00714036814206458;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 0.99999995112774664 1 0.99999990871649846 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0.00031264117494230967 0 -0.00042727859145436737 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 0.99999995112774664 1 0.99999990871649846 
		0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0.00031264117494230967 0 -0.00042727859145436737 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateZ";
	rename -uid "8992EB2F-49CD-9E1C-6AA0-7D8E2C43E4B2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -0.003807805200396943 3 0 6 -0.0024362686863923229
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 0 32 0.35641056675715538 41 0 42 0 47 0 49 0
		 55 -0.003807805200396943 56 -0.003807805200396943 61 0 65 0 70 -0.003807805200396943
		 72 -0.004047578037889233 91 -0.003807805200396943 109 -0.004047578037889233 110 -0.004047578037889233
		 113 -0.004047578037889233 118 -0.0040475780378892087 119 -0.0040475780378892035 120 -0.0040475780378891983
		 121 -0.004047578037889187 122 -0.0040475780378891697 123 -0.0040475780378891549 124 -0.0040475780378891315
		 126 -0.0040475780378891315;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 0.99999998429595105 1 0.99999997066800606 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0.00017722329860751432 0 -0.00024220649629872813 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 0.99999998429595105 1 0.99999997066800606 
		0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0.00017722329860751432 0 -0.00024220649629872813 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateX";
	rename -uid "ED77C5CC-43C0-0079-8B04-F490BD7A6452";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 8.6927452453333043 3 0 6 5.140179300224224
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 10.345967358872805 32 18.06189860333647 41 0
		 42 0 47 6.7670540970827826 49 0 55 8.6927452453333043 56 8.6927452453333043 61 -17.730983960137554
		 65 -17.730983960137554 70 8.6927452453333043 72 10.356615163905603 91 8.6927452453333043
		 109 10.356615163905603 110 10.356615163905603 113 10.356615163905603 118 29.644423271381555
		 120 27.616775130687714 121 42.945749461108626 123 20.338244471170093 124 6.3744090273365446
		 126 6.3744090273365446;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 0.63088684059113886 1 0.51131350434961798 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 -0.77587485741511886 0 0.85939426357738335 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 0.63088684059113886 1 0.51131350434961798 
		0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 -0.77587485741511886 0 0.85939426357738335 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateY";
	rename -uid "37E9F825-4294-5034-372B-50B4A6859A16";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateZ";
	rename -uid "5246087F-4DC5-6B15-6F91-1CB88FDA9E2A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateX";
	rename -uid "DE475754-4190-E68B-A5D1-E0A2D7F1C001";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 6.7682537329678611 3 0 6 9.1483225977803855
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 16.643068761033735 32 15.563156108798665 41 0
		 42 0 47 7.1503190284898981 49 0 55 6.7682537329678611 56 6.7682537329678611 61 15.284255584285248
		 65 15.284255584285248 70 6.7682537329678611 72 6.232011509293419 91 6.7682537329678611
		 109 6.232011509293419 110 6.232011509293419 113 6.232011509293419 118 40.142958610268686
		 120 39.046449909099252 121 37.207078151710839 123 42.900441519123355 124 51.280989648187855
		 126 51.280989648187855;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 0.92964128249162437 1 0.87928520852095526 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0.36846585443881763 0 -0.47629562466629916 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 0.92964128249162437 1 0.87928520852095526 
		0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0.36846585443881763 0 -0.47629562466629916 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateY";
	rename -uid "DD7CF034-4FA3-C08B-C709-83AC59BF457C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateZ";
	rename -uid "D6CE8B56-4439-197A-3745-D49E988E2DEE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateX";
	rename -uid "C0E0BE97-4E6B-243C-584E-46A4928FC859";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 7.764027587318961 3 0 6 2.4090986648223964
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 10.226670313102385 41 0 42 0 47 7.6403241789434286
		 49 0 55 7.764027587318961 56 7.764027587318961 61 -13.207388645773991 65 -13.207388645773991
		 70 7.764027587318961 72 9.0845720248118216 91 7.764027587318961 109 9.0845720248118216
		 110 9.0845720248118216 113 9.0845720248118216 118 18.905695589829524 119 20.098752508094151
		 120 23.736387642202597 124 2.7527302130863998 126 2.7527302130863998;
	setAttr -s 30 ".kit[15:29]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 30 ".kot[15:29]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 30 ".kix[15:29]"  1 1 0.71562301119343419 1 0.5998230690465981 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[15:29]"  0 0 -0.69848672560789726 0 0.80013266764925928 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[15:29]"  1 1 0.71562301119343419 1 0.5998230690465981 
		0 1 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".koy[15:29]"  0 0 -0.69848672560789726 0 0.80013266764925928 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateY";
	rename -uid "7B8D84F2-4813-2630-B641-16BE7B1DF0E3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0
		 118 0 119 0 120 0 124 0 126 0;
	setAttr -s 30 ".kit[15:29]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 30 ".kot[15:29]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 30 ".kix[15:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[15:29]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".koy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateZ";
	rename -uid "5ABB3BD6-4680-1A79-966F-969AA000632E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0
		 118 0 119 0 120 0 124 0 126 0;
	setAttr -s 30 ".kit[15:29]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 30 ".kot[15:29]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 30 ".kix[15:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[15:29]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".koy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateX";
	rename -uid "AAF46700-45CA-7151-0023-E1A56AACC50B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 2.3902769908632409 3 0 6 3.4753307696254492
		 11 0 15 0 16 0 21 0 23 0 26 0 27 0 29 26.544737078438455 32 14.409384586675541 41 0
		 42 0 47 1.3583420297353006 49 0 55 2.3902769908632409 56 2.3902769908632409 61 15.187064033766591
		 65 15.187064033766591 70 2.3902769908632409 72 1.5844789579854948 91 2.3902769908632409
		 109 1.5844789579854948 110 1.5844789579854948 113 1.5844789579854948 118 31.498282778928331
		 120 48.493988462493974 121 62.631290386949672 122 37.930285278340328 124 49.128637680688776
		 126 49.128637680688776;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 0.85916015526942557 1 0.77555315688152449 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0.51170677892462668 0 -0.63128226717618274 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 0.85916015526942557 1 0.77555315688152449 
		0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0.51170677892462668 0 -0.63128226717618274 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateY";
	rename -uid "33D1DED7-4CFC-BA1F-71C0-948E95CC5090";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 2.0767428797952037 122 2.0767428797952134 124 2.0767428797952148
		 126 2.0767428797952148;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateZ";
	rename -uid "1E778817-4AEB-E72D-BE7F-DC85DF03C6DC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 2.0514881752874041 122 2.0514881752873908 124 2.0514881752873908
		 126 2.0514881752873908;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateX";
	rename -uid "07F854A3-416D-5FDE-3FEE-2AB22274F9E3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 -3.5441355443588192 65 -3.5441355443588192 70 0 72 0.22316988165245696 91 0 109 0.22316988165245696
		 110 0.22316988165245696 113 0.22316988165245696 126 0.22316988165245696;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 0.98666696705759716 1 0.97551878811654569 
		1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 -0.16275225380117689 0 0.21991610680354043 
		0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 0.98666696705759716 1 0.97551878811654569 
		0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 -0.16275225380117689 0 0.21991610680354043 
		0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateY";
	rename -uid "F8E5CF5B-411E-5382-DDAE-A68995D79E7F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateZ";
	rename -uid "0ED2D4F2-4CF0-51DC-1B16-34B6A36D368F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 11.723742596529529 65 11.723742596529529 70 0 72 -0.73822973614986342 91 0 109 -0.73822973614986342
		 110 -0.73822973614986342 113 -0.73822973614986342 126 -0.73822973614986342;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 0.87782426384734313 1 0.80164285377060529 
		1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0.47898284082091108 0 -0.59780325776840648 
		0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 0.87782426384734313 1 0.80164285377060529 
		0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0.47898284082091108 0 -0.59780325776840648 
		0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateX";
	rename -uid "2CD8F8C8-4EE3-888C-6BFD-6FA074C083DF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 118 0 124 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateY";
	rename -uid "4649D32A-49C9-8D80-52AC-6DA5A64EF966";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 118 0 124 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateZ";
	rename -uid "B488772E-48DC-EC6C-AEA0-85999D95CE63";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 118 12.617169718966942 124 14.918736525075012 126 14.918736525075012;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateX";
	rename -uid "AE4D711F-43B8-C9B3-D446-AEB11B230040";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 8.249842560219399 65 8.249842560219399 70 0 72 -0.51948249855908035 91 0 109 -0.51948249855908035
		 110 -0.51948249855908035 113 -0.51948249855908035 126 -0.51948249855908035;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 0.93354885449133096 1 0.88548710557811905 
		1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0.35845018660606642 0 -0.46466394938157723 
		0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 0.93354885449133096 1 0.88548710557811905 
		0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0.35845018660606642 0 -0.46466394938157723 
		0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateY";
	rename -uid "D4513E0E-4CA0-2FA7-8DF5-A2A228E5F2DB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateZ";
	rename -uid "2F1DF8E1-4A38-F1DC-FB7E-3F8068228755";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateX";
	rename -uid "6F43711C-46B9-7467-11BB-858F4FC138BB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 3 19.002289023290245 7 -1.0482131879799115
		 15 0 21 7.2023714324659478 26 4.6497476700116573 31 2.2626578056105191 37 0 42 0
		 49 0 55 0 56 0 61 -25.414607911514409 65 -25.414607911514409 70 0 72 1.6003267845903917
		 91 0 109 1.6003267845903917 110 2.1714980762846277 113 2.1714980762846277 117 2.1714980762846277
		 122 -9.6378155878433382 126 -9.6378155878433382;
	setAttr -s 23 ".kit[10:22]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 23 ".kot[10:22]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 23 ".kix[10:22]"  1 1 0.64561383694055285 1 0.52607551961639964 
		1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[10:22]"  0 0 -0.76366404495098317 0 0.85043785643651526 
		0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[10:22]"  1 1 0.64561383694055285 1 0.52607551961639964 
		0 1 0 0 0 0 0 0;
	setAttr -s 23 ".koy[10:22]"  0 0 -0.76366404495098317 0 0.85043785643651526 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateY";
	rename -uid "7075E690-4ACA-2128-ECF1-D1AB90347C38";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 122 0 126 0;
	setAttr -s 23 ".kit[10:22]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 23 ".kot[10:22]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 23 ".kix[10:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[10:22]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 23 ".koy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateZ";
	rename -uid "2F9F50FB-439F-4BFA-E86A-CC9966A7B87B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 122 0 126 0;
	setAttr -s 23 ".kit[10:22]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 23 ".kot[10:22]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 23 ".kix[10:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[10:22]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 23 ".koy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateX";
	rename -uid "856159B9-4C43-AC55-7CE9-D68666B11CE2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 24.400806193179612 7 4.8952530560728507
		 15 0 21 8.0806338511995488 26 12.907728046256008 31 -3.7049794369566826 37 0 42 0
		 49 0 55 0 56 0 61 6.9852512913123332 65 6.9852512913123332 70 0 72 -0.43985273262929675
		 91 0 109 -0.43985273262929675 110 2.908863840092581 113 2.908863840092581 117 2.908863840092581
		 118 13.023266361800561 119 48.279327780127602 120 14.530509127309031 122 11.90767506970143
		 126 11.90767506970143;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 0.95100377290915061 1 0.913854704833856 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0.30917927471381501 0 -0.4060413506689014 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 0.95100377290915061 1 0.913854704833856 
		0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0.30917927471381501 0 -0.4060413506689014 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateY";
	rename -uid "0CDCD832-44BE-7ECB-2C25-1F81AC34E4BD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 122 0 126 0;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateZ";
	rename -uid "32913D68-4642-39DA-306B-588912B44EC5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 122 0 126 0;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateX";
	rename -uid "AD3D5CFA-401C-457C-7A59-74AD439EBD9A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 8.2751665494219306 7 2.787330709559094
		 15 0 21 7.7133079779969451 26 3.945872181026242 31 1.913239078209416 37 0 42 0 49 0
		 55 0 56 0 61 -20.994622130058339 65 -20.994622130058339 70 0 72 1.3220056844498653
		 91 0 109 1.3220056844498653 110 4.5203129832815652 113 4.5203129832815652 117 4.5203129832815652
		 118 -0.98478314053897087 121 10.093101676327599 122 -6.8943564468061416 126 -6.8943564468061416;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 0.71523676899912147 1 0.59939835509070272 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 -0.69888222489322005 0 0.80045088038839696 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 0.71523676899912147 1 0.59939835509070272 
		0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 -0.69888222489322005 0 0.80045088038839696 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateY";
	rename -uid "7C9F6EB6-45CA-ED96-1510-4D943DE022F1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateZ";
	rename -uid "C51F4AF8-446F-DF75-C450-96BEAE90A959";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateX";
	rename -uid "1F70285F-4B7B-F0DD-E5D8-198E7BA61FB5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 39.272807727417671 7 14.712234296917863
		 15 0 21 1.9181107934543671 26 16.084800930427324 31 -2.6866159892092623 37 0 42 0
		 49 0 55 0 56 0 61 7.1928328606256144 65 7.1928328606256144 70 0 72 -0.45292389022952217
		 91 0 109 -0.45292389022952217 110 3.7907128093193738 113 3.7907128093193738 117 3.7907128093193738
		 118 24.083314872041417 119 78.976421678113439 120 57.122188932500364 121 12.427835270205115
		 122 6.1471159122335033 126 6.1471159122335033;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 0.94827390173204074 1 0.90934440413636963 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0.31745331514081254 0 -0.4160441739357385 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 0.94827390173204074 1 0.90934440413636963 
		0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0.31745331514081254 0 -0.4160441739357385 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateY";
	rename -uid "E6EF07AE-499F-0A54-EDCA-B3B44A765F7E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0.62874702662809812 15 0 21 0
		 26 -0.0067173827631207212 31 -0.0042978430930753798 37 0 42 0 49 0 55 0 56 0 61 0
		 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 3.1116073817252179 121 0
		 122 0 126 0;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateZ";
	rename -uid "F3240FE6-499C-C826-B73E-C4BE7EA3BAFE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0.35641056675715538 15 0 21 0
		 26 -0.003807805200396943 31 -0.0024362686863923229 37 0 42 0 49 0 55 0 56 0 61 0
		 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 13.245884049593297 121 0
		 122 0 126 0;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateX";
	rename -uid "B4BA6B23-46AF-8233-69CD-07AA84E839ED";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 10.345967358872805 7 18.06189860333647
		 15 0 21 6.7670540970827826 26 8.6927452453333043 31 5.140179300224224 37 0 42 0 49 0
		 55 0 56 0 61 -29.068092515660815 65 -29.068092515660815 70 0 72 1.8303822428316037
		 91 0 109 1.8303822428316037 110 18.548310707308936 113 18.548310707308936 117 18.548310707308936
		 119 44.307169742899447 121 27.332770110058863 122 -5.6129391018908628 126 -5.6129391018908628;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 0.59440547132640265 1 0.47572390320228836 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 -0.80416549021780159 0 0.87959466114908835 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 0.59440547132640265 1 0.47572390320228836 
		0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 -0.80416549021780159 0 0.87959466114908835 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateY";
	rename -uid "443F5D9D-47CF-79C5-3E5B-8F8871E41311";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 119 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateZ";
	rename -uid "3617D299-44B4-53E4-5D04-B19F89DDD2B5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 119 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateX";
	rename -uid "1CFF1B5F-46BC-4985-A356-619A8AFF312E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 16.643068761033735 7 15.563156108798665
		 15 0 21 7.1503190284898981 26 6.7682537329678611 31 9.1483225977803855 37 0 42 0
		 49 0 55 0 56 0 61 22.078724819712946 65 22.078724819712946 70 0 72 -1.3902703052357213
		 91 0 109 -1.3902703052357213 110 4.7513153926467364 113 4.7513153926467364 117 4.7513153926467364
		 118 44.592218581636843 119 58.760113413539734 120 33.805164783788612 121 -2.2198140071023311
		 122 0.64559750912160296 126 0.64559750912160296;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 0.69742023318585167 1 0.58003556564085923 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0.7166624158856052 0 -0.81459115057290454 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 0.69742023318585167 1 0.58003556564085923 
		0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0.7166624158856052 0 -0.81459115057290454 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateY";
	rename -uid "FF15614F-467C-7E96-CBEF-5D884F10B60F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 6.196214532709428 65 6.196214532709428 70 0 72 -0.39016805273122412
		 91 0 109 -0.39016805273122412 110 -0.39016805273122596 113 -0.39016805273122596 117 -0.39016805273122596
		 118 -0.39016805273123045 119 -0.39016805273123456 120 -0.39016805273123917 121 -0.39016805273123362
		 122 -0.39016805273123412 126 -0.39016805273123412;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 0.96084319368792259 1 0.93034847492357753 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0.27709268691828237 0 -0.36667658120934493 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 0.96084319368792259 1 0.93034847492357753 
		0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0.27709268691828237 0 -0.36667658120934493 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateZ";
	rename -uid "3EEED905-4009-D009-67BF-6AB68C350E71";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 -7.6832913016884961 65 -7.6832913016884961 70 0 72 0.48380745855739654
		 91 0 109 0.48380745855739654 110 0.48380745855739804 113 0.48380745855739804 117 0.48380745855739804
		 118 0.48380745855740187 119 0.48380745855740509 120 0.48380745855740737 121 0.4838074585574047
		 122 0.48380745855740476 126 0.48380745855740476;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 0.94160650372744104 1 0.89844491719497688 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 -0.33671529834295422 0 0.4390862452485973 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 0.94160650372744104 1 0.89844491719497688 
		0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 -0.33671529834295422 0 0.4390862452485973 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateX";
	rename -uid "1B41FC3E-4ED7-F088-E0C1-FA951E9A8E19";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 10.226670313102385 15 0 21 7.6403241789434286
		 26 7.764027587318961 31 2.4090986648223964 37 0 42 0 49 0 55 0 56 0 61 -22.400993636229849
		 65 -22.400993636229849 70 0 72 1.4105631785590422 91 0 109 1.4105631785590422 110 9.7298282911929697
		 113 9.7298282911929697 117 9.7298282911929697 118 9.553626989203984 119 28.189392621345721
		 120 17.293791586384337 121 16.674502568348469 122 -7.3125668816826748 126 -7.3125668816826748;
	setAttr -s 26 ".kit[9:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[9:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[9:25]"  1 1 0.69221259825762971 1 0.57445810034143718 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[9:25]"  0 0 -0.72169364609467179 0 0.81853398888018525 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[9:25]"  1 1 0.69221259825762971 1 0.57445810034143718 
		0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[9:25]"  0 0 -0.72169364609467179 0 0.81853398888018525 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateY";
	rename -uid "CA09BCAC-40C0-3094-D352-789634ABF598";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 26 0 31 0 37 0 42 0 49 0
		 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 -1.8519221657571321
		 119 -1.8519221657571463 120 -1.8519221657571507 121 0 122 0 126 0;
	setAttr -s 26 ".kit[9:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[9:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[9:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[9:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateZ";
	rename -uid "86D1BA16-402C-8F4A-8763-F6A812FC96DA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 26 0 31 0 37 0 42 0 49 0
		 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 10.869170018245084
		 119 10.869170018245118 120 10.869170018245136 121 0 122 0 126 0;
	setAttr -s 26 ".kit[9:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[9:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[9:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[9:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateX";
	rename -uid "CD030B86-472D-CE5E-BFC1-5CA9BD7375ED";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 26.544737078438455 7 14.409384586675541
		 15 0 21 1.3583420297353006 26 2.3902769908632409 31 3.4753307696254492 37 0 42 0
		 49 0 55 0 56 0 61 8.3779790521520887 65 8.3779790521520887 70 0 72 -0.5275510967777618
		 91 0 109 -0.5275510967777618 110 -0.5275510967777618 113 -0.5275510967777618 118 47.225829837855137
		 119 60.188565175930314 120 49.164879305608174 121 10.978287723744074 122 6.1509814317429905
		 126 6.1509814317429905;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 0.93167699259533576 1 0.88250960228071651 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0.36328773922128238 0 -0.47029437789785594 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 0.93167699259533576 1 0.88250960228071651 
		0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0.36328773922128238 0 -0.47029437789785594 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateY";
	rename -uid "335D8D59-42C0-9111-3F90-0AACBE092E83";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 2.221917567578394 65 2.221917567578394 70 0 72 -0.13991143239068568
		 91 0 109 -0.13991143239068568 110 -0.13991143239068568 113 -0.13991143239068568 118 -0.13991143239068449
		 119 -0.13991143239068435 120 -0.13991143239068429 121 -0.13991143239068457 122 -0.13991143239068429
		 126 -0.13991143239068429;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 0.99469541118243243 1 0.99015987265087502 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0.10286417730489077 0 -0.13994079673920193 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 0.99469541118243243 1 0.99015987265087502 
		0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0.10286417730489077 0 -0.13994079673920193 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateZ";
	rename -uid "F6FB9C50-4303-950F-0E73-FBA0813759E2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 -1.0788047970016637 65 -1.0788047970016637 70 0 72 0.067931018963474823
		 91 0 109 0.067931018963474823 110 0.067931018963474823 113 0.067931018963474823 118 0.067931018963477002
		 119 0.067931018963478057 120 0.067931018963478293 121 0.067931018963476864 122 0.067931018963477127
		 126 0.067931018963477127;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 0.99874186357141193 1 0.99765389496742407 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 -0.050146684336087141 0 0.06845951983711164 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 0.99874186357141193 1 0.99765389496742407 
		0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 -0.050146684336087141 0 0.06845951983711164 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateX";
	rename -uid "CD91A46E-4A88-D4A9-D699-21B0E23EB72A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 -22.906824292592454 65 -22.906824292592454 70 0 72 1.4424147164880319 91 0 109 1.4424147164880319
		 110 1.4424147164880319 113 1.4424147164880319 120 1.3828910024607206 121 1.259615304797153
		 122 1.0775869326552501 126 1.0775869326552501;
	setAttr -s 21 ".kit[7:20]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3;
	setAttr -s 21 ".kot[7:20]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5;
	setAttr -s 21 ".kix[7:20]"  1 1 0.68412361167329205 1 0.56586567657779141 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 -0.72936608363090938 0 0.8244974445510177 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[7:20]"  1 1 0.68412361167329205 1 0.56586567657779141 
		0 1 0 0 0 0 0 0 0;
	setAttr -s 21 ".koy[7:20]"  0 0 -0.72936608363090938 0 0.8244974445510177 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateY";
	rename -uid "1E1BAB11-40EE-5F8E-AA75-F795FBC05F98";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 3 0 15 0 26 6.6150076932895168 37 0
		 42 0 49 0 55 0 56 0 61 -7.4057870396968566 65 -7.4057870396968566 70 0 72 0.4663333544968723
		 91 0 109 0.4663333544968723 110 0.4663333544968723 113 0.4663333544968723 120 0.62102209042551948
		 121 0.84348383385112713 122 1.0662652237723202 126 1.0662652237723202;
	setAttr -s 21 ".kit[7:20]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3;
	setAttr -s 21 ".kot[7:20]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5;
	setAttr -s 21 ".kix[7:20]"  1 1 0.9454156887836267 1 0.90465191224742092 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 -0.32586680622883452 0 0.42615128495299032 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[7:20]"  1 1 0.9454156887836267 1 0.90465191224742092 
		0 1 0 0 0 0 0 0 0;
	setAttr -s 21 ".koy[7:20]"  0 0 -0.32586680622883452 0 0.42615128495299032 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateZ";
	rename -uid "CDFEB825-40A6-02F2-5F28-17BF38AF4152";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 -16.963678518455044 65 -16.963678518455044 70 0 72 1.0681820940454003 91 0 109 1.0681820940454003
		 110 1.0681820940454003 113 1.0681820940454003 120 -5.1985916663250125 121 -14.82196829520996
		 122 -25.711893531882879 126 -25.711893531882879;
	setAttr -s 21 ".kit[7:20]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3;
	setAttr -s 21 ".kot[7:20]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5;
	setAttr -s 21 ".kix[7:20]"  1 1 0.78486300563009714 1 0.67973868965512851 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 -0.61966931696937388 0 0.73345437062296448 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[7:20]"  1 1 0.78486300563009714 1 0.67973868965512851 
		0 1 0 0 0 0 0 0 0;
	setAttr -s 21 ".koy[7:20]"  0 0 -0.61966931696937388 0 0.73345437062296448 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateX";
	rename -uid "0B9513A0-4213-6AE0-B357-2293F7E9E523";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateY";
	rename -uid "F2F290BB-4940-77BC-7DCC-0EB0737EA53B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateZ";
	rename -uid "DE017129-4045-930F-BBFD-62B92152516B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateX";
	rename -uid "B9CFAFFD-4D99-BF03-9E36-51B38730070E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 9.3628936359914032 15 0 26 3.8147471182493278
		 37 0 42 0 49 0 55 0 56 0 61 15.353937833428068 65 15.353937833428068 70 0 72 -0.96681869141244337
		 91 0 109 -0.96681869141244337 110 -0.96681869141244337 113 -0.96681869141244337 126 -0.96681869141244337;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 0.81361069630066063 1 0.71541637307565897 
		1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0.58141004021701781 0 -0.69869837064019946 
		0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 0.81361069630066063 1 0.71541637307565897 
		0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0.58141004021701781 0 -0.69869837064019946 
		0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateY";
	rename -uid "D58084DB-4769-9929-5539-C2A474524239";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateZ";
	rename -uid "921D2916-4BDA-998E-FB0C-11971C08C8E3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateX";
	rename -uid "96E77015-478D-F5B8-EB4C-4396FA5E671B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 47 0 50 0 52 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 85 0 91 0 97 0
		 103 0 109 0 110 0 113 0 117 0 118 -25.700127552243949 121 -38.529017884261641 124 -56.854968836094294
		 126 -75.529390563593381;
	setAttr -s 35 ".kit[16:34]"  1 1 9 1 9 9 9 1 
		9 9 1 1 1 3 2 3 3 3 3;
	setAttr -s 35 ".kot[16:34]"  1 1 9 1 9 9 9 1 
		9 9 1 5 1 3 2 3 3 3 3;
	setAttr -s 35 ".kix[16:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[16:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[16:34]"  1 1 1 1 1 1 1 1 1 1 1 0 1 1 0.092493331348242669 
		1 1 1 1;
	setAttr -s 35 ".koy[16:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99571330394652469 
		0 0 0 0;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateY";
	rename -uid "2504A4BD-464F-0144-FFF6-6386D3944BAC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 -5.5915832477142633 5 -4.0408443586140095
		 9 0 14 0 17 4.9090057791846027 20 4.9090057791846027 23 7.3816106202669962 25 7.3816106202669962
		 27 12.375634555595425 30 7.4299747802027456 35 0 40 0 44 -4.2764182684869301 47 -4.2764182684869301
		 50 -9.7066700016679324 52 -9.7066700016679324 55 -5.5915832477142633 56 0 61 0 65 0
		 70 0 72 -2.6657159670780914 78 -12.239932034265834 85 -12.239932034265834 91 0 97 12.24
		 103 12.24 109 -2.6657159670780914 110 -2.6657159670780914 113 -2.6657159670780914
		 117 -2.6657159670780914 118 0 121 0 124 0 126 0;
	setAttr -s 35 ".kit[9:34]"  2 2 16 16 16 16 16 1 
		1 9 1 9 9 9 1 9 9 1 1 1 3 2 3 3 3 
		3;
	setAttr -s 35 ".kot[9:34]"  2 2 16 16 16 16 16 1 
		1 9 1 9 9 9 1 9 9 1 5 1 3 2 3 3 3 
		3;
	setAttr -s 35 ".kix[16:34]"  1 1 1 1 0.98751507544405182 0.84193433144227614 
		0.95556308892234976 1 0.76024444789498347 0.91958223717545529 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[16:34]"  0 0 0 0 -0.15752452434693695 -0.53958000476189583 
		-0.29478667386633534 0 0.6496371136602741 0.39289758089276211 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[16:34]"  1 1 1 1 0.98751507544405182 0.84193433144227614 
		0.95556308892234976 1 0.76024444789498347 0.91958223717545529 1 0 1 1 0.66713776408018621 
		1 1 1 1;
	setAttr -s 35 ".koy[16:34]"  0 0 0 0 -0.15752452434693695 -0.53958000476189583 
		-0.29478667386633534 0 0.6496371136602741 0.39289758089276211 0 0 0 0 0.74493436203338725 
		0 0 0 0;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateZ";
	rename -uid "77FFCAF7-455F-B5B5-4F35-9DB2CE4EE4F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 47 0 50 0 52 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 85 0 91 0 97 0
		 103 0 109 0 110 0 113 0 117 0 118 0 121 0 124 0 126 0;
	setAttr -s 35 ".kit[16:34]"  1 1 9 1 9 9 9 1 
		9 9 1 1 1 3 2 3 3 3 3;
	setAttr -s 35 ".kot[16:34]"  1 1 9 1 9 9 9 1 
		9 9 1 5 1 3 2 3 3 3 3;
	setAttr -s 35 ".kix[16:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[16:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[16:34]"  1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[16:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateX";
	rename -uid "F085E5C8-4A8A-C6D2-6359-68935F509A4E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -1.4736173288765797 5 2.2606519322939724
		 9 0 12 0 17 3.8667896731250506 20 2.4619287773556864 23 1.3263189087062752 27 4.4397244237836606
		 30 4.0599948407656985 35 5.6590577492945551 44 0 49 -0.29890417393578067 55 -1.4736173288765797
		 56 0 61 0 62 0 65 0 70 0 71 0 72 0 91 0 109 0 110 0 113 0 118 12.973116092217721
		 121 3.0060365143416639 124 -23.464087197445341 126 -21.770119624946712;
	setAttr -s 28 ".kit[12:27]"  1 1 9 3 1 9 3 3 
		9 1 1 16 2 16 16 16;
	setAttr -s 28 ".kot[12:27]"  1 1 9 5 1 9 5 5 
		9 5 1 16 2 16 16 16;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 0.67709812460166885 
		0.36585879085950929 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0.7358927433131156 
		-0.93067037405883812 0 0;
	setAttr -s 28 ".kox[12:27]"  1 1 1 0 1 1 0 0 1 0 1 1 0.58353579547016243 
		0.36585879085950929 1 1;
	setAttr -s 28 ".koy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.81208741857327449 
		-0.93067037405883812 0 0;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateY";
	rename -uid "D37177BE-4B9D-0985-C638-C58D2718C967";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 10.294400058783554 5 5.868094249396262
		 9 4.4740171366631483 12 2.2963067571487485 17 -9.6879396410319991 20 -11.074566072779861
		 23 -16.965382823488227 27 -10.405221873585239 30 -5.425408720083535 35 -2.2452560511554078
		 44 9.4171556686021258 49 13.333411556936586 55 10.294400058783554 56 9.4171556686021258
		 61 0 62 -0.4624496087259975 65 0 70 0 71 0 72 0 91 0 109 0 110 0 113 0 118 0 121 0
		 124 0 126 0;
	setAttr -s 28 ".kit[8:27]"  2 2 16 16 1 1 9 3 
		1 9 3 3 9 1 1 16 2 16 16 16;
	setAttr -s 28 ".kot[8:27]"  2 2 16 16 1 1 9 5 
		1 9 5 5 9 5 1 16 2 16 16 16;
	setAttr -s 28 ".kix[12:27]"  1 0.90637547660316398 0.82318531878187295 
		1 0.96252273068443239 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0.42247307063573591 -0.56777278108587248 
		0 -0.27120101938559038 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[12:27]"  1 0.90637547660316398 0.82318531878187295 
		0 0.96252273068443239 1 0 0 1 0 1 1 1 1 1 1;
	setAttr -s 28 ".koy[12:27]"  0 0.42247307063573591 -0.56777278108587248 
		0 -0.27120101938559038 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateZ";
	rename -uid "03E2EAA6-44E4-7FE7-EBBC-4DADBEBBD7DE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -0.056458904089335273 5 0.23124466698432877
		 9 0 12 0 17 0.0018113073705962037 20 0 23 -0.10981918240525328 27 -0.17260909693632651
		 30 -0.38450972408005263 35 -0.22242801410679841 44 0 49 -0.0023190709696149061 55 -0.056458904089335273
		 56 0 61 0 62 0 65 0 70 0 71 0 72 0 91 0 109 0 110 0 113 0 118 0 121 0 124 0 126 0;
	setAttr -s 28 ".kit[12:27]"  1 1 9 3 1 9 3 3 
		9 1 1 16 2 16 16 16;
	setAttr -s 28 ".kot[12:27]"  1 1 9 5 1 9 5 5 
		9 5 1 16 2 16 16 16;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[12:27]"  1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1;
	setAttr -s 28 ".koy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateX";
	rename -uid "F4D9973B-462D-595A-2DA6-0F9AEE71D2AC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 36.373480027650814 3 49.291075497920566
		 15 20.628312750487595 22 14.92414530004678 27 0.78486633636728453 30 -3.4350803278696418
		 42 18.57917318200905 48 18.57917318200905 49 24.558518880835823 55 36.373480027650814
		 56 36.373480027650814 61 0 65 0 70 6.2897367249933414 71 6.5143701794573881 72 6.2897367249933414
		 78 20.992638352752319 85 19.741942543148433 91 6.2897367249933414 97 -7.9279357969989572
		 103 -20.813069314702574 109 6.2897367249933414 110 6.2897367249933414 113 6.2897367249933414
		 117 0 118 14.040479291662113 124 0 126 29.000807799582574;
	setAttr -s 28 ".kit[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 3 3 3 3 3;
	setAttr -s 28 ".kot[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5 5;
	setAttr -s 28 ".kix[9:27]"  1 1 0.50859767154698243 0.7432558959735045 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[9:27]"  0 0 -0.86100430225231039 -0.66900722948307745 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[9:27]"  1 1 0.50859767154698243 0.7432558959735045 
		1 1 1 1 1 1 1 1 1 0 0 0 0 0 0;
	setAttr -s 28 ".koy[9:27]"  0 0 -0.86100430225231039 -0.66900722948307745 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateY";
	rename -uid "5DA30439-42A5-FD40-2EFA-FFAF22F95ADA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 3 0 15 0 22 0 27 0 30 0 42 0 48 0 49 0
		 55 0 56 0 61 0 65 0 70 7.9158941351198404 71 8.1986046399455486 72 7.9158941351198404
		 78 7.9158941351199053 85 7.915894135119899 91 7.9158941351198404 97 7.9158941351198973
		 103 7.9158941351198804 109 7.9158941351198404 110 7.9158941351198404 113 7.9158941351198404
		 117 0 118 0 124 7.724479085683889 126 40.683812092658108;
	setAttr -s 28 ".kit[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 3 3 3 3 3;
	setAttr -s 28 ".kot[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5 5;
	setAttr -s 28 ".kix[9:27]"  1 1 1 0.97308009252343364 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[9:27]"  0 0 0 0.23046720706986845 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[9:27]"  1 1 1 0.97308009252343364 1 1 1 1 1 1 1 
		1 1 0 0 0 0 0 0;
	setAttr -s 28 ".koy[9:27]"  0 0 0 0.23046720706986845 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateZ";
	rename -uid "3341EF89-4FB0-3AF6-5007-EC94F3EF3245";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 3 0 15 0 22 0 27 0 30 0 42 0 48 0 49 0
		 55 0 56 0 61 0 65 0 70 -2.9870572275683487 71 -3.0937378428386464 72 -2.9870572275683487
		 78 -2.9870572275683474 85 -2.9870572275683425 91 -2.9870572275683487 97 -2.9870572275683456
		 103 -2.9870572275683513 109 -2.9870572275683487 110 -2.9870572275683487 113 -2.9870572275683487
		 117 0 118 0 124 0 126 -6.8576508844350537;
	setAttr -s 28 ".kit[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 3 3 3 3 3;
	setAttr -s 28 ".kot[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5 5;
	setAttr -s 28 ".kix[9:27]"  1 1 1 0.99603004088064684 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[9:27]"  0 0 0 -0.089017737913839379 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[9:27]"  1 1 1 0.99603004088064684 1 1 1 1 1 1 1 
		1 1 0 0 0 0 0 0;
	setAttr -s 28 ".koy[9:27]"  0 0 0 -0.089017737913839379 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_ShoulderRotate_ctrl_rotateZ";
	rename -uid "1369AFEE-4B37-2634-619F-DD943CA37F4B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 3 -8.4797855404351399 15 0 21 0 22 0
		 27 5.8076624320117451 30 5.8076624320117451 42 0 48 -6.5689857346501235 49 0 55 0
		 56 0 70 0 72 0 91 0 109 0 110 0 113 0 117 7.6604012767989431 121 -19.229722113944529
		 124 -140.52513383288357 126 -140.52513383288357;
	setAttr -s 22 ".kit[10:21]"  1 1 9 3 9 1 1 9 
		9 9 9 3;
	setAttr -s 22 ".kot[10:21]"  1 1 9 5 9 5 1 9 
		9 9 9 5;
	setAttr -s 22 ".kix[10:21]"  1 1 1 1 1 1 0.8818164819745552 0.90904278302880304 
		0.70468350140767078 0.11206227272352098 0.09793641276594503 1;
	setAttr -s 22 ".kiy[10:21]"  0 0 0 0 0 0 0.47159271847434087 0.41670279411500044 
		-0.70952178461540216 -0.99370118598703461 -0.99519267433725533 0;
	setAttr -s 22 ".kox[10:21]"  1 1 1 0 1 0 0.8818164819745552 0.90904278302880304 
		0.70468350140767078 0.11206227272352098 0.09793641276594503 0;
	setAttr -s 22 ".koy[10:21]"  0 0 0 0 0 0 0.47159271847434087 0.41670279411500044 
		-0.70952178461540216 -0.99370118598703461 -0.99519267433725533 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateY";
	rename -uid "3AB6710E-4956-E13C-5D2C-D19623CA557A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 124 3.6467269010449574 126 25.52058572279244;
	setAttr -s 20 ".kit[10:19]"  1 1 9 3 9 1 1 3 
		3 3;
	setAttr -s 20 ".kot[10:19]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 20 ".kix[10:19]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[10:19]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[10:19]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateZ";
	rename -uid "DB79643B-4E17-E91E-F986-70AA1E2E7C3A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 3 0 15 -2.1649750923600641 21 0 22 0
		 27 0 30 0 42 -3.8606594129194063 48 0 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0
		 124 0 126 0;
	setAttr -s 20 ".kit[10:19]"  1 1 9 3 9 1 1 3 
		3 3;
	setAttr -s 20 ".kot[10:19]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 20 ".kix[10:19]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[10:19]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[10:19]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_Elbow_ctrl_rotateX";
	rename -uid "77F3E4BB-4FCC-2BA6-DB3F-2BBB5EB51789";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -34.807331575614562 3 -35.626630936337989
		 8 -11.000936931927638 12 -39.463349533598631 15 -31.458067653522189 18 -34.807331575614562
		 21 -30.605745770249676 27 -34.807331575614562 30 -55.094431592130888 33 -64.907103086475388
		 39 -55.094431592130888 44 -34.807331575614562 49 -30.605745770249676 55 -34.807331575614562
		 56 -34.807331575614562 61 -5.2656650918163539 65 -5.2656650918163539 70 -34.807331575614562
		 72 -36.667534192159337 78 -36.831348698387892 83 -30.277808821120107 91 -34.807331575614562
		 97 -42.626432526685349 101 -47.590608336592673 109 -36.667534192159337 110 -36.667534192159337
		 113 -36.667534192159337 117 0 121 0 122 -42.159696624529651 123 -94.374330592741472
		 124 -119.76257308564178 125 -135.92176259176367 126 -163.72564263143178;
	setAttr -s 34 ".kit[13:33]"  1 1 9 1 9 9 9 9 
		9 9 9 1 3 3 2 3 3 3 3 3 3;
	setAttr -s 34 ".kot[13:33]"  1 1 9 1 9 9 9 9 
		9 9 9 1 3 3 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[13:33]"  1 0.69805175852914059 0.58819083750035295 
		1 0.4697914879392277 0.99443127105132001 0.97165043411182739 0.99788014473377951 
		0.938023550238543 0.88157156102745615 0.9790445955888013 0.99443127105132001 1 1 
		0.25202287761715236 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[13:33]"  0 0.71604730459263244 0.80872216408395381 
		0 -0.88277741127639109 -0.10538712993177175 0.23642215186038965 0.065078542900801353 
		-0.34657152104274203 -0.47205040280420713 0.20364596693369783 -0.10538712993177175 
		0 0 0.96772127658617157 0 0 0 0 0 0;
	setAttr -s 34 ".kox[13:33]"  1 0.69805175852914059 0.58819083750035295 
		1 0.4697914879392277 0.99443127105132001 0.97165043411182739 0.99788014473377951 
		0.938023550238543 0.88157156102745615 0.9790445955888013 0.99443127105132001 1 1 
		0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[13:33]"  0 0.71604730459263244 0.80872216408395381 
		0 -0.88277741127639109 -0.10538712993177175 0.23642215186038965 0.065078542900801353 
		-0.34657152104274203 -0.47205040280420713 0.20364596693369783 -0.10538712993177175 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateX";
	rename -uid "F7A5A9FA-481F-C418-6173-30B5A2338235";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 15 0 21 0 22 0 27 0 30 -16.373153698940509
		 42 0 48 0 49 0 55 0 56 0 61 -54.062198403336083 65 -54.062198403336083 70 0 72 3.4042305291478017
		 91 0 109 3.4042305291478017 110 3.4042305291478017 113 3.4042305291478017 118 3.4042305291478017
		 119 9.8355834622890814 120 15.767022718548908 121 -0.95046653158373728 122 1.325637647461962
		 123 4.6240839948027901 124 -10.486171943132756 125 -18.479583226578747 126 -68.870403634606276;
	setAttr -s 29 ".kit[10:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3 3;
	setAttr -s 29 ".kot[10:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5 5;
	setAttr -s 29 ".kix[10:28]"  1 1 0.36933055813826016 1 0.27923344618675688 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[10:28]"  0 0 -0.92929808932617597 0 0.96022324619364829 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[10:28]"  1 1 0.36933055813826016 1 0.27923344618675688 
		0 1 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".koy[10:28]"  0 0 -0.92929808932617597 0 0.96022324619364829 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateY";
	rename -uid "16F7E81E-4A5B-A85F-64CB-7BA874E29AA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 3 0 15 0 21 0 22 0 27 0 30 4.173365204841935
		 42 0 48 0 49 0 55 0 56 0 59 71.357272927083471 70 24.166035905534763 72 21.751631630481032
		 91 24.166035905534763 109 21.751631630481032 110 21.751631630481032 113 21.751631630481032
		 118 21.751631630481032 119 19.781386093868644 120 15.547456946433043 121 7.2319636079118732
		 122 -14.787795205536147 123 -51.572458842138531 124 -68.724174862495346 125 -77.974414878538965
		 126 -75.766541273179854;
	setAttr -s 28 ".kit[14:27]"  3 9 1 1 3 3 3 3 
		3 3 3 3 3 3;
	setAttr -s 28 ".kot[14:27]"  5 9 5 5 5 5 5 5 
		5 5 5 5 5 5;
	setAttr -s 28 ".kix[16:27]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[16:27]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateZ";
	rename -uid "9CCB3DC1-42DC-52E3-4DAC-8CB95F09B76A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 2.7406374010064507 3 0 15 0 21 0 22 0
		 27 0 30 -0.48128453351335043 42 -2.696745777210789 48 0 49 0 55 2.7406374010064507
		 56 2.7406374010064507 61 -52.583074386807581 65 -52.583074386807581 70 2.7406374010064476
		 72 6.2243038854650052 91 2.7406374010064476 109 6.2243038854650052 110 6.2243038854650052
		 113 6.2243038854650052 118 6.2243038854650052 119 24.229972566666419 120 43.594855093443662
		 121 68.803375500080676 122 86.039930009134963 123 83.740576373020602 124 99.219683578204894
		 125 107.53465415079395 126 164.96225672902921;
	setAttr -s 29 ".kit[10:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3 3;
	setAttr -s 29 ".kot[10:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5 5;
	setAttr -s 29 ".kix[10:28]"  1 1 0.36202383932471505 1 0.27334712855654264 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[10:28]"  0 0 -0.93216883651009974 0 0.96191545746489215 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[10:28]"  1 1 0.36202383932471505 1 0.27334712855654264 
		0 1 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".koy[10:28]"  0 0 -0.93216883651009974 0 0.96191545746489215 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateX";
	rename -uid "E1AE587F-41A3-1FD0-91AA-5A8DB020AC1A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateY";
	rename -uid "8DB36774-4CA9-9B52-1322-138283E722A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateZ";
	rename -uid "AAD4A1C1-44D2-9AF1-CAB1-2485E4B32F60";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_head_ctrl_rotateX";
	rename -uid "80D8F09A-4760-AB40-A772-299438384E2F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 5 0 9 0 12 0 17 0 19 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 46 0 49 0 51 0 53 0 55 0 56 0 61 0 65 0 67 0 70 0 72 0 78 0 85 0
		 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 25.448707816032631 121 0.67327094503703688
		 124 -27.491181812698414 126 -42.983601511525137;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.42465375172869374 
		0.99752376686709843 0.26117862777963691 0.263738441881263 0.29452252452447814;
	setAttr -s 37 ".kiy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.90535583675301112 
		0.070330182249689233 -0.96529048705099429 -0.96459423296743996 -0.9556445377585373;
	setAttr -s 37 ".kox[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0.42465375172869374 
		0.99752376686709843 0.26117862777963691 0.263738441881263 0.29452252452447814;
	setAttr -s 37 ".koy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.90535583675301112 
		0.070330182249689233 -0.96529048705099429 -0.96459423296743996 -0.9556445377585373;
createNode animCurveTA -n "PALbot_head_ctrl_rotateY";
	rename -uid "B86CD77C-4890-201B-276E-86805AB965E6";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 14.814229742905884 5 14.814 9 11.390717650616995
		 12 0 17 0 19 0 23 0 25 -5.5118026442714694 27 -15.456974665717883 30 -15.457 35 -10.819136143606517
		 40 0 44 0 46 0 49 4.1467091112139762 51 5.6724734460251671 53 6.361068288638319 55 14.814229742905884
		 56 0 61 0 65 0 67 0 70 0 72 5.5762073493877775 78 23.87864947669701 85 23.87864947669701
		 91 0 97 -23.879 103 -23.879 109 5.5762073493877775 110 5.5762073493877775 113 5.5762073493877775
		 117 5.5762073493877775 118 5.5762073493877766 121 5.5762073493877766 124 5.5762073493877766
		 126 -26.587126521777197;
	setAttr -s 37 ".kit[18:36]"  1 9 9 9 9 9 9 1 
		9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[18:36]"  1 9 9 9 9 9 9 1 
		9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[18:36]"  1 1 1 1 0.9060148215804541 0.62460876763110162 
		0.86137047360623931 1 0.51440729292035703 0.76814533704456278 1 1 1 1 1 1 1 0.34793650546208998 
		0.1468408635766679;
	setAttr -s 37 ".kiy[18:36]"  0 0 0 0 0.42324596049642066 0.78093782556510649 
		0.50797727035701401 0 -0.85754599701144307 -0.64027551973872543 0 0 0 0 0 0 0 -0.93751810018091331 
		-0.9891601289902755;
	setAttr -s 37 ".kox[18:36]"  1 1 1 1 0.9060148215804541 0.62460876763110162 
		0.86137047360623931 1 0.51440729292035703 0.76814533704456278 1 0 1 1 1 1 1 0.34793650546208998 
		0.1468408635766679;
	setAttr -s 37 ".koy[18:36]"  0 0 0 0 0.42324596049642066 0.78093782556510649 
		0.50797727035701401 0 -0.85754599701144307 -0.64027551973872543 0 0 0 0 0 0 0 -0.93751810018091331 
		-0.9891601289902755;
createNode animCurveTA -n "PALbot_head_ctrl_rotateZ";
	rename -uid "BC2DFA62-4D5E-3B41-05F4-4EA9C4860DC5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 5 0 9 0 12 0 17 0 19 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 46 0 49 0 51 0 53 0 55 0 56 0 61 0 65 0 67 0 70 0 72 0 78 0 85 0
		 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 0 121 0 124 0 126 12.982986665729625;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.67681920726732092 
		0.34516062109740364;
	setAttr -s 37 ".kiy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.73614927879747005 
		0.93854363012257169;
	setAttr -s 37 ".kox[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0.67681920726732092 
		0.34516062109740364;
	setAttr -s 37 ".koy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.73614927879747005 
		0.93854363012257169;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateX";
	rename -uid "98C27F42-49D6-5061-EB19-5FA0830EA1A7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.78486633636728453 3 -3.4350803278696418
		 15 18.57917318200905 21 18.57917318200905 27 36.373480027650814 30 49.291075497920566
		 42 20.628312750487595 49 14.92414530004678 55 0.78486633636728453 56 0.78486633636728453
		 61 0 65 0 70 5.2625181848798199 71 5.4504652629112416 72 5.2625181848798199 78 -1.2087929254740895
		 85 -1.5916213044885712 91 5.2625181848798199 97 32.111646161315939 103 41.080043589590844
		 109 5.2625181848798199 110 5.2625181848798199 113 5.2625181848798199 117 0 124 0
		 126 0;
	setAttr -s 26 ".kit[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 9 9 9 3;
	setAttr -s 26 ".kot[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5;
	setAttr -s 26 ".kix[8:25]"  1 1 0.99933347071654188 0.9911449048623111 
		1 1 1 1 1 1 1 1 1 0.9386557412550165 0.95382369286240287 0.98050589302956259 1 1;
	setAttr -s 26 ".kiy[8:25]"  0 0 -0.036504990146969146 0.13278470380838484 
		0 0 0 0 0 0 0 0 0 -0.34485562110685608 -0.30036704701802497 -0.19648967844215137 
		0 0;
	setAttr -s 26 ".kox[8:25]"  1 1 0.99933347071654188 0.9911449048623111 
		1 1 1 1 1 1 1 1 1 0 0 0 0 0;
	setAttr -s 26 ".koy[8:25]"  0 0 -0.036504990146969146 0.13278470380838484 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateY";
	rename -uid "3E9463EB-4C3F-A6E8-C6CE-39A34C3A11BE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 27 0 30 0 42 0 49 0 55 0
		 56 0 61 0 65 0 70 0 71 0 72 0 78 0 85 0 91 0 97 0 103 0 109 0 110 0 113 0 117 0 124 0
		 126 0;
	setAttr -s 26 ".kit[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 9 9 9 3;
	setAttr -s 26 ".kot[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5;
	setAttr -s 26 ".kix[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
	setAttr -s 26 ".koy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateZ";
	rename -uid "552D2DF2-4B38-68AC-006D-8DBA84F9E151";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 27 0 30 0 42 0 49 0 55 0
		 56 0 61 0 65 0 70 0 71 0 72 0 78 0 85 0 91 0 97 0 103 0 109 0 110 0 113 0 117 0 124 -28.569390869545781
		 126 -28.569390869545781;
	setAttr -s 26 ".kit[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 9 9 9 3;
	setAttr -s 26 ".kot[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5;
	setAttr -s 26 ".kix[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.67673163388143287 
		0.6010535359494058 1;
	setAttr -s 26 ".kiy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.73622978458098687 
		-0.79920876304174526 0;
	setAttr -s 26 ".kox[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
	setAttr -s 26 ".koy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_ShoulderRotate_ctrl_rotateZ1";
	rename -uid "C8CC1D6D-444A-5C32-6111-37A84765F753";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 5.8076624320117451 3 5.8076624320117451
		 15 0 21 -6.5689857346501235 27 0 42 0 49 0 55 5.8076624320117451 56 5.8076624320117451
		 61 0 65 0 70 5.8076624320117451 72 6.1733638340623713 91 5.8076624320117451 109 6.1733638340623713
		 110 6.1733638340623713 113 6.1733638340623713 117 9.5969446555634086 118 -13.972202470568121
		 121 -34.281061206054673 124 -139.28602084385909 126 -167.88792831503423;
	setAttr -s 22 ".kit[7:21]"  1 1 9 1 9 3 9 1 
		1 2 2 9 9 9 3;
	setAttr -s 22 ".kot[7:21]"  1 1 9 1 9 5 9 5 
		1 2 2 9 9 9 5;
	setAttr -s 22 ".kix[7:21]"  1 1 0.96535594916545631 1 0.93804084866142412 
		1 1 1 1 1 0.94133163537384579 0.21265503254314796 0.11356510489214065 0.088986935680090889 
		1;
	setAttr -s 22 ".kiy[7:21]"  0 0 -0.26093656587542724 0 0.34652469788249607 
		0 0 0 0 0 0.3374829658581317 -0.97712733926242834 -0.99353055662663803 -0.99603279327453231 
		0;
	setAttr -s 22 ".kox[7:21]"  1 1 0.96535594916545631 1 0.93804084866142412 
		0 1 0 0.94133163537384579 0.94133163537384579 0.10077458232324743 0.21265503254314796 
		0.11356510489214065 0.088986935680090889 0;
	setAttr -s 22 ".koy[7:21]"  0 0 -0.26093656587542724 0 0.34652469788249607 
		0 0 0 0.3374829658581317 0.3374829658581317 -0.99490928408452139 -0.97712733926242834 
		-0.99353055662663803 -0.99603279327453231 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateY1";
	rename -uid "F9400100-4F22-747B-6132-75BCCB5D5696";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 124 13.290628999168435 126 0;
	setAttr -s 17 ".kit[7:16]"  1 1 9 3 9 1 1 9 
		9 9;
	setAttr -s 17 ".kot[7:16]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 0.91925413630588948 0.92922628112888983 
		1 0.33809390228383679;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0.39366461980283829 0.36951118854423565 
		0 -0.94111238076995218;
	setAttr -s 17 ".kox[7:16]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateZ1";
	rename -uid "38BE7FB6-417E-8962-E8AB-20BC0056C868";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 -3.8606594129194063 21 0 27 0
		 42 -2.1649750923600641 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 124 -29.389519140968645
		 126 -26.753557498177866;
	setAttr -s 17 ".kit[7:16]"  1 1 9 3 9 1 1 9 
		9 9;
	setAttr -s 17 ".kot[7:16]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 0.72609590412462688 0.75096211682415137 
		0.75742127350933031 0.87544791124313626;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 -0.6875934394781853 -0.66034528778131663 
		-0.65292650002546559 0.48331248142379862;
	setAttr -s 17 ".kox[7:16]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_FK_Elbow_ctrl_rotateX";
	rename -uid "ECAAC518-4F8D-71CD-135F-2B9942691378";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -34.807331575614562 3 -55.094431592130888
		 7 -64.907103086475388 12 -55.094431592130888 18 -34.807331575614562 21 -34.807331575614562
		 27 -34.807331575614562 30 -35.626630936337989 34 -16.773660662983751 39 -34.914875587399479
		 45 -34.807331575614562 49 -27.936073120831278 55 -34.807331575614562 56 -34.807331575614562
		 61 -4.343578065846514 65 -4.343578065846514 70 -34.807331575614562 72 -36.725596884706889
		 78 -31.211211007041808 83 -37.60990333603619 91 -20.375770377742015 97 -24.598666403537617
		 101 -18.380282805048498 109 -36.725596884706889 110 -36.725596884706889 113 -36.725596884706889
		 117 0 121 0 122 -44.176730008004455 123 -94.016018114651459 124 -129.25641801547562
		 125 -147.06048027600335 126 -161.46758477376571;
	setAttr -s 33 ".kit[12:32]"  1 1 9 1 3 3 3 3 
		3 3 3 3 3 3 9 9 9 9 9 9 9;
	setAttr -s 33 ".kot[12:32]"  1 1 9 1 3 3 3 3 
		3 3 3 3 3 3 5 9 9 9 9 9 9;
	setAttr -s 33 ".kix[12:32]"  1 1 0.57636251474861344 1 1 1 1 1 1 1 1 
		1 1 1 0.46137712974181483 0.26084719563036768 0.050720111012385452 0.056031556109250383 
		0.089649744459556965 0.14662749958730459 0.16347548677752655;
	setAttr -s 33 ".kiy[12:32]"  0 0 0.81719413335672841 0 0 0 0 0 0 0 0 
		0 0 0 0.88720411639667496 -0.9653801015826734 -0.99871290686507674 -0.99842899833687526 
		-0.99597335472307491 -0.98919177936574809 -0.98654739633879263;
	setAttr -s 33 ".kox[12:32]"  1 1 0.57636251474861344 1 1 1 1 1 1 1 1 
		1 1 1 0 0.26084719563036768 0.050720111012385452 0.056031556109250383 0.089649744459556965 
		0.14662749958730459 0.16347548677752655;
	setAttr -s 33 ".koy[12:32]"  0 0 0.81719413335672841 0 0 0 0 0 0 0 0 
		0 0 0 0 -0.9653801015826734 -0.99871290686507674 -0.99842899833687526 -0.99597335472307491 
		-0.98919177936574809 -0.98654739633879263;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateX";
	rename -uid "C303A658-4D2D-D76B-B775-DD89B4CE50F6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 -16.373153698940509 15 0 21 0 27 0
		 42 0 49 0 55 0 56 0 61 -38.970889665983456 65 -38.970889665983456 70 0 72 2.4539492707866839
		 91 0 109 2.4539492707866839 110 2.4539492707866839 113 2.4539492707866839 114 -8.0554263590666135
		 115 -20.378746246773307 116 -32.64671574244349 117 -37.691226061500025 118 -36.56038211911175
		 119 -21.702837974666991 120 -6.4404912310188216 121 -5.0205058308759849 122 -5.8208904766522469
		 123 -10.136581736301897 124 -29.152698174383261 125 -9.9326164476270957 126 -82.961409858148883;
	setAttr -s 30 ".kit[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 3 9 1 1 16 3 3 3 3 3 3 3 3 
		3 3 3 3 3;
	setAttr -s 30 ".kot[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 5 9 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5;
	setAttr -s 30 ".kix[7:29]"  1 1 0.48281437855073872 1 0.37411669855789503 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[7:29]"  0 0 -0.8757227163118837 0 0.92738163442033994 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[7:29]"  1 1 0.48281437855073872 1 0.37411669855789503 
		0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".koy[7:29]"  0 0 -0.8757227163118837 0 0.92738163442033994 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateY";
	rename -uid "39BF555A-4D4C-237C-943E-A7B65794F53D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 4.173365204841935 15 0 21 0 27 0 42 0
		 49 0 55 0 56 0 59 65.69928170575507 70 11.623413845177044 72 8.8567771816752465 91 11.623413845177044
		 109 8.8567771816752465 110 8.8567771816752465 113 8.8567771816752465 114 8.8567771816752501
		 115 8.8567771816752465 116 8.856777181675243 117 8.8567771816752465 118 13.239179873140941
		 119 20.750579622942272 120 19.580731902439549 121 9.1674061897246037 122 -31.5111167076405
		 123 -63.501915258127454 124 -60.97746741902418 125 -71.521918420915796 126 -79.98009159519296;
	setAttr -s 29 ".kit[11:28]"  3 9 1 1 16 3 3 3 
		3 3 3 3 3 3 3 3 3 3;
	setAttr -s 29 ".kot[11:28]"  5 9 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 29 ".kix[13:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[13:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateZ";
	rename -uid "4AF106A3-418C-1B96-EB60-3BA6E155B01F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 -0.48128453351335043 15 -2.696745777210789
		 21 0 27 2.7406374010064507 42 0 49 0 55 0 56 0 61 -36.400210470711819 65 -36.400210470711819
		 70 0 72 2.292076745146868 91 0 109 2.292076745146868 110 2.292076745146868 113 2.292076745146868
		 114 2.2920767451468693 115 2.2920767451468711 116 2.2920767451468738 117 2.2920767451468729
		 118 8.1839116085786614 119 24.814935522411393 120 60.223849889578318 121 80.920203298201443
		 122 95.149802551797265 123 98.107843003030382 124 115.02962043841862 125 94.017772406474023
		 126 172.75420597036074;
	setAttr -s 30 ".kit[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 3 9 1 1 16 3 3 3 3 3 3 3 3 
		3 3 3 3 3;
	setAttr -s 30 ".kot[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 5 9 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5;
	setAttr -s 30 ".kix[7:29]"  1 1 0.50832071539973422 1 0.39650072587738883 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[7:29]"  0 0 -0.86116784095523591 0 0.91803440805816405 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[7:29]"  1 1 0.50832071539973422 1 0.39650072587738883 
		0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".koy[7:29]"  0 0 -0.86116784095523591 0 0.91803440805816405 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateX";
	rename -uid "B6147823-486A-0ABE-6364-73A2EF3F4E04";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateY";
	rename -uid "D4CA8F04-4E46-6610-46B4-CB836908EB16";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateZ";
	rename -uid "2A890175-4F04-CA87-702F-F899E7292A17";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_hip_rotateX";
	rename -uid "F348F9F7-48B9-340A-9B27-3FA6CA59E0E7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_hip_rotateY";
	rename -uid "62010045-4D86-5006-9428-C6A4A2924F1A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_hip_rotateZ";
	rename -uid "29945242-450C-07AB-E8F6-D8AA3F40FC39";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_hip_rotateX";
	rename -uid "2145241A-4701-3476-3443-AFBDBFC5F38F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_hip_rotateY";
	rename -uid "F1520A62-4952-B007-EAE6-ACAAABD4D22C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_hip_rotateZ";
	rename -uid "4CFA8D9F-47E9-B3B0-6872-839E200EAB6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_leg_IK_FK_switch_IK_FK";
	rename -uid "36C7AF4E-406A-FE8B-75A5-59BF75C527F9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateX";
	rename -uid "07D2BBB8-45E3-A9D6-C5D0-7FB48ED2EE6F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 124 0 126 -0.13244022071830927;
	setAttr -s 20 ".kit[10:19]"  1 1 9 3 9 1 1 3 
		3 3;
	setAttr -s 20 ".kot[10:19]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 20 ".kix[10:19]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[10:19]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[10:19]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateY";
	rename -uid "CE361525-4BF2-43C5-B01C-A4889EB60CE0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 124 0 126 0.054757424329296076;
	setAttr -s 20 ".kit[10:19]"  1 1 9 3 9 1 1 3 
		3 3;
	setAttr -s 20 ".kot[10:19]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 20 ".kix[10:19]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[10:19]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[10:19]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateZ";
	rename -uid "CBCA016F-47BA-B2BC-75E8-23A24C54C58E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 124 0 126 -0.15148691008823492;
	setAttr -s 20 ".kit[10:19]"  1 1 9 3 9 1 1 3 
		3 3;
	setAttr -s 20 ".kot[10:19]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 20 ".kix[10:19]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[10:19]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[10:19]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 20 ".koy[10:19]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateX";
	rename -uid "266980D7-4605-6498-8833-718C3C5DEDDE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 27 0 30 0 42 0 49 0 55 0
		 56 0 61 2.2204460492503131e-16 65 0 70 0 71 4.4408920985006262e-16 72 0 78 0 85 0
		 91 0 97 0 103 0 109 0 110 0 113 0 117 0 124 0 126 0;
	setAttr -s 26 ".kit[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 9 9 9 3;
	setAttr -s 26 ".kot[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5;
	setAttr -s 26 ".kix[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
	setAttr -s 26 ".koy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateY";
	rename -uid "8E195CB5-4992-B444-F67E-EE895C111F77";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 27 0 30 0 42 0 49 0 55 0
		 56 0 61 -0.11238656367128996 65 0 70 0 71 0.15323083662677917 72 0 78 0 85 0 91 0
		 97 0 103 0 109 0 110 0 113 0 117 0 124 0 126 0;
	setAttr -s 26 ".kit[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 9 9 9 3;
	setAttr -s 26 ".kot[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5;
	setAttr -s 26 ".kix[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
	setAttr -s 26 ".koy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateZ";
	rename -uid "F580B935-47C5-61B1-4B84-B09CDC0987B0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 27 0 30 0 42 0 49 0 55 0
		 56 0 61 0 65 0 70 0 71 0 72 0 78 0 85 0 91 0 97 0 103 0 109 0 110 0 113 0 117 0 124 0
		 126 0;
	setAttr -s 26 ".kit[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 9 9 9 3;
	setAttr -s 26 ".kot[8:25]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5;
	setAttr -s 26 ".kix[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[8:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0;
	setAttr -s 26 ".koy[8:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_leg_IK_FK_switch_IK_FK";
	rename -uid "20D88C24-432E-63C6-337B-939403A34EFF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_cog_ctrl_translateX";
	rename -uid "0C857BF3-4B46-26E4-C48F-30BC0B34A163";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 47 0 50 0 52 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 85 0 91 0 97 0
		 103 0 109 0 110 0 113 0 117 0 118 0 121 0 124 0 126 0;
	setAttr -s 35 ".kit[16:34]"  1 1 9 1 9 9 9 1 
		9 9 1 1 1 3 2 3 3 3 3;
	setAttr -s 35 ".kot[16:34]"  1 1 9 1 9 9 9 1 
		9 9 1 5 1 3 2 3 3 3 3;
	setAttr -s 35 ".kix[16:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[16:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[16:34]"  1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[16:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_cog_ctrl_translateY";
	rename -uid "841C4293-43C4-6167-AC47-29BC0C766DDD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 -1.6214571678306768 5 -2.4547921585597976
		 9 -2.4547921585597976 14 -1.4920054560673606 17 -0.024228623761004542 20 0.014621041830748638
		 23 -0.28876085971386978 25 -0.40645392063761854 27 -1.6214571678306768 30 -2.4560605858796851
		 35 -2.4560605858796851 40 -1.7066306492650796 44 -0.076 47 -0.076 50 -0.24868350212315476
		 52 -0.85642472572812478 55 -1.6214571678306768 56 -1.9416268323949719 61 0.066110544004260419
		 65 0.066110544004260419 70 -1.9416268323949719 72 -1.7282420983784892 78 -0.31583838274558396
		 85 -0.31583838274558396 91 -1.9416268323949719 97 -0.31583838274558396 103 -0.31583838274558396
		 109 -1.7282420983784892 110 -1.7282420983784892 113 -1.7282420983784892 117 -2.9788308260973917
		 118 -4.5906185165718743 121 -5.681530076555477 124 -6.9467645178959003 126 -8.2194965102218216;
	setAttr -s 35 ".kit[19:34]"  3 9 9 9 1 9 9 1 
		1 1 3 2 3 3 3 3;
	setAttr -s 35 ".kot[19:34]"  3 9 9 9 1 9 9 1 
		5 1 3 2 3 3 3 3;
	setAttr -s 35 ".kix[23:34]"  1 1 0.2939555542564411 1 1 1 1 0.13210258865180935 
		1 1 1 1;
	setAttr -s 35 ".kiy[23:34]"  0 0 0.95581908964081086 0 0 0 0 -0.99123604962263689 
		0 0 0 0;
	setAttr -s 35 ".kox[23:34]"  1 1 0.2939555542564411 1 0 1 1 0.025842579192464334 
		1 1 1 1;
	setAttr -s 35 ".koy[23:34]"  0 0 0.95581908964081086 0 0 0 0 -0.99966602478061706 
		0 0 0 0;
createNode animCurveTL -n "PALbot_cog_ctrl_translateZ";
	rename -uid "AB10AAC5-4E89-3757-FD02-598E4F8A523E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 5 0 9 0 14 0.1715456666439743 17 0 20 0.082641748328822651
		 23 0.50750699434222613 25 0.50750699434222613 27 0 30 0 35 0 40 0 44 0 47 0.21184541040072413
		 50 0.61592913132070359 52 0.33290424087398529 55 0 56 0 61 0 65 0 70 0 72 0 78 0
		 85 0 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 1.8790152969114073 121 1.2147002674446301
		 124 1.2147002674446301 126 1.2147002674446301;
	setAttr -s 35 ".kit[16:34]"  1 1 9 1 9 9 9 1 
		9 9 1 1 1 3 2 3 3 3 3;
	setAttr -s 35 ".kot[16:34]"  1 1 9 1 9 9 9 1 
		9 9 1 5 1 3 2 3 3 3 3;
	setAttr -s 35 ".kix[16:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[16:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[16:34]"  1 1 1 1 1 1 1 1 1 1 1 0 1 1 0.022169285352893128 
		1 1 1 1;
	setAttr -s 35 ".koy[16:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99975423119231754 
		0 0 0 0;
createNode animCurveTU -n "PALbot_cog_ctrl_secondary_vis";
	rename -uid "92BD4D77-420F-4F2E-D269-668D82D91821";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 47 0 50 0 52 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 85 0 91 0 97 0
		 103 0 109 0 110 0 113 0 117 0 118 0 121 0 124 0 126 0;
	setAttr -s 35 ".kit[18:34]"  9 1 9 9 9 1 9 9 
		1 1 1 3 2 3 3 3 3;
	setAttr -s 35 ".kot[18:34]"  9 1 9 9 9 1 9 9 
		1 5 1 3 2 3 3 3 3;
	setAttr -s 35 ".kix[19:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[19:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[19:34]"  1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[19:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateX";
	rename -uid "EFDA14C1-4B58-92A0-613B-DA8C08E1622C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateY";
	rename -uid "58D40156-4529-1023-489A-B6A78172B27F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateZ";
	rename -uid "01C6FBF8-4BF3-8A8F-CFE3-4C82D546BCDD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_HandVIS_Hand_Vis";
	rename -uid "34F7C993-42A1-EAF8-0804-41A38A7522A9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 3 1 15 1 21 1 27 1 42 1 49 1 55 1 56 1
		 61 1 65 1 70 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_HandVIS_canon_light";
	rename -uid "EF80404D-4D4A-807A-65AF-2C9D6AE2B9DC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 1 65 1 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 0.3511234415883917 1 0.27999999999999986 
		1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0.93632917756904455 0 -0.96000000000000008 
		0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 0.3511234415883917 1 0.27999999999999986 
		0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0.93632917756904455 0 -0.96000000000000008 
		0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateX";
	rename -uid "20775135-49B6-5928-B0B5-B4938111DA53";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateY";
	rename -uid "F542B661-4A74-CDEC-5ED8-4D8FC00C6BF0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateZ";
	rename -uid "EF498A87-4194-88F5-6521-9DA6F1CDE7A3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateX";
	rename -uid "E148C940-43DC-CBCA-74CF-5F8E65D817E6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 122 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateY";
	rename -uid "797BD25B-4AA6-240B-E86A-5FA37E8583D9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 122 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateZ";
	rename -uid "A421E165-48C1-2293-9F8D-41985610FA1D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 122 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateX";
	rename -uid "3F5D597D-4728-2FEC-FD85-0992A8D72F51";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 8 0 12 0 15 0 18 0 21 0 27 0 30 0
		 33 0 39 0 44 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 83 0 91 0 97 0 101 0 109 0
		 110 0 113 0 117 0 121 0 122 0 123 -0.00030875972322262017 124 0.04219037681337965
		 125 0.068095011760898938 126 0.24220458649907259;
	setAttr -s 34 ".kit[13:33]"  1 1 9 1 9 9 9 9 
		9 9 9 1 1 2 2 3 3 3 3 3 3;
	setAttr -s 34 ".kot[13:33]"  1 1 9 1 9 9 9 9 
		9 9 9 1 1 2 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[13:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 34 ".kiy[13:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 34 ".kox[13:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 
		0;
	setAttr -s 34 ".koy[13:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateY";
	rename -uid "D14CC950-477F-BC66-B59D-58980D20CC8B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 8 0 12 0 15 0 18 0 21 0 27 0 30 0
		 33 0 39 0 44 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 83 0 91 0 97 0 101 0 109 0
		 110 0 113 0 117 0 121 0 122 0 123 -0.067357189069534584 124 0.13469176505471525 125 -0.37771103721393284
		 126 0.16876611919920997;
	setAttr -s 34 ".kit[13:33]"  1 1 9 1 9 9 9 9 
		9 9 9 1 1 2 2 3 3 3 3 3 3;
	setAttr -s 34 ".kot[13:33]"  1 1 9 1 9 9 9 9 
		9 9 9 1 1 2 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[13:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 34 ".kiy[13:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 34 ".kox[13:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 
		0;
	setAttr -s 34 ".koy[13:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateZ";
	rename -uid "D3D3CD21-43AF-6113-6CA0-7EB0E6AB20C0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 8 0 12 0 15 0 18 0 21 0 27 0 30 0
		 33 0 39 0 44 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 83 0 91 0 97 0 101 0 109 0
		 110 0 113 0 117 0 121 0 122 0 123 0.1228026000158825 124 0.75967913993994995 125 0.28628287269110214
		 126 1.1440815563003641;
	setAttr -s 34 ".kit[13:33]"  1 1 9 1 9 9 9 9 
		9 9 9 1 1 2 2 3 3 3 3 3 3;
	setAttr -s 34 ".kot[13:33]"  1 1 9 1 9 9 9 9 
		9 9 9 1 1 2 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[13:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 34 ".kiy[13:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 34 ".kox[13:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 
		0;
	setAttr -s 34 ".koy[13:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateX";
	rename -uid "E086F489-4865-931B-4ECB-E7A975A2A677";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateY";
	rename -uid "EE937818-4985-39B0-7067-3ABA0EF41CD7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateZ";
	rename -uid "41C2682D-4168-337D-D2F3-0794E9906486";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateX";
	rename -uid "C0998166-4795-2ABA-FEE7-2DBEFB7D9725";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateY";
	rename -uid "7AC19D77-442F-F963-35D1-8D84E1F98E43";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateZ";
	rename -uid "98D9A06B-405D-F2D9-ACBC-70AFD41DAF36";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateX";
	rename -uid "A4347A23-4E0A-AD82-6CAA-F28F02BE38E8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 11 0 14 0 17 0 20 0 25 0 27 0 30 0
		 35 0 40 0 44 0 47 0 50 0 51 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateY";
	rename -uid "8E2D29DF-4C59-00FF-D884-4F94D61A2EB1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 11 0 14 1.8185992394978943 17 3.6402624009096805
		 20 3.3998510621570706 25 2.3141501015954251 27 0 30 0 35 0 40 0 44 0 47 0 50 0 51 0
		 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateZ";
	rename -uid "FB830BF2-4231-08A4-3155-D7BFB2AB3AD2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -2.9507407271625166 5 -4.1357051375682481
		 11 -4.1357051375682481 14 -1.4012376458004527 17 0.59451041532909255 20 1.6143131119865179
		 25 3.1400868424028889 27 3.0326461787022718 30 2.354249331586741 35 2.354249331586741
		 40 1.3199007995031091 44 0.3854672654111595 47 -0.49402291294880296 50 -1.6140911378648433
		 51 -2.1714759074363013 55 -2.9507407271625166 56 0.3854672654111595 70 0.3854672654111595
		 72 0.3854672654111595 91 0.3854672654111595 109 0.3854672654111595 110 0.3854672654111595
		 113 0.3854672654111595 126 0.3854672654111595;
	setAttr -s 24 ".kit[19:23]"  9 1 1 3 3;
	setAttr -s 24 ".kot[18:23]"  5 9 5 5 5 5;
	setAttr -s 24 ".kix[20:23]"  1 1 1 1;
	setAttr -s 24 ".kiy[20:23]"  0 0 0 0;
createNode animCurveTU -n "PALbot_R_IK_Foot_ctrl_Heel_Peel";
	rename -uid "10DA8569-418A-3A6C-9A59-13A9E35419EF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 11 0 14 0 17 0 20 0 25 0 27 0 30 0
		 35 0 40 0 44 0 47 0 50 0 51 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_IK_Foot_ctrl_follow_hip";
	rename -uid "8EC38108-412B-8268-AF55-F1962F37663D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 11 0 14 0 17 0 20 0 25 0 27 0 30 0
		 35 0 40 0 44 0 47 0 50 0 51 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateX";
	rename -uid "45BD42AA-43DA-ADA0-B0B6-B2B9DF6308F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateY";
	rename -uid "3CBB1CBF-4820-DD5C-3015-77B243A5D7D7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateZ";
	rename -uid "7E6A2CDF-4F93-11F9-630A-7B9C52FAB308";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateX";
	rename -uid "9E84D365-4D38-304A-FF78-7F9A989FC3FA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 118 0 124 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateY";
	rename -uid "719E8B1B-4483-289E-7AC7-9D84450843CE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 118 0 124 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateZ";
	rename -uid "8615D0D0-4F03-9EAB-95F1-1BA60DF8BCB9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 118 0 124 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_HandVIS_Hand_Vis";
	rename -uid "86B015F1-4B10-49A1-6963-59891FC9527B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 3 1 15 1 21 1 27 1 42 1 49 1 55 1 56 1
		 61 1 65 1 70 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_HandVIS_canon_light";
	rename -uid "C7083625-4ECE-E4EB-E3AD-868EADD77BB7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 1 65 1 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 0.3511234415883917 1 0.27999999999999986 
		1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0.93632917756904455 0 -0.96000000000000008 
		0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 0.3511234415883917 1 0.27999999999999986 
		0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0.93632917756904455 0 -0.96000000000000008 
		0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateX";
	rename -uid "AF0F15B9-4A7B-865C-0FD4-F9BA1E699324";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateY";
	rename -uid "A2B0DC7D-4384-8C73-C5BB-D4917E0AA270";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateZ";
	rename -uid "1466B446-4FBD-CEA4-8196-2FBB96791CD0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateX";
	rename -uid "1714CEE5-478E-683F-E91D-488AA7B7D556";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateY";
	rename -uid "CD9C38AE-4E3E-DCBB-5AC7-39881F28E9D4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateZ";
	rename -uid "E6964F74-4F40-5109-2D79-93BF33F5906A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateX";
	rename -uid "FF8F3612-41C0-B17C-1DAD-3DB396D7EA5D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateY";
	rename -uid "8355FDC9-4C7E-1FBE-8E0E-36A46A2E5977";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateZ";
	rename -uid "CFCB4A84-40C4-23BC-0EFF-229016AA5AFD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateX";
	rename -uid "02322E85-428F-C784-0676-DDBF9AC2B3F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 0 9 0 12 0 17 0 20 0 23 0 27 0 30 0
		 35 0 44 0 49 0 55 0 56 0 61 0 62 0 65 0 70 0 71 0 72 0 91 0 109 0 110 0 113 0 118 -0.047339082718723759
		 121 -0.047339082718723759 124 -0.047339082718723759 126 -0.047339082718723759;
	setAttr -s 28 ".kit[12:27]"  1 1 9 3 1 9 3 3 
		9 1 1 16 2 16 16 16;
	setAttr -s 28 ".kot[12:27]"  1 1 9 5 1 9 5 5 
		9 5 1 16 2 16 16 16;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 0.97514236554806899 
		1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.22157925650501697 
		0 0 0;
	setAttr -s 28 ".kox[12:27]"  1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1;
	setAttr -s 28 ".koy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateZ";
	rename -uid "7A2D07B8-400F-198F-5F8C-54A6A000D1BB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 0 9 0 12 0 17 0 20 0 23 0 27 0 30 0
		 35 0 44 0 49 0 55 0 56 0 61 0 62 0 65 0 70 0 71 0 72 0 91 0 109 0 110 0 113 0 118 -0.86230369202714985
		 121 -1.0610219566317667 124 -0.93036946692465983 126 -1.0610219566317667;
	setAttr -s 28 ".kit[12:27]"  1 1 9 3 1 9 3 3 
		9 1 1 16 2 16 16 16;
	setAttr -s 28 ".kot[12:27]"  1 1 9 5 1 9 5 5 
		9 5 1 16 2 16 16 16;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 0.23484404605164286 
		1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.97203306221244035 
		0 0 0;
	setAttr -s 28 ".kox[12:27]"  1 1 1 0 1 1 0 0 1 0 1 1 0.53245051230234031 
		1 1 1;
	setAttr -s 28 ".koy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.84646113434048198 
		0 0 0;
createNode animCurveTU -n "PALbot_chestUp_ctrl_secondary_vis";
	rename -uid "1D7335BD-4FD3-1A74-2E98-B0A0D55BBC49";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 0 9 0 12 0 17 0 20 0 23 0 27 0 30 0
		 35 0 44 0 49 0 55 0 56 0 61 0 62 0 65 0 70 0 71 0 72 0 91 0 109 0 110 0 113 0 118 0
		 121 0 124 0 126 0;
	setAttr -s 28 ".kit[12:27]"  1 1 9 3 1 9 3 3 
		9 1 1 16 2 16 16 16;
	setAttr -s 28 ".kot[12:27]"  1 1 9 5 1 9 5 5 
		9 5 1 16 2 16 16 16;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[12:27]"  1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1;
	setAttr -s 28 ".koy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateX";
	rename -uid "938B9E40-4942-3B19-59FD-C39E8544F2CA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 3 0 15 0 22 0 27 0 30 0 42 0 48 0 49 0
		 55 0 56 0 61 -2.2204460492503128e-16 65 0 70 0 71 -4.3983619977742197e-16 72 0 78 0
		 85 0 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 0 124 0 126 0;
	setAttr -s 28 ".kit[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 3 3 3 3 3;
	setAttr -s 28 ".kot[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5 5;
	setAttr -s 28 ".kix[9:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[9:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[9:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0;
	setAttr -s 28 ".koy[9:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateY";
	rename -uid "6C8F216E-45A9-C95E-10D9-44A50F45DB0E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 3 0 15 0 22 0 27 0 30 0 42 0 48 0 49 0
		 55 0 56 0 61 -0.11238656367128996 65 0 70 0 71 0.15323083662677917 72 0 78 0 85 0
		 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 0 124 -0.11936592205860576 126 0.2336727317916952;
	setAttr -s 28 ".kit[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 3 3 3 3 3;
	setAttr -s 28 ".kot[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5 5;
	setAttr -s 28 ".kix[9:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[9:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[9:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0;
	setAttr -s 28 ".koy[9:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateZ";
	rename -uid "FD454FDF-41EA-6CBC-8164-4FBE993F0390";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 3 0 15 0 22 0 27 0 30 0 42 0 48 0 49 0
		 55 0 56 0 61 -2.7192621468937821e-32 65 0 70 0 71 -5.4385242937875642e-32 72 0 78 0
		 85 0 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 0 124 0.10146972614845266 126 -0.15424644126144721;
	setAttr -s 28 ".kit[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 1 3 3 3 3 3;
	setAttr -s 28 ".kot[9:27]"  1 1 9 1 3 3 3 3 
		1 3 3 1 1 5 5 5 5 5 5;
	setAttr -s 28 ".kix[9:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[9:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[9:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0;
	setAttr -s 28 ".koy[9:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateX";
	rename -uid "3229CFEE-4A68-81EF-8F65-378A6AEA6D15";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 3 0 9 0 12 0 15 0 21 0 27 0 42 0 49 0
		 55 0 56 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateY";
	rename -uid "4CB654B0-4717-29C3-0CA5-0C8E687BF28A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 2.2204460492503131e-16 3 0 9 0 12 0 15 0
		 21 0 27 0 42 0 49 0 55 2.2204460492503131e-16 56 2.2204460492503131e-16 65 6.4736036421291868e-17
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateZ";
	rename -uid "6C262D5A-4C84-1133-E74C-F68C72F7DE51";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 6.9388939039072284e-18 3 0 9 0 12 0 15 0
		 21 0 27 0 42 0 49 0 55 6.9388939039072284e-18 56 6.9388939039072284e-18 65 2.0230011381653709e-18
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleX";
	rename -uid "8915C082-42D3-F547-C22B-3F8EECD41B7A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 3 1 9 1 12 1 15 1 21 1 27 1 42 1 49 1
		 55 1 56 1 65 1 70 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleY";
	rename -uid "C771E283-4409-D0AC-66BC-A08BA5C7E17F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 3 1 9 1 12 1 15 1 21 1 27 1 42 1 49 1
		 55 1 56 1 65 1 70 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleZ";
	rename -uid "C4E56261-4EE6-6DED-EE5C-968AFB93EE9B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 3 1 9 1 12 1 15 1 21 1 27 1 42 1 49 1
		 55 1 56 1 65 1 70 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 19 ".kit[9:18]"  1 1 3 9 3 9 1 1 
		3 3;
	setAttr -s 19 ".kot[9:18]"  1 1 5 9 5 9 5 5 
		5 5;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 0 1 0 1 0 0 0 0;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_on_off";
	rename -uid "502DFEF6-4A6A-AF4B-0408-6386C4E59D26";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 3 0 9 0 12 1 15 1 21 0 27 0 42 0 49 0
		 55 0 56 1 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 19 ".kit[0:18]"  3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 9 1 1 3 3;
	setAttr -s 19 ".kot[14:18]"  9 5 5 5 5;
	setAttr -s 19 ".kix[15:18]"  1 1 1 1;
	setAttr -s 19 ".kiy[15:18]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateX";
	rename -uid "A3F4E4AC-43C9-B174-DF1B-1989DDE52A5C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 -0.0042749693582849434 118 -0.0042749693582849434
		 126 -0.0042749693582849434;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateY";
	rename -uid "E8CAF806-43A4-F33B-2A67-8CB6B0858E89";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 -0.1559501189064556 118 -0.1559501189064556
		 126 -0.1559501189064556;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateZ";
	rename -uid "A8946993-4397-E776-11CA-80A0AEDF825A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 0.61794393216233379 118 0.61794393216233379
		 126 0.61794393216233379;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_hip_translateX";
	rename -uid "4DABA86D-4F25-693F-F85B-85B29F1AC12A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_hip_translateY";
	rename -uid "60BA6C49-4F8B-326A-A9BF-C7848B99F388";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_hip_translateZ";
	rename -uid "AF43FF94-4D95-A8E2-D4F2-27A6C470DC8D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateX";
	rename -uid "5D653E8B-4A36-F866-5909-928FECC68F0C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 -0.0042749693582849434 118 -0.0042749693582849434
		 126 -0.0042749693582849434;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateY";
	rename -uid "DB52A313-4BCA-E184-E936-C7AFBB598BD6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 -0.1559501189064556 118 -0.1559501189064556
		 126 -0.1559501189064556;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateZ";
	rename -uid "040AFF7E-43CA-D192-4B4D-74860E84353C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 117 0.61794393216233379 118 0.61794393216233379
		 126 0.61794393216233379;
	setAttr -s 18 ".kit[7:17]"  1 1 9 3 9 1 1 3 
		3 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 5 9 5 5 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateX";
	rename -uid "8A5DE4AA-4B49-56EE-05EE-BDB93E7F67EA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateY";
	rename -uid "0BF081E0-4620-54F2-6BAC-6E85A710E5F1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateZ";
	rename -uid "96638659-4A26-69E4-AA1A-EBAFC4A906C0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateX";
	rename -uid "49A61C3F-4E42-7A0E-CA9F-6995BB239369";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 41.999999829931973 0
		 42 0 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[8:16]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 17 ".kot[8:16]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateY";
	rename -uid "A1545AA3-4EA6-6986-9560-7A9DCD3F2CA0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 41.999999829931973 0
		 42 0 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[8:16]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 17 ".kot[8:16]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateZ";
	rename -uid "82231999-4664-9C9D-60CA-F797E0715058";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 41.999999829931973 0
		 42 0 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[8:16]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 17 ".kot[8:16]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_knee_aim_ctrl_space_switch";
	rename -uid "20931268-4221-6A13-A95B-BE86B57CC914";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 2 3 2 15 2 21 2 27 2 41.999999829931973 2
		 42 2 49 2 55 2 56 2 70 2 72 2 91 2 109 2 110 2 113 2 126 2;
	setAttr -s 17 ".kit[8:16]"  1 1 9 9 9 1 1 3 
		9;
	setAttr -s 17 ".kot[8:16]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateX";
	rename -uid "77B45840-451C-8947-119F-74BCE3CF63E3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 120 0 121 0 122 0 126 0;
	setAttr -s 21 ".kit[7:20]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3;
	setAttr -s 21 ".kot[7:20]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5;
	setAttr -s 21 ".kix[7:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[7:20]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0;
	setAttr -s 21 ".koy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateY";
	rename -uid "F991FD36-4A21-ED65-A68A-F4B310D1DE3A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 120 0 121 0 122 0 126 0;
	setAttr -s 21 ".kit[7:20]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3;
	setAttr -s 21 ".kot[7:20]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5;
	setAttr -s 21 ".kix[7:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[7:20]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0;
	setAttr -s 21 ".koy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateZ";
	rename -uid "9663C456-4FD0-26AC-97E4-749F82E6B165";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 3 0 15 0 26 0 37 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 120 0 121 0 122 0 126 0;
	setAttr -s 21 ".kit[7:20]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3;
	setAttr -s 21 ".kot[7:20]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5;
	setAttr -s 21 ".kix[7:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[7:20]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0;
	setAttr -s 21 ".koy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateX";
	rename -uid "FCC6C6D6-4C63-8090-6175-AE9FE2EDEABF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 121 0 122 0 126 0;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateY";
	rename -uid "34F6432C-4234-8AEA-C744-7288510DFCD3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 121 0 122 0 126 0;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateZ";
	rename -uid "8EB543B0-4960-506D-B1FD-09A2B9C86F65";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 121 0 122 0 126 0;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_arm_IK_FK_switch_IK_FK";
	rename -uid "08E6B0B5-4FDF-B9EE-59B9-ADBC80E8D3FF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 3 1 15 1 21 1 27 1 42 1 49 1 55 1 56 1
		 70 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateX";
	rename -uid "3BFAF439-4F28-6664-F5D1-A8A3D8DB5358";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateY";
	rename -uid "39117673-4325-9A33-5EAD-348336A0A8E6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateZ";
	rename -uid "83902B09-44EF-CED0-1370-BB8071B90ED5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateX";
	rename -uid "C7C9351D-4017-6459-FAFC-AD925D8B7DAB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 3 0 7 0 12 0 18 0 21 0 27 0 30 0 34 0
		 39 0 45 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 83 0 91 0 97 0 101 0 109 0 110 0
		 113 0 117 0 121 -0.031970622646646699 122 -0.03127429845917052 123 -0.032060596185040008
		 124 -0.063735441696045586 125 -0.066098103207304706 126 -0.35185945691442194;
	setAttr -s 33 ".kit[12:32]"  1 1 9 1 3 3 3 3 
		3 3 3 3 1 9 9 9 9 9 9 9 9;
	setAttr -s 33 ".kot[12:32]"  1 1 9 1 3 3 3 3 
		3 3 3 3 1 9 9 9 9 9 9 9 9;
	setAttr -s 33 ".kix[12:32]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99543194916520872 
		0.98891942610519823 0.99999941714340146 0.93180155610670079 0.92575471549517852 0.2778396926234753 
		0.14428361901747214;
	setAttr -s 33 ".kiy[12:32]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.095473737651530499 
		-0.14845325416361105 -0.0010796818314196682 -0.36296812537346979 -0.37812459155474293 
		-0.96062745390858606 -0.98953637491666835;
	setAttr -s 33 ".kox[12:32]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99543194916520872 
		0.98891942610519823 0.99999941714340146 0.93180155610670079 0.92575471549517852 0.2778396926234753 
		0.14428361901747214;
	setAttr -s 33 ".koy[12:32]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.095473737651530499 
		-0.14845325416361105 -0.0010796818314196682 -0.36296812537346979 -0.37812459155474293 
		-0.96062745390858606 -0.98953637491666835;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateY";
	rename -uid "4F86ABC6-4266-5C9E-486E-8CA1CBECD99B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 3 0 7 0 12 0 18 0 21 0 27 0 30 0 34 0
		 39 0 45 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 83 0 91 0 97 0 101 0 109 0 110 0
		 113 0 117 0 121 0 122 0.11440806305096804 123 -0.12104283175390068 124 0.62893068868341695
		 125 0.2807932576439649 126 -0.097040197014575072;
	setAttr -s 33 ".kit[12:32]"  1 1 9 1 3 3 3 3 
		3 3 3 3 1 9 9 9 9 9 9 9 9;
	setAttr -s 33 ".kot[12:32]"  1 1 9 1 3 3 3 3 
		3 3 3 3 1 9 5 9 9 9 9 9 9;
	setAttr -s 33 ".kix[12:32]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.87652711230802227 
		0.56706649687559063 0.1598790418288509 0.20306084718493134 0.11403994576397164 0.10961336364759042;
	setAttr -s 33 ".kiy[12:32]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4813524918279326 
		-0.82367201489503439 0.98713661262455887 0.97916612091132826 -0.99347616517466109 
		-0.99397430072907877;
	setAttr -s 33 ".kox[12:32]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0.87652711230802227 
		0.56706649687559063 0.1598790418288509 0.20306084718493134 0.11403994576397164 0.10961336364759042;
	setAttr -s 33 ".koy[12:32]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4813524918279326 
		-0.82367201489503439 0.98713661262455887 0.97916612091132826 -0.99347616517466109 
		-0.99397430072907877;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateZ";
	rename -uid "EBA9723C-4C6C-EA68-B63B-16B688B7E89D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 3 0 7 0 12 0 18 0 21 0 27 0 30 0 34 0
		 39 0 45 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 78 0 83 0 91 0 97 0 101 0 109 0 110 0
		 113 0 117 0 121 0 122 -0.27694853813421078 123 0.035783889822289285 124 1.5074400101421637
		 125 1.269895761107446 126 1.0562245011256117;
	setAttr -s 33 ".kit[12:32]"  1 1 9 1 3 3 3 3 
		3 3 3 3 1 9 9 9 9 9 9 9 9;
	setAttr -s 33 ".kot[12:32]"  1 1 9 1 3 3 3 3 
		3 3 3 3 1 9 5 9 9 9 9 9 9;
	setAttr -s 33 ".kix[12:32]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.60114791571172288 
		0.91886691956454947 0.046650493341134316 0.067371523134856642 0.1816149386739043 
		0.19139846317004397;
	setAttr -s 33 ".kiy[12:32]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.79913777500219041 
		0.39456759133253166 0.99891127307235295 0.99772795784747337 -0.98336972398507072 
		-0.98151241881911278;
	setAttr -s 33 ".kox[12:32]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0.60114791571172288 
		0.91886691956454947 0.046650493341134316 0.067371523134856642 0.1816149386739043 
		0.19139846317004397;
	setAttr -s 33 ".koy[12:32]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.79913777500219041 
		0.39456759133253166 0.99891127307235295 0.99772795784747337 -0.98336972398507072 
		-0.98151241881911278;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateX";
	rename -uid "A17AB4EB-4AB1-598B-9371-9D8E9015C1B1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 118 0 119 0 120 0 121 0
		 122 0 126 0;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateY";
	rename -uid "EC0A4E6C-4D01-D851-C932-67A3694060D4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 118 0 119 0 120 0 121 0
		 122 0 126 0;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateZ";
	rename -uid "3A248379-4263-2548-D6F6-65999B3A45EE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 118 0 119 0 120 0 121 0
		 122 0 126 0;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateX";
	rename -uid "55B4C745-4ED5-7F29-D821-ABB1B82E6B8D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateY";
	rename -uid "6278BBEC-48F1-F6B2-6C2F-65BD17787134";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateZ";
	rename -uid "8223A3F1-4274-D76B-8490-D0ADA28D3D01";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateX";
	rename -uid "59B6DA73-4006-B2B0-EC94-FCB79A6DFBB1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 -4.9400951578258161e-05 3 -4.9400951578258161e-05
		 15 -4.9400951578258161e-05 21 -4.9400951578258161e-05 27 -4.9400951578258161e-05
		 42 -4.9400951578258161e-05 49 -4.9400951578258161e-05 55 -4.9400951578258161e-05
		 56 -4.9400951578258161e-05 61 -4.9400951578258161e-05 65 -4.9400951578258161e-05
		 70 -4.9400951578258161e-05 72 -4.9400951578258161e-05 91 -4.9400951578258161e-05
		 109 -4.9400951578258161e-05 110 -4.9400951578258161e-05 113 -4.9400951578258161e-05
		 126 -4.9400951578258161e-05;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateY";
	rename -uid "BC352326-4621-1D48-AF60-1288CAF97299";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1.7589953799286646e-05 3 1.7589953799286646e-05
		 15 1.7589953799286646e-05 21 1.7589953799286646e-05 27 1.7589953799286646e-05 42 1.7589953799286646e-05
		 49 1.7589953799286646e-05 55 1.7589953799286646e-05 56 1.7589953799286646e-05 61 1.7589953799286646e-05
		 65 1.7589953799286646e-05 70 1.7589953799286646e-05 72 1.7589953799286646e-05 91 1.7589953799286646e-05
		 109 1.7589953799286646e-05 110 1.7589953799286646e-05 113 1.7589953799286646e-05
		 126 1.7589953799286646e-05;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateZ";
	rename -uid "7877271B-411C-97AD-D0EC-EE9A9C969E76";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 18 ".kit[7:17]"  1 1 9 1 9 3 9 1 
		1 3 3;
	setAttr -s 18 ".kot[7:17]"  1 1 9 1 9 5 9 5 
		5 5 5;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 0 1 0 0 0 0;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateX";
	rename -uid "204B56E1-4510-755E-7813-65B3945D15E0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 121 0 124 0.35250494066814247
		 126 1.1434530314927993;
	setAttr -s 22 ".kit[7:21]"  1 1 9 1 9 3 9 1 
		1 2 2 9 9 9 9;
	setAttr -s 22 ".kot[7:21]"  1 1 9 1 9 5 9 5 
		1 2 2 9 9 9 5;
	setAttr -s 22 ".kix[7:21]"  1 1 1 1 1 1 1 1 1 1 1 1 0.57849337040867732 
		0.17924586794637321 0.10477884691542498;
	setAttr -s 22 ".kiy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0.81568708485129826 
		0.98380430921202588 0.99449554711877608;
	setAttr -s 22 ".kox[7:21]"  1 1 1 1 1 0 1 0 1 1 1 1 0.57849337040867732 
		0.17924586794637321 0;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0.81568708485129826 
		0.98380430921202588 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateY";
	rename -uid "B3B9554B-4562-38C8-BFBA-BB9E04139E56";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 121 0 124 -0.25883801255584948
		 126 -0.14646977603194652;
	setAttr -s 22 ".kit[7:21]"  1 1 9 1 9 3 9 1 
		1 2 2 9 9 9 9;
	setAttr -s 22 ".kot[7:21]"  1 1 9 1 9 5 9 5 
		1 2 2 9 9 9 5;
	setAttr -s 22 ".kix[7:21]"  1 1 1 1 1 1 1 1 1 1 1 1 0.69472025182256913 
		0.81805612970134467 0.59567794965528353;
	setAttr -s 22 ".kiy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.71928003705621224 
		-0.57513839087480223 0.80322336886726442;
	setAttr -s 22 ".kox[7:21]"  1 1 1 1 1 0 1 0 1 1 1 1 0.69472025182256913 
		0.81805612970134467 0;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.71928003705621224 
		-0.57513839087480223 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateZ";
	rename -uid "BE4AFE5E-4546-E1D9-7D82-44A45B6E9CF3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 121 0 124 -0.16811752689866694
		 126 0;
	setAttr -s 22 ".kit[7:21]"  1 1 9 1 9 3 9 1 
		1 2 2 9 9 9 9;
	setAttr -s 22 ".kot[7:21]"  1 1 9 1 9 5 9 5 
		1 2 2 9 9 9 5;
	setAttr -s 22 ".kix[7:21]"  1 1 1 1 1 1 1 1 1 1 1 1 0.82982092993229761 
		1 0.44411802643556925;
	setAttr -s 22 ".kiy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.55802977003587939 
		0 0.89596829106557951;
	setAttr -s 22 ".kox[7:21]"  1 1 1 1 1 0 1 0 1 1 1 1 0.82982092993229761 
		1 0;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.55802977003587939 
		0 0;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateX";
	rename -uid "00910331-4A85-8A8F-7D4D-75BA2FB29F37";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateY";
	rename -uid "F2B16673-4EB0-76DF-5BFC-4DA652267464";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateZ";
	rename -uid "DFD8DDF7-4193-8004-9A5A-2BA2CD661450";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateX";
	rename -uid "491ADCA5-4FA4-D379-8D72-79A292F091F9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 121 0 122 0 126 0;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateY";
	rename -uid "FEABE852-409A-23C2-BD32-52A9A1BEF0D6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 121 0 122 0 126 0;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateZ";
	rename -uid "ED0EB3BA-4A18-5E2D-EC72-78BE86A8E585";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 121 0 122 0 126 0;
	setAttr -s 27 ".kit[10:26]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 27 ".kot[10:26]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 27 ".kix[10:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[10:26]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".koy[10:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateX";
	rename -uid "6B6C678F-4318-AEBF-3494-63AD890402F6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateY";
	rename -uid "90E90087-4072-E1BC-BFE3-16A21508FABF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateZ";
	rename -uid "DA023584-4B6C-6587-24DB-1FB68B62FD8D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 0;
	setAttr -s 34 ".kit[16:33]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3;
	setAttr -s 34 ".kot[16:33]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[16:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[16:33]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".koy[16:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateX";
	rename -uid "5E936394-4A6B-5500-4DF9-86A00E8AF52A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -6.6613381477509422e-16 3 0 15 0 21 0
		 27 0 42 0 49 0 55 -6.6613381477509422e-16 56 -6.6613381477509422e-16 70 0 72 0 91 0
		 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateY";
	rename -uid "7665751C-4E94-5973-2229-9BB1D207FCEA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateZ";
	rename -uid "8095A406-4114-2717-5CF7-FD9A142F781E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 2.6645352591003757e-15 3 0 15 0 21 0 27 0
		 42 0 49 0 55 2.6645352591003757e-15 56 2.6645352591003757e-15 70 0 72 0 91 0 109 0
		 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_knee_aim_ctrl_space_switch";
	rename -uid "D44AD301-4ADA-1FA2-85C1-159B05B12750";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 2 3 2 15 2 21 2 27 2 42 2 49 2 55 2 56 2
		 70 2 72 2 91 2 109 2 110 2 113 2 126 2;
	setAttr -s 16 ".kit[7:15]"  1 1 9 9 9 1 1 3 
		9;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateX";
	rename -uid "6A5B358D-4242-95A0-E478-26A88746FF44";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 114 0.023152815260664376 115 0.055290384558364741
		 116 0.098865437432723136 117 0.10755513855486126 118 -0.22652834830247967 119 -0.79437710222796554
		 120 -1.6839142466337753 121 -2.038492108512389 122 -2.1687122021384515 123 -2.2427660661428472
		 124 -2.1507839863302305 125 -2.7585040954442461 126 -1.2630343603258873;
	setAttr -s 30 ".kit[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 3 9 1 1 16 3 3 3 3 3 3 3 3 
		3 3 3 3 3;
	setAttr -s 30 ".kot[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 5 9 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5;
	setAttr -s 30 ".kix[7:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 30 ".kiy[7:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 30 ".kox[7:29]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 30 ".koy[7:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateY";
	rename -uid "27CF3B46-4165-CC69-2CEA-3EA26D1AE092";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 114 -0.26452461603895761 115 -0.48106409090518443
		 116 -0.55215005573907594 117 -0.5508168291653841 118 -0.54995872818188929 119 -0.40139410262915515
		 120 -0.5208382157874949 121 -0.33210272612788055 122 -2.7904633201612419 123 -4.489923458516528
		 124 -4.907576173669721 125 -5.4428766071320371 126 -6.0977696009705289;
	setAttr -s 30 ".kit[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 3 9 1 1 16 3 3 3 3 3 3 3 3 
		3 3 3 3 3;
	setAttr -s 30 ".kot[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 5 9 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5;
	setAttr -s 30 ".kix[7:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 30 ".kiy[7:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 30 ".kox[7:29]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 30 ".koy[7:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateZ";
	rename -uid "34050857-41C0-B101-115D-85A104BBE222";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 114 0.48623599751385971 115 1.2273778023402189
		 116 2.2742041402417743 117 2.4834846426367085 118 2.5213245930285559 119 3.4608341009587065
		 120 3.8592638843765035 121 5.2111121303509815 122 4.3372042087409088 123 2.1969099722395029
		 124 1.5473157723789606 125 1.6023250932858604 126 -0.3400448171915485;
	setAttr -s 30 ".kit[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 3 9 1 1 16 3 3 3 3 3 3 3 3 
		3 3 3 3 3;
	setAttr -s 30 ".kot[0:29]"  16 16 16 16 16 16 16 1 
		1 9 1 9 5 9 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5;
	setAttr -s 30 ".kix[7:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 30 ".kiy[7:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 30 ".kox[7:29]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 30 ".koy[7:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateX";
	rename -uid "2B55A58E-4D93-6736-6447-B288DBFA6778";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 1.6995388418086138e-33 47 -2.9273671980598527e-17 52 0 55 0 56 3.3990776836172276e-33
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateY";
	rename -uid "0220797D-44D0-1DFA-BCB1-4FA59CC8B980";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 1.1325743864955413 44 3.1412155535766413 47 3.2875271525615632 52 2.5916672771635918
		 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateZ";
	rename -uid "D4694B90-43BC-E8E3-4010-D389AF6EE592";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 3.1283655009311615 5 2.0803431251254945
		 9 2.0803431251254945 14 1.2668093444022908 17 -0.12463343741875255 20 -0.85832854521422441
		 23 -1.9782768708117513 25 -2.49620044888974 27 -3.3776323757686657 30 -4.3618154065398418
		 35 -4.3618154065398418 40 -2.8525126930208042 44 0.12371005212487544 47 0.89183725808190406
		 52 1.8444181812267171 55 3.1283655009311615 56 0.12371005212487543 70 0.12371005212487543
		 72 0.12371005212487543 91 0.12371005212487543 109 0.12371005212487543 110 0.12371005212487543
		 113 0.12371005212487543 126 0.12371005212487543;
	setAttr -s 24 ".kit[19:23]"  9 1 1 3 3;
	setAttr -s 24 ".kot[18:23]"  5 9 5 5 5 5;
	setAttr -s 24 ".kix[20:23]"  1 1 1 1;
	setAttr -s 24 ".kiy[20:23]"  0 0 0 0;
createNode animCurveTU -n "PALbot_L_IK_Foot_ctrl_Heel_Peel";
	rename -uid "B08C9942-451F-6215-F5A7-3E9935790B6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 47 0 52 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_IK_Foot_ctrl_follow_hip";
	rename -uid "29C47C25-457D-B769-2A1B-3C8114CBCD3F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 9 0 14 0 17 0 20 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 47 0 52 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 24 ".kit[15:23]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 24 ".kot[15:23]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 24 ".kix[15:23]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[15:23]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[15:23]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 24 ".koy[15:23]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateX";
	rename -uid "2C4DBE89-4AB5-2275-FA85-4796519310D8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0
		 118 0 119 0 120 0 124 0 126 0;
	setAttr -s 30 ".kit[15:29]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 30 ".kot[15:29]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 30 ".kix[15:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[15:29]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".koy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateY";
	rename -uid "2EF7D786-44F8-7066-1362-51B70FB3B3A7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0
		 118 0 119 0 120 0 124 0 126 0;
	setAttr -s 30 ".kit[15:29]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 30 ".kot[15:29]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 30 ".kix[15:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[15:29]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".koy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateZ";
	rename -uid "D547656A-4696-B3C6-7D3D-CA835EA7F2E9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0
		 118 0 119 0 120 0 124 0 126 0;
	setAttr -s 30 ".kit[15:29]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 30 ".kot[15:29]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 30 ".kix[15:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[15:29]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".koy[15:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateX1";
	rename -uid "6D122BE8-48D5-B1EC-EA93-4A82FAFAF88E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 124 0 126 0;
	setAttr -s 17 ".kit[7:16]"  1 1 9 3 9 1 1 9 
		9 9;
	setAttr -s 17 ".kot[7:16]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateY1";
	rename -uid "ADF9883F-4D6F-69F7-E587-ACAC4ED64263";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 124 0 126 0;
	setAttr -s 17 ".kit[7:16]"  1 1 9 3 9 1 1 9 
		9 9;
	setAttr -s 17 ".kot[7:16]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateZ1";
	rename -uid "0CB8689E-46D0-C9B5-1867-47BDCD7CCB32";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 124 0 126 0;
	setAttr -s 17 ".kit[7:16]"  1 1 9 3 9 1 1 9 
		9 9;
	setAttr -s 17 ".kot[7:16]"  1 1 9 5 9 5 5 5 
		5 5;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 0 1 0 0 0 0 0;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateX";
	rename -uid "CE905C7B-433B-10CA-4737-9786820CA560";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 126 0;
	setAttr -s 31 ".kit[16:30]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 31 ".kot[16:30]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 31 ".kix[16:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[16:30]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".koy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateY";
	rename -uid "E95608E5-40DF-C1E7-E6B4-D6BE56B493CF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 126 0;
	setAttr -s 31 ".kit[16:30]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 31 ".kot[16:30]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 31 ".kix[16:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[16:30]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".koy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateZ";
	rename -uid "3DD7BEE4-4F94-7041-92E7-F6B39B0BEB85";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 119 0 120 0 121 0 126 0;
	setAttr -s 31 ".kit[16:30]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 31 ".kot[16:30]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 31 ".kix[16:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[16:30]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".koy[16:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateX";
	rename -uid "22571D1E-4FF7-1ECD-90B4-2EA8C5023AEE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateY";
	rename -uid "DC78BDD3-46A0-9E21-831A-E1A77B47FE4E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateZ";
	rename -uid "2EBEECF1-4683-4738-83F8-F79F462CF6E3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateX1";
	rename -uid "5204D95F-4D24-C8F1-96B6-ECAC3A315F0F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 121 0 124 0 126 0;
	setAttr -s 22 ".kit[10:21]"  1 1 9 3 9 1 1 9 
		9 9 9 3;
	setAttr -s 22 ".kot[10:21]"  1 1 9 5 9 5 1 9 
		9 9 9 5;
	setAttr -s 22 ".kix[10:21]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[10:21]"  1 1 1 0 1 0 1 1 1 1 1 0;
	setAttr -s 22 ".koy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateY1";
	rename -uid "43902BBE-40B7-BEE6-DA8B-0C88BE63A4BC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 121 0 124 0 126 0;
	setAttr -s 22 ".kit[10:21]"  1 1 9 3 9 1 1 9 
		9 9 9 3;
	setAttr -s 22 ".kot[10:21]"  1 1 9 5 9 5 1 9 
		9 9 9 5;
	setAttr -s 22 ".kix[10:21]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[10:21]"  1 1 1 0 1 0 1 1 1 1 1 0;
	setAttr -s 22 ".koy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateZ1";
	rename -uid "FE986081-4B07-09E6-3DDE-9B872212611E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 121 0 124 0 126 0;
	setAttr -s 22 ".kit[10:21]"  1 1 9 3 9 1 1 9 
		9 9 9 3;
	setAttr -s 22 ".kot[10:21]"  1 1 9 5 9 5 1 9 
		9 9 9 5;
	setAttr -s 22 ".kix[10:21]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[10:21]"  1 1 1 0 1 0 1 1 1 1 1 0;
	setAttr -s 22 ".koy[10:21]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_hip_translateX";
	rename -uid "09272CB2-4D28-F9D0-8B6A-7F8DD44B519B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_hip_translateY";
	rename -uid "3E98976B-4A9A-AF8F-4334-92868961EE02";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_hip_translateZ";
	rename -uid "D9E73E16-4715-0817-17CA-3A80D14F7C51";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateX";
	rename -uid "2C4D7E67-49F3-044B-AF95-2CB3492A71A6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 26 0 31 0 37 0 42 0 49 0
		 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0 121 0
		 122 0 126 0;
	setAttr -s 26 ".kit[9:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[9:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[9:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[9:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateY";
	rename -uid "9A7B0489-4EA0-FF00-F4FD-3C95A13F8D99";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 26 0 31 0 37 0 42 0 49 0
		 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0 121 0
		 122 0 126 0;
	setAttr -s 26 ".kit[9:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[9:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[9:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[9:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateZ";
	rename -uid "59129C9C-47DE-5829-6FC9-8381734202B1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 15 0 21 0 26 0 31 0 37 0 42 0 49 0
		 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0 121 0
		 122 0 126 0;
	setAttr -s 26 ".kit[9:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[9:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[9:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[9:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[9:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateX";
	rename -uid "8F8AB1E0-4C15-83CF-24DF-8CAA94A509AC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 119 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateY";
	rename -uid "09BAB03B-44CE-019B-7153-53A7A68DECA0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 119 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateZ";
	rename -uid "0BB648B8-4014-2F28-4B77-6D8E6FAF0171";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 119 0 121 0 122 0
		 126 0;
	setAttr -s 25 ".kit[10:24]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3;
	setAttr -s 25 ".kot[10:24]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5;
	setAttr -s 25 ".kix[10:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[10:24]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0;
	setAttr -s 25 ".koy[10:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateX";
	rename -uid "9F40BD19-464C-76A8-C984-018E7200A819";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 122 0 126 0;
	setAttr -s 23 ".kit[10:22]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 23 ".kot[10:22]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 23 ".kix[10:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[10:22]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 23 ".koy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateY";
	rename -uid "2D0C8E79-4084-F5CB-BA83-30AB9923590F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 122 0 126 0;
	setAttr -s 23 ".kit[10:22]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 23 ".kot[10:22]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 23 ".kix[10:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[10:22]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 23 ".koy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateZ";
	rename -uid "A9A43307-4BA1-0FD7-C1EE-E9B902245169";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 122 0 126 0;
	setAttr -s 23 ".kit[10:22]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 23 ".kot[10:22]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 23 ".kix[10:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[10:22]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 23 ".koy[10:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_head_ctrl_translateX";
	rename -uid "A0E07C4B-4B19-CAF0-E763-FEA96539F0E9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 5 0 9 0 12 0 17 0 19 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 46 0 49 0 51 0 53 0 55 -2.5302496637037262e-25 56 0 61 0 65 0
		 67 0 70 0 72 0 78 0 85 0 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 0 121 0 124 0
		 126 -0.042621718560789001;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97970746958377242 
		0.89030854611951671;
	setAttr -s 37 ".kiy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.20043271699441131 
		-0.45535776341965695;
	setAttr -s 37 ".kox[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 0.97970746958377242 
		0.89030854611951671;
	setAttr -s 37 ".koy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.20043271699441131 
		-0.45535776341965695;
createNode animCurveTL -n "PALbot_head_ctrl_translateY";
	rename -uid "07E4CDBA-42A6-846A-C790-B29DA08CFC06";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0.10201929201496895 5 -0.33855781865647216
		 9 -0.54435107187979881 12 -0.33855781865647216 17 -0.22207679076491615 19 -0.076426341697082734
		 23 0.059400555382207898 25 0.31208453451509399 27 0.10201929201496895 30 -0.33855781865647216
		 35 -0.54435107187979881 40 -0.33855781865647216 44 -0.22207679076491615 46 -0.076426341697082734
		 49 0.059400555382207898 51 -0.049007278072334515 53 0.31208453451509399 55 0.10201929201496895
		 56 -0.22207679076491615 61 0 65 0 67 0.3408355667055693 70 0 72 -0.04140903489997521
		 78 -0.028052310016919248 85 -0.028052310016919248 91 0 97 -0.028052310016919248 103 -0.028052310016919248
		 109 -0.04140903489997521 110 -0.04140903489997521 113 -0.04140903489997521 117 -0.22829649006185898
		 118 -1.0491534033422396 121 -1.201166370778662 124 -1.1718346912244633 126 -1.087170756768455;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 0.69016307979991232 0.86043784865173012 
		0.59144660998741849 1 0.47856225500357596 0.99647750531595081 0.99969611606138742 
		1 1 0.99842984165860704 1 1 0.80094098964674099 0.84198189398472534 0.20245137454556503 
		0.16885454071966782 0.89773292188508802 0.87725886699262856 0.70148422879214045;
	setAttr -s 37 ".kiy[17:36]"  0 0.72365386980316782 0.50955540288331969 
		0.80634416196459835 0 -0.87805362483500526 -0.083860487712028017 0.024651075671799763 
		0 0 -0.056016526896701634 0 0 -0.59874329315968045 -0.53950578328864518 -0.97929231639210323 
		-0.98564098133060096 -0.44054012412453714 0.48001758330587191 0.71268497722057811;
	setAttr -s 37 ".kox[17:36]"  1 0.69016307979991232 0.86043784865173012 
		0.59144660998741849 1 0.47856225500357596 0.99647750531595081 0.99969611606138742 
		1 1 0.99842984165860704 1 0 0.80094098964674099 0.84198189398472534 0.20245137454556503 
		0.16885454071966782 0.89773292188508802 0.87725886699262856 0.70148422879214045;
	setAttr -s 37 ".koy[17:36]"  0 0.72365386980316782 0.50955540288331969 
		0.80634416196459835 0 -0.87805362483500526 -0.083860487712028017 0.024651075671799763 
		0 0 -0.056016526896701634 0 0 -0.59874329315968045 -0.53950578328864518 -0.97929231639210323 
		-0.98564098133060096 -0.44054012412453714 0.48001758330587191 0.71268497722057811;
createNode animCurveTL -n "PALbot_head_ctrl_translateZ";
	rename -uid "F62CE9F3-4AFA-B388-81EF-76B34DA8A091";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 5 0 9 0 12 0 17 0 19 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 46 0 49 0 51 0 53 0 55 -1.060854102597293e-22 56 0 61 0 65 0
		 67 0 70 0 72 0 78 0 85 0 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 0.045357103335499901
		 121 -0.075685221354737833 124 0.89305807991800024 126 0.98238505869469084;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97711084572123974 
		0.91051532490103937 0.28287042233410425 0.19319001844893766 0.68214974203392442;
	setAttr -s 37 ".kiy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.21273080447815607 
		-0.41347532347209648 0.95915813303569786 0.98116136123050579 0.73121250635027457;
	setAttr -s 37 ".kox[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0.97711084572123974 
		0.91051532490103937 0.28287042233410425 0.19319001844893766 0.68214974203392442;
	setAttr -s 37 ".koy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.21273080447815607 
		-0.41347532347209648 0.95915813303569786 0.98116136123050579 0.73121250635027457;
createNode animCurveTU -n "PALbot_head_ctrl_Space_switch";
	rename -uid "0BCBEDA4-437F-83A9-13FD-3097DCBFDD0F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 5 0 9 0 12 0 17 0 19 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 46 0 49 0 51 0 53 0 55 0 56 0 61 0 65 0 67 0 70 0 72 0 78 0 85 0
		 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 2 121 2 124 2 126 2;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.10360608425945632 
		0.083045479853740112 1 1 1;
	setAttr -s 37 ".kiy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99461840889077779 
		0.99654575824487956 0 0 0;
	setAttr -s 37 ".kox[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0.10360608425945632 
		0.083045479853740112 1 1 1;
	setAttr -s 37 ".koy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99461840889077779 
		0.99654575824487956 0 0 0;
createNode animCurveTU -n "PALbot_head_ctrl_FaceLight";
	rename -uid "66BFCA14-40BE-381B-A839-6F8B756B995D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 5 0 9 0 12 0 17 0 19 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 46 0 49 0 51 0 53 0 55 0 56 0 61 0 65 0 67 0 70 0 72 0 78 0 85 0
		 91 0 97 0 103 0 109 0 110 0 113 0 117 0 118 0 121 0 124 0 126 0;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_head_ctrl_Led_color";
	rename -uid "034E5865-4BDC-6B1B-0669-3D984D590B21";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 5 0 9 0 12 0 17 0 19 0 23 0 25 0 27 0
		 30 0 35 0 40 0 44 0 46 0 49 0 51 0 53 0 55 0 56 0 61 0 65 0 67 0 70 0 72 0 78 0 85 0
		 91 0 97 0 103 0 109 0 110 0 113 0 117 1 118 2 121 2 124 2 126 2;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.24253562503633297 
		0.28000000000000025 0.10360608425945632 0.16439898730535757 1 1 1;
	setAttr -s 37 ".kiy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0.97014250014533188 
		0.96 0.99461840889077779 0.98639392383214364 0 0 0;
	setAttr -s 37 ".kox[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 0 0.24253562503633297 
		0.28000000000000025 0.10360608425945632 0.16439898730535757 1 1 1;
	setAttr -s 37 ".koy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0.97014250014533188 
		0.96 0.99461840889077779 0.98639392383214364 0 0 0;
createNode animCurveTU -n "PALbot_head_ctrl_Face_Drawing";
	rename -uid "6F40F6B0-4F81-8CF6-87DA-8B8CBDC1F6A2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 2 5 2 9 2 12 2 17 2 19 2 23 2 25 2 27 2
		 30 2 35 2 40 2 44 2 46 2 49 2 51 2 53 2 55 2 56 2 61 2 65 2 67 2 70 2 72 2 78 2 85 2
		 91 2 97 2 103 2 109 2 110 2 113 2 117 2 118 2 121 2 124 2 126 2;
	setAttr -s 37 ".kit[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 1 1 9 9 9 9 9 9;
	setAttr -s 37 ".kot[17:36]"  1 1 9 9 9 9 9 9 
		1 9 9 1 5 1 9 9 9 9 9 9;
	setAttr -s 37 ".kix[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[17:36]"  1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[17:36]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateX";
	rename -uid "44BF3747-4132-4EB6-F1F3-519095130A02";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 122 0 126 0;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateY";
	rename -uid "AAB639F7-4ED5-9A35-ED78-4A9D88034E8F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 122 0 126 0;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateZ";
	rename -uid "563C6A52-4EDB-22D1-1A1E-E180EDF4186C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 7 0 15 0 21 0 26 0 31 0 37 0 42 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 117 0 118 0 119 0 120 0
		 122 0 126 0;
	setAttr -s 26 ".kit[10:25]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 26 ".kot[10:25]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 26 ".kix[10:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[10:25]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".koy[10:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_arm_IK_FK_switch_IK_FK";
	rename -uid "05419D1F-4F80-E082-A73D-6EADC1C0FE9E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 3 1 15 1 21 1 27 1 42 1 49 1 55 1 56 1
		 70 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateX";
	rename -uid "861B0DE9-4A18-A93C-8B3B-E985FB74FB53";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateY";
	rename -uid "58DDB162-41AF-025A-A288-52B1AA173EA0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateZ";
	rename -uid "33544BD3-4D93-C2C1-C164-1B9DB62D4060";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateX";
	rename -uid "6A9D93B6-42EE-7715-1F49-F080ACEE744E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateY";
	rename -uid "04FBF3FE-428C-A279-D6AE-CB8B13C71736";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateZ";
	rename -uid "79483132-4012-5142-5638-90852FDDD4D3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 3 0 15 0 37 0 42 0 49 0 55 0 56 0 70 0
		 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 15 ".kit[6:14]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 15 ".kot[6:14]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 15 ".kix[6:14]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[6:14]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[6:14]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 15 ".koy[6:14]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_root_translateX";
	rename -uid "A7AE4AE9-492F-2E69-D142-3E87062FC8DD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_root_translateY";
	rename -uid "498D6B25-43A1-F230-8BD5-D0A8B3EED20C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_root_translateZ";
	rename -uid "9A29353B-4D86-1789-FF6E-9E89D4C5F310";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateX";
	rename -uid "EA99FECA-450D-9450-B9EC-13B1158BEFEE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 120 0 121 0 126 0;
	setAttr -s 29 ".kit[16:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 29 ".kot[16:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 29 ".kix[16:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[16:28]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 29 ".koy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateY";
	rename -uid "9D7EE3D0-4D58-0699-92C8-59AA11107294";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 120 0 121 0 126 0;
	setAttr -s 29 ".kit[16:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 29 ".kot[16:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 29 ".kix[16:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[16:28]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 29 ".koy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateZ";
	rename -uid "30D04BC4-46FC-905C-2ADC-BC93F1A41CD4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 120 0 121 0 126 0;
	setAttr -s 29 ".kit[16:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3;
	setAttr -s 29 ".kot[16:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5;
	setAttr -s 29 ".kix[16:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[16:28]"  1 1 1 1 1 0 1 0 0 0 0 0 0;
	setAttr -s 29 ".koy[16:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateX";
	rename -uid "5F802053-4864-B522-F179-28A6D168DDBC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateY";
	rename -uid "FFF47E3E-4E61-F123-E100-0C811D36B11E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateZ";
	rename -uid "1038D6C8-41A4-9486-229D-629E14BCF238";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 3 0 6 0 11 0 15 0 16 0 21 0 23 0 26 0
		 27 0 29 0 32 0 41 0 42 0 47 0 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0
		 113 0 118 0 120 0 121 0 123 0 124 0 126 0;
	setAttr -s 32 ".kit[16:31]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3;
	setAttr -s 32 ".kot[16:31]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5;
	setAttr -s 32 ".kix[16:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[16:31]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".koy[16:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateX";
	rename -uid "3E6DCEED-488C-B8CB-FDC9-35854DF5158C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 118 0 119 -0.7625431620451707
		 120 -1.3675583532139881 121 -1.9047748769258019 122 -2.104690792981224 123 -2.1064593576042192
		 124 -2.0800673154039004 125 -2.0571706312534803 126 -1.7911857192059659;
	setAttr -s 29 ".kit[10:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3 3;
	setAttr -s 29 ".kot[10:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5 5;
	setAttr -s 29 ".kix[10:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[10:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[10:28]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".koy[10:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateY";
	rename -uid "C6C47459-43C3-8EDE-719D-CC98A5B3A6AD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 118 0 119 -0.015589862376726195
		 120 0.29139422195650522 121 0.25503021731202802 122 -0.76129406610759931 123 -1.8426772154712265
		 124 -2.1157446264313813 125 -2.0769154967160475 126 -2.571482918901046;
	setAttr -s 29 ".kit[10:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3 3;
	setAttr -s 29 ".kot[10:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5 5;
	setAttr -s 29 ".kix[10:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[10:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[10:28]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".koy[10:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateZ";
	rename -uid "78AC8CA0-4175-A140-BAF3-87BF3C1929E4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 3 0 15 0 21 0 22 0 27 0 30 0 42 0 48 0
		 49 0 55 0 56 0 61 0 65 0 70 0 72 0 91 0 109 0 110 0 113 0 118 0 119 0.10273011271370863
		 120 0.82470224069870524 121 1.7458504540779578 122 1.6042267490241597 123 1.198446465271708
		 124 0.8965788016406222 125 0.026998621866356085 126 -0.54728395427381904;
	setAttr -s 29 ".kit[10:28]"  1 1 9 1 9 3 9 1 
		1 3 3 3 3 3 3 3 3 3 3;
	setAttr -s 29 ".kot[10:28]"  1 1 9 1 9 5 9 5 
		5 5 5 5 5 5 5 5 5 5 5;
	setAttr -s 29 ".kix[10:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[10:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[10:28]"  1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".koy[10:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateX";
	rename -uid "0D51A4F8-4F0D-DD8B-C6DD-508ABC1A10D3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateY";
	rename -uid "2F54E0EF-4604-CAFA-4366-C9AB9C93EE90";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateZ";
	rename -uid "1BB195ED-4557-634A-9A8F-348787AE5DBB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateX";
	rename -uid "8D06D876-4123-99BD-800F-CDAE28A6EC5B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateY";
	rename -uid "9ACC0D70-4247-665A-0C38-53A1BCC4BA59";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateZ";
	rename -uid "10784012-42D4-1B31-4F15-468DA0D965D1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3 0 15 0 21 0 27 0 42 0 49 0 55 0 56 0
		 70 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 16 ".kit[7:15]"  1 1 9 3 9 1 1 3 
		3;
	setAttr -s 16 ".kot[7:15]"  1 1 9 5 9 5 5 5 
		5;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 0 1 0 0 0 0;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateX";
	rename -uid "B60A72DF-4295-BAD1-3A38-2CAC65CFAB95";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 0 15 0 21 0 27 0 33 0 38 0 42 0 47 0 49 0
		 56 0 65 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateY";
	rename -uid "5F756477-4980-ED21-4C49-C8840FF9C7C6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 0 15 0 21 0 27 0 33 0 38 0 42 0 47 0 49 0
		 56 0 65 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateZ";
	rename -uid "0B3B59D6-4E57-A5ED-9EC6-32B08AC94553";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 0 15 0 21 0 27 0 33 0 38 0 42 0 47 0 49 0
		 56 0 65 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateX";
	rename -uid "4295EFBD-4281-CF74-D384-DC918B6DCD5A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  3 0 15 0 21 0 27 0 42 0 49 0 72 0 91 0 109 0
		 110 0 113 0 126 0;
	setAttr -s 12 ".kit[6:11]"  3 9 1 1 3 3;
	setAttr -s 12 ".kot[6:11]"  5 9 5 5 5 5;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateY";
	rename -uid "60B4B6C6-4E36-EB24-35A3-A7A1674655A5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  3 0 15 0 21 0 27 0 42 0 49 0 72 0 91 0 109 0
		 110 0 113 0 126 0;
	setAttr -s 12 ".kit[6:11]"  3 9 1 1 3 3;
	setAttr -s 12 ".kot[6:11]"  5 9 5 5 5 5;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateZ";
	rename -uid "522C8B4A-4863-C20A-6DAF-A99F21D5B88A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  3 0 15 0 21 0 27 0 42 0 49 0 72 0 91 0 109 0
		 110 0 113 0 126 0;
	setAttr -s 12 ".kit[6:11]"  3 9 1 1 3 3;
	setAttr -s 12 ".kot[6:11]"  5 9 5 5 5 5;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateX";
	rename -uid "FBC56D8B-4855-F8E4-13AD-D4A9EF1BDF8B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 0 15 0 21 0 27 0 33 0 38 0 42 0 47 0 49 0
		 56 0 65 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateY";
	rename -uid "AD17C705-455F-4EF2-B60D-8B88FBE643FC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 0 15 0 21 0 27 0 33 0 38 0 42 0 47 0 49 0
		 56 0 65 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateZ";
	rename -uid "FADD6747-4815-8331-8A0B-BD8490173959";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 0 15 0 21 0 27 0 33 0 38 0 42 0 47 0 49 0
		 56 0 65 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleX";
	rename -uid "1C6555C7-4864-C7BC-361E-9CAE0A31B062";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 1 15 1 21 1 27 1 33 1 38 1 42 1 47 1 49 1
		 56 1 65 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleY";
	rename -uid "2CA6FFE1-4DE0-C9DA-0525-3293EE9020B6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 1 15 1 21 1 27 1 33 1 38 1 42 1 47 1 49 1
		 56 1 65 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleZ";
	rename -uid "9DEE9ADC-4422-E730-9F36-5DADF96D4A4C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 1 15 1 21 1 27 1 33 1 38 1 42 1 47 1 49 1
		 56 1 65 1 72 1 91 1 109 1 110 1 113 1 126 1;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_on_off";
	rename -uid "CDBCB15E-4C89-2B77-86FB-F0B04978DB84";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  3 0 15 0 21 0 27 0 33 0 38 1 42 1 47 0 49 0
		 56 1 65 0 72 0 91 0 109 0 110 0 113 0 126 0;
	setAttr -s 17 ".kit[0:16]"  3 3 3 3 3 3 3 3 
		3 3 3 3 9 1 1 3 3;
	setAttr -s 17 ".kot[12:16]"  9 5 5 5 5;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateX";
	rename -uid "A1D0166B-4B69-9832-969B-9B9176F6703B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  3 0 15 0 21 0 27 0 42 0 49 0 72 0 91 0 109 0
		 110 0 113 0 126 0;
	setAttr -s 12 ".kit[6:11]"  3 9 1 1 3 3;
	setAttr -s 12 ".kot[6:11]"  5 9 5 5 5 5;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateY";
	rename -uid "767501E8-4EB5-C6BD-2899-40B5DBC2A1B5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  3 0 15 0 21 0 27 0 42 0 49 0 72 0 91 0 109 0
		 110 0 113 0 126 0;
	setAttr -s 12 ".kit[6:11]"  3 9 1 1 3 3;
	setAttr -s 12 ".kot[6:11]"  5 9 5 5 5 5;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateZ";
	rename -uid "BCF964CE-4B93-5A6E-ADEF-16860B75CCBD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  3 0 15 0 21 0 27 0 42 0 49 0 72 0 91 0 109 0
		 110 0 113 0 126 0;
	setAttr -s 12 ".kit[6:11]"  3 9 1 1 3 3;
	setAttr -s 12 ".kot[6:11]"  5 9 5 5 5 5;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "AA1D5987-4C21-1581-C19E-8EB4DA480D01";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 789\n            -height 689\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n"
		+ "            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 689\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 0\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 689\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 0\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 689\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BA053018-42A7-046E-638D-3EA9034283BD";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 130 -ast 0 -aet 130 ";
	setAttr ".st" 6;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateY";
	rename -uid "0A4064A8-427A-29CB-EB85-97A8608D64EC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 0 9 -0.28020264146559626 12 0 17 0
		 20 0.18195303752905545 23 0.25326999816303442 27 0 30 -0.18614247144778773 35 0 44 0
		 49 0.21702627037185707 55 0 56 0 61 0 62 -0.1162968985594226 65 -0.1162968985594226
		 70 -0.11621135684391248 71 -0.19566649364860456 72 -0.11621135684391248 91 -0.11621135684391248
		 109 -0.11621135684391248 110 -0.11621135684391248 113 -0.11621135684391248 118 -0.65492944071056058
		 121 -0.90449299762067203 124 -0.55535605370594632 126 -0.90449299762067203;
	setAttr -s 28 ".kit[12:27]"  1 1 9 3 1 9 3 3 
		9 1 1 16 2 16 16 16;
	setAttr -s 28 ".kot[12:27]"  1 1 9 5 1 9 5 5 
		9 5 1 16 2 16 16 16;
	setAttr -s 28 ".kix[12:27]"  1 1 0.90669638439137024 1 1 0.95311930197159755 
		1 1 1 1 1 1 0.36068888149666578 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 -0.42178390975903368 0 0 -0.30259477227667775 
		0 0 0 0 0 0 -0.93268619093706118 0 0 0;
	setAttr -s 28 ".kox[12:27]"  1 1 0.90669638439137024 0 1 0.95311930197159755 
		0 0 1 0 1 1 0.44783894603902374 1 1 1;
	setAttr -s 28 ".koy[12:27]"  0 0 -0.42178390975903368 0 0 -0.30259477227667775 
		0 0 0 0 0 0 -0.89411424237099379 0 0 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
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
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".hfs";
	setAttr -av ".hfe";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 17 ".st";
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
	setAttr -s 20 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 27 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 9 ".r";
select -ne :defaultTextureList1;
	setAttr -s 20 ".tx";
select -ne :initialShadingGroup;
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
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
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
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "PALbot_root_rotateX.o" "PALBotRN.phl[1]";
connectAttr "PALbot_root_rotateY.o" "PALBotRN.phl[2]";
connectAttr "PALbot_root_rotateZ.o" "PALBotRN.phl[3]";
connectAttr "PALbot_root_translateX.o" "PALBotRN.phl[4]";
connectAttr "PALbot_root_translateY.o" "PALBotRN.phl[5]";
connectAttr "PALbot_root_translateZ.o" "PALBotRN.phl[6]";
connectAttr "PALbot_L_knee_aim_ctrl_space_switch.o" "PALBotRN.phl[7]";
connectAttr "PALbot_L_knee_aim_ctrl_translateX.o" "PALBotRN.phl[8]";
connectAttr "PALbot_L_knee_aim_ctrl_translateY.o" "PALBotRN.phl[9]";
connectAttr "PALbot_L_knee_aim_ctrl_translateZ.o" "PALBotRN.phl[10]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateX.o" "PALBotRN.phl[11]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateY.o" "PALBotRN.phl[12]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateZ.o" "PALBotRN.phl[13]";
connectAttr "PALbot_L_foot_secondary_rotateX.o" "PALBotRN.phl[14]";
connectAttr "PALbot_L_foot_secondary_rotateY.o" "PALBotRN.phl[15]";
connectAttr "PALbot_L_foot_secondary_rotateZ.o" "PALBotRN.phl[16]";
connectAttr "PALbot_L_foot_secondary_translateX.o" "PALBotRN.phl[17]";
connectAttr "PALbot_L_foot_secondary_translateY.o" "PALBotRN.phl[18]";
connectAttr "PALbot_L_foot_secondary_translateZ.o" "PALBotRN.phl[19]";
connectAttr "PALbot_L_footSec_reshape01_translateX.o" "PALBotRN.phl[20]";
connectAttr "PALbot_L_footSec_reshape01_translateY.o" "PALBotRN.phl[21]";
connectAttr "PALbot_L_footSec_reshape01_translateZ.o" "PALBotRN.phl[22]";
connectAttr "PALbot_L_footSec_reshape01_rotateX.o" "PALBotRN.phl[23]";
connectAttr "PALbot_L_footSec_reshape01_rotateY.o" "PALBotRN.phl[24]";
connectAttr "PALbot_L_footSec_reshape01_rotateZ.o" "PALBotRN.phl[25]";
connectAttr "PALbot_L_footSec_reshape02_translateX.o" "PALBotRN.phl[26]";
connectAttr "PALbot_L_footSec_reshape02_translateY.o" "PALBotRN.phl[27]";
connectAttr "PALbot_L_footSec_reshape02_translateZ.o" "PALBotRN.phl[28]";
connectAttr "PALbot_L_footSec_reshape02_rotateX.o" "PALBotRN.phl[29]";
connectAttr "PALbot_L_footSec_reshape02_rotateY.o" "PALBotRN.phl[30]";
connectAttr "PALbot_L_footSec_reshape02_rotateZ.o" "PALBotRN.phl[31]";
connectAttr "PALbot_L_Engine_ctrl_on_off.o" "PALBotRN.phl[32]";
connectAttr "PALbot_L_Engine_ctrl_translateX.o" "PALBotRN.phl[33]";
connectAttr "PALbot_L_Engine_ctrl_translateY.o" "PALBotRN.phl[34]";
connectAttr "PALbot_L_Engine_ctrl_translateZ.o" "PALBotRN.phl[35]";
connectAttr "PALbot_L_Engine_ctrl_rotateX.o" "PALBotRN.phl[36]";
connectAttr "PALbot_L_Engine_ctrl_rotateY.o" "PALBotRN.phl[37]";
connectAttr "PALbot_L_Engine_ctrl_rotateZ.o" "PALBotRN.phl[38]";
connectAttr "PALbot_L_Engine_ctrl_scaleX.o" "PALBotRN.phl[39]";
connectAttr "PALbot_L_Engine_ctrl_scaleY.o" "PALBotRN.phl[40]";
connectAttr "PALbot_L_Engine_ctrl_scaleZ.o" "PALBotRN.phl[41]";
connectAttr "PALbot_L_IK_Foot_ctrl_Heel_Peel.o" "PALBotRN.phl[42]";
connectAttr "PALbot_L_IK_Foot_ctrl_follow_hip.o" "PALBotRN.phl[43]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateX.o" "PALBotRN.phl[44]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateZ.o" "PALBotRN.phl[45]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateY.o" "PALBotRN.phl[46]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateX.o" "PALBotRN.phl[47]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateY.o" "PALBotRN.phl[48]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateZ.o" "PALBotRN.phl[49]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateX.o" "PALBotRN.phl[50]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateY.o" "PALBotRN.phl[51]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateZ.o" "PALBotRN.phl[52]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateX.o" "PALBotRN.phl[53]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateY.o" "PALBotRN.phl[54]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateZ.o" "PALBotRN.phl[55]";
connectAttr "PALbot_L_IK_foot_tip_translateX.o" "PALBotRN.phl[56]";
connectAttr "PALbot_L_IK_foot_tip_translateY.o" "PALBotRN.phl[57]";
connectAttr "PALbot_L_IK_foot_tip_translateZ.o" "PALBotRN.phl[58]";
connectAttr "PALbot_L_IK_foot_tip_rotateX.o" "PALBotRN.phl[59]";
connectAttr "PALbot_L_IK_foot_tip_rotateY.o" "PALBotRN.phl[60]";
connectAttr "PALbot_L_IK_foot_tip_rotateZ.o" "PALBotRN.phl[61]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateX.o" "PALBotRN.phl[62]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateY.o" "PALBotRN.phl[63]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateZ.o" "PALBotRN.phl[64]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateX.o" "PALBotRN.phl[65]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateY.o" "PALBotRN.phl[66]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateZ.o" "PALBotRN.phl[67]";
connectAttr "PALbot_R_HandVIS_Hand_Vis.o" "PALBotRN.phl[68]";
connectAttr "PALbot_R_HandVIS_canon_light.o" "PALBotRN.phl[69]";
connectAttr "PALbot_cog_ctrl_secondary_vis.o" "PALBotRN.phl[70]";
connectAttr "PALbot_cog_ctrl_translateY.o" "PALBotRN.phl[71]";
connectAttr "PALbot_cog_ctrl_translateX.o" "PALBotRN.phl[72]";
connectAttr "PALbot_cog_ctrl_translateZ.o" "PALBotRN.phl[73]";
connectAttr "PALbot_cog_ctrl_rotateX.o" "PALBotRN.phl[74]";
connectAttr "PALbot_cog_ctrl_rotateY.o" "PALBotRN.phl[75]";
connectAttr "PALbot_cog_ctrl_rotateZ.o" "PALBotRN.phl[76]";
connectAttr "PALbot_chestUp_ctrl_secondary_vis.o" "PALBotRN.phl[77]";
connectAttr "PALbot_chestUp_ctrl_rotateY.o" "PALBotRN.phl[78]";
connectAttr "PALbot_chestUp_ctrl_rotateX.o" "PALBotRN.phl[79]";
connectAttr "PALbot_chestUp_ctrl_rotateZ.o" "PALBotRN.phl[80]";
connectAttr "PALbot_chestUp_ctrl_translateX.o" "PALBotRN.phl[81]";
connectAttr "PALbot_chestUp_ctrl_translateY.o" "PALBotRN.phl[82]";
connectAttr "PALbot_chestUp_ctrl_translateZ.o" "PALBotRN.phl[83]";
connectAttr "PALbot_Neck_ctrl_translateX.o" "PALBotRN.phl[84]";
connectAttr "PALbot_Neck_ctrl_translateY.o" "PALBotRN.phl[85]";
connectAttr "PALbot_Neck_ctrl_translateZ.o" "PALBotRN.phl[86]";
connectAttr "PALbot_Neck_ctrl_rotateX.o" "PALBotRN.phl[87]";
connectAttr "PALbot_Neck_ctrl_rotateY.o" "PALBotRN.phl[88]";
connectAttr "PALbot_Neck_ctrl_rotateZ.o" "PALBotRN.phl[89]";
connectAttr "PALbot_head_ctrl_Space_switch.o" "PALBotRN.phl[90]";
connectAttr "PALbot_head_ctrl_FaceLight.o" "PALBotRN.phl[91]";
connectAttr "PALbot_head_ctrl_Led_color.o" "PALBotRN.phl[92]";
connectAttr "PALbot_head_ctrl_Face_Drawing.o" "PALBotRN.phl[93]";
connectAttr "PALbot_head_ctrl_rotateY.o" "PALBotRN.phl[94]";
connectAttr "PALbot_head_ctrl_rotateX.o" "PALBotRN.phl[95]";
connectAttr "PALbot_head_ctrl_rotateZ.o" "PALBotRN.phl[96]";
connectAttr "PALbot_head_ctrl_translateX.o" "PALBotRN.phl[97]";
connectAttr "PALbot_head_ctrl_translateY.o" "PALBotRN.phl[98]";
connectAttr "PALbot_head_ctrl_translateZ.o" "PALBotRN.phl[99]";
connectAttr "PALbot_R_Clavicle_ctrl_translateX.o" "PALBotRN.phl[100]";
connectAttr "PALbot_R_Clavicle_ctrl_translateY.o" "PALBotRN.phl[101]";
connectAttr "PALbot_R_Clavicle_ctrl_translateZ.o" "PALBotRN.phl[102]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateX.o" "PALBotRN.phl[103]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateY.o" "PALBotRN.phl[104]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateZ.o" "PALBotRN.phl[105]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_rotateZ1.o" "PALBotRN.phl[106]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateX.o" "PALBotRN.phl[107]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateY.o" "PALBotRN.phl[108]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateZ.o" "PALBotRN.phl[109]";
connectAttr "PALbot_L_Arm_ctrl_rotateZ1.o" "PALBotRN.phl[110]";
connectAttr "PALbot_L_Arm_ctrl_rotateY1.o" "PALBotRN.phl[111]";
connectAttr "PALbot_L_Arm_ctrl_translateX1.o" "PALBotRN.phl[112]";
connectAttr "PALbot_L_Arm_ctrl_translateY1.o" "PALBotRN.phl[113]";
connectAttr "PALbot_L_Arm_ctrl_translateZ1.o" "PALBotRN.phl[114]";
connectAttr "PALbot_R_FK_Elbow_ctrl_rotateX.o" "PALBotRN.phl[115]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateX.o" "PALBotRN.phl[116]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateY.o" "PALBotRN.phl[117]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateZ.o" "PALBotRN.phl[118]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateX.o" "PALBotRN.phl[119]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateY.o" "PALBotRN.phl[120]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateZ.o" "PALBotRN.phl[121]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateX.o" "PALBotRN.phl[122]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateY.o" "PALBotRN.phl[123]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateZ.o" "PALBotRN.phl[124]";
connectAttr "PALbot_R_arm_IK_FK_switch_IK_FK.o" "PALBotRN.phl[125]";
connectAttr "PALbot_L_Clavicle_ctrl_translateX.o" "PALBotRN.phl[126]";
connectAttr "PALbot_L_Clavicle_ctrl_translateY.o" "PALBotRN.phl[127]";
connectAttr "PALbot_L_Clavicle_ctrl_translateZ.o" "PALBotRN.phl[128]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateX.o" "PALBotRN.phl[129]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateY.o" "PALBotRN.phl[130]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateZ.o" "PALBotRN.phl[131]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_rotateZ.o" "PALBotRN.phl[132]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateX1.o" "PALBotRN.phl[133]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateY1.o" "PALBotRN.phl[134]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateZ1.o" "PALBotRN.phl[135]";
connectAttr "PALbot_L_Arm_ctrl_rotateZ.o" "PALBotRN.phl[136]";
connectAttr "PALbot_L_Arm_ctrl_rotateY.o" "PALBotRN.phl[137]";
connectAttr "PALbot_L_Arm_ctrl_translateX.o" "PALBotRN.phl[138]";
connectAttr "PALbot_L_Arm_ctrl_translateY.o" "PALBotRN.phl[139]";
connectAttr "PALbot_L_Arm_ctrl_translateZ.o" "PALBotRN.phl[140]";
connectAttr "PALbot_L_FK_Elbow_ctrl_rotateX.o" "PALBotRN.phl[141]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateX.o" "PALBotRN.phl[142]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateY.o" "PALBotRN.phl[143]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateZ.o" "PALBotRN.phl[144]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateX.o" "PALBotRN.phl[145]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateY.o" "PALBotRN.phl[146]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateZ.o" "PALBotRN.phl[147]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateX.o" "PALBotRN.phl[148]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateY.o" "PALBotRN.phl[149]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateZ.o" "PALBotRN.phl[150]";
connectAttr "PALbot_L_arm_IK_FK_switch_IK_FK.o" "PALBotRN.phl[151]";
connectAttr "PALbot_hipMain_ctrl_translateX.o" "PALBotRN.phl[152]";
connectAttr "PALbot_hipMain_ctrl_translateY.o" "PALBotRN.phl[153]";
connectAttr "PALbot_hipMain_ctrl_translateZ.o" "PALBotRN.phl[154]";
connectAttr "PALbot_hipMain_ctrl_rotateX.o" "PALBotRN.phl[155]";
connectAttr "PALbot_hipMain_ctrl_rotateY.o" "PALBotRN.phl[156]";
connectAttr "PALbot_hipMain_ctrl_rotateZ.o" "PALBotRN.phl[157]";
connectAttr "PALbot_R_hip_translateX.o" "PALBotRN.phl[158]";
connectAttr "PALbot_R_hip_translateY.o" "PALBotRN.phl[159]";
connectAttr "PALbot_R_hip_translateZ.o" "PALBotRN.phl[160]";
connectAttr "PALbot_R_hip_rotateX.o" "PALBotRN.phl[161]";
connectAttr "PALbot_R_hip_rotateY.o" "PALBotRN.phl[162]";
connectAttr "PALbot_R_hip_rotateZ.o" "PALBotRN.phl[163]";
connectAttr "PALbot_R_leg_IK_FK_switch_IK_FK.o" "PALBotRN.phl[164]";
connectAttr "PALbot_L_hip_translateX.o" "PALBotRN.phl[165]";
connectAttr "PALbot_L_hip_translateY.o" "PALBotRN.phl[166]";
connectAttr "PALbot_L_hip_translateZ.o" "PALBotRN.phl[167]";
connectAttr "PALbot_L_hip_rotateX.o" "PALBotRN.phl[168]";
connectAttr "PALbot_L_hip_rotateY.o" "PALBotRN.phl[169]";
connectAttr "PALbot_L_hip_rotateZ.o" "PALBotRN.phl[170]";
connectAttr "PALbot_L_leg_IK_FK_switch_IK_FK.o" "PALBotRN.phl[171]";
connectAttr "PALbot_L_Thumb01_ctrl_translateX.o" "PALBotRN.phl[172]";
connectAttr "PALbot_L_Thumb01_ctrl_translateY.o" "PALBotRN.phl[173]";
connectAttr "PALbot_L_Thumb01_ctrl_translateZ.o" "PALBotRN.phl[174]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateX.o" "PALBotRN.phl[175]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateY.o" "PALBotRN.phl[176]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateZ.o" "PALBotRN.phl[177]";
connectAttr "PALbot_L_Thumb02_ctrl_translateX.o" "PALBotRN.phl[178]";
connectAttr "PALbot_L_Thumb02_ctrl_translateY.o" "PALBotRN.phl[179]";
connectAttr "PALbot_L_Thumb02_ctrl_translateZ.o" "PALBotRN.phl[180]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateX.o" "PALBotRN.phl[181]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateY.o" "PALBotRN.phl[182]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateZ.o" "PALBotRN.phl[183]";
connectAttr "PALbot_L_Thumb03_ctrl_translateX.o" "PALBotRN.phl[184]";
connectAttr "PALbot_L_Thumb03_ctrl_translateY.o" "PALBotRN.phl[185]";
connectAttr "PALbot_L_Thumb03_ctrl_translateZ.o" "PALBotRN.phl[186]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateX.o" "PALBotRN.phl[187]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateY.o" "PALBotRN.phl[188]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateZ.o" "PALBotRN.phl[189]";
connectAttr "PALbot_L_Index01_ctrl_translateX.o" "PALBotRN.phl[190]";
connectAttr "PALbot_L_Index01_ctrl_translateY.o" "PALBotRN.phl[191]";
connectAttr "PALbot_L_Index01_ctrl_translateZ.o" "PALBotRN.phl[192]";
connectAttr "PALbot_L_Index01_ctrl_rotateX.o" "PALBotRN.phl[193]";
connectAttr "PALbot_L_Index01_ctrl_rotateY.o" "PALBotRN.phl[194]";
connectAttr "PALbot_L_Index01_ctrl_rotateZ.o" "PALBotRN.phl[195]";
connectAttr "PALbot_L_Index02_ctrl_translateX.o" "PALBotRN.phl[196]";
connectAttr "PALbot_L_Index02_ctrl_translateY.o" "PALBotRN.phl[197]";
connectAttr "PALbot_L_Index02_ctrl_translateZ.o" "PALBotRN.phl[198]";
connectAttr "PALbot_L_Index02_ctrl_rotateX.o" "PALBotRN.phl[199]";
connectAttr "PALbot_L_Index02_ctrl_rotateY.o" "PALBotRN.phl[200]";
connectAttr "PALbot_L_Index02_ctrl_rotateZ.o" "PALBotRN.phl[201]";
connectAttr "PALbot_L_Middle01_ctrl_translateX.o" "PALBotRN.phl[202]";
connectAttr "PALbot_L_Middle01_ctrl_translateY.o" "PALBotRN.phl[203]";
connectAttr "PALbot_L_Middle01_ctrl_translateZ.o" "PALBotRN.phl[204]";
connectAttr "PALbot_L_Middle01_ctrl_rotateX.o" "PALBotRN.phl[205]";
connectAttr "PALbot_L_Middle01_ctrl_rotateY.o" "PALBotRN.phl[206]";
connectAttr "PALbot_L_Middle01_ctrl_rotateZ.o" "PALBotRN.phl[207]";
connectAttr "PALbot_L_Middle02_ctrl_translateX.o" "PALBotRN.phl[208]";
connectAttr "PALbot_L_Middle02_ctrl_translateY.o" "PALBotRN.phl[209]";
connectAttr "PALbot_L_Middle02_ctrl_translateZ.o" "PALBotRN.phl[210]";
connectAttr "PALbot_L_Middle02_ctrl_rotateX.o" "PALBotRN.phl[211]";
connectAttr "PALbot_L_Middle02_ctrl_rotateY.o" "PALBotRN.phl[212]";
connectAttr "PALbot_L_Middle02_ctrl_rotateZ.o" "PALBotRN.phl[213]";
connectAttr "PALbot_L_Ring01_ctrl_translateX.o" "PALBotRN.phl[214]";
connectAttr "PALbot_L_Ring01_ctrl_translateY.o" "PALBotRN.phl[215]";
connectAttr "PALbot_L_Ring01_ctrl_translateZ.o" "PALBotRN.phl[216]";
connectAttr "PALbot_L_Ring01_ctrl_rotateX.o" "PALBotRN.phl[217]";
connectAttr "PALbot_L_Ring01_ctrl_rotateY.o" "PALBotRN.phl[218]";
connectAttr "PALbot_L_Ring01_ctrl_rotateZ.o" "PALBotRN.phl[219]";
connectAttr "PALbot_L_Ring02_ctrl_translateX.o" "PALBotRN.phl[220]";
connectAttr "PALbot_L_Ring02_ctrl_translateY.o" "PALBotRN.phl[221]";
connectAttr "PALbot_L_Ring02_ctrl_translateZ.o" "PALBotRN.phl[222]";
connectAttr "PALbot_L_Ring02_ctrl_rotateX.o" "PALBotRN.phl[223]";
connectAttr "PALbot_L_Ring02_ctrl_rotateY.o" "PALBotRN.phl[224]";
connectAttr "PALbot_L_Ring02_ctrl_rotateZ.o" "PALBotRN.phl[225]";
connectAttr "PALbot_L_Pinky01_ctrl_translateX.o" "PALBotRN.phl[226]";
connectAttr "PALbot_L_Pinky01_ctrl_translateY.o" "PALBotRN.phl[227]";
connectAttr "PALbot_L_Pinky01_ctrl_translateZ.o" "PALBotRN.phl[228]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateX.o" "PALBotRN.phl[229]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateY.o" "PALBotRN.phl[230]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateZ.o" "PALBotRN.phl[231]";
connectAttr "PALbot_L_Pinky02_ctrl_translateX.o" "PALBotRN.phl[232]";
connectAttr "PALbot_L_Pinky02_ctrl_translateY.o" "PALBotRN.phl[233]";
connectAttr "PALbot_L_Pinky02_ctrl_translateZ.o" "PALBotRN.phl[234]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateX.o" "PALBotRN.phl[235]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateY.o" "PALBotRN.phl[236]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateZ.o" "PALBotRN.phl[237]";
connectAttr "PALbot_R_Thumb01_ctrl_translateX.o" "PALBotRN.phl[238]";
connectAttr "PALbot_R_Thumb01_ctrl_translateY.o" "PALBotRN.phl[239]";
connectAttr "PALbot_R_Thumb01_ctrl_translateZ.o" "PALBotRN.phl[240]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateX.o" "PALBotRN.phl[241]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateY.o" "PALBotRN.phl[242]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateZ.o" "PALBotRN.phl[243]";
connectAttr "PALbot_R_Thumb02_ctrl_translateX.o" "PALBotRN.phl[244]";
connectAttr "PALbot_R_Thumb02_ctrl_translateY.o" "PALBotRN.phl[245]";
connectAttr "PALbot_R_Thumb02_ctrl_translateZ.o" "PALBotRN.phl[246]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateX.o" "PALBotRN.phl[247]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateY.o" "PALBotRN.phl[248]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateZ.o" "PALBotRN.phl[249]";
connectAttr "PALbot_R_Thumb03_ctrl_translateX.o" "PALBotRN.phl[250]";
connectAttr "PALbot_R_Thumb03_ctrl_translateY.o" "PALBotRN.phl[251]";
connectAttr "PALbot_R_Thumb03_ctrl_translateZ.o" "PALBotRN.phl[252]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateX.o" "PALBotRN.phl[253]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateY.o" "PALBotRN.phl[254]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateZ.o" "PALBotRN.phl[255]";
connectAttr "PALbot_R_Index01_ctrl_translateX.o" "PALBotRN.phl[256]";
connectAttr "PALbot_R_Index01_ctrl_translateY.o" "PALBotRN.phl[257]";
connectAttr "PALbot_R_Index01_ctrl_translateZ.o" "PALBotRN.phl[258]";
connectAttr "PALbot_R_Index01_ctrl_rotateX.o" "PALBotRN.phl[259]";
connectAttr "PALbot_R_Index01_ctrl_rotateY.o" "PALBotRN.phl[260]";
connectAttr "PALbot_R_Index01_ctrl_rotateZ.o" "PALBotRN.phl[261]";
connectAttr "PALbot_R_Index02_ctrl_translateX.o" "PALBotRN.phl[262]";
connectAttr "PALbot_R_Index02_ctrl_translateY.o" "PALBotRN.phl[263]";
connectAttr "PALbot_R_Index02_ctrl_translateZ.o" "PALBotRN.phl[264]";
connectAttr "PALbot_R_Index02_ctrl_rotateX.o" "PALBotRN.phl[265]";
connectAttr "PALbot_R_Index02_ctrl_rotateY.o" "PALBotRN.phl[266]";
connectAttr "PALbot_R_Index02_ctrl_rotateZ.o" "PALBotRN.phl[267]";
connectAttr "PALbot_R_Middle01_ctrl_translateX.o" "PALBotRN.phl[268]";
connectAttr "PALbot_R_Middle01_ctrl_translateY.o" "PALBotRN.phl[269]";
connectAttr "PALbot_R_Middle01_ctrl_translateZ.o" "PALBotRN.phl[270]";
connectAttr "PALbot_R_Middle01_ctrl_rotateX.o" "PALBotRN.phl[271]";
connectAttr "PALbot_R_Middle01_ctrl_rotateY.o" "PALBotRN.phl[272]";
connectAttr "PALbot_R_Middle01_ctrl_rotateZ.o" "PALBotRN.phl[273]";
connectAttr "PALbot_R_Middle02_ctrl_translateX.o" "PALBotRN.phl[274]";
connectAttr "PALbot_R_Middle02_ctrl_translateY.o" "PALBotRN.phl[275]";
connectAttr "PALbot_R_Middle02_ctrl_translateZ.o" "PALBotRN.phl[276]";
connectAttr "PALbot_R_Middle02_ctrl_rotateX.o" "PALBotRN.phl[277]";
connectAttr "PALbot_R_Middle02_ctrl_rotateY.o" "PALBotRN.phl[278]";
connectAttr "PALbot_R_Middle02_ctrl_rotateZ.o" "PALBotRN.phl[279]";
connectAttr "PALbot_R_Ring01_ctrl_translateX.o" "PALBotRN.phl[280]";
connectAttr "PALbot_R_Ring01_ctrl_translateY.o" "PALBotRN.phl[281]";
connectAttr "PALbot_R_Ring01_ctrl_translateZ.o" "PALBotRN.phl[282]";
connectAttr "PALbot_R_Ring01_ctrl_rotateX.o" "PALBotRN.phl[283]";
connectAttr "PALbot_R_Ring01_ctrl_rotateY.o" "PALBotRN.phl[284]";
connectAttr "PALbot_R_Ring01_ctrl_rotateZ.o" "PALBotRN.phl[285]";
connectAttr "PALbot_R_Ring02_ctrl_translateX.o" "PALBotRN.phl[286]";
connectAttr "PALbot_R_Ring02_ctrl_translateY.o" "PALBotRN.phl[287]";
connectAttr "PALbot_R_Ring02_ctrl_translateZ.o" "PALBotRN.phl[288]";
connectAttr "PALbot_R_Ring02_ctrl_rotateX.o" "PALBotRN.phl[289]";
connectAttr "PALbot_R_Ring02_ctrl_rotateY.o" "PALBotRN.phl[290]";
connectAttr "PALbot_R_Ring02_ctrl_rotateZ.o" "PALBotRN.phl[291]";
connectAttr "PALbot_R_Pinky01_ctrl_translateX.o" "PALBotRN.phl[292]";
connectAttr "PALbot_R_Pinky01_ctrl_translateY.o" "PALBotRN.phl[293]";
connectAttr "PALbot_R_Pinky01_ctrl_translateZ.o" "PALBotRN.phl[294]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateX.o" "PALBotRN.phl[295]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateY.o" "PALBotRN.phl[296]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateZ.o" "PALBotRN.phl[297]";
connectAttr "PALbot_R_Pinky02_ctrl_translateX.o" "PALBotRN.phl[298]";
connectAttr "PALbot_R_Pinky02_ctrl_translateY.o" "PALBotRN.phl[299]";
connectAttr "PALbot_R_Pinky02_ctrl_translateZ.o" "PALBotRN.phl[300]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateX.o" "PALBotRN.phl[301]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateY.o" "PALBotRN.phl[302]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateZ.o" "PALBotRN.phl[303]";
connectAttr "PALbot_R_knee_aim_ctrl_space_switch.o" "PALBotRN.phl[304]";
connectAttr "PALbot_R_knee_aim_ctrl_translateX.o" "PALBotRN.phl[305]";
connectAttr "PALbot_R_knee_aim_ctrl_translateY.o" "PALBotRN.phl[306]";
connectAttr "PALbot_R_knee_aim_ctrl_translateZ.o" "PALBotRN.phl[307]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateX.o" "PALBotRN.phl[308]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateY.o" "PALBotRN.phl[309]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateZ.o" "PALBotRN.phl[310]";
connectAttr "PALbot_R_foot_secondary_rotateX.o" "PALBotRN.phl[311]";
connectAttr "PALbot_R_foot_secondary_rotateY.o" "PALBotRN.phl[312]";
connectAttr "PALbot_R_foot_secondary_rotateZ.o" "PALBotRN.phl[313]";
connectAttr "PALbot_R_foot_secondary_translateX.o" "PALBotRN.phl[314]";
connectAttr "PALbot_R_foot_secondary_translateY.o" "PALBotRN.phl[315]";
connectAttr "PALbot_R_foot_secondary_translateZ.o" "PALBotRN.phl[316]";
connectAttr "PALbot_R_footSec_reshape01_translateX.o" "PALBotRN.phl[317]";
connectAttr "PALbot_R_footSec_reshape01_translateY.o" "PALBotRN.phl[318]";
connectAttr "PALbot_R_footSec_reshape01_translateZ.o" "PALBotRN.phl[319]";
connectAttr "PALbot_R_footSec_reshape01_rotateX.o" "PALBotRN.phl[320]";
connectAttr "PALbot_R_footSec_reshape01_rotateY.o" "PALBotRN.phl[321]";
connectAttr "PALbot_R_footSec_reshape01_rotateZ.o" "PALBotRN.phl[322]";
connectAttr "PALbot_R_footSec_reshape02_translateX.o" "PALBotRN.phl[323]";
connectAttr "PALbot_R_footSec_reshape02_translateY.o" "PALBotRN.phl[324]";
connectAttr "PALbot_R_footSec_reshape02_translateZ.o" "PALBotRN.phl[325]";
connectAttr "PALbot_R_footSec_reshape02_rotateX.o" "PALBotRN.phl[326]";
connectAttr "PALbot_R_footSec_reshape02_rotateY.o" "PALBotRN.phl[327]";
connectAttr "PALbot_R_footSec_reshape02_rotateZ.o" "PALBotRN.phl[328]";
connectAttr "PALbot_R_Engine_ctrl_on_off.o" "PALBotRN.phl[329]";
connectAttr "PALbot_R_Engine_ctrl_translateX.o" "PALBotRN.phl[330]";
connectAttr "PALbot_R_Engine_ctrl_translateY.o" "PALBotRN.phl[331]";
connectAttr "PALbot_R_Engine_ctrl_translateZ.o" "PALBotRN.phl[332]";
connectAttr "PALbot_R_Engine_ctrl_rotateX.o" "PALBotRN.phl[333]";
connectAttr "PALbot_R_Engine_ctrl_rotateY.o" "PALBotRN.phl[334]";
connectAttr "PALbot_R_Engine_ctrl_rotateZ.o" "PALBotRN.phl[335]";
connectAttr "PALbot_R_Engine_ctrl_scaleX.o" "PALBotRN.phl[336]";
connectAttr "PALbot_R_Engine_ctrl_scaleY.o" "PALBotRN.phl[337]";
connectAttr "PALbot_R_Engine_ctrl_scaleZ.o" "PALBotRN.phl[338]";
connectAttr "PALbot_R_IK_Foot_ctrl_Heel_Peel.o" "PALBotRN.phl[339]";
connectAttr "PALbot_R_IK_Foot_ctrl_follow_hip.o" "PALBotRN.phl[340]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateZ.o" "PALBotRN.phl[341]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateX.o" "PALBotRN.phl[342]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateY.o" "PALBotRN.phl[343]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateX.o" "PALBotRN.phl[344]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateY.o" "PALBotRN.phl[345]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateZ.o" "PALBotRN.phl[346]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateX.o" "PALBotRN.phl[347]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateY.o" "PALBotRN.phl[348]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateZ.o" "PALBotRN.phl[349]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateX.o" "PALBotRN.phl[350]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateY.o" "PALBotRN.phl[351]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateZ.o" "PALBotRN.phl[352]";
connectAttr "PALbot_R_IK_foot_tip_translateX.o" "PALBotRN.phl[353]";
connectAttr "PALbot_R_IK_foot_tip_translateY.o" "PALBotRN.phl[354]";
connectAttr "PALbot_R_IK_foot_tip_translateZ.o" "PALBotRN.phl[355]";
connectAttr "PALbot_R_IK_foot_tip_rotateX.o" "PALBotRN.phl[356]";
connectAttr "PALbot_R_IK_foot_tip_rotateY.o" "PALBotRN.phl[357]";
connectAttr "PALbot_R_IK_foot_tip_rotateZ.o" "PALBotRN.phl[358]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateX.o" "PALBotRN.phl[359]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateY.o" "PALBotRN.phl[360]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateZ.o" "PALBotRN.phl[361]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateX.o" "PALBotRN.phl[362]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateY.o" "PALBotRN.phl[363]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateZ.o" "PALBotRN.phl[364]";
connectAttr "PALbot_L_HandVIS_Hand_Vis.o" "PALBotRN.phl[365]";
connectAttr "PALbot_L_HandVIS_canon_light.o" "PALBotRN.phl[366]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of PalBotWalkCycle.ma
