//Maya ASCII 2023 scene
//Name: lamp_rig.ma
//Last modified: Sat, Mar 09, 2024 02:37:08 PM
//Codeset: UTF-8
requires "fbxmaya" "2020.3.1";
file -rdi 1 -ns "lamp_model" -rfn "lamp_modelRN" -typ "Fbx" "/Users/owynnarmstrong/Downloads/lamp_model.fbx";
file -r -ns "lamp_model" -dr 1 -rfn "lamp_modelRN" -typ "Fbx" "/Users/owynnarmstrong/Downloads/lamp_model.fbx";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "E07C6590-4A40-2C1F-3C60-2985654E133E";
createNode transform -s -n "persp";
	rename -uid "A9827967-E445-705A-DD7E-D7A63017F0E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 96.986880340245804 39.083010191140431 36.914829268698902 ;
	setAttr ".r" -type "double3" -18.33835271786435 -1007.8000000002514 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D4121D7C-F34B-8FD9-ADA6-FC9B6A9B029B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 92.604082108081371;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.12364066175876798 15.582291003609267 -1.6665962496616604 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1315651E-8846-3923-642A-F1B0C823C8C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E812E891-F94F-EE80-87C2-2A98F71CCDF3";
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
	rename -uid "6EAB9955-5B41-5E99-7B66-AD83C04A918B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1004.3052136677651 8.5325648196352404 -7.3465489692324581 ;
	setAttr ".r" -type "double3" 0 89.999999999996845 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F1ABDFB4-4847-6EDB-6A9E-B78155C03C9A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 55.326978695540788;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0883F286-9845-A4AE-1419-A6AE52589981";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C3D1659C-4342-2511-5520-85B7D6B71E91";
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
createNode transform -n "Lamp";
	rename -uid "8EA505A2-2B48-2390-8A9D-178A557561AA";
createNode transform -n "Skeleton1" -p "Lamp";
	rename -uid "341C45C7-9C4F-7AF2-EB59-7598B36B305B";
createNode joint -n "ROOT_Ctrl" -p "Skeleton1";
	rename -uid "8CAEDB32-E34A-46F7-06CB-08AA9722551D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "COG_Jnt" -p "ROOT_Ctrl";
	rename -uid "F70B86BD-D943-7DF9-89CA-48860703165C";
	setAttr ".dla" yes;
	setAttr ".radi" 0.3;
createNode transform -n "transform1" -p "COG_Jnt";
	rename -uid "621FE8EF-194A-9E5E-B998-DE921482DC71";
	setAttr ".t" -type "double3" 0.0038063829714543667 -0.32835196396844218 0.00022216351262347879 ;
	setAttr ".s" -type "double3" 0.11667393816813668 0.11667393816813668 0.11667393816813668 ;
createNode joint -n "Shoulder_IK_Jnt" -p "transform1";
	rename -uid "F1B76A6D-9146-8F05-4113-B48FBE1E29DF";
	setAttr ".r" -type "double3" -0.016876171798880214 0.018800576974940655 -3.263725017817253 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 89.996140774016652 49.030296127112891 89.994888824072461 ;
	setAttr ".radi" 1.2375304093506174;
createNode joint -n "Elbow_IK_Jnt" -p "Shoulder_IK_Jnt";
	rename -uid "3E26FF0B-4049-B846-459E-CA94017515DB";
	setAttr ".t" -type "double3" 15.264692031348964 4.4408920985006262e-16 1.2764854277758086e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.208106411643755 ;
	setAttr ".radi" 1.3026011669463309;
createNode joint -n "Head_IK_Jnt" -p "Elbow_IK_Jnt";
	rename -uid "C168794E-C542-FCBC-35C7-019D275CF866";
	setAttr ".t" -type "double3" 16.523971216162572 -7.1054273576010019e-15 -5.5267205742448589e-17 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 1.3026011669463309;
createNode orientConstraint -n "Head_IK_Jnt_orientConstraint1" -p "Head_IK_Jnt";
	rename -uid "E50CBC8D-B34D-EC12-A15A-C99D01CD7636";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -0.01462420735489401 0.0083616667296065612 -13.427504905725131 ;
	setAttr ".rsrr" -type "double3" -0.00081511029339703244 -0.0021553335408600483 -0.00044111570111838975 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Elbow_IK_Jnt";
	rename -uid "74560EAB-A749-95DF-225D-489A86E9875E";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "Elbow_IK_Jnt_orientConstraint1" -p "Elbow_IK_Jnt";
	rename -uid "CF94167D-7448-290B-1885-37AC709EFA05";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -0.014650554824068393 0.0083416134329476234 -4.1954227503594304 ;
	setAttr ".rsrr" -type "double3" -5.6016596268072201 -89.99721233215061 -89.576150556207935 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Shoulder_IK_Jnt_pointConstraint1" -p "Shoulder_IK_Jnt";
	rename -uid "1E0AACF9-0644-AAAB-4044-429D4D0A15D0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Shoulder_IK_CtrlW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".rst" -type "double3" 3.7680715525226393e-16 2.8062808513641357 -8.8131656608974874e-16 ;
	setAttr -k on ".w0";
createNode joint -n "base_01_jnt" -p "COG_Jnt";
	rename -uid "E4C37F43-5B41-F416-0404-00B175496553";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.011592558532342126 -1.1973808206236005 -89.4452623018921 ;
	setAttr ".radi" 0.56008016288344686;
createNode joint -n "base_02_jnt" -p "base_01_jnt";
	rename -uid "3BB67157-A64C-0C30-2F11-5C834C658A33";
	setAttr ".t" -type "double3" 2.1615498157466368 -6.6613381477509392e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.56008016288344686;
createNode parentConstraint -n "base_01_jnt_parentConstraint1" -p "base_01_jnt";
	rename -uid "315A5CFF-AF4B-C662-A194-F78D93925D43";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.015459301555153848 -0.21081433850100381 -1.8494409026806324e-07 ;
	setAttr ".tg[0].tor" -type "double3" -3.5788993145282304e-15 1.4269010005297119e-14 
		-1.1121666715736699e-16 ;
	setAttr ".lr" -type "double3" 3.4787316828507214e-15 -1.3716142063811415e-14 -3.804862778118018e-17 ;
	setAttr ".rst" -type "double3" 3.7659919510154433e-05 -0.0038895928299189086 8.125472690960787e-05 ;
	setAttr ".rsrr" -type "double3" 3.5781240166464568e-15 -1.4014319065198617e-14 -3.8048627781180204e-17 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "base_01_jnt_scaleConstraint1" -p "base_01_jnt";
	rename -uid "10C2C287-B040-99F7-54FB-71AAC542050B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_ctrlW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "COG_Jnt_parentConstraint1" -p "COG_Jnt";
	rename -uid "EE30F016-1747-0700-17A8-5D8FB69ADAE7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.32284698547174306 -5.4444173128165296e-11 
		0.00032522927797022872 ;
	setAttr ".tg[0].tor" -type "double3" 180 7.016709298534876e-15 -90.000000000000014 ;
	setAttr ".lr" -type "double3" -7.0167092985348752e-15 7.0167092985348752e-15 -4.2964952914991011e-31 ;
	setAttr ".rst" -type "double3" -0.032624106387572675 2.8142700000000014 -0.0019041400000000259 ;
	setAttr ".rsrr" -type "double3" -7.0167092985348752e-15 7.0167092985348752e-15 -4.2964952914991011e-31 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "COG_Jnt_scaleConstraint1" -p "COG_Jnt";
	rename -uid "65CFF0E8-B944-C13F-B215-F5ADE2841C7B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "COG_ctrlW0" -dv 1 -min 0 -at "double";
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
createNode transform -n "Controls" -p "Lamp";
	rename -uid "C1EA0B73-2145-C9CA-E4D7-A78ACE08C39C";
createNode transform -n "transform_ctrl_grp" -p "Controls";
	rename -uid "A52F89BB-874E-7D01-1E41-D6901A3BB1F5";
	setAttr ".t" -type "double3" -0.032624106854200939 0.047182589215134525 0.00088336578815594871 ;
	setAttr ".r" -type "double3" 0 180 90 ;
	setAttr ".s" -type "double3" 9.8020780053344225 9.8020780053344225 9.8020780053344225 ;
createNode transform -n "transform_ctrl" -p "transform_ctrl_grp";
	rename -uid "F9307ABC-E640-A0F1-07A1-CBB050785E0A";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 8.8817841970012523e-16 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-16 8.8817841970012523e-16 4.4408920985006262e-16 ;
createNode nurbsCurve -n "transform_ctrlShape" -p "transform_ctrl";
	rename -uid "2EAB9305-4D40-D8FC-6956-109F89DC15F1";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9265859428412898e-16 1.1980342066749008 -1.1980342066748986
		-6.7857323231109159e-17 -1.2643170607829324e-16 -1.1081941875543879
		-3.3937546993147405e-16 -1.1980342066748995 -1.1980342066748995
		-2.4606854055573011e-16 -1.1081941875543879 -3.2112695072372299e-16
		-1.9265859428412871e-16 -1.1980342066748999 1.1980342066748992
		6.7857323231109072e-17 -3.3392053635905195e-16 1.1081941875543881
		3.3937546993147385e-16 1.1980342066748986 1.1980342066748997
		2.4606854055573016e-16 1.1081941875543879 5.9521325992805852e-16
		1.9265859428412898e-16 1.1980342066749008 -1.1980342066748986
		-6.7857323231109159e-17 -1.2643170607829324e-16 -1.1081941875543879
		-3.3937546993147405e-16 -1.1980342066748995 -1.1980342066748995
		;
