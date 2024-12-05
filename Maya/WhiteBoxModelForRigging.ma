//Maya ASCII 2023 scene
//Name: WhiteBoxModelForRigging.ma
//Last modified: Thu, Jan 18, 2024 10:21:39 AM
//Codeset: 1252
requires maya "2023";
requires "mtoa" "5.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "598C95A0-4A09-FAE5-D84F-20ABB84A60AB";
createNode transform -s -n "persp";
	rename -uid "AED2C0C7-4B72-2443-B01E-F68E14F3700F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.9160240648791644 10.405650728000088 25.493775052027633 ;
	setAttr ".r" -type "double3" -12.338352729242061 370.59999999955852 -2.0223575005535588e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "911EB274-4C0C-8A95-81A0-D2A01617FF73";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 24.274998953110384;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6398DC06-4487-47AE-AC63-EC9FD1954EEC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1DFFEDCF-41ED-2DF7-F585-3D8720C59E97";
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
	rename -uid "43CF9A53-4B09-7A26-DF7D-F894F52149F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7F3BCB2B-4A48-A284-E3D5-A682A2D39792";
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
	rename -uid "FB98CE5E-4DAF-4FBF-76B6-95AC1692BDBB";
	setAttr ".t" -type "double3" 1000.1 2.9041251823177632 -0.33410467690624435 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5455AD7E-4994-7D6F-7146-4398D31C3B90";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 14.550845338766136;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "imagePlane1";
	rename -uid "6AEA7560-4D8F-1145-131D-70A8AAC2CC66";
	setAttr ".t" -type "double3" -6.1917245807438466 4.3625113196469272 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 1.0204027055899214 1.0204027055899214 1.0204027055899214 ;
	setAttr ".rp" -type "double3" 0 3.6374886803530728 0 ;
	setAttr ".sp" -type "double3" 0 3.6374886803530728 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "A505126F-4E10-E1BB-8692-0BB75243472D";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/ferri/Documents/GitKraken/FallSemester2023/Maya/biped_whitebox.png";
	setAttr ".cov" -type "short2" 943 885 ;
	setAttr ".dlc" no;
	setAttr ".w" 9.43;
	setAttr ".h" 8.85;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pPlane1";
	rename -uid "5FB16243-43F1-C666-5B44-71AD8100514E";
	setAttr ".s" -type "double3" 17.984728616748562 17.984728616748562 17.984728616748562 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "74524B64-42D7-20D2-D92F-A7AE36E6A7CB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube9";
	rename -uid "0FF4815D-4849-EF19-5951-29AD9F55EB0C";
	setAttr ".rp" -type "double3" 0 5.1556015014648438 0 ;
	setAttr ".sp" -type "double3" 0 5.155601501464842 0 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "12DEE69A-4A79-4014-3637-1B87B328ECCC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.047289472 5.6556015 0.053312905 
		-0.047289472 5.6556015 0.053312905 -0.050450958 5.8743405 0.17277339 0.050450958 
		5.8743405 0.17277339 -0.050450958 5.8743405 -0.17277339 0.050450958 5.8743405 -0.17277339 
		0.047289472 5.6556015 -0.053312905 -0.047289472 5.6556015 -0.053312905;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10" -p "pCube9";
	rename -uid "05E9510D-4077-ABE7-EBE1-DB85EA728698";
	setAttr ".rp" -type "double3" 0 6.3743405342102051 0 ;
	setAttr ".sp" -type "double3" 0 6.3743405342102042 0 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "5473C1CA-4396-F209-CA2D-2D93229CE5FB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.050450958 6.8743405 0.17277339 
		0.050450958 6.8743405 0.17277339 -0.050450958 6.5107932 0.17277339 0.050450958 6.5107932 
		0.17277339 -0.050450958 6.5107932 -0.17277339 0.050450958 6.5107932 -0.17277339 -0.050450958 
		6.8743405 -0.17277339 0.050450958 6.8743405 -0.17277339;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube25" -p "pCube10";
	rename -uid "988E4AA7-4EBD-D17F-9AC4-7996577D7F5F";
	setAttr ".rp" -type "double3" 0 6.7254009246826172 0.67277342081069946 ;
	setAttr ".sp" -type "double3" 0 6.7254009246826172 0.67277342081069946 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "DA7C1777-493A-B0A1-BF66-7494D75D20A7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.79708159 0 1.3455467 -0.79708159 
		0 1.3455467 0.79708159 0 1.3455467 -0.79708159 0 1.3455467 0.75184745 -0.036316253 
		4.0665417 -0.75184745 -0.036316253 4.0665417 0.75184745 0.036316253 4.0665417 -0.75184745 
		0.036316253 4.0665417;
	setAttr -s 8 ".vt[0:7]"  -0.55045098 6.52739382 -0.67277336 0.55045098 6.52739382 -0.67277336
		 -0.55045098 6.92340851 -0.67277336 0.55045098 6.92340851 -0.67277336 -0.55045098 6.92340851 -2.033270836
		 0.55045098 6.92340851 -2.033270836 -0.55045098 6.52739382 -2.033270836 0.55045098 6.52739382 -2.033270836;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube13" -p "pCube25";
	rename -uid "929B9D01-4BE6-41A0-9B3D-A6A1D9094FD9";
	setAttr ".rp" -type "double3" -1.6661288776031747e-16 6.7605136888026669 2.0332708954811096 ;
	setAttr ".sp" -type "double3" -1.6661288776031747e-16 6.7605136888026669 2.0332708954811096 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	rename -uid "65A38967-4E95-FA5C-3C65-49BC9B69E68F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.64124846 -0.025201881 4.0665417 
		-0.73304892 -0.025201881 4.0665417 0.64124846 -0.025201881 4.0665417 -0.73304892 
		-0.025201881 4.0665417 0.61226571 -0.0043278518 6.6160665 -0.70406616 -0.0043278518 
		6.6160665 0.61226571 0.09990228 6.6160665 -0.70406616 0.09990228 6.6160665;
	setAttr -s 8 ".vt[0:7]"  -0.45865053 6.59068251 -2.033270836 0.55045098 6.59068251 -2.033270836
		 -0.45865053 6.90124273 -2.033270836 0.55045098 6.90124273 -2.033270836 -0.45865053 6.90124273 -3.30803323
		 0.55045098 6.90124273 -3.30803323 -0.45865053 6.59068251 -3.30803323 0.55045098 6.59068251 -3.30803323;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig13" -p "pCube13";
	rename -uid "73280B34-4C78-71F6-5785-579E365B313A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube30" -p "pCube13";
	rename -uid "073C965A-4630-B4AD-969F-BCA2F28087D3";
	setAttr ".rp" -type "double3" -3.2272625606933656e-16 6.8073307076294007 3.308033287525177 ;
	setAttr ".sp" -type "double3" -3.2272625606933656e-16 6.8073307076294007 3.308033287525177 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	rename -uid "68A87C88-4966-E62E-25D9-E0BE7F3B6153";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.7254895 0.0084959073 6.616066 
		-0.81728995 0.0084959073 6.616066 0.7254895 0.0084959073 6.616066 -0.81728995 0.0084959073 
		6.616066 0.7254895 0.0084959073 7.6642046 -0.81728995 0.0084959073 7.6642046 0.7254895 
		0.0084959073 7.6642046 -0.81728995 0.0084959073 7.6642046;
	setAttr -s 8 ".vt[0:7]"  -0.45865053 6.70773745 -3.30803299 0.55045098 6.70773745 -3.30803299
		 -0.45865053 6.88993263 -3.30803299 0.55045098 6.88993263 -3.30803299 -0.45865053 6.88993263 -3.83210206
		 0.55045098 6.88993263 -3.83210206 -0.45865053 6.70773745 -3.83210206 0.55045098 6.70773745 -3.83210206;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig30" -p "pCube30";
	rename -uid "3232087B-4507-0730-4F40-218BE442DFC4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube28" -p "pCube30";
	rename -uid "429E8CF0-4809-3A51-9EA0-28A14D18AF87";
	setAttr ".rp" -type "double3" -3.869062070800356e-16 6.7956264529227166 3.832102358341217 ;
	setAttr ".sp" -type "double3" -3.869062070800356e-16 6.7956264529227166 3.832102358341217 ;
