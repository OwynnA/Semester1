//Maya ASCII 2023 scene
//Name: Lamp_Rig_the_Second.ma
//Last modified: Tue, Mar 26, 2024 01:32:49 AM
//Codeset: UTF-8
requires "fbxmaya" "2020.3.1";
file -rdi 1 -ns "lamp_model" -rfn "lamp_modelRN" -typ "Fbx" "/Users/owynnarmstrong/Downloads/lamp_model.fbx";
file -r -ns "lamp_model" -dr 1 -rfn "lamp_modelRN" -typ "Fbx" "/Users/owynnarmstrong/Downloads/lamp_model.fbx";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "56736CF1-2B48-4A78-3FEE-B09182E0ACB0";
createNode transform -s -n "persp";
	rename -uid "0FEC6C04-C948-1B9A-F316-B2A19F95CEC1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 66.112359340494862 41.569833080297968 6.3328114268720803 ;
	setAttr ".r" -type "double3" -29.138352730018795 434.59999999964117 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "730EA79C-3849-40CA-B21B-1D98CE66F9C4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 69.474236989914203;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FA348246-544F-AABB-FC7B-8AB22AB490E7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5AC56ECB-8C44-7E83-D4FF-7D808FCA6666";
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
	rename -uid "CC8B268E-2B47-E032-5C57-96BFEDC70290";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "260DCFE6-8F48-D86E-355C-FA9696AB19C6";
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
	rename -uid "D13AA933-E740-D23D-94CA-63A01B229726";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CEA79F9C-584C-A375-9B21-01A6A91D69AE";
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
	rename -uid "A5F7BCB6-2041-51B0-1243-22B8BF0BE2AA";
createNode transform -n "Skeleton" -p "Lamp";
	rename -uid "B121F8B3-E84B-2E0C-62AF-FC98FC306B87";
createNode joint -n "ROOT" -p "Skeleton";
	rename -uid "6ECF85D0-9E48-E9D3-8804-178DD0E0C5E8";
	setAttr ".t" -type "double3" 0 2.7883903980255127 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "Arm_01_IK_Jnt" -p "ROOT";
	rename -uid "F0354157-F74F-4471-EDD2-E4B43B6FC60A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".r" -type "double3" -0.16218404773364956 0.16300295892766101 0.052057017475875669 ;
	setAttr -av ".rx";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 90 49 90 ;
	setAttr ".radi" 0.75;
createNode joint -n "Arm_02_IK_Jnt" -p "Arm_01_IK_Jnt";
	rename -uid "7DE1528D-2544-8FA3-0263-B5B39B678819";
	setAttr ".t" -type "double3" 15.257716764806775 1.3322676295501878e-15 0 ;
	setAttr ".r" -type "double3" -1.9786269134639292e-18 1.7241691465582661e-18 0.01192511990331894 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0 0 99.176580399333801 ;
	setAttr ".radi" 0.75;
createNode joint -n "Arm_03_IK_Jnt" -p "Arm_02_IK_Jnt";
	rename -uid "28540BF6-E94A-C4EB-DC0F-FEA8C1EE1C68";
	setAttr ".t" -type "double3" 16.519092502374566 7.1054273576010019e-15 2.7408630920433552e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.75;
createNode orientConstraint -n "Arm_03_IK_Jnt_orientConstraint1" -p "Arm_03_IK_Jnt";
	rename -uid "6CDC6D9E-F24B-A5E4-2577-C39AB8F4A961";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_Handle_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -85.90788579483737 -90.229942512367629 -54.332907443990877 ;
	setAttr ".o" -type "double3" 90.000000000083247 -50.240825945272228 90.228408059607716 ;
	setAttr ".rsrr" -type "double3" -1.4124500153760511e-30 -6.3611093629270335e-15 
		2.5444437451708134e-14 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Arm_02_IK_Jnt";
	rename -uid "6DE748D7-6947-7B47-1083-33AD7C0E9B6F";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Arm_01_IK_Jnt_parentConstraint1" -p "Arm_01_IK_Jnt";
	rename -uid "6EBE5B2B-A640-2B4C-E1C4-F98FE6AB1BF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_Handle_Base_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.0162176293902256e-17 2.2204460492503131e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 90.000000000081059 48.94767957396418 90.228408059732871 ;
	setAttr ".lr" -type "double3" -0.17224523567460609 0.15000629419312353 0.052094947789901702 ;
	setAttr ".rsrr" -type "double3" -0.17224523567460609 0.15000629419312353 0.052094947789901702 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_01_IK_Jnt_scaleConstraint1" -p "Arm_01_IK_Jnt";
	rename -uid "E4B54643-9140-A5D1-642F-EF97A1634EF8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_Handle_Base_CtrlW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0.5435 0.5432 0.5432 ;
	setAttr -k on ".w0";
createNode joint -n "COG_Jnt" -p "ROOT";
	rename -uid "ABE5DD95-1140-1448-44C2-A4AF3D95EEAF";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "Base_01_FK_Jnt" -p "COG_Jnt";
	rename -uid "C35E4B24-1848-FEE2-7BE5-88B4F1570D84";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -89.999999999999986 1.2722218725854067e-14 -90 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Base_01_FK_Jnt_parentConstraint1" -p "Base_01_FK_Jnt";
	rename -uid "2A2C2265-B047-DE35-E9F1-D3AFA2D83AB9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.063479503632972722 0.3608626898305945 0 ;
	setAttr ".tg[0].tor" -type "double3" -89.999999999999986 -6.3611093629270351e-15 
		-180 ;
	setAttr ".lr" -type "double3" 2.1186750230640744e-30 2.5444437451708122e-14 9.5416640443905456e-15 ;
	setAttr ".rsrr" -type "double3" 2.1186750230640744e-30 2.5444437451708122e-14 9.5416640443905456e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Base_01_FK_Jnt_scaleConstraint1" -p "Base_01_FK_Jnt";
	rename -uid "6294534F-0641-A137-F499-F28743AF887C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode joint -n "Arm_01_FK_Jnt" -p "COG_Jnt";
	rename -uid "ED09BD52-7849-88BF-2280-B8BFAB1FF486";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 49 90 ;
	setAttr ".radi" 0.5;
createNode joint -n "Arm_02_FK_Jnt" -p "Arm_01_FK_Jnt";
	rename -uid "10CAB1DF-794C-5EDF-255D-0692969E71B2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 99.176672734842271 ;
	setAttr ".radi" 0.5;
createNode joint -n "Arm_03_FK_Jnt" -p "Arm_02_FK_Jnt";
	rename -uid "CC80A1A5-5346-C6C7-5138-A78EA192D7BC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 180 90 140.22666354875997 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "Arm_03_FK_Jnt_parentConstraint1" -p "Arm_03_FK_Jnt";
	rename -uid "E0B9FF6B-B144-BBB5-FF97-B9B304965BA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.013294388497252285 -0.036973458522952078 
		0.0038790970475565123 ;
	setAttr ".tg[0].tor" -type "double3" -0.049990813917718389 1.0996173126882785e-14 
		-90 ;
	setAttr ".lr" -type "double3" 3.1805546814635152e-15 -2.5444437451708134e-14 9.5416640443905487e-15 ;
	setAttr ".rst" -type "double3" 16.513247798233113 0 0 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635152e-15 -2.5444437451708134e-14 9.5416640443905487e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_03_FK_Jnt_scaleConstraint1" -p "Arm_03_FK_Jnt";
	rename -uid "754BFFEA-7E42-7440-0618-5DB9AC14F3D6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.4503 0.4503 0.4503 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_02_FK_Jnt_parentConstraint1" -p "Arm_02_FK_Jnt";
	rename -uid "BEBB17AE-D54C-5E06-6443-BB81B07363E6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.041792688620079232 0.35664088298981877 0.018852060676184834 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000028 -50.176672734842271 1.5257045950707494e-14 ;
	setAttr ".lr" -type "double3" -2.6700688861505763e-15 8.2474952385056759e-15 1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" 15.216668369812464 -2.2204460492503131e-15 0 ;
	setAttr ".rsrr" -type "double3" -2.6700688861505763e-15 8.2474952385056759e-15 1.2722218725854064e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_02_FK_Jnt_scaleConstraint1" -p "Arm_02_FK_Jnt";
	rename -uid "98E162F5-DB47-B1D7-29D8-A1AF098D9BD0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_CtrlW0" -dv 1 -min 0 -at "double";
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
createNode parentConstraint -n "Arm_01_FK_Jnt_parentConstraint1" -p "Arm_01_FK_Jnt";
	rename -uid "10779A1D-BB4A-A190-ED95-84A3B2DD489D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_CtrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.063479503632972722 -0.35051779375027342 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 90 49 1.2722218725854062e-14 ;
	setAttr ".lr" -type "double3" 6.361109362927032e-15 -9.5416640443905487e-15 -5.2966875576601877e-31 ;
	setAttr ".rsrr" -type "double3" 6.361109362927032e-15 -9.5416640443905487e-15 -5.2966875576601877e-31 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "Arm_01_FK_Jnt_scaleConstraint1" -p "Arm_01_FK_Jnt";
	rename -uid "641B9D54-D142-1DAB-5575-889E1BA63A30";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_CtrlW0" -dv 1 -min 0 -at "double";
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
	rename -uid "D3EFB97B-5F47-BEAE-5F82-1FBA185FE338";
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
	setAttr ".tg[0].tot" -type "double3" 0 0.28471109288524066 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "COG_Jnt_scaleConstraint1" -p "COG_Jnt";
	rename -uid "EF578650-924A-C1F4-9455-0EBF008DE054";
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
	setAttr ".o" -type "double3" 0.10210589345266985 0.10210589345266985 0.10210589345266985 ;
	setAttr -k on ".w0";
createNode joint -n "Arm_01_RK_Jnt" -p "ROOT";
	rename -uid "5124365A-584B-EF8F-A2C8-A2A31FBA6234";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 49 90 ;
createNode joint -n "Arm_02_Rk_Jnt" -p "Arm_01_RK_Jnt";
	rename -uid "5C405750-F34A-6400-7495-8FB151F05AD9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -7.0622500768802555e-31 99.176672734842242 ;
createNode joint -n "Arm_03_RK_Jnt" -p "Arm_02_Rk_Jnt";
	rename -uid "300B5EED-614D-EED2-2489-5AB8B40DD917";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".jo" -type "double3" 180 90 140.22666354875915 ;