createNode transform -n "COG_ctrl_grp" -p "transform_ctrl";
	rename -uid "A8429E87-E24A-1D58-EBE8-F1A0BB9CD5B6";
	setAttr ".t" -type "double3" 0 -4.3368086899420177e-19 0 ;
	setAttr ".s" -type "double3" 0.87439565032008992 0.87439565032008992 0.87439565032008992 ;
createNode transform -n "COG_ctrl" -p "COG_ctrl_grp";
	rename -uid "7A6D3159-1448-1382-952A-C59253E0FF3A";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 8.8817841970012523e-16 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-16 8.8817841970012523e-16 4.4408920985006262e-16 ;
createNode nurbsCurve -n "COG_ctrlShape" -p "COG_ctrl";
	rename -uid "DB2BEEDB-5B4A-C780-11C6-6FBD204B7374";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2601436025374922e-16 0.78361162489122504 -0.78361162489122382
		-6.7857323231109159e-17 -1.2643170607829324e-16 -1.1081941875543879
		-2.2197910707351845e-16 -0.78361162489122427 -0.78361162489122427
		-2.4606854055573011e-16 -1.1081941875543879 -3.2112695072372299e-16
		-1.2601436025374907e-16 -0.78361162489122449 0.78361162489122405
		6.7857323231109072e-17 -3.3392053635905195e-16 1.1081941875543881
		2.2197910707351835e-16 0.78361162489122382 0.78361162489122438
		2.4606854055573016e-16 1.1081941875543879 5.9521325992805852e-16
		1.2601436025374922e-16 0.78361162489122504 -0.78361162489122382
		-6.7857323231109159e-17 -1.2643170607829324e-16 -1.1081941875543879
		-2.2197910707351845e-16 -0.78361162489122427 -0.78361162489122427
		;
createNode transform -n "base_ctrl_grp" -p "COG_ctrl";
	rename -uid "3E967316-3F47-B688-E09B-9FBF9F4C3C8D";
	setAttr ".t" -type "double3" -0.32284671503631818 -0.046867406484473406 0.00032522905699323138 ;
	setAttr ".r" -type "double3" 179.98840744146767 1.1973808206236214 -0.55473769810790752 ;
	setAttr ".s" -type "double3" 0.22230560171596353 0.22230560171596367 0.22230560171596361 ;
createNode transform -n "base_ctrl" -p "base_ctrl_grp";
	rename -uid "8E909B5E-E842-D4D8-E468-A199B11E83A6";
createNode nurbsCurve -n "base_ctrlShape" -p "base_ctrl";
	rename -uid "5A9DE4B5-B647-9186-C8FC-31A7B59D2BBD";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode transform -n "lower_arm_ctrl_grp" -p "COG_ctrl";
	rename -uid "EC82F15D-C742-0495-1136-A4926D03C43F";
	setAttr ".t" -type "double3" -0.32198764333127117 0.040044182310930529 1.4379231312589003e-17 ;
	setAttr ".r" -type "double3" 48.989399651475892 -1.3239827710971399 89.564457736131644 ;
	setAttr ".s" -type "double3" 0.21527409594576305 0.21527409594576305 0.21527409594576297 ;
createNode transform -n "lower_arm_ctrl" -p "lower_arm_ctrl_grp";
	rename -uid "D9124859-B244-23B4-96C6-F898276BAC99";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 8.8817841970012523e-16 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-16 8.8817841970012523e-16 4.4408920985006262e-16 ;
createNode nurbsCurve -n "lower_arm_ctrlShape" -p "lower_arm_ctrl";
	rename -uid "D929673D-CC49-DE8C-8319-C4ADD31384BC";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2601436025374922e-16 0.78361162489122504 -0.78361162489122382
		-6.7857323231109159e-17 -1.2643170607829324e-16 -1.1081941875543879
		-2.2197910707351845e-16 -0.78361162489122427 -0.78361162489122427
		-2.4606854055573011e-16 -1.1081941875543879 -3.2112695072372299e-16
		-1.2601436025374907e-16 -0.78361162489122449 0.78361162489122405
		6.7857323231109072e-17 -3.3392053635905195e-16 1.1081941875543881
		2.2197910707351835e-16 0.78361162489122382 0.78361162489122438
		2.4606854055573016e-16 1.1081941875543879 5.9521325992805852e-16
		1.2601436025374922e-16 0.78361162489122504 -0.78361162489122382
		-6.7857323231109159e-17 -1.2643170607829324e-16 -1.1081941875543879
		-2.2197910707351845e-16 -0.78361162489122427 -0.78361162489122427
		;
createNode transform -n "Arm_IK_Ctrl_Grp" -p "lower_arm_ctrl";
	rename -uid "C50E342A-9445-1A64-35BD-80A4164E5E07";
	setAttr ".t" -type "double3" -0.19206405481527769 -0.99553949131334041 1.1523038296146861 ;
	setAttr ".r" -type "double3" -131.00817858112504 -1.1974323362280948 179.28668130584413 ;
	setAttr ".s" -type "double3" 0.54197853046625688 0.5419785304662571 0.5419785304662571 ;
createNode transform -n "Shoulder_IK_Ctrl_Grp" -p "Arm_IK_Ctrl_Grp";
	rename -uid "99603CF2-2C42-06AD-36BB-D9AB94BF9E47";
	setAttr ".t" -type "double3" 0 2.8062808513641357 0 ;
	setAttr ".s" -type "double3" 1.7994533338014422 1.7994533338014422 1.7994533338014422 ;
createNode transform -n "Shoulder_IK_Ctrl" -p "Shoulder_IK_Ctrl_Grp";
	rename -uid "06E6993B-6346-C5D0-B00D-2490D81FF06F";
createNode nurbsCurve -n "Shoulder_IK_CtrlShape" -p "Shoulder_IK_Ctrl";
	rename -uid "47B1158A-8748-D331-FFDC-A2AC47324A88";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "Head_IK_Ctrl_Grp" -p "Arm_IK_Ctrl_Grp";
	rename -uid "BACDDEE7-EF43-4F5E-A4C2-2B9B7B31D564";
	setAttr ".t" -type "double3" -0.0079084918778981553 23.245869751963685 1.5754923402568779 ;
	setAttr ".r" -type "double3" 89.976779367665728 -51.610436947338535 90.037188666041658 ;
	setAttr ".s" -type "double3" 2.4164494638638159 2.4164494638638159 2.4164494638638159 ;
createNode transform -n "Head_IK_Ctrl" -p "Head_IK_Ctrl_Grp";
	rename -uid "A95F83F7-3642-0977-6AA5-E98330A43064";
createNode nurbsCurve -n "Head_IK_CtrlShape" -p "Head_IK_Ctrl";
	rename -uid "02B3F7F7-7E4A-322E-CEFD-B8BFDCB78B41";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode ikHandle -n "Arm_IK_Handle" -p "Head_IK_Ctrl";
	rename -uid "F2FCFA05-374F-3885-9CEE-4D99BFCC7336";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.00020686500372643616 -4.7976257633308705e-08 5.6887034638464229e-08 ;
	setAttr ".r" -type "double3" -45.000000000000014 0 0 ;
	setAttr ".s" -type "double3" 0.28024201444234792 0.28024201444234792 0.28024201444234792 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "Arm_IK_Handle_poleVectorConstraint1" -p "Arm_IK_Handle";
	rename -uid "737DDC30-C442-B79D-11BE-D8BDB46E61D1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_IK_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0.00025020621544703548 -1.3312402219294075 -5.2978081250850853 ;
	setAttr -k on ".w0";
createNode transform -n "Elbow_IK_Ctrl_Grp" -p "Arm_IK_Ctrl_Grp";
	rename -uid "88EFB7CA-C441-DCEF-3437-ACA923DEBB0D";
createNode transform -n "Elbow_IK_Offset_Ctrl_Grp" -p "Elbow_IK_Ctrl_Grp";
	rename -uid "87C26F28-EA40-113D-3AD6-4987DA06513C";
	setAttr ".t" -type "double3" 0.00089282192730779329 12.814726829528812 -16.726417872476915 ;
	setAttr ".r" -type "double3" 90 0 89.998819502218112 ;
createNode transform -n "Elbow_IK_Ctrl" -p "Elbow_IK_Offset_Ctrl_Grp";
	rename -uid "0C615968-5645-17B0-C6D2-FEB234A3E3F2";
