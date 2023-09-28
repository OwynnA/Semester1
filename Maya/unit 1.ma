//Maya ASCII 2023 scene
//Name: unit 1.ma
//Last modified: Fri, Sep 15, 2023 10:33:59 PM
//Codeset: UTF-8
requires maya "2023";
requires -nodeType "ShaderfxGameHair" "shaderFXPlugin" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "substanceNode" "substancemaya" "2.3.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiPhysicalSky" "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "5F5BD415-9549-95D6-7D86-36AECB0D2B89";
createNode transform -s -n "persp";
	rename -uid "18969A83-B948-C035-B9D1-E090B6DC0D24";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.2852007794362623 6.1360757260658092 9.9777472546376504 ;
	setAttr ".r" -type "double3" -31.538352729669626 8.1999999999994415 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8855E848-FE49-E90D-AE59-D0854751E2C0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 10.977910832896953;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "15082CBE-D542-4650-CB89-05AE6B5B49E6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D0A909A7-5E40-8F18-6F68-53A69D73E466";
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
	rename -uid "26A8D9F6-2A47-F6F5-3CA2-BA9BFA89C412";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E3BFABB5-6243-6445-FF89-E997984B5083";
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
	rename -uid "EFFB5047-D841-C29C-2B3F-DAB8309BF435";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8FD38F9A-D342-9FEF-46AD-9F8B4F17BC2F";
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
createNode transform -n "pCube1";
	rename -uid "5BB4AEFC-984D-C820-1E99-7DBAB7871C0D";
	setAttr ".t" -type "double3" 0.0020328427209448385 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 1 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "8EC7F2D5-E04D-2D2A-EB8D-A29AD92D927E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[4]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[6]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[15]" -type "float3" 0.059474215 0 0 ;
createNode transform -n "pCube2";
	rename -uid "B4A80C99-5D44-12AB-0718-DAB861382C00";
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "5DB8BA54-C041-F1F5-F91F-91849EA376BC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  -0.055043869 0 0 -0.055043869 
		0 0 -0.055043869 0 0 -0.055043869 0 0 0.17706726 0 0 0.17706726 0 0 0.17706726 0 
		0 0.17706726 0 0;
createNode mesh -n "polySurfaceShape1" -p "pCube2";
	rename -uid "0A8C841C-024B-4811-1D6E-CA8FEC773A17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube3";
	rename -uid "C519CEEF-1D4B-43A2-A3A2-6A868406B20C";
	setAttr ".t" -type "double3" 2.9133289315872366 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 1 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "BA33113D-EF4D-C3C5-AD83-B78637A299F5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -0.12603514 0 0 -0.12603514 
		0 0 -0.12603514 0 0 -0.12603514 0 0;
createNode mesh -n "polySurfaceShape2" -p "pCube3";
	rename -uid "F995D16E-B047-3BBF-2972-8CAA569B720B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	rename -uid "F14CC39F-9A40-4346-2F7C-399BA9239F45";
	setAttr ".s" -type "double3" 0.70542879320805763 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "71F6B2A2-7C45-F230-D3CC-C4AC288E36DA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  -0.19986153 0 0 -0.19986153 
		0 0 -0.19986153 0 0 -0.19986153 0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0;
createNode mesh -n "polySurfaceShape3" -p "pCube4";
	rename -uid "1A15EB46-ED43-B6CC-150F-FAAF014C63F5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9";
	rename -uid "7FA15E6B-6C43-6608-6B86-33ABE83BFA5E";
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "2422307A-ED4C-D063-7889-939A8BF1E198";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  0.048294101 0 0 0.048294101 
		0 0 0.048294101 0 0 0.048294101 0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0;
createNode mesh -n "polySurfaceShape4" -p "pCube9";
	rename -uid "9CC34B64-0C42-C7DD-3FEE-139BAB3B2AD8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  -3.7252903e-09 0 0 -3.7252903e-09 
		0 0 -3.7252903e-09 0 0 -3.7252903e-09 0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "8F835FDB-2648-914B-CC59-269A0789FBED";
	setAttr ".t" -type "double3" 6.0978503374762525 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 0.70542879320805763 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "46588630-6649-D49A-879F-409B37F00DEF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt";
	setAttr ".pt[0]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-09 0 0 ;
createNode mesh -n "polySurfaceShape5" -p "pCube11";
	rename -uid "5385DA4B-DB41-47CD-95CE-499CA2B98D00";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt";
	setAttr ".pt[0]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube12";
	rename -uid "6F4D893E-5A4C-0C1D-A170-05B67E67A07C";
	setAttr ".t" -type "double3" 7.4584657970429689 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 0.70542879320805763 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "17A2D9FB-0A45-8DC8-5961-9BB8A15A69C0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-09 0 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube12";
	rename -uid "A1FC77B9-9E42-1F69-4CEF-9F9C1F2EF31C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube14";
	rename -uid "D88AE32E-5041-E3A7-1E0D-E4BAF655D7D0";
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	rename -uid "4923E0AD-C54E-4C9C-EC8F-91887BCC6041";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0 0.27069926
		 0 0.375 0 0.375 0.25 0.27069926 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr -s 16 ".vt[0:15]"  -0.42240524 -0.5 0.5 0.4224053 -0.5 0.5 -0.42240524 0.5 0.5
		 0.4224053 0.5 0.5 -0.42240524 0.5 -0.5 0.42240524 0.5 -0.5 -0.42240524 -0.5 -0.5
		 0.42240524 -0.5 -0.5 0.4224053 0.5 0.08279705 -0.42240524 0.5 0.08279705 -0.42240524 -0.5 0.08279705
		 0.4224053 -0.5 0.08279705 -1.071913719 -0.5 0.08279705 -1.071913719 -0.5 0.5 -1.071913719 0.5 0.5
		 -1.071913719 0.5 0.08279705;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 1 1 3 0 2 9 1
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 1 9 10 0 11 1 0 10 11 1 11 8 1
		 10 12 0 0 13 0 12 13 0 2 14 0 13 14 0 9 15 0 14 15 0 15 12 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 22 24 26 27
		mu 0 4 22 23 24 25
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 15 21 -23 -21
		mu 0 4 18 0 23 22
		f 4 4 23 -25 -22
		mu 0 4 0 2 24 23
		f 4 6 25 -27 -24
		mu 0 4 2 16 25 24
		f 4 16 20 -28 -26
		mu 0 4 16 18 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "pCube14";
	rename -uid "F29E92C9-354D-1DD8-4B24-31A0D27F00EC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube15";
	rename -uid "A45023E5-2347-FD88-B32E-7FA0DDC51723";
	setAttr ".t" -type "double3" -1.3242435814774829 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	rename -uid "DB3BF7FD-2D46-7A5F-8E9A-2F978F45DDAB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