createNode parentConstraint -n "Arm_03_RK_Jnt_parentConstraint1" -p "Arm_03_RK_Jnt";
	rename -uid "8B92C318-4C4B-CA6B-328F-B9836F6086DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_03_IK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_03_FK_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.016491881296124333 -0.017853381791478995 
		0.082174219410673655 ;
	setAttr ".tg[0].tor" -type "double3" 91.934798072201531 -89.770776098474556 127.78471140673805 ;
	setAttr ".tg[1].tot" -type "double3" 8.7011041743617309e-05 0.033058010071467692 
		-0.032692097723598268 ;
	setAttr ".tg[1].tor" -type "double3" -0.020505299864339487 -0.0079590157993082427 
		-0.00063495075876026459 ;
	setAttr ".lr" -type "double3" -0.015556139196012718 2.4776095349542919e-05 2.8870054267460117e-05 ;
	setAttr ".rst" -type "double3" 16.512000991310583 0.00036412267899166295 -1.1311277977633927e-17 ;
	setAttr ".rsrr" -type "double3" -0.00011468037144532116 1.0336809080790694e-14 6.3610990181097529e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "Arm_03_RK_Jnt_scaleConstraint1" -p "Arm_03_RK_Jnt";
	rename -uid "7220F775-C84A-DA67-6294-1D90DA410F86";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_03_IK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_03_FK_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0002106125276666 1.0002106125276664 1.0002106125276666 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Arm_02_Rk_Jnt_parentConstraint1" -p "Arm_02_Rk_Jnt";
	rename -uid "8D2B66BF-5348-A5E1-391A-449C744E66D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_02_IK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_02_FK_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.013787464995841936 0.0023696697856117055 
		0.041635318727489171 ;
	setAttr ".tg[0].tor" -type "double3" 179.8189586302536 -0.1405715207774331 -0.068922318649020764 ;
	setAttr ".tg[1].tot" -type "double3" -0.0071820490563688777 0.044513093634531486 
		-0.0017321640338673562 ;
	setAttr ".tg[1].tor" -type "double3" -0.0056183411894102833 -0.0057078782313631496 
		0.004946750898491328 ;
	setAttr ".lr" -type "double3" -0.0056183411894102833 -0.0057078782313631487 0.0049467508984657642 ;
	setAttr ".rst" -type "double3" 15.257642424108621 -1.7763568394002505e-15 -1.8428048800464558e-17 ;
	setAttr ".rsrr" -type "double3" 3.8560719417674362e-05 0.00028964312180165488 0.0049792094302895636 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "Arm_02_Rk_Jnt_scaleConstraint1" -p "Arm_02_Rk_Jnt";
	rename -uid "FBB98DD5-0B44-117C-40BF-9E897D903BD3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_02_IK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_02_FK_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0001348352957349 0.99985877102163589 0.99985877102163612 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Arm_01_RK_Jnt_parentConstraint1" -p "Arm_01_RK_Jnt";
	rename -uid "9733C255-174C-6185-1CF0-75A185FC853E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_01_IK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_01_FK_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -2.2204460492503131e-16 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0.162332735319451 -0.16285488326487743 -0.052518423444567801 ;
	setAttr ".tg[1].tot" -type "double3" -2.2204460492503131e-16 0 6.3189598243000171e-19 ;
	setAttr ".tg[1].tor" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 6.3188434973457883e-19 0 1.6753521893471497e-16 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "Arm_01_RK_Jnt_scaleConstraint1" -p "Arm_01_RK_Jnt";
	rename -uid "C887C6DD-D44B-0E4B-5A89-A8B043B3718C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_01_IK_JntW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_01_FK_JntW1" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0001348352957349 0.99985877102163589 0.99985877102163601 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "Controls" -p "Lamp";
	rename -uid "D08B307C-C440-BFC2-3E2B-B7BC6B762431";
createNode transform -n "Transform_Ctrl_Grp" -p "Controls";
	rename -uid "654D980B-0245-FDEE-5817-BE80507CC5AE";
	setAttr ".s" -type "double3" 9.4700549378723924 9.4700549378723924 9.4700549378723924 ;
createNode transform -n "Transform_Ctrl" -p "Transform_Ctrl_Grp";
	rename -uid "01E59B5B-9F43-C87A-897D-A68717ED072F";
	addAttr -ci true -sn "Arm_IKFK" -ln "Arm_IKFK" -min 0 -max 1 -at "double";
	setAttr ".ove" yes;
	setAttr -k on ".Arm_IKFK" 1;
createNode nurbsCurve -n "Transform_CtrlShape" -p "Transform_Ctrl";
	rename -uid "B8A71AC1-1842-D52F-D54D-C49B0F7768A5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.2718177138350619 7.7876374617350551e-17 -1.2718177138350606
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-1.271817713835061 7.78763746173506e-17 -1.271817713835061
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-1.2718177138350613 -7.7876374617350564e-17 1.2718177138350608
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		1.2718177138350606 -7.7876374617350625e-17 1.2718177138350613
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		1.2718177138350619 7.7876374617350551e-17 -1.2718177138350606
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-1.271817713835061 7.78763746173506e-17 -1.271817713835061
		;
createNode transform -n "FK_Main_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "09335CAF-2E4E-AA0A-0691-2096D97B6E9B";
	setAttr ".s" -type "double3" 1.100704127642135 1.100704127642135 1.100704127642135 ;
createNode transform -n "COG_Ctrl_Grp" -p "FK_Main_Ctrl_Grp";
	rename -uid "A6B8B2B5-4B47-BFC4-B63B-6D8D68A0D519";
	setAttr ".s" -type "double3" 0.93956341252579745 0.93956341252579745 0.93956341252579745 ;
createNode transform -n "COG_Ctrl" -p "COG_Ctrl_Grp";
	rename -uid "E9A1BE5F-5144-FE27-DCE4-4794D0817709";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "COG_CtrlShape" -p "COG_Ctrl";
	rename -uid "28DEDE52-CD48-598F-89DE-9AB66F2F149B";
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
createNode transform -n "Base_Ctrl_Grp" -p "COG_Ctrl";
	rename -uid "0E9D11C2-3945-094A-E693-F89A98DB171B";
	setAttr ".t" -type "double3" 0.036846207358886537 0.29119272431961735 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".s" -type "double3" 0.10210589345266985 0.10210589345266985 0.10210589345266985 ;
createNode transform -n "Base_Ctrl" -p "Base_Ctrl_Grp";
	rename -uid "F960F1E0-5C40-229B-8BEA-E1BF7E311BD1";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "Base_CtrlShape" -p "Base_Ctrl";
	rename -uid "AADFA252-D44B-EF10-B7CC-EA9BE7F9CC40";
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
createNode transform -n "Arm_Ctrl_Grp" -p "COG_Ctrl";
	rename -uid "B312A803-4D4D-D44D-F1A1-FE8854C94E10";
	setAttr ".t" -type "double3" -0.035789932501930327 0.29119272431961735 0 ;
	setAttr ".r" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".s" -type "double3" 0.10210589345266985 0.10210589345266985 0.10210589345266985 ;
createNode transform -n "Arm_Ctrl" -p "Arm_Ctrl_Grp";
	rename -uid "70917E22-AA43-6118-6729-DD8139F4E124";
createNode nurbsCurve -n "Arm_CtrlShape" -p "Arm_Ctrl";
	rename -uid "409DD548-324F-DEA0-8E8A-CC9E7CD07C7E";
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
createNode transform -n "Elbow_Ctrl_Grp" -p "Arm_Ctrl";
	rename -uid "97F2C503-B244-CD54-8436-0EA9B7F33985";
	setAttr ".t" -type "double3" 9.9613458601568396 -0.70715867674008992 -11.503017458446488 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "Elbow_Ctrl" -p "Elbow_Ctrl_Grp";
	rename -uid "97EFCC4D-AE44-9118-FDEF-828AC4F896A5";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
createNode nurbsCurve -n "Elbow_CtrlShape" -p "Elbow_Ctrl";
	rename -uid "628A46F0-6E46-7D2C-9588-20983D0A3B9A";
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
createNode transform -n "Head_Ctrl_Grp" -p "Elbow_Ctrl";
	rename -uid "16D0EB1B-3D47-F7B1-7DFF-588E234533C6";
	setAttr ".t" -type "double3" 10.563172787989361 0.43871480991548029 12.692792806156143 ;
	setAttr ".s" -type "double3" 2.2198065911175178 2.2198065911175178 2.2198065911175178 ;
createNode transform -n "Head_Ctrl" -p "Head_Ctrl_Grp";
	rename -uid "D2CF3BCA-464C-20D2-B872-76B0223C523D";
createNode nurbsCurve -n "Head_CtrlShape" -p "Head_Ctrl";
	rename -uid "E4424E80-3B45-A967-5085-21B5633AA6B7";
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
createNode transform -n "IK_Main_Ctrl_Grp" -p "Transform_Ctrl";
	rename -uid "B27D99CF-7E48-E4F0-F844-6892D522E475";
	setAttr ".s" -type "double3" 0.10559600831889861 0.10559600831889861 0.10559600831889861 ;
createNode transform -n "Pole_Vector_Ctrl_Grp" -p "IK_Main_Ctrl_Grp";
	rename -uid "0F37AF27-A34B-7C62-3639-E5B4F56AE7A4";
	setAttr ".t" -type "double3" -0.044538930058479309 12.80826473236084 -15.464794180323125 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.6079668679445791 1.6079668679445791 1.6079668679445791 ;
createNode transform -n "Pole_Vector_Ctrl" -p "Pole_Vector_Ctrl_Grp";
	rename -uid "A3C1BA2B-C546-BFF8-A48F-0992CABD25CA";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode nurbsCurve -n "Pole_Vector_CtrlShape" -p "Pole_Vector_Ctrl";
	rename -uid "1AD7623A-8C49-4415-1F57-77BEDD07C0B5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.025678683880823838 1.5723659010483578e-18 -0.025678683880823505
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.025678683880823283 1.5723659010483578e-18 -0.025678683880823505
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.025678683880823283 -1.5723659010483702e-18 0.025678683880823505
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.025678683880823616 -1.572365901048364e-18 0.025678683880823616
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.025678683880823838 1.5723659010483578e-18 -0.025678683880823505
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.025678683880823283 1.5723659010483578e-18 -0.025678683880823505
		;
createNode transform -n "IK_Handle_Ctrl_Grp" -p "IK_Main_Ctrl_Grp";
	rename -uid "56685E2B-C84C-31EE-E978-A493DBC0AB72";
	setAttr ".t" -type "double3" -0.08207392692565918 23.376388549804688 1.1897753477096558 ;
	setAttr ".s" -type "double3" 2.9316514963905393 2.9316514963905393 2.9316514963905393 ;
createNode transform -n "IK_Handle_Ctrl" -p "IK_Handle_Ctrl_Grp";
	rename -uid "9BB2743A-0A4F-39DF-9099-12B392395DB8";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
createNode nurbsCurve -n "IK_Handle_CtrlShape" -p "IK_Handle_Ctrl";
	rename -uid "DC85867B-6442-E312-5FC4-3DB919DADB52";
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
createNode ikHandle -n "ikHandle1" -p "IK_Handle_Ctrl";
	rename -uid "E93D4CE5-3848-48ED-2E16-00889952E813";
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "F049C70D-C842-396B-2DA8-FEBE0F50F2B3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pole_Vector_CtrlW0" -dv 1 -min 0 
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
	setAttr ".rst" -type "double3" -0.015192436793157649 3.4178258727791606 -5.275113429875085 ;
	setAttr -k on ".w0";
createNode transform -n "IK_Handle_Base_Ctrl_Grp" -p "IK_Main_Ctrl_Grp";
	rename -uid "E12B3267-164A-7755-A974-1B884D64BE73";
	setAttr ".t" -type "double3" -5.5511151231257827e-17 2.7883903980255127 0 ;
	setAttr ".s" -type "double3" 1.8404226104361128 1.8404226104361128 1.8404226104361128 ;
createNode transform -n "IK_Handle_Base_Ctrl" -p "IK_Handle_Base_Ctrl_Grp";
	rename -uid "FD764E5F-504F-AEBE-EC5D-A89018EFCC03";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 0 ;
createNode nurbsCurve -n "IK_Handle_Base_CtrlShape" -p "IK_Handle_Base_Ctrl";
	rename -uid "CC5C3230-3E45-CD5C-060E-26B8AD59CA60";
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
createNode fosterParent -n "lamp_modelRNfosterParent1";
	rename -uid "AAF465DD-C84B-2623-C9C6-7F8C06C10951";