createNode nurbsCurve -n "Elbow_IK_CtrlShape" -p "Elbow_IK_Ctrl";
	rename -uid "93AB50C3-0547-8B14-A142-C6B8BD548924";
	addAttr -ci true -k true -sn "ll" -ln "lockLength" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.043300638971867172 2.6513994458965074e-18 -0.043300638971865445
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.043300638971863814 2.6513994458965093e-18 -0.043300638971865445
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.043300638971863828 -2.6513994458965082e-18 0.043300638971865479
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.043300638971867138 -2.6513994458965093e-18 0.043300638971865479
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.043300638971867172 2.6513994458965074e-18 -0.043300638971865445
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.043300638971863814 2.6513994458965093e-18 -0.043300638971865445
		;
createNode transform -n "upper_arm_crtl_grp" -p "lower_arm_ctrl";
	rename -uid "39E54CE8-B04A-E0ED-D4B4-488A3D982E5B";
	setAttr ".t" -type "double3" -0.31078962301302498 8.2708647124428953 0.0087570884153995721 ;
	setAttr ".r" -type "double3" 1.0125931213440764 99.135028325114334 90.504825485461652 ;
	setAttr ".s" -type "double3" 0.54197853046625732 0.54197853046625677 0.54197853046625677 ;
createNode fosterParent -n "lamp_modelRNfosterParent1";
	rename -uid "507AE30C-5845-DEAE-3501-12A69072DD60";
createNode scaleConstraint -n "head_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "5D17A383-2944-4E1E-FAE3-00993EBFB050";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_IK_JntW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "head_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "5B51EC66-1643-E7BB-2DB8-3E800AB94DB2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_IK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.21835790578646908 0.37864580491359234 -0.009366460913598813 ;
	setAttr ".tg[0].tor" -type "double3" -50.601659626912358 -89.997212332150639 -89.576150555820192 ;
	setAttr ".lr" -type "double3" -7.8526834135096584 -0.012373047788908778 0.020880415458525335 ;
	setAttr ".rst" -type "double3" -1.9637069748057456e-15 -1.7763568394002505e-14 -5.3290705182007514e-15 ;
	setAttr ".rsrr" -type "double3" 1.2334827165651811e-10 -6.3611093629270335e-15 -6.8472045620392504e-27 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "upper_arm_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "9CE95CA5-E642-BFFF-D177-E18697E0CD78";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_IK_JntW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "upper_arm_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "0853AB52-E640-D4DB-78ED-77848295E1E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_IK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.050942157675777144 0.31959869855316825 -0.35069166654971451 ;
	setAttr ".tg[0].tor" -type "double3" -50.60165962665959 -89.997212332150625 -89.576150556123281 ;
	setAttr ".lr" -type "double3" 5.5748205840636871 0.0035740085096992269 0.024968989733569581 ;
	setAttr ".rst" -type "double3" -0.3479283231473515 0.031930456081722625 0.0066134934538073509 ;
	setAttr ".rsrr" -type "double3" 7.3044618814491149e-11 -1.908332808877502e-14 -9.5416640444027161e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "lower_arm_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "8B51579A-1641-9E54-F6F7-4586272095B7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Shoulder_IK_JntW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "lower_arm_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "23F51BB5-D84B-FC11-24DC-3689645645E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Shoulder_IK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.5572388689220613 0.0087897058388421989 -0.36643385721659727 ;
	setAttr ".tg[0].tor" -type "double3" -50.601659626819369 -89.997212332150639 9.6319558556327145 ;
	setAttr ".lr" -type "double3" -3.2637222156812387 0.0039114173005610434 0.024703066917713727 ;
	setAttr ".rst" -type "double3" -0.36433586059894202 0.14957781138559589 -0.10950641293261931 ;
	setAttr ".rsrr" -type "double3" 2.5488965217248623e-11 5.5659706925597391e-15 6.361109362928272e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "base_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "B2DA3AB7-DE47-688B-67E3-50BC9F9A8345";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "base_01_jntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.0795169927040069 -1.6764547026217866 -0.10071509805006582 ;
	setAttr ".tg[0].tor" -type "double3" 1.1974369283791304 3.0753967366121225e-13 89.445383438323276 ;
	setAttr ".lr" -type "double3" -8.6229124060912868e-30 -3.0751988076400384e-13 3.213167790990243e-15 ;
	setAttr ".rst" -type "double3" -0.40165793008012057 0.02805153947880501 8.1252832935337104e-05 ;
	setAttr ".rsrr" -type "double3" -8.6229124060912868e-30 -3.0751988076400384e-13 
		3.213167790990243e-15 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1EC83C92-9B42-263C-1778-AEBBBFFB6B08";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4B51290E-6748-CB6B-4158-99A7F29A11E9";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E560C4FA-134C-81C3-DD70-F9B584D17196";
createNode displayLayerManager -n "layerManager";
	rename -uid "4CBD1420-A040-D739-08AC-8DB2AF2CE742";
	setAttr ".cdl" 2;
	setAttr -s 5 ".dli[1:4]"  1 3 0 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "1BB265AB-D74F-62A2-F2D1-CE8CC96B31C3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E3A68385-6B4B-EE55-76A1-D28BF46E8362";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A5127CB3-7841-B7E8-326E-D7A0C0EAD7A0";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "11258B07-3240-EFEF-1457-F5A81D0A5927";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "ED66757F-2D4C-8066-05EF-4B9B9A40CAA5";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "7C1CE87F-754F-C069-81F8-85915DAB7392";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "07B91086-5049-F910-EC13-AA946F3163F5";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "lamp_modelRN";
	rename -uid "463CE544-9745-69FF-42CD-C6BB3472C7FB";
	setAttr -s 52 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"lamp_modelRN"
		"lamp_modelRN" 0
		"lamp_modelRN" 70
		0 "|lamp_model:Geometry" "|Lamp" "-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		2 "|Lamp|lamp_model:Geometry" "visibility" " 1"
		2 "|Lamp|lamp_model:Geometry" "translate" " -type \"double3\" 0 0 0"
		2 "|Lamp|lamp_model:Geometry" "rotate" " -type \"double3\" 0 0 0"
		2 "|Lamp|lamp_model:Geometry" "scale" " -type \"double3\" 0.98103063370663135 0.98103063370663157 0.98103063370663124"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo" "scale" " -type \"double3\" 0.99999999999999978 1 1.00000000000000022"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"intermediateObject" " 0"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"uvPivot" " -type \"double2\" 0.35421678423881531 0.19531245529651642"
		2 "lamp_model:geo_layer" "displayType" " 2"
		2 "lamp_model:geo_layer" "visibility" " 1"
		2 "lamp_model:geo_layer" "displayOrder" " 1"
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateX" 
		"lamp_modelRN.placeHolderList[1]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateY" 
		"lamp_modelRN.placeHolderList[2]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateZ" 
		"lamp_modelRN.placeHolderList[3]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateX" 
		"lamp_modelRN.placeHolderList[4]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateY" 
		"lamp_modelRN.placeHolderList[5]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[6]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[7]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[8]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[9]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[10]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[11]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[12]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[13]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[14]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[15]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[16]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[17]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[18]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[19]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[20]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[21]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[22]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[23]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[24]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[25]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[26]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[27]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[28]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[29]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[30]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[31]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[32]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[33]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[34]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[35]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[36]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[37]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[38]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleX" 
		"lamp_modelRN.placeHolderList[39]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleY" 
		"lamp_modelRN.placeHolderList[40]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[41]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateX" 
		"lamp_modelRN.placeHolderList[42]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateY" 
		"lamp_modelRN.placeHolderList[43]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateZ" 
		"lamp_modelRN.placeHolderList[44]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[45]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[46]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateX" 
		"lamp_modelRN.placeHolderList[47]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateY" 
		"lamp_modelRN.placeHolderList[48]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[49]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[50]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[51]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[52]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "586A6261-4C4C-BB56-0C04-F3A017AC7699";
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
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n"
		+ "            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1994\n            -height 1340\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1994\\n    -height 1340\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1994\\n    -height 1340\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F94E812D-E247-8ECE-13F9-A1BC2D0D86C1";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 62 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "91D668AC-8449-88BC-C681-E3904DE35DE3";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "04AF8BF7-3F4D-9B16-BFFC-BBA930B9DCA6";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode displayLayer -n "layer1";
	rename -uid "D30CBD98-244C-AC52-987A-04AE74979F4C";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".do" 2;
createNode animCurveTA -n "transform_ctrl_rotateX";
	rename -uid "57D415DB-D041-9216-72F5-82BB927D9A54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "transform_ctrl_rotateY";
	rename -uid "A663342D-E949-3EB3-9083-669E541CD71C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "transform_ctrl_rotateZ";
	rename -uid "7AEFD3E7-B84E-E389-7318-6188CEAE85B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "COG_ctrl_rotateX";
	rename -uid "6A1C468D-6D43-A97B-190B-3BA34DFBF6D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 30 0 32 0 37 0 39 0 42 0 44 0 49 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_ctrl_rotateY";
	rename -uid "2F761B21-B142-A4E9-C7B2-43B0911FCB53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 30 0 32 0 37 0 39 0 42 0 44 0 49 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_ctrl_rotateZ";
	rename -uid "583EDC0F-2547-43B3-F12B-E9982FE7D89F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 30 0 32 0 37 0 39 0 42 0 44 0 49 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "base_ctrl_rotateX";
	rename -uid "AB352247-9941-5AC9-ED21-D9AABD05B698";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 30 0 32 0 34 0 37 0 39 0 42 0 46 0 49 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "base_ctrl_rotateY";
	rename -uid "9EE718BA-1E44-F9B4-1B0E-87A5EEC2F558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 30 0 32 5.0137326701547291 34 -4.7456966371495151
		 37 4.9095586226794419 39 -7.5622531039949594 42 5.7208480162421296 46 11.157588210689195
		 49 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 0.6659520172887895 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0.7459945781766727 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 0.66595201728878961 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0.74599457817667281 0 0;