createNode mesh -n "pCubeShape28" -p "pCube28";
	rename -uid "4B500B64-4F2C-3DBF-002E-E69B325EE98E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.71707702 -0.01789541 7.6642041 
		-0.80887747 -0.01789541 7.6642041 0.71707702 -0.01789541 7.6642041 -0.80887747 -0.01789541 
		7.6642041 0.71707702 -0.01789541 8.1882725 -0.80887747 -0.01789541 8.1882725 0.71707702 
		-0.01789541 8.1882725 -0.80887747 -0.01789541 8.1882725;
	setAttr -s 8 ".vt[0:7]"  -0.45865053 6.74278069 -3.83210182 0.55045098 6.74278069 -3.83210182
		 -0.45865053 6.88426304 -3.83210182 0.55045098 6.88426304 -3.83210182 -0.45865053 6.88426304 -4.094136238
		 0.55045098 6.88426304 -4.094136238 -0.45865053 6.74278069 -4.094136238 0.55045098 6.74278069 -4.094136238;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig28" -p "pCube28";
	rename -uid "F53A61D8-4041-608C-5A91-519D43C9C6E4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube31" -p "pCube28";
	rename -uid "D2C0542F-4471-3376-9243-55A3CA2B16DC";
	setAttr ".rp" -type "double3" -4.1899610959074775e-16 6.8044046439527293 4.0941362977027893 ;
	setAttr ".sp" -type "double3" -4.1899610959074775e-16 6.8044046439527293 4.0941362977027893 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	rename -uid "461D10A8-47CC-0E77-E614-6CBC4951967D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.65549779 -0.0091172177 
		8.1882725 -0.80402917 -0.0091172177 8.1882725 0.65549779 -0.0091172177 8.1882725 
		-0.80402917 -0.0091172177 8.1882725 0.65549779 -0.0091172177 8.6828785 -0.80402917 
		-0.0091172177 8.6828785 0.65549779 -0.0091172177 8.6828785 -0.80402917 -0.0091172177 
		8.6828785;
	setAttr -s 8 ".vt[0:7]"  -0.4019196 6.74972486 -4.094136238 0.55045098 6.74972486 -4.094136238
		 -0.4019196 6.87731886 -4.094136238 0.55045098 6.87731886 -4.094136238 -0.4019196 6.87731886 -4.34143925
		 0.55045098 6.87731886 -4.34143925 -0.4019196 6.74972486 -4.34143925 0.55045098 6.74972486 -4.34143925;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig31" -p "pCube31";
	rename -uid "F1310DB3-4676-6F43-042A-949BFB8661C8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26" -p "pCube31";
	rename -uid "D728DC00-40D6-8EB1-860F-639962CCC9EE";
	setAttr ".rp" -type "double3" -4.4928199343394989e-16 6.8073307076293998 4.3414393067359924 ;
	setAttr ".sp" -type "double3" -4.4928199343394989e-16 6.8073307076293998 4.3414393067359924 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "149E8BD6-4930-E9E8-0DA0-3E99502C5DD6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.51038492 -0.0061911545 
		8.6828785 -0.78374928 -0.0061911545 8.6828785 0.51038492 -0.0061911545 8.6828785 
		-0.78374928 -0.0061911545 8.6828785 0.51038492 -0.0061911545 9.141305 -0.78374928 
		-0.0061911545 9.141305 0.51038492 -0.0061911545 9.141305 -0.78374928 -0.0061911545 
		9.141305;
	setAttr -s 8 ".vt[0:7]"  -0.27708662 6.75808716 -4.34143925 0.55045098 6.75808716 -4.34143925
		 -0.27708662 6.86895657 -4.34143925 0.55045098 6.86895657 -4.34143925 -0.27708662 6.86895657 -4.57065248
		 0.55045098 6.86895657 -4.57065248 -0.27708662 6.75808716 -4.57065248 0.55045098 6.75808716 -4.57065248;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig26" -p "pCube26";
	rename -uid "E3D048CD-4947-9BD5-B711-E5A784E2C66B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube29" -p "pCube30";
	rename -uid "00D9B3E1-4848-1859-A48F-78BACCB775AB";
	setAttr ".rp" -type "double3" 0.2668389379978181 6.8073307076294007 3.308033287525177 ;
	setAttr ".sp" -type "double3" 0.26683893799781949 6.8073307076294007 3.308033287525177 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "AB8CD3F0-4EF6-265A-E02E-D695F6C3D45D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.84842259 0.035828792 6.616066 
		-0.28361204 0.035828792 6.616066 0.84842259 -0.018837061 6.616066 -0.28361204 -0.018837061 
		6.616066 0.84842259 -0.018837061 7.6642046 -0.28361204 -0.018837061 7.6642046 0.84842259 
		0.035828792 7.6642046 -0.28361204 0.035828792 7.6642046;
	setAttr -s 8 ".vt[0:7]"  -0.45865053 6.70773745 -3.30803299 0.55045098 6.70773745 -3.30803299
		 -0.45865053 6.88993263 -3.30803299 0.55045098 6.88993263 -3.30803299 -0.45865053 6.88993263 -3.83210206
		 0.55045098 6.88993263 -3.83210206 -0.45865053 6.70773745 -3.83210206 0.55045098 6.70773745 -3.83210206;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig29" -p "pCube29";
	rename -uid "F5288297-4072-19A2-A628-8F9EE62ED9CA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12" -p "pCube10";
	rename -uid "13DA2D51-4140-8336-9A2B-F6BE98067AD7";
	setAttr ".rp" -type "double3" 0 6.7254009246826172 -0.67277336120605469 ;
	setAttr ".sp" -type "double3" 0 6.7254009246826172 -0.67277336120605469 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "02A79DC2-4D9B-6AD5-37A9-AD8956B8DE64";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster1_1";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "cluster6";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.30382037 0 0 -0.30382037 
		0 0 0.30382037 0 0 -0.30382037 0 0 0.34905452 -0.036316253 0 -0.34905452 -0.036316253 
		0 0.34905452 0.036316253 0 -0.34905452 0.036316253 0;
	setAttr -s 8 ".vt[0:7]"  -0.55045098 6.52739382 -0.67277336 0.55045098 6.52739382 -0.67277336
		 -0.55045098 6.92340851 -0.67277336 0.55045098 6.92340851 -0.67277336 -0.55045098 6.92340851 -2.033270836
		 0.55045098 6.92340851 -2.033270836 -0.55045098 6.52739382 -2.033270836 0.55045098 6.52739382 -2.033270836;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube27" -p "pCube12";
	rename -uid "5EDA812F-49B0-960D-2C33-FFA1661B726F";
	setAttr ".rp" -type "double3" 0 6.7605136888026669 -2.0332708358764648 ;
	setAttr ".sp" -type "double3" 0 6.7605136888026669 -2.0332708358764648 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "7BD97DCF-44A3-7B51-2A4D-DBA852CB4F14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.27605262 -0.025201881 0 
		-0.36785308 -0.025201881 0 0.27605262 -0.025201881 0 -0.36785308 -0.025201881 0 0.30503538 
		-0.0043278518 0 -0.39683583 -0.0043278518 0 0.30503538 0.09990228 0 -0.39683583 0.09990228 
		0;
	setAttr -s 8 ".vt[0:7]"  -0.45865053 6.59068251 -2.033270836 0.55045098 6.59068251 -2.033270836
		 -0.45865053 6.90124273 -2.033270836 0.55045098 6.90124273 -2.033270836 -0.45865053 6.90124273 -3.30803323
		 0.55045098 6.90124273 -3.30803323 -0.45865053 6.59068251 -3.30803323 0.55045098 6.59068251 -3.30803323;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig27" -p "pCube27";
	rename -uid "7BCAA90D-48D1-53BF-A0E7-A2BDF01B6902";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube23" -p "pCube27";
	rename -uid "619B768B-4799-1B68-9BFA-709F70E89857";
	setAttr ".rp" -type "double3" 0 6.8073307076294007 -3.3080332279205322 ;
	setAttr ".sp" -type "double3" 0 6.8073307076294007 -3.3080332279205322 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "7C10B67C-453F-5116-F052-E0925A6F477B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.19181159 0.0084959073 -2.3841858e-07 
		-0.28361204 0.0084959073 -2.3841858e-07 0.19181159 0.0084959073 -2.3841858e-07 -0.28361204 
		0.0084959073 -2.3841858e-07 0.19181159 0.0084959073 -2.3841858e-07 -0.28361204 0.0084959073 
		-2.3841858e-07 0.19181159 0.0084959073 -2.3841858e-07 -0.28361204 0.0084959073 -2.3841858e-07;
	setAttr -s 8 ".vt[0:7]"  -0.45865053 6.70773745 -3.30803299 0.55045098 6.70773745 -3.30803299
		 -0.45865053 6.88993263 -3.30803299 0.55045098 6.88993263 -3.30803299 -0.45865053 6.88993263 -3.83210206
		 0.55045098 6.88993263 -3.83210206 -0.45865053 6.70773745 -3.83210206 0.55045098 6.70773745 -3.83210206;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig23" -p "pCube23";
	rename -uid "84FEC089-48AA-D72A-BD6B-D9A935753F68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube21" -p "pCube23";
	rename -uid "421DBF47-4F52-89B2-D7BB-E29359464CED";
	setAttr ".rp" -type "double3" 0 6.7956264529227166 -3.8321022987365723 ;
	setAttr ".sp" -type "double3" 0 6.7956264529227166 -3.8321022987365723 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "F9B67CBB-4FF0-E288-1A3E-E986C11E1C9A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.20022403 -0.01789541 -4.7683716e-07 
		-0.29202449 -0.01789541 -4.7683716e-07 0.20022403 -0.01789541 -4.7683716e-07 -0.29202449 
		-0.01789541 -4.7683716e-07 0.20022403 -0.01789541 -4.7683716e-07 -0.29202449 -0.01789541 
		-4.7683716e-07 0.20022403 -0.01789541 -4.7683716e-07 -0.29202449 -0.01789541 -4.7683716e-07;
	setAttr -s 8 ".vt[0:7]"  -0.45865053 6.74278069 -3.83210182 0.55045098 6.74278069 -3.83210182
		 -0.45865053 6.88426304 -3.83210182 0.55045098 6.88426304 -3.83210182 -0.45865053 6.88426304 -4.094136238
		 0.55045098 6.88426304 -4.094136238 -0.45865053 6.74278069 -4.094136238 0.55045098 6.74278069 -4.094136238;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig21" -p "pCube21";
	rename -uid "AD1A9E82-44DE-076F-F2CD-4B8B5D9B0791";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube16" -p "pCube21";
	rename -uid "ECF67DC6-4E14-B97F-83C4-1F9AA515C3B4";
	setAttr ".rp" -type "double3" 0 6.8044046439527293 -4.0941362380981445 ;
	setAttr ".sp" -type "double3" 0 6.8044046439527293 -4.0941362380981445 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "641E721E-4905-CFB8-8FF4-0EA03AC55A86";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.14834142 -0.0091172177 
		0 -0.29687279 -0.0091172177 0 0.14834142 -0.0091172177 0 -0.29687279 -0.0091172177 
		0 0.14834142 -0.0091172177 0 -0.29687279 -0.0091172177 0 0.14834142 -0.0091172177 
		0 -0.29687279 -0.0091172177 0;
	setAttr -s 8 ".vt[0:7]"  -0.4019196 6.74972486 -4.094136238 0.55045098 6.74972486 -4.094136238
		 -0.4019196 6.87731886 -4.094136238 0.55045098 6.87731886 -4.094136238 -0.4019196 6.87731886 -4.34143925
		 0.55045098 6.87731886 -4.34143925 -0.4019196 6.74972486 -4.34143925 0.55045098 6.74972486 -4.34143925;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig16" -p "pCube16";
	rename -uid "5481B7A4-49F2-3B49-A180-3B9849BCEEBF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube22" -p "pCube16";
	rename -uid "0571E3FF-47DA-F3AF-4E5B-E38D8497924B";
	setAttr ".rp" -type "double3" 0 6.8073307076293998 -4.3414392471313477 ;
	setAttr ".sp" -type "double3" 0 6.8073307076293998 -4.3414392471313477 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "7C5DA710-4289-0B5B-2C77-569E163AA50F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster5";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.043788329 -0.0061911545 
		0 -0.31715268 -0.0061911545 0 0.043788329 -0.0061911545 0 -0.31715268 -0.0061911545 
		0 0.043788329 -0.0061911545 0 -0.31715268 -0.0061911545 0 0.043788329 -0.0061911545 
		0 -0.31715268 -0.0061911545 0;
	setAttr -s 8 ".vt[0:7]"  -0.27708662 6.75808716 -4.34143925 0.55045098 6.75808716 -4.34143925
		 -0.27708662 6.86895657 -4.34143925 0.55045098 6.86895657 -4.34143925 -0.27708662 6.86895657 -4.57065248
		 0.55045098 6.86895657 -4.57065248 -0.27708662 6.75808716 -4.57065248 0.55045098 6.75808716 -4.57065248;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig22" -p "pCube22";
	rename -uid "B360A54B-45EB-DCA8-7FE2-31A766DFA951";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube24" -p "pCube23";
	rename -uid "7D3E2CB9-4913-9265-DA85-E29629D54561";
	setAttr ".rp" -type "double3" 0.26683896780014033 6.8073307076294007 -3.3080332279205322 ;
	setAttr ".sp" -type "double3" 0.26683896780013894 6.8073307076294007 -3.3080332279205322 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "57261329-4CB1-7E71-13A2-F88CD9E38996";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.7254895 0.035828792 -2.3841858e-07 
		-0.16067889 0.035828792 -2.3841858e-07 0.7254895 -0.018837061 -2.3841858e-07 -0.16067889 
		-0.018837061 -2.3841858e-07 0.7254895 -0.018837061 -2.3841858e-07 -0.16067889 -0.018837061 
		-2.3841858e-07 0.7254895 0.035828792 -2.3841858e-07 -0.16067889 0.035828792 -2.3841858e-07;
	setAttr -s 8 ".vt[0:7]"  -0.45865053 6.70773745 -3.30803299 0.55045098 6.70773745 -3.30803299
		 -0.45865053 6.88993263 -3.30803299 0.55045098 6.88993263 -3.30803299 -0.45865053 6.88993263 -3.83210206
		 0.55045098 6.88993263 -3.83210206 -0.45865053 6.70773745 -3.83210206 0.55045098 6.70773745 -3.83210206;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pCubeShape12Orig24" -p "pCube24";
	rename -uid "48AAB039-48BA-E3D5-ECD7-83B6D3B95731";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "vtx[1]" "vtx[3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11" -p "pCube10";
	rename -uid "1A9B08FE-4F11-D416-598A-489DEFC37235";
	setAttr ".rp" -type "double3" 0 7.0107932090759277 0 ;
	setAttr ".sp" -type "double3" 0 7.0107932090759268 0 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "423D78EA-4659-AEB8-ED75-32AE0E37FD9B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.37578279 7.5107932 -0.3726714 
		-0.37578279 7.5107932 -0.3726714 0.37578279 6.9280233 -0.3726714 -0.37578279 6.9280233 
		-0.3726714 0.37578279 6.9280233 0.3726714 -0.37578279 6.9280233 0.3726714 0.37578279 
		7.5107932 0.3726714 -0.37578279 7.5107932 0.3726714;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1" -p "pCube11";
	rename -uid "7A984B0F-4BFB-5CC0-407D-FCBE64F6809F";
	setAttr ".rp" -type "double3" 0 7.4280228614807129 0 ;
	setAttr ".sp" -type "double3" 0 7.428022861480712 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "70735BEE-44BF-069A-01AF-B1AEF6D8E0F7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.050450958 7.9280229 0.050450958 
		0.050450958 7.9280229 0.050450958 -0.050450958 8.0289249 0.050450958 0.050450958 
		8.0289249 0.050450958 -0.050450958 8.0289249 -0.050450958 0.050450958 8.0289249 -0.050450958 
		-0.050450958 7.9280229 -0.050450958 0.050450958 7.9280229 -0.050450958;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	rename -uid "867263C0-484C-2D59-2358-72BBA6EE7D23";
	setAttr ".rp" -type "double3" 0 4.5562219619750977 0 ;
	setAttr ".sp" -type "double3" 0 4.5562219619750968 0 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "300A5EC4-48E3-7128-AC87-5C9E8FB80EF1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.097527929 5.056222 -0.027179707 
		-0.097527929 5.056222 -0.027179707 -0.050450958 4.655602 0.050450958 0.050450958 
		4.655602 0.050450958 -0.050450958 4.655602 -0.050450958 0.050450958 4.655602 -0.050450958 
		0.097527929 5.056222 0.027179707 -0.097527929 5.056222 0.027179707;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube32" -p "pCube8";
	rename -uid "3CD378D5-43CB-FD1E-C6AD-7CAD360F9279";
	setAttr ".rp" -type "double3" 0 4.5562219619750977 0.25468989945135134 ;
	setAttr ".sp" -type "double3" 0 4.5562219619750977 0.25468989945135134 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	rename -uid "6CF280FF-4F84-FF3E-B402-70973D1C720B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.51409924 0 0 0.51409924 
		0 0 0.51409924 0 0 0.51409924 0 0 0.51409924 0 0 0.51409924 0 0 0.51409924 0 0 0.51409924;
	setAttr -s 8 ".vt[0:7]"  -0.22123086 2.4730835 -0.067318618 0.3294394 2.4730835 -0.067318618
		 -0.3636502 4.55622196 -0.067318618 0.3636502 4.55622196 -0.067318618 -0.3636502 4.55622196 -0.45150009
		 0.3636502 4.55622196 -0.45150009 -0.22123086 2.4730835 -0.45150009 0.3294394 2.4730835 -0.45150009;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube33" -p "pCube32";
	rename -uid "C8D37473-407D-F214-23E1-D382857E8679";
	setAttr ".rp" -type "double3" 0 2.47308349609375 0.26284464932165164 ;
	setAttr ".sp" -type "double3" 0 2.47308349609375 0.26284464932165164 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	rename -uid "BEF75905-48BC-6FD3-354F-29ADA4A3D27E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.51409924 0 0 0.51409924 
		0 0 0.51409924 0 0 0.51409924 0 0 0.51409924 0 0 0.51409924 0 0 0.51409924 0 0 0.51409924;
	setAttr -s 8 ".vt[0:7]"  -0.50467706 0.43728393 -0.069584727 -0.20218617 0.43728393 -0.069584727
		 -0.33957916 2.4730835 -0.069584727 0.33957916 2.4730835 -0.069584727 -0.33957916 2.4730835 -0.43292448
		 0.33957916 2.4730835 -0.43292448 -0.50467706 0.43728393 -0.43292448 -0.20218617 0.43728393 -0.43292448;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube34" -p "pCube33";
	rename -uid "00506195-42D8-9B7C-BAE8-478A0E939E0B";
	setAttr ".rp" -type "double3" -0.35343161225318909 0.43728393316268921 0.26284464932165164 ;
	setAttr ".sp" -type "double3" -0.35343161225318909 0.43728393316268921 0.26284464932165164 ;