createNode parentConstraint -n "head_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "ABF6951F-D747-3827-7A7A-2A9F290C7193";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_03_RK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.0088335574407679938 0.31518031865803664 
		0.44051604910302045 ;
	setAttr ".tg[0].tor" -type "double3" 0.039571099707483667 0.0080162574692729908 
		0.00058582267042963472 ;
	setAttr ".lr" -type "double3" -0.030922363249933839 5.9826339460169737e-05 -5.4066186216186094e-05 ;
	setAttr ".rst" -type "double3" 1.7347234759768071e-18 0 -2.2204460492503131e-16 ;
	setAttr ".rsrr" -type "double3" -9.5416640443905519e-15 1.272221872585407e-14 -6.3611093629270367e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "head_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "4A1FC44F-FD40-219D-F87D-4C8584EA5E39";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_03_RK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.99930940545378688 0.99986130681909569 0.99986130681909469 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "upper_arm_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "4AB10361-1048-D74F-D1DD-4BAC51C421B0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_02_Rk_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.016928403324232177 0.0023313126862554157 
		0.0070832920549862505 ;
	setAttr ".tg[0].tor" -type "double3" -2.7211824173749095 89.99144610352792 -42.549492865099403 ;
	setAttr ".lr" -type "double3" 3.6844271487375659e-05 -0.016526200353618476 -0.0010649800215771399 ;
	setAttr ".rst" -type "double3" 1.7347234759768071e-18 0 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -3.3443532475588876e-11 9.2824449447994827e-28 3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "upper_arm_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "D2BA4B08-A649-48FF-3F95-21B4457F3702";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_02_Rk_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.99892197184011444 1.0011305502075472 1.0011305502075465 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "lower_arm_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "5604DFED-E748-44C7-F9CB-8D9F427EB88B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_01_RK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.5658663322911526 0.01830927209131783 -0.0088188122548730624 ;
	setAttr ".tg[0].tor" -type "double3" -41 -90 0 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-15 5.5659706925611543e-15 6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 0 0 -2.6645352591003757e-15 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-15 5.5659706925611543e-15 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "lower_arm_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "E030C56C-724A-0E5C-219F-7BA0A58E98D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_01_RK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.99946084057361384 1.0005651154260513 1.0005651154260511 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "base_geo_parentConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "4E87DFCA-6D42-DD5F-5B96-B5A4699DD7E5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_01_FK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 1.1366243410739052 1.2619065138096466e-16 -4.2029929996677989e-32 ;
	setAttr ".tg[0].tor" -type "double3" 90 -89.999999999999986 0 ;
	setAttr ".lr" -type "double3" -1.2722218725854064e-14 -2.5444437451708134e-14 -1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" 5.4738221262688167e-48 -2.2204460492503131e-16 -9.3325192011390865e-48 ;
	setAttr ".rsrr" -type "double3" -1.2722218725854064e-14 -2.5444437451708134e-14 
		-1.2722218725854064e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "base_geo_scaleConstraint1" -p "lamp_modelRNfosterParent1";
	rename -uid "9BA06CF5-394A-ECB4-96AF-F7816085F5C2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_01_FK_JntW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C6C1054B-8F49-E227-18C0-B1B0D085A9E4";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2F6C55C3-434D-9DDB-EDDC-6CB475F0FC99";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "46D7024D-E148-9491-E53C-71BBC802E411";