createNode animCurveTA -n "base_ctrl_rotateZ";
	rename -uid "DCE53FFC-CE48-D2E8-6268-95A51841063A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 30 0 32 0 34 0 37 0 39 0 42 0 46 0 49 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "lower_arm_ctrl_rotateX";
	rename -uid "2E7F4E39-D34E-1C35-100F-E2980760436C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "lower_arm_ctrl_rotateY";
	rename -uid "C7F31997-2043-75B9-1914-04B1B0673175";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "lower_arm_ctrl_rotateZ";
	rename -uid "6F9C603D-CC4E-B9BB-C211-F1AB7C312719";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Head_IK_Ctrl_rotateX";
	rename -uid "78523E64-BF44-FDEA-79F1-9E97B237E1E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 20 0 25 0 30 0 32 0 37 0 39 0 49 2.387332415248105
		 52 2.0646024528772875 62 0;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 1 0.99705446518711305 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 0 -0.076696762972371005 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 1 1 0.99705446518711305 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 0 0 -0.076696762972371005 0;
createNode animCurveTA -n "Head_IK_Ctrl_rotateY";
	rename -uid "7ED7908F-C142-818A-0D3E-45879CA75AAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 20 0 25 0 30 0 32 0 37 0 39 0 49 0.78067578548454275
		 52 0.6751406428860407 62 0;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 1 0.99968377522218821 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 0 -0.025146561544540112 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 1 1 0.99968377522218821 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 0 0 -0.025146561544540109 0;
createNode animCurveTA -n "Head_IK_Ctrl_rotateZ";
	rename -uid "6934BD35-584E-BA95-216C-D7B9ADE625D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -7.1456708128948438 20 -51.934845190531789
		 25 -51.934845190531789 30 -7.633943719204213 32 -7.633943719204213 37 -15.262779250423039
		 39 -22.723996852111735 49 -49.255643713190523 52 -43.852280713149874 62 -9.2853120260211401;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 0.74219092184446411 0.82957352048685606 
		1 0.61329002618844641 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 -0.67018850746015091 -0.55839750546276967 
		0 0.78985779971952841 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 0.742190921844464 0.82957352048685606 
		1 0.61329002618844641 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 -0.6701885074601508 -0.55839750546276967 
		0 0.78985779971952841 0;
createNode animCurveTA -n "Shoulder_IK_Ctrl_rotateX";
	rename -uid "6C60DA56-184B-7F17-6E0A-AD9FFFD62421";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Shoulder_IK_Ctrl_rotateY";
	rename -uid "7DBBC0B0-3744-CBCF-D2DE-96A1A38DEA9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Shoulder_IK_Ctrl_rotateZ";
	rename -uid "D7E3B0DC-DD4D-1448-367D-F5A4DCD58F89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "COG_ctrl_visibility";
	rename -uid "94DDB882-9A4E-5C62-23D6-E7AF1A3F79A9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 30 1 32 1 37 1 39 1 42 1 44 1 49 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 9 9 1;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_ctrl_translateX";
	rename -uid "2F75F8D6-3F4F-95E0-B91F-BD8DD3A34A1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 30 0 32 -1.0691177070311917 37 -1.8459371923208026
		 39 -1.3040890993273691 42 -0.38653588808284284 44 -0.25311391963938851 49 -6.938893903907213e-18;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 0.15606850156518165 1 0.27453524778172705 
		0.20382439356644649 0.60232989228230938 1;
	setAttr -s 8 ".kiy[1:7]"  0 -0.98774623401924388 0 0.96157703681266515 
		0.97900746503143188 0.79824726799606505 0;
	setAttr -s 8 ".kox[1:7]"  1 0.22018149859740396 1 0.27453524778172705 
		0.36854978101431124 0.60232989228230938 1;
	setAttr -s 8 ".koy[1:7]"  0 -0.97545892157250857 0 0.96157703681266526 
		0.92960801358115619 0.79824726799606505 0;
createNode animCurveTL -n "COG_ctrl_translateY";
	rename -uid "E349FBF1-6441-F320-D7B9-C4983E4DF2F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 30 0 32 4.9278174860459496e-18 37 -1.3064199861111853e-17
		 39 -8.366301227140769e-18 42 -1.0288508747520213e-17 44 -3.1531240368219239e-17 49 -3.0974074634691131e-17;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_ctrl_translateZ";
	rename -uid "BCEB04E1-B449-6B0C-8DF1-4A8F1C37F654";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 30 0 32 -0.36018705309393934 37 -1.3805613669714227
		 39 -2.1030475973070737 42 -2.9847881579562232 44 -3.2196830786169319 49 -3.1541060153506448;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 0.20670409554434419 0.16505412135270969 
		0.25138953776859319 0.18340754084322333 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 -0.9784035041255702 -0.98628451119567162 
		-0.96788599550799004 -0.98303696469758528 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0.28893685893920695 0.16505412135270969 
		0.25138953776859324 0.34959908982013832 1 1;
	setAttr -s 8 ".koy[1:7]"  0 -0.95734815586929756 -0.98628451119567173 
		-0.96788599550799015 -0.93689939502431674 0 0;
createNode animCurveTU -n "COG_ctrl_scaleX";
	rename -uid "7BD4592C-7B4D-05C6-959E-C98DE38360E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 30 1 32 1 37 1 39 1 42 1 44 1 49 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_ctrl_scaleY";
	rename -uid "6236FF8D-8C49-23A7-206C-C1B340AB0DCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 30 1 32 1 37 1 39 1 42 1 44 1 49 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_ctrl_scaleZ";
	rename -uid "74030FD7-8D40-BDF8-C9C0-329899BB5468";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 30 1 32 1 37 1 39 1 42 1 44 1 49 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 18 18 1;
	setAttr -s 8 ".kot[1:7]"  1 1 18 1 1 18 1;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "lower_arm_ctrl_visibility";
	rename -uid "71A0F77A-164C-98F3-935A-60A6A65A16E5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 37 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "lower_arm_ctrl_translateX";
	rename -uid "5490D1D9-284A-3829-EF73-91AF7CE684CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "lower_arm_ctrl_translateY";
	rename -uid "22B6BE30-F546-1813-DC46-518E30CC6FEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "lower_arm_ctrl_translateZ";
	rename -uid "5CFC6812-C24E-EE94-B86A-048DA22C10DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "lower_arm_ctrl_scaleX";
	rename -uid "4CDEB23F-A74A-580A-8808-38BB3729B546";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 37 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "lower_arm_ctrl_scaleY";
	rename -uid "DE69F861-1D4C-82CC-23AD-CC9897FFFC64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 37 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "lower_arm_ctrl_scaleZ";
	rename -uid "14B4C172-CD40-F15A-B04C-FC9F8C5E64BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 37 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Head_IK_Ctrl_visibility";
	rename -uid "BD5B51BD-714A-8393-EBEA-B88488959387";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 20 1 25 1 30 1 32 1 37 1 39 1 49 1 52 1
		 62 1;
	setAttr -s 10 ".kit[0:9]"  9 9 1 9 1 9 1 9 
		9 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_IK_Ctrl_translateX";
	rename -uid "DE7E1F4C-F846-D4A9-4B63-9289B89B6428";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.37610066712356416 20 -4.1872362604487465
		 25 -4.1872362604487465 30 3.3541999436750225 32 3.3541999436750292 37 -0.50668946998685194
		 39 -2.2033056704718543 49 -4.7354629507183015 52 -3.1423424767866246 62 -0.4618569819709793;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 0.052409451945178299 1 1 0.12574100602645807 
		1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 -0.99862568029607868 0 0 0.99206310253101049 
		0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 0.052409451945178299 1 1 0.1257410060264581 
		1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 -0.99862568029607868 0 0 0.9920631025310106 
		0;
createNode animCurveTL -n "Head_IK_Ctrl_translateY";
	rename -uid "7CAB790D-5048-86A8-C13B-BA8E93E63EC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.13737299720605253 20 4.8982213499737783
		 25 4.8982213499737783 30 1.3551953329953095 32 1.3551953329952959 37 1.8726761785931954
		 39 0.90052151925844282 49 5.3638828770624958 52 3.74262018982385 62 0.58705047071243743;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 0.15427813021229378 1 0.11267245476686535 
		1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 -0.98802745839283168 0 -0.99363218443084289 
		0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 0.15427813021229375 1 0.11267245476686534 
		1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 -0.98802745839283157 0 -0.99363218443084289 
		0;