createNode mesh -n "pCubeShape34" -p "pCube34";
	rename -uid "62E07791-4E5B-C579-80EC-EE8D03445F17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 -0.061374485 0 0.50000024 
		-0.092082679 0 -0.062716067 -0.061374485 0 -0.25744054 -0.092082679 0 -0.062716067 
		0.57528579 0 -0.25744054 0.60599428 0 0.5 0.57528579 0 0.50000024 0.60599428;
	setAttr -av ".pt[1].px";
	setAttr -av ".pt[1].py";
	setAttr -av ".pt[1].pz";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "pCube8";
	rename -uid "86BE5D71-4031-5F60-AEED-ADA7DE2D37F5";
	setAttr ".rp" -type "double3" 0 4.5562219619750977 -0.25940936803817749 ;
	setAttr ".sp" -type "double3" 0 4.5562219619750977 -0.25940936803817749 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "EA5D6592-4F0C-B296-7876-7D9055D0635D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.22123086 2.4730835 -0.067318618 0.3294394 2.4730835 -0.067318618
		 -0.3636502 4.55622196 -0.067318618 0.3636502 4.55622196 -0.067318618 -0.3636502 4.55622196 -0.45150009
		 0.3636502 4.55622196 -0.45150009 -0.22123086 2.4730835 -0.45150009 0.3294394 2.4730835 -0.45150009;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "pCube6";
	rename -uid "0011BC8F-41B6-075D-6FA1-B080A8B20AF0";
	setAttr ".rp" -type "double3" 0 2.47308349609375 -0.2512546181678772 ;
	setAttr ".sp" -type "double3" 0 2.47308349609375 -0.2512546181678772 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "E235A51E-49D8-3D36-6144-DF814004E563";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.50467706 0.43728393 -0.069584727 -0.20218617 0.43728393 -0.069584727
		 -0.33957916 2.4730835 -0.069584727 0.33957916 2.4730835 -0.069584727 -0.33957916 2.4730835 -0.43292448
		 0.33957916 2.4730835 -0.43292448 -0.50467706 0.43728393 -0.43292448 -0.20218617 0.43728393 -0.43292448;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "pCube5";
	rename -uid "CE404688-45FE-0520-BE39-AB9AAE73BB96";
	setAttr ".rp" -type "double3" -0.35343161225318909 0.43728393316268921 -0.2512546181678772 ;
	setAttr ".sp" -type "double3" -0.35343161225318909 0.43728393316268921 -0.2512546181678772 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "08BFF119-458A-B086-8E35-518E4ED17D53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.5 -0.57547373 0 0.50000024 
		-0.57547361 0 -0.062716067 -0.57547373 0 -0.06271603 -0.57547361 0 -0.062716067 0.061186548 
		0 -0.06271603 0.061186574 0 0.5 0.061186548 0 0.50000024 0.061186574;
	setAttr -s 4 ".pt";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2C10C327-4A8C-9896-03C3-8486D42FABE7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B366DB41-4CEF-3647-7816-2CB4C37D2E06";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AEAF0889-4135-2E66-BFC8-C991E70B3317";
createNode displayLayerManager -n "layerManager";
	rename -uid "3BB01C7D-4904-12A6-CC77-EB903E2C8076";
createNode displayLayer -n "defaultLayer";
	rename -uid "B5576FB7-40DE-DA41-F6B9-E28EFAB10A2E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "76E2C2EF-4B34-8200-AFBB-1AABDE60A373";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "49677D3C-4888-3AE9-2100-6F897D173A7A";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "17979436-4AFB-E25F-D01D-88BC210BD22A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 689\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 689\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 689\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "46AA521F-413E-4605-9DA9-8F97AB3233FE";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast -4 -aet 24 ";
	setAttr ".st" 6;