createNode displayLayerManager -n "layerManager";
	rename -uid "E9B4F9DC-5B43-3746-3C7C-D8A1171543E9";
	setAttr ".cdl" 1;
	setAttr -s 5 ".dli[1:4]"  2 0 0 1;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "F872843F-BF42-4E5C-D461-8FA67D96D443";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1E79EEFB-D747-35A1-FECE-AAAB9A867E68";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B6FBD0A3-1842-D22D-9625-67A7D51DB27F";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "10C8F420-3C47-AEF4-A05F-23BFCA228C48";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "074C7F1F-6845-3261-CD75-46B2F431FCB0";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "76CE8043-174C-0EB1-1B13-6987378754D9";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "5FD1A240-A64B-1D9A-DBEF-309C61E6664C";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "lamp_modelRN";
	rename -uid "34FFB91A-FD4A-EAF7-BDCF-AFBDCEA3E17A";
	setAttr -s 56 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"lamp_modelRN"
		"lamp_modelRN" 0
		"lamp_modelRN" 286
		0 "|lamp_model:Geometry" "|Lamp" "-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|base_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:base_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|lower_arm_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|upper_arm_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_scaleConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		0 "|lamp_modelRNfosterParent1|head_geo_parentConstraint1" "|Lamp|lamp_model:Geometry|lamp_model:head_geo" 
		"-s -r "
		2 "|Lamp|lamp_model:Geometry" "visibility" " 1"
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo" "visibility" " 1"
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo" "rotatePivot" " -type \"double3\" 0 1.6517660569516075 0"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo" "scalePivot" " -type \"double3\" 0 1.6517660569516075 0"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"intermediateObject" " 0"
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"pnts" " -s 168"
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"pt[0:165]" " -type \"float3\" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:base_geo|lamp_model:base_geoShape" 
		"pt[166:167]" " 0 0 0 0 0 0"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo" "visibility" " 1"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo" "rotatePivot" " -type \"double3\" -0.0088138316745693945 23.69530675247705176 1.60595217085698549"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo" "scalePivot" " -type \"double3\" -0.0088138316745693945 23.69530675247705176 1.60595217085698549"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts" " -s 206"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[0]" " -type \"float3\" 0 -0.00072998449000000003 -9.1046203999999993e-05"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[1]" " -type \"float3\" 0.0011190886000000001 0.0034699442 -0.00097428053000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[2]" " -type \"float3\" 0.0019383192 0.0029574516 -0.0016134122999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[3]" " -type \"float3\" 0.002238177 0.0022573738999999999 -0.0024864819999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[4]" " -type \"float3\" 0.0019383192 0.0015572971000000001 -0.0033595514999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[5]" " -type \"float3\" 0.0011190886000000001 0.0010448034999999999 -0.0039986841999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[6]" " -type \"float3\" 0 0.00085721932999999998 -0.0042326218000000001"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[7]" " -type \"float3\" -0.0011190887000000001 0.0010448034999999999 -0.0039986841999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[8]" " -type \"float3\" -0.001938319 0.0015572971000000001 -0.003359552"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[9]" " -type \"float3\" -0.0022381772000000001 0.0022573738999999999 -0.0024864823"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[10]" " -type \"float3\" -0.001938319 0.0029574516 -0.0016134122999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[11]" " -type \"float3\" -0.0011190886000000001 0.0034699442 -0.00097428064000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[12]" " -type \"float3\" 0 0.0036575294000000002 -0.00074034283"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[13]" " -type \"float3\" 0.001092616 0.0034412607 -0.0010100530999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[14]" " -type \"float3\" 0.0018924673 0.0029408918 -0.001634066"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[15]" " -type \"float3\" 0.0021852318 0.0022573755 -0.0024864831999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[16]" " -type \"float3\" 0.0018924673 0.0015738583999999999 -0.0033388997"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[17]" " -type \"float3\" 0.0010926162000000001 0.0010734887000000001 -0.0039629126000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[18]" " -type \"float3\" 0 0.00089034124000000002 -0.0041913167000000003"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[19]" " -type \"float3\" -0.0010926158 0.0010734887000000001 -0.0039629126000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[20]" " -type \"float3\" -0.0018924673 0.0015738583999999999 -0.0033388997"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[21]" " -type \"float3\" -0.0021852320000000001 0.0022573755 -0.0024864831999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[22]" " -type \"float3\" -0.0018924670000000001 0.0029408918 -0.0016340662000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[23]" " -type \"float3\" -0.001092616 0.0034412607 -0.0010100530999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[24]" " -type \"float3\" 0 0.0036244083000000001 -0.0007816492"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[25]" " -type \"float3\" 0 -0.00052313546999999995 -0.00025691089000000003"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[26]" " -type \"float3\" 0.00033939205000000001 -0.00036224222000000002 0.00036756738000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[27]" " -type \"float3\" 0.00037453311999999998 -0.00032416634999999998 0.00041505251999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[28]" " -type \"float3\" 0.00037960117 -0.00026626588000000002 0.00037987664000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[29]" " -type \"float3\" 0.00058784435000000003 -0.00051766913000000003 0.00017373452"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[30]" " -type \"float3\" 0.00064871017999999997 -0.00049568479999999998 0.00020115009"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[31]" " -type \"float3\" 0.00065748852999999996 -0.00044010626 0.00016307986999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[32]" " -type \"float3\" 0.00067878421000000001 -0.00072998449000000003 -9.1046101999999994e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[33]" " -type \"float3\" 0.00074906617999999999 -0.00072998449000000003 -9.1046153000000007e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[34]" " -type \"float3\" 0.00075920228999999998 -0.00067757693000000002 -0.00013307042999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[35]" " -type \"float3\" 0.00058784435000000003 -0.00094230070999999996 -0.00035582684000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[36]" " -type \"float3\" 0.00064871017999999997 -0.00096428504999999996 -0.00038324229999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[37]" " -type \"float3\" 0.00065748852999999996 -0.00091504759999999998 -0.00042922064"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[38]" " -type \"float3\" 0.00033939210999999999 -0.0010977284 -0.00054965966000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[39]" " -type \"float3\" 0.00037453311999999998 -0.0011358042000000001 -0.00059714494000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[40]" " -type \"float3\" 0.00037960119999999999 -0.0010888871 -0.00064601749000000003"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[41]" " -type \"float3\" 0 -0.0011546178 -0.00062060746000000002"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[42]" " -type \"float3\" 0 -0.0011985839999999999 -0.00067543861000000005"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[43]" " -type \"float3\" 0 -0.0011525165999999999 -0.00072537082999999997"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[44]" " -type \"float3\" -0.00033939213999999997 -0.0010977284 -0.00054965966000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[45]" " -type \"float3\" -0.00037453296999999998 -0.0011358042000000001 -0.00059714488000000003"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[46]" " -type \"float3\" -0.00037960129000000001 -0.0010888871 -0.00064601760999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[47]" " -type \"float3\" -0.00058784441000000001 -0.00094230070999999996 -0.00035582684000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[48]" " -type \"float3\" -0.00064871028999999997 -0.00096428504999999996 -0.00038324240999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[49]" " -type \"float3\" -0.00065748852999999996 -0.00091504759999999998 -0.00042922064"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[50]" " -type \"float3\" -0.00067878416 -0.00072998449000000003 -9.1046203999999993e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[51]" " -type \"float3\" -0.00074906630000000005 -0.00072998449000000003 -9.1046203999999993e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[52]" " -type \"float3\" -0.00075920228999999998 -0.00067757693000000002 -0.00013307042999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[53]" " -type \"float3\" -0.00058784441000000001 -0.00051766913000000003 0.00017373452"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[54]" " -type \"float3\" -0.00064871017999999997 -0.00049568479999999998 0.00020115009"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[55]" " -type \"float3\" -0.00065748841999999997 -0.00044010626 0.00016307986999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[56]" " -type \"float3\" -0.00033939217000000002 -0.00036224222000000002 0.00036756738000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[57]" " -type \"float3\" -0.00037453303000000002 -0.00032416634999999998 0.00041505254999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[58]" " -type \"float3\" -0.00037960132 -0.00026626588000000002 0.00037987669999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[59]" " -type \"float3\" 0 -0.00030535293999999998 0.00043851506999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[60]" " -type \"float3\" 0 -0.00026138584 0.00049334635999999995"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[61]" " -type \"float3\" 0 -0.00020263561 0.00045923000999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[62]" " -type \"float3\" 0.00032498248000000001 -0.00020588924 0.00021020338000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[63]" " -type \"float3\" 0.00036108764 -0.00017064376 0.00026209946000000002"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[64]" " -type \"float3\" 0.00036648395999999998 -0.00011085424 0.00022613589"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[65]" " -type \"float3\" 0.00056288623999999998 -0.00035471652999999998 2.4600032999999999e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[66]" " -type \"float3\" 0.00062542211000000004 -0.00033600588000000001 5.5876048000000003e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[67]" " -type \"float3\" 0.00063476880000000002 -0.00027868689999999998 1.6830574e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[68]" " -type \"float3\" 0.00064996496000000001 -0.00055801874000000005 -0.00022893891999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[69]" " -type \"float3\" 0.00072217522999999998 -0.00056189403000000005 -0.00022583065999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[70]" " -type \"float3\" 0.00073296780000000001 -0.00050795159999999996 -0.00026908603999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[71]" " -type \"float3\" 0.00056288618 -0.00076132098999999996 -0.00048247760000000002"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[72]" " -type \"float3\" 0.00062542217000000002 -0.00078778300999999998 -0.00050753739000000003"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[73]" " -type \"float3\" 0.00063476880000000002 -0.00073721463999999997 -0.00055500264999999997"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[74]" " -type \"float3\" 0.00032498248000000001 -0.00091014825999999999 -0.00066808087000000003"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[75]" " -type \"float3\" 0.00036108764 -0.00095314428000000003 -0.00071376101999999996"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[76]" " -type \"float3\" 0.00036648395999999998 -0.00090504810000000002 -0.00076430826000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[77]" " -type \"float3\" 0 -0.00096462236000000002 -0.00073601625999999997"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[78]" " -type \"float3\" 0 -0.001013672 -0.00078924419000000003"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[79]" " -type \"float3\" 0 -0.00096647930000000001 -0.00084091926999999998"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[80]" " -type \"float3\" -0.00032498236 -0.00091014825999999999 -0.00066808098999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[81]" " -type \"float3\" -0.00036108781999999998 -0.00095314428000000003 -0.00071376090999999997"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[82]" " -type \"float3\" -0.0003664839 -0.00090504810000000002 -0.00076430821000000003"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[83]" " -type \"float3\" -0.00056288629999999996 -0.00076132098999999996 -0.00048247760000000002"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[84]" " -type \"float3\" -0.00062542204999999995 -0.00078778300999999998 -0.00050753739000000003"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[85]" " -type \"float3\" -0.00063476874000000004 -0.00073721463999999997 -0.00055500264999999997"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[86]" " -type \"float3\" -0.00064996496000000001 -0.00055801874000000005 -0.00022893882000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[87]" " -type \"float3\" -0.00072217541000000002 -0.00056189403000000005 -0.00022583065999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[88]" " -type \"float3\" -0.00073296774999999999 -0.00050795159999999996 -0.00026908603999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[89]" " -type \"float3\" -0.00056288629999999996 -0.00035471652999999998 2.4600032999999999e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[90]" " -type \"float3\" -0.00062542211000000004 -0.00033600588000000001 5.5876048000000003e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[91]" " -type \"float3\" -0.00063476874000000004 -0.00027868689999999998 1.6830574e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[92]" " -type \"float3\" -0.00032498241999999997 -0.00020588924 0.00021020342000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[93]" " -type \"float3\" -0.00036108778999999999 -0.00017064376 0.00026209946000000002"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[94]" " -type \"float3\" -0.00036648382 -0.00011085424 0.00022613593"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[95]" " -type \"float3\" 0 -0.00015141509000000001 0.00027813890000000002"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[96]" " -type \"float3\" 0 -0.00011011693 0.00033758266000000003"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[97]" " -type \"float3\" 0 -4.9423033000000001e-05 0.00030274715000000002"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[98]" " -type \"float3\" -0.0011119564 0.0010363655 -0.0039760834000000002"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[99]" " -type \"float3\" -1.3949524999999999e-10 0.00084997556000000003 -0.0042085302999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[100]" " -type \"float3\" 0.0011119566999999999 0.0010363655 -0.0039760834000000002"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[101]" " -type \"float3\" 0.0019259665 0.0015455924000000001 -0.0033410244999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[102]" " -type \"float3\" 0.0022239131000000001 0.0022412078000000001 -0.0024735192"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[103]" " -type \"float3\" 0.0019259661999999999 0.0029368230999999999 -0.0016060133"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[104]" " -type \"float3\" 0.0011119566999999999 0.0034460505000000002 -0.00097095430999999996"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[105]" " -type \"float3\" 0 0.0036324395000000001 -0.00073850778000000004"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[106]" " -type \"float3\" -0.0011119564 0.0034460505000000002 -0.00097095430999999996"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[107]" " -type \"float3\" -0.0019259664 0.0029368230999999999 -0.0016060135000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[108]" " -type \"float3\" -0.0022239131000000001 0.0022412078000000001 -0.002473519"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[109]" " -type \"float3\" -0.0019259660000000001 0.0015455924000000001 -0.0033410244999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[110]" " -type \"float3\" -0.0010832169 0.0010629190000000001 -0.0039335702999999996"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[111]" " -type \"float3\" 0 0.00088134734000000004 -0.0041600092999999998"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[112]" " -type \"float3\" 0.0010832171000000001 0.0010629190000000001 -0.0039335708000000002"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[113]" " -type \"float3\" 0.0018761876000000001 0.0015589853 -0.0033149250999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[114]" " -type \"float3\" 0.0021664340000000001 0.0022366217000000001 -0.0024698412"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[115]" " -type \"float3\" 0.0018761874 0.0029142579999999999 -0.0016247568"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[116]" " -type \"float3\" 0.001083217 0.0034103226000000001 -0.0010061123000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[117]" " -type \"float3\" 0 0.0035918950999999999 -0.00077967311000000004"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[118]" " -type \"float3\" -0.0010832171000000001 0.0034103226000000001 -0.0010061121"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[119]" " -type \"float3\" -0.0018761871999999999 0.0029142579999999999 -0.0016247570999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[120]" " -type \"float3\" -0.0021664340000000001 0.0022366217000000001 -0.0024698412"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[121]" " -type \"float3\" -0.0018761871999999999 0.0015589853 -0.0033149250999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[122]" " -type \"float3\" 0.00059217738000000005 0.0016961474 -0.00072175455999999995"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[123]" " -type \"float3\" 0.00053876970000000005 0.0015163434 -0.00069614925000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[124]" " -type \"float3\" 0.00052448402999999996 0.0013563520999999999 -0.00059957475999999996"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[125]" " -type \"float3\" 0.00090843333999999999 0.0011161618999999999 -0.00089911692000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[126]" " -type \"float3\" 0.00093317672000000002 0.0012696114000000001 -0.0010038503"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[127]" " -type \"float3\" 0.001025682 0.0014249572 -0.0010599578000000001"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[128]" " -type \"float3\" 0.0010489682 0.00078805605999999995 -0.0013082988999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[129]" " -type \"float3\" 0.0010775394000000001 0.00093256868000000004 -0.0014241777"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[130]" " -type \"float3\" 0.001184355 0.0010545035 -0.0015219522000000001"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[131]" " -type \"float3\" 0.00090843333999999999 0.00045995094000000002 -0.0017174814"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[132]" " -type \"float3\" 0.00093317661000000003 0.00059552670999999996 -0.001844505"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[133]" " -type \"float3\" 0.0010256817000000001 0.00068404961999999996 -0.0019839462"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[134]" " -type \"float3\" 0.00052448402999999996 0.00021975995000000001 -0.0020170237"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[135]" " -type \"float3\" 0.00053876982000000001 0.00034879311000000001 -0.0021522058999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[136]" " -type \"float3\" 0.00059217755999999998 0.00041286033000000001 -0.0023221495000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[137]" " -type \"float3\" 0 0.00013184505 -0.0021266638999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[138]" " -type \"float3\" 0 0.00025848317000000002 -0.0022648321000000001"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[139]" " -type \"float3\" 0 0.00031359663 -0.0024459401999999998"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[140]" " -type \"float3\" -0.00052448396999999999 0.00021975995000000001 -0.0020170237"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[141]" " -type \"float3\" -0.00053876970000000005 0.00034879311000000001 -0.0021522058999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[142]" " -type \"float3\" -0.00059217744000000002 0.00041286033000000001 -0.0023221492"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[143]" " -type \"float3\" -0.00090843304999999996 0.00045995094000000002 -0.0017174814"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[144]" " -type \"float3\" -0.00093317700999999995 0.00059552670999999996 -0.001844505"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[145]" " -type \"float3\" -0.0010256822000000001 0.00068404961999999996 -0.0019839459999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[146]" " -type \"float3\" -0.0010489682 0.00078805605999999995 -0.0013082994000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[147]" " -type \"float3\" -0.0010775393000000001 0.00093256868000000004 -0.0014241777"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[148]" " -type \"float3\" -0.0011843546999999999 0.0010545035 -0.001521952"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[149]" " -type \"float3\" -0.00090843304999999996 0.0011161618999999999 -0.00089911692000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[150]" " -type \"float3\" -0.00093317666000000004 0.0012696114000000001 -0.0010038503"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[151]" " -type \"float3\" -0.0010256817999999999 0.0014249572 -0.0010599578000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[152]" " -type \"float3\" -0.00052448409000000005 0.0013563520999999999 -0.00059957494"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[153]" " -type \"float3\" -0.00053876982000000001 0.0015163434 -0.00069614925000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[154]" " -type \"float3\" -0.00059217738000000005 0.0016961474 -0.00072175468000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[155]" " -type \"float3\" 0 0.0014442686000000001 -0.00048993493"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[156]" " -type \"float3\" 0 0.0016066533999999999 -0.00058352288999999997"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[157]" " -type \"float3\" 0 0.001795411 -0.00059796397999999995"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[158]" " -type \"float3\" 0.00050365790999999996 0.0013342617 -0.00062809738999999995"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[159]" " -type \"float3\" 0.00051889784000000005 0.0014948129 -0.00072300178000000005"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[160]" " -type \"float3\" 0.00057176587999999997 0.0016742657999999999 -0.00074952473999999997"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[161]" " -type \"float3\" 0.0009903279100000001 0.0014124230000000001 -0.0010760705999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[162]" " -type \"float3\" 0.00089875771999999997 0.0012571800000000001 -0.0010193534000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[163]" " -type \"float3\" 0.00087236142000000005 0.0011036092 -0.00091574555999999997"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[164]" " -type \"float3\" 0.0011435318 0.0010547388 -0.0015221403000000001"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[165]" " -type \"float3\" 0.0010377957 0.00093256868000000004 -0.0014241773999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[166]" " -type \"float3\" 0.0010073161000000001 0.00078853150000000004 -0.00130868"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[167]" " -type \"float3\" 0.0009903279100000001 0.00069705454999999998 -0.0019682106"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[168]" " -type \"float3\" 0.00089875771999999997 0.00060795735999999998 -0.0018290016"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[169]" " -type \"float3\" 0.00087236142000000005 0.00047345383999999999 -0.0017016145999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[170]" " -type \"float3\" 0.00057176570000000003 0.00043521172000000001 -0.0022947561999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[171]" " -type \"float3\" 0.00051889790000000002 0.00037032529 -0.0021253536000000002"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[172]" " -type \"float3\" 0.00050365803000000002 0.00024280128 -0.0019892630999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[173]" " -type \"float3\" 0 0.00033937034000000002 -0.0024142801"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[174]" " -type \"float3\" 0 0.00028334607000000001 -0.0022338255999999998"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[175]" " -type \"float3\" 0 0.00015837613 -0.0020945490999999998"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[176]" " -type \"float3\" -0.00057176587999999997 0.00043521172000000001 -0.0022947561999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[177]" " -type \"float3\" -0.00051889777999999996 0.00037032529 -0.0021253537999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[178]" " -type \"float3\" -0.00050365803000000002 0.00024280128 -0.0019892630999999998"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[179]" " -type \"float3\" -0.00099032803000000005 0.00069705454999999998 -0.0019682102999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[180]" " -type \"float3\" -0.00089875747999999995 0.00060795735999999998 -0.0018290018000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[181]" " -type \"float3\" -0.00087236153000000004 0.00047345383999999999 -0.0017016145999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[182]" " -type \"float3\" -0.0011435315000000001 0.0010547388 -0.0015221408"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[183]" " -type \"float3\" -0.0010377956 0.00093256868000000004 -0.0014241778000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[184]" " -type \"float3\" -0.0010073158 0.00078853150000000004 -0.00130868"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[185]" " -type \"float3\" -0.00099032803000000005 0.0014124230000000001 -0.0010760708"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[186]" " -type \"float3\" -0.00089875747999999995 0.0012571800000000001 -0.0010193534000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[187]" " -type \"float3\" -0.00087236153000000004 0.0011036092 -0.00091574555999999997"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[188]" " -type \"float3\" -0.00057176587999999997 0.0016742657999999999 -0.00074952486000000003"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[189]" " -type \"float3\" -0.00051889777999999996 0.0014948129 -0.00072300190000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[190]" " -type \"float3\" -0.00050365808000000004 0.0013342617 -0.00062809738999999995"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[191]" " -type \"float3\" 0 0.0017701072 -0.00063000119000000004"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[192]" " -type \"float3\" 0 0.0015817913 -0.00061452952999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[193]" " -type \"float3\" 0 0.0014186861 -0.00052281102000000001"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[194]" " -type \"float3\" -0.00089790492000000005 2.3979411999999999e-05 -0.00069561850999999997"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[195]" " -type \"float3\" -0.00077760860000000004 -0.00025687524000000001 -0.0010458742000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[196]" " -type \"float3\" -0.00044895263 -0.00046247612999999999 -0.0013022788000000001"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[197]" " -type \"float3\" 0 -0.00053772987999999998 -0.0013961290999999999"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[198]" " -type \"float3\" 0.00044895237000000001 -0.00046247612999999999 -0.0013022788999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[199]" " -type \"float3\" 0.00077760871000000004 -0.00025687524000000001 -0.0010458739"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[200]" " -type \"float3\" 0.00089790492000000005 2.3979411999999999e-05 -0.00069561850999999997"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[201]" " -type \"float3\" 0.00077760871000000004 0.00030483486000000001 -0.00034536313999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[202]" " -type \"float3\" 0.00044895246000000003 0.00051043414999999998 -8.8958367999999991e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[203]" " -type \"float3\" 0 0.00058568949999999998 4.8922661e-06"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[204]" " -type \"float3\" -0.00044895246000000003 0.00051043414999999998 -8.8958367999999991e-05"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"pnts[205]" " -type \"float3\" -0.00077760871000000004 0.00030483486000000001 -0.00034536313999999999"
		
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"dispResolution" " 0"
		2 "|Lamp|lamp_model:Geometry|lamp_model:head_geo|lamp_model:head_geoShape" 
		"displaySmoothMesh" " 0"
		2 "lamp_model:geo_layer" "displayType" " 2"
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[1]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateX" 
		"lamp_modelRN.placeHolderList[2]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateY" 
		"lamp_modelRN.placeHolderList[3]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.translateZ" 
		"lamp_modelRN.placeHolderList[4]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateX" 
		"lamp_modelRN.placeHolderList[5]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateY" 
		"lamp_modelRN.placeHolderList[6]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[7]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.scaleX" 
		"lamp_modelRN.placeHolderList[8]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.scaleY" 
		"lamp_modelRN.placeHolderList[9]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[10]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[11]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[12]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[13]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:base_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[14]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[15]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[16]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[17]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[18]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[19]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[20]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[21]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[22]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[23]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[24]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[25]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[26]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[27]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:lower_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[28]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateX" 
		"lamp_modelRN.placeHolderList[29]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateY" 
		"lamp_modelRN.placeHolderList[30]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.translateZ" 
		"lamp_modelRN.placeHolderList[31]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateX" 
		"lamp_modelRN.placeHolderList[32]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateY" 
		"lamp_modelRN.placeHolderList[33]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[34]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleX" 
		"lamp_modelRN.placeHolderList[35]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleY" 
		"lamp_modelRN.placeHolderList[36]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[37]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[38]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[39]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[40]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[41]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:upper_arm_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[42]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateX" 
		"lamp_modelRN.placeHolderList[43]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateY" 
		"lamp_modelRN.placeHolderList[44]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.translateZ" 
		"lamp_modelRN.placeHolderList[45]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateX" 
		"lamp_modelRN.placeHolderList[46]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateY" 
		"lamp_modelRN.placeHolderList[47]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateZ" 
		"lamp_modelRN.placeHolderList[48]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleX" 
		"lamp_modelRN.placeHolderList[49]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleY" 
		"lamp_modelRN.placeHolderList[50]" ""
		5 4 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.scaleZ" 
		"lamp_modelRN.placeHolderList[51]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotateOrder" 
		"lamp_modelRN.placeHolderList[52]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[53]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.parentInverseMatrix" 
		"lamp_modelRN.placeHolderList[54]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotatePivot" 
		"lamp_modelRN.placeHolderList[55]" ""
		5 3 "lamp_modelRN" "|Lamp|lamp_model:Geometry|lamp_model:head_geo.rotatePivotTranslate" 
		"lamp_modelRN.placeHolderList[56]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "F459F68B-E149-8ED4-E796-0BB2636AF323";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0A012384-B74B-E825-FF6A-98BEE561BDA6";
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
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1490\n            -height 1340\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1490\\n    -height 1340\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1490\\n    -height 1340\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DC1DD834-884D-1773-4072-1E8F2FB0030E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Joints";
	rename -uid "1FD4AF1A-6B42-4831-7710-B9AED4BD275F";
	setAttr ".v" no;
	setAttr ".do" 2;