createNode animCurveTL -n "Head_IK_Ctrl_translateZ";
	rename -uid "A57832E1-DD4F-5186-AA67-94B17934E48F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.024258956601174501 20 0.0098327675978020085
		 25 0.0098327675978020085 30 0 32 0 37 0 39 0 49 0 52 0 62 0;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_IK_Ctrl_scaleX";
	rename -uid "6D2A3559-364B-36D2-BF7B-1CAD7FEDEE5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.4766889900732181 20 1.4766889900732181
		 25 1.4766889900732181 30 1.4766889900732181 32 1.4766889900732181 37 1.4766889900732181
		 39 1.4766889900732181 49 1.4766889900732181 52 1.4766889900732181 62 1.4766889900732181;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_IK_Ctrl_scaleY";
	rename -uid "F7BD3062-F542-4602-A73F-3981F8F01603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.4766889900732179 20 1.4766889900732179
		 25 1.4766889900732179 30 1.4766889900732179 32 1.4766889900732179 37 1.4766889900732179
		 39 1.4766889900732179 49 1.4766889900732179 52 1.4766889900732179 62 1.4766889900732179;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_IK_Ctrl_scaleZ";
	rename -uid "B748B5CA-CF4F-62CA-2961-07A32B6DBBD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.4766889900732181 20 1.4766889900732181
		 25 1.4766889900732181 30 1.4766889900732181 32 1.4766889900732181 37 1.4766889900732181
		 39 1.4766889900732181 49 1.4766889900732181 52 1.4766889900732181 62 1.4766889900732181;
	setAttr -s 10 ".kit[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kot[2:9]"  1 18 1 18 1 18 18 1;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "base_ctrl_visibility";
	rename -uid "187ADFC9-AA4A-3889-EDE1-A495C3F49F21";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 30 1 32 1 34 1 37 1 39 1 42 1 46 1 49 1;
	setAttr -s 9 ".kit[0:8]"  9 1 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "base_ctrl_translateX";
	rename -uid "9CD01CC4-8F4C-41EE-6830-40BCBA1F7F8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 30 0 32 0 34 0 37 0 39 0 42 0 46 0 49 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "base_ctrl_translateY";
	rename -uid "11F2D1D1-2543-A121-5B03-F4B5EAFD6C28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 30 0 32 0 34 0 37 0 39 0 42 0 46 0 49 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "base_ctrl_translateZ";
	rename -uid "A9A183DE-8640-9F04-E976-E98A9ACA9F08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 30 0 32 0 34 0 37 0 39 0 42 0 46 0 49 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "base_ctrl_scaleX";
	rename -uid "5DF52AAF-4741-1473-06D2-EC9D98D3B39D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 30 1 32 1 34 1 37 1 39 1 42 1 46 1 49 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "base_ctrl_scaleY";
	rename -uid "CEF2C138-7744-41C8-4944-3784E0521723";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 30 1 32 1 34 1 37 1 39 1 42 1 46 1 49 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "base_ctrl_scaleZ";
	rename -uid "69EFF270-4041-0296-2C59-739D4087753E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 30 1 32 1 34 1 37 1 39 1 42 1 46 1 49 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 1 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "transform_ctrl_visibility";
	rename -uid "07550DEF-3146-6E53-D75C-AD83E9B435ED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "transform_ctrl_translateX";
	rename -uid "698CFFC3-1C4D-BB15-8F18-60BD24B68AFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "transform_ctrl_translateY";
	rename -uid "0243E353-0F45-581B-292E-3B95DF4B821D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "transform_ctrl_translateZ";
	rename -uid "E72E5C6A-DD40-D6C2-C618-9896401D43FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "transform_ctrl_scaleX";
	rename -uid "2154C7D3-8E4C-2B6E-256D-40800960BF7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "transform_ctrl_scaleY";
	rename -uid "A35E3F1E-CE44-B2E3-9698-EE8A89DD25AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "transform_ctrl_scaleZ";
	rename -uid "3DF8E9E9-F64F-1C85-B929-E8AF420C71F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Shoulder_IK_Ctrl_visibility";
	rename -uid "D693A3E4-D146-632D-6C5F-9EBF4FF09667";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 37 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "Shoulder_IK_Ctrl_translateX";
	rename -uid "67FB28BE-F146-7DB8-D11A-2BBFA87A1C6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Shoulder_IK_Ctrl_translateY";
	rename -uid "737F1014-A440-50A0-02F8-E8B32EEA1D7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Shoulder_IK_Ctrl_translateZ";
	rename -uid "455B23C7-E54A-8FAC-C149-54A629696BF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 37 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Shoulder_IK_Ctrl_scaleX";
	rename -uid "85D45880-7A4C-1E48-5688-2B9F65214574";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 37 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Shoulder_IK_Ctrl_scaleY";
	rename -uid "B3AEC108-E745-FF8C-14C2-DA912583AB42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 37 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Shoulder_IK_Ctrl_scaleZ";
	rename -uid "4D61926A-3546-8796-0877-7D92CB35E20C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 37 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Elbow_IK_Ctrl_scaleZ";
	rename -uid "ECED70EF-C342-55D4-D6E0-888B6473FB53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 37 1 45 1
		 49 1;
	setAttr -s 10 ".kit[6:9]"  1 3 18 3;
	setAttr -s 10 ".kot[4:9]"  1 3 3 3 18 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 1 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -n "Elbow_IK_Ctrl_scaleY";
	rename -uid "79C01FF9-C44E-2525-C0F1-F1A7978D13D6";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 37 1 45 1
		 49 1;
	setAttr -s 10 ".kit[6:9]"  1 3 18 3;
	setAttr -s 10 ".kot[4:9]"  1 3 3 3 18 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 1 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -n "Elbow_IK_Ctrl_scaleX";
	rename -uid "B310882F-1E43-F311-B1D7-A28F8C934B23";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 37 1 45 1
		 49 1;
	setAttr -s 10 ".kit[6:9]"  1 3 18 3;
	setAttr -s 10 ".kot[4:9]"  1 3 3 3 18 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 1 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTL -n "Elbow_IK_Ctrl_translateZ";
	rename -uid "FC93A326-9B4B-D0DE-36D1-CDBA5F5828E1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 3.1324193711559998 6 0 9 -3.5140535127195638
		 12 0 15 3.1324193711559998 18 0 37 0 45 0 49 0;
	setAttr -s 10 ".kit[2:9]"  1 9 1 3 1 3 18 3;
	setAttr -s 10 ".kot[2:9]"  1 9 1 3 3 3 18 3;
	setAttr -s 10 ".kix[2:9]"  0.025399175348630065 1 0.025475784366244602 
		1 1 1 1 1;
	setAttr -s 10 ".kiy[2:9]"  -0.9996773889068461 0 0.9996754395357148 
		0 0 0 0 0;
	setAttr -s 10 ".kox[2:9]"  0.025399172208023863 1 0.025475789864559048 
		1 1 1 1 1;
	setAttr -s 10 ".koy[2:9]"  -0.9996773889866406 0 0.99967543939559544 
		0 0 0 0 0;
createNode animCurveTL -n "Elbow_IK_Ctrl_translateY";
	rename -uid "25F0D1E8-9544-B44D-E0EB-C5A6DDA11AFA";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 3.3788294734054461e-15 6 0 9 3.7477828347384057e-15
		 12 0 15 3.3788294734054461e-15 18 0 37 3.3788294734054461e-15 45 2.06302067237961e-15
		 49 1.6024875920205682e-15;
	setAttr -s 10 ".kit[6:9]"  1 3 18 3;
	setAttr -s 10 ".kot[4:9]"  1 3 3 3 18 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 1 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTL -n "Elbow_IK_Ctrl_translateX";
	rename -uid "BDD4731E-D940-449B-D69C-689265217E7D";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -2.4249672365625474e-15 6 0 9 -1.0111947086957616e-15
		 12 0 15 -2.4249672365625474e-15 18 0 37 -2.4249672365625474e-15 45 0 49 -13.078297072916264;
	setAttr -s 10 ".kit[6:9]"  1 3 18 3;
	setAttr -s 10 ".kot[4:9]"  1 3 3 3 18 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 1 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTU -n "Elbow_IK_Ctrl_visibility";
	rename -uid "8960E1C4-1B43-9BCD-A668-699AF0AA8A97";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 37 1 45 1
		 49 1;
	setAttr -s 10 ".kit[6:9]"  1 3 9 3;
	setAttr -s 10 ".kot[4:9]"  1 3 3 3 5 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 0 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTA -n "Elbow_IK_Ctrl_rotateZ";
	rename -uid "EEB32D9A-3B44-0938-6C5F-D28ACD0E8334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 37 0 45 0
		 49 0;
	setAttr -s 10 ".kit[2:9]"  10 3 3 3 1 3 18 3;
	setAttr -s 10 ".kot[2:9]"  10 3 1 3 3 3 18 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 1 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTA -n "Elbow_IK_Ctrl_rotateY";
	rename -uid "A2740D02-044B-4F68-FB55-669E2CF97145";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 37 0 45 0
		 49 0;
	setAttr -s 10 ".kit[6:9]"  1 3 18 3;
	setAttr -s 10 ".kot[4:9]"  1 3 3 3 18 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 1 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