createNode animCurveTL -n "pCubeShape2_pnts_1__pntx";
	rename -uid "151A1DA6-4671-A068-125E-1F9ECBD038C9";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_1__pnty";
	rename -uid "0C0231B6-4701-815B-D3D9-D49E54228F99";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5000002384185791;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_1__pntz";
	rename -uid "13949533-4C1E-14D4-891B-0D816527C812";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.5754736065864563;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_3__pntx";
	rename -uid "2635D154-4045-D475-39CB-0B84F2FA0A94";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_3__pnty";
	rename -uid "45EAAC89-4B64-1EFD-F19D-98891AD11518";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.062716029584407806;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_3__pntz";
	rename -uid "08DEDE7C-42EF-82C2-D7B1-69ABB03DF8BF";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.5754736065864563;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_5__pntx";
	rename -uid "0C20E754-43D8-85F0-7FED-7F865190B88D";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_5__pnty";
	rename -uid "3838AF35-4F9A-FA4D-EC39-648D1F557030";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.062716029584407806;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_5__pntz";
	rename -uid "1854338D-47EB-8D02-A619-579E36EF3BB9";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.061186574399471283;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_7__pntx";
	rename -uid "6B39D661-4D10-BEAD-82B2-B6AD181B3C8A";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_7__pnty";
	rename -uid "F97E45B6-4E1E-DD51-502A-4F8EE4F92878";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5000002384185791;
	setAttr ".kot[0]"  9;
createNode animCurveTL -n "pCubeShape2_pnts_7__pntz";
	rename -uid "0F70B752-4674-C1A8-8497-7E9E669408A2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.061186574399471283;
	setAttr ".kot[0]"  9;
createNode animCurveTU -n "pCube6_visibility";
	rename -uid "4983ADE2-4921-D46B-BE7D-AD8C1C8D1F63";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube6_translateX";
	rename -uid "0136218B-42D7-0E7D-416B-D4A8E32A619F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube6_translateY";
	rename -uid "8ED5687C-4A57-0137-FD79-2F8817353AD1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube6_translateZ";
	rename -uid "D85A800A-47A4-89C4-0EA7-41ACC5C34126";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube6_rotateX";
	rename -uid "A1564244-46D9-C2B9-837F-D9B2B21FECF0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube6_rotateY";
	rename -uid "1D47BC04-4BEF-73B3-93D5-8CBBA08EC500";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube6_rotateZ";
	rename -uid "458857F5-4BAE-4C99-EBB4-38BA7446262A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -24.753861415807446 6 6.0725902392442785
		 12 43.294963087399225 18 0.0086313289628500676 25 -24.753861415807446;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube6_scaleX";
	rename -uid "7E30EF78-43FE-9BB6-F080-FD9B21326CDA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube6_scaleY";
	rename -uid "49A059E6-47C3-1880-066A-AB8ECB27FBC1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube6_scaleZ";
	rename -uid "B95CEE63-467D-6C17-EA8F-FDAE828F3CCE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube32_visibility";
	rename -uid "D55309FD-4AF5-A7E6-9B80-19B230AF054F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube32_translateX";
	rename -uid "16818068-478B-2967-2869-3887353DCF23";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube32_translateY";
	rename -uid "B43A00B8-49E0-91F3-2878-E19DB3E8982F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube32_translateZ";
	rename -uid "FA857D3B-41C1-D7F1-62FA-7583991C3581";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube32_rotateX";
	rename -uid "2F651950-42C0-B016-182E-27983BF1CE69";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube32_rotateY";
	rename -uid "4DCF4BC9-48B0-27CE-027A-B1A0461679A3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube32_rotateZ";
	rename -uid "476CA258-4C1F-1943-7047-33A02781BAEA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.194259639899542 6 -0.28843456826361796
		 12 -25.410138659375676 18 1.6026498892335888 25 38.194259639899542;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube32_scaleX";
	rename -uid "F50EBA96-4CB9-D632-ED4A-839F51F4F2AC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube32_scaleY";
	rename -uid "427A89A0-4C93-E6CE-B8F4-989BD546B8C8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube32_scaleZ";
	rename -uid "FFE0D7B1-4173-64AB-FE1A-9888DAA6EF01";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube10_visibility";
	rename -uid "85A31780-47DA-5DA5-106E-63A163892FD0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube10_translateX";
	rename -uid "C5711127-484A-CAA7-7434-91A064AB73F8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube10_translateY";
	rename -uid "A3C5069C-4B51-5A3F-DEEB-D7AEB43B1250";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube10_translateZ";
	rename -uid "633D9265-49C1-2B32-FF2B-C1BC3CE1311B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube10_rotateX";
	rename -uid "65E726AC-4442-C1A5-6390-418907F09773";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube10_rotateY";
	rename -uid "BC47406C-4BC4-A66D-577E-82BF0220ED7E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube10_rotateZ";
	rename -uid "F505A21A-4E4B-A82E-68AD-0796779C3B21";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube10_scaleX";
	rename -uid "6072521F-463F-3EC3-BC75-FA8150D674F0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube10_scaleY";
	rename -uid "39E1BCCA-4A2E-1196-A18E-3B8B9597F39C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube10_scaleZ";
	rename -uid "9354083B-42E6-E3C4-BFDD-9C8095670C72";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube5_visibility";
	rename -uid "4C393849-49B4-7460-6BD6-F38B51DDE61F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube5_translateX";
	rename -uid "B0F1E933-45C9-7630-0E56-55B5ADA38FBF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube5_translateY";
	rename -uid "11898183-4016-9562-78D7-E5BEB7C08563";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube5_translateZ";
	rename -uid "5032392D-46AC-ED40-1239-60AF37F9A6DC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube5_rotateX";
	rename -uid "C7DF8208-448F-2029-D47F-3592310EAD0F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube5_rotateY";
	rename -uid "7550BB64-420E-BE28-B391-3AA20E11029A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube5_rotateZ";
	rename -uid "9A1D83EB-4AF1-32D9-E0B4-5A8B42C218B2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.814428965978697 6 -79.263348728361706
		 12 -23.074400033098311 18 -6.2896683774420445 25 -3.814428965978697;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube5_scaleX";
	rename -uid "2D8C594A-40B7-34C2-D97A-388DD1D371E9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube5_scaleY";
	rename -uid "DBDB0952-4663-157D-5EDD-3BAD4D148A48";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube5_scaleZ";
	rename -uid "00296BFA-4A14-CF25-87FA-E4A5E170DE69";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "8BABD433-4306-56C0-B68B-22B7AE0AC1B5";
	setAttr ".cuv" 2;