createNode reverse -n "Arm_IKFK_Rev";
	rename -uid "04861B81-BF42-21DB-5B25-CB94753C086C";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2CBA99CB-2E48-FF6F-7ABD-36A746EF1E81";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -708.31533623769303 -974.5124951019626 ;
	setAttr ".tgi[0].vh" -type "double2" 2089.182235007082 432.40019393845455 ;
	setAttr -s 10 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 595.1419677734375;
	setAttr ".tgi[0].ni[0].y" 1.4721022844314575;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 590.93450927734375;
	setAttr ".tgi[0].ni[1].y" -62.458114624023438;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 601.49853515625;
	setAttr ".tgi[0].ni[2].y" -118.00487518310547;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 324.73736572265625;
	setAttr ".tgi[0].ni[3].y" 176.24632263183594;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -16.034965515136719;
	setAttr ".tgi[0].ni[4].y" 219.18202209472656;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 425.77642822265625;
	setAttr ".tgi[0].ni[5].y" -169.40946960449219;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 766.5040283203125;
	setAttr ".tgi[0].ni[6].y" -173.82516479492188;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 596.482666015625;
	setAttr ".tgi[0].ni[7].y" 189.50215148925781;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 598.75537109375;
	setAttr ".tgi[0].ni[8].y" 127.27272033691406;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 597.13116455078125;
	setAttr ".tgi[0].ni[9].y" 62.337661743164062;
	setAttr ".tgi[0].ni[9].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av ".unw" 1;
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
select -ne :defaultRenderUtilityList1;
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
	setAttr -s 4 ".sol";
connectAttr "lamp_modelRN.phl[1]" "base_geo_parentConstraint1.crp";
connectAttr "base_geo_parentConstraint1.ctx" "lamp_modelRN.phl[2]";
connectAttr "base_geo_parentConstraint1.cty" "lamp_modelRN.phl[3]";
connectAttr "base_geo_parentConstraint1.ctz" "lamp_modelRN.phl[4]";
connectAttr "base_geo_parentConstraint1.crx" "lamp_modelRN.phl[5]";
connectAttr "base_geo_parentConstraint1.cry" "lamp_modelRN.phl[6]";
connectAttr "base_geo_parentConstraint1.crz" "lamp_modelRN.phl[7]";
connectAttr "base_geo_scaleConstraint1.csx" "lamp_modelRN.phl[8]";
connectAttr "base_geo_scaleConstraint1.csy" "lamp_modelRN.phl[9]";
connectAttr "base_geo_scaleConstraint1.csz" "lamp_modelRN.phl[10]";
connectAttr "lamp_modelRN.phl[11]" "base_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[12]" "base_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[13]" "base_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[14]" "base_geo_parentConstraint1.crt";
connectAttr "lower_arm_geo_parentConstraint1.ctx" "lamp_modelRN.phl[15]";
connectAttr "lower_arm_geo_parentConstraint1.cty" "lamp_modelRN.phl[16]";
connectAttr "lower_arm_geo_parentConstraint1.ctz" "lamp_modelRN.phl[17]";
connectAttr "lower_arm_geo_parentConstraint1.crx" "lamp_modelRN.phl[18]";
connectAttr "lower_arm_geo_parentConstraint1.cry" "lamp_modelRN.phl[19]";
connectAttr "lower_arm_geo_parentConstraint1.crz" "lamp_modelRN.phl[20]";
connectAttr "lower_arm_geo_scaleConstraint1.csx" "lamp_modelRN.phl[21]";
connectAttr "lower_arm_geo_scaleConstraint1.csy" "lamp_modelRN.phl[22]";
connectAttr "lower_arm_geo_scaleConstraint1.csz" "lamp_modelRN.phl[23]";
connectAttr "lamp_modelRN.phl[24]" "lower_arm_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[25]" "lower_arm_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[26]" "lower_arm_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[27]" "lower_arm_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[28]" "lower_arm_geo_parentConstraint1.crt";
connectAttr "upper_arm_geo_parentConstraint1.ctx" "lamp_modelRN.phl[29]";
connectAttr "upper_arm_geo_parentConstraint1.cty" "lamp_modelRN.phl[30]";
connectAttr "upper_arm_geo_parentConstraint1.ctz" "lamp_modelRN.phl[31]";
connectAttr "upper_arm_geo_parentConstraint1.crx" "lamp_modelRN.phl[32]";
connectAttr "upper_arm_geo_parentConstraint1.cry" "lamp_modelRN.phl[33]";
connectAttr "upper_arm_geo_parentConstraint1.crz" "lamp_modelRN.phl[34]";
connectAttr "upper_arm_geo_scaleConstraint1.csx" "lamp_modelRN.phl[35]";
connectAttr "upper_arm_geo_scaleConstraint1.csy" "lamp_modelRN.phl[36]";
connectAttr "upper_arm_geo_scaleConstraint1.csz" "lamp_modelRN.phl[37]";
connectAttr "lamp_modelRN.phl[38]" "upper_arm_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[39]" "upper_arm_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[40]" "upper_arm_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[41]" "upper_arm_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[42]" "upper_arm_geo_parentConstraint1.crt";
connectAttr "head_geo_parentConstraint1.ctx" "lamp_modelRN.phl[43]";
connectAttr "head_geo_parentConstraint1.cty" "lamp_modelRN.phl[44]";
connectAttr "head_geo_parentConstraint1.ctz" "lamp_modelRN.phl[45]";
connectAttr "head_geo_parentConstraint1.crx" "lamp_modelRN.phl[46]";
connectAttr "head_geo_parentConstraint1.cry" "lamp_modelRN.phl[47]";
connectAttr "head_geo_parentConstraint1.crz" "lamp_modelRN.phl[48]";
connectAttr "head_geo_scaleConstraint1.csx" "lamp_modelRN.phl[49]";
connectAttr "head_geo_scaleConstraint1.csy" "lamp_modelRN.phl[50]";
connectAttr "head_geo_scaleConstraint1.csz" "lamp_modelRN.phl[51]";
connectAttr "lamp_modelRN.phl[52]" "head_geo_parentConstraint1.cro";
connectAttr "lamp_modelRN.phl[53]" "head_geo_scaleConstraint1.cpim";
connectAttr "lamp_modelRN.phl[54]" "head_geo_parentConstraint1.cpim";
connectAttr "lamp_modelRN.phl[55]" "head_geo_parentConstraint1.crp";
connectAttr "lamp_modelRN.phl[56]" "head_geo_parentConstraint1.crt";
connectAttr "Joints.di" "Skeleton.do";
connectAttr "ROOT.s" "Arm_01_IK_Jnt.is";
connectAttr "Arm_01_IK_Jnt_scaleConstraint1.csx" "Arm_01_IK_Jnt.sx";
connectAttr "Arm_01_IK_Jnt_scaleConstraint1.csy" "Arm_01_IK_Jnt.sy";
connectAttr "Arm_01_IK_Jnt_scaleConstraint1.csz" "Arm_01_IK_Jnt.sz";
connectAttr "Arm_01_IK_Jnt_parentConstraint1.ctx" "Arm_01_IK_Jnt.tx";
connectAttr "Arm_01_IK_Jnt_parentConstraint1.cty" "Arm_01_IK_Jnt.ty";
connectAttr "Arm_01_IK_Jnt_parentConstraint1.ctz" "Arm_01_IK_Jnt.tz";
connectAttr "Arm_01_IK_Jnt_parentConstraint1.crx" "Arm_01_IK_Jnt.rx";
connectAttr "Arm_01_IK_Jnt_parentConstraint1.cry" "Arm_01_IK_Jnt.ry";
connectAttr "Arm_01_IK_Jnt_parentConstraint1.crz" "Arm_01_IK_Jnt.rz";
connectAttr "Arm_01_IK_Jnt.s" "Arm_02_IK_Jnt.is";
connectAttr "Arm_02_IK_Jnt.s" "Arm_03_IK_Jnt.is";
connectAttr "Arm_03_IK_Jnt_orientConstraint1.crx" "Arm_03_IK_Jnt.rx";
connectAttr "Arm_03_IK_Jnt_orientConstraint1.cry" "Arm_03_IK_Jnt.ry";
connectAttr "Arm_03_IK_Jnt_orientConstraint1.crz" "Arm_03_IK_Jnt.rz";
connectAttr "Arm_03_IK_Jnt.ro" "Arm_03_IK_Jnt_orientConstraint1.cro";
connectAttr "Arm_03_IK_Jnt.pim" "Arm_03_IK_Jnt_orientConstraint1.cpim";
connectAttr "Arm_03_IK_Jnt.jo" "Arm_03_IK_Jnt_orientConstraint1.cjo";
connectAttr "Arm_03_IK_Jnt.is" "Arm_03_IK_Jnt_orientConstraint1.is";
connectAttr "IK_Handle_Ctrl.r" "Arm_03_IK_Jnt_orientConstraint1.tg[0].tr";
connectAttr "IK_Handle_Ctrl.ro" "Arm_03_IK_Jnt_orientConstraint1.tg[0].tro";
connectAttr "IK_Handle_Ctrl.pm" "Arm_03_IK_Jnt_orientConstraint1.tg[0].tpm";
connectAttr "Arm_03_IK_Jnt_orientConstraint1.w0" "Arm_03_IK_Jnt_orientConstraint1.tg[0].tw"
		;