createNode mesh -n "polySurfaceShape7" -p "pCube15";
	rename -uid "1DB5CCDB-B043-7838-0BB8-41A37E3352DA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pCube16";
	rename -uid "F067BD87-D345-3ECA-5C73-3A8F3A38137A";
	setAttr ".t" -type "double3" -2 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 0.70542879320805763 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	rename -uid "E33FD3D1-0443-644A-2D67-15B174DE19FC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0 0.27069926
		 0 0.375 0 0.375 0.25 0.27069926 0.25 0.625 0 0.72930074 0 0.72930074 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt";
	setAttr ".pt[0]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr -s 20 ".vt[0:19]"  -0.42240524 -0.5 0.5 0.4224053 -0.5 0.5 -0.42240524 0.5 0.5
		 0.4224053 0.5 0.5 -0.42240524 0.5 -0.5 0.42240524 0.5 -0.5 -0.42240524 -0.5 -0.5
		 0.42240524 -0.5 -0.5 0.4224053 0.5 0.08279705 -0.42240524 0.5 0.08279705 -0.42240524 -0.5 0.08279705
		 0.4224053 -0.5 0.08279705 -0.73755932 -0.5 0.08279705 -0.73755932 -0.5 0.5 -0.73755932 0.5 0.5
		 -0.73755932 0.5 0.08279705 0.73505592 -0.5 0.08279705 0.73505592 -0.5 0.5 0.73505592 0.5 0.08279705
		 0.73505592 0.5 0.5;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 1 1 3 1 2 9 1
		 3 8 1 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 1 9 10 0 11 1 1 10 11 1 11 8 0
		 10 12 0 0 13 0 12 13 0 2 14 0 13 14 0 9 15 0 14 15 0 15 12 0 11 16 0 1 17 0 16 17 0
		 8 18 0 16 18 0 3 19 0 19 18 0 17 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -31 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 22 24 26 27
		mu 0 4 22 23 24 25
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 15 21 -23 -21
		mu 0 4 18 0 23 22
		f 4 4 23 -25 -22
		mu 0 4 0 2 24 23
		f 4 6 25 -27 -24
		mu 0 4 2 16 25 24
		f 4 16 20 -28 -26
		mu 0 4 16 18 22 25
		f 4 -18 28 30 -30
		mu 0 4 1 21 27 26
		f 4 19 31 -33 -29
		mu 0 4 21 15 28 27
		f 4 -8 33 34 -32
		mu 0 4 15 3 29 28
		f 4 -6 29 35 -34
		mu 0 4 3 1 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "pCube16";
	rename -uid "3C8DA1A4-1A4B-0761-7150-42A0FB4EEDE0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt";
	setAttr ".pt[0]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[1]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[2]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[3]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[11]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[13]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[14]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[15]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".pt[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[19]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube18";
	rename -uid "7516279C-F745-73B9-1F97-519F208DB8AE";
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pCubeShape18" -p "pCube18";
	rename -uid "6623BC45-FE4E-EBA9-1A82-9CB781DC4216";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0 0.625 0 0.72930074
		 0 0.72930074 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  0.048294101 0 0 0.048294101 
		0 0 0.048294101 0 0 0.048294101 0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0;
	setAttr -s 16 ".vt[0:15]"  -0.42240572 -0.5 0.5 0.42240524 -0.5 0.5
		 -0.42240572 0.5 0.5 0.42240524 0.5 0.5 -0.42240572 0.5 -0.5 0.42240524 0.5 -0.5 -0.42240572 -0.5 -0.5
		 0.42240524 -0.5 -0.5 0.42240524 0.5 0.08279705 -0.42240572 0.5 0.08279705 -0.42240572 -0.5 0.08279705
		 0.42240524 -0.5 0.08279705 1.003256321 -0.5 0.08279705 1.003256321 -0.5 0.5 1.003256321 0.5 0.08279705
		 1.003256321 0.5 0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 1 2 9 0
		 3 8 1 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 1 10 11 1 11 8 0
		 11 12 0 1 13 0 12 13 0 8 14 0 12 14 0 3 15 0 15 14 0 13 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -23 24 -27 -28
		mu 0 4 22 23 24 25
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 -18 20 22 -22
		mu 0 4 1 21 23 22
		f 4 19 23 -25 -21
		mu 0 4 21 15 24 23
		f 4 -8 25 26 -24
		mu 0 4 15 3 25 24
		f 4 -6 21 27 -26
		mu 0 4 3 1 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "pCube18";
	rename -uid "ABF7F3AD-C34B-3062-05E1-438B0EF9417D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  -3.7252903e-09 0 0 -3.7252903e-09 
		0 0 -3.7252903e-09 0 0 -3.7252903e-09 0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube19";
	rename -uid "921417FA-0A41-A643-0B00-58B3986D1F10";
	setAttr ".t" -type "double3" -2.6788459969701925 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pCubeShape19" -p "pCube19";
	rename -uid "98BBC29E-EC45-4332-0D86-F09213CA0670";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube19";
	rename -uid "8B99C611-6D4B-3044-CC71-74A741774629";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pCube20";
	rename -uid "0815D1BA-044F-8437-9374-75AE81A409FD";
	setAttr ".t" -type "double3" 0.80803284272094489 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pCubeShape20" -p "pCube20";
	rename -uid "E4C35D92-6A44-6759-4806-0A83CA1EDC27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube20";
	rename -uid "6093D432-E94F-48F3-EE61-34876F53F5ED";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pCube21";
	rename -uid "EB2A7CA4-A945-3A70-F2AE-3B92B5F1501B";
	setAttr ".t" -type "double3" 2.121 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pCubeShape21" -p "pCube21";
	rename -uid "2E93D9F8-5B4C-6B21-C10D-EA85C89330EC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube21";
	rename -uid "B8356A0A-764C-E6CB-1D6A-4BA70D39110C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pCube22";
	rename -uid "C31ADCDF-054C-FE31-EABB-DD937EC779B8";
	setAttr ".t" -type "double3" 3.454 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	rename -uid "1AE21563-B544-0A66-3606-3685B4A9524F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube22";
	rename -uid "0B6D1CA1-8E48-F160-56BC-AD958C89E914";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pCube23";
	rename -uid "D2A15F7A-0E42-0754-83EB-DA9D741A6BD3";
	setAttr ".t" -type "double3" 5.431 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pCubeShape23" -p "pCube23";
	rename -uid "AF634EBA-8A43-7DFA-4AD2-2690ECFD203F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube23";
	rename -uid "CD7ACB05-484F-5024-7D51-33855F259EBC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pCube24";
	rename -uid "5CDB54A5-EA47-2C48-28E7-B590858308C7";
	setAttr ".t" -type "double3" 6.766 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pCubeShape24" -p "pCube24";
	rename -uid "1ABE6865-4A4A-B4FC-BE86-4E8F93896F4C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pCube24";
	rename -uid "83A9E3C2-3349-BE97-579B-50B6262DE962";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pCube27";
	rename -uid "323B0B20-834C-9B73-B13E-F7AC6385557B";
	setAttr ".t" -type "double3" 0.66101962461518449 2.120408428803076 -3.7058794622624625 ;
	setAttr ".s" -type "double3" 20.937637755163788 4.3811071150826262 1 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	rename -uid "8BB2A480-6B43-AE7D-4FEC-96BDE78ED965";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group";
	rename -uid "B3222E7B-4C46-251A-4B62-27A4E4BF498C";
	setAttr ".t" -type "double3" -8.1929197491068955 0 0 ;
	setAttr ".rp" -type "double3" 2.0850923117844982 0.39658129842439938 -0.0073410485634020084 ;
	setAttr ".sp" -type "double3" 2.0850923117844982 0.39658129842439938 -0.0073410485634020084 ;
createNode transform -n "pasted__pCube1" -p "group";
	rename -uid "EC6BE343-B248-7CA0-77E9-2E91E29B17E1";
	setAttr ".t" -type "double3" 16.258716496281206 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 1 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pasted__pCubeShape1" -p "pasted__pCube1";
	rename -uid "78E38983-DD46-1E76-AEEC-478F915862CA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[4]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[6]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[15]" -type "float3" 0.059474215 0 0 ;
createNode transform -n "pasted__pCube2" -p "group";
	rename -uid "FF65B082-9844-2E27-0D13-4BBEB275D288";
	setAttr ".t" -type "double3" 17.726893085274391 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 0.71018879508528632 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pasted__pCubeShape2" -p "pasted__pCube2";
	rename -uid "550F01DA-5543-BAC4-9D00-5A9D9FAB35A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  -0.055043869 0 0 -0.055043869 
		0 0 -0.055043869 0 0 -0.055043869 0 0 0.17706726 0 0 0.17706726 0 0 0.17706726 0 
		0 0.17706726 0 0;
createNode mesh -n "pasted__polySurfaceShape1" -p "pasted__pCube2";
	rename -uid "6FD70CDA-FD49-24A1-AAB9-04A46444C898";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube3" -p "group";
	rename -uid "3CF1ED95-A843-E8B6-EB01-5A98BF3A392C";
	setAttr ".t" -type "double3" 2.9523239308970863 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 1 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pasted__pCubeShape3" -p "pasted__pCube3";
	rename -uid "57571013-7B4D-59CB-C225-519E9A3CA5EA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -0.12603514 0 0 -0.12603514 
		0 0 -0.12603514 0 0 -0.12603514 0 0;
createNode mesh -n "pasted__polySurfaceShape2" -p "pasted__pCube3";
	rename -uid "C6CA4DA4-1F47-3E44-0A6B-09BF9C3B95B8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube4" -p "group";
	rename -uid "AF546171-034B-768E-2347-DBAF19FE8CBD";
	setAttr ".s" -type "double3" 0.70542879320805763 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pasted__pCubeShape4" -p "pasted__pCube4";
	rename -uid "EDBF4F32-AC4D-590F-0A08-63875B09D857";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  -0.19986153 0 0 -0.19986153 
		0 0 -0.19986153 0 0 -0.19986153 0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0;
createNode mesh -n "pasted__polySurfaceShape3" -p "pasted__pCube4";
	rename -uid "6356A580-7149-4351-0018-3AA33969F475";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube20" -p "group";
	rename -uid "3F746CBA-924C-DC3D-D6A9-9F86759D4742";
	setAttr ".t" -type "double3" 17.064716496281207 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pasted__pCubeShape20" -p "pasted__pCube20";
	rename -uid "EE3F94FC-CD49-3C67-4176-749B825E959D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__polySurfaceShape7" -p "pasted__pCube20";
	rename -uid "2D79BDE8-AC42-3F12-9109-0C93B02CC4C2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pasted__pCube21" -p "group";
	rename -uid "DADADBD0-B041-7E8F-6F66-62A9188DEB47";
	setAttr ".t" -type "double3" 2.1599949993098497 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pasted__pCubeShape21" -p "pasted__pCube21";
	rename -uid "3DE649A4-7444-756E-F946-F49E31525712";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__polySurfaceShape7" -p "pasted__pCube21";
	rename -uid "E244D810-1C49-85C9-E985-16AACB3ABFBC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pasted__pCube22" -p "group";
	rename -uid "D1729124-EB44-2EFD-82C9-F0A36A52893D";
	setAttr ".t" -type "double3" 3.4929949993098499 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pasted__pCubeShape22" -p "pasted__pCube22";
	rename -uid "459F4BE6-8B43-8639-9EE9-B99F13A23B87";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__polySurfaceShape7" -p "pasted__pCube22";
	rename -uid "8E552F4B-F24A-6B92-B0E0-EA9587298A13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "pasted__pCube28" -p "group";
	rename -uid "30A906AA-E64F-42DC-69C0-FF9D72550E23";
	setAttr ".t" -type "double3" 1.4893794854621945 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 0.71018879508528632 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pasted__pCubeShape28" -p "pasted__pCube28";
	rename -uid "B54663F1-8D4F-FAFD-FFD6-47B5EA1A9F2D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0 0.27069926
		 0 0.375 0 0.375 0.25 0.27069926 0.25 0.625 0 0.72930074 0 0.72930074 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[12:19]" -type "float3"  -0.055043869 0 0 -0.055043869 
		0 0 -0.055043869 0 0 -0.055043869 0 0 0.17706726 0 0 0.17706726 0 0 0.17706726 0 
		0 0.17706726 0 0;
	setAttr -s 20 ".vt[0:19]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705
		 -0.68119007 -0.5 0.08279705 -0.68119007 -0.5 0.5 -0.68119007 0.5 0.5 -0.68119007 0.5 0.08279705
		 0.70177257 -0.5 0.08279705 0.70177257 -0.5 0.5 0.70177257 0.5 0.08279705 0.70177257 0.5 0.5;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 1 1 3 1 2 9 1
		 3 8 1 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 1 9 10 0 11 1 1 10 11 1 11 8 0
		 10 12 0 0 13 0 12 13 0 2 14 0 13 14 0 9 15 0 14 15 0 15 12 0 11 16 0 1 17 0 16 17 0
		 8 18 0 16 18 0 3 19 0 19 18 0 17 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -31 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 22 24 26 27
		mu 0 4 22 23 24 25
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 15 21 -23 -21
		mu 0 4 18 0 23 22
		f 4 4 23 -25 -22
		mu 0 4 0 2 24 23
		f 4 6 25 -27 -24
		mu 0 4 2 16 25 24
		f 4 16 20 -28 -26
		mu 0 4 16 18 22 25
		f 4 -18 28 30 -30
		mu 0 4 1 21 27 26
		f 4 19 31 -33 -29
		mu 0 4 21 15 28 27
		f 4 -8 33 34 -32
		mu 0 4 15 3 29 28
		f 4 -6 29 35 -34
		mu 0 4 3 1 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__polySurfaceShape1" -p "pasted__pCube28";
	rename -uid "CD86FD85-B946-CAAD-75E2-A48068E026A3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32284963130950928 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  -1.8626451e-09 0 0 -1.8626451e-09 
		0 0 -1.8626451e-09 0 0 -1.8626451e-09 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 9 0
		 3 8 0 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -18 19 -8 -6
		mu 0 4 1 21 15 3
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube29" -p "group";
	rename -uid "FD71EE43-FF48-6CCB-1E4D-D1B80316B4F0";
	setAttr ".t" -type "double3" 0.021202896469009858 0.27311608195304865 0 ;
	setAttr ".s" -type "double3" 1 0.54623215014135118 6.0028231715358533 ;
	setAttr ".rp" -type "double3" 0 -0.27311608195304865 -3.0014116764068608 ;
	setAttr ".sp" -type "double3" 0 -0.50000001259972171 -0.5000000150993843 ;
	setAttr ".spt" -type "double3" 0 0.22688393064667306 -2.5014116613074764 ;
createNode mesh -n "pasted__pCubeShape29" -p "pasted__pCube29";
	rename -uid "8B54E42F-1E4B-8E9D-9A12-D590C976C28B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67715036869049072 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.35430074 0.72930074 0.25 0.27069926 0.25 0.375
		 0.35430074 0.27069926 0 0.375 0.89569926 0.625 0.89569926 0.72930074 0 0.625 0 0.72930074
		 0 0.72930074 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[4]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[6]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.17621925 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.059474215 0 0 ;
	setAttr ".pt[15]" -type "float3" 0.059474215 0 0 ;
	setAttr -s 16 ".vt[0:15]"  -0.4224056 -0.5 0.5 0.4224056 -0.5 0.5 -0.4224056 0.5 0.5
		 0.4224056 0.5 0.5 -0.4224056 0.5 -0.5 0.4224056 0.5 -0.5 -0.4224056 -0.5 -0.5 0.4224056 -0.5 -0.5
		 0.4224056 0.5 0.08279705 -0.4224056 0.5 0.08279705 -0.4224056 -0.5 0.08279705 0.4224056 -0.5 0.08279705
		 0.82085955 -0.5 0.08279705 0.82085955 -0.5 0.5 0.82085955 0.5 0.08279705 0.82085955 0.5 0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 1 2 9 0
		 3 8 1 4 6 0 5 7 0 6 10 0 7 11 0 8 5 0 9 4 0 8 9 1 10 0 0 9 10 1 11 1 1 10 11 1 11 8 0
		 11 12 0 1 13 0 12 13 0 8 14 0 12 14 0 3 15 0 15 14 0 13 15 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 14 -7
		mu 0 4 2 3 14 17
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 18 17 -1 -16
		mu 0 4 19 20 9 8
		f 4 -23 24 -27 -28
		mu 0 4 22 23 24 25
		f 4 15 4 6 16
		mu 0 4 18 0 2 16
		f 4 -15 12 -3 -14
		mu 0 4 17 14 5 4
		f 4 10 -17 13 8
		mu 0 4 12 18 16 13
		f 4 3 11 -19 -11
		mu 0 4 6 7 20 19
		f 4 -20 -12 -10 -13
		mu 0 4 15 21 10 11
		f 4 -18 20 22 -22
		mu 0 4 1 21 23 22
		f 4 19 23 -25 -21
		mu 0 4 21 15 24 23
		f 4 -8 25 26 -24
		mu 0 4 15 3 25 24
		f 4 -6 21 27 -26
		mu 0 4 3 1 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube30" -p "group";
	rename -uid "DF112941-1144-9C7C-CC42-BB847CBF83FB";
	setAttr ".t" -type "double3" 0.8272028964690108 0.3950399160385113 -0.045249890933060866 ;
	setAttr ".s" -type "double3" 0.6394994839545548 0.79007990060034394 1 ;
	setAttr ".rp" -type "double3" 0 -0.3950399160385113 -0.5 ;
	setAttr ".sp" -type "double3" 0 -0.49999995663519736 -0.5 ;
	setAttr ".spt" -type "double3" 0 0.10496004059668969 0 ;
createNode mesh -n "pasted__pCubeShape30" -p "pasted__pCube30";
	rename -uid "03C80248-0C47-9C92-6FC4-459BA569DC69";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.16750798 0.375 0.16750798 0.125 0.16750798
		 0.375 0.58249199 0.625 0.58249199 0.875 0.16750798;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0.11599712 0 -0.09694837 
		-0.11390311 0 -0.09694837 0.11599712 0 0 -0.11390311 0 0;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.50390178 0.5
		 0.5 0.50390178 0.5 -0.5 0.50390184 -2.97084379 0.5 0.50390184 -2.97084379 -0.5 -0.5 -2.97084379
		 0.5 -0.5 -2.97084379 0.5 0.17264622 0.5 -0.5 0.17264622 0.5 -0.5 0.17264625 -2.97084379
		 0.5 0.17264625 -2.97084379;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 9 0 1 8 0 2 4 0
		 3 5 0 4 10 0 5 11 0 6 0 0 7 1 0 8 3 0 9 2 0 8 9 1 10 6 0 9 10 1 11 7 0 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 14 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 18 17 -4 -16
		mu 0 4 17 18 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -18 19 -6
		mu 0 4 1 10 19 14
		f 4 10 4 16 15
		mu 0 4 12 0 15 16
		f 4 -15 12 -2 -14
		mu 0 4 15 14 3 2
		f 4 -17 13 6 8
		mu 0 4 16 15 2 13
		f 4 2 9 -19 -9
		mu 0 4 4 5 18 17
		f 4 -20 -10 -8 -13
		mu 0 4 14 19 11 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "pasted__polySurfaceShape7" -p "pasted__pCube30";
	rename -uid "D758EBCF-3F4B-1748-7BE6-D88DA45CFC20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.0039017797 0 0 0.0039017797 
		0 0 0.0039018299 -2.4708438 0 0.0039018299 -2.4708438 0 0 -2.4708438 0 0 -2.4708438;
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
createNode transform -n "ball_rig_2:Ball";
	rename -uid "549D855A-304A-029F-767C-6580B47A4361";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ball_rig_2:Geometry" -p "ball_rig_2:Ball";
	rename -uid "486824BB-A24C-C7F4-70EE-7F8C26F2E056";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ball_rig_2:Ball_Geo" -p "ball_rig_2:Geometry";
	rename -uid "8ED631DE-964D-6239-3985-559A0C676A4F";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode mesh -n "ball_rig_2:Ball_GeoShape" -p "ball_rig_2:Ball_Geo";
	rename -uid "876F0768-2649-C606-EA2C-EDA6169C7BA4";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "ball_rig_2:Ball_GeoShapeOrig" -p "ball_rig_2:Ball_Geo";
	rename -uid "F46A7309-7C4D-29A5-20B3-CDB1B51975C6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 439 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:438]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0 0.75000012
		 0.050000001 0.75000012 0.1 0.75000012 0.15000001 0.75000012 0.2 0.75000012 0.25 0.75000012
		 0.30000001 0.75000012 0.35000002 0.75000012 0.40000004 0.75000012 0.45000005 0.75000012
		 0.50000006 0.75000012 0.55000007 0.75000012 0.60000008 0.75000012 0.6500001 0.75000012
		 0.70000011 0.75000012 0.75000012 0.75000012 0.80000013 0.75000012 0.85000014 0.75000012
		 0.90000015 0.75000012 0.95000017 0.75000012 1.000000119209 0.75000012 0 0.80000013
		 0.050000001 0.80000013 0.1 0.80000013 0.15000001 0.80000013 0.2 0.80000013 0.25 0.80000013
		 0.30000001 0.80000013 0.35000002 0.80000013 0.40000004 0.80000013 0.45000005 0.80000013
		 0.50000006 0.80000013 0.55000007 0.80000013 0.60000008 0.80000013 0.6500001 0.80000013
		 0.70000011 0.80000013 0.75000012 0.80000013 0.80000013 0.80000013 0.85000014 0.80000013
		 0.90000015 0.80000013 0.95000017 0.80000013 1.000000119209 0.80000013 0 0.85000014
		 0.050000001 0.85000014 0.1 0.85000014 0.15000001 0.85000014 0.2 0.85000014 0.25 0.85000014
		 0.30000001 0.85000014 0.35000002 0.85000014 0.40000004 0.85000014 0.45000005 0.85000014
		 0.50000006 0.85000014 0.55000007 0.85000014 0.60000008 0.85000014 0.6500001 0.85000014
		 0.70000011 0.85000014 0.75000012 0.85000014 0.80000013 0.85000014 0.85000014 0.85000014
		 0.90000015 0.85000014 0.95000017 0.85000014 1.000000119209 0.85000014 0 0.90000015
		 0.050000001 0.90000015 0.1 0.90000015 0.15000001 0.90000015 0.2 0.90000015 0.25 0.90000015
		 0.30000001 0.90000015 0.35000002 0.90000015 0.40000004 0.90000015 0.45000005 0.90000015
		 0.50000006 0.90000015 0.55000007 0.90000015 0.60000008 0.90000015 0.6500001 0.90000015
		 0.70000011 0.90000015 0.75000012 0.90000015 0.80000013 0.90000015 0.85000014 0.90000015
		 0.90000015 0.90000015 0.95000017 0.90000015 1.000000119209 0.90000015 0 0.95000017
		 0.050000001 0.95000017 0.1 0.95000017 0.15000001 0.95000017 0.2 0.95000017 0.25 0.95000017
		 0.30000001 0.95000017 0.35000002 0.95000017 0.40000004 0.95000017 0.45000005 0.95000017
		 0.50000006 0.95000017 0.55000007 0.95000017 0.60000008 0.95000017 0.6500001 0.95000017
		 0.70000011 0.95000017 0.75000012 0.95000017 0.80000013 0.95000017 0.85000014 0.95000017
		 0.90000015 0.95000017 0.95000017 0.95000017 1.000000119209 0.95000017 0.025 0 0.075000003
		 0 0.125 0 0.175 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001 0 0.47499999
		 0 0.52500004 0 0.57499999 0 0.625 0 0.67500001 0 0.72500002 0 0.77500004 0 0.82499999
		 0 0.875 0 0.92500001 0 0.97500002 0 0.025 1 0.075000003 1 0.125 1 0.175 1 0.22500001
		 1 0.27500001 1 0.32500002 1 0.375 1 0.42500001 1 0.47499999 1 0.52500004 1 0.57499999
		 1 0.625 1 0.67500001 1 0.72500002 1 0.77500004 1 0.82499999 1 0.875 1 0.92500001
		 1 0.97500002 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  1.48778129 0.12311649 -0.48340943 1.26558232 0.12311649 -0.91949934
		 0.91949934 0.12311649 -1.26558232 0.48340935 0.12311649 -1.48778105 0 0.12311649 -1.56434548
		 -0.48340935 0.12311649 -1.48778093 -0.91949916 0.12311649 -1.26558197 -1.26558185 0.12311649 -0.91949904
		 -1.48778069 0.12311649 -0.48340923 -1.56434524 0.12311649 0 -1.48778069 0.12311649 0.48340923
		 -1.26558185 0.12311649 0.91949892 -0.91949892 0.12311649 1.26558173 -0.48340923 0.12311649 1.48778057
		 -4.6621107e-08 0.12311649 1.56434488 0.48340911 0.12311649 1.48778033 0.9194988 0.12311649 1.26558161
		 1.26558161 0.12311649 0.91949886 1.48778033 0.12311649 0.48340914 1.56434476 0.12311649 0
		 2.93892837 0.48943424 -0.95491564 2.50000191 0.48943424 -1.81635737 1.81635737 0.48943424 -2.50000143
		 0.95491552 0.48943424 -2.93892813 0 0.48943424 -3.090171576 -0.95491552 0.48943424 -2.93892765
		 -1.81635714 0.48943424 -2.50000095 -2.50000095 0.48943424 -1.8163569 -2.93892717 0.48943424 -0.95491529
		 -3.090170622 0.48943424 0 -2.93892717 0.48943424 0.95491529 -2.50000048 0.48943424 1.81635678
		 -1.81635678 0.48943424 2.50000048 -0.95491529 0.48943424 2.9389267 -9.209424e-08 0.48943424 3.090170383
		 0.95491499 0.48943424 2.93892646 1.8163563 0.48943424 2.50000024 2.5 0.48943424 1.81635642
		 2.93892646 0.48943424 0.95491505 3.090169907 0.48943424 0 4.31770897 1.089934349 -1.40290868
		 3.67286301 1.089934349 -2.66849089 2.66849089 1.089934349 -3.67286253 1.40290856 1.089934349 -4.31770849
		 0 1.089934349 -4.53990746 -1.40290856 1.089934349 -4.31770849 -2.66849041 1.089934349 -3.67286181
		 -3.67286158 1.089934349 -2.66849017 -4.31770754 1.089934349 -1.40290809 -4.5399065 1.089934349 0
		 -4.31770754 1.089934349 1.40290809 -3.6728611 1.089934349 2.66848993 -2.66848993 1.089934349 3.6728611
		 -1.40290809 1.089934349 4.31770706 -1.3529971e-07 1.089934349 4.53990555 1.40290785 1.089934349 4.31770706
		 2.66848922 1.089934349 3.67286086 3.67286062 1.089934349 2.66848946 4.31770658 1.089934349 1.40290797
		 4.53990507 1.089934349 0 5.59017372 1.90983009 -1.81635737 4.75528574 1.90983009 -3.45491695
		 3.45491695 1.90983009 -4.75528526 1.81635725 1.90983009 -5.59017277 0 1.90983009 -5.8778553
		 -1.81635725 1.90983009 -5.59017229 -3.45491648 1.90983009 -4.75528431 -4.75528383 1.90983009 -3.454916
		 -5.59017134 1.90983009 -1.81635666 -5.87785339 1.90983009 0 -5.59017134 1.90983009 1.81635666
		 -4.75528336 1.90983009 3.45491552 -3.45491552 1.90983009 4.75528336 -1.81635666 1.90983009 5.59017086
		 -1.7517365e-07 1.90983009 5.87785292 1.81635618 1.90983009 5.59017086 3.45491505 1.90983009 4.75528288
		 4.75528288 1.90983009 3.45491529 5.59016991 1.90983009 1.8163563 5.87785244 1.90983009 0
		 6.72498941 2.92893219 -2.18508148 5.72061777 2.92893219 -4.15627193 4.15627193 2.92893219 -5.72061729
		 2.18508124 2.92893219 -6.72498894 0 2.92893219 -7.071071148 -2.18508124 2.92893219 -6.72498798
		 -4.15627098 2.92893219 -5.72061586 -5.72061539 2.92893219 -4.1562705 -6.72498703 2.92893219 -2.18508053
		 -7.071069717 2.92893219 0 -6.72498703 2.92893219 2.18508053 -5.72061539 2.92893219 4.15627003
		 -4.15627003 2.92893219 5.72061491 -2.18508053 2.92893219 6.72498608 -2.1073424e-07 2.92893219 7.071068287
		 2.18507981 2.92893219 6.72498608 4.15626907 2.92893219 5.72061443 5.72061443 2.92893219 4.15626955
		 6.72498512 2.92893219 2.18508029 7.07106781 2.92893219 0 7.69421387 4.12214756 -2.50000143
		 6.54508972 4.12214756 -4.75528526 4.75528526 4.12214756 -6.54508877 2.50000119 4.12214756 -7.69421291
		 0 4.12214756 -8.090173721 -2.50000119 4.12214756 -7.69421196 -4.75528431 4.12214756 -6.54508781
		 -6.54508686 4.12214756 -4.75528383 -7.69421101 4.12214756 -2.50000048 -8.090171814 4.12214756 0
		 -7.69421101 4.12214756 2.50000048 -6.54508638 4.12214756 4.75528336 -4.75528336 4.12214756 6.54508591
		 -2.50000048 4.12214756 7.69421005 -2.4110585e-07 4.12214756 8.09017086 2.49999976 4.12214756 7.69421005
		 4.75528288 4.12214756 6.54508543 6.54508543 4.12214756 4.75528288 7.6942091 4.12214756 2.5
		 8.090169907 4.12214756 0 8.4739809 5.46009493 -2.75336313 7.2083993 5.46009493 -5.23720789
		 5.23720789 5.46009493 -7.20839882 2.75336289 5.46009493 -8.47397995 0 5.46009493 -8.91006947
		 -2.75336289 5.46009493 -8.47397995 -5.23720694 5.46009493 -7.20839691 -7.20839596 5.46009493 -5.23720646
		 -8.47397804 5.46009493 -2.75336218 -8.91006756 5.46009493 0 -8.47397804 5.46009493 2.75336218
		 -7.20839596 5.46009493 5.23720646 -5.23720646 5.46009493 7.20839548 -2.75336218 5.46009493 8.47397709
		 -2.6554065e-07 5.46009493 8.9100666 2.75336146 5.46009493 8.47397614 5.23720503 5.46009493 7.208395
		 7.20839453 5.46009493 5.23720551 8.47397614 5.46009493 2.7533617 8.91006565 5.46009493 0
		 9.045091629 6.90983009 -2.93892813 7.69421387 6.90983009 -5.59017372 5.59017372 6.90983009 -7.69421339
		 2.93892765 6.90983009 -9.045089722 0 6.90983009 -9.51057053 -2.93892765 6.90983009 -9.045089722
		 -5.59017229 6.90983009 -7.69421196 -7.69421148 6.90983009 -5.59017181 -9.045087814 6.90983009 -2.93892717
		 -9.51056767 6.90983009 0 -9.045087814 6.90983009 2.93892717 -7.69421101 6.90983009 5.59017134
		 -5.59017134 6.90983009 7.69421053 -2.93892717 6.90983009 9.045086861 -2.8343695e-07 6.90983009 9.51056671
		 2.93892622 6.90983009 9.045085907 5.59016991 6.90983009 7.69421005 7.6942091 6.90983009 5.59017086
		 9.045084953 6.90983009 2.93892646 9.51056576 6.90983009 0 9.3934803 8.43565655 -3.052126884
		 7.99057198 8.43565655 -5.80549002 5.80549002 8.43565655 -7.99057102 3.052126408 8.43565655 -9.39347935
		 0 8.43565655 -9.87688828 -3.052126408 8.43565655 -9.39347839;
	setAttr ".vt[166:331]" -5.80548859 8.43565655 -7.99056959 -7.99056911 8.43565655 -5.80548811
		 -9.39347649 8.43565655 -3.052125454 -9.87688637 8.43565655 0 -9.39347649 8.43565655 3.052125454
		 -7.99056816 8.43565655 5.80548763 -5.80548763 8.43565655 7.99056768 -3.052125454 8.43565655 9.39347553
		 -2.9435407e-07 8.43565655 9.87688446 3.052124739 8.43565655 9.39347553 5.80548668 8.43565655 7.99056721
		 7.99056625 8.43565655 5.80548716 9.39347458 8.43565655 3.052124977 9.87688351 8.43565655 0
		 9.51057148 10 -3.090171814 8.090175629 10 -5.87785625 5.87785625 10 -8.090174675
		 3.090171576 10 -9.51057053 0 10 -10.000004768372 -3.090171576 10 -9.51056957 -5.87785482 10 -8.090172768
		 -8.090172768 10 -5.87785435 -9.51056767 10 -3.090170622 -10.000001907349 10 0 -9.51056767 10 3.090170622
		 -8.090171814 10 5.87785339 -5.87785339 10 8.09017086 -3.090170622 10 9.51056671 -2.9802322e-07 10 10.000000953674
		 3.090169668 10 9.51056576 5.87785244 10 8.09017086 8.090169907 10 5.87785292 9.51056576 10 3.090169907
		 10 10 0 9.3934803 11.56434345 -3.052126884 7.99057198 11.56434345 -5.80549002 5.80549002 11.56434345 -7.99057102
		 3.052126408 11.56434345 -9.39347935 0 11.56434345 -9.87688828 -3.052126408 11.56434345 -9.39347839
		 -5.80548859 11.56434345 -7.99056959 -7.99056911 11.56434345 -5.80548811 -9.39347649 11.56434345 -3.052125454
		 -9.87688637 11.56434345 0 -9.39347649 11.56434345 3.052125454 -7.99056816 11.56434345 5.80548763
		 -5.80548763 11.56434345 7.99056768 -3.052125454 11.56434345 9.39347553 -2.9435407e-07 11.56434345 9.87688446
		 3.052124739 11.56434345 9.39347553 5.80548668 11.56434345 7.99056721 7.99056625 11.56434345 5.80548716
		 9.39347458 11.56434345 3.052124977 9.87688351 11.56434345 0 9.045091629 13.090169907 -2.93892813
		 7.69421387 13.090169907 -5.59017372 5.59017372 13.090169907 -7.69421339 2.93892765 13.090169907 -9.045089722
		 0 13.090169907 -9.51057053 -2.93892765 13.090169907 -9.045089722 -5.59017229 13.090169907 -7.69421196
		 -7.69421148 13.090169907 -5.59017181 -9.045087814 13.090169907 -2.93892717 -9.51056767 13.090169907 0
		 -9.045087814 13.090169907 2.93892717 -7.69421101 13.090169907 5.59017134 -5.59017134 13.090169907 7.69421053
		 -2.93892717 13.090169907 9.045086861 -2.8343695e-07 13.090169907 9.51056671 2.93892622 13.090169907 9.045085907
		 5.59016991 13.090169907 7.69421005 7.6942091 13.090169907 5.59017086 9.045084953 13.090169907 2.93892646
		 9.51056576 13.090169907 0 8.4739809 14.53990555 -2.75336313 7.2083993 14.53990555 -5.23720789
		 5.23720789 14.53990555 -7.20839882 2.75336289 14.53990555 -8.47397995 0 14.53990555 -8.91006947
		 -2.75336289 14.53990555 -8.47397995 -5.23720694 14.53990555 -7.20839691 -7.20839596 14.53990555 -5.23720646
		 -8.47397804 14.53990555 -2.75336218 -8.91006756 14.53990555 0 -8.47397804 14.53990555 2.75336218
		 -7.20839596 14.53990555 5.23720646 -5.23720646 14.53990555 7.20839548 -2.75336218 14.53990555 8.47397709
		 -2.6554065e-07 14.53990555 8.9100666 2.75336146 14.53990555 8.47397614 5.23720503 14.53990555 7.208395
		 7.20839453 14.53990555 5.23720551 8.47397614 14.53990555 2.7533617 8.91006565 14.53990555 0
		 7.69421387 15.87785244 -2.50000143 6.54508972 15.87785244 -4.75528526 4.75528526 15.87785244 -6.54508877
		 2.50000119 15.87785244 -7.69421291 0 15.87785244 -8.090173721 -2.50000119 15.87785244 -7.69421196
		 -4.75528431 15.87785244 -6.54508781 -6.54508686 15.87785244 -4.75528383 -7.69421101 15.87785244 -2.50000048
		 -8.090171814 15.87785244 0 -7.69421101 15.87785244 2.50000048 -6.54508638 15.87785244 4.75528336
		 -4.75528336 15.87785244 6.54508591 -2.50000048 15.87785244 7.69421005 -2.4110585e-07 15.87785244 8.09017086
		 2.49999976 15.87785244 7.69421005 4.75528288 15.87785244 6.54508543 6.54508543 15.87785244 4.75528288
		 7.6942091 15.87785244 2.5 8.090169907 15.87785244 0 6.72498941 17.07106781 -2.18508148
		 5.72061777 17.07106781 -4.15627193 4.15627193 17.07106781 -5.72061729 2.18508124 17.07106781 -6.72498894
		 0 17.07106781 -7.071071148 -2.18508124 17.07106781 -6.72498798 -4.15627098 17.07106781 -5.72061586
		 -5.72061539 17.07106781 -4.1562705 -6.72498703 17.07106781 -2.18508053 -7.071069717 17.07106781 0
		 -6.72498703 17.07106781 2.18508053 -5.72061539 17.07106781 4.15627003 -4.15627003 17.07106781 5.72061491
		 -2.18508053 17.07106781 6.72498608 -2.1073424e-07 17.07106781 7.071068287 2.18507981 17.07106781 6.72498608
		 4.15626907 17.07106781 5.72061443 5.72061443 17.07106781 4.15626955 6.72498512 17.07106781 2.18508029
		 7.07106781 17.07106781 0 5.59017372 18.090169907 -1.81635737 4.75528574 18.090169907 -3.45491695
		 3.45491695 18.090169907 -4.75528526 1.81635725 18.090169907 -5.59017277 0 18.090169907 -5.8778553
		 -1.81635725 18.090169907 -5.59017229 -3.45491648 18.090169907 -4.75528431 -4.75528383 18.090169907 -3.454916
		 -5.59017134 18.090169907 -1.81635666 -5.87785339 18.090169907 0 -5.59017134 18.090169907 1.81635666
		 -4.75528336 18.090169907 3.45491552 -3.45491552 18.090169907 4.75528336 -1.81635666 18.090169907 5.59017086
		 -1.7517365e-07 18.090169907 5.87785292 1.81635618 18.090169907 5.59017086 3.45491505 18.090169907 4.75528288
		 4.75528288 18.090169907 3.45491529 5.59016991 18.090169907 1.8163563 5.87785244 18.090169907 0
		 4.31770897 18.9100647 -1.40290868 3.67286301 18.9100647 -2.66849089 2.66849089 18.9100647 -3.67286253
		 1.40290856 18.9100647 -4.31770849 0 18.9100647 -4.53990746 -1.40290856 18.9100647 -4.31770849
		 -2.66849041 18.9100647 -3.67286181 -3.67286158 18.9100647 -2.66849017 -4.31770754 18.9100647 -1.40290809
		 -4.5399065 18.9100647 0 -4.31770754 18.9100647 1.40290809 -3.6728611 18.9100647 2.66848993;
	setAttr ".vt[332:381]" -2.66848993 18.9100647 3.6728611 -1.40290809 18.9100647 4.31770706
		 -1.3529971e-07 18.9100647 4.53990555 1.40290785 18.9100647 4.31770706 2.66848922 18.9100647 3.67286086
		 3.67286062 18.9100647 2.66848946 4.31770658 18.9100647 1.40290797 4.53990507 18.9100647 0
		 2.93892837 19.51056671 -0.95491564 2.50000191 19.51056671 -1.81635737 1.81635737 19.51056671 -2.50000143
		 0.95491552 19.51056671 -2.93892813 0 19.51056671 -3.090171576 -0.95491552 19.51056671 -2.93892765
		 -1.81635714 19.51056671 -2.50000095 -2.50000095 19.51056671 -1.8163569 -2.93892717 19.51056671 -0.95491529
		 -3.090170622 19.51056671 0 -2.93892717 19.51056671 0.95491529 -2.50000048 19.51056671 1.81635678
		 -1.81635678 19.51056671 2.50000048 -0.95491529 19.51056671 2.9389267 -9.209424e-08 19.51056671 3.090170383
		 0.95491499 19.51056671 2.93892646 1.8163563 19.51056671 2.50000024 2.5 19.51056671 1.81635642
		 2.93892646 19.51056671 0.95491505 3.090169907 19.51056671 0 1.48778129 19.87688446 -0.48340943
		 1.26558232 19.87688446 -0.91949934 0.91949934 19.87688446 -1.26558232 0.48340935 19.87688446 -1.48778105
		 0 19.87688446 -1.56434548 -0.48340935 19.87688446 -1.48778093 -0.91949916 19.87688446 -1.26558197
		 -1.26558185 19.87688446 -0.91949904 -1.48778069 19.87688446 -0.48340923 -1.56434524 19.87688446 0
		 -1.48778069 19.87688446 0.48340923 -1.26558185 19.87688446 0.91949892 -0.91949892 19.87688446 1.26558173
		 -0.48340923 19.87688446 1.48778057 -4.6621107e-08 19.87688446 1.56434488 0.48340911 19.87688446 1.48778033
		 0.9194988 19.87688446 1.26558161 1.26558161 19.87688446 0.91949886 1.48778033 19.87688446 0.48340914
		 1.56434476 19.87688446 0 0 0 0 0 20 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 22 21
		f 4 1 382 -22 -382
		mu 0 4 1 2 23 22
		f 4 2 383 -23 -383
		mu 0 4 2 3 24 23
		f 4 3 384 -24 -384
		mu 0 4 3 4 25 24
		f 4 4 385 -25 -385
		mu 0 4 4 5 26 25
		f 4 5 386 -26 -386
		mu 0 4 5 6 27 26
		f 4 6 387 -27 -387
		mu 0 4 6 7 28 27
		f 4 7 388 -28 -388
		mu 0 4 7 8 29 28
		f 4 8 389 -29 -389
		mu 0 4 8 9 30 29
		f 4 9 390 -30 -390
		mu 0 4 9 10 31 30
		f 4 10 391 -31 -391
		mu 0 4 10 11 32 31
		f 4 11 392 -32 -392
		mu 0 4 11 12 33 32
		f 4 12 393 -33 -393
		mu 0 4 12 13 34 33
		f 4 13 394 -34 -394
		mu 0 4 13 14 35 34
		f 4 14 395 -35 -395
		mu 0 4 14 15 36 35
		f 4 15 396 -36 -396
		mu 0 4 15 16 37 36
		f 4 16 397 -37 -397
		mu 0 4 16 17 38 37
		f 4 17 398 -38 -398
		mu 0 4 17 18 39 38
		f 4 18 399 -39 -399
		mu 0 4 18 19 40 39
		f 4 19 380 -40 -400
		mu 0 4 19 20 41 40
		f 4 20 401 -41 -401
		mu 0 4 21 22 43 42
		f 4 21 402 -42 -402
		mu 0 4 22 23 44 43
		f 4 22 403 -43 -403
		mu 0 4 23 24 45 44
		f 4 23 404 -44 -404
		mu 0 4 24 25 46 45
		f 4 24 405 -45 -405
		mu 0 4 25 26 47 46
		f 4 25 406 -46 -406
		mu 0 4 26 27 48 47
		f 4 26 407 -47 -407
		mu 0 4 27 28 49 48
		f 4 27 408 -48 -408
		mu 0 4 28 29 50 49
		f 4 28 409 -49 -409
		mu 0 4 29 30 51 50
		f 4 29 410 -50 -410
		mu 0 4 30 31 52 51
		f 4 30 411 -51 -411
		mu 0 4 31 32 53 52
		f 4 31 412 -52 -412
		mu 0 4 32 33 54 53
		f 4 32 413 -53 -413
		mu 0 4 33 34 55 54
		f 4 33 414 -54 -414
		mu 0 4 34 35 56 55
		f 4 34 415 -55 -415
		mu 0 4 35 36 57 56
		f 4 35 416 -56 -416
		mu 0 4 36 37 58 57
		f 4 36 417 -57 -417
		mu 0 4 37 38 59 58
		f 4 37 418 -58 -418
		mu 0 4 38 39 60 59
		f 4 38 419 -59 -419
		mu 0 4 39 40 61 60
		f 4 39 400 -60 -420
		mu 0 4 40 41 62 61
		f 4 40 421 -61 -421
		mu 0 4 42 43 64 63
		f 4 41 422 -62 -422
		mu 0 4 43 44 65 64
		f 4 42 423 -63 -423
		mu 0 4 44 45 66 65
		f 4 43 424 -64 -424
		mu 0 4 45 46 67 66
		f 4 44 425 -65 -425
		mu 0 4 46 47 68 67
		f 4 45 426 -66 -426
		mu 0 4 47 48 69 68
		f 4 46 427 -67 -427
		mu 0 4 48 49 70 69
		f 4 47 428 -68 -428
		mu 0 4 49 50 71 70
		f 4 48 429 -69 -429
		mu 0 4 50 51 72 71
		f 4 49 430 -70 -430
		mu 0 4 51 52 73 72
		f 4 50 431 -71 -431
		mu 0 4 52 53 74 73
		f 4 51 432 -72 -432
		mu 0 4 53 54 75 74
		f 4 52 433 -73 -433
		mu 0 4 54 55 76 75
		f 4 53 434 -74 -434
		mu 0 4 55 56 77 76
		f 4 54 435 -75 -435
		mu 0 4 56 57 78 77
		f 4 55 436 -76 -436
		mu 0 4 57 58 79 78
		f 4 56 437 -77 -437
		mu 0 4 58 59 80 79
		f 4 57 438 -78 -438
		mu 0 4 59 60 81 80
		f 4 58 439 -79 -439
		mu 0 4 60 61 82 81
		f 4 59 420 -80 -440
		mu 0 4 61 62 83 82
		f 4 60 441 -81 -441
		mu 0 4 63 64 85 84
		f 4 61 442 -82 -442
		mu 0 4 64 65 86 85
		f 4 62 443 -83 -443
		mu 0 4 65 66 87 86
		f 4 63 444 -84 -444
		mu 0 4 66 67 88 87
		f 4 64 445 -85 -445
		mu 0 4 67 68 89 88
		f 4 65 446 -86 -446
		mu 0 4 68 69 90 89
		f 4 66 447 -87 -447
		mu 0 4 69 70 91 90
		f 4 67 448 -88 -448
		mu 0 4 70 71 92 91
		f 4 68 449 -89 -449
		mu 0 4 71 72 93 92
		f 4 69 450 -90 -450
		mu 0 4 72 73 94 93
		f 4 70 451 -91 -451
		mu 0 4 73 74 95 94
		f 4 71 452 -92 -452
		mu 0 4 74 75 96 95
		f 4 72 453 -93 -453
		mu 0 4 75 76 97 96
		f 4 73 454 -94 -454
		mu 0 4 76 77 98 97
		f 4 74 455 -95 -455
		mu 0 4 77 78 99 98
		f 4 75 456 -96 -456
		mu 0 4 78 79 100 99
		f 4 76 457 -97 -457
		mu 0 4 79 80 101 100
		f 4 77 458 -98 -458
		mu 0 4 80 81 102 101
		f 4 78 459 -99 -459
		mu 0 4 81 82 103 102
		f 4 79 440 -100 -460
		mu 0 4 82 83 104 103
		f 4 80 461 -101 -461
		mu 0 4 84 85 106 105
		f 4 81 462 -102 -462
		mu 0 4 85 86 107 106
		f 4 82 463 -103 -463
		mu 0 4 86 87 108 107
		f 4 83 464 -104 -464
		mu 0 4 87 88 109 108
		f 4 84 465 -105 -465
		mu 0 4 88 89 110 109
		f 4 85 466 -106 -466
		mu 0 4 89 90 111 110
		f 4 86 467 -107 -467
		mu 0 4 90 91 112 111
		f 4 87 468 -108 -468
		mu 0 4 91 92 113 112
		f 4 88 469 -109 -469
		mu 0 4 92 93 114 113
		f 4 89 470 -110 -470
		mu 0 4 93 94 115 114
		f 4 90 471 -111 -471
		mu 0 4 94 95 116 115
		f 4 91 472 -112 -472
		mu 0 4 95 96 117 116
		f 4 92 473 -113 -473
		mu 0 4 96 97 118 117
		f 4 93 474 -114 -474
		mu 0 4 97 98 119 118
		f 4 94 475 -115 -475
		mu 0 4 98 99 120 119
		f 4 95 476 -116 -476
		mu 0 4 99 100 121 120
		f 4 96 477 -117 -477
		mu 0 4 100 101 122 121
		f 4 97 478 -118 -478
		mu 0 4 101 102 123 122
		f 4 98 479 -119 -479
		mu 0 4 102 103 124 123
		f 4 99 460 -120 -480
		mu 0 4 103 104 125 124
		f 4 100 481 -121 -481
		mu 0 4 105 106 127 126
		f 4 101 482 -122 -482
		mu 0 4 106 107 128 127
		f 4 102 483 -123 -483
		mu 0 4 107 108 129 128
		f 4 103 484 -124 -484
		mu 0 4 108 109 130 129
		f 4 104 485 -125 -485
		mu 0 4 109 110 131 130
		f 4 105 486 -126 -486
		mu 0 4 110 111 132 131
		f 4 106 487 -127 -487
		mu 0 4 111 112 133 132
		f 4 107 488 -128 -488
		mu 0 4 112 113 134 133
		f 4 108 489 -129 -489
		mu 0 4 113 114 135 134
		f 4 109 490 -130 -490
		mu 0 4 114 115 136 135
		f 4 110 491 -131 -491
		mu 0 4 115 116 137 136
		f 4 111 492 -132 -492
		mu 0 4 116 117 138 137
		f 4 112 493 -133 -493
		mu 0 4 117 118 139 138
		f 4 113 494 -134 -494
		mu 0 4 118 119 140 139
		f 4 114 495 -135 -495
		mu 0 4 119 120 141 140
		f 4 115 496 -136 -496
		mu 0 4 120 121 142 141
		f 4 116 497 -137 -497
		mu 0 4 121 122 143 142
		f 4 117 498 -138 -498
		mu 0 4 122 123 144 143
		f 4 118 499 -139 -499
		mu 0 4 123 124 145 144
		f 4 119 480 -140 -500
		mu 0 4 124 125 146 145
		f 4 120 501 -141 -501
		mu 0 4 126 127 148 147
		f 4 121 502 -142 -502
		mu 0 4 127 128 149 148
		f 4 122 503 -143 -503
		mu 0 4 128 129 150 149
		f 4 123 504 -144 -504
		mu 0 4 129 130 151 150
		f 4 124 505 -145 -505
		mu 0 4 130 131 152 151
		f 4 125 506 -146 -506
		mu 0 4 131 132 153 152
		f 4 126 507 -147 -507
		mu 0 4 132 133 154 153
		f 4 127 508 -148 -508
		mu 0 4 133 134 155 154
		f 4 128 509 -149 -509
		mu 0 4 134 135 156 155
		f 4 129 510 -150 -510
		mu 0 4 135 136 157 156
		f 4 130 511 -151 -511
		mu 0 4 136 137 158 157
		f 4 131 512 -152 -512
		mu 0 4 137 138 159 158
		f 4 132 513 -153 -513
		mu 0 4 138 139 160 159
		f 4 133 514 -154 -514
		mu 0 4 139 140 161 160
		f 4 134 515 -155 -515
		mu 0 4 140 141 162 161
		f 4 135 516 -156 -516
		mu 0 4 141 142 163 162
		f 4 136 517 -157 -517
		mu 0 4 142 143 164 163
		f 4 137 518 -158 -518
		mu 0 4 143 144 165 164
		f 4 138 519 -159 -519
		mu 0 4 144 145 166 165
		f 4 139 500 -160 -520
		mu 0 4 145 146 167 166
		f 4 140 521 -161 -521
		mu 0 4 147 148 169 168
		f 4 141 522 -162 -522
		mu 0 4 148 149 170 169
		f 4 142 523 -163 -523
		mu 0 4 149 150 171 170
		f 4 143 524 -164 -524
		mu 0 4 150 151 172 171
		f 4 144 525 -165 -525
		mu 0 4 151 152 173 172
		f 4 145 526 -166 -526
		mu 0 4 152 153 174 173
		f 4 146 527 -167 -527
		mu 0 4 153 154 175 174
		f 4 147 528 -168 -528
		mu 0 4 154 155 176 175
		f 4 148 529 -169 -529
		mu 0 4 155 156 177 176
		f 4 149 530 -170 -530
		mu 0 4 156 157 178 177
		f 4 150 531 -171 -531
		mu 0 4 157 158 179 178
		f 4 151 532 -172 -532
		mu 0 4 158 159 180 179
		f 4 152 533 -173 -533
		mu 0 4 159 160 181 180
		f 4 153 534 -174 -534
		mu 0 4 160 161 182 181
		f 4 154 535 -175 -535
		mu 0 4 161 162 183 182
		f 4 155 536 -176 -536
		mu 0 4 162 163 184 183
		f 4 156 537 -177 -537
		mu 0 4 163 164 185 184
		f 4 157 538 -178 -538
		mu 0 4 164 165 186 185
		f 4 158 539 -179 -539
		mu 0 4 165 166 187 186
		f 4 159 520 -180 -540
		mu 0 4 166 167 188 187
		f 4 160 541 -181 -541
		mu 0 4 168 169 190 189
		f 4 161 542 -182 -542
		mu 0 4 169 170 191 190
		f 4 162 543 -183 -543
		mu 0 4 170 171 192 191
		f 4 163 544 -184 -544
		mu 0 4 171 172 193 192
		f 4 164 545 -185 -545
		mu 0 4 172 173 194 193
		f 4 165 546 -186 -546
		mu 0 4 173 174 195 194
		f 4 166 547 -187 -547
		mu 0 4 174 175 196 195
		f 4 167 548 -188 -548
		mu 0 4 175 176 197 196
		f 4 168 549 -189 -549
		mu 0 4 176 177 198 197
		f 4 169 550 -190 -550
		mu 0 4 177 178 199 198
		f 4 170 551 -191 -551
		mu 0 4 178 179 200 199
		f 4 171 552 -192 -552
		mu 0 4 179 180 201 200
		f 4 172 553 -193 -553
		mu 0 4 180 181 202 201
		f 4 173 554 -194 -554
		mu 0 4 181 182 203 202
		f 4 174 555 -195 -555
		mu 0 4 182 183 204 203
		f 4 175 556 -196 -556
		mu 0 4 183 184 205 204
		f 4 176 557 -197 -557
		mu 0 4 184 185 206 205
		f 4 177 558 -198 -558
		mu 0 4 185 186 207 206
		f 4 178 559 -199 -559
		mu 0 4 186 187 208 207
		f 4 179 540 -200 -560
		mu 0 4 187 188 209 208
		f 4 180 561 -201 -561
		mu 0 4 189 190 211 210
		f 4 181 562 -202 -562
		mu 0 4 190 191 212 211
		f 4 182 563 -203 -563
		mu 0 4 191 192 213 212
		f 4 183 564 -204 -564
		mu 0 4 192 193 214 213
		f 4 184 565 -205 -565
		mu 0 4 193 194 215 214
		f 4 185 566 -206 -566
		mu 0 4 194 195 216 215
		f 4 186 567 -207 -567
		mu 0 4 195 196 217 216
		f 4 187 568 -208 -568
		mu 0 4 196 197 218 217
		f 4 188 569 -209 -569
		mu 0 4 197 198 219 218
		f 4 189 570 -210 -570
		mu 0 4 198 199 220 219
		f 4 190 571 -211 -571
		mu 0 4 199 200 221 220
		f 4 191 572 -212 -572
		mu 0 4 200 201 222 221
		f 4 192 573 -213 -573
		mu 0 4 201 202 223 222
		f 4 193 574 -214 -574
		mu 0 4 202 203 224 223
		f 4 194 575 -215 -575
		mu 0 4 203 204 225 224
		f 4 195 576 -216 -576
		mu 0 4 204 205 226 225
		f 4 196 577 -217 -577
		mu 0 4 205 206 227 226
		f 4 197 578 -218 -578
		mu 0 4 206 207 228 227
		f 4 198 579 -219 -579
		mu 0 4 207 208 229 228
		f 4 199 560 -220 -580
		mu 0 4 208 209 230 229
		f 4 200 581 -221 -581
		mu 0 4 210 211 232 231
		f 4 201 582 -222 -582
		mu 0 4 211 212 233 232
		f 4 202 583 -223 -583
		mu 0 4 212 213 234 233
		f 4 203 584 -224 -584
		mu 0 4 213 214 235 234
		f 4 204 585 -225 -585
		mu 0 4 214 215 236 235
		f 4 205 586 -226 -586
		mu 0 4 215 216 237 236
		f 4 206 587 -227 -587
		mu 0 4 216 217 238 237
		f 4 207 588 -228 -588
		mu 0 4 217 218 239 238
		f 4 208 589 -229 -589
		mu 0 4 218 219 240 239
		f 4 209 590 -230 -590
		mu 0 4 219 220 241 240
		f 4 210 591 -231 -591
		mu 0 4 220 221 242 241
		f 4 211 592 -232 -592
		mu 0 4 221 222 243 242
		f 4 212 593 -233 -593
		mu 0 4 222 223 244 243
		f 4 213 594 -234 -594
		mu 0 4 223 224 245 244
		f 4 214 595 -235 -595
		mu 0 4 224 225 246 245
		f 4 215 596 -236 -596
		mu 0 4 225 226 247 246
		f 4 216 597 -237 -597
		mu 0 4 226 227 248 247
		f 4 217 598 -238 -598
		mu 0 4 227 228 249 248
		f 4 218 599 -239 -599
		mu 0 4 228 229 250 249
		f 4 219 580 -240 -600
		mu 0 4 229 230 251 250
		f 4 220 601 -241 -601
		mu 0 4 231 232 253 252
		f 4 221 602 -242 -602
		mu 0 4 232 233 254 253
		f 4 222 603 -243 -603
		mu 0 4 233 234 255 254
		f 4 223 604 -244 -604
		mu 0 4 234 235 256 255
		f 4 224 605 -245 -605
		mu 0 4 235 236 257 256
		f 4 225 606 -246 -606
		mu 0 4 236 237 258 257
		f 4 226 607 -247 -607
		mu 0 4 237 238 259 258
		f 4 227 608 -248 -608
		mu 0 4 238 239 260 259
		f 4 228 609 -249 -609
		mu 0 4 239 240 261 260
		f 4 229 610 -250 -610
		mu 0 4 240 241 262 261
		f 4 230 611 -251 -611
		mu 0 4 241 242 263 262
		f 4 231 612 -252 -612
		mu 0 4 242 243 264 263
		f 4 232 613 -253 -613
		mu 0 4 243 244 265 264
		f 4 233 614 -254 -614
		mu 0 4 244 245 266 265
		f 4 234 615 -255 -615
		mu 0 4 245 246 267 266
		f 4 235 616 -256 -616
		mu 0 4 246 247 268 267
		f 4 236 617 -257 -617
		mu 0 4 247 248 269 268
		f 4 237 618 -258 -618
		mu 0 4 248 249 270 269
		f 4 238 619 -259 -619
		mu 0 4 249 250 271 270
		f 4 239 600 -260 -620
		mu 0 4 250 251 272 271
		f 4 240 621 -261 -621
		mu 0 4 252 253 274 273
		f 4 241 622 -262 -622
		mu 0 4 253 254 275 274
		f 4 242 623 -263 -623
		mu 0 4 254 255 276 275
		f 4 243 624 -264 -624
		mu 0 4 255 256 277 276
		f 4 244 625 -265 -625
		mu 0 4 256 257 278 277
		f 4 245 626 -266 -626
		mu 0 4 257 258 279 278
		f 4 246 627 -267 -627
		mu 0 4 258 259 280 279
		f 4 247 628 -268 -628
		mu 0 4 259 260 281 280
		f 4 248 629 -269 -629
		mu 0 4 260 261 282 281
		f 4 249 630 -270 -630
		mu 0 4 261 262 283 282
		f 4 250 631 -271 -631
		mu 0 4 262 263 284 283
		f 4 251 632 -272 -632
		mu 0 4 263 264 285 284
		f 4 252 633 -273 -633
		mu 0 4 264 265 286 285
		f 4 253 634 -274 -634
		mu 0 4 265 266 287 286
		f 4 254 635 -275 -635
		mu 0 4 266 267 288 287
		f 4 255 636 -276 -636
		mu 0 4 267 268 289 288
		f 4 256 637 -277 -637
		mu 0 4 268 269 290 289
		f 4 257 638 -278 -638
		mu 0 4 269 270 291 290
		f 4 258 639 -279 -639
		mu 0 4 270 271 292 291
		f 4 259 620 -280 -640
		mu 0 4 271 272 293 292
		f 4 260 641 -281 -641
		mu 0 4 273 274 295 294
		f 4 261 642 -282 -642
		mu 0 4 274 275 296 295
		f 4 262 643 -283 -643
		mu 0 4 275 276 297 296
		f 4 263 644 -284 -644
		mu 0 4 276 277 298 297
		f 4 264 645 -285 -645
		mu 0 4 277 278 299 298
		f 4 265 646 -286 -646
		mu 0 4 278 279 300 299
		f 4 266 647 -287 -647
		mu 0 4 279 280 301 300
		f 4 267 648 -288 -648
		mu 0 4 280 281 302 301
		f 4 268 649 -289 -649
		mu 0 4 281 282 303 302
		f 4 269 650 -290 -650
		mu 0 4 282 283 304 303
		f 4 270 651 -291 -651
		mu 0 4 283 284 305 304
		f 4 271 652 -292 -652
		mu 0 4 284 285 306 305
		f 4 272 653 -293 -653
		mu 0 4 285 286 307 306
		f 4 273 654 -294 -654
		mu 0 4 286 287 308 307
		f 4 274 655 -295 -655
		mu 0 4 287 288 309 308
		f 4 275 656 -296 -656
		mu 0 4 288 289 310 309
		f 4 276 657 -297 -657
		mu 0 4 289 290 311 310
		f 4 277 658 -298 -658
		mu 0 4 290 291 312 311
		f 4 278 659 -299 -659
		mu 0 4 291 292 313 312
		f 4 279 640 -300 -660
		mu 0 4 292 293 314 313
		f 4 280 661 -301 -661
		mu 0 4 294 295 316 315
		f 4 281 662 -302 -662
		mu 0 4 295 296 317 316
		f 4 282 663 -303 -663
		mu 0 4 296 297 318 317
		f 4 283 664 -304 -664
		mu 0 4 297 298 319 318
		f 4 284 665 -305 -665
		mu 0 4 298 299 320 319
		f 4 285 666 -306 -666
		mu 0 4 299 300 321 320
		f 4 286 667 -307 -667
		mu 0 4 300 301 322 321
		f 4 287 668 -308 -668
		mu 0 4 301 302 323 322
		f 4 288 669 -309 -669
		mu 0 4 302 303 324 323
		f 4 289 670 -310 -670
		mu 0 4 303 304 325 324
		f 4 290 671 -311 -671
		mu 0 4 304 305 326 325
		f 4 291 672 -312 -672
		mu 0 4 305 306 327 326
		f 4 292 673 -313 -673
		mu 0 4 306 307 328 327
		f 4 293 674 -314 -674
		mu 0 4 307 308 329 328
		f 4 294 675 -315 -675
		mu 0 4 308 309 330 329
		f 4 295 676 -316 -676
		mu 0 4 309 310 331 330
		f 4 296 677 -317 -677
		mu 0 4 310 311 332 331
		f 4 297 678 -318 -678
		mu 0 4 311 312 333 332
		f 4 298 679 -319 -679
		mu 0 4 312 313 334 333
		f 4 299 660 -320 -680
		mu 0 4 313 314 335 334
		f 4 300 681 -321 -681
		mu 0 4 315 316 337 336
		f 4 301 682 -322 -682
		mu 0 4 316 317 338 337
		f 4 302 683 -323 -683
		mu 0 4 317 318 339 338
		f 4 303 684 -324 -684
		mu 0 4 318 319 340 339
		f 4 304 685 -325 -685
		mu 0 4 319 320 341 340
		f 4 305 686 -326 -686
		mu 0 4 320 321 342 341
		f 4 306 687 -327 -687
		mu 0 4 321 322 343 342
		f 4 307 688 -328 -688
		mu 0 4 322 323 344 343
		f 4 308 689 -329 -689
		mu 0 4 323 324 345 344
		f 4 309 690 -330 -690
		mu 0 4 324 325 346 345
		f 4 310 691 -331 -691
		mu 0 4 325 326 347 346
		f 4 311 692 -332 -692
		mu 0 4 326 327 348 347
		f 4 312 693 -333 -693
		mu 0 4 327 328 349 348
		f 4 313 694 -334 -694
		mu 0 4 328 329 350 349
		f 4 314 695 -335 -695
		mu 0 4 329 330 351 350
		f 4 315 696 -336 -696
		mu 0 4 330 331 352 351
		f 4 316 697 -337 -697
		mu 0 4 331 332 353 352
		f 4 317 698 -338 -698
		mu 0 4 332 333 354 353
		f 4 318 699 -339 -699
		mu 0 4 333 334 355 354
		f 4 319 680 -340 -700
		mu 0 4 334 335 356 355
		f 4 320 701 -341 -701
		mu 0 4 336 337 358 357
		f 4 321 702 -342 -702
		mu 0 4 337 338 359 358
		f 4 322 703 -343 -703
		mu 0 4 338 339 360 359
		f 4 323 704 -344 -704
		mu 0 4 339 340 361 360
		f 4 324 705 -345 -705
		mu 0 4 340 341 362 361
		f 4 325 706 -346 -706
		mu 0 4 341 342 363 362
		f 4 326 707 -347 -707
		mu 0 4 342 343 364 363
		f 4 327 708 -348 -708
		mu 0 4 343 344 365 364
		f 4 328 709 -349 -709
		mu 0 4 344 345 366 365
		f 4 329 710 -350 -710
		mu 0 4 345 346 367 366
		f 4 330 711 -351 -711
		mu 0 4 346 347 368 367
		f 4 331 712 -352 -712
		mu 0 4 347 348 369 368
		f 4 332 713 -353 -713
		mu 0 4 348 349 370 369
		f 4 333 714 -354 -714
		mu 0 4 349 350 371 370
		f 4 334 715 -355 -715
		mu 0 4 350 351 372 371
		f 4 335 716 -356 -716
		mu 0 4 351 352 373 372
		f 4 336 717 -357 -717
		mu 0 4 352 353 374 373
		f 4 337 718 -358 -718
		mu 0 4 353 354 375 374
		f 4 338 719 -359 -719
		mu 0 4 354 355 376 375
		f 4 339 700 -360 -720
		mu 0 4 355 356 377 376
		f 4 340 721 -361 -721
		mu 0 4 357 358 379 378
		f 4 341 722 -362 -722
		mu 0 4 358 359 380 379
		f 4 342 723 -363 -723
		mu 0 4 359 360 381 380
		f 4 343 724 -364 -724
		mu 0 4 360 361 382 381
		f 4 344 725 -365 -725
		mu 0 4 361 362 383 382
		f 4 345 726 -366 -726
		mu 0 4 362 363 384 383
		f 4 346 727 -367 -727
		mu 0 4 363 364 385 384
		f 4 347 728 -368 -728
		mu 0 4 364 365 386 385
		f 4 348 729 -369 -729
		mu 0 4 365 366 387 386
		f 4 349 730 -370 -730
		mu 0 4 366 367 388 387
		f 4 350 731 -371 -731
		mu 0 4 367 368 389 388
		f 4 351 732 -372 -732
		mu 0 4 368 369 390 389
		f 4 352 733 -373 -733
		mu 0 4 369 370 391 390
		f 4 353 734 -374 -734
		mu 0 4 370 371 392 391
		f 4 354 735 -375 -735
		mu 0 4 371 372 393 392
		f 4 355 736 -376 -736
		mu 0 4 372 373 394 393
		f 4 356 737 -377 -737
		mu 0 4 373 374 395 394
		f 4 357 738 -378 -738
		mu 0 4 374 375 396 395
		f 4 358 739 -379 -739
		mu 0 4 375 376 397 396
		f 4 359 720 -380 -740
		mu 0 4 376 377 398 397
		f 3 -1 -741 741
		mu 0 3 1 0 399
		f 3 -2 -742 742
		mu 0 3 2 1 400
		f 3 -3 -743 743
		mu 0 3 3 2 401
		f 3 -4 -744 744
		mu 0 3 4 3 402
		f 3 -5 -745 745
		mu 0 3 5 4 403
		f 3 -6 -746 746
		mu 0 3 6 5 404
		f 3 -7 -747 747
		mu 0 3 7 6 405
		f 3 -8 -748 748
		mu 0 3 8 7 406
		f 3 -9 -749 749
		mu 0 3 9 8 407
		f 3 -10 -750 750
		mu 0 3 10 9 408
		f 3 -11 -751 751
		mu 0 3 11 10 409
		f 3 -12 -752 752
		mu 0 3 12 11 410
		f 3 -13 -753 753
		mu 0 3 13 12 411
		f 3 -14 -754 754
		mu 0 3 14 13 412
		f 3 -15 -755 755
		mu 0 3 15 14 413
		f 3 -16 -756 756
		mu 0 3 16 15 414
		f 3 -17 -757 757
		mu 0 3 17 16 415
		f 3 -18 -758 758
		mu 0 3 18 17 416
		f 3 -19 -759 759
		mu 0 3 19 18 417
		f 3 -20 -760 740
		mu 0 3 20 19 418
		f 3 360 761 -761
		mu 0 3 378 379 419
		f 3 361 762 -762
		mu 0 3 379 380 420
		f 3 362 763 -763
		mu 0 3 380 381 421
		f 3 363 764 -764
		mu 0 3 381 382 422
		f 3 364 765 -765
		mu 0 3 382 383 423
		f 3 365 766 -766
		mu 0 3 383 384 424
		f 3 366 767 -767
		mu 0 3 384 385 425
		f 3 367 768 -768
		mu 0 3 385 386 426
		f 3 368 769 -769
		mu 0 3 386 387 427
		f 3 369 770 -770
		mu 0 3 387 388 428
		f 3 370 771 -771
		mu 0 3 388 389 429
		f 3 371 772 -772
		mu 0 3 389 390 430
		f 3 372 773 -773
		mu 0 3 390 391 431
		f 3 373 774 -774
		mu 0 3 391 392 432
		f 3 374 775 -775
		mu 0 3 392 393 433
		f 3 375 776 -776
		mu 0 3 393 394 434
		f 3 376 777 -777
		mu 0 3 394 395 435
		f 3 377 778 -778
		mu 0 3 395 396 436
		f 3 378 779 -779
		mu 0 3 396 397 437
		f 3 379 760 -780
		mu 0 3 397 398 438;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "ball_rig_2:Ball_Geo_parentConstraint1" -p "ball_rig_2:Ball_Geo";
	rename -uid "6EA2BD7E-824E-9D68-B5C7-0FAF9824D188";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -10 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "ball_rig_2:Ball_Geo_scaleConstraint1" -p "ball_rig_2:Ball_Geo";
	rename -uid "85C85399-6D4F-26C0-8FF9-DD8827975DC1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "ball_rig_2:Controls" -p "ball_rig_2:Ball";
	rename -uid "91E2C8A4-C646-860B-E195-00A0649238C0";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ball_rig_2:Transform_Ctrl_Grp" -p "ball_rig_2:Controls";
	rename -uid "7DE74D1D-4441-828B-5E68-7E9FB4F8ADCC";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ball_rig_2:Transform_Ctrl" -p "ball_rig_2:Transform_Ctrl_Grp";
	rename -uid "7B9CF453-B842-C394-82F3-9BB4A65B6F48";
	setAttr -l on -k off ".v";
createNode nurbsCurve -n "ball_rig_2:Transform_CtrlShape" -p "ball_rig_2:Transform_Ctrl";
	rename -uid "3A1E93BA-6242-93E1-F34C-96A3C60708BB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.933724213199278 7.3072985798008701e-16 -11.933724213199261
		-1.9254450345246765e-15 1.0334080755864054e-15 -16.876834631926599
		-11.933724213199268 7.307298579800875e-16 -11.933724213199268
		-16.876834631926599 2.9945580647619688e-31 -4.8904844512669238e-15
		-11.933724213199271 -7.3072985798008721e-16 11.933724213199262
		-5.0853196449014701e-15 -1.0334080755864056e-15 16.876834631926602
		11.933724213199261 -7.307298579800876e-16 11.93372421319927
		16.876834631926599 -5.5504549330220901e-31 9.0645808030307722e-15
		11.933724213199278 7.3072985798008701e-16 -11.933724213199261
		-1.9254450345246765e-15 1.0334080755864054e-15 -16.876834631926599
		-11.933724213199268 7.307298579800875e-16 -11.933724213199268
		;
createNode transform -n "ball_rig_2:COG_Ctrl_Grp" -p "ball_rig_2:Transform_Ctrl";
	rename -uid "64179B20-A843-858B-8496-DD9DBED7A29B";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 10 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ball_rig_2:COG_Ctrl" -p "ball_rig_2:COG_Ctrl_Grp";
	rename -uid "E5D4614D-DE44-8F4A-9CA1-3993F87D7409";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "ball_rig_2:COG_CtrlShape" -p "ball_rig_2:COG_Ctrl";
	rename -uid "7B69E168-8445-517D-FDEF-CF8E8A7E6101";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		9.6952108568423743 5.9366044714453315e-16 -9.6952108568423601
		-1.5642724156746994e-15 8.395626557962753e-16 -13.711098683813351
		-9.6952108568423654 5.9366044714453354e-16 -9.6952108568423654
		-13.711098683813351 2.4328425345051435e-31 -3.9731333739637966e-15
		-9.6952108568423689 -5.9366044714453334e-16 9.6952108568423618
		-4.1314216208575321e-15 -8.395626557962755e-16 13.711098683813354
		9.6952108568423601 -5.9366044714453364e-16 9.6952108568423672
		13.711098683813351 -4.5093074019198869e-31 7.3642578497889212e-15
		9.6952108568423743 5.9366044714453315e-16 -9.6952108568423601
		-1.5642724156746994e-15 8.395626557962753e-16 -13.711098683813351
		-9.6952108568423654 5.9366044714453354e-16 -9.6952108568423654
		;
createNode transform -n "ball_rig_2:Squash_Ctrl_Grp" -p "ball_rig_2:COG_Ctrl";
	rename -uid "4074DB8A-194F-258F-A6E7-94BC1BC2861C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ball_rig_2:Squash_Ctrl" -p "ball_rig_2:Squash_Ctrl_Grp";
	rename -uid "FDD35117-9549-939D-9475-219C7621C63D";
	addAttr -ci true -sn "Scale" -ln "Scale" -min 0 -at "double";
	addAttr -ci true -sn "Squash" -ln "Squash" -at "double";
	addAttr -ci true -sn "SquashPosition" -ln "SquashPosition" -dv 0.001 -min 0.001 
		-max 0.999 -at "double";
	addAttr -ci true -sn "HighBound" -ln "HighBound" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "LowBound" -ln "LowBound" -dv -1 -max 0 -at "double";
	addAttr -ci true -sn "Follow" -ln "Follow" -min 0 -max 1 -en "COG:Transform" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 -10 0 ;
	setAttr ".sp" -type "double3" 0 -10 0 ;
	setAttr -k on ".Scale";
	setAttr -k on ".Squash";
	setAttr -k on ".SquashPosition";
	setAttr -k on ".HighBound";
	setAttr -k on ".LowBound";
	setAttr -k on ".Follow";
createNode nurbsCurve -n "ball_rig_2:Squash_CtrlShape" -p "ball_rig_2:Squash_Ctrl";
	rename -uid "E5DBB60A-B344-FB77-D94B-9A8694F403D6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-1.324012261009279 20.402489056689763 0
		1.324012261009279 20.402489056689763 0
		1.324012261009279 17.382267790610122 0
		2.6480245220185581 17.382267790610122 0
		0 13.071066715915961 0
		-2.6480245220185581 17.382267790610122 0
		-1.324012261009279 17.382267790610122 0
		-1.324012261009279 20.402489056689763 0
		;
createNode parentConstraint -n "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1" -p "ball_rig_2:Squash_Ctrl_Grp";
	rename -uid "1AAC1AB3-CD42-EE6C-6533-DF8F334C455A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Transform_CtrlW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "COG_CtrlW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 10 0 ;
	setAttr ".int" 0;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "ball_rig_2:Deformers" -p "ball_rig_2:Ball";
	rename -uid "A29E955A-854C-EBF0-AB2B-CB8B34732F13";
	setAttr -l on -k off ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "ball_rig_2:Ball_Def_Squash_Handle" -p "ball_rig_2:Deformers";
	rename -uid "C0F52D40-CA46-703D-532E-62B050C27B22";
	setAttr -l on -k off ".v";
	setAttr ".smd" 7;
createNode deformSquash -n "ball_rig_2:Ball_Def_Squash_HandleShape" -p "ball_rig_2:Ball_Def_Squash_Handle";
	rename -uid "260A9422-EF4C-50AC-91B6-7DBC7DF449AB";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 7 -1 1 0 0 0.5 1 -0.20000000000000001 ;
	setAttr ".hw" 11.000001049041749;
createNode parentConstraint -n "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1" 
		-p "ball_rig_2:Ball_Def_Squash_Handle";
	rename -uid "38C4E3DF-7D49-D9A0-E710-30A3BDB80B52";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Squash_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1" 
		-p "ball_rig_2:Ball_Def_Squash_Handle";
	rename -uid "27E03C69-1549-0916-B2DF-12A3B9B51EF9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Squash_CtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 20 20 20 ;
	setAttr -k on ".w0";
createNode transform -n "aiSkyDomeLight1";
	rename -uid "3991CA9F-5E47-6BB8-614C-9683FF3DCBFB";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "68B478A2-AA4B-408C-F5E2-B88FE25A8C9E";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "group1";
	rename -uid "3F2394EA-B849-78D8-9012-7F8169E7DED4";
	setAttr ".t" -type "double3" 0 -3.0782735076819949 3.2924565570706608 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1 1.6758773439922601 1 ;
	setAttr ".rp" -type "double3" -0.42564935225330736 2.120408428803076 -3.7058794622624625 ;
	setAttr ".sp" -type "double3" -0.42564935225330736 2.120408428803076 -3.7058794622624625 ;
createNode transform -n "pasted__pCube27" -p "group1";
	rename -uid "A6D040DC-FD4F-4EF3-C83B-2AB3BC742C40";
	setAttr ".t" -type "double3" 0.89280702319576521 2.120408428803076 -3.2364879102563542 ;
	setAttr ".s" -type "double3" 20.120197048292741 4.3811071150826262 1.5490307911136982 ;
createNode mesh -n "pasted__pCubeShape27" -p "pasted__pCube27";
	rename -uid "267376CE-0243-BB12-CF90-33B151A4F2D1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "directionalLight2";
	rename -uid "5149ECC3-3943-A076-E087-1599E2BD2A1B";
	setAttr ".t" -type "double3" 2.2462833855744275 1.933375813951407 0 ;
	setAttr ".r" -type "double3" 0 -35.931937038342944 0 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	rename -uid "00F8C170-4744-D34A-2FB7-FC9D299B07EE";
	setAttr -k off ".v";
	setAttr ".in" 3.6666667461395264;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "22BDFA32-C640-D0D9-A3EE-16870E8C8F1F";
	setAttr -s 16 ".lnk";
	setAttr -s 16 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FF5270E0-6840-7D35-903D-ABAD5A0F313A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9169C870-CC49-09BE-12F1-8DB6AC734CD5";
createNode displayLayerManager -n "layerManager";
	rename -uid "A9041782-2441-8B2C-48EE-1597903FA48F";
createNode displayLayer -n "defaultLayer";
	rename -uid "3FF993CC-5743-A1AD-CB41-D089D6AD4CE6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0A5EE50E-6942-FCB5-BDD8-33B005D02A8B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B6ABD90D-1D4D-CB21-85A7-B88C39C1E6FE";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "402CD3E2-DE4A-B81C-3BEF-719E6E271A51";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "35A979F0-CB4A-3694-32E5-869E04D33ECB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 0 0.27311608195304865 0 1;
	setAttr ".wt" 0.41720294952392578;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "76A2A360-8C49-F85B-CBDA-CA9AC931EEE8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.077594392 0 0 -0.077594392
		 0 0 0.077594392 0 0 -0.077594392 0 0 0.077594392 0 0 -0.077594392 0 0 0.077594392
		 0 0 -0.077594392 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "01D7AEA5-BE48-9308-AA84-ABB4A65E763B";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 0 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.4224056 0.27311608 1.7492138 ;
	setAttr ".rs" 1149261977;
	setAttr ".lt" -type "double3" 8.8474549883850344e-17 4.8796535433879279e-17 0.39845394988868077 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.42240560054779053 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 0.42240560054779053 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "06133C62-6F40-DB85-4013-70991C00EDC0";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 1.5868810796255457 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1644754 0.27311608 1.7492138 ;
	setAttr ".rs" 642744582;
	setAttr ".lt" -type "double3" 3.8662751727138509e-16 5.5511151231257827e-17 0.25878445728541011 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1644754790777552 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 1.1644754790777552 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "91AE5190-714F-7797-2671-E6A780242112";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 1.5868810796255457 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0092866 0.27311608 1.7492138 ;
	setAttr ".rs" 297303587;
	setAttr ".lt" -type "double3" 7.2816570392847479e-16 8.972371609965443e-17 0.27936679287625399 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0092866801733362 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 2.0092866801733362 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "09C91BBE-624C-B3DE-D0B6-16BD94492230";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 3.1902234540455483 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7678177 0.27311608 1.7492138 ;
	setAttr ".rs" 962967644;
	setAttr ".lt" -type "double3" -7.6421418809153828e-17 -5.5511151231257827e-17 0.34417147327202979 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7678178534977578 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 2.7678178534977578 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "09CC8A48-9A4E-1891-BA29-FA93B5844866";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 2.9133289315872366 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.1005564 0.27311608 1.7492138 ;
	setAttr ".rs" 1987310591;
	setAttr ".lt" -type "double3" -5.9656092766583405e-16 -1.713948553167373e-17 0.31332842846035236 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.1005564191513235 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 3.1005564191513235 0.5462321570237243 3.0014115857679267 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "6D65E99F-7D47-5252-5D76-6D9B8939F77B";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[1]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[19]" -type "float3" -1.8626451e-09 0 0 ;
createNode animCurveTL -n "pCube4_translateX";
	rename -uid "3F20A6BE-A64F-F0D7-EDA7-B094B8CED11A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.1183938122522372;
createNode animCurveTL -n "pCube4_translateY";
	rename -uid "9D9CCC71-014F-30EB-A25E-D2ACB82A3135";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.27311608195304865;
createNode animCurveTL -n "pCube4_translateZ";
	rename -uid "EC4A38AD-A14B-8EFF-8010-AD89C10CF4DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "1F2E32C4-BC40-E42C-929B-E4AE844FD0B5";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.70542879320805763 0 0 0 0 0.54623215014135118 0 0
		 0 0 6.0028231715358533 0 4.1183938122522372 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.8204167 0.27311608 1.7492138 ;
	setAttr ".rs" 1387630524;
	setAttr ".lt" -type "double3" -7.3468552172486402e-17 0 0.33087294418745961 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8204167392134845 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 3.8204167392134845 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "E2CC2991-C24F-4BC8-70D1-E7944895C550";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.70542879320805763 0 0 0 0 0.54623215014135118 0 0
		 0 0 6.0028231715358533 0 4.7663805455011321 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.0643578 0.27311608 1.7492138 ;
	setAttr ".rs" 427999771;
	setAttr ".lt" -type "double3" 9.0982636721056131e-17 -5.3313259317208299e-18 0.4097493688341336 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.0643576185398844 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 5.0643576185398844 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "BEE4445C-CB46-A0AA-63BD-34A6D201DDD6";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.70542879320805763 0 0 0 0 0.54623215014135118 0 0
		 0 0 6.0028231715358533 0 6.0978503374762525 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.7998734 0.27311608 1.7492138 ;
	setAttr ".rs" 1268817658;
	setAttr ".lt" -type "double3" -4.9364663272069041e-17 0 0.22231867911736014 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.7998732644375002 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 5.7998732644375002 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "CA842023-3540-3099-264B-DC834977ED46";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.70542879320805763 0 0 0 0 0.54623215014135118 0 0
		 0 0 6.0028231715358533 0 6.0978503374762525 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.3958273 0.27311608 1.7492138 ;
	setAttr ".rs" 1014866264;
	setAttr ".lt" -type "double3" 7.1510622947276224e-16 -1.3952360541294486e-16 0.22055214858385241 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.3958272002808423 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 6.3958272002808423 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "F8058A57-2A4E-277A-07C5-1BBE1C08867B";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.70542879320805763 0 0 0 0 0.54623215014135118 0 0
		 0 0 6.0028231715358533 0 7.4584657970429689 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.1604886 0.27311608 1.7492138 ;
	setAttr ".rs" 337584353;
	setAttr ".lt" -type "double3" 3.4235245914372174e-16 5.5511151231257827e-17 0.4581815925709618 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.1604887240042165 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 7.1604887240042165 0.5462321570237243 3.0014115857679267 ;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "383E52BE-1B43-63BC-1B5C-668FE42A4F27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.6394994839545548 0 0 0 0 0.79007990060034394 0 0 0 0 1 0
		 -1.3242435814774829 0.39503991603851663 -0.045249890933060866 1;
	setAttr ".wt" 0.67003190517425537;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9BB46330-E643-A523-71BD-629435EB4F8B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1854\n            -height 1338\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1854\\n    -height 1338\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1854\\n    -height 1338\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "60C4154D-2B47-2A2D-59DE-CB8E777B3593";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode standardSurface -n "whiteKey";
	rename -uid "162E2AE8-8C4C-B5FF-D06F-11A7B77EC2EE";
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".sr" 0;
	setAttr ".sior" 1.559999942779541;
	setAttr ".sa" 0.50400000810623169;
	setAttr ".td" 1;
	setAttr ".tsa" 0.0079999994486570358;
	setAttr ".subs" 0;
	setAttr ".shr" 0;
	setAttr ".ct" 1;
	setAttr ".ctr" 0;
	setAttr ".ctior" 0.92000001668930054;
	setAttr ".tfior" 1.4160000085830688;
createNode shadingEngine -n "standardSurface2SG";
	rename -uid "448C1997-7C48-1096-5501-DF81AB1565B0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "4D959DA5-124F-DB7F-3331-B084A927D26E";
createNode file -n "file1";
	rename -uid "23ACE2E9-C14A-6D83-C42C-C0B511EAFC5A";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/pianoBackPSD.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "C2F9F881-7540-435D-4EA5-DE92BD8E67E4";
createNode shadingEngine -n "standardSurface6SG";
	rename -uid "FAB3F1FE-5E41-0995-31D2-BB936E59A792";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "0C2FFAD6-4942-2D00-D7ED-D6B6E650D2B9";
createNode file -n "file2";
	rename -uid "6B035E3D-0942-4E49-59F4-5FB8BE36DCCD";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/pianoBackPSD.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "BA8E95C7-BF46-8038-4CA2-1AA6107A180D";
	setAttr ".c" -type "float2" 2 2 ;
createNode shadingEngine -n "standardSurface7SG";
	rename -uid "070BA55B-EF47-60A4-531A-7D8502CE8668";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "83DCED48-FB44-3D1E-DFC2-9DB5CD4C2B9E";
createNode file -n "file3";
	rename -uid "5CF4A0DE-0141-8965-FF0D-178AA7136916";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/pianoBackPSD.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "183153FF-5F42-DB6B-7D03-75B5D41736C5";
createNode shadingEngine -n "standardSurface8SG";
	rename -uid "6EC9FCE4-EC4C-DFFF-C25D-1D805D34E9D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "447375B6-E84D-1B99-369F-E8B9551AC3F6";
createNode shadingEngine -n "lambert2SG";
	rename -uid "C03CB2F8-CA4E-671E-FE94-90ACA3C3E65E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "E175F1A7-544C-A6B8-1C7C-889516967585";
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "F454816D-0649-DFED-4D2E-D6B37129F4B8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "4D1D1399-6A41-7556-78D4-1B8F24BB59B6";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "E6DAC158-684B-B807-E8A8-EEB574B4F2A6";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.1.2";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "32EF161E-DC46-DEE7-06F7-AF90CC97E7E9";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "872F8950-9A4A-BC44-2F37-B39300A7AFF3";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "10B2A7E3-E848-728D-B1E2-718B5FEC1C4A";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode file -n "file4";
	rename -uid "4FCB396E-C049-2B0D-F89F-BA9069F8B6DB";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/pianoBackPSD.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "F4F5F749-B047-F07A-C254-75AED04D8B73";
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "9D7ECB92-9846-D4A0-F358-7387AD796ED2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "C8D316DB-0C4A-A5F2-0814-E0B32741DF67";
createNode file -n "file5";
	rename -uid "DD72E99F-394E-A34B-17B4-3FA2E32B5015";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/pianoBackPSD.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "706D5E18-2D44-828C-2BDC-18A7F87E692C";
createNode polyCube -n "polyCube4";
	rename -uid "CF9EC75E-CE45-1842-7BDB-E5952551BB37";
	setAttr ".cuv" 4;
createNode substanceNode -n "substanceNode1";
	rename -uid "623AEEFC-F14D-6466-AF8B-06AFE39C66D7";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_color" -ln "input_color" 
		-nn "Wood Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_colorr" -ln "input_colorR" 
		-nn "Wood Color" -dv 0.55686300992965698 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorg" -ln "input_colorG" 
		-nn "Wood Color" -dv 0.26666700839996338 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_colorb" -ln "input_colorB" 
		-nn "Wood Color" -dv 0.12941199541091919 -smn 0 -smx 0 -at "float" -p "input_color";
	addAttr -r false -ci true -h true -k true -sn "input_base_roughness" -ln "input_base_roughness" 
		-nn "Wood Roughness" -ct "substance_input" -dv 0.37254899740219116 -smn 0 -smx 0 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_fibers" -ln "input_fibers" 
		-nn "Fibers" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_layers" -ln "input_layers" 
		-nn "Layers" -ct "substance_input" -dv 4 -smn 1 -smx 64 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue_Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 1 -smn 0 -smx 10 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 0.15000000596046448 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ao_spreading" -ln "input_ao_spreading" 
		-nn "AO Spreading" -ct "substance_input" -dv 0.10000000149011612 -smn 0 -smx 1 -at "float";
	setAttr ".sbs" -type "string" "/Users/owynnarmstrong/Documents/Wood American Cherry.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"0\" >\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture6";
	rename -uid "4AFBB993-9948-53F7-3DC8-82AD352F16E6";
createNode ShaderfxGameHair -n "ShaderfxGameHair1";
	rename -uid "86F1B471-3C48-D13B-3313-E285C9BABAFB";
	addAttr -ci true -k true -sn "SelfShadowAmount" -ln "SelfShadowAmount" -dv 0.60000002384185791 
		-at "float";
	addAttr -ci true -k true -sn "BackScatter" -ln "BackScatter" -dv 0.056687898933887482 
		-at "float";
	addAttr -ci true -k true -sn "Diffuse" -ln "Diffuse" -dv 0.11999999731779099 -at "float";
	addAttr -ci true -uac -k true -sn "Color" -ln "Color" -at "float3" -nc 3;
	addAttr -ci true -k true -sn "ColorR" -ln "ColorR" -dv 1 -at "float" -p "Color";
	addAttr -ci true -k true -sn "ColorG" -ln "ColorG" -dv 1 -at "float" -p "Color";
	addAttr -ci true -k true -sn "ColorB" -ln "ColorB" -dv 1 -at "float" -p "Color";
	addAttr -ci true -uaf -sn "OpacityMap" -ln "OpacityMap" -dt "string";
	addAttr -ci true -k true -sn "PrimarySpecIntensity" -ln "PrimarySpecIntensity" -dv 
		0.5 -at "float";
	addAttr -ci true -k true -sn "PrimarySpecRoughness" -ln "PrimarySpecRoughness" -dv 
		0.41025599837303162 -at "float";
	addAttr -ci true -k true -sn "SecondarySpecShift" -ln "SecondarySpecShift" -dv 0.070000000298023224 
		-at "float";
	addAttr -ci true -k true -sn "SeconarySpecRoughness" -ln "SeconarySpecRoughness" 
		-dv 0.89999997615814209 -at "float";
	addAttr -ci true -k true -sn "SecondarySpecIntensity" -ln "SecondarySpecIntensity" 
		-dv 0.5 -at "float";
	addAttr -ci true -uaf -sn "BreakupMap" -ln "BreakupMap" -dt "string";
	addAttr -ci true -k true -sn "OpacityAmount" -ln "OpacityAmount" -dv 0.30000001192092896 
		-at "float";
	setAttr ".vpar" -type "stringArray" 0  ;
	setAttr ".upar" -type "stringArray" 0  ;
	setAttr ".ss" no;
	setAttr ".sg" -type "string" (
		"SFX_APL\nVersion=28\nGroupVersion=-1.000000\nAdvanced=0\nHelpID=0\nParentMaterial=0\nNumberOfNodes=2\n#NT=10100 1 Hw Material Base-Hw Shader Nodes-Core\n\tPC=35\n\tname=1 v=5000 _Material\n\tversion=1 v=2003 1.842000\n\tposx=1 v=2003 10.000000\n\tposy=1 v=2003 10.000000\n\tclassname=1 v=5000 Hw Material Base\n\tsubmenuname=1 v=5000 Core\n\tbitmapnodeindex=1 v=2002 10\n\tisadvanced=1 v=2001 1\n\tadvanceddelete=1 v=2001 1\n\thelpid=1 v=2002 73\n\tgrpnodecolor=1 v=5012 4\n\tgrpPosX=1 v=2003 -1129.380005\n\tgrpPosY=1 v=2003 -143.923004\n\tdisableconsolidation_HwShader=2 e=1 v=2001 0\n\tvalue_ClampDynamicLights=2 e=1 v=2002 99\n\tvalue_MaxNumberLights=2 e=1 v=2002 3\n\tvalue_Gamma=2 e=2 v=2001 0\n\tvalue_Wireframe=2 e=3 v=2001 0\n\tvalue_DepthTest=2 e=4 v=2001 1\n\tvalue_DepthWrite=2 e=4 v=2001 1\n\tvalue_CastShadow=2 e=5 v=2001 1\n\tvalue_SurfaceMaskCutoff=2 e=6 v=2003 0.000000\n\tvalue_SSAO=2 e=7 v=2001 1\n\toptions_Tessellation=2 e=900 v=5012 0\n\tvalue_FlatTessellationBlend=2 e=901 v=2003 0.000000\n\tvalue_BoundingBoxMultiplier=2 e=902 v=2003 1.000000\n\tvalue_ClippingBiasAdd=2 e=902 v=2003 5.000000\n"
		+ "\toptions_Displacement=2 e=1000 v=5012 1\n\toptions_VDM_CoordSys=2 e=1001 v=5012 1\n\tvalue_DisplacementMultiplier=2 e=1002 v=2003 1.000000\n\tvalue_DisplacementOffset=2 e=1003 v=2003 0.000000\n\tcgfxprofile_HwShader=2 e=1999 v=5012 0\n\tconfig_HwShader=2 e=2000 v=5012 1\n\tshadername_HwShader=2 e=2001 v=5000 \n\tsaveshadertodisk_HwShader=2 e=2002 v=5015 \n\tgroup=-1\n\tISC=9\n\t\tSVT=2002 2002 0 0 0 _NumberOfLights\n\t\tSVT=5001 3002 0 0 0 _ObjectVertexPosition\n\t\tSVT=5001 2003 0 0 0 \n\t\tSVT=5001 3002 0 0 0 _Displacement\n\t\tSVT=5001 5018 0 0 0 _SurfaceShader\n\t\tSVT=5001 2003 0 0 0 _SurfaceMask\n\t\tSVT=5001 2003 0 0 0 _SurfaceMaskCutoff\n\t\tSVT=2001 2001 0 0 0 _Gamma\n\t\tSVT=1001 1002 0 0 0 \n\tOSC=0\n#NT=10100 1 Hair Surface Shader-Hw Shader Nodes-Surface Shaders\n\tPC=27\n\tname=1 v=5000 HairSurfaceShader\n\tversion=1 v=2003 1.010000\n\tposx=1 v=2003 -200.000000\n\tposy=1 v=2003 10.000000\n\tclassname=1 v=5000 Hair Surface Shader\n\tsubmenuname=1 v=5000 Surface Shaders\n\tgrpPosX=1 v=2003 -8127.330078\n\tgrpPosY=1 v=2003 -829.166992\n\ttexturepath_MyTexture=2 e=1 v=5000 /Applications/Autodesk/maya2023/Maya.app/Contents/presets/Assets/Textures/hair_breakup.png\n"
		+ "\tdefineinheader_MyTexture=2 e=1 v=2001 1\n\tuvindex_UVs=2 e=2 v=2002 0\n\tuiorder_PrimarySpecRoughness=2 e=2 v=2002 3\n\tuvsetname_UVs=2 e=3 v=5000 \n\tvalue_FlipGreenChannel=2 e=3 v=2001 0\n\tvalue_ConvertToLinearSpace=2 e=4 v=2001 0\n\tperinstanceunshared_UVs=2 e=4 v=2001 0\n\tautoPreviewTexture_MyTexture=2 e=4 v=2001 1\n\tuiorder_SeconarySpecRoughness=2 e=5 v=2002 5\n\ttexturenodename_MyTexture=2 e=5 v=5000 BreakupMap\n\tuiorder_SecondarySpecShift=2 e=6 v=2002 6\n\taddressu_Sampler=2 e=7 v=5012 0\n\taddressv_Sampler=2 e=8 v=5012 0\n\taddressw_Sampler=2 e=9 v=5012 0\n\tuiorder_MyTexture=2 e=13 v=2002 8\n\tuigroup_MyTexture=2 e=13 v=5000 \n\toptions_Normal=2 e=800 v=5012 0\n\tvalue_InvertGreenChannel=2 e=900 v=2001 0\n\tgroup=-1\n\tISC=0\n\tOSC=4\n\t\tSVT=5001 5018 0 _SurfaceShader\n\t\tCC=1\n\t\t\tC=1 0 0 0 4 0 0\n\t\t\tCPC=0\n\t\tSVT=5001 2003 0 _SurfaceMask\n\t\tCC=0\n\t\tSVT=5001 2003 0 _SurfaceMaskCutoff\n\t\tCC=0\n\t\tSVT=1001 1002 0 \n\t\tCC=0\n");
	setAttr ".sprm" -type "string" "SelfShadowAmount~317~BackScatter~317~Diffuse~317~Color~319~OpacityMap~278~PrimarySpecIntensity~317~PrimarySpecRoughness~317~SecondarySpecShift~317~SeconarySpecRoughness~317~SecondarySpecIntensity~317~BreakupMap~278~OpacityAmount~317~";
	setAttr -k on ".Color" -type "float3" 0.71499997 0.154 0.028000001 ;
createNode shadingEngine -n "ShaderfxGameHair1SG";
	rename -uid "A840B0C0-0947-8084-48B0-83B43C3D359D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "FAC9815B-AF43-6A0A-400A-E6BB929C6001";
createNode file -n "file6";
	rename -uid "E29E2BEC-464C-1272-C6CF-55B73663D98A";
	setAttr ".ftn" -type "string" "/Applications/Autodesk/maya2023/Maya.app/Contents/presets/Assets/Textures/curls_hair_v2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "39019885-CE4B-FAC3-E2EF-B3AD8559F4C0";
createNode file -n "file7";
	rename -uid "B475FCC3-524F-1D59-B8F7-1F9FE91346DF";
	setAttr ".ftn" -type "string" "/Applications/Autodesk/maya2023/Maya.app/Contents/presets/Assets/Textures/hair_breakup.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "D6298E5A-9B4E-4B7E-1A0F-EBAC627BEEEA";
createNode standardSurface -n "standardSurface9";
	rename -uid "CADD535B-0443-B3AA-746A-8983DE3CB070";
createNode shadingEngine -n "standardSurface9SG";
	rename -uid "EBF0FA5E-954A-7211-14C5-838F1562BB5A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "BCB81E44-9547-28B6-9F85-76BDBFEBA3AF";
createNode file -n "file8";
	rename -uid "BD2FDE39-1A48-9D81-3B79-CE8E4C3504D6";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/pianoBackPSD.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "E6CDBB5C-9A49-14C2-2B90-5FBE8C0B5652";
createNode standardSurface -n "blackKey";
	rename -uid "3F4DA665-0743-27B2-5792-3A89A9C8D2FF";
	setAttr ".bc" -type "float3" 0 0 0 ;
createNode shadingEngine -n "standardSurface10SG";
	rename -uid "595A20D3-C14F-8827-22C9-FF9CC6AE21DB";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "38AE2E42-9041-46EF-91B0-DF90C75043DD";
createNode materialInfo -n "pasted__materialInfo14";
	rename -uid "2A5A5FA9-2C40-2922-C490-E6B455F93721";
createNode shadingEngine -n "pasted__standardSurface10SG";
	rename -uid "175F4C37-624E-7532-609E-2693DF403ED1";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode standardSurface -n "pasted__blackKey";
	rename -uid "A06514F5-8543-CAA0-95FA-24A8E8A204E1";
	setAttr ".bc" -type "float3" 0 0 0 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace1";
	rename -uid "2B73B043-F942-A2FE-8BEC-D0A60D16649A";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 0 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.4224056 0.27311608 1.7492138 ;
	setAttr ".rs" 1149261977;
	setAttr ".lt" -type "double3" 8.8474549883850344e-17 4.8796535433879279e-17 0.39845394988868077 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.42240560054779053 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 0.42240560054779053 0.5462321570237243 3.0014115857679267 ;
createNode polySplitRing -n "pasted__polySplitRing1";
	rename -uid "C5D7F905-B64C-2D4D-791C-78A8906C0394";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 0 0.27311608195304865 0 1;
	setAttr ".wt" 0.41720294952392578;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "pasted__polyTweak1";
	rename -uid "54D3A9C5-8040-B443-0CF5-F2BA81777CE2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.077594392 0 0 -0.077594392
		 0 0 0.077594392 0 0 -0.077594392 0 0 0.077594392 0 0 -0.077594392 0 0 0.077594392
		 0 0 -0.077594392 0 0;
createNode polyCube -n "pasted__polyCube1";
	rename -uid "0D24EC4B-0149-E316-3BCF-4CBF66A97FF6";
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo1";
	rename -uid "72E08C81-B849-E15B-4D17-9292F6C0ADF1";
createNode shadingEngine -n "pasted__standardSurface2SG";
	rename -uid "72603CF4-1243-6B8D-B9BC-18AD3A0EAF27";
	setAttr ".ihi" 0;
	setAttr -s 16 ".dsm";
	setAttr ".ro" yes;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace3";
	rename -uid "D47EB552-984E-0246-B020-4ABE8BB90E11";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 1.5868810796255457 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.0092866 0.27311608 1.7492138 ;
	setAttr ".rs" 297303587;
	setAttr ".lt" -type "double3" 7.2816570392847479e-16 8.972371609965443e-17 0.27936679287625399 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.0092866801733362 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 2.0092866801733362 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace2";
	rename -uid "A215BE20-084F-C3F2-6BB1-A1947182C076";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 1.5868810796255457 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1644754 0.27311608 1.7492138 ;
	setAttr ".rs" 642744582;
	setAttr ".lt" -type "double3" 3.8662751727138509e-16 5.5511151231257827e-17 0.25878445728541011 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1644754790777552 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 1.1644754790777552 0.5462321570237243 3.0014115857679267 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace5";
	rename -uid "344C2814-E445-5C2B-816F-539DB1E15D78";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 2.9133289315872366 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.1005564 0.27311608 1.7492138 ;
	setAttr ".rs" 1987310591;
	setAttr ".lt" -type "double3" -5.9656092766583405e-16 -1.713948553167373e-17 0.31332842846035236 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.1005564191513235 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 3.1005564191513235 0.5462321570237243 3.0014115857679267 ;
createNode polyTweak -n "pasted__polyTweak2";
	rename -uid "05276F15-0F40-D710-98F9-61A92A1E2BD4";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[1]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.23517799 0 0 ;
	setAttr ".tk[16]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[17]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[18]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[19]" -type "float3" -1.8626451e-09 0 0 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace4";
	rename -uid "83D30E3B-AE4C-6E66-0F6C-538A26F89B9D";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.54623215014135118 0 0 0 0 6.0028231715358533 0
		 3.1902234540455483 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7678177 0.27311608 1.7492138 ;
	setAttr ".rs" 962967644;
	setAttr ".lt" -type "double3" -7.6421418809153828e-17 -5.5511151231257827e-17 0.34417147327202979 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7678178534977578 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 2.7678178534977578 0.5462321570237243 3.0014115857679267 ;
createNode animCurveTL -n "pasted__pCube4_translateX";
	rename -uid "28AB6C60-0742-04A6-5D39-18B790B509C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 4.1183938122522372;
createNode animCurveTL -n "pasted__pCube4_translateY";
	rename -uid "198DA52A-9143-23A1-0CD1-E6BA1867AAFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.27311608195304865;
createNode animCurveTL -n "pasted__pCube4_translateZ";
	rename -uid "69B124D2-3941-0E26-BA3B-F789C7A6107B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace6";
	rename -uid "03D936D9-AF4D-397C-E0E3-6E83E173A2D1";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.70542879320805763 0 0 0 0 0.54623215014135118 0 0
		 0 0 6.0028231715358533 0 4.1183938122522372 0.27311608195304865 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.8204167 0.27311608 1.7492138 ;
	setAttr ".rs" 1387630524;
	setAttr ".lt" -type "double3" -7.3468552172486402e-17 0 0.33087294418745961 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8204167392134845 6.8823730603462252e-09 0.497016053132602 ;
	setAttr ".cbx" -type "double3" 3.8204167392134845 0.5462321570237243 3.0014115857679267 ;
createNode nonLinear -n "ball_rig_2:Ball_Def_Squash";
	rename -uid "0DC0FDFE-E547-9811-8E4B-D38D281DBC67";
	addAttr -is true -ci true -k true -sn "fac" -ln "factor" -smn -10 -smx 10 -at "double";
	addAttr -is true -ci true -k true -sn "exp" -ln "expand" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	addAttr -is true -ci true -k true -sn "mp" -ln "maxExpandPos" -dv 0.5 -min 0.01 
		-max 0.99 -at "double";
	addAttr -is true -ci true -k true -sn "ss" -ln "startSmoothness" -min 0 -max 1 -at "double";
	addAttr -is true -ci true -k true -sn "es" -ln "endSmoothness" -min 0 -max 1 -at "double";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	addAttr -ci true -sn "HighBound" -ln "HighBound" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "LowBound" -ln "LowBound" -dv -1 -max 0 -at "double";
	setAttr -k on ".fac";
	setAttr -k on ".exp";
	setAttr -k on ".mp";
	setAttr -k on ".ss";
	setAttr -k on ".es";
	setAttr -k on ".lb";
	setAttr -k on ".hb";
	setAttr -k on ".HighBound";
	setAttr -k on ".LowBound";
createNode tweak -n "ball_rig_2:tweak1";
	rename -uid "FC101671-614B-28CF-402D-62A77097A38D";
createNode objectSet -n "ball_rig_2:squash1Set";
	rename -uid "0AC6A0FF-F540-FC0F-C86B-319B925F34BC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ball_rig_2:squash1GroupId";
	rename -uid "17347C5B-154C-5802-960A-C0AF9931EDEC";
	setAttr ".ihi" 0;
createNode groupParts -n "ball_rig_2:squash1GroupParts";
	rename -uid "695790D3-DD46-3BA0-5B43-59B9D1DDC13F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "ball_rig_2:tweakSet1";
	rename -uid "2CDE04B4-AD47-5D3A-C6E5-2FBBB0A97DAA";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ball_rig_2:groupId2";
	rename -uid "219A0278-FB44-E986-738A-EEB3F6963F0D";
	setAttr ".ihi" 0;
createNode groupParts -n "ball_rig_2:groupParts2";
	rename -uid "BF73C927-C24F-1D1B-EC05-78B648810163";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode blinn -n "ball_rig_2:Ball_Shader";
	rename -uid "70B051B0-A64D-72DA-7C24-CA9D6F7208FC";
	setAttr ".c" -type "float3" 1 0 0 ;
	setAttr ".sc" -type "float3" 0.29596412 0.29596412 0.29596412 ;
	setAttr ".ec" 0.36767622828483582;
	setAttr ".sro" 0.34080716967582703;
createNode shadingEngine -n "ball_rig_2:Ball_Shader_SG";
	rename -uid "D41A03A7-5447-DB56-FE8F-21836DB07A84";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ball_rig_2:materialInfo1";
	rename -uid "4CE11528-DE42-A96D-23A4-2397651B6E35";
createNode fractal -n "ball_rig_2:fractal1";
	rename -uid "1B8A7C6C-0F46-0247-B2E5-0EB88C2F909E";
	setAttr ".ail" yes;
	setAttr ".a" 0.049618322402238846;
	setAttr ".ra" 0.58744394779205322;
	setAttr ".th" 0.089686095714569092;
	setAttr ".lmx" 6.165919303894043;
	setAttr ".bs" -0.040358744561672211;
createNode place2dTexture -n "ball_rig_2:place2dTexture1";
	rename -uid "A5D4963D-6445-5F3E-50F3-56B8B364230A";
createNode bump2d -n "ball_rig_2:bump2d1";
	rename -uid "C3DA8F68-7249-F29E-F4C2-71AA7CB0DC56";
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode nodeGraphEditorInfo -n "ball_rig_2:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "5940F32B-D54B-027A-F008-8FA23B77FDCE";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2172.5153942231896 -586.48719978945826 ;
	setAttr ".tgi[0].vh" -type "double2" -1506.2575714043332 1061.8840062957124 ;
	setAttr -s 5 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 385.71429443359375;
	setAttr ".tgi[0].ni[0].y" 217.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -350.79818725585938;
	setAttr ".tgi[0].ni[1].y" 105.82553100585938;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -971.83416748046875;
	setAttr ".tgi[0].ni[2].y" 77.520179748535156;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -727.22564697265625;
	setAttr ".tgi[0].ni[3].y" 108.86356353759766;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 69.220535278320312;
	setAttr ".tgi[0].ni[4].y" 293.54983520507812;
	setAttr ".tgi[0].ni[4].nvs" 1923;
createNode animCurveTU -n "Transform_Ctrl_scaleX";
	rename -uid "6A2899FC-3449-E568-FCAD-8BBABE20515A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.041302211160091078 2 0.041302211160091078
		 6 0.041302211160091078 18 0.041302211160091078 30 0.041302211160091078 42 0.041302211160091078;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "Transform_Ctrl_scaleY";
	rename -uid "0D687BDC-D74C-FA3E-29E6-60815F721C8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.041302211160091078 2 0.041302211160091078
		 6 0.041302211160091078 18 0.041302211160091078 30 0.041302211160091078 42 0.041302211160091078;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "Transform_Ctrl_scaleZ";
	rename -uid "9F383CE7-8B45-7C66-60F0-C9AAD379AFD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.041302211160091078 2 0.041302211160091078
		 6 0.041302211160091078 18 0.041302211160091078 30 0.041302211160091078 42 0.041302211160091078;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "Transform_Ctrl_translateX";
	rename -uid "32445D8F-6840-03E6-A169-128927D3DFC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 -4.8317229323726423 2 -4.3039576891441538
		 6 -3.1666790566231477 7 -3.125132653432531 13 -1.9872486965548459 18 -0.90328879753842406
		 19 -0.83569264239257546 25 0.28771012228159476 30 1.5019953665430814 31 1.5491284401924723
		 37 3.3300220738940136 42 4.9787774101542688 43 4.9709652984851997 49 7.1442589260175682;
	setAttr -s 14 ".kit[13]"  1;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[1:13]"  1 0.31705124804813228 0.24323680383955565 
		0.20203132981200919 0.2121555245579855 0.2378636989694041 0.19239955862499528 0.28265741712124798 
		0.28265741712124798 0.13246096210181763 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0.94840840681170768 0.96996693616737129 
		0.97937905928929858 0.97723591491488182 0.97129854355527201 0.9813166715392676 0.95922092582801 
		0.95922092582801 0.99118822305304899 0 0 0;
createNode animCurveTL -n "Transform_Ctrl_translateY";
	rename -uid "17C17FE6-A64F-4A64-2514-1EBE8DA364AF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 2.3176389601926903 2 2.3176389601926903
		 4 2.1848466406674905 6 0.52293189154940967 7 0.2865839336296534 11 2.147457340519515
		 13 2.3085229994907608 14 2.2055538803959824 18 0.54165144328659465 19 0.2865839336296534
		 23 2.1766402538423275 25 2.318 26 2.2050712553700484 30 0.53076852474676195 31 0.2865839336296534
		 35 2.1197782507868896 37 2.318 38 2.2045886303441149 42 0.55076793233937615 43 0.27710693312041323
		 47 2.1666806283071542 49 2.318;
	setAttr -s 22 ".kit[0:21]"  18 1 1 18 1 1 1 1 
		18 1 1 1 1 18 1 1 1 1 18 1 1 1;
	setAttr -s 22 ".kot[0:21]"  18 1 1 18 1 1 1 1 
		18 1 1 1 1 18 1 1 1 1 18 1 1 1;
	setAttr -s 22 ".kix[1:21]"  0.52490797625635743 0.44347767404784327 
		0.065707378869423544 0.10420631059215352 0.36211369153414102 1 0.34843300055735232 
		0.10793099247215338 0.1227092692468101 0.33642854747208384 1 0.28361565538054817 
		0.10795782776433903 0.12214536426247168 0.31960146777075327 1 0.28350330855252981 
		0.10745988562441838 0.12158657965579132 0.35626403682525826 1;
	setAttr -s 22 ".kiy[1:21]"  0.85115898424586656 -0.89628541917243909 
		-0.99783893508026145 -0.99455570222726675 0.93213393587161986 0 -0.93733368878036172 
		-0.99415838821788149 -0.99244266093357458 0.94170899562753663 0 -0.95893803763489427 
		-0.9941554744728841 -0.99251222158177388 0.94755205756664374 0 -0.9589712581927412 
		-0.99420942108872956 -0.9925808297804295 0.93438532526199869 0;
	setAttr -s 22 ".kox[1:21]"  0.52490794481095637 0.44347779701411805 
		0.065707378869423544 0.12598153774984641 0.36211379795186549 1 0.3484330198540706 
		0.10793099247215336 0.12214536426247181 0.33642861351394743 1 0.28361566746134581 
		0.10795782776433903 0.12214536426247168 0.31960144139592583 1 0.28350329798098967 
		0.1074598856244184 0.12158657965579132 0.35626405202602246 1;
	setAttr -s 22 ".koy[1:21]"  0.85115900363817931 -0.89628535832931289 
		-0.99783893508026145 0.99203258623201684 0.93213389453064932 0 -0.93733368160723474 
		-0.99415838821788149 0.99251222158177388 0.94170897203386728 0 -0.95893803406187583 
		-0.9941554744728841 0.99251222158177388 0.94755206646265444 0 -0.95897126131803467 
		-0.99420942108872978 0.9925808297804295 0.93438531946622527 0;
createNode animCurveTL -n "Transform_Ctrl_translateZ";
	rename -uid "02991D70-D14D-0C91-529E-149E49B61265";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 2.0577651441081293 2 2.0577651441081293
		 6 2.0577651441081293 7 2.0577651441081293 13 2.0577651441081293 18 2.0577651441081293
		 19 2.0577651441081293 25 2.0577651441081293 30 2.0577651441081293 31 2.0577651441081293
		 37 2.0577651441081293 42 2.0577651441081293 43 2.0577651441081293 49 2.0577651441081293;
	setAttr -s 14 ".kit[13]"  1;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Transform_Ctrl_rotateX";
	rename -uid "4BF0E0F5-2A4C-D32C-5131-5FBB96C3A740";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 6 0 18 0 30 0 42 0;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "Transform_Ctrl_rotateY";
	rename -uid "90DB0877-B54C-5BFD-E444-B48FFC47201B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 6 0 18 0 30 0 42 0;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "Transform_Ctrl_rotateZ";
	rename -uid "14B86966-3649-D069-9898-AABBECDF5751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 6 0 18 0 30 0 42 0;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "pCube18_rotateX";
	rename -uid "4BB6E1B6-3C46-228C-310E-52906BA83274";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 0 7 2.5 8 0;
createNode animCurveTA -n "pCube18_rotateY";
	rename -uid "9A360EE0-F74C-8135-77FB-9299A3DEEF28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 0 7 0 8 0;
createNode animCurveTA -n "pCube18_rotateZ";
	rename -uid "3D5F0EC4-1B46-C581-396F-F3A563BEFE7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 0 7 0 8 0;
createNode animCurveTU -n "pCube18_visibility";
	rename -uid "B0964AD9-1C40-06AD-9897-FFA784900232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 1 7 1 8 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "pCube18_translateX";
	rename -uid "36F04AC5-074C-BE7E-14BB-83B61C6EFA01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 -3.3569293635942241 7 -3.3569293635942241
		 8 -3.3569293635942241;
createNode animCurveTL -n "pCube18_translateY";
	rename -uid "19D0ECDB-0340-EE33-FD8A-C19D1FA814CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 0.27311608195304865 7 0.27311608195304865
		 8 0.27311608195304865;
createNode animCurveTL -n "pCube18_translateZ";
	rename -uid "0C63C198-F94A-B259-2931-3D8B25A7A675";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 0 7 0 8 0;
createNode animCurveTU -n "pCube18_scaleX";
	rename -uid "EE467CF5-6D45-FCEA-D8A5-30BF7480CE72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 0.70542879320805763 7 0.70542879320805763
		 8 0.70542879320805763;
createNode animCurveTU -n "pCube18_scaleY";
	rename -uid "A305B296-1A43-376E-E9DB-68B921E55335";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 0.54623215014135118 7 0.54623215014135118
		 8 0.54623215014135118;
createNode animCurveTU -n "pCube18_scaleZ";
	rename -uid "3370E3FD-5342-6E4E-7811-8AB478E23398";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6 6.0028231715358533 7 6.0028231715358533
		 8 6.0028231715358533;
createNode animCurveTA -n "pCube14_rotateX";
	rename -uid "FDBABA35-EC40-F852-BA6A-279C0F865B60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 0 19 2.5 20 0;
createNode animCurveTA -n "pCube14_rotateY";
	rename -uid "8D39A8AB-5847-AAD5-AC46-C6AC72485A51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 0 19 0 20 0;
createNode animCurveTA -n "pCube14_rotateZ";
	rename -uid "85C44D36-0F4E-461E-B8C8-F9A4C36B7417";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 0 19 0 20 0;
createNode animCurveTU -n "pCube14_visibility";
	rename -uid "292403DB-9D43-7D84-5834-35B5FB2F9FCB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 1 19 1 20 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "pCube14_translateX";
	rename -uid "CBE3EC33-1744-89CF-5509-BBA42FA48F25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 -0.62116999865910971 19 -0.62116999865910971
		 20 -0.62116999865910971;
createNode animCurveTL -n "pCube14_translateY";
	rename -uid "42120738-3341-BC50-5E7D-29A1B9545B23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 0.27311608195304865 19 0.27311608195304865
		 20 0.27311608195304865;
createNode animCurveTL -n "pCube14_translateZ";
	rename -uid "D1CFA2DC-E44C-03E8-75D2-45902067240A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 0 19 0 20 0;
createNode animCurveTU -n "pCube14_scaleX";
	rename -uid "7DB40C84-D14E-A86E-2B4D-598368992EC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 0.70542879320805763 19 0.70542879320805763
		 20 0.70542879320805763;
createNode animCurveTU -n "pCube14_scaleY";
	rename -uid "A453E533-4D4C-E8F3-41EF-F280F6172B3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 0.54623215014135118 19 0.54623215014135118
		 20 0.54623215014135118;
createNode animCurveTU -n "pCube14_scaleZ";
	rename -uid "5B39709F-1643-2AF7-58FA-6FB40A3679C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  18 6.0028231715358533 19 6.0028231715358533
		 20 6.0028231715358533;
createNode animCurveTA -n "pCube2_rotateX";
	rename -uid "D2286927-BE47-8222-45B3-FEB9613967F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 0 31 2.5 32 0;
createNode animCurveTA -n "pCube2_rotateY";
	rename -uid "7C31FF25-6C46-6880-32EC-11981723B149";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 0 31 0 32 0;
createNode animCurveTA -n "pCube2_rotateZ";
	rename -uid "AF82C79B-FF43-6D77-3714-7E82D3136F30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 0 31 0 32 0;
createNode animCurveTU -n "pCube2_visibility";
	rename -uid "069005BF-9C44-FB62-71E6-F0B1CFCE9391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 1 31 1 32 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "pCube2_translateX";
	rename -uid "5CF4799B-9245-A9CB-0D28-FE9EDC5EBBA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  30 1.4681765889931846 31 1.4681765889931846
		 32 1.4681765889931846 53 1.4681765889931846 54 1.4681765889931846 55 1.4681765889931846
		 76 1.4681765889931846 77 1.4681765889931846 78 1.4681765889931846 79 1.4681765889931846
		 80 1.4681765889931846;
createNode animCurveTL -n "pCube2_translateY";
	rename -uid "7A1D6BB6-DB47-B27D-7E6F-30AD4CE8D24D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 0.27311608195304865 31 0.27311608195304865
		 32 0.27311608195304865;
createNode animCurveTL -n "pCube2_translateZ";
	rename -uid "945537CC-5445-0DC2-4263-B4A6FC173DE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 0 31 0 32 0;
createNode animCurveTU -n "pCube2_scaleX";
	rename -uid "6D59BE98-D14A-33ED-6A99-B8B7B023B95B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 0.71018879508528632 31 0.71018879508528632
		 32 0.71018879508528632;
createNode animCurveTU -n "pCube2_scaleY";
	rename -uid "FC0DD7B2-C146-BF93-6D59-42B6EDB7E961";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 0.54623215014135118 31 0.54623215014135118
		 32 0.54623215014135118;
createNode animCurveTU -n "pCube2_scaleZ";
	rename -uid "CA714D36-3D4D-CD72-6AD2-E49B239E347C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 6.0028231715358533 31 6.0028231715358533
		 32 6.0028231715358533;
createNode animCurveTA -n "pCube9_rotateX";
	rename -uid "C994757C-C74D-A08D-DED1-F693BD52503C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 0 43 2.5 44 0;
createNode animCurveTA -n "pCube9_rotateY";
	rename -uid "0EF841B6-3C4A-E96C-D3CB-9DA688ADD79C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 0 43 0 44 0;
createNode animCurveTA -n "pCube9_rotateZ";
	rename -uid "D586655F-A246-1DFB-C8D6-61ACEE773139";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 0 43 0 44 0;
createNode animCurveTU -n "pCube9_visibility";
	rename -uid "15D77935-2B4B-4A0E-DCE8-B08B8FCE30F0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 1 43 1 44 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "pCube9_translateX";
	rename -uid "8CDE3F14-464F-A28F-F497-979C8FECEF0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 4.7663805455011321 43 4.7663805455011321
		 44 4.7663805455011321;
createNode animCurveTL -n "pCube9_translateY";
	rename -uid "6378F1D2-5346-916D-061F-73B20D982250";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 0.27311608195304865 43 0.27311608195304865
		 44 0.27311608195304865;
createNode animCurveTL -n "pCube9_translateZ";
	rename -uid "224DE6DB-C944-AD9B-317B-C08B046F8007";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 0 43 0 44 0;
createNode animCurveTU -n "pCube9_scaleX";
	rename -uid "82ADC419-A64E-EC71-3331-DAAC089EF1E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 0.70542879320805763 43 0.70542879320805763
		 44 0.70542879320805763;
createNode animCurveTU -n "pCube9_scaleY";
	rename -uid "14CF1054-E143-5309-241A-54BAB45677BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 0.54623215014135118 43 0.54623215014135118
		 44 0.54623215014135118;
createNode animCurveTU -n "pCube9_scaleZ";
	rename -uid "309C07E9-4F4C-82C1-06E1-899CA9E2A2C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  42 6.0028231715358533 43 6.0028231715358533
		 44 6.0028231715358533;
createNode animCurveUU -n "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1_COG_CtrlW1";
	rename -uid "96874BD7-8C44-5184-6B32-35B44C2E7FDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1_Transform_CtrlW0";
	rename -uid "9EBD08DD-0444-7A4C-5F75-48AC715AED97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveTA -n "Squash_Ctrl_rotateZ";
	rename -uid "1ED1D5F8-AA42-C5B9-493D-5DBA7652BFEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 2 0 4 -47.538525308960438 6 -57.824015285650276
		 7 0 8 47.790373969238665 13 0 14 -43.028450140005127 18 -69.343707213421183 19 0
		 20 63.28152023060025 25 0 26 -53.553988037247194 30 -63.068452017462192 31 0 32 61.897965810658874
		 37 0 38 -47.332469778232372 42 -65.41349999258351 43 0 44 60.718743844363736 49 0;
	setAttr -s 22 ".kot[1:21]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kox[1:21]"  1 0.16293721454812826 1 0.045162184811478781 
		1 0.15579416579875588 0.16964204537279814 1 0.035977748996075615 1 0.12168813267113524 
		0.31726913691566122 1 0.038179593755115621 1 0.13002191699257637 0.17951512866241673 
		1 0.03782721140594851 1 1;
	setAttr -s 22 ".koy[1:21]"  0 -0.98663643968550918 0 0.99897966799282445 
		0 -0.98778954130071139 -0.98550574652902623 0 0.99935259121952313 0 -0.99256838473075104 
		-0.94833553912146062 0 0.99927089351221188 0 -0.99151112000903729 -0.98375521273399924 
		0 0.99928429492174542 0 0;
createNode animCurveTA -n "Squash_Ctrl_rotateY";
	rename -uid "239ACB28-EC46-EFDC-3764-019F9FC5F9E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 2 0 4 0 6 0 7 0 8 0 13 0 14 0 18 0 19 0
		 20 0 25 0 26 0 30 0 31 0 32 0 37 0 38 0 42 0 43 0 44 0 49 0;
	setAttr -s 22 ".kot[1:21]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kox[1:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 22 ".koy[1:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "Squash_Ctrl_rotateX";
	rename -uid "7546096F-A540-4D0D-26C1-A88E0BC4A004";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  1 0 2 0 4 0 6 0 7 0 8 0 13 0 14 0 18 0 19 0
		 20 0 25 0 26 0 30 0 31 0 32 0 37 0 38 0 42 0 43 0 44 0 49 0;
	setAttr -s 22 ".kot[1:21]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kox[1:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 22 ".koy[1:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "Squash_Ctrl_Squash";
	rename -uid "B0C05EE1-7247-133C-1970-6890EAB14245";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 2 0 4 -0.1 6 -0.18296296296296299 7 -0.2
		 8 -0.18518518518518517 13 0 19 -0.2 25 0 31 -0.2 37 0 43 -0.2 49 0;
	setAttr -s 13 ".kot[1:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 13 ".kox[1:12]"  1 0.67341730892261187 0.78086880944303039 
		1 0.78086880944303028 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 -0.73926255690615605 -0.62469504755442418 
		0 0.6246950475544244 0 0 0 0 0 0 0;
createNode aiPhysicalSky -n "aiPhysicalSky1";
	rename -uid "EF6957B5-1D48-97A1-313D-90865D6F4F98";
createNode polyCube -n "pasted__polyCube4";
	rename -uid "46802114-2D41-24F4-1528-38A6238F024B";
	setAttr ".cuv" 4;
createNode materialInfo -n "pasted__materialInfo13";
	rename -uid "60CAEEC5-7B49-01A8-FEF1-178C3FB31F2F";
createNode shadingEngine -n "pasted__standardSurface9SG";
	rename -uid "F77D5E25-C446-9FB5-BCC1-6684BEA434D3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode standardSurface -n "pasted__standardSurface9";
	rename -uid "BD8FBA63-AA45-94F4-7508-99B7E97786E3";
createNode file -n "pasted__file8";
	rename -uid "B10824BD-0742-1598-CD5F-18BA1DC761DF";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/pianoBackPSD.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture9";
	rename -uid "A2AE56AA-8241-6F66-F720-1D97D3C7AC4B";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "7C43D1BB-3048-415E-F656-CFBDBF5CEC93";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -108.96799927522828 -846.42853779452321 ;
	setAttr ".tgi[0].vh" -type "double2" 1014.9203442282974 13.095237574880084 ;
	setAttr -s 23 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 190;
	setAttr ".tgi[0].ni[0].y" -281.42855834960938;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -117.14286041259766;
	setAttr ".tgi[0].ni[1].y" -468.57144165039062;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 835.71429443359375;
	setAttr ".tgi[0].ni[2].y" -257.14285278320312;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 852.85711669921875;
	setAttr ".tgi[0].ni[3].y" -135.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 554.28570556640625;
	setAttr ".tgi[0].ni[4].y" -72.857139587402344;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 347.14285278320312;
	setAttr ".tgi[0].ni[5].y" -185.71427917480469;
	setAttr ".tgi[0].ni[5].nvs" 2178;
	setAttr ".tgi[0].ni[6].x" 905.71429443359375;
	setAttr ".tgi[0].ni[6].y" -465.71429443359375;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 480;
	setAttr ".tgi[0].ni[7].y" -114.28571319580078;
	setAttr ".tgi[0].ni[7].nvs" 2659;
	setAttr ".tgi[0].ni[8].x" 30;
	setAttr ".tgi[0].ni[8].y" -642.85711669921875;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 190;
	setAttr ".tgi[0].ni[9].y" -447.14285278320312;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 497.14285278320312;
	setAttr ".tgi[0].ni[10].y" -237.14285278320312;
	setAttr ".tgi[0].ni[10].nvs" 2274;
	setAttr ".tgi[0].ni[11].x" 862.85711669921875;
	setAttr ".tgi[0].ni[11].y" -94.285713195800781;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" -124.28571319580078;
	setAttr ".tgi[0].ni[12].y" -115.71428680419922;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 337.14285278320312;
	setAttr ".tgi[0].ni[13].y" -479.052490234375;
	setAttr ".tgi[0].ni[13].nvs" 18481;
	setAttr ".tgi[0].ni[14].x" 862.85711669921875;
	setAttr ".tgi[0].ni[14].y" -94.285713195800781;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 182.85714721679688;
	setAttr ".tgi[0].ni[15].y" -94.285713195800781;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 172.85714721679688;
	setAttr ".tgi[0].ni[16].y" -135.71427917480469;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" -124.28571319580078;
	setAttr ".tgi[0].ni[17].y" -115.71428680419922;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 171.42857360839844;
	setAttr ".tgi[0].ni[18].y" -114.28571319580078;
	setAttr ".tgi[0].ni[18].nvs" 2659;
	setAttr ".tgi[0].ni[19].x" 544.28570556640625;
	setAttr ".tgi[0].ni[19].y" -114.28571319580078;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" -134.28572082519531;
	setAttr ".tgi[0].ni[20].y" -157.14285278320312;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" -117.14286041259766;
	setAttr ".tgi[0].ni[21].y" -302.85714721679688;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" 182.85714721679688;
	setAttr ".tgi[0].ni[22].y" -94.285713195800781;
	setAttr ".tgi[0].ni[22].nvs" 1923;
createNode lambert -n "lambert3";
	rename -uid "56BCC020-B949-295E-B13E-79BDBECCECB2";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode animCurveTL -n "Squash_Ctrl_translateX";
	rename -uid "956DE707-504D-DDD2-CFC5-53B8BBE20647";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Squash_Ctrl_translateY";
	rename -uid "8DC759D7-9B4E-3392-99E1-BF988CB61441";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Squash_Ctrl_translateZ";
	rename -uid "A9C3C32E-C04A-3271-5902-01899617EC32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "Squash_Ctrl_Scale";
	rename -uid "2757A0CF-434C-BC8E-0090-26A75FD34E75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Squash_Ctrl_SquashPosition";
	rename -uid "8F523F64-0F40-0D44-A8E0-91AD0EA70335";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.5;
createNode animCurveTU -n "Squash_Ctrl_HighBound";
	rename -uid "0272BCAD-4445-B6AA-1B2E-E49275AAF37D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "Squash_Ctrl_LowBound";
	rename -uid "83B96DB5-F24F-D018-6530-0CBA40D273FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1;
createNode animCurveTU -n "Squash_Ctrl_Follow";
	rename -uid "8076DF9B-6B4C-A352-3C09-E892FED0BA0B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
select -ne :time1;
	setAttr ".o" 7;
	setAttr ".unw" 7;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 16 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :defaultTextureList1;
	setAttr -s 11 ".tx";
select -ne :lambert1;
	setAttr ".ambc" -type "float3" 1 1 1 ;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".ef" 50;
	setAttr ".ifp" -type "string" "pianoBallTest";
	setAttr ".pram" -type "string" "";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyExtrudeFace1.out" "pCubeShape1.i";
connectAttr "pCube2_rotateX.o" "pCube2.rx";
connectAttr "pCube2_rotateY.o" "pCube2.ry";
connectAttr "pCube2_rotateZ.o" "pCube2.rz";
connectAttr "pCube2_visibility.o" "pCube2.v";
connectAttr "pCube2_translateX.o" "pCube2.tx";
connectAttr "pCube2_translateY.o" "pCube2.ty";
connectAttr "pCube2_translateZ.o" "pCube2.tz";
connectAttr "pCube2_scaleX.o" "pCube2.sx";
connectAttr "pCube2_scaleY.o" "pCube2.sy";
connectAttr "pCube2_scaleZ.o" "pCube2.sz";
connectAttr "polyExtrudeFace3.out" "pCubeShape2.i";
connectAttr "polyExtrudeFace5.out" "pCubeShape3.i";
connectAttr "pCube4_translateX.o" "pCube4.tx";
connectAttr "pCube4_translateY.o" "pCube4.ty";
connectAttr "pCube4_translateZ.o" "pCube4.tz";
connectAttr "polyExtrudeFace6.out" "pCubeShape4.i";
connectAttr "pCube9_rotateX.o" "pCube9.rx";
connectAttr "pCube9_rotateY.o" "pCube9.ry";
connectAttr "pCube9_rotateZ.o" "pCube9.rz";
connectAttr "pCube9_visibility.o" "pCube9.v";
connectAttr "pCube9_translateX.o" "pCube9.tx";
connectAttr "pCube9_translateY.o" "pCube9.ty";
connectAttr "pCube9_translateZ.o" "pCube9.tz";
connectAttr "pCube9_scaleX.o" "pCube9.sx";
connectAttr "pCube9_scaleY.o" "pCube9.sy";
connectAttr "pCube9_scaleZ.o" "pCube9.sz";
connectAttr "polyExtrudeFace7.out" "pCubeShape9.i";
connectAttr "polyExtrudeFace9.out" "pCubeShape11.i";
connectAttr "polyExtrudeFace10.out" "pCubeShape12.i";
connectAttr "pCube14_rotateX.o" "pCube14.rx";
connectAttr "pCube14_rotateY.o" "pCube14.ry";
connectAttr "pCube14_rotateZ.o" "pCube14.rz";
connectAttr "pCube14_visibility.o" "pCube14.v";
connectAttr "pCube14_translateX.o" "pCube14.tx";
connectAttr "pCube14_translateY.o" "pCube14.ty";
connectAttr "pCube14_translateZ.o" "pCube14.tz";
connectAttr "pCube14_scaleX.o" "pCube14.sx";
connectAttr "pCube14_scaleY.o" "pCube14.sy";
connectAttr "pCube14_scaleZ.o" "pCube14.sz";
connectAttr "polySplitRing2.out" "pCubeShape15.i";
connectAttr "pCube18_rotateX.o" "pCube18.rx";
connectAttr "pCube18_rotateY.o" "pCube18.ry";
connectAttr "pCube18_rotateZ.o" "pCube18.rz";
connectAttr "pCube18_visibility.o" "pCube18.v";
connectAttr "pCube18_translateX.o" "pCube18.tx";
connectAttr "pCube18_translateY.o" "pCube18.ty";
connectAttr "pCube18_translateZ.o" "pCube18.tz";
connectAttr "pCube18_scaleX.o" "pCube18.sx";
connectAttr "pCube18_scaleY.o" "pCube18.sy";
connectAttr "pCube18_scaleZ.o" "pCube18.sz";
connectAttr "polyCube4.out" "pCubeShape27.i";
connectAttr "pasted__polyExtrudeFace1.out" "pasted__pCubeShape1.i";
connectAttr "pasted__polyExtrudeFace3.out" "pasted__pCubeShape2.i";
connectAttr "pasted__polyExtrudeFace5.out" "pasted__pCubeShape3.i";
connectAttr "pasted__pCube4_translateX.o" "pasted__pCube4.tx";
connectAttr "pasted__pCube4_translateY.o" "pasted__pCube4.ty";
connectAttr "pasted__pCube4_translateZ.o" "pasted__pCube4.tz";
connectAttr "pasted__polyExtrudeFace6.out" "pasted__pCubeShape4.i";
connectAttr "ball_rig_2:Ball_Geo_parentConstraint1.ctx" "ball_rig_2:Ball_Geo.tx"
		 -l on;
connectAttr "ball_rig_2:Ball_Geo_parentConstraint1.cty" "ball_rig_2:Ball_Geo.ty"
		 -l on;
connectAttr "ball_rig_2:Ball_Geo_parentConstraint1.ctz" "ball_rig_2:Ball_Geo.tz"
		 -l on;
connectAttr "ball_rig_2:Ball_Geo_parentConstraint1.crx" "ball_rig_2:Ball_Geo.rx"
		 -l on;
connectAttr "ball_rig_2:Ball_Geo_parentConstraint1.cry" "ball_rig_2:Ball_Geo.ry"
		 -l on;
connectAttr "ball_rig_2:Ball_Geo_parentConstraint1.crz" "ball_rig_2:Ball_Geo.rz"
		 -l on;
connectAttr "ball_rig_2:Ball_Geo_scaleConstraint1.csx" "ball_rig_2:Ball_Geo.sx" 
		-l on;
connectAttr "ball_rig_2:Ball_Geo_scaleConstraint1.csy" "ball_rig_2:Ball_Geo.sy" 
		-l on;
connectAttr "ball_rig_2:Ball_Geo_scaleConstraint1.csz" "ball_rig_2:Ball_Geo.sz" 
		-l on;
connectAttr "ball_rig_2:squash1GroupId.id" "ball_rig_2:Ball_GeoShape.iog.og[0].gid"
		;
connectAttr "ball_rig_2:squash1Set.mwc" "ball_rig_2:Ball_GeoShape.iog.og[0].gco"
		;
connectAttr "ball_rig_2:groupId2.id" "ball_rig_2:Ball_GeoShape.iog.og[1].gid";
connectAttr "ball_rig_2:tweakSet1.mwc" "ball_rig_2:Ball_GeoShape.iog.og[1].gco";
connectAttr "ball_rig_2:Ball_Def_Squash.og[0]" "ball_rig_2:Ball_GeoShape.i";
connectAttr "ball_rig_2:tweak1.vl[0].vt[0]" "ball_rig_2:Ball_GeoShape.twl";
connectAttr "ball_rig_2:Ball_Geo.ro" "ball_rig_2:Ball_Geo_parentConstraint1.cro"
		;
connectAttr "ball_rig_2:Ball_Geo.pim" "ball_rig_2:Ball_Geo_parentConstraint1.cpim"
		;
connectAttr "ball_rig_2:Ball_Geo.rp" "ball_rig_2:Ball_Geo_parentConstraint1.crp"
		;
connectAttr "ball_rig_2:Ball_Geo.rpt" "ball_rig_2:Ball_Geo_parentConstraint1.crt"
		;
connectAttr "ball_rig_2:COG_Ctrl.t" "ball_rig_2:Ball_Geo_parentConstraint1.tg[0].tt"
		;
connectAttr "ball_rig_2:COG_Ctrl.rp" "ball_rig_2:Ball_Geo_parentConstraint1.tg[0].trp"
		;
connectAttr "ball_rig_2:COG_Ctrl.rpt" "ball_rig_2:Ball_Geo_parentConstraint1.tg[0].trt"
		;
connectAttr "ball_rig_2:COG_Ctrl.r" "ball_rig_2:Ball_Geo_parentConstraint1.tg[0].tr"
		;
connectAttr "ball_rig_2:COG_Ctrl.ro" "ball_rig_2:Ball_Geo_parentConstraint1.tg[0].tro"
		;
connectAttr "ball_rig_2:COG_Ctrl.s" "ball_rig_2:Ball_Geo_parentConstraint1.tg[0].ts"
		;
connectAttr "ball_rig_2:COG_Ctrl.pm" "ball_rig_2:Ball_Geo_parentConstraint1.tg[0].tpm"
		;
connectAttr "ball_rig_2:Ball_Geo_parentConstraint1.w0" "ball_rig_2:Ball_Geo_parentConstraint1.tg[0].tw"
		;
connectAttr "ball_rig_2:Ball_Geo.pim" "ball_rig_2:Ball_Geo_scaleConstraint1.cpim"
		;
connectAttr "ball_rig_2:COG_Ctrl.s" "ball_rig_2:Ball_Geo_scaleConstraint1.tg[0].ts"
		;
connectAttr "ball_rig_2:COG_Ctrl.pm" "ball_rig_2:Ball_Geo_scaleConstraint1.tg[0].tpm"
		;
connectAttr "ball_rig_2:Ball_Geo_scaleConstraint1.w0" "ball_rig_2:Ball_Geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "Transform_Ctrl_translateX.o" "ball_rig_2:Transform_Ctrl.tx";
connectAttr "Transform_Ctrl_translateY.o" "ball_rig_2:Transform_Ctrl.ty";
connectAttr "Transform_Ctrl_translateZ.o" "ball_rig_2:Transform_Ctrl.tz";
connectAttr "Transform_Ctrl_rotateX.o" "ball_rig_2:Transform_Ctrl.rx";
connectAttr "Transform_Ctrl_rotateY.o" "ball_rig_2:Transform_Ctrl.ry";
connectAttr "Transform_Ctrl_rotateZ.o" "ball_rig_2:Transform_Ctrl.rz";
connectAttr "Transform_Ctrl_scaleX.o" "ball_rig_2:Transform_Ctrl.sx";
connectAttr "Transform_Ctrl_scaleY.o" "ball_rig_2:Transform_Ctrl.sy";
connectAttr "Transform_Ctrl_scaleZ.o" "ball_rig_2:Transform_Ctrl.sz";
connectAttr "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.crx" "ball_rig_2:Squash_Ctrl_Grp.rx"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.cry" "ball_rig_2:Squash_Ctrl_Grp.ry"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.crz" "ball_rig_2:Squash_Ctrl_Grp.rz"
		;
connectAttr "ball_rig_2:Squash_Ctrl.Scale" "ball_rig_2:Squash_Ctrl.sx" -l on;
connectAttr "ball_rig_2:Squash_Ctrl.Scale" "ball_rig_2:Squash_Ctrl.sy" -l on;
connectAttr "ball_rig_2:Squash_Ctrl.Scale" "ball_rig_2:Squash_Ctrl.sz" -l on;
connectAttr "Squash_Ctrl_Scale.o" "ball_rig_2:Squash_Ctrl.Scale";
connectAttr "Squash_Ctrl_Squash.o" "ball_rig_2:Squash_Ctrl.Squash";
connectAttr "Squash_Ctrl_SquashPosition.o" "ball_rig_2:Squash_Ctrl.SquashPosition"
		;
connectAttr "Squash_Ctrl_HighBound.o" "ball_rig_2:Squash_Ctrl.HighBound";
connectAttr "Squash_Ctrl_LowBound.o" "ball_rig_2:Squash_Ctrl.LowBound";
connectAttr "Squash_Ctrl_Follow.o" "ball_rig_2:Squash_Ctrl.Follow";
connectAttr "Squash_Ctrl_translateX.o" "ball_rig_2:Squash_Ctrl.tx";
connectAttr "Squash_Ctrl_translateY.o" "ball_rig_2:Squash_Ctrl.ty";
connectAttr "Squash_Ctrl_translateZ.o" "ball_rig_2:Squash_Ctrl.tz";
connectAttr "Squash_Ctrl_rotateX.o" "ball_rig_2:Squash_Ctrl.rx";
connectAttr "Squash_Ctrl_rotateY.o" "ball_rig_2:Squash_Ctrl.ry";
connectAttr "Squash_Ctrl_rotateZ.o" "ball_rig_2:Squash_Ctrl.rz";
connectAttr "ball_rig_2:Squash_Ctrl_Grp.ro" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.cro"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp.pim" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.cpim"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp.rp" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.crp"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp.rpt" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.crt"
		;
connectAttr "ball_rig_2:Transform_Ctrl.t" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[0].tt"
		;
connectAttr "ball_rig_2:Transform_Ctrl.rp" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[0].trp"
		;
connectAttr "ball_rig_2:Transform_Ctrl.rpt" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[0].trt"
		;
connectAttr "ball_rig_2:Transform_Ctrl.r" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[0].tr"
		;
connectAttr "ball_rig_2:Transform_Ctrl.ro" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[0].tro"
		;
connectAttr "ball_rig_2:Transform_Ctrl.s" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[0].ts"
		;
connectAttr "ball_rig_2:Transform_Ctrl.pm" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.w0" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[0].tw"
		;
connectAttr "ball_rig_2:COG_Ctrl.t" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[1].tt"
		;
connectAttr "ball_rig_2:COG_Ctrl.rp" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[1].trp"
		;
connectAttr "ball_rig_2:COG_Ctrl.rpt" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[1].trt"
		;
connectAttr "ball_rig_2:COG_Ctrl.r" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[1].tr"
		;
connectAttr "ball_rig_2:COG_Ctrl.ro" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[1].tro"
		;
connectAttr "ball_rig_2:COG_Ctrl.s" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[1].ts"
		;
connectAttr "ball_rig_2:COG_Ctrl.pm" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[1].tpm"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.w1" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.tg[1].tw"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1_Transform_CtrlW0.o" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.w0"
		;
connectAttr "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1_COG_CtrlW1.o" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1.w1"
		;
connectAttr "ball_rig_2:Ball_Def_Squash.msg" "ball_rig_2:Ball_Def_Squash_Handle.sml"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.ctx" "ball_rig_2:Ball_Def_Squash_Handle.tx"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.cty" "ball_rig_2:Ball_Def_Squash_Handle.ty"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.ctz" "ball_rig_2:Ball_Def_Squash_Handle.tz"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.crx" "ball_rig_2:Ball_Def_Squash_Handle.rx"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.cry" "ball_rig_2:Ball_Def_Squash_Handle.ry"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.crz" "ball_rig_2:Ball_Def_Squash_Handle.rz"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1.csx" "ball_rig_2:Ball_Def_Squash_Handle.sx"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1.csy" "ball_rig_2:Ball_Def_Squash_Handle.sy"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1.csz" "ball_rig_2:Ball_Def_Squash_Handle.sz"
		;
connectAttr "ball_rig_2:Ball_Def_Squash.fac" "ball_rig_2:Ball_Def_Squash_HandleShape.fac"
		;
connectAttr "ball_rig_2:Ball_Def_Squash.exp" "ball_rig_2:Ball_Def_Squash_HandleShape.exp"
		;
connectAttr "ball_rig_2:Ball_Def_Squash.mp" "ball_rig_2:Ball_Def_Squash_HandleShape.mp"
		;
connectAttr "ball_rig_2:Ball_Def_Squash.ss" "ball_rig_2:Ball_Def_Squash_HandleShape.ss"
		;
connectAttr "ball_rig_2:Ball_Def_Squash.es" "ball_rig_2:Ball_Def_Squash_HandleShape.es"
		;
connectAttr "ball_rig_2:Ball_Def_Squash.lb" "ball_rig_2:Ball_Def_Squash_HandleShape.lb"
		;
connectAttr "ball_rig_2:Ball_Def_Squash.hb" "ball_rig_2:Ball_Def_Squash_HandleShape.hb"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle.ro" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.cro"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle.pim" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.cpim"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle.rp" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.crp"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle.rpt" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.crt"
		;
connectAttr "ball_rig_2:Squash_Ctrl.t" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.tg[0].tt"
		;
connectAttr "ball_rig_2:Squash_Ctrl.rp" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.tg[0].trp"
		;
connectAttr "ball_rig_2:Squash_Ctrl.rpt" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.tg[0].trt"
		;
connectAttr "ball_rig_2:Squash_Ctrl.r" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.tg[0].tr"
		;
connectAttr "ball_rig_2:Squash_Ctrl.ro" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.tg[0].tro"
		;
connectAttr "ball_rig_2:Squash_Ctrl.s" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.tg[0].ts"
		;
connectAttr "ball_rig_2:Squash_Ctrl.pm" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.tg[0].tpm"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.w0" "ball_rig_2:Ball_Def_Squash_Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle.pim" "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1.cpim"
		;
connectAttr "ball_rig_2:Squash_Ctrl.s" "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1.tg[0].ts"
		;
connectAttr "ball_rig_2:Squash_Ctrl.pm" "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1.tg[0].tpm"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1.w0" "ball_rig_2:Ball_Def_Squash_Handle_scaleConstraint1.tg[0].tw"
		;
connectAttr "aiPhysicalSky1.out" "aiSkyDomeLightShape1.sc";
connectAttr "pasted__polyCube4.out" "pasted__pCubeShape27.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ShaderfxGameHair1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface9SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "standardSurface10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__standardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__standardSurface10SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ball_rig_2:Ball_Shader_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__standardSurface9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ShaderfxGameHair1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "standardSurface10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__standardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__standardSurface10SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ball_rig_2:Ball_Shader_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__standardSurface9SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace4.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak2.ip";
connectAttr "polySurfaceShape3.o" "polyExtrudeFace6.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace6.mp";
connectAttr "|pCube9|polySurfaceShape4.o" "polyExtrudeFace7.ip";
connectAttr "pCubeShape9.wm" "polyExtrudeFace7.mp";
connectAttr "|pCube11|polySurfaceShape5.o" "polyExtrudeFace8.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape11.wm" "polyExtrudeFace9.mp";
connectAttr "|pCube12|polySurfaceShape6.o" "polyExtrudeFace10.ip";
connectAttr "pCubeShape12.wm" "polyExtrudeFace10.mp";
connectAttr "|pCube15|polySurfaceShape7.o" "polySplitRing2.ip";
connectAttr "pCubeShape15.wm" "polySplitRing2.mp";
connectAttr "whiteKey.oc" "standardSurface2SG.ss";
connectAttr "standardSurface2SG.msg" "materialInfo1.sg";
connectAttr "whiteKey.msg" "materialInfo1.m";
connectAttr "whiteKey.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "standardSurface6SG.msg" "materialInfo6.sg";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "standardSurface7SG.msg" "materialInfo7.sg";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "standardSurface8SG.msg" "materialInfo8.sg";
connectAttr "lambert2SG.msg" "materialInfo9.sg";
connectAttr "aiStandardSurface1SG.msg" "materialInfo10.sg";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "aiStandardSurface2SG.msg" "materialInfo11.sg";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "place2dTexture6.o" "substanceNode1.uv";
connectAttr "place2dTexture6.ofs" "substanceNode1.fs";
connectAttr "file6.ftn" "ShaderfxGameHair1.OpacityMap";
connectAttr "file7.ftn" "ShaderfxGameHair1.BreakupMap";
connectAttr "ShaderfxGameHair1.oc" "ShaderfxGameHair1SG.ss";
connectAttr "ShaderfxGameHair1SG.msg" "materialInfo12.sg";
connectAttr "ShaderfxGameHair1.msg" "materialInfo12.m";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture7.c" "file6.c";
connectAttr "place2dTexture7.tf" "file6.tf";
connectAttr "place2dTexture7.rf" "file6.rf";
connectAttr "place2dTexture7.mu" "file6.mu";
connectAttr "place2dTexture7.mv" "file6.mv";
connectAttr "place2dTexture7.s" "file6.s";
connectAttr "place2dTexture7.wu" "file6.wu";
connectAttr "place2dTexture7.wv" "file6.wv";
connectAttr "place2dTexture7.re" "file6.re";
connectAttr "place2dTexture7.of" "file6.of";
connectAttr "place2dTexture7.r" "file6.ro";
connectAttr "place2dTexture7.n" "file6.n";
connectAttr "place2dTexture7.vt1" "file6.vt1";
connectAttr "place2dTexture7.vt2" "file6.vt2";
connectAttr "place2dTexture7.vt3" "file6.vt3";
connectAttr "place2dTexture7.vc1" "file6.vc1";
connectAttr "place2dTexture7.o" "file6.uv";
connectAttr "place2dTexture7.ofs" "file6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture8.c" "file7.c";
connectAttr "place2dTexture8.tf" "file7.tf";
connectAttr "place2dTexture8.rf" "file7.rf";
connectAttr "place2dTexture8.mu" "file7.mu";
connectAttr "place2dTexture8.mv" "file7.mv";
connectAttr "place2dTexture8.s" "file7.s";
connectAttr "place2dTexture8.wu" "file7.wu";
connectAttr "place2dTexture8.wv" "file7.wv";
connectAttr "place2dTexture8.re" "file7.re";
connectAttr "place2dTexture8.of" "file7.of";
connectAttr "place2dTexture8.r" "file7.ro";
connectAttr "place2dTexture8.n" "file7.n";
connectAttr "place2dTexture8.vt1" "file7.vt1";
connectAttr "place2dTexture8.vt2" "file7.vt2";
connectAttr "place2dTexture8.vt3" "file7.vt3";
connectAttr "place2dTexture8.vc1" "file7.vc1";
connectAttr "place2dTexture8.o" "file7.uv";
connectAttr "place2dTexture8.ofs" "file7.fs";
connectAttr "file8.oc" "standardSurface9.bc";
connectAttr "standardSurface9.oc" "standardSurface9SG.ss";
connectAttr "pCubeShape27.iog" "standardSurface9SG.dsm" -na;
connectAttr "standardSurface9SG.msg" "materialInfo13.sg";
connectAttr "standardSurface9.msg" "materialInfo13.m";
connectAttr "standardSurface9.msg" "materialInfo13.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "place2dTexture9.c" "file8.c";
connectAttr "place2dTexture9.tf" "file8.tf";
connectAttr "place2dTexture9.rf" "file8.rf";
connectAttr "place2dTexture9.mu" "file8.mu";
connectAttr "place2dTexture9.mv" "file8.mv";
connectAttr "place2dTexture9.s" "file8.s";
connectAttr "place2dTexture9.wu" "file8.wu";
connectAttr "place2dTexture9.wv" "file8.wv";
connectAttr "place2dTexture9.re" "file8.re";
connectAttr "place2dTexture9.of" "file8.of";
connectAttr "place2dTexture9.r" "file8.ro";
connectAttr "place2dTexture9.n" "file8.n";
connectAttr "place2dTexture9.vt1" "file8.vt1";
connectAttr "place2dTexture9.vt2" "file8.vt2";
connectAttr "place2dTexture9.vt3" "file8.vt3";
connectAttr "place2dTexture9.vc1" "file8.vc1";
connectAttr "place2dTexture9.o" "file8.uv";
connectAttr "place2dTexture9.ofs" "file8.fs";
connectAttr "blackKey.oc" "standardSurface10SG.ss";
connectAttr "pCubeShape24.iog" "standardSurface10SG.dsm" -na;
connectAttr "pCubeShape23.iog" "standardSurface10SG.dsm" -na;
connectAttr "pCubeShape22.iog" "standardSurface10SG.dsm" -na;
connectAttr "pCubeShape21.iog" "standardSurface10SG.dsm" -na;
connectAttr "pCubeShape20.iog" "standardSurface10SG.dsm" -na;
connectAttr "pCubeShape15.iog" "standardSurface10SG.dsm" -na;
connectAttr "pCubeShape19.iog" "standardSurface10SG.dsm" -na;
connectAttr "standardSurface10SG.msg" "materialInfo14.sg";
connectAttr "blackKey.msg" "materialInfo14.m";
connectAttr "blackKey.msg" "materialInfo14.t" -na;
connectAttr "pasted__standardSurface10SG.msg" "pasted__materialInfo14.sg";
connectAttr "pasted__blackKey.msg" "pasted__materialInfo14.m";
connectAttr "pasted__blackKey.msg" "pasted__materialInfo14.t" -na;
connectAttr "pasted__blackKey.oc" "pasted__standardSurface10SG.ss";
connectAttr "pasted__pCubeShape22.iog" "pasted__standardSurface10SG.dsm" -na;
connectAttr "pasted__pCubeShape21.iog" "pasted__standardSurface10SG.dsm" -na;
connectAttr "pasted__pCubeShape20.iog" "pasted__standardSurface10SG.dsm" -na;
connectAttr "pasted__pCubeShape30.iog" "pasted__standardSurface10SG.dsm" -na;
connectAttr "pasted__polySplitRing1.out" "pasted__polyExtrudeFace1.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polyExtrudeFace1.mp";
connectAttr "pasted__polyTweak1.out" "pasted__polySplitRing1.ip";
connectAttr "pasted__pCubeShape1.wm" "pasted__polySplitRing1.mp";
connectAttr "pasted__polyCube1.out" "pasted__polyTweak1.ip";
connectAttr "pasted__standardSurface2SG.msg" "pasted__materialInfo1.sg";
connectAttr "lambert3.msg" "pasted__materialInfo1.m";
connectAttr "lambert3.oc" "pasted__standardSurface2SG.ss";
connectAttr "pasted__pCubeShape2.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pasted__pCubeShape4.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pasted__pCubeShape3.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pasted__pCubeShape1.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape12.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape11.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape9.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape4.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape3.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape2.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape1.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape14.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape16.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pCubeShape18.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pasted__pCubeShape28.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pasted__pCubeShape29.iog" "pasted__standardSurface2SG.dsm" -na;
connectAttr "pasted__polyExtrudeFace2.out" "pasted__polyExtrudeFace3.ip";
connectAttr "pasted__pCubeShape2.wm" "pasted__polyExtrudeFace3.mp";
connectAttr "|group|pasted__pCube2|pasted__polySurfaceShape1.o" "pasted__polyExtrudeFace2.ip"
		;
connectAttr "pasted__pCubeShape2.wm" "pasted__polyExtrudeFace2.mp";
connectAttr "pasted__polyTweak2.out" "pasted__polyExtrudeFace5.ip";
connectAttr "pasted__pCubeShape3.wm" "pasted__polyExtrudeFace5.mp";
connectAttr "pasted__polyExtrudeFace4.out" "pasted__polyTweak2.ip";
connectAttr "pasted__polySurfaceShape2.o" "pasted__polyExtrudeFace4.ip";
connectAttr "pasted__pCubeShape3.wm" "pasted__polyExtrudeFace4.mp";
connectAttr "pasted__polySurfaceShape3.o" "pasted__polyExtrudeFace6.ip";
connectAttr "pasted__pCubeShape4.wm" "pasted__polyExtrudeFace6.mp";
connectAttr "ball_rig_2:Squash_Ctrl.Squash" "ball_rig_2:Ball_Def_Squash.fac";
connectAttr "ball_rig_2:Squash_Ctrl.SquashPosition" "ball_rig_2:Ball_Def_Squash.mp"
		;
connectAttr "ball_rig_2:Squash_Ctrl.LowBound" "ball_rig_2:Ball_Def_Squash.lb";
connectAttr "ball_rig_2:Squash_Ctrl.HighBound" "ball_rig_2:Ball_Def_Squash.hb";
connectAttr "ball_rig_2:squash1GroupParts.og" "ball_rig_2:Ball_Def_Squash.ip[0].ig"
		;
connectAttr "ball_rig_2:squash1GroupId.id" "ball_rig_2:Ball_Def_Squash.ip[0].gi"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_HandleShape.dd" "ball_rig_2:Ball_Def_Squash.dd"
		;
connectAttr "ball_rig_2:Ball_Def_Squash_Handle.wm" "ball_rig_2:Ball_Def_Squash.ma"
		;
connectAttr "ball_rig_2:groupParts2.og" "ball_rig_2:tweak1.ip[0].ig";
connectAttr "ball_rig_2:groupId2.id" "ball_rig_2:tweak1.ip[0].gi";
connectAttr "ball_rig_2:squash1GroupId.msg" "ball_rig_2:squash1Set.gn" -na;
connectAttr "ball_rig_2:Ball_GeoShape.iog.og[0]" "ball_rig_2:squash1Set.dsm" -na
		;
connectAttr "ball_rig_2:Ball_Def_Squash.msg" "ball_rig_2:squash1Set.ub[0]";
connectAttr "ball_rig_2:tweak1.og[0]" "ball_rig_2:squash1GroupParts.ig";
connectAttr "ball_rig_2:squash1GroupId.id" "ball_rig_2:squash1GroupParts.gi";
connectAttr "ball_rig_2:groupId2.msg" "ball_rig_2:tweakSet1.gn" -na;
connectAttr "ball_rig_2:Ball_GeoShape.iog.og[1]" "ball_rig_2:tweakSet1.dsm" -na;
connectAttr "ball_rig_2:tweak1.msg" "ball_rig_2:tweakSet1.ub[0]";
connectAttr "ball_rig_2:Ball_GeoShapeOrig.w" "ball_rig_2:groupParts2.ig";
connectAttr "ball_rig_2:groupId2.id" "ball_rig_2:groupParts2.gi";
connectAttr "ball_rig_2:bump2d1.o" "ball_rig_2:Ball_Shader.n";
connectAttr "ball_rig_2:Ball_Shader.oc" "ball_rig_2:Ball_Shader_SG.ss";
connectAttr "ball_rig_2:Ball_GeoShape.iog" "ball_rig_2:Ball_Shader_SG.dsm" -na;
connectAttr "ball_rig_2:Ball_Shader_SG.msg" "ball_rig_2:materialInfo1.sg";
connectAttr "ball_rig_2:Ball_Shader.msg" "ball_rig_2:materialInfo1.m";
connectAttr "ball_rig_2:place2dTexture1.o" "ball_rig_2:fractal1.uv";
connectAttr "ball_rig_2:place2dTexture1.ofs" "ball_rig_2:fractal1.fs";
connectAttr "ball_rig_2:fractal1.oa" "ball_rig_2:bump2d1.bv";
connectAttr "ball_rig_2:Ball_Shader_SG.msg" "ball_rig_2:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ball_rig_2:bump2d1.msg" "ball_rig_2:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ball_rig_2:place2dTexture1.msg" "ball_rig_2:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ball_rig_2:fractal1.msg" "ball_rig_2:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "ball_rig_2:Ball_Shader.msg" "ball_rig_2:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "ball_rig_2:Squash_Ctrl.Follow" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1_COG_CtrlW1.i"
		;
connectAttr "ball_rig_2:Squash_Ctrl.Follow" "ball_rig_2:Squash_Ctrl_Grp_parentConstraint1_Transform_CtrlW0.i"
		;
connectAttr "pasted__standardSurface9SG.msg" "pasted__materialInfo13.sg";
connectAttr "pasted__standardSurface9.msg" "pasted__materialInfo13.m";
connectAttr "pasted__standardSurface9.msg" "pasted__materialInfo13.t" -na;
connectAttr "pasted__standardSurface9.oc" "pasted__standardSurface9SG.ss";
connectAttr "pasted__pCubeShape27.iog" "pasted__standardSurface9SG.dsm" -na;
connectAttr "pasted__file8.oc" "pasted__standardSurface9.bc";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file8.ws";
connectAttr "pasted__place2dTexture9.c" "pasted__file8.c";
connectAttr "pasted__place2dTexture9.tf" "pasted__file8.tf";
connectAttr "pasted__place2dTexture9.rf" "pasted__file8.rf";
connectAttr "pasted__place2dTexture9.mu" "pasted__file8.mu";
connectAttr "pasted__place2dTexture9.mv" "pasted__file8.mv";
connectAttr "pasted__place2dTexture9.s" "pasted__file8.s";
connectAttr "pasted__place2dTexture9.wu" "pasted__file8.wu";
connectAttr "pasted__place2dTexture9.wv" "pasted__file8.wv";
connectAttr "pasted__place2dTexture9.re" "pasted__file8.re";
connectAttr "pasted__place2dTexture9.of" "pasted__file8.of";
connectAttr "pasted__place2dTexture9.r" "pasted__file8.ro";
connectAttr "pasted__place2dTexture9.n" "pasted__file8.n";
connectAttr "pasted__place2dTexture9.vt1" "pasted__file8.vt1";
connectAttr "pasted__place2dTexture9.vt2" "pasted__file8.vt2";
connectAttr "pasted__place2dTexture9.vt3" "pasted__file8.vt3";
connectAttr "pasted__place2dTexture9.vc1" "pasted__file8.vc1";
connectAttr "pasted__place2dTexture9.o" "pasted__file8.uv";
connectAttr "pasted__place2dTexture9.ofs" "pasted__file8.fs";
connectAttr "file6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "place2dTexture8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ShaderfxGameHair1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "standardSurface9SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "standardSurface8SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "standardSurface9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "place2dTexture6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "ShaderfxGameHair1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "aiStandardSurface1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "place2dTexture5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "substanceNode1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "aiStandardSurface2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "file8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "place2dTexture4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "blackKey.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "standardSurface10SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "place2dTexture9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "place2dTexture7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface7SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "ShaderfxGameHair1SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface9SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface10SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__standardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__standardSurface10SG.pa" ":renderPartition.st" -na;
connectAttr "ball_rig_2:Ball_Shader_SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__standardSurface9SG.pa" ":renderPartition.st" -na;
connectAttr "whiteKey.msg" ":defaultShaderList1.s" -na;
connectAttr "ShaderfxGameHair1.msg" ":defaultShaderList1.s" -na;
connectAttr "standardSurface9.msg" ":defaultShaderList1.s" -na;
connectAttr "blackKey.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__blackKey.msg" ":defaultShaderList1.s" -na;
connectAttr "ball_rig_2:Ball_Shader.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__standardSurface9.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_rig_2:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_rig_2:bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "ball_rig_2:fractal1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
// End of unit 1.ma