createNode animCurveTU -n "pCube2_visibility";
	rename -uid "32E36E03-41DF-7071-2A2D-03A04C5B8E1A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube2_translateX";
	rename -uid "20DF3C8C-42CF-7BBE-2E3A-3D97148DFA6E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube2_translateY";
	rename -uid "018B3342-4D72-87E9-4B3D-7B8C868383BD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube2_translateZ";
	rename -uid "B428EF66-4055-71D1-694F-DEB52CB8D1AB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube2_rotateX";
	rename -uid "41BEC69F-40E6-514D-4FED-A3B5926FF267";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube2_rotateY";
	rename -uid "65BDB211-4B1B-F947-8991-49A24C2A9D35";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube2_rotateZ";
	rename -uid "ADBBC84F-4487-0B77-8D35-D0B796964565";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.469938242403632 6 16.419821854664978
		 12 -19.937043637538817 18 5.9225185903177797 25 27.469938242403632;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube2_scaleX";
	rename -uid "E264CABE-41DF-1353-4A64-3B8B8AA261F5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube2_scaleY";
	rename -uid "412E2D15-41D6-7FE2-9FB0-5193BBA10902";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube2_scaleZ";
	rename -uid "97FD3AE4-4A53-16EC-0D45-FDA6560FC81A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube34_visibility";
	rename -uid "7FE1C746-4370-6C79-7775-0CB1E462FE71";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube34_translateX";
	rename -uid "749AA745-4AA2-28D5-C52A-BCBAD9EBBB8D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube34_translateY";
	rename -uid "8D3C3AC7-475B-158B-9F38-1392C7AE8F05";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube34_translateZ";
	rename -uid "8B9A20B8-4A65-605E-9089-3BB7C82652AA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube34_rotateX";
	rename -uid "A5453706-46B6-92D1-A523-8BBCD69EAEE2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube34_rotateY";
	rename -uid "4996C630-4704-DE87-5BB6-2EA6B8BBEFE3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube34_rotateZ";
	rename -uid "B7859226-4A41-EA2A-EF05-91B78CD904E9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -32.804481763574806 6 6.2737940135095744
		 12 24.951769793679681 18 23.587683515981631 25 -32.804481763574806;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube34_scaleX";
	rename -uid "706948E0-4976-A94B-BE11-29990F07133C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube34_scaleY";
	rename -uid "9164FA13-4ECC-B2A5-1180-75A755EE7178";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube34_scaleZ";
	rename -uid "10903868-422A-F951-8888-D699BB643510";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube33_visibility";
	rename -uid "D799473D-4A6B-7226-DB75-6E9E85B72FC5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 12 1 18 1 25 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "pCube33_translateX";
	rename -uid "5A5762AD-4F9E-2193-1055-378D4580B64A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 18 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "pCube33_translateY";
	rename -uid "E0D4210C-4321-0D92-05CA-DE859C431619";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 18 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "pCube33_translateZ";
	rename -uid "441B0E92-4A1E-96E0-1189-3BA791CA2B23";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 18 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "pCube33_rotateX";
	rename -uid "CCE84F60-4253-E990-6167-BAAC2F289FEB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 18 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "pCube33_rotateY";
	rename -uid "04B77DDA-4912-9163-DA2A-DCADE2B890AF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 18 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "pCube33_rotateZ";
	rename -uid "A2FFF6DF-4F9C-0485-8A95-DB871AA263EB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.2577394200450396 12 -0.94069004963637592
		 18 -71.979677305736331 25 -5.2577394200450396;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTU -n "pCube33_scaleX";
	rename -uid "D6D2FE7D-4771-EDB5-553D-C8A992EBA97D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 12 1 18 1 25 1;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTU -n "pCube33_scaleY";
	rename -uid "AD7C7DA5-45E2-07D4-65C2-1ABB63623814";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 12 1 18 1 25 1;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTU -n "pCube33_scaleZ";
	rename -uid "468E8EF1-4844-66E6-8FDD-61B85017D372";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 12 1 18 1 25 1;
	setAttr -s 4 ".kit[0:3]"  3 3 3 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTU -n "pCube25_visibility";
	rename -uid "09695314-4D9B-B77E-FC69-91963D82657B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube25_translateX";
	rename -uid "19CFA01E-413F-1EDC-B7D3-FA92C34978F0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube25_translateY";
	rename -uid "56AABB62-4AFC-9C60-9DD4-0C859486B8C4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube25_translateZ";
	rename -uid "37DE8093-4627-A8BF-749F-068AB07490D7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube25_rotateX";
	rename -uid "129E8D79-4BB1-A3F4-58C0-08A80C9AB706";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 85.508541836480333 6 83.932321611914844
		 12 84.468929259647069 18 83.706227537717808 25 85.508541836480333;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube25_rotateY";
	rename -uid "21EC68EA-4B07-B825-224F-BA88B5BA81E3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.4906838526861348 6 -1.8693446098072617
		 12 3.1201954657767401 18 -0.83024036705972448 25 -4.4906838526861348;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube25_rotateZ";
	rename -uid "CE53C2A6-4F0C-3369-AC38-50996D5E0BF3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -44.906958593370184 6 -17.059957676908589
		 12 29.33990719401195 18 -7.4845950776749897 25 -44.906958593370184;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube25_scaleX";
	rename -uid "A12A9A75-40EA-5D1D-E9CC-93B45E688C09";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube25_scaleY";
	rename -uid "62519CE4-4C79-67E8-D2CD-75AE7E8CF129";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube25_scaleZ";
	rename -uid "90755AEC-4D40-74C9-EAC9-BC90CA485523";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube12_visibility";
	rename -uid "CEDB2FEC-460A-4390-08E6-3E9ABB4ADC9E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube12_translateX";
	rename -uid "E2705407-446D-A96A-4E1B-3A8AE0409860";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube12_translateY";
	rename -uid "F877F707-4093-96AB-02DA-6A88B08206AB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube12_translateZ";
	rename -uid "30102559-4625-9136-3040-018843315186";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube12_rotateX";
	rename -uid "3F9F9D2E-48E4-347B-550B-69A67B0BDFD4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -79.680198817664035 6 -78.321758038701574
		 12 -80.277872582693732 18 -78.592956342710266 25 -79.680198817664035;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube12_rotateY";
	rename -uid "7C2753BD-4937-A25F-506A-5FA5EE9939B8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.7012372058709513 6 1.5167499023931434
		 12 6.6752541376547114 18 2.9400340660696456 25 -5.7012372058709513;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube12_rotateZ";
	rename -uid "0E0C4ECA-4DDA-BFA1-84E6-FC96CFDD6F27";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.615455261344248 6 -7.2975647532429004
		 12 -34.155504922780857 18 -14.263179533021544 25 28.615455261344248;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube12_scaleX";
	rename -uid "CA562A71-4C50-E5C4-2461-F2A2307C7291";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube12_scaleY";
	rename -uid "262FC2CE-423F-F8AC-CB34-FAAB19901C6B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube12_scaleZ";
	rename -uid "EBD0EBC1-45A4-96E4-1428-D2B5B3CC81B8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube27_visibility";
	rename -uid "1317BF0F-43F5-87AF-D94E-0287C00933A0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube27_translateX";
	rename -uid "AB8BEC8C-4FEB-AD60-BC69-EEBF8010A688";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube27_translateY";
	rename -uid "8856EB02-4C59-063C-F5F6-CAA0F76124E6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube27_translateZ";
	rename -uid "53405020-4AA3-7E29-6CD7-C1B7B9AB7EF1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube27_rotateX";
	rename -uid "7C875E28-4F57-4B79-ED05-33BADB92E3B5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube27_rotateY";
	rename -uid "9040E8E9-428C-7C1B-EB88-DF913C491341";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.18039932874189 6 -28.824472136985612
		 12 -13.18039932874189 18 -28.824472136985612 25 -13.18039932874189;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube27_rotateZ";
	rename -uid "A2DAEA07-4B83-4A24-3840-C78945C6588E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube27_scaleX";
	rename -uid "6BF3E519-4226-F63D-F193-24A14B83134B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube27_scaleY";
	rename -uid "8FB65E94-4EAE-F1C2-E351-B19E18C2B45C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube27_scaleZ";
	rename -uid "395F5FA8-432C-7021-CB34-639DE89EC38B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube13_visibility";
	rename -uid "7175DF77-4540-6CB1-88BF-3BB39ADD7B75";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube13_translateX";
	rename -uid "3B0FAD6C-4C43-F0C6-8219-8C983D08E96C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube13_translateY";
	rename -uid "6DC55986-4BC7-DA4E-68A8-3B94B0613158";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube13_translateZ";
	rename -uid "8BEDD3B1-42A5-2ADB-3032-0A971FDF1A98";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube13_rotateX";
	rename -uid "382EB9BB-4EBE-F019-BBDE-42B14F5FB927";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube13_rotateY";
	rename -uid "04393E27-4203-CA0C-83F1-BB90A37B72AD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.535292222218807 6 47.11526445159614
		 12 15.535292222218807 18 47.11526445159614 25 15.535292222218807;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube13_rotateZ";
	rename -uid "06A89595-4641-98C2-049D-46AD7811BD5E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube13_scaleX";
	rename -uid "83EC0832-4AA4-1690-1EB0-1B908DC0F073";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube13_scaleY";
	rename -uid "D0482324-40C1-EFF9-C927-679891D7F3C9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube13_scaleZ";
	rename -uid "E50B34C0-48CA-97E5-C930-A3829948F0AA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube23_visibility";
	rename -uid "86FAC0FB-4D3D-196A-31A3-78A4E1F2C8C6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube23_translateX";
	rename -uid "57156689-4831-BC1C-0E22-45870E0C74AE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube23_translateY";
	rename -uid "0EC34F4E-4699-9BA5-3053-F6A6DFFF06E2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube23_translateZ";
	rename -uid "DD1EC8AD-452F-BCED-92F8-A88E5E4E88ED";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube23_rotateX";
	rename -uid "D2CD7E03-497F-DFD6-43B1-2BBFA9E58BCA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.0103890914405471e-16 6 0 12 -1.0019015187692365e-16
		 18 5.0732452163466603e-17 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube23_rotateY";
	rename -uid "788B8B70-46A6-E8B0-B25A-5C9E63E9E030";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -10.357994321487054 6 -8.2916179344861334
		 12 7.2354519495030658 18 -11.600491963006471 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube23_rotateZ";
	rename -uid "381D8F17-495B-4686-4AAA-C98FB42313D8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.3051195125967192 6 4.305119512596713
		 12 4.305119512596713 18 4.3051195125967139 25 4.305119512596713;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube23_scaleX";
	rename -uid "86E6089B-4571-B2F4-F88F-0185DA3CE199";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube23_scaleY";
	rename -uid "5481FF31-4E5C-BE92-5A16-82AF21B5DAFC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube23_scaleZ";
	rename -uid "305FE9F4-44F7-A486-5B5E-25B7D63E339B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube24_visibility";
	rename -uid "76D447AF-422B-7959-6661-52895A168FFD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube24_translateX";
	rename -uid "2769298C-43FE-839F-94C2-C18039078D01";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube24_translateY";
	rename -uid "6E6FF6AC-41E9-77D5-2223-10BE40CBAAEB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube24_translateZ";
	rename -uid "37915FC0-41D8-122E-2FDC-74B9770DB882";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube24_rotateX";
	rename -uid "D3F42C47-4A1D-F491-F262-9CB537963C92";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -31.993202007059367 12 -31.993202007059367
		 25 -31.993202007059367;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube24_rotateY";
	rename -uid "6E02DD11-4313-463F-EF72-509069255200";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube24_rotateZ";
	rename -uid "372C4E07-4B48-E472-AD30-D3985D3C0A99";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube24_scaleX";
	rename -uid "0022EB58-4CD3-ED82-C698-C2B9B7F78C34";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube24_scaleY";
	rename -uid "EE3DE127-427D-CE70-DCF2-159D4939B23C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube24_scaleZ";
	rename -uid "D698344C-4110-01EA-9646-8699EB93A1F7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube21_visibility";
	rename -uid "61506DD3-400F-5723-B5EB-0F971B680487";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube21_translateX";
	rename -uid "10243A44-44E5-8DF6-9F7F-0D87C202075A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube21_translateY";
	rename -uid "E80F8F12-4B50-BBFC-A017-63ABF96D002B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube21_translateZ";
	rename -uid "97D23A5B-4549-DC9D-4BA9-78A15DD65B32";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube21_rotateX";
	rename -uid "EA17AF6C-4108-1C84-C368-80A93C67FBF1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.0061241594950587 12 -8.0061241594950587
		 25 -8.0061241594950587;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube21_rotateY";
	rename -uid "A3222050-4DD1-E2CD-DD41-7ABD1E9BAD51";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube21_rotateZ";
	rename -uid "1546A524-4524-66B3-8017-138DC97E312C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube21_scaleX";
	rename -uid "A8F0949D-473E-00DD-C9F1-B4A0DEAE46D8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube21_scaleY";
	rename -uid "14A4FD52-4E2A-7126-3FBF-90A393FAE31F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube21_scaleZ";
	rename -uid "7D1D3F54-4CCB-8DB6-FAD9-5F851CD8E9E9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube16_visibility";
	rename -uid "DC865900-4D89-8C7B-6CC5-8D8D69007EEF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube16_translateX";
	rename -uid "B7CC903C-450D-30CD-AC50-07A1889742BF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube16_translateY";
	rename -uid "0F3B5EBF-49BA-D6A3-9419-FBA854D6D7C4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube16_translateZ";
	rename -uid "AB5538A3-4EFA-2082-2637-AB9AD4DF59F1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube16_rotateX";
	rename -uid "1F72E974-4D9D-9535-71F1-DEBD3C6F3638";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.4111358618047278 12 -3.4111358618047278
		 25 -3.4111358618047278;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube16_rotateY";
	rename -uid "8E27A092-4F0E-FF11-6BF8-4E925615D88A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube16_rotateZ";
	rename -uid "428EAE48-4BCC-18AC-C11D-AFB5BF0FF442";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube16_scaleX";
	rename -uid "1ED793B9-46BD-5197-8040-42B101025D4B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube16_scaleY";
	rename -uid "FD1A4270-4031-E524-838E-85BDA862EFAC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube16_scaleZ";
	rename -uid "F8A35FDB-4DC2-58D1-85BA-74BE40E4547B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube30_visibility";
	rename -uid "9552C532-434E-890D-B4BD-0A94B62DF74B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube30_translateX";
	rename -uid "18608B9F-4F33-6519-0553-D2B7F1584D31";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube30_translateY";
	rename -uid "2D1133F3-404A-F0EE-6401-AEA9564B8FE3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube30_translateZ";
	rename -uid "61103F16-4DFA-FA5C-B66F-36BD7D8CA452";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube30_rotateX";
	rename -uid "F9A0167B-41E0-FF9F-60E7-FCAF8F3E315B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.6666338800581428 6 4.6375959157471884
		 12 4.714730442908631 18 4.6478085725857969 25 4.6264924235102569;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube30_rotateY";
	rename -uid "3C5DEEA2-48EB-46CD-BC5A-2A8263943515";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -7.5122273860813378 6 3.9612681303957382
		 12 11.090166152305027 18 5.4835257962624722 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube30_rotateZ";
	rename -uid "A62A8F56-486F-E535-BEE8-31A89B92FB85";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.61143479758752706 6 0.32107301474996358
		 12 0.90887135287123533 18 0.4451102897816952 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube30_scaleX";
	rename -uid "8C2A08CB-47BD-E744-A4F0-31892F1496AC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube30_scaleY";
	rename -uid "5181362C-4021-27F8-CC82-849D15D78357";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube30_scaleZ";
	rename -uid "34A7CEF2-496C-FFEB-D6F9-B98C2C96A9A3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube29_visibility";
	rename -uid "A8D0AB15-4673-57D7-1B4D-469413919F36";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube29_translateX";
	rename -uid "D8481554-4786-6325-1B76-C9ABBEFA1571";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube29_translateY";
	rename -uid "7D661CDB-42C9-C670-8B01-74A934F41400";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube29_translateZ";
	rename -uid "45A46DD2-481E-B958-4DEE-5CB575EB1F92";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube29_rotateX";
	rename -uid "88DD1158-441D-FDDF-7E5C-C5A2CC8C0FE5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.878597509335609 12 18.878597509335609
		 25 18.878597509335609;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube29_rotateY";
	rename -uid "0AE10D64-403D-6DE8-634A-55B2DF587BE5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube29_rotateZ";
	rename -uid "B52A08E7-47F4-0989-FA88-3C96E9469443";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube29_scaleX";
	rename -uid "67F47E76-474E-3AAB-8E9B-F58FFCA473D4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube29_scaleY";
	rename -uid "618470F5-4DFD-37EF-49D8-279EE8B07F7B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube29_scaleZ";
	rename -uid "DCEC622C-4B22-B3C0-4131-D98621A06E23";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube28_visibility";
	rename -uid "1667364E-4215-351D-9C15-A9AD00228AF4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube28_translateX";
	rename -uid "01146BD7-4A49-4833-D089-CEBAC29FCAB2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube28_translateY";
	rename -uid "0845A33B-4FE6-3583-1D72-7C896DC0C5E3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube28_translateZ";
	rename -uid "7BFC3B82-43E4-BE09-EC3E-36923F28F904";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube28_rotateX";
	rename -uid "2FA2C37D-49CB-53C9-3E29-67963E127457";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.2946214696469518 12 7.2946214696469518
		 25 7.2946214696469518;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube28_rotateY";
	rename -uid "ED0FE141-47B1-2BD7-DB6A-D586F4CA1456";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube28_rotateZ";
	rename -uid "0F07B0D1-4194-1AED-6722-918838CC5462";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube28_scaleX";
	rename -uid "397D0286-4EF0-4BD7-7576-46B0F75530C9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube28_scaleY";
	rename -uid "0DB18F5C-468E-0F12-D570-D1ADDC1024D8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube28_scaleZ";
	rename -uid "09C48632-4D6E-EA56-A0F9-1F9A6E61F30D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube31_visibility";
	rename -uid "24B0BD61-475B-D21D-8F57-42917DB42F58";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube31_translateX";
	rename -uid "6F1F8797-4F60-97AC-DBCD-79A48446375D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube31_translateY";
	rename -uid "69227A66-480A-30AC-2D4D-D691414F308B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube31_translateZ";
	rename -uid "DA60B0E6-4156-2DCF-A2FE-24906CA195F8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube31_rotateX";
	rename -uid "1D0A1F71-44DF-E8ED-97FF-51A3E0CE3741";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.3197919245880012 12 3.3197919245880012
		 25 3.3197919245880012;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube31_rotateY";
	rename -uid "B79578BD-4B5D-8830-66C1-C98F39D81031";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube31_rotateZ";
	rename -uid "A5DED270-49CE-70EF-0E91-75B9085C0CF8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube31_scaleX";
	rename -uid "F77C664B-4B86-CA96-9D7F-91904627B802";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube31_scaleY";
	rename -uid "3E0A0EA4-4FAA-E615-4990-23ABCBF9CD1C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube31_scaleZ";
	rename -uid "D5FB3173-4A84-A295-F639-5AA6C9E919F7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube9_visibility";
	rename -uid "843D2FE4-4222-673E-5514-B08AE26BAB5D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube9_translateX";
	rename -uid "297E3B6F-4C30-FE97-F733-8BB46EB304C4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube9_translateY";
	rename -uid "C8FF1A84-4345-F06B-AAD1-B18843759B31";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.57917121631669755 6 -0.064591072128272309
		 12 -0.57917121631669755 18 -0.064591072128272309 25 -0.57917121631669755;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube9_translateZ";
	rename -uid "58229385-49A3-50BC-5387-189FDB098959";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube9_rotateX";
	rename -uid "8F97353C-4A10-0B1A-5DEC-8E8FB6B4BFBB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube9_rotateY";
	rename -uid "A3E4A7C6-46A7-A75E-1BC6-5F9645C712DC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube9_rotateZ";
	rename -uid "F8EACCB5-4CBC-6FEB-1333-3296B6CEBDD6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.7687227236628118 6 -0.19007334994279171
		 12 -4.7687227236628118 18 -0.19007334994279171 25 -4.7687227236628118;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube9_scaleX";
	rename -uid "E2E70DAB-4F7D-CD4F-3669-708D09A56EB5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube9_scaleY";
	rename -uid "28622566-47E7-55F1-7888-EC98A75C58B9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube9_scaleZ";
	rename -uid "56F896A3-48CC-8616-520D-6E878010F62A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube1_visibility";
	rename -uid "751991A8-4CAD-10BD-9222-7AB4704794E9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube1_translateX";
	rename -uid "CB0B06C6-49DE-26B3-87BA-E4B955270503";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube1_translateY";
	rename -uid "98CF6FA1-4840-A6A2-4DCD-668F9CB62E99";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube1_translateZ";
	rename -uid "876F2034-4627-4775-EFF3-6A89A607E19C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube1_rotateX";
	rename -uid "45E11110-4542-95AF-8E83-6F9E060F2D12";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube1_rotateY";
	rename -uid "975C86FB-41AA-34A9-2D29-F692E121CA6B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube1_rotateZ";
	rename -uid "141A5BDF-4FE5-CC72-293B-BE985DCF4603";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.7293559510464114 6 -2.2770380706981377
		 12 5.7293559510464114 18 -2.2770380706981377 25 5.7293559510464114;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube1_scaleX";
	rename -uid "42910C6A-4E77-25AB-0650-C68DED3197CE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube1_scaleY";
	rename -uid "CFAD4936-435E-65D4-A603-5CBFD908DEF3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube1_scaleZ";
	rename -uid "BD4C26AE-4831-01F5-8D3B-7294988A63AE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube11_visibility";
	rename -uid "A303CF3C-4220-FAA9-7C59-3C84CA8EA2EB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube11_translateX";
	rename -uid "7A4E8BF1-4F1D-FFF2-BDE0-5EA1FB8069D1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube11_translateY";
	rename -uid "6C8E8166-4A6D-F7FC-A5A6-91AA6F38BBB9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube11_translateZ";
	rename -uid "A7C71CD5-4E5E-939F-5DDC-9EB26335584A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube11_rotateX";
	rename -uid "CAD314A2-45EE-69DB-B702-898C4ECC2CCA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube11_rotateY";
	rename -uid "F72A73E3-4FC5-9B79-1BDF-35AE880BC497";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube11_rotateZ";
	rename -uid "BD526F80-4914-4840-5560-5697BE53D169";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube11_scaleX";
	rename -uid "7578484C-4F3A-7426-B478-8E8BB553F0E0";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube11_scaleY";
	rename -uid "1371844D-46D9-FF80-32B6-05BAE651D47E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube11_scaleZ";
	rename -uid "A49213AB-460D-B8EE-24F0-78B14A0365FD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube22_visibility";
	rename -uid "53462AC7-4582-58B8-9A6B-DFB9BE640E09";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube22_translateX";
	rename -uid "4ABEFD53-4E08-2DB2-73BF-0F847CEF0A4E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube22_translateY";
	rename -uid "48AF2A50-4427-E6E0-613E-DAAE36F0C6F9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube22_translateZ";
	rename -uid "22EBC1DE-4310-25A3-6EF6-158A46AEF498";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube22_rotateX";
	rename -uid "E72D19E3-4E95-4993-84F4-AE96FE38E60C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube22_rotateY";
	rename -uid "AAC6E60B-427E-443E-4096-4B973ABF4D22";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube22_rotateZ";
	rename -uid "00E690F2-4622-9B67-CDFD-C28BAEF00A54";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube22_scaleX";
	rename -uid "F36591A2-4479-A5C8-CA2A-678959D05643";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube22_scaleY";
	rename -uid "382FE9C4-4918-49FF-FB5D-AC94C08A5EEC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube22_scaleZ";
	rename -uid "A4E3E258-4B74-A221-312C-CAB5BFC055F7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube26_visibility";
	rename -uid "CB7A0E9A-4749-DCB6-3693-43877A3BD61F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube26_translateX";
	rename -uid "2BB5CD22-4430-2DB6-93E9-1F9F869F0A05";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube26_translateY";
	rename -uid "C8AFE447-45D4-3552-F30D-F58B0E7A8A94";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "pCube26_translateZ";
	rename -uid "1776F5E4-4140-771B-0A0F-B191C426C9EE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube26_rotateX";
	rename -uid "5D9CE82A-45B7-5219-9E80-06AED67EE912";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube26_rotateY";
	rename -uid "F57C9F2D-48DC-5D43-D704-39B0BFDC2517";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "pCube26_rotateZ";
	rename -uid "B1907F51-4EA4-2723-5092-2382FCD98B1A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube26_scaleX";
	rename -uid "84072CBC-429B-6FB0-7902-E1B67F795B3C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube26_scaleY";
	rename -uid "A6CFB7F4-44B3-76B0-4D7F-FFAFB2BD5FDC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube26_scaleZ";
	rename -uid "7C69AD2A-438B-F817-AC0F-70B16E8F3D9C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 3 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "pCube8_visibility";
	rename -uid "F90EA649-4103-6C14-B083-36BED707BAF6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube8_translateX";
	rename -uid "F540EEF3-40B2-AC96-6B76-129C7E853BA7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube8_translateY";
	rename -uid "58807F17-42B0-ED0B-28DE-8EA72CFAB55A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.57917121631669755 6 -0.064591072128272309
		 12 -0.57917121631669755 18 -0.064591072128272309 25 -0.57917121631669755;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "pCube8_translateZ";
	rename -uid "DD5CF884-4F41-DF4F-8335-619A47031942";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube8_rotateX";
	rename -uid "0ACF3E7A-4D59-3801-1A1D-E28A7D0AB8E1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube8_rotateY";
	rename -uid "8D4C85A2-4C2B-349C-4FBE-95AE7180C0FD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTA -n "pCube8_rotateZ";
	rename -uid "0E702821-4238-B241-58F0-1F89E11F54A2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 0 12 0 18 0 25 0;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube8_scaleX";
	rename -uid "81F7F9F8-4439-BF19-28DC-38848EF5D509";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube8_scaleY";
	rename -uid "58CCEA1E-4453-D72A-5490-B892139E9B9F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTU -n "pCube8_scaleZ";
	rename -uid "16053713-4239-6989-002B-C4AA9C4BA184";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 6 1 12 1 18 1 25 1;
	setAttr -s 5 ".kit[0:4]"  3 3 1 1 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