connectAttr "Arm_03_IK_Jnt.tx" "effector1.tx";
connectAttr "Arm_03_IK_Jnt.ty" "effector1.ty";
connectAttr "Arm_03_IK_Jnt.tz" "effector1.tz";
connectAttr "Arm_03_IK_Jnt.opm" "effector1.opm";
connectAttr "Arm_01_IK_Jnt.ro" "Arm_01_IK_Jnt_parentConstraint1.cro";
connectAttr "Arm_01_IK_Jnt.pim" "Arm_01_IK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_01_IK_Jnt.rp" "Arm_01_IK_Jnt_parentConstraint1.crp";
connectAttr "Arm_01_IK_Jnt.rpt" "Arm_01_IK_Jnt_parentConstraint1.crt";
connectAttr "Arm_01_IK_Jnt.jo" "Arm_01_IK_Jnt_parentConstraint1.cjo";
connectAttr "IK_Handle_Base_Ctrl.t" "Arm_01_IK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "IK_Handle_Base_Ctrl.rp" "Arm_01_IK_Jnt_parentConstraint1.tg[0].trp"
		;
connectAttr "IK_Handle_Base_Ctrl.rpt" "Arm_01_IK_Jnt_parentConstraint1.tg[0].trt"
		;
connectAttr "IK_Handle_Base_Ctrl.r" "Arm_01_IK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "IK_Handle_Base_Ctrl.ro" "Arm_01_IK_Jnt_parentConstraint1.tg[0].tro"
		;