createNode animCurveTA -n "Elbow_IK_Ctrl_rotateX";
	rename -uid "92CBC6A0-6E4F-88B4-A41F-49A171F19CD4";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 37 0 45 0
		 49 0;
	setAttr -s 10 ".kit[6:9]"  1 3 18 3;
	setAttr -s 10 ".kot[4:9]"  1 3 3 3 18 3;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[4:9]"  1 1 1 1 1 1;
	setAttr -s 10 ".koy[4:9]"  0 0 0 0 0 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 62;
	setAttr -av ".unw" 62;
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
	setAttr -s 3 ".st";
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
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
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
select -ne :ikSystem;
connectAttr "base_geo_parentConstraint1.ctx" "lamp_modelRN.phl[1]";
connectAttr "base_geo_parentConstraint1.cty" "lamp_modelRN.phl[2]";
connectAttr "base_geo_parentConstraint1.ctz" "lamp_modelRN.phl[3]";
connectAttr "base_geo_parentConstraint1.crx" "lamp_modelRN.phl[4]";
connectAttr "base_geo_parentConstraint1.cry" "lamp_modelRN.phl[5]";
connectAttr "base_geo_parentConstraint1.crz" "lamp_modelRN.phl[6]";
connectAttr "lamp_modelRN.phl[7]" "base_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[8]" "base_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[9]" "base_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[10]" "base_geo_parentConstraint1.crt";
connectAttr "lower_arm_geo_parentConstraint1.ctx" "lamp_modelRN.phl[11]";
connectAttr "lower_arm_geo_parentConstraint1.cty" "lamp_modelRN.phl[12]";
connectAttr "lower_arm_geo_parentConstraint1.ctz" "lamp_modelRN.phl[13]";
connectAttr "lower_arm_geo_parentConstraint1.crx" "lamp_modelRN.phl[14]";
connectAttr "lower_arm_geo_parentConstraint1.cry" "lamp_modelRN.phl[15]";
connectAttr "lower_arm_geo_parentConstraint1.crz" "lamp_modelRN.phl[16]";
connectAttr "lamp_modelRN.phl[17]" "lower_arm_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[18]" "lower_arm_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[19]" "lower_arm_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[20]" "lower_arm_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[21]" "lower_arm_geo_parentConstraint1.crt";
connectAttr "lower_arm_geo_scaleConstraint1.csx" "lamp_modelRN.phl[22]";
connectAttr "lower_arm_geo_scaleConstraint1.csy" "lamp_modelRN.phl[23]";
connectAttr "lower_arm_geo_scaleConstraint1.csz" "lamp_modelRN.phl[24]";
connectAttr "upper_arm_geo_parentConstraint1.ctx" "lamp_modelRN.phl[25]";
connectAttr "upper_arm_geo_parentConstraint1.cty" "lamp_modelRN.phl[26]";
connectAttr "upper_arm_geo_parentConstraint1.ctz" "lamp_modelRN.phl[27]";
connectAttr "upper_arm_geo_parentConstraint1.crx" "lamp_modelRN.phl[28]";
connectAttr "upper_arm_geo_parentConstraint1.cry" "lamp_modelRN.phl[29]";
connectAttr "upper_arm_geo_parentConstraint1.crz" "lamp_modelRN.phl[30]";
connectAttr "lamp_modelRN.phl[31]" "upper_arm_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[32]" "upper_arm_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[33]" "upper_arm_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[34]" "upper_arm_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[35]" "upper_arm_geo_parentConstraint1.crt";
connectAttr "upper_arm_geo_scaleConstraint1.csx" "lamp_modelRN.phl[36]";
connectAttr "upper_arm_geo_scaleConstraint1.csy" "lamp_modelRN.phl[37]";
connectAttr "upper_arm_geo_scaleConstraint1.csz" "lamp_modelRN.phl[38]";
connectAttr "head_geo_scaleConstraint1.csx" "lamp_modelRN.phl[39]";
connectAttr "head_geo_scaleConstraint1.csy" "lamp_modelRN.phl[40]";
connectAttr "head_geo_scaleConstraint1.csz" "lamp_modelRN.phl[41]";
connectAttr "head_geo_parentConstraint1.ctx" "lamp_modelRN.phl[42]";
connectAttr "head_geo_parentConstraint1.cty" "lamp_modelRN.phl[43]";
connectAttr "head_geo_parentConstraint1.ctz" "lamp_modelRN.phl[44]";
connectAttr "lamp_modelRN.phl[45]" "head_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[46]" "head_geo_parentConstraint1.crt";
connectAttr "head_geo_parentConstraint1.crx" "lamp_modelRN.phl[47]";
connectAttr "head_geo_parentConstraint1.cry" "lamp_modelRN.phl[48]";
connectAttr "head_geo_parentConstraint1.crz" "lamp_modelRN.phl[49]";
connectAttr "lamp_modelRN.phl[50]" "head_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[51]" "head_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[52]" "head_geo_parentConstraint1.cpim";
connectAttr "layer1.di" "Skeleton1.do";
connectAttr "COG_Jnt_scaleConstraint1.csx" "COG_Jnt.sx";
connectAttr "COG_Jnt_scaleConstraint1.csy" "COG_Jnt.sy";
connectAttr "COG_Jnt_scaleConstraint1.csz" "COG_Jnt.sz";
connectAttr "COG_Jnt_parentConstraint1.ctx" "COG_Jnt.tx";
connectAttr "COG_Jnt_parentConstraint1.cty" "COG_Jnt.ty";
connectAttr "COG_Jnt_parentConstraint1.ctz" "COG_Jnt.tz";
connectAttr "COG_Jnt_parentConstraint1.crx" "COG_Jnt.rx";
connectAttr "COG_Jnt_parentConstraint1.cry" "COG_Jnt.ry";
connectAttr "COG_Jnt_parentConstraint1.crz" "COG_Jnt.rz";
connectAttr "ROOT_Ctrl.s" "COG_Jnt.is";
connectAttr "Shoulder_IK_Jnt_pointConstraint1.ctx" "Shoulder_IK_Jnt.tx";
connectAttr "Shoulder_IK_Jnt_pointConstraint1.cty" "Shoulder_IK_Jnt.ty";
connectAttr "Shoulder_IK_Jnt_pointConstraint1.ctz" "Shoulder_IK_Jnt.tz";
connectAttr "Shoulder_IK_Jnt.s" "Elbow_IK_Jnt.is";
connectAttr "Elbow_IK_Jnt_orientConstraint1.crx" "Elbow_IK_Jnt.rx";
connectAttr "Elbow_IK_Jnt_orientConstraint1.cry" "Elbow_IK_Jnt.ry";
connectAttr "Elbow_IK_Jnt_orientConstraint1.crz" "Elbow_IK_Jnt.rz";
connectAttr "Elbow_IK_Jnt.s" "Head_IK_Jnt.is";
connectAttr "Head_IK_Jnt_orientConstraint1.crx" "Head_IK_Jnt.rx";
connectAttr "Head_IK_Jnt_orientConstraint1.cry" "Head_IK_Jnt.ry";
connectAttr "Head_IK_Jnt_orientConstraint1.crz" "Head_IK_Jnt.rz";
connectAttr "Head_IK_Jnt.ro" "Head_IK_Jnt_orientConstraint1.cro";
connectAttr "Head_IK_Jnt.pim" "Head_IK_Jnt_orientConstraint1.cpim";
connectAttr "Head_IK_Jnt.jo" "Head_IK_Jnt_orientConstraint1.cjo";
connectAttr "Head_IK_Jnt.is" "Head_IK_Jnt_orientConstraint1.is";
connectAttr "Head_IK_Ctrl.r" "Head_IK_Jnt_orientConstraint1.tg[0].tr";
connectAttr "Head_IK_Ctrl.ro" "Head_IK_Jnt_orientConstraint1.tg[0].tro";
connectAttr "Head_IK_Ctrl.pm" "Head_IK_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "Head_IK_Jnt_orientConstraint1.w0" "Head_IK_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "Head_IK_Jnt.tx" "effector1.tx";
connectAttr "Head_IK_Jnt.ty" "effector1.ty";
connectAttr "Head_IK_Jnt.tz" "effector1.tz";
connectAttr "Head_IK_Jnt.opm" "effector1.opm";
connectAttr "Elbow_IK_Jnt.ro" "Elbow_IK_Jnt_orientConstraint1.cro";
connectAttr "Elbow_IK_Jnt.pim" "Elbow_IK_Jnt_orientConstraint1.cpim";
connectAttr "Elbow_IK_Jnt.jo" "Elbow_IK_Jnt_orientConstraint1.cjo";
connectAttr "Elbow_IK_Jnt.is" "Elbow_IK_Jnt_orientConstraint1.is";
connectAttr "Head_IK_Ctrl.r" "Elbow_IK_Jnt_orientConstraint1.tg[0].tr";
connectAttr "Head_IK_Ctrl.ro" "Elbow_IK_Jnt_orientConstraint1.tg[0].tro";
connectAttr "Head_IK_Ctrl.pm" "Elbow_IK_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "Elbow_IK_Jnt_orientConstraint1.w0" "Elbow_IK_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "Shoulder_IK_Jnt.pim" "Shoulder_IK_Jnt_pointConstraint1.cpim";
connectAttr "Shoulder_IK_Jnt.rp" "Shoulder_IK_Jnt_pointConstraint1.crp";
connectAttr "Shoulder_IK_Jnt.rpt" "Shoulder_IK_Jnt_pointConstraint1.crt";
connectAttr "Shoulder_IK_Ctrl.t" "Shoulder_IK_Jnt_pointConstraint1.tg[0].tt";
connectAttr "Shoulder_IK_Ctrl.rp" "Shoulder_IK_Jnt_pointConstraint1.tg[0].trp";
connectAttr "Shoulder_IK_Ctrl.rpt" "Shoulder_IK_Jnt_pointConstraint1.tg[0].trt";
connectAttr "Shoulder_IK_Ctrl.pm" "Shoulder_IK_Jnt_pointConstraint1.tg[0].tpm";
connectAttr "Shoulder_IK_Jnt_pointConstraint1.w0" "Shoulder_IK_Jnt_pointConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt.s" "base_01_jnt.is";
connectAttr "base_01_jnt_scaleConstraint1.csx" "base_01_jnt.sx";
connectAttr "base_01_jnt_scaleConstraint1.csy" "base_01_jnt.sy";
connectAttr "base_01_jnt_scaleConstraint1.csz" "base_01_jnt.sz";
connectAttr "base_01_jnt_parentConstraint1.ctx" "base_01_jnt.tx";
connectAttr "base_01_jnt_parentConstraint1.cty" "base_01_jnt.ty";
connectAttr "base_01_jnt_parentConstraint1.ctz" "base_01_jnt.tz";
connectAttr "base_01_jnt_parentConstraint1.crx" "base_01_jnt.rx";
connectAttr "base_01_jnt_parentConstraint1.cry" "base_01_jnt.ry";
connectAttr "base_01_jnt_parentConstraint1.crz" "base_01_jnt.rz";
connectAttr "base_01_jnt.s" "base_02_jnt.is";
connectAttr "base_01_jnt.ro" "base_01_jnt_parentConstraint1.cro";
connectAttr "base_01_jnt.pim" "base_01_jnt_parentConstraint1.cpim";
connectAttr "base_01_jnt.rp" "base_01_jnt_parentConstraint1.crp";
connectAttr "base_01_jnt.rpt" "base_01_jnt_parentConstraint1.crt";
connectAttr "base_01_jnt.jo" "base_01_jnt_parentConstraint1.cjo";
connectAttr "base_ctrl.t" "base_01_jnt_parentConstraint1.tg[0].tt";
connectAttr "base_ctrl.rp" "base_01_jnt_parentConstraint1.tg[0].trp";
connectAttr "base_ctrl.rpt" "base_01_jnt_parentConstraint1.tg[0].trt";
connectAttr "base_ctrl.r" "base_01_jnt_parentConstraint1.tg[0].tr";
connectAttr "base_ctrl.ro" "base_01_jnt_parentConstraint1.tg[0].tro";
connectAttr "base_ctrl.s" "base_01_jnt_parentConstraint1.tg[0].ts";
connectAttr "base_ctrl.pm" "base_01_jnt_parentConstraint1.tg[0].tpm";
connectAttr "base_01_jnt_parentConstraint1.w0" "base_01_jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "base_01_jnt.ssc" "base_01_jnt_scaleConstraint1.tsc";
connectAttr "base_01_jnt.pim" "base_01_jnt_scaleConstraint1.cpim";
connectAttr "base_ctrl.s" "base_01_jnt_scaleConstraint1.tg[0].ts";
connectAttr "base_ctrl.pm" "base_01_jnt_scaleConstraint1.tg[0].tpm";
connectAttr "base_01_jnt_scaleConstraint1.w0" "base_01_jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt.ro" "COG_Jnt_parentConstraint1.cro";
connectAttr "COG_Jnt.pim" "COG_Jnt_parentConstraint1.cpim";
connectAttr "COG_Jnt.rp" "COG_Jnt_parentConstraint1.crp";
connectAttr "COG_Jnt.rpt" "COG_Jnt_parentConstraint1.crt";
connectAttr "COG_Jnt.jo" "COG_Jnt_parentConstraint1.cjo";
connectAttr "COG_ctrl.t" "COG_Jnt_parentConstraint1.tg[0].tt";
connectAttr "COG_ctrl.rp" "COG_Jnt_parentConstraint1.tg[0].trp";
connectAttr "COG_ctrl.rpt" "COG_Jnt_parentConstraint1.tg[0].trt";
connectAttr "COG_ctrl.r" "COG_Jnt_parentConstraint1.tg[0].tr";
connectAttr "COG_ctrl.ro" "COG_Jnt_parentConstraint1.tg[0].tro";
connectAttr "COG_ctrl.s" "COG_Jnt_parentConstraint1.tg[0].ts";
connectAttr "COG_ctrl.pm" "COG_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "COG_Jnt_parentConstraint1.w0" "COG_Jnt_parentConstraint1.tg[0].tw";
connectAttr "COG_Jnt.ssc" "COG_Jnt_scaleConstraint1.tsc";
connectAttr "COG_Jnt.pim" "COG_Jnt_scaleConstraint1.cpim";
connectAttr "COG_ctrl.s" "COG_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "COG_ctrl.pm" "COG_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "COG_Jnt_scaleConstraint1.w0" "COG_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "transform_ctrl_visibility.o" "transform_ctrl.v";
connectAttr "transform_ctrl_translateX.o" "transform_ctrl.tx";
connectAttr "transform_ctrl_translateY.o" "transform_ctrl.ty";
connectAttr "transform_ctrl_translateZ.o" "transform_ctrl.tz";
connectAttr "transform_ctrl_rotateX.o" "transform_ctrl.rx";
connectAttr "transform_ctrl_rotateY.o" "transform_ctrl.ry";
connectAttr "transform_ctrl_rotateZ.o" "transform_ctrl.rz";
connectAttr "transform_ctrl_scaleX.o" "transform_ctrl.sx";
connectAttr "transform_ctrl_scaleY.o" "transform_ctrl.sy";
connectAttr "transform_ctrl_scaleZ.o" "transform_ctrl.sz";
connectAttr "COG_ctrl_translateX.o" "COG_ctrl.tx";
connectAttr "COG_ctrl_translateY.o" "COG_ctrl.ty";
connectAttr "COG_ctrl_translateZ.o" "COG_ctrl.tz";
connectAttr "COG_ctrl_rotateX.o" "COG_ctrl.rx";
connectAttr "COG_ctrl_rotateY.o" "COG_ctrl.ry";
connectAttr "COG_ctrl_rotateZ.o" "COG_ctrl.rz";
connectAttr "COG_ctrl_scaleX.o" "COG_ctrl.sx";
connectAttr "COG_ctrl_scaleY.o" "COG_ctrl.sy";
connectAttr "COG_ctrl_scaleZ.o" "COG_ctrl.sz";
connectAttr "COG_ctrl_visibility.o" "COG_ctrl.v";
connectAttr "base_ctrl_translateX.o" "base_ctrl.tx";
connectAttr "base_ctrl_translateY.o" "base_ctrl.ty";
connectAttr "base_ctrl_translateZ.o" "base_ctrl.tz";
connectAttr "base_ctrl_rotateX.o" "base_ctrl.rx";
connectAttr "base_ctrl_rotateY.o" "base_ctrl.ry";
connectAttr "base_ctrl_rotateZ.o" "base_ctrl.rz";
connectAttr "base_ctrl_scaleX.o" "base_ctrl.sx";
connectAttr "base_ctrl_scaleY.o" "base_ctrl.sy";
connectAttr "base_ctrl_scaleZ.o" "base_ctrl.sz";
connectAttr "base_ctrl_visibility.o" "base_ctrl.v";
connectAttr "lower_arm_ctrl_visibility.o" "lower_arm_ctrl.v";
connectAttr "lower_arm_ctrl_translateX.o" "lower_arm_ctrl.tx";
connectAttr "lower_arm_ctrl_translateY.o" "lower_arm_ctrl.ty";
connectAttr "lower_arm_ctrl_translateZ.o" "lower_arm_ctrl.tz";
connectAttr "lower_arm_ctrl_rotateX.o" "lower_arm_ctrl.rx";
connectAttr "lower_arm_ctrl_rotateY.o" "lower_arm_ctrl.ry";
connectAttr "lower_arm_ctrl_rotateZ.o" "lower_arm_ctrl.rz";
connectAttr "lower_arm_ctrl_scaleX.o" "lower_arm_ctrl.sx";
connectAttr "lower_arm_ctrl_scaleY.o" "lower_arm_ctrl.sy";
connectAttr "lower_arm_ctrl_scaleZ.o" "lower_arm_ctrl.sz";
connectAttr "Shoulder_IK_Ctrl_translateX.o" "Shoulder_IK_Ctrl.tx";
connectAttr "Shoulder_IK_Ctrl_translateY.o" "Shoulder_IK_Ctrl.ty";
connectAttr "Shoulder_IK_Ctrl_translateZ.o" "Shoulder_IK_Ctrl.tz";
connectAttr "Shoulder_IK_Ctrl_visibility.o" "Shoulder_IK_Ctrl.v";
connectAttr "Shoulder_IK_Ctrl_rotateX.o" "Shoulder_IK_Ctrl.rx";
connectAttr "Shoulder_IK_Ctrl_rotateY.o" "Shoulder_IK_Ctrl.ry";
connectAttr "Shoulder_IK_Ctrl_rotateZ.o" "Shoulder_IK_Ctrl.rz";
connectAttr "Shoulder_IK_Ctrl_scaleX.o" "Shoulder_IK_Ctrl.sx";
connectAttr "Shoulder_IK_Ctrl_scaleY.o" "Shoulder_IK_Ctrl.sy";
connectAttr "Shoulder_IK_Ctrl_scaleZ.o" "Shoulder_IK_Ctrl.sz";
connectAttr "makeNurbCircle1.oc" "Shoulder_IK_CtrlShape.cr";
connectAttr "Head_IK_Ctrl_rotateX.o" "Head_IK_Ctrl.rx";
connectAttr "Head_IK_Ctrl_rotateY.o" "Head_IK_Ctrl.ry";
connectAttr "Head_IK_Ctrl_rotateZ.o" "Head_IK_Ctrl.rz";
connectAttr "Head_IK_Ctrl_visibility.o" "Head_IK_Ctrl.v";
connectAttr "Head_IK_Ctrl_translateX.o" "Head_IK_Ctrl.tx";
connectAttr "Head_IK_Ctrl_translateY.o" "Head_IK_Ctrl.ty";
connectAttr "Head_IK_Ctrl_translateZ.o" "Head_IK_Ctrl.tz";
connectAttr "Head_IK_Ctrl_scaleX.o" "Head_IK_Ctrl.sx";
connectAttr "Head_IK_Ctrl_scaleY.o" "Head_IK_Ctrl.sy";
connectAttr "Head_IK_Ctrl_scaleZ.o" "Head_IK_Ctrl.sz";
connectAttr "Shoulder_IK_Jnt.msg" "Arm_IK_Handle.hsj";
connectAttr "effector1.hp" "Arm_IK_Handle.hee";
connectAttr "ikRPsolver.msg" "Arm_IK_Handle.hsv";
connectAttr "Arm_IK_Handle_poleVectorConstraint1.ctx" "Arm_IK_Handle.pvx";
connectAttr "Arm_IK_Handle_poleVectorConstraint1.cty" "Arm_IK_Handle.pvy";
connectAttr "Arm_IK_Handle_poleVectorConstraint1.ctz" "Arm_IK_Handle.pvz";
connectAttr "Arm_IK_Handle.pim" "Arm_IK_Handle_poleVectorConstraint1.cpim";
connectAttr "Shoulder_IK_Jnt.pm" "Arm_IK_Handle_poleVectorConstraint1.ps";
connectAttr "Shoulder_IK_Jnt.t" "Arm_IK_Handle_poleVectorConstraint1.crp";
connectAttr "Elbow_IK_Ctrl.t" "Arm_IK_Handle_poleVectorConstraint1.tg[0].tt";
connectAttr "Elbow_IK_Ctrl.rp" "Arm_IK_Handle_poleVectorConstraint1.tg[0].trp";
connectAttr "Elbow_IK_Ctrl.rpt" "Arm_IK_Handle_poleVectorConstraint1.tg[0].trt";
connectAttr "Elbow_IK_Ctrl.pm" "Arm_IK_Handle_poleVectorConstraint1.tg[0].tpm";
connectAttr "Arm_IK_Handle_poleVectorConstraint1.w0" "Arm_IK_Handle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Elbow_IK_Ctrl_translateX.o" "Elbow_IK_Ctrl.tx";
connectAttr "Elbow_IK_Ctrl_translateY.o" "Elbow_IK_Ctrl.ty";
connectAttr "Elbow_IK_Ctrl_translateZ.o" "Elbow_IK_Ctrl.tz";
connectAttr "Elbow_IK_Ctrl_visibility.o" "Elbow_IK_Ctrl.v";
connectAttr "Elbow_IK_Ctrl_rotateX.o" "Elbow_IK_Ctrl.rx";
connectAttr "Elbow_IK_Ctrl_rotateY.o" "Elbow_IK_Ctrl.ry";
connectAttr "Elbow_IK_Ctrl_rotateZ.o" "Elbow_IK_Ctrl.rz";
connectAttr "Elbow_IK_Ctrl_scaleX.o" "Elbow_IK_Ctrl.sx";
connectAttr "Elbow_IK_Ctrl_scaleY.o" "Elbow_IK_Ctrl.sy";
connectAttr "Elbow_IK_Ctrl_scaleZ.o" "Elbow_IK_Ctrl.sz";
connectAttr "Head_IK_Jnt.s" "head_geo_scaleConstraint1.tg[0].ts";
connectAttr "Head_IK_Jnt.pm" "head_geo_scaleConstraint1.tg[0].tpm";
connectAttr "head_geo_scaleConstraint1.w0" "head_geo_scaleConstraint1.tg[0].tw";
connectAttr "Head_IK_Jnt.t" "head_geo_parentConstraint1.tg[0].tt";
connectAttr "Head_IK_Jnt.rp" "head_geo_parentConstraint1.tg[0].trp";
connectAttr "Head_IK_Jnt.rpt" "head_geo_parentConstraint1.tg[0].trt";
connectAttr "Head_IK_Jnt.r" "head_geo_parentConstraint1.tg[0].tr";
connectAttr "Head_IK_Jnt.ro" "head_geo_parentConstraint1.tg[0].tro";
connectAttr "Head_IK_Jnt.s" "head_geo_parentConstraint1.tg[0].ts";
connectAttr "Head_IK_Jnt.pm" "head_geo_parentConstraint1.tg[0].tpm";
connectAttr "Head_IK_Jnt.jo" "head_geo_parentConstraint1.tg[0].tjo";
connectAttr "Head_IK_Jnt.ssc" "head_geo_parentConstraint1.tg[0].tsc";
connectAttr "Head_IK_Jnt.is" "head_geo_parentConstraint1.tg[0].tis";
connectAttr "head_geo_parentConstraint1.w0" "head_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Elbow_IK_Jnt.s" "upper_arm_geo_scaleConstraint1.tg[0].ts";
connectAttr "Elbow_IK_Jnt.pm" "upper_arm_geo_scaleConstraint1.tg[0].tpm";
connectAttr "upper_arm_geo_scaleConstraint1.w0" "upper_arm_geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "Elbow_IK_Jnt.t" "upper_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "Elbow_IK_Jnt.rp" "upper_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "Elbow_IK_Jnt.rpt" "upper_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "Elbow_IK_Jnt.r" "upper_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "Elbow_IK_Jnt.ro" "upper_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "Elbow_IK_Jnt.s" "upper_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "Elbow_IK_Jnt.pm" "upper_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "Elbow_IK_Jnt.jo" "upper_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "Elbow_IK_Jnt.ssc" "upper_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "Elbow_IK_Jnt.is" "upper_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "upper_arm_geo_parentConstraint1.w0" "upper_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Shoulder_IK_Jnt.s" "lower_arm_geo_scaleConstraint1.tg[0].ts";
connectAttr "Shoulder_IK_Jnt.pm" "lower_arm_geo_scaleConstraint1.tg[0].tpm";
connectAttr "lower_arm_geo_scaleConstraint1.w0" "lower_arm_geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "Shoulder_IK_Jnt.t" "lower_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "Shoulder_IK_Jnt.rp" "lower_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "Shoulder_IK_Jnt.rpt" "lower_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "Shoulder_IK_Jnt.r" "lower_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "Shoulder_IK_Jnt.ro" "lower_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "Shoulder_IK_Jnt.s" "lower_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "Shoulder_IK_Jnt.pm" "lower_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "Shoulder_IK_Jnt.jo" "lower_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "Shoulder_IK_Jnt.ssc" "lower_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "Shoulder_IK_Jnt.is" "lower_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "lower_arm_geo_parentConstraint1.w0" "lower_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "base_01_jnt.t" "base_geo_parentConstraint1.tg[0].tt";
connectAttr "base_01_jnt.rp" "base_geo_parentConstraint1.tg[0].trp";
connectAttr "base_01_jnt.rpt" "base_geo_parentConstraint1.tg[0].trt";
connectAttr "base_01_jnt.r" "base_geo_parentConstraint1.tg[0].tr";
connectAttr "base_01_jnt.ro" "base_geo_parentConstraint1.tg[0].tro";
connectAttr "base_01_jnt.s" "base_geo_parentConstraint1.tg[0].ts";
connectAttr "base_01_jnt.pm" "base_geo_parentConstraint1.tg[0].tpm";
connectAttr "base_01_jnt.jo" "base_geo_parentConstraint1.tg[0].tjo";
connectAttr "base_01_jnt.ssc" "base_geo_parentConstraint1.tg[0].tsc";
connectAttr "base_01_jnt.is" "base_geo_parentConstraint1.tg[0].tis";
connectAttr "base_geo_parentConstraint1.w0" "base_geo_parentConstraint1.tg[0].tw"
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
connectAttr "lamp_modelRNfosterParent1.msg" "lamp_modelRN.fp";
connectAttr "layerManager.dli[2]" "layer1.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of lamp_rig.ma