select -ne :time1;
	setAttr ".o" 12;
	setAttr ".unw" 12;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 26 ".dsm";
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
	setAttr -s 4 ".sol";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":sideShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "pCube9_visibility.o" "pCube9.v";
connectAttr "pCube9_translateX.o" "pCube9.tx";
connectAttr "pCube9_translateY.o" "pCube9.ty";
connectAttr "pCube9_translateZ.o" "pCube9.tz";
connectAttr "pCube9_rotateX.o" "pCube9.rx";
connectAttr "pCube9_rotateY.o" "pCube9.ry";
connectAttr "pCube9_rotateZ.o" "pCube9.rz";
connectAttr "pCube9_scaleX.o" "pCube9.sx";
connectAttr "pCube9_scaleY.o" "pCube9.sy";
connectAttr "pCube9_scaleZ.o" "pCube9.sz";
connectAttr "pCube10_visibility.o" "pCube10.v";
connectAttr "pCube10_translateX.o" "pCube10.tx";
connectAttr "pCube10_translateY.o" "pCube10.ty";
connectAttr "pCube10_translateZ.o" "pCube10.tz";
connectAttr "pCube10_rotateX.o" "pCube10.rx";
connectAttr "pCube10_rotateY.o" "pCube10.ry";
connectAttr "pCube10_rotateZ.o" "pCube10.rz";
connectAttr "pCube10_scaleX.o" "pCube10.sx";
connectAttr "pCube10_scaleY.o" "pCube10.sy";
connectAttr "pCube10_scaleZ.o" "pCube10.sz";
connectAttr "pCube25_visibility.o" "pCube25.v";
connectAttr "pCube25_translateX.o" "pCube25.tx";
connectAttr "pCube25_translateY.o" "pCube25.ty";
connectAttr "pCube25_translateZ.o" "pCube25.tz";
connectAttr "pCube25_rotateX.o" "pCube25.rx";
connectAttr "pCube25_rotateY.o" "pCube25.ry";
connectAttr "pCube25_rotateZ.o" "pCube25.rz";
connectAttr "pCube25_scaleX.o" "pCube25.sx";
connectAttr "pCube25_scaleY.o" "pCube25.sy";
connectAttr "pCube25_scaleZ.o" "pCube25.sz";
connectAttr "pCube13_visibility.o" "pCube13.v";
connectAttr "pCube13_translateX.o" "pCube13.tx";
connectAttr "pCube13_translateY.o" "pCube13.ty";
connectAttr "pCube13_translateZ.o" "pCube13.tz";
connectAttr "pCube13_rotateX.o" "pCube13.rx";
connectAttr "pCube13_rotateY.o" "pCube13.ry";
connectAttr "pCube13_rotateZ.o" "pCube13.rz";
connectAttr "pCube13_scaleX.o" "pCube13.sx";
connectAttr "pCube13_scaleY.o" "pCube13.sy";
connectAttr "pCube13_scaleZ.o" "pCube13.sz";
connectAttr "pCube30_visibility.o" "pCube30.v";
connectAttr "pCube30_translateX.o" "pCube30.tx";
connectAttr "pCube30_translateY.o" "pCube30.ty";
connectAttr "pCube30_translateZ.o" "pCube30.tz";
connectAttr "pCube30_rotateX.o" "pCube30.rx";
connectAttr "pCube30_rotateY.o" "pCube30.ry";
connectAttr "pCube30_rotateZ.o" "pCube30.rz";
connectAttr "pCube30_scaleX.o" "pCube30.sx";
connectAttr "pCube30_scaleY.o" "pCube30.sy";
connectAttr "pCube30_scaleZ.o" "pCube30.sz";
connectAttr "pCube28_visibility.o" "pCube28.v";
connectAttr "pCube28_translateX.o" "pCube28.tx";
connectAttr "pCube28_translateY.o" "pCube28.ty";
connectAttr "pCube28_translateZ.o" "pCube28.tz";
connectAttr "pCube28_rotateX.o" "pCube28.rx";
connectAttr "pCube28_rotateY.o" "pCube28.ry";
connectAttr "pCube28_rotateZ.o" "pCube28.rz";
connectAttr "pCube28_scaleX.o" "pCube28.sx";
connectAttr "pCube28_scaleY.o" "pCube28.sy";
connectAttr "pCube28_scaleZ.o" "pCube28.sz";
connectAttr "pCube31_visibility.o" "pCube31.v";
connectAttr "pCube31_translateX.o" "pCube31.tx";
connectAttr "pCube31_translateY.o" "pCube31.ty";
connectAttr "pCube31_translateZ.o" "pCube31.tz";
connectAttr "pCube31_rotateX.o" "pCube31.rx";
connectAttr "pCube31_rotateY.o" "pCube31.ry";
connectAttr "pCube31_rotateZ.o" "pCube31.rz";
connectAttr "pCube31_scaleX.o" "pCube31.sx";
connectAttr "pCube31_scaleY.o" "pCube31.sy";
connectAttr "pCube31_scaleZ.o" "pCube31.sz";
connectAttr "pCube26_visibility.o" "pCube26.v";
connectAttr "pCube26_translateX.o" "pCube26.tx";
connectAttr "pCube26_translateY.o" "pCube26.ty";
connectAttr "pCube26_translateZ.o" "pCube26.tz";
connectAttr "pCube26_rotateX.o" "pCube26.rx";
connectAttr "pCube26_rotateY.o" "pCube26.ry";
connectAttr "pCube26_rotateZ.o" "pCube26.rz";
connectAttr "pCube26_scaleX.o" "pCube26.sx";
connectAttr "pCube26_scaleY.o" "pCube26.sy";
connectAttr "pCube26_scaleZ.o" "pCube26.sz";
connectAttr "pCube29_visibility.o" "pCube29.v";
connectAttr "pCube29_translateX.o" "pCube29.tx";
connectAttr "pCube29_translateY.o" "pCube29.ty";
connectAttr "pCube29_translateZ.o" "pCube29.tz";
connectAttr "pCube29_rotateX.o" "pCube29.rx";
connectAttr "pCube29_rotateY.o" "pCube29.ry";
connectAttr "pCube29_rotateZ.o" "pCube29.rz";
connectAttr "pCube29_scaleX.o" "pCube29.sx";
connectAttr "pCube29_scaleY.o" "pCube29.sy";
connectAttr "pCube29_scaleZ.o" "pCube29.sz";
connectAttr "pCube12_visibility.o" "pCube12.v";
connectAttr "pCube12_translateX.o" "pCube12.tx";
connectAttr "pCube12_translateY.o" "pCube12.ty";
connectAttr "pCube12_translateZ.o" "pCube12.tz";
connectAttr "pCube12_rotateX.o" "pCube12.rx";
connectAttr "pCube12_rotateY.o" "pCube12.ry";
connectAttr "pCube12_rotateZ.o" "pCube12.rz";
connectAttr "pCube12_scaleX.o" "pCube12.sx";
connectAttr "pCube12_scaleY.o" "pCube12.sy";
connectAttr "pCube12_scaleZ.o" "pCube12.sz";
connectAttr "pCube27_visibility.o" "pCube27.v";
connectAttr "pCube27_translateX.o" "pCube27.tx";
connectAttr "pCube27_translateY.o" "pCube27.ty";
connectAttr "pCube27_translateZ.o" "pCube27.tz";
connectAttr "pCube27_rotateX.o" "pCube27.rx";
connectAttr "pCube27_rotateY.o" "pCube27.ry";
connectAttr "pCube27_rotateZ.o" "pCube27.rz";
connectAttr "pCube27_scaleX.o" "pCube27.sx";
connectAttr "pCube27_scaleY.o" "pCube27.sy";
connectAttr "pCube27_scaleZ.o" "pCube27.sz";
connectAttr "pCube23_visibility.o" "pCube23.v";
connectAttr "pCube23_translateX.o" "pCube23.tx";
connectAttr "pCube23_translateY.o" "pCube23.ty";
connectAttr "pCube23_translateZ.o" "pCube23.tz";
connectAttr "pCube23_rotateX.o" "pCube23.rx";
connectAttr "pCube23_rotateY.o" "pCube23.ry";
connectAttr "pCube23_rotateZ.o" "pCube23.rz";
connectAttr "pCube23_scaleX.o" "pCube23.sx";
connectAttr "pCube23_scaleY.o" "pCube23.sy";
connectAttr "pCube23_scaleZ.o" "pCube23.sz";
connectAttr "pCube21_visibility.o" "pCube21.v";
connectAttr "pCube21_translateX.o" "pCube21.tx";
connectAttr "pCube21_translateY.o" "pCube21.ty";
connectAttr "pCube21_translateZ.o" "pCube21.tz";
connectAttr "pCube21_rotateX.o" "pCube21.rx";
connectAttr "pCube21_rotateY.o" "pCube21.ry";
connectAttr "pCube21_rotateZ.o" "pCube21.rz";
connectAttr "pCube21_scaleX.o" "pCube21.sx";
connectAttr "pCube21_scaleY.o" "pCube21.sy";
connectAttr "pCube21_scaleZ.o" "pCube21.sz";
connectAttr "pCube16_visibility.o" "pCube16.v";
connectAttr "pCube16_translateX.o" "pCube16.tx";
connectAttr "pCube16_translateY.o" "pCube16.ty";
connectAttr "pCube16_translateZ.o" "pCube16.tz";
connectAttr "pCube16_rotateX.o" "pCube16.rx";
connectAttr "pCube16_rotateY.o" "pCube16.ry";
connectAttr "pCube16_rotateZ.o" "pCube16.rz";
connectAttr "pCube16_scaleX.o" "pCube16.sx";
connectAttr "pCube16_scaleY.o" "pCube16.sy";
connectAttr "pCube16_scaleZ.o" "pCube16.sz";
connectAttr "pCube22_visibility.o" "pCube22.v";
connectAttr "pCube22_translateX.o" "pCube22.tx";
connectAttr "pCube22_translateY.o" "pCube22.ty";
connectAttr "pCube22_translateZ.o" "pCube22.tz";
connectAttr "pCube22_rotateX.o" "pCube22.rx";
connectAttr "pCube22_rotateY.o" "pCube22.ry";
connectAttr "pCube22_rotateZ.o" "pCube22.rz";
connectAttr "pCube22_scaleX.o" "pCube22.sx";
connectAttr "pCube22_scaleY.o" "pCube22.sy";
connectAttr "pCube22_scaleZ.o" "pCube22.sz";
connectAttr "pCube24_visibility.o" "pCube24.v";
connectAttr "pCube24_translateX.o" "pCube24.tx";
connectAttr "pCube24_translateY.o" "pCube24.ty";
connectAttr "pCube24_translateZ.o" "pCube24.tz";
connectAttr "pCube24_rotateX.o" "pCube24.rx";
connectAttr "pCube24_rotateY.o" "pCube24.ry";
connectAttr "pCube24_rotateZ.o" "pCube24.rz";
connectAttr "pCube24_scaleX.o" "pCube24.sx";
connectAttr "pCube24_scaleY.o" "pCube24.sy";
connectAttr "pCube24_scaleZ.o" "pCube24.sz";
connectAttr "pCube11_visibility.o" "pCube11.v";
connectAttr "pCube11_translateX.o" "pCube11.tx";
connectAttr "pCube11_translateY.o" "pCube11.ty";
connectAttr "pCube11_translateZ.o" "pCube11.tz";
connectAttr "pCube11_rotateX.o" "pCube11.rx";
connectAttr "pCube11_rotateY.o" "pCube11.ry";
connectAttr "pCube11_rotateZ.o" "pCube11.rz";
connectAttr "pCube11_scaleX.o" "pCube11.sx";
connectAttr "pCube11_scaleY.o" "pCube11.sy";
connectAttr "pCube11_scaleZ.o" "pCube11.sz";
connectAttr "pCube1_visibility.o" "pCube1.v";
connectAttr "pCube1_translateX.o" "pCube1.tx";
connectAttr "pCube1_translateY.o" "pCube1.ty";
connectAttr "pCube1_translateZ.o" "pCube1.tz";
connectAttr "pCube1_rotateX.o" "pCube1.rx";
connectAttr "pCube1_rotateY.o" "pCube1.ry";
connectAttr "pCube1_rotateZ.o" "pCube1.rz";
connectAttr "pCube1_scaleX.o" "pCube1.sx";
connectAttr "pCube1_scaleY.o" "pCube1.sy";
connectAttr "pCube1_scaleZ.o" "pCube1.sz";
connectAttr "pCube8_visibility.o" "pCube8.v";
connectAttr "pCube8_translateX.o" "pCube8.tx";
connectAttr "pCube8_translateY.o" "pCube8.ty";
connectAttr "pCube8_translateZ.o" "pCube8.tz";
connectAttr "pCube8_rotateX.o" "pCube8.rx";
connectAttr "pCube8_rotateY.o" "pCube8.ry";
connectAttr "pCube8_rotateZ.o" "pCube8.rz";
connectAttr "pCube8_scaleX.o" "pCube8.sx";
connectAttr "pCube8_scaleY.o" "pCube8.sy";
connectAttr "pCube8_scaleZ.o" "pCube8.sz";
connectAttr "pCube32_visibility.o" "pCube32.v";
connectAttr "pCube32_translateX.o" "pCube32.tx";
connectAttr "pCube32_translateY.o" "pCube32.ty";
connectAttr "pCube32_translateZ.o" "pCube32.tz";
connectAttr "pCube32_rotateX.o" "pCube32.rx";
connectAttr "pCube32_rotateY.o" "pCube32.ry";
connectAttr "pCube32_rotateZ.o" "pCube32.rz";
connectAttr "pCube32_scaleX.o" "pCube32.sx";
connectAttr "pCube32_scaleY.o" "pCube32.sy";
connectAttr "pCube32_scaleZ.o" "pCube32.sz";
connectAttr "pCube33_visibility.o" "pCube33.v";
connectAttr "pCube33_translateX.o" "pCube33.tx";
connectAttr "pCube33_translateY.o" "pCube33.ty";
connectAttr "pCube33_translateZ.o" "pCube33.tz";
connectAttr "pCube33_rotateX.o" "pCube33.rx";
connectAttr "pCube33_rotateY.o" "pCube33.ry";
connectAttr "pCube33_rotateZ.o" "pCube33.rz";
connectAttr "pCube33_scaleX.o" "pCube33.sx";
connectAttr "pCube33_scaleY.o" "pCube33.sy";
connectAttr "pCube33_scaleZ.o" "pCube33.sz";
connectAttr "pCube34_visibility.o" "pCube34.v";
connectAttr "pCube34_translateX.o" "pCube34.tx";
connectAttr "pCube34_translateY.o" "pCube34.ty";
connectAttr "pCube34_translateZ.o" "pCube34.tz";
connectAttr "pCube34_rotateX.o" "pCube34.rx";
connectAttr "pCube34_rotateY.o" "pCube34.ry";
connectAttr "pCube34_rotateZ.o" "pCube34.rz";
connectAttr "pCube34_scaleX.o" "pCube34.sx";
connectAttr "pCube34_scaleY.o" "pCube34.sy";
connectAttr "pCube34_scaleZ.o" "pCube34.sz";
connectAttr "pCube6_visibility.o" "pCube6.v";
connectAttr "pCube6_translateX.o" "pCube6.tx";
connectAttr "pCube6_translateY.o" "pCube6.ty";
connectAttr "pCube6_translateZ.o" "pCube6.tz";
connectAttr "pCube6_rotateX.o" "pCube6.rx";
connectAttr "pCube6_rotateY.o" "pCube6.ry";
connectAttr "pCube6_rotateZ.o" "pCube6.rz";
connectAttr "pCube6_scaleX.o" "pCube6.sx";
connectAttr "pCube6_scaleY.o" "pCube6.sy";
connectAttr "pCube6_scaleZ.o" "pCube6.sz";
connectAttr "pCube5_visibility.o" "pCube5.v";
connectAttr "pCube5_translateX.o" "pCube5.tx";
connectAttr "pCube5_translateY.o" "pCube5.ty";
connectAttr "pCube5_translateZ.o" "pCube5.tz";
connectAttr "pCube5_rotateX.o" "pCube5.rx";
connectAttr "pCube5_rotateY.o" "pCube5.ry";
connectAttr "pCube5_rotateZ.o" "pCube5.rz";
connectAttr "pCube5_scaleX.o" "pCube5.sx";
connectAttr "pCube5_scaleY.o" "pCube5.sy";
connectAttr "pCube5_scaleZ.o" "pCube5.sz";
connectAttr "pCube2_visibility.o" "pCube2.v";
connectAttr "pCube2_translateX.o" "pCube2.tx";
connectAttr "pCube2_translateY.o" "pCube2.ty";
connectAttr "pCube2_translateZ.o" "pCube2.tz";
connectAttr "pCube2_rotateX.o" "pCube2.rx";
connectAttr "pCube2_rotateY.o" "pCube2.ry";
connectAttr "pCube2_rotateZ.o" "pCube2.rz";
connectAttr "pCube2_scaleX.o" "pCube2.sx";
connectAttr "pCube2_scaleY.o" "pCube2.sy";
connectAttr "pCube2_scaleZ.o" "pCube2.sz";
connectAttr "pCubeShape2_pnts_1__pntx.o" "pCubeShape2.pt[1].px";
connectAttr "pCubeShape2_pnts_1__pnty.o" "pCubeShape2.pt[1].py";
connectAttr "pCubeShape2_pnts_1__pntz.o" "pCubeShape2.pt[1].pz";
connectAttr "pCubeShape2_pnts_3__pntx.o" "pCubeShape2.pt[3].px";
connectAttr "pCubeShape2_pnts_3__pnty.o" "pCubeShape2.pt[3].py";
connectAttr "pCubeShape2_pnts_3__pntz.o" "pCubeShape2.pt[3].pz";
connectAttr "pCubeShape2_pnts_5__pntx.o" "pCubeShape2.pt[5].px";
connectAttr "pCubeShape2_pnts_5__pnty.o" "pCubeShape2.pt[5].py";
connectAttr "pCubeShape2_pnts_5__pntz.o" "pCubeShape2.pt[5].pz";
connectAttr "pCubeShape2_pnts_7__pntx.o" "pCubeShape2.pt[7].px";
connectAttr "pCubeShape2_pnts_7__pnty.o" "pCubeShape2.pt[7].py";
connectAttr "pCubeShape2_pnts_7__pntz.o" "pCubeShape2.pt[7].pz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape34.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
// End of WhiteBoxModelForRigging.ma