connectAttr "IK_Handle_Base_Ctrl.s" "Arm_01_IK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "IK_Handle_Base_Ctrl.pm" "Arm_01_IK_Jnt_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_01_IK_Jnt_parentConstraint1.w0" "Arm_01_IK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_01_IK_Jnt.ssc" "Arm_01_IK_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_01_IK_Jnt.pim" "Arm_01_IK_Jnt_scaleConstraint1.cpim";
connectAttr "IK_Handle_Base_Ctrl.s" "Arm_01_IK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "IK_Handle_Base_Ctrl.pm" "Arm_01_IK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_01_IK_Jnt_scaleConstraint1.w0" "Arm_01_IK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt_scaleConstraint1.csx" "COG_Jnt.sx";
connectAttr "COG_Jnt_scaleConstraint1.csy" "COG_Jnt.sy";
connectAttr "COG_Jnt_scaleConstraint1.csz" "COG_Jnt.sz";
connectAttr "ROOT.s" "COG_Jnt.is";
connectAttr "COG_Jnt_parentConstraint1.ctx" "COG_Jnt.tx";
connectAttr "COG_Jnt_parentConstraint1.cty" "COG_Jnt.ty";
connectAttr "COG_Jnt_parentConstraint1.ctz" "COG_Jnt.tz";
connectAttr "COG_Jnt_parentConstraint1.crx" "COG_Jnt.rx";
connectAttr "COG_Jnt_parentConstraint1.cry" "COG_Jnt.ry";
connectAttr "COG_Jnt_parentConstraint1.crz" "COG_Jnt.rz";
connectAttr "COG_Jnt.s" "Base_01_FK_Jnt.is";
connectAttr "Base_01_FK_Jnt_parentConstraint1.ctx" "Base_01_FK_Jnt.tx";
connectAttr "Base_01_FK_Jnt_parentConstraint1.cty" "Base_01_FK_Jnt.ty";
connectAttr "Base_01_FK_Jnt_parentConstraint1.ctz" "Base_01_FK_Jnt.tz";
connectAttr "Base_01_FK_Jnt_parentConstraint1.crx" "Base_01_FK_Jnt.rx";
connectAttr "Base_01_FK_Jnt_parentConstraint1.cry" "Base_01_FK_Jnt.ry";
connectAttr "Base_01_FK_Jnt_parentConstraint1.crz" "Base_01_FK_Jnt.rz";
connectAttr "Base_01_FK_Jnt_scaleConstraint1.csx" "Base_01_FK_Jnt.sx";
connectAttr "Base_01_FK_Jnt_scaleConstraint1.csy" "Base_01_FK_Jnt.sy";
connectAttr "Base_01_FK_Jnt_scaleConstraint1.csz" "Base_01_FK_Jnt.sz";
connectAttr "Base_01_FK_Jnt.ro" "Base_01_FK_Jnt_parentConstraint1.cro";
connectAttr "Base_01_FK_Jnt.pim" "Base_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "Base_01_FK_Jnt.rp" "Base_01_FK_Jnt_parentConstraint1.crp";
connectAttr "Base_01_FK_Jnt.rpt" "Base_01_FK_Jnt_parentConstraint1.crt";
connectAttr "Base_01_FK_Jnt.jo" "Base_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "Base_Ctrl.t" "Base_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Base_Ctrl.rp" "Base_01_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Base_Ctrl.rpt" "Base_01_FK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Base_Ctrl.r" "Base_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Base_Ctrl.ro" "Base_01_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Base_Ctrl.s" "Base_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Base_Ctrl.pm" "Base_01_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Base_01_FK_Jnt_parentConstraint1.w0" "Base_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_01_FK_Jnt.ssc" "Base_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Base_01_FK_Jnt.pim" "Base_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Base_Ctrl.s" "Base_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Base_Ctrl.pm" "Base_01_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Base_01_FK_Jnt_scaleConstraint1.w0" "Base_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt.s" "Arm_01_FK_Jnt.is";
connectAttr "Arm_01_FK_Jnt_scaleConstraint1.csx" "Arm_01_FK_Jnt.sx";
connectAttr "Arm_01_FK_Jnt_scaleConstraint1.csy" "Arm_01_FK_Jnt.sy";
connectAttr "Arm_01_FK_Jnt_scaleConstraint1.csz" "Arm_01_FK_Jnt.sz";
connectAttr "Arm_01_FK_Jnt_parentConstraint1.ctx" "Arm_01_FK_Jnt.tx";
connectAttr "Arm_01_FK_Jnt_parentConstraint1.cty" "Arm_01_FK_Jnt.ty";
connectAttr "Arm_01_FK_Jnt_parentConstraint1.ctz" "Arm_01_FK_Jnt.tz";
connectAttr "Arm_01_FK_Jnt_parentConstraint1.crx" "Arm_01_FK_Jnt.rx";
connectAttr "Arm_01_FK_Jnt_parentConstraint1.cry" "Arm_01_FK_Jnt.ry";
connectAttr "Arm_01_FK_Jnt_parentConstraint1.crz" "Arm_01_FK_Jnt.rz";
connectAttr "Arm_01_FK_Jnt.s" "Arm_02_FK_Jnt.is";
connectAttr "Arm_02_FK_Jnt_scaleConstraint1.csx" "Arm_02_FK_Jnt.sx";
connectAttr "Arm_02_FK_Jnt_scaleConstraint1.csy" "Arm_02_FK_Jnt.sy";
connectAttr "Arm_02_FK_Jnt_scaleConstraint1.csz" "Arm_02_FK_Jnt.sz";
connectAttr "Arm_02_FK_Jnt_parentConstraint1.ctx" "Arm_02_FK_Jnt.tx";
connectAttr "Arm_02_FK_Jnt_parentConstraint1.cty" "Arm_02_FK_Jnt.ty";
connectAttr "Arm_02_FK_Jnt_parentConstraint1.ctz" "Arm_02_FK_Jnt.tz";
connectAttr "Arm_02_FK_Jnt_parentConstraint1.crx" "Arm_02_FK_Jnt.rx";
connectAttr "Arm_02_FK_Jnt_parentConstraint1.cry" "Arm_02_FK_Jnt.ry";
connectAttr "Arm_02_FK_Jnt_parentConstraint1.crz" "Arm_02_FK_Jnt.rz";
connectAttr "Arm_02_FK_Jnt.s" "Arm_03_FK_Jnt.is";
connectAttr "Arm_03_FK_Jnt_parentConstraint1.ctx" "Arm_03_FK_Jnt.tx";
connectAttr "Arm_03_FK_Jnt_parentConstraint1.cty" "Arm_03_FK_Jnt.ty";
connectAttr "Arm_03_FK_Jnt_parentConstraint1.ctz" "Arm_03_FK_Jnt.tz";
connectAttr "Arm_03_FK_Jnt_parentConstraint1.crx" "Arm_03_FK_Jnt.rx";
connectAttr "Arm_03_FK_Jnt_parentConstraint1.cry" "Arm_03_FK_Jnt.ry";
connectAttr "Arm_03_FK_Jnt_parentConstraint1.crz" "Arm_03_FK_Jnt.rz";
connectAttr "Arm_03_FK_Jnt_scaleConstraint1.csx" "Arm_03_FK_Jnt.sx";
connectAttr "Arm_03_FK_Jnt_scaleConstraint1.csy" "Arm_03_FK_Jnt.sy";
connectAttr "Arm_03_FK_Jnt_scaleConstraint1.csz" "Arm_03_FK_Jnt.sz";
connectAttr "Arm_03_FK_Jnt.ro" "Arm_03_FK_Jnt_parentConstraint1.cro";
connectAttr "Arm_03_FK_Jnt.pim" "Arm_03_FK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_03_FK_Jnt.rp" "Arm_03_FK_Jnt_parentConstraint1.crp";
connectAttr "Arm_03_FK_Jnt.rpt" "Arm_03_FK_Jnt_parentConstraint1.crt";
connectAttr "Arm_03_FK_Jnt.jo" "Arm_03_FK_Jnt_parentConstraint1.cjo";
connectAttr "Head_Ctrl.t" "Arm_03_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Head_Ctrl.rp" "Arm_03_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Head_Ctrl.rpt" "Arm_03_FK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Head_Ctrl.r" "Arm_03_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Head_Ctrl.ro" "Arm_03_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Head_Ctrl.s" "Arm_03_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Arm_03_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_03_FK_Jnt_parentConstraint1.w0" "Arm_03_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_03_FK_Jnt.ssc" "Arm_03_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_03_FK_Jnt.pim" "Arm_03_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Head_Ctrl.s" "Arm_03_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Head_Ctrl.pm" "Arm_03_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_03_FK_Jnt_scaleConstraint1.w0" "Arm_03_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_02_FK_Jnt.ro" "Arm_02_FK_Jnt_parentConstraint1.cro";
connectAttr "Arm_02_FK_Jnt.pim" "Arm_02_FK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_02_FK_Jnt.rp" "Arm_02_FK_Jnt_parentConstraint1.crp";
connectAttr "Arm_02_FK_Jnt.rpt" "Arm_02_FK_Jnt_parentConstraint1.crt";
connectAttr "Arm_02_FK_Jnt.jo" "Arm_02_FK_Jnt_parentConstraint1.cjo";
connectAttr "Elbow_Ctrl.t" "Arm_02_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Elbow_Ctrl.rp" "Arm_02_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Elbow_Ctrl.rpt" "Arm_02_FK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Elbow_Ctrl.r" "Arm_02_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Elbow_Ctrl.ro" "Arm_02_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Elbow_Ctrl.s" "Arm_02_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Elbow_Ctrl.pm" "Arm_02_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_02_FK_Jnt_parentConstraint1.w0" "Arm_02_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_02_FK_Jnt.ssc" "Arm_02_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_02_FK_Jnt.pim" "Arm_02_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Elbow_Ctrl.s" "Arm_02_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Elbow_Ctrl.pm" "Arm_02_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_02_FK_Jnt_scaleConstraint1.w0" "Arm_02_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_01_FK_Jnt.ro" "Arm_01_FK_Jnt_parentConstraint1.cro";
connectAttr "Arm_01_FK_Jnt.pim" "Arm_01_FK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_01_FK_Jnt.rp" "Arm_01_FK_Jnt_parentConstraint1.crp";
connectAttr "Arm_01_FK_Jnt.rpt" "Arm_01_FK_Jnt_parentConstraint1.crt";
connectAttr "Arm_01_FK_Jnt.jo" "Arm_01_FK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_Ctrl.t" "Arm_01_FK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_Ctrl.rp" "Arm_01_FK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_Ctrl.rpt" "Arm_01_FK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_Ctrl.r" "Arm_01_FK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_Ctrl.ro" "Arm_01_FK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_Ctrl.s" "Arm_01_FK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_Ctrl.pm" "Arm_01_FK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_01_FK_Jnt_parentConstraint1.w0" "Arm_01_FK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_01_FK_Jnt.ssc" "Arm_01_FK_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_01_FK_Jnt.pim" "Arm_01_FK_Jnt_scaleConstraint1.cpim";
connectAttr "Arm_Ctrl.s" "Arm_01_FK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Arm_Ctrl.pm" "Arm_01_FK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_01_FK_Jnt_scaleConstraint1.w0" "Arm_01_FK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "COG_Jnt.ro" "COG_Jnt_parentConstraint1.cro";
connectAttr "COG_Jnt.pim" "COG_Jnt_parentConstraint1.cpim";
connectAttr "COG_Jnt.rp" "COG_Jnt_parentConstraint1.crp";
connectAttr "COG_Jnt.rpt" "COG_Jnt_parentConstraint1.crt";
connectAttr "COG_Jnt.jo" "COG_Jnt_parentConstraint1.cjo";
connectAttr "COG_Ctrl.t" "COG_Jnt_parentConstraint1.tg[0].tt";
connectAttr "COG_Ctrl.rp" "COG_Jnt_parentConstraint1.tg[0].trp";
connectAttr "COG_Ctrl.rpt" "COG_Jnt_parentConstraint1.tg[0].trt";
connectAttr "COG_Ctrl.r" "COG_Jnt_parentConstraint1.tg[0].tr";
connectAttr "COG_Ctrl.ro" "COG_Jnt_parentConstraint1.tg[0].tro";
connectAttr "COG_Ctrl.s" "COG_Jnt_parentConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "COG_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "COG_Jnt_parentConstraint1.w0" "COG_Jnt_parentConstraint1.tg[0].tw";
connectAttr "COG_Jnt.ssc" "COG_Jnt_scaleConstraint1.tsc";
connectAttr "COG_Jnt.pim" "COG_Jnt_scaleConstraint1.cpim";
connectAttr "COG_Ctrl.s" "COG_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "COG_Ctrl.pm" "COG_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "COG_Jnt_scaleConstraint1.w0" "COG_Jnt_scaleConstraint1.tg[0].tw";
connectAttr "Arm_01_RK_Jnt_parentConstraint1.cty" "Arm_01_RK_Jnt.ty";
connectAttr "Arm_01_RK_Jnt_parentConstraint1.ctx" "Arm_01_RK_Jnt.tx";
connectAttr "Arm_01_RK_Jnt_parentConstraint1.ctz" "Arm_01_RK_Jnt.tz";
connectAttr "Arm_01_RK_Jnt_parentConstraint1.crz" "Arm_01_RK_Jnt.rz";
connectAttr "Arm_01_RK_Jnt_parentConstraint1.crx" "Arm_01_RK_Jnt.rx";
connectAttr "Arm_01_RK_Jnt_parentConstraint1.cry" "Arm_01_RK_Jnt.ry";
connectAttr "Arm_01_RK_Jnt_scaleConstraint1.csx" "Arm_01_RK_Jnt.sx";
connectAttr "Arm_01_RK_Jnt_scaleConstraint1.csy" "Arm_01_RK_Jnt.sy";
connectAttr "Arm_01_RK_Jnt_scaleConstraint1.csz" "Arm_01_RK_Jnt.sz";
connectAttr "ROOT.s" "Arm_01_RK_Jnt.is";
connectAttr "Arm_01_RK_Jnt.s" "Arm_02_Rk_Jnt.is";
connectAttr "Arm_02_Rk_Jnt_scaleConstraint1.csx" "Arm_02_Rk_Jnt.sx";
connectAttr "Arm_02_Rk_Jnt_scaleConstraint1.csy" "Arm_02_Rk_Jnt.sy";
connectAttr "Arm_02_Rk_Jnt_scaleConstraint1.csz" "Arm_02_Rk_Jnt.sz";
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.ctx" "Arm_02_Rk_Jnt.tx";
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.cty" "Arm_02_Rk_Jnt.ty";
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.ctz" "Arm_02_Rk_Jnt.tz";
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.crx" "Arm_02_Rk_Jnt.rx";
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.cry" "Arm_02_Rk_Jnt.ry";
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.crz" "Arm_02_Rk_Jnt.rz";
connectAttr "Arm_03_RK_Jnt_scaleConstraint1.csx" "Arm_03_RK_Jnt.sx";
connectAttr "Arm_03_RK_Jnt_scaleConstraint1.csy" "Arm_03_RK_Jnt.sy";
connectAttr "Arm_03_RK_Jnt_scaleConstraint1.csz" "Arm_03_RK_Jnt.sz";
connectAttr "Arm_03_RK_Jnt_parentConstraint1.crx" "Arm_03_RK_Jnt.rx";
connectAttr "Arm_03_RK_Jnt_parentConstraint1.cry" "Arm_03_RK_Jnt.ry";
connectAttr "Arm_03_RK_Jnt_parentConstraint1.crz" "Arm_03_RK_Jnt.rz";
connectAttr "Arm_02_Rk_Jnt.s" "Arm_03_RK_Jnt.is";
connectAttr "Arm_03_RK_Jnt_parentConstraint1.ctx" "Arm_03_RK_Jnt.tx";
connectAttr "Arm_03_RK_Jnt_parentConstraint1.cty" "Arm_03_RK_Jnt.ty";
connectAttr "Arm_03_RK_Jnt_parentConstraint1.ctz" "Arm_03_RK_Jnt.tz";
connectAttr "Arm_03_RK_Jnt.ro" "Arm_03_RK_Jnt_parentConstraint1.cro";
connectAttr "Arm_03_RK_Jnt.pim" "Arm_03_RK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_03_RK_Jnt.rp" "Arm_03_RK_Jnt_parentConstraint1.crp";
connectAttr "Arm_03_RK_Jnt.rpt" "Arm_03_RK_Jnt_parentConstraint1.crt";
connectAttr "Arm_03_RK_Jnt.jo" "Arm_03_RK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_03_IK_Jnt.t" "Arm_03_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_03_IK_Jnt.rp" "Arm_03_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_03_IK_Jnt.rpt" "Arm_03_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_03_IK_Jnt.r" "Arm_03_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_03_IK_Jnt.ro" "Arm_03_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_03_IK_Jnt.s" "Arm_03_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_03_IK_Jnt.pm" "Arm_03_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_03_IK_Jnt.jo" "Arm_03_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "Arm_03_IK_Jnt.ssc" "Arm_03_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "Arm_03_IK_Jnt.is" "Arm_03_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "Arm_03_RK_Jnt_parentConstraint1.w0" "Arm_03_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_03_FK_Jnt.t" "Arm_03_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "Arm_03_FK_Jnt.rp" "Arm_03_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "Arm_03_FK_Jnt.rpt" "Arm_03_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "Arm_03_FK_Jnt.r" "Arm_03_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "Arm_03_FK_Jnt.ro" "Arm_03_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "Arm_03_FK_Jnt.s" "Arm_03_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "Arm_03_FK_Jnt.pm" "Arm_03_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "Arm_03_FK_Jnt.jo" "Arm_03_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "Arm_03_FK_Jnt.ssc" "Arm_03_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "Arm_03_FK_Jnt.is" "Arm_03_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "Arm_03_RK_Jnt_parentConstraint1.w1" "Arm_03_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Arm_IKFK_Rev.ox" "Arm_03_RK_Jnt_parentConstraint1.w0";
connectAttr "Transform_Ctrl.Arm_IKFK" "Arm_03_RK_Jnt_parentConstraint1.w1";
connectAttr "Arm_03_RK_Jnt.ssc" "Arm_03_RK_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_03_RK_Jnt.pim" "Arm_03_RK_Jnt_scaleConstraint1.cpim";
connectAttr "Arm_03_IK_Jnt.s" "Arm_03_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Arm_03_IK_Jnt.pm" "Arm_03_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_03_RK_Jnt_scaleConstraint1.w0" "Arm_03_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_03_FK_Jnt.s" "Arm_03_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "Arm_03_FK_Jnt.pm" "Arm_03_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "Arm_03_RK_Jnt_scaleConstraint1.w1" "Arm_03_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "Arm_IKFK_Rev.ox" "Arm_03_RK_Jnt_scaleConstraint1.w0";
connectAttr "Transform_Ctrl.Arm_IKFK" "Arm_03_RK_Jnt_scaleConstraint1.w1";
connectAttr "Arm_02_Rk_Jnt.ro" "Arm_02_Rk_Jnt_parentConstraint1.cro";
connectAttr "Arm_02_Rk_Jnt.pim" "Arm_02_Rk_Jnt_parentConstraint1.cpim";
connectAttr "Arm_02_Rk_Jnt.rp" "Arm_02_Rk_Jnt_parentConstraint1.crp";
connectAttr "Arm_02_Rk_Jnt.rpt" "Arm_02_Rk_Jnt_parentConstraint1.crt";
connectAttr "Arm_02_Rk_Jnt.jo" "Arm_02_Rk_Jnt_parentConstraint1.cjo";
connectAttr "Arm_02_IK_Jnt.t" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_02_IK_Jnt.rp" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_02_IK_Jnt.rpt" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_02_IK_Jnt.r" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_02_IK_Jnt.ro" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_02_IK_Jnt.s" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_02_IK_Jnt.pm" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_02_IK_Jnt.jo" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "Arm_02_IK_Jnt.ssc" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "Arm_02_IK_Jnt.is" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].tis";
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.w0" "Arm_02_Rk_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_02_FK_Jnt.t" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].tt";
connectAttr "Arm_02_FK_Jnt.rp" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].trp";
connectAttr "Arm_02_FK_Jnt.rpt" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].trt";
connectAttr "Arm_02_FK_Jnt.r" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].tr";
connectAttr "Arm_02_FK_Jnt.ro" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].tro";
connectAttr "Arm_02_FK_Jnt.s" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].ts";
connectAttr "Arm_02_FK_Jnt.pm" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "Arm_02_FK_Jnt.jo" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "Arm_02_FK_Jnt.ssc" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "Arm_02_FK_Jnt.is" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].tis";
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.w1" "Arm_02_Rk_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Arm_IKFK_Rev.ox" "Arm_02_Rk_Jnt_parentConstraint1.w0";
connectAttr "Transform_Ctrl.Arm_IKFK" "Arm_02_Rk_Jnt_parentConstraint1.w1";
connectAttr "Arm_02_Rk_Jnt.ssc" "Arm_02_Rk_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_02_Rk_Jnt.pim" "Arm_02_Rk_Jnt_scaleConstraint1.cpim";
connectAttr "Arm_02_IK_Jnt.s" "Arm_02_Rk_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Arm_02_IK_Jnt.pm" "Arm_02_Rk_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_02_Rk_Jnt_scaleConstraint1.w0" "Arm_02_Rk_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_02_FK_Jnt.s" "Arm_02_Rk_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "Arm_02_FK_Jnt.pm" "Arm_02_Rk_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "Arm_02_Rk_Jnt_scaleConstraint1.w1" "Arm_02_Rk_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "Arm_IKFK_Rev.ox" "Arm_02_Rk_Jnt_scaleConstraint1.w0";
connectAttr "Transform_Ctrl.Arm_IKFK" "Arm_02_Rk_Jnt_scaleConstraint1.w1";
connectAttr "Arm_01_RK_Jnt.ro" "Arm_01_RK_Jnt_parentConstraint1.cro";
connectAttr "Arm_01_RK_Jnt.pim" "Arm_01_RK_Jnt_parentConstraint1.cpim";
connectAttr "Arm_01_RK_Jnt.rp" "Arm_01_RK_Jnt_parentConstraint1.crp";
connectAttr "Arm_01_RK_Jnt.rpt" "Arm_01_RK_Jnt_parentConstraint1.crt";
connectAttr "Arm_01_RK_Jnt.jo" "Arm_01_RK_Jnt_parentConstraint1.cjo";
connectAttr "Arm_01_IK_Jnt.t" "Arm_01_RK_Jnt_parentConstraint1.tg[0].tt";
connectAttr "Arm_01_IK_Jnt.rp" "Arm_01_RK_Jnt_parentConstraint1.tg[0].trp";
connectAttr "Arm_01_IK_Jnt.rpt" "Arm_01_RK_Jnt_parentConstraint1.tg[0].trt";
connectAttr "Arm_01_IK_Jnt.r" "Arm_01_RK_Jnt_parentConstraint1.tg[0].tr";
connectAttr "Arm_01_IK_Jnt.ro" "Arm_01_RK_Jnt_parentConstraint1.tg[0].tro";
connectAttr "Arm_01_IK_Jnt.s" "Arm_01_RK_Jnt_parentConstraint1.tg[0].ts";
connectAttr "Arm_01_IK_Jnt.pm" "Arm_01_RK_Jnt_parentConstraint1.tg[0].tpm";
connectAttr "Arm_01_IK_Jnt.jo" "Arm_01_RK_Jnt_parentConstraint1.tg[0].tjo";
connectAttr "Arm_01_IK_Jnt.ssc" "Arm_01_RK_Jnt_parentConstraint1.tg[0].tsc";
connectAttr "Arm_01_IK_Jnt.is" "Arm_01_RK_Jnt_parentConstraint1.tg[0].tis";
connectAttr "Arm_01_RK_Jnt_parentConstraint1.w0" "Arm_01_RK_Jnt_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_01_FK_Jnt.t" "Arm_01_RK_Jnt_parentConstraint1.tg[1].tt";
connectAttr "Arm_01_FK_Jnt.rp" "Arm_01_RK_Jnt_parentConstraint1.tg[1].trp";
connectAttr "Arm_01_FK_Jnt.rpt" "Arm_01_RK_Jnt_parentConstraint1.tg[1].trt";
connectAttr "Arm_01_FK_Jnt.r" "Arm_01_RK_Jnt_parentConstraint1.tg[1].tr";
connectAttr "Arm_01_FK_Jnt.ro" "Arm_01_RK_Jnt_parentConstraint1.tg[1].tro";
connectAttr "Arm_01_FK_Jnt.s" "Arm_01_RK_Jnt_parentConstraint1.tg[1].ts";
connectAttr "Arm_01_FK_Jnt.pm" "Arm_01_RK_Jnt_parentConstraint1.tg[1].tpm";
connectAttr "Arm_01_FK_Jnt.jo" "Arm_01_RK_Jnt_parentConstraint1.tg[1].tjo";
connectAttr "Arm_01_FK_Jnt.ssc" "Arm_01_RK_Jnt_parentConstraint1.tg[1].tsc";
connectAttr "Arm_01_FK_Jnt.is" "Arm_01_RK_Jnt_parentConstraint1.tg[1].tis";
connectAttr "Arm_01_RK_Jnt_parentConstraint1.w1" "Arm_01_RK_Jnt_parentConstraint1.tg[1].tw"
		;
connectAttr "Arm_IKFK_Rev.ox" "Arm_01_RK_Jnt_parentConstraint1.w0";
connectAttr "Transform_Ctrl.Arm_IKFK" "Arm_01_RK_Jnt_parentConstraint1.w1";
connectAttr "Arm_01_RK_Jnt.ssc" "Arm_01_RK_Jnt_scaleConstraint1.tsc";
connectAttr "Arm_01_RK_Jnt.pim" "Arm_01_RK_Jnt_scaleConstraint1.cpim";
connectAttr "Arm_01_IK_Jnt.s" "Arm_01_RK_Jnt_scaleConstraint1.tg[0].ts";
connectAttr "Arm_01_IK_Jnt.pm" "Arm_01_RK_Jnt_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_01_RK_Jnt_scaleConstraint1.w0" "Arm_01_RK_Jnt_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_01_FK_Jnt.s" "Arm_01_RK_Jnt_scaleConstraint1.tg[1].ts";
connectAttr "Arm_01_FK_Jnt.pm" "Arm_01_RK_Jnt_scaleConstraint1.tg[1].tpm";
connectAttr "Arm_01_RK_Jnt_scaleConstraint1.w1" "Arm_01_RK_Jnt_scaleConstraint1.tg[1].tw"
		;
connectAttr "Arm_IKFK_Rev.ox" "Arm_01_RK_Jnt_scaleConstraint1.w0";
connectAttr "Transform_Ctrl.Arm_IKFK" "Arm_01_RK_Jnt_scaleConstraint1.w1";
connectAttr "Transform_Ctrl.Arm_IKFK" "FK_Main_Ctrl_Grp.v";
connectAttr "Arm_IKFK_Rev.ox" "IK_Main_Ctrl_Grp.v";
connectAttr "Arm_01_IK_Jnt.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "Arm_01_IK_Jnt.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "Arm_01_IK_Jnt.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "Pole_Vector_Ctrl.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "Pole_Vector_Ctrl.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "Pole_Vector_Ctrl.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "Pole_Vector_Ctrl.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Arm_03_RK_Jnt.t" "head_geo_parentConstraint1.tg[0].tt";
connectAttr "Arm_03_RK_Jnt.rp" "head_geo_parentConstraint1.tg[0].trp";
connectAttr "Arm_03_RK_Jnt.rpt" "head_geo_parentConstraint1.tg[0].trt";
connectAttr "Arm_03_RK_Jnt.r" "head_geo_parentConstraint1.tg[0].tr";
connectAttr "Arm_03_RK_Jnt.ro" "head_geo_parentConstraint1.tg[0].tro";
connectAttr "Arm_03_RK_Jnt.s" "head_geo_parentConstraint1.tg[0].ts";
connectAttr "Arm_03_RK_Jnt.pm" "head_geo_parentConstraint1.tg[0].tpm";
connectAttr "Arm_03_RK_Jnt.jo" "head_geo_parentConstraint1.tg[0].tjo";
connectAttr "Arm_03_RK_Jnt.ssc" "head_geo_parentConstraint1.tg[0].tsc";
connectAttr "Arm_03_RK_Jnt.is" "head_geo_parentConstraint1.tg[0].tis";
connectAttr "head_geo_parentConstraint1.w0" "head_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_03_RK_Jnt.s" "head_geo_scaleConstraint1.tg[0].ts";
connectAttr "Arm_03_RK_Jnt.pm" "head_geo_scaleConstraint1.tg[0].tpm";
connectAttr "head_geo_scaleConstraint1.w0" "head_geo_scaleConstraint1.tg[0].tw";
connectAttr "Arm_02_Rk_Jnt.t" "upper_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "Arm_02_Rk_Jnt.rp" "upper_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "Arm_02_Rk_Jnt.rpt" "upper_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "Arm_02_Rk_Jnt.r" "upper_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "Arm_02_Rk_Jnt.ro" "upper_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "Arm_02_Rk_Jnt.s" "upper_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "Arm_02_Rk_Jnt.pm" "upper_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "Arm_02_Rk_Jnt.jo" "upper_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "Arm_02_Rk_Jnt.ssc" "upper_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "Arm_02_Rk_Jnt.is" "upper_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "upper_arm_geo_parentConstraint1.w0" "upper_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_02_Rk_Jnt.s" "upper_arm_geo_scaleConstraint1.tg[0].ts";
connectAttr "Arm_02_Rk_Jnt.pm" "upper_arm_geo_scaleConstraint1.tg[0].tpm";
connectAttr "upper_arm_geo_scaleConstraint1.w0" "upper_arm_geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_01_RK_Jnt.t" "lower_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "Arm_01_RK_Jnt.rp" "lower_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "Arm_01_RK_Jnt.rpt" "lower_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "Arm_01_RK_Jnt.r" "lower_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "Arm_01_RK_Jnt.ro" "lower_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "Arm_01_RK_Jnt.s" "lower_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "Arm_01_RK_Jnt.pm" "lower_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "Arm_01_RK_Jnt.jo" "lower_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "Arm_01_RK_Jnt.ssc" "lower_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "Arm_01_RK_Jnt.is" "lower_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "lower_arm_geo_parentConstraint1.w0" "lower_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_01_RK_Jnt.s" "lower_arm_geo_scaleConstraint1.tg[0].ts";
connectAttr "Arm_01_RK_Jnt.pm" "lower_arm_geo_scaleConstraint1.tg[0].tpm";
connectAttr "lower_arm_geo_scaleConstraint1.w0" "lower_arm_geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "Base_01_FK_Jnt.t" "base_geo_parentConstraint1.tg[0].tt";
connectAttr "Base_01_FK_Jnt.rp" "base_geo_parentConstraint1.tg[0].trp";
connectAttr "Base_01_FK_Jnt.rpt" "base_geo_parentConstraint1.tg[0].trt";
connectAttr "Base_01_FK_Jnt.r" "base_geo_parentConstraint1.tg[0].tr";
connectAttr "Base_01_FK_Jnt.ro" "base_geo_parentConstraint1.tg[0].tro";
connectAttr "Base_01_FK_Jnt.s" "base_geo_parentConstraint1.tg[0].ts";
connectAttr "Base_01_FK_Jnt.pm" "base_geo_parentConstraint1.tg[0].tpm";
connectAttr "Base_01_FK_Jnt.jo" "base_geo_parentConstraint1.tg[0].tjo";
connectAttr "Base_01_FK_Jnt.ssc" "base_geo_parentConstraint1.tg[0].tsc";
connectAttr "Base_01_FK_Jnt.is" "base_geo_parentConstraint1.tg[0].tis";
connectAttr "base_geo_parentConstraint1.w0" "base_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "Base_01_FK_Jnt.s" "base_geo_scaleConstraint1.tg[0].ts";
connectAttr "Base_01_FK_Jnt.pm" "base_geo_scaleConstraint1.tg[0].tpm";
connectAttr "base_geo_scaleConstraint1.w0" "base_geo_scaleConstraint1.tg[0].tw";
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
connectAttr "layerManager.dli[4]" "Joints.id";
connectAttr "Transform_Ctrl.Arm_IKFK" "Arm_IKFK_Rev.ix";
connectAttr "Arm_02_Rk_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Arm_01_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Arm_01_RK_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "FK_Main_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Transform_Ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "Arm_IKFK_Rev.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "IK_Main_Ctrl_Grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Arm_03_RK_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Arm_03_RK_Jnt_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Arm_02_Rk_Jnt_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Arm_IKFK_Rev.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Lamp_Rig_the_Second.ma
