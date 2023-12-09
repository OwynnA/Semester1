//Maya ASCII 2023 scene
//Name: game_animations_final.ma
//Last modified: Sat, Dec 02, 2023 04:17:39 AM
//Codeset: UTF-8
file -rdi 1 -ns "Ultimate_Walker_Rig" -rfn "Ultimate_Walker_RigRN" -op "v=0;"
		 -typ "mayaAscii" "/Users/owynnarmstrong/Downloads/Ultimate_Walker_Rig.ma";
file -r -ns "Ultimate_Walker_Rig" -dr 1 -rfn "Ultimate_Walker_RigRN" -op "v=0;" 
		-typ "mayaAscii" "/Users/owynnarmstrong/Downloads/Ultimate_Walker_Rig.ma";
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
fileInfo "UUID" "EAD4B80D-AA4C-CB06-8B4B-0A9B13BA4E36";
createNode transform -s -n "persp";
	rename -uid "D179E156-ED46-AAAE-5D4E-AEA3756F8A52";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.895243469980596 4.017929203073999 -11.709639054670928 ;
	setAttr ".r" -type "double3" -8.738352724686294 -225.40000000024293 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "399788CA-0B48-1290-DDB1-FA8C4CD18AC0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 16.644402576610617;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "9BD92EF8-2446-C2F6-2CA0-91B52C87D93D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CEBEBF52-2F49-C59F-2731-8A89EFBE73FF";
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
	rename -uid "1E13452A-7946-A0C7-D162-578E26499EB3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D6B92009-CA4D-9A2C-26FD-B3A85684167A";
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
	rename -uid "B4B38113-884B-9438-D282-F7915989A976";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "452E080A-2745-D0C7-BF7A-96B2AE05CD93";
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
	rename -uid "9624135B-F64D-EC25-2A2A-C58B2F5B9A0B";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DF584001-8149-72B8-36F2-B8AAF9B8251B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "06BA9625-594F-90F6-BBCE-A5BA706D376A";
createNode displayLayerManager -n "layerManager";
	rename -uid "39979C14-104F-5F02-302F-979D3D82AC93";
createNode displayLayer -n "defaultLayer";
	rename -uid "EBE5319A-324C-5E11-1FB0-3B8BB9A6DF87";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "76C9336B-314A-6B15-3736-B0A9C241C27E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "50E1B760-944C-A1CE-5C60-54A217A16A5E";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C533CF83-614E-0FA0-9926-4496CA9A3DF4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n"
		+ "            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1960\n            -height 1350\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1960\\n    -height 1350\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1960\\n    -height 1350\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C27920A4-BD4F-0F5B-78E3-1DBB51DB7962";
	setAttr ".b" -type "string" "playbackOptions -min 83 -max 110 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode reference -n "Ultimate_Walker_RigRN";
	rename -uid "17F56EEF-AC49-85C5-A115-F58814D1C64C";
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
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotateX" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotateY" 
		" -k 0 -cb 1"
		2 "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:CTRL_Root" "rotateZ" 
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
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateZ" 
		"Ultimate_Walker_RigRN.placeHolderList[43]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateX" 
		"Ultimate_Walker_RigRN.placeHolderList[44]" ""
		5 4 "Ultimate_Walker_RigRN" "|Ultimate_Walker_Rig:AniM_walker_Main|Ultimate_Walker_Rig:Body_Rig_Grp|Ultimate_Walker_Rig:CNT_Grp|Ultimate_Walker_Rig:CTRL_Main_Grp|Ultimate_Walker_Rig:CTRL_Main.rotateY" 
		"Ultimate_Walker_RigRN.placeHolderList[45]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "8B13BA71-4074-7CF8-35B7-E188243909E9";
	setAttr ".version" -type "string" "4.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "06599E1B-469C-B34C-56F3-D09CEB8D969B";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "6671EB45-48EB-E840-8929-CAB878C3BFE0";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "1C169AC2-4C0A-6AE0-71B2-4A9F83AB039C";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode animCurveTA -n "CTRL_Main_rotateX";
	rename -uid "BF49CF31-9F48-79AA-C3C8-88AADA96189E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 10 0 18 0 19 0 23 -30.167358431917112 25 -24.292561928103016 30 0 35 0 44 0 53 0
		 54 0 55 0 57 -26.977617215486877 58 -26.977617215486877 59 0 65 0 71 0 77 0 82 0
		 83 0 84 1.9394456533705748 85.625 8.9755458808734705 87.25 21.550676895714204 88.875 34.744106235148983
		 90.5 48.039860383012133 92.125 74.877267332928596 93.75 88.660164847099907 95.375 103.57722275115367
		 97 103.57722275115367 98.625 103.57722275115367 100.25 103.57722275115367 101.875 103.57722275115367
		 110 103.57722275115367;
	setAttr -s 39 ".kit[10:38]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18;
	setAttr -s 39 ".kot[10:38]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 1 18 1 18 
		18 18 18 18;
	setAttr -s 39 ".kix[10:38]"  0.26090586230280172 0.48457069195507357 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.57247139682432091 0.36788547777477765 0.28831031063631185 
		0.28109468976972579 0.18981191304432468 0.18761616902360956 0.26097355889482321 0.231164745230794 
		1 1 1 1 1;
	setAttr -s 39 ".kiy[10:38]"  -0.96536424784432096 0.87475210459774333 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.81992469155283443 0.92987110678976559 0.95753703050106276 
		0.95968003802478963 0.98182047119952309 0.98224242075004298 0.96534594915904126 0.97291462141463469 
		0 0 0 0 0;
	setAttr -s 39 ".kox[10:38]"  0.66069876194452448 0.48457069195507352 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.57247139682432102 0.3678854777747777 0.28831031063631185 
		0.28109468976972579 0.18981191304432468 0.27542995727366026 0.26097355889482321 0.2311652049526137 
		1 1 1 1 1;
	setAttr -s 39 ".koy[10:38]"  0.75065114798085308 0.87475210459774322 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.81992469155283454 0.92987110678976559 0.95753703050106287 
		0.95968003802478963 0.9818204711995232 0.96132114230169197 0.96534594915904126 0.97291451218450653 
		0 0 0 0 0;
createNode animCurveTA -n "CTRL_Main_rotateY";
	rename -uid "EBA93BEB-6448-2004-0ECC-B69FCD27254C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 10 0 18 0 19 0 23 0 25 0 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 65 0 71 0 77 0
		 82 0 83 0 84 -0.43178321008225368 85.625 -1.9459929549394577 87.25 -3.652291153894248
		 88.875 -5.3704350890096899 90.5 -7.074793647534328 92.125 -10.357881792647984 93.75 -11.794493277806035
		 95.375 -12.590798405998605 97 -12.590798405998605 98.625 -12.590798405998605 100.25 -12.590798405998605
		 101.875 -12.590798405998605 110 -12.590798405998605;
	setAttr -s 39 ".kit[10:38]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18;
	setAttr -s 39 ".kot[10:38]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 1 18 1 18 
		18 18 18 18;
	setAttr -s 39 ".kix[10:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.95501464245625334 
		0.92359703586237629 0.91485506018283469 0.91493953272719697 0.84119600850666854 0.85434769748690553 
		0.96099491587080565 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[10:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.29655864967010231 
		-0.38336472887608231 -0.40378239047519382 -0.40359094570237641 -0.54073031658346016 
		-0.51970184894689675 -0.27656603491835896 0 0 0 0 0 0;
	setAttr -s 39 ".kox[10:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.95501464245625334 
		0.9235970358623764 0.91485506018283469 0.91493953272719697 0.84119600850666831 0.92669739866433165 
		0.96099491587080565 1 1 1 1 1 1;
	setAttr -s 39 ".koy[10:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.29655864967010226 
		-0.38336472887608236 -0.40378239047519382 -0.40359094570237641 -0.54073031658346005 
		-0.37580837046127763 -0.27656603491835896 0 0 0 0 0 0;
createNode animCurveTL -n "CTRL_Main_translateX";
	rename -uid "B7D228F3-7344-6BBD-B700-95B088C7E423";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 10 0 18 0 19 0 23 0 25 0 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 65 0 71 0 77 0
		 82 0 83 0 84 0 85.625 0 87.25 0 88.875 0 90.5 0 92.125 0 93.75 0 95.375 0 97 0 98.625 0
		 100.25 0 101.875 0 110 0;
	setAttr -s 39 ".kit[10:38]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18;
	setAttr -s 39 ".kot[10:38]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 1 18 1 18 
		18 18 18 18;
	setAttr -s 39 ".kix[10:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[10:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 39 ".kox[10:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[10:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "CTRL_Main_translateY";
	rename -uid "964889BB-6F4B-EE7F-4A75-CFB952219D96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 43 ".ktv[0:42]"  0 0.073888746400146754 1.6363630952380952 0.2397189675798459
		 3.2727273809523809 0.28690482725909883 4.9090904761904763 0.025947211836398199 6.5454547619047618 -0.24727172898076533
		 8.1818178571428568 -0.027052696896736561 9.8181821428571432 0.073797399233119829
		 10 0.079447167463761043 11.454545238095237 0.24 13.090909523809524 0.287 14.72727261904762 0.026
		 16.363636904761904 -0.247 18 0.024 19 0 23 -0.98010875689462007 25 -0.81910216097925759
		 30 0.52901346412774863 35 0.52901346412774863 44 0.52901346412774863 53 0.52901346412774863
		 54 0.45175059807935614 55 0.12518433773313964 57 -0.44467898075794787 58 -1.1815085852535709
		 59 -0.19056858336214155 65 -0.26609643592815457 71 -0.19056858336214155 77 -0.29125310501395374
		 82 -0.1980266960770907 83 0 84 0.017440583288128267 85.625 -0.062140130008959071
		 87.25 -0.35448080025169287 88.875 -0.62435590555562426 90.5 -1.0395209370847822 92.125 -1.62930162187698
		 93.75 -1.8874016759596064 95.375 -2.0304660947133404 97 -1.7546273920585198 98.625 -1.9901422815206273
		 100.25 -1.9336072185354287 101.875 -2.0486574945831162 110 -2.0486574945831162;
	setAttr -s 43 ".kit[14:42]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18;
	setAttr -s 43 ".kot[14:42]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 1 18 1 18 
		18 18 18 18;
	setAttr -s 43 ".kix[14:42]"  1 0.18975757152422468 1 1 1 1 0.20209970188057796 
		0.1827903241563551 0.12652342945827344 1 1 1 1 1 0.65132360045614357 1 1 0.34212801505270801 
		0.23416567634220437 0.19392437706677124 0.13354327020681364 0.15771312770888085 0.3198288037684075 
		1 1 1 1 1 1;
	setAttr -s 43 ".kiy[14:42]"  0 0.98183097529525354 0 0 0 0 -0.97936495266053991 
		-0.983151919794095 -0.99196361919080345 0 0 0 0 0 0.75880008400687848 0 0 -0.93965335167608166 
		-0.97219670644535627 -0.98101648099268168 -0.99104298341821184 -0.98748497170756089 
		-0.94747534863977845 0 0 0 0 0 0;
	setAttr -s 43 ".kox[14:42]"  1 0.18975757152422468 1 1 1 1 0.20209970188057796 
		0.1827903241563551 0.12652342945827344 1 1 1 1 1 0.65132360045614357 1 1 0.34212801505270801 
		0.23416567634220434 0.19392437706677124 0.13354327020681364 0.23297552146346059 0.3198288037684075 
		1 1 1 1 1 1;
	setAttr -s 43 ".koy[14:42]"  0 0.98183097529525354 0 0 0 0 -0.97936495266053991 
		-0.983151919794095 -0.99196361919080345 0 0 0 0 0 0.75880008400687848 0 0 -0.93965335167608166 
		-0.97219670644535605 -0.98101648099268168 -0.99104298341821184 -0.97248259953524552 
		-0.94747534863977845 0 0 0 0 0 0;
createNode animCurveTL -n "CTRL_Main_translateZ";
	rename -uid "4493F9E3-8647-C54F-2423-7F8619F8DFD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 10 0 18 0 19 0 23 -0.079380648884361249 25 -0.23793729674984263 30 -0.38626903580346988
		 35 -0.41399768793650876 44 -0.41399768793650876 53 -0.41399768793650876 54 -0.41399768793650876
		 55 -0.41399768793650876 57 -0.51118909291845549 58 -0.51118909291845549 59 0 65 -0.088189124472254965
		 71 0 77 0.11353605230009634 82 0.022329957536975975 83 0 84 0.11356850210214425 85.625 0.5031911319266974
		 87.25 1.2395259735193092 88.875 1.715633161675076 90.5 1.9970251813229583 92.125 2.3375038008890816
		 93.75 2.4040790722401493 95.375 2.4066733249586933 97 2.6590948034087742 98.625 2.8052160823696792
		 100.25 2.8866172731169772 101.875 2.969913807137547 110 3.2782653404144293;
	setAttr -s 39 ".kit[10:38]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18;
	setAttr -s 39 ".kot[10:38]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 1 18 1 18 
		18 18 18 18;
	setAttr -s 39 ".kix[10:38]"  1 0.68890177732673796 1 1 1 1 1 1 1 1 1 
		1 1 1 0.91050405350418051 1 0.21240298537800001 0.11940753354050701 0.11099900729291762 
		0.17597822012876307 0.21277080156684797 0.3210591325497259 0.99345853373043758 1 
		0.32171560000161709 0.51144656015388135 0.635101306922774 0.71992664345979773 1;
	setAttr -s 39 ".kiy[10:38]"  0 -0.72485470350688996 0 0 0 0 0 0 0 0 
		0 0 0 0 -0.41350014335240143 0 0.97718215896654248 0.99284532578532736 0.99382051718606967 
		0.98439406034388122 0.97710213693380132 0.94705914989847251 0.1141934400837856 0 
		0.94683634949002637 0.85931508546444257 0.77242885105683645 0.69405016247869944 0;
	setAttr -s 39 ".kox[10:38]"  1 0.68890177732673796 1 1 1 1 1 1 1 1 1 
		1 1 1 0.91050405350418051 1 0.21240298537800001 0.119407533540507 0.11099900729291762 
		0.17597822012876307 0.21277080156684797 0.99518808251218671 0.99345853373043758 1 
		0.32171560000161714 0.51144656015388135 0.63510130692277389 0.71992664345979784 1;
	setAttr -s 39 ".koy[10:38]"  0 -0.72485470350689007 0 0 0 0 0 0 0 0 
		0 0 0 0 -0.41350014335240137 0 0.97718215896654248 0.99284532578532736 0.99382051718606967 
		0.98439406034388122 0.97710213693380132 0.097983061932748153 0.1141934400837856 0 
		0.94683634949002637 0.85931508546444257 0.77242885105683645 0.69405016247869944 0;
createNode animCurveTL -n "CTRL_Top_translateY";
	rename -uid "40F46D1B-964C-A3EF-0E36-4DA0E0733D8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3.2727273809523809 0 19 0 25 0 55 0
		 83 0;
	setAttr -s 6 ".kit[4:5]"  1 18;
	setAttr -s 6 ".kot[4:5]"  1 18;
	setAttr -s 6 ".kix[4:5]"  1 1;
	setAttr -s 6 ".kiy[4:5]"  0 0;
	setAttr -s 6 ".kox[4:5]"  1 1;
	setAttr -s 6 ".koy[4:5]"  0 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateX";
	rename -uid "CF8F1F40-324E-DE16-F08C-C3910D2247A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 -0.053242756962177007 3.2727273809523809 -0.053242756962176972
		 4.9090904761904763 -0.053242756962177125 6.5454547619047618 -0.053242756962177271
		 8.1818178571428568 -0.080621378481088649 9.8181821428571432 -0.108 11.454545238095237 -0.108
		 13.090909523809524 -0.108 14.72727261904762 -0.108 16.363636904761904 -0.108 18 -0.108
		 19 0 23 3.1220031480806444e-18 25 0 30 3.8939893810605801e-18 35 3.8939893810605832e-18
		 44 1.0929081455404875e-17 53 3.8988375254542833e-18 54 3.8988375254542802e-18 55 3.8988375254542833e-18
		 57 3.898837525454274e-18 58 3.8988375254542709e-18 59 -5.2647025278490366e-17 82 -5.2647025278490366e-17
		 83 -5.2647025278490366e-17 84 -5.1638137960064243e-17 87.714285714285708 7.2273713334266111e-17
		 91.428571428571431 7.2273713334266111e-17 93.75 -0.0038573912198536296 95.375 -0.018951363063141154
		 97 -0.56906031889030262 98.625 -0.75434708765843017 100.25 -1.1808658212500172 101.875 -1.5849248575849491
		 103.5 -1.6130641900167795 106.75 -1.6249123299880759 108.375 -1.6249123299880761
		 110 -1.6249123299880761;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  1 1 0.64692440292013598 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.99342395948880968 0.83123898917953776 0.18109650670131944 0.21610898926966488 
		0.160914450142985 0.62567461128819035 0.98116841507423536 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  0 0 -0.76255414031164093 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 -0.11449382827722991 -0.55591522992969011 -0.98346532997385272 
		-0.97636924611380715 -0.98696835802125926 -0.78008414981293639 -0.19315419037834183 
		0 0 0;
	setAttr -s 38 ".kox[8:37]"  1 1 0.6469244029201362 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.99342395948880979 0.83123898917953776 0.18109650670131938 0.21610898926966488 
		0.160914450142985 0.62567461128819035 0.98116841507423547 1 1 1;
	setAttr -s 38 ".koy[8:37]"  0 0 -0.7625541403116407 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 -0.11449382827722993 -0.55591522992969011 -0.98346532997385272 
		-0.97636924611380715 -0.98696835802125937 -0.78008414981293639 -0.19315419037834183 
		0 0 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateY";
	rename -uid "6A3B1975-7D4E-D331-255D-C68BDBF210CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0.67410904814182981 3.2727273809523809 0.46439710164983189
		 4.9090904761904763 0.027151363228852476 6.5454547619047618 -0.030949984979820981
		 8.1818178571428568 0.22002500751008958 9.8181821428571432 0.471 11.454545238095237 0.92
		 13.090909523809524 1.37 14.72727261904762 1.2971322799984313 16.363636904761904 1.2246682347789026
		 18 0.89740642738958187 19 0 23 0 25 0.052893862559499981 30 0.86834607749642145 35 0.88022994747198613
		 44 0.88022994747198613 53 0.88022994747198613 54 0.82297488446551514 55 0.47640082107737713
		 57 0.18703812546448506 58 -0.01556184983402964 59 0 82 0 83 0 84 0.08413558568907431
		 87.714285714285708 0.6623723429590298 91.428571428571431 0.73289126789144166 93.75 0.8746697228439696
		 95.375 1.0002223838432296 97 1.1714467991021305 98.625 0.88286659100675169 100.25 0.70983647947375061
		 101.875 0.73621005322194288 103.5 0.372410553545026 106.75 0.44345072557854742 108.375 0.48066073173286822
		 110 0.41509413944294543;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  0.68526012094101041 0.32287223096594625 
		0.24037263989591945 1 1 0.46494542666622396 1 1 1 1 0.23574227861113053 0.25351853403665442 
		0.32086601061541542 1 1 1 1 0.28431465682792223 0.59042119848555641 0.76413526614163962 
		0.52391962299790651 0.4151185201802759 1 0.28149457043596693 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  -0.72829840494670295 -0.94644256163333695 
		-0.97068068590523959 0 0 0.88533934184704732 0 0 0 0 -0.97181560909219411 -0.96733052929177499 
		-0.94712459752228384 0 0 0 0 0.95873102375630925 0.8070952907673784 0.64505604023111474 
		0.85176770814449843 0.90976734069944387 0 -0.95956282067151311 0 0 0 0 0 0;
	setAttr -s 38 ".kox[8:37]"  0.68526012094101063 0.32287223096594625 
		0.24037263989591945 1 1 0.46494542666622396 1 1 1 1 0.23574227861113053 0.25351853403665442 
		0.32086601061541548 1 1 1 1 0.28431465682792217 0.59042119848555641 0.76413526614163962 
		0.52391962299790651 0.4151185201802759 1 0.28149457043596693 1 1 1 1 1 1;
	setAttr -s 38 ".koy[8:37]"  -0.72829840494670273 -0.94644256163333695 
		-0.97068068590523959 0 0 0.88533934184704732 0 0 0 0 -0.97181560909219411 -0.96733052929177499 
		-0.94712459752228384 0 0 0 0 0.95873102375630914 0.8070952907673784 0.64505604023111474 
		0.85176770814449843 0.90976734069944387 0 -0.95956282067151311 0 0 0 0 0 0;
createNode animCurveTL -n "walker_lf_heel_ik_ctrl_translateZ";
	rename -uid "C2B832CC-4642-1DE1-CF35-778DEE530B9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0.52364522553941517 3.2727273809523809 0.72644988435961111
		 4.9090904761904763 0.071762970043094843 6.5454547619047618 -0.3426787205881977 8.1818178571428568 -0.65856960779769014
		 9.8181821428571432 -0.86884383777339491 11.454545238095237 -1.0684676836168541 13.090909523809524 -1.2589723002430178
		 14.72727261904762 -0.82260657817535476 16.363636904761904 -0.42824076471762429 18 0.088539756806933712
		 19 0 23 0 25 0 30 0.031796836310450716 35 0.031796836310450743 44 0.089242722579392919
		 53 0.031836424413706932 54 0.031836424413706904 55 0.031836424413706932 57 0.031836424413706849
		 58 0.031836424413706821 59 0.47667031200072096 82 0.47667031200072096 83 0 84 0.0082381901388102197
		 87.714285714285708 0.1134893437023427 91.428571428571431 0.11348934370234262 93.75 0.14479651049332873
		 95.375 0.16310615352302479 97 0.14550602086232767 98.625 -0.33025494019453377 100.25 -0.57238930480442218
		 101.875 -0.70643730193539311 103.5 -0.76978177375547596 106.75 -0.94470216278087404
		 108.375 -1.0331877999528294 110 -1.0816158947683414;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  0.1696839672439954 0.14775562147993701 
		0.14175679630587804 1 0.99934038298007222 1 1 1 1 1 1 1 1 1 1 1 1 0.86587026651419341 
		1 1 0.95736604201403697 1 0.78857065402806914 0.18536122498338567 0.33869957675239143 
		0.56570403169019745 0.64876001830469543 1 0.70320902084690073 1;
	setAttr -s 38 ".kiy[8:37]"  0.98549852930399573 0.98902390078353397 
		0.98990151565753948 0 0.036315271515474923 0 0 0 0 0 0 0 0 0 0 0 0 0.50026860941562146 
		0 0 0.2888775892975729 0 -0.61494416299835153 -0.98267045151091148 -0.9408945725785387 
		-0.82460836069582522 -0.76099306084174723 0 -0.71098317349958651 0;
	setAttr -s 38 ".kox[8:37]"  0.1696839672439954 0.14775562147993701 
		0.14175679630587809 1 0.99934038298007222 1 1 1 1 1 1 1 1 1 1 1 1 0.86587026651419352 
		1 1 0.95736604201403697 1 0.78857065402806925 0.18536122498338567 0.33869957675239137 
		0.56570403169019745 0.64876001830469543 1 0.70320902084690073 1;
	setAttr -s 38 ".koy[8:37]"  0.98549852930399573 0.98902390078353397 
		0.98990151565753948 0 0.03631527151547493 0 0 0 0 0 0 0 0 0 0 0 0 0.50026860941562146 
		0 0 0.2888775892975729 0 -0.61494416299835153 -0.98267045151091148 -0.9408945725785387 
		-0.82460836069582522 -0.76099306084174723 0 -0.71098317349958651 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateX";
	rename -uid "820DD6FD-FA4F-A34A-FE2E-94855FF2C611";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3.2727273809523809 0 6.5454547619047618 0
		 8.1818178571428568 0 19 0 25 0 30 0 35 0 55 0 83 0 85.932387414965987 7.8960817657045104e-17;
	setAttr -s 11 ".kit[6:10]"  1 18 1 18 18;
	setAttr -s 11 ".kot[6:10]"  1 18 1 18 18;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateY";
	rename -uid "49246E54-944F-9FE7-6FF5-FF8E3C794436";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3.2727273809523809 0.21301608085895207
		 6.5454547619047618 -0.32116047538091208 8.1818178571428568 -0.32116047538091208 19 0
		 25 0 30 0 35 0 55 -0.40382912639460899 83 -0.40382912639460899 85.932387414965987 1.1698840524703822;
	setAttr -s 11 ".kit[6:10]"  1 18 1 18 18;
	setAttr -s 11 ".kot[6:10]"  1 18 1 18 18;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTL -n "walker_lf_knee_pv_ctrl_translateZ";
	rename -uid "118E332A-2D40-B545-02D2-878FEA4FAE20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3.2727273809523809 0 6.5454547619047618 0
		 8.1818178571428568 0 19 0 25 0 30 0 35 0 55 0 83 0 85.932387414965987 1.5513299038697068;
	setAttr -s 11 ".kit[6:10]"  1 18 1 18 18;
	setAttr -s 11 ".kot[6:10]"  1 18 1 18 18;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateX";
	rename -uid "CF28F9A9-F242-A78B-4FA1-1A9E22697BDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.1077369856270648 1.6363630952380952 0.10773698562706466
		 3.2727273809523809 0.10773698562706452 4.9090904761904763 0.10773698562706455 6.5454547619047618 0.10773698562706456
		 8.1818178571428568 0.027368492813532104 9.8181821428571432 -0.053 13.090909523809524 -0.053
		 14.72727261904762 0.108 16.363636904761904 0.108 18 0.108 19 0 23 3.1220031480806444e-18
		 25 2.9426742419190087e-17 30 4.0833279212473586e-17 35 3.9757343085403665e-17 44 4.6792435159747961e-17
		 53 3.9762191229797356e-17 54 3.976219122979735e-17 55 3.9762191229797356e-17 57 3.9762191229797338e-17
		 58 3.9762191229797332e-17 59 -9.3022780675283336e-17 60 -9.0105331308477176e-17 65 -8.2424653737692085e-17
		 66 -8.3154365481638442e-17 71 -9.3022780675283336e-17 77 -9.7080221842427959e-17
		 82 -9.3323331872849612e-17 83 0 87.25 0 88.875 0 90.5 0 92.125 0 93.75 0 97 -1.2357020241048112e-17
		 98.625 -1.7882074357828353e-17 100.25 -2.4324955527843812e-17 101.875 -2.4324955527843812e-17
		 103.5 -2.5585435456350966e-16 110 -2.9361652638748096e-16;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 0.92797890233403602 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 -0.37263273718625123 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 0.92797890233403602 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 -0.37263273718625123 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateY";
	rename -uid "503F3859-3742-5597-CD74-4C9964AF0680";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.47095274360718198 1.6363630952380952 0.92027453441257112
		 3.2727273809523809 1.3695963252179602 4.9090904761904763 1.2971322799984313 6.5454547619047618 1.2246682347789026
		 8.1818178571428568 0.89740642738958187 9.8181821428571432 0.674 13.090909523809524 0.464
		 14.72727261904762 0.027151363228852476 16.363636904761904 -0.030949984979820981 18 0.22002500751008958
		 19 0 23 0 25 0.052893862559499981 30 0.86834607749642145 35 0.88022994747198613 44 0.88022994747198613
		 53 0.88022994747198613 54 0.82297488446551514 55 0.47640082107737713 57 0.18703812546448506
		 58 -0.01556184983402964 59 0.32400805810966254 60 0.35234607075000979 65 0.43124498399457473
		 66 0.42531782340522944 71 0.32400805810966254 77 0.2635983880742801 82 0.31953326773667118
		 83 0 87.25 0 88.875 0 90.5 0 92.125 0.20379415997380695 93.75 0.20379415997380695
		 97 0.20379415997380695 98.625 0.27889051401538312 100.25 0.19675301372333229 101.875 0.27473897024532434
		 103.5 0.17725420678388579 110 0.17725420678388579;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  0.36428769318394322 1 0.26216567780091776 
		1 1 0.46494542666622396 1 1 1 1 0.23574227861113053 0.25351853403665442 0.32086601061541542 
		1 0.44009861443350901 0.919019778643268 1 0.9197486530378558 0.94301956284223165 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  -0.93128646322961284 0 0.96502287920193142 
		0 0 0.88533934184704732 0 0 0 0 -0.97181560909219411 -0.96733052929177499 -0.94712459752228384 
		0 0.89794944711476132 0.39421142355654609 0 -0.39250785372403718 -0.33273728991029311 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  0.36428769318394327 1 0.26216567780091776 
		1 1 0.46494542666622396 1 1 1 1 0.23574227861113053 0.25351853403665442 0.32086601061541548 
		1 0.44009861443350895 0.919019778643268 1 0.91974865303785569 0.94301956284223165 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  -0.93128646322961284 0 0.96502287920193142 
		0 0 0.88533934184704732 0 0 0 0 -0.97181560909219411 -0.96733052929177499 -0.94712459752228384 
		0 0.89794944711476132 0.39421142355654615 0 -0.39250785372403713 -0.33273728991029317 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateX";
	rename -uid "75BAD2E6-4641-87F7-E2C8-6AB8F6F0BFC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3.2727273809523809 0 6.5454547619047618 0
		 8.1818178571428568 0 19 0 25 0 30 0 35 7.8561269190882682e-17 55 7.8561269190882682e-17
		 83 7.8561269190882682e-17;
	setAttr -s 10 ".kit[6:9]"  1 18 1 18;
	setAttr -s 10 ".kot[6:9]"  1 18 1 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateY";
	rename -uid "16B692D0-2D44-8E0B-2D77-5B953B63F2B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3.2727273809523809 0.21301608085895207
		 6.5454547619047618 -0.32116047538091208 8.1818178571428568 -0.32116047538091208 19 0
		 25 0 30 0 35 1.3007042330050911 55 1.3007042330050911 83 1.3007042330050911;
	setAttr -s 10 ".kit[6:9]"  1 18 1 18;
	setAttr -s 10 ".kot[6:9]"  1 18 1 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTL -n "walker_rt_knee_pv_ctrl_translateZ";
	rename -uid "79679D22-8342-903C-6069-5E9E370D196B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3.2727273809523809 0 6.5454547619047618 0
		 8.1818178571428568 0 19 0 25 0 30 0 35 1.548067343052657 55 1.548067343052657 83 1.548067343052657;
	setAttr -s 10 ".kit[6:9]"  1 18 1 18;
	setAttr -s 10 ".kot[6:9]"  1 18 1 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateX";
	rename -uid "A33E02F5-D64A-44F5-518E-7AB2F99CC441";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 50.613944235299812 1.6363630952380952 67.007577146732203
		 3.2727273809523809 91.150806763316879 4.9090904761904763 97.11152446621341 6.5454547619047618 97.96305556662719
		 8.1818178571428568 40.439841088317756 9.8181821428571432 33.912 13.090909523809524 4.3626540262680251
		 14.72727261904762 -4.603375823298486 16.363636904761904 0.67239683302018882 18 25.643198416510103
		 19 0 23 0 25 5.0851161222309615 30 48.158622125719219 35 48.158622125719219 44 48.158622125719219
		 53 48.158622125719219 54 48.158622125719219 55 48.158622125719219 57 16.550556678038479
		 58 0 59 31.945176887492387 60 35.097745289082489 65 45.069981662427168 66 44.326463121263984
		 71 31.945176887492387 77 25.311233059343881 82 31.453773640962858 83 0 87.25 -14.172418496077634
		 88.875 -25.022963610495829 90.5 -23.450671989875307 92.125 -63.39670465521823 93.75 -82.193680574000467
		 97 -82.193680574000467 98.625 -82.193680574000467 100.25 -82.193680574000467 101.875 -82.193680574000467
		 103.5 -82.193680574000467 110 -82.193680574000467;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  0.91981679831573437 1 0.15456394741272195 
		1 0.99874499098926472 0.32782830569513766 1 1 1 1 1 1 0.1945015396605583 1 0.24474435858118884 
		0.73729457722954372 1 0.73729457722954372 0.80995738226330383 1 1 0.26488628566667577 
		0.48893956571572583 1 1 0.13094322782964446 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  -0.39234813308615557 0 0.98798278636836434 
		0 0.050084358574843245 0.94473731903903069 0 0 0 0 0 0 -0.980902212796807 0 0.96958764376547335 
		0.67557139251740694 0 -0.67557139251740694 -0.58648873724665529 0 0 -0.96427965635790125 
		-0.87231766064760929 0 0 -0.99138986835934217 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  0.91981679831573437 1 0.15456394741272195 
		1 0.99874499098926484 0.32782830569513771 1 1 1 1 1 1 0.19450153966055828 1 0.24474435858118887 
		0.73729457722954383 1 0.73729457722954383 0.80995738226330383 1 1 0.26488628566667571 
		0.48893956571572589 1 1 0.13094322782964449 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  -0.39234813308615568 0 0.98798278636836434 
		0 0.050084358574843252 0.9447373190390308 0 0 0 0 0 0 -0.98090221279680689 0 0.96958764376547335 
		0.67557139251740705 0 -0.67557139251740705 -0.58648873724665529 0 0 -0.96427965635790136 
		-0.87231766064760929 0 0 -0.99138986835934217 0 0 0 0 0 0 0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateY";
	rename -uid "A648D7FA-7847-D497-5C3F-55830DAA17B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 10.061417259031412 1.6363630952380952 -0.24098093911959026
		 3.2727273809523809 -10.543379137270595 4.9090904761904763 -6.1496250306214835 6.5454547619047618 -1.7558709239723738
		 8.1818178571428568 -0.36546670943439857 9.8181821428571432 0 13.090909523809524 0
		 14.72727261904762 0 16.363636904761904 0 18 5.0305000000000035 19 0 23 0 25 0 30 0
		 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 65 0 66 0 71 0 77 0 82 0 83 0 87.25 -8.2643981653536596
		 88.875 -12.097641305526386 90.5 -25.217212607030124 92.125 -10.391884521803417 93.75 -11.592349844312754
		 97 -11.592349844312754 98.625 -11.592349844312754 100.25 -11.592349844312754 101.875 -11.592349844312754
		 103.5 -11.592349844312754 110 -11.592349844312754;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 0.6133456721728775 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 0.75723190434954091 0.41615658770742497 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0.78981458990499853 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 -0.65314611155174751 -0.90929296407027826 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 0.6133456721728775 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 0.7572319043495408 0.41615658770742497 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0.78981458990499853 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 -0.6531461115517474 -0.90929296407027826 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "walker_rt_heel_ik_ctrl_rotateZ";
	rename -uid "E580C2CB-8B4E-E14A-E259-C3BDD6599CC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.71809597720921903 1.6363630952380952 0.33202835621898275
		 3.2727273809523809 -0.054039264771253724 4.9090904761904763 0.79224603182027653 6.5454547619047618 1.6385313284118066
		 8.1818178571428568 0.81926566420590263 9.8181821428571432 0 13.090909523809524 0
		 14.72727261904762 0 16.363636904761904 0 18 0.35900000000000015 19 0 23 0 25 0 30 0
		 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 65 0 66 0 71 0 77 0 82 0 83 0 87.25 2.1020481611454231
		 88.875 3.8978533227069154 90.5 9.790424547937512 92.125 18.422453860648279 93.75 26.764339200043523
		 97 26.764339200043523 98.625 26.764339200043523 100.25 26.764339200043523 101.875 26.764339200043523
		 103.5 26.764339200043523 110 26.764339200043523;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 0.99580399377125139 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 0.96348472289229203 0.71032325393033535 0.47117202260382052 
		0.41572872008475265 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0.091511780603513171 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.26776330733161219 0.70387561040699531 0.88204133979957244 
		0.90948866474337842 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 0.99580399377125139 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 0.96348472289229192 0.71032325393033535 0.47117202260382052 
		0.4157287200847527 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0.091511780603513171 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.26776330733161213 0.70387561040699531 0.88204133979957244 
		0.90948866474337842 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_pvControl";
	rename -uid "19A8B01F-CF4C-E64E-535F-BEAFA469359C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 1 1.6363630952380952 1 3.2727273809523809 1
		 4.9090904761904763 1 6.5454547619047618 1 8.1818178571428568 1 9.8181821428571432 1
		 13.090909523809524 1 14.72727261904762 1 16.363636904761904 1 18 1 19 1 23 1 25 1
		 30 1 35 1 44 1 53 1 54 1 55 1 57 1 58 1 59 1 60 1 65 1 66 1 71 1 77 1 82 1 83 1 87.25 1
		 88.875 1 90.5 1 92.125 1 93.75 1 97 1 98.625 1 100.25 1 101.875 1 103.5 1 110 1;
	setAttr -s 41 ".kit[0:40]"  9 9 9 9 9 9 9 9 
		1 1 1 9 1 9 1 1 1 1 9 1 1 1 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footRoll";
	rename -uid "48636CBB-3844-632E-32D4-68B245B351BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 65 0 66 0 71 0 77 0 82 0 83 0 87.25 0
		 88.875 0 90.5 0 92.125 0 93.75 0 97 0 98.625 0 100.25 0 101.875 0 103.5 0 110 0;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_footBreak";
	rename -uid "D7D8803B-4642-1F4F-2F84-3AA59C8442AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 65 0 66 0 71 0 77 0 82 0 83 0 87.25 0
		 88.875 0 90.5 0 92.125 0 93.75 0 97 0 98.625 0 100.25 0 101.875 0 103.5 0 110 0;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeRoll";
	rename -uid "9DE93180-5840-2552-4BBD-09AFED97C34D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -48.2 1.6363630952380952 -20.94687500000002
		 3.2727273809523809 -10.8 4.9090904761904763 17.162500000000016 6.5454547619047618 21.599999999999998
		 8.1818178571428568 10.799999999999994 9.8181821428571432 0 13.090909523809524 -9.2
		 14.72727261904762 0 16.363636904761904 0 18 -24.100000000000016 19 0 23 0 25 0 30 0
		 35 0 44 0 53 0 54 0 55 -46.2 57 -13.4 58 0 59 -29.400000000000006 60 -32.375661375661764
		 65 -42.800000000000004 66 -42.036574074074082 71 -29.400000000000006 77 -22.600000000000009
		 82 -28.896296296296295 83 0 87.25 0 88.875 0 90.5 0 92.125 0 93.75 0 97 0 98.625 0
		 100.25 0 101.875 0 103.5 0 110 0;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 0.0028291103889963917 1 1 1 1 1 1 1 
		1 1 0.0036074801335583486 1 0.0046674456027166258 0.0186534703150401 1 0.0186534703150401 
		0.023574419738967126 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 -0.9999959980591957 0 0 0 0 0 0 0 0 
		0 0.99999349302237261 0 -0.99998910741644864 -0.99982600888614914 0 0.99982600888614914 
		0.99972208474854207 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 0.0028291103889963917 1 1 1 1 1 1 1 
		1 1 0.0036074801335583494 1 0.0046674456027166267 0.0186534703150401 1 0.0186534703150401 
		0.02357441973896713 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 -0.9999959980591957 0 0 0 0 0 0 0 0 
		0 0.99999349302237273 0 -0.99998910741644864 -0.99982600888614914 0 0.99982600888614914 
		0.99972208474854207 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_legTwist";
	rename -uid "FC84D98E-CA4E-2F0C-C2DD-2D801AEEC61C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 -5.3000000000000007 6.5454547619047618 -10.6 8.1818178571428568 -3.399999999999995
		 9.8181821428571432 3.8 13.090909523809524 0 14.72727261904762 3.8000000000000007
		 16.363636904761904 3.8000000000000007 18 3.8000000000000007 19 0 23 0 25 0 30 0 35 0
		 44 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 65 0 66 0 71 0 77 0 82 0 83 0 87.25 0 88.875 15.600000000000001
		 90.5 47.2 92.125 107.80000000000001 93.75 133.60000000000002 97 105.40000000000002
		 98.625 118.60000000000002 100.25 118.60000000000002 101.875 118.60000000000002 103.5 118.60000000000002
		 110 118.60000000000002;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 0.002868985367648564 0.0014687258200562013 0.0015673206058039097 1 1 1 1 1 
		1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.99999588445301124 0.99999892142165114 0.999998771752305 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 0.002868985367648564 0.001468725820056201 0.0015673206058039095 1 1 1 1 1 1 
		1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0.99999588445301124 0.99999892142165114 0.999998771752305 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_heelTwist";
	rename -uid "85507B9B-2B4D-46E1-3D6C-9CAAF895B6B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 65 0 66 0 71 0 77 0 82 0 83 0 87.25 0
		 88.875 0 90.5 -27.8 92.125 -56.8 93.75 -56.8 97 -56.8 98.625 -56.8 100.25 -56.8 101.875 -56.8
		 103.5 -56.8 110 -56.8;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 0.0023840894686602519 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 -0.99999715805466427 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 0.0023840894686602519 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 -0.99999715805466427 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_ballTwist";
	rename -uid "20ED8B82-A345-A790-EFC4-F98B3D3BE03C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 65 0 66 0 71 0 77 0 82 0 83 0 87.25 0
		 88.875 0 90.5 0 92.125 0 93.75 0 97 0 98.625 0 100.25 0 101.875 0 103.5 0 110 0;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_heel_ik_ctrl_toeTwist";
	rename -uid "32CCCC39-D241-A7DB-F29E-F8BD7674D598";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1.6363630952380952 0 3.2727273809523809 0
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 65 0 66 0 71 0 77 0 82 0 83 0 87.25 0
		 88.875 0 90.5 0 92.125 0 93.75 0 97 0 98.625 0 100.25 0 101.875 0 103.5 0 110 0;
	setAttr -s 41 ".kit[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kot[8:40]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateX";
	rename -uid "7C1B1BFE-5444-E569-8ABD-C3B8DA40B4EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 33.91210829753377 3.2727273809523809 -0.020224157055134837
		 4.9090904761904763 -7.2006792890890399 6.5454547619047618 0.67239683302018882 8.1818178571428568 25.643198416510103
		 9.8181821428571432 50.614 11.454545238095237 67.008 13.090909523809524 91.151 14.72727261904762 97.11152446621341
		 16.363636904761904 97.96305556662719 18 40.439841088317756 19 0 23 0 25 5.0851161222309615
		 30 48.158622125719219 35 48.158622125719219 44 48.158622125719219 53 48.158622125719219
		 54 48.158622125719219 55 48.158622125719219 57 16.550556678038479 58 0 59 0 82 0
		 83 0 84 8.0164945778624173 86.971428571428575 35.535218514294577 89.942857142857136 -15.777744526347153
		 92.914285714285711 -18.910462439610182 93.75 -21.606908866844552 95.375 0.85707432462306199
		 97 56.542918321471305 98.625 38.230555645141642 100.25 33.367038203530548 101.875 63.973673647809207
		 103.5 26.544274247061548 106.75 108.95301237867864 108.375 108.95301237867864 110 108.95301237867864;
	setAttr -s 39 ".kit[8:38]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 1 18 18;
	setAttr -s 39 ".kot[8:38]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 1 18 18;
	setAttr -s 39 ".kix[8:38]"  0.8369379320063185 1 0.19562625594097516 
		1 0.99874499098926472 0.32782830569513766 1 1 1 1 1 1 0.1945015396605583 1 1 1 1 
		0.25779030988441398 1 0.60245110853087369 0.8417547101719447 1 0.098795427473400282 
		1 0.31746149685278474 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[8:38]"  0.54729781469414507 0 -0.98067852428128366 
		0 0.050084358574843245 0.94473731903903069 0 0 0 0 0 0 -0.980902212796807 0 0 0 0 
		0.96620088808161309 0 -0.79815578794488584 -0.53986017440013601 0 0.99510776477241314 
		0 -0.94827116270399636 0 0 0 0 0 0;
	setAttr -s 39 ".kox[8:38]"  0.8369379320063185 1 0.19562625594097516 
		1 0.99874499098926484 0.32782830569513771 1 1 1 1 1 1 0.19450153966055828 1 1 1 1 
		0.25779030988441393 1 0.60245110853087369 0.8417547101719447 1 0.098795427473400282 
		1 0.31746149685278474 1 1 1 1 1 1;
	setAttr -s 39 ".koy[8:38]"  0.54729781469414507 0 -0.98067852428128366 
		0 0.050084358574843252 0.9447373190390308 0 0 0 0 0 0 -0.98090221279680689 0 0 0 
		0 0.96620088808161309 0 -0.79815578794488584 -0.53986017440013601 0 0.99510776477241314 
		0 -0.94827116270399636 0 0 0 0 0 0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateY";
	rename -uid "14CB6E55-254B-69AC-A08F-59A3548E41EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 3.2727273809523809 0 4.9090904761904763 0
		 6.5454547619047618 0 8.1818178571428568 5.0305000000000035 9.8181821428571432 10.061
		 11.454545238095237 -0.281 13.090909523809524 -10.543 14.72727261904762 -6.1496250306214835
		 16.363636904761904 -1.7558709239723738 18 -0.36546670943439857 19 0 23 0 25 0 30 0
		 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 82 0 83 0 84 0 86.971428571428575 0 89.942857142857136 0
		 92.914285714285711 0 93.75 0.23862365969284777 95.375 -53.202416579977012 97 -118.12957195956697
		 98.625 -96.935685482864287 100.25 -106.2433166386889 101.875 -142.03081746489943
		 103.5 -101.986852505721 106.75 -188.18413569395943 108.375 -188.18413569395943 110 -188.18413569395943;
	setAttr -s 39 ".kit[8:38]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 1 18 18;
	setAttr -s 39 ".kot[8:38]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 1 18 18;
	setAttr -s 39 ".kix[8:38]"  0.66445619571504855 0.80371930546517256 
		0.97566503428666329 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.065407679212173442 1 
		1 0.16956267893968374 1 1 1 1 1;
	setAttr -s 39 ".kiy[8:38]"  0.74732721345865971 0.59500863693107886 
		0.21926636967488641 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99785862500660749 0 
		0 -0.98551940514167335 0 0 0 0 0;
	setAttr -s 39 ".kox[8:38]"  0.66445619571504855 0.80371930546517256 
		0.97566503428666329 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.065407679212173442 1 
		1 0.16956267893968374 1 1 1 1 1;
	setAttr -s 39 ".koy[8:38]"  0.74732721345865971 0.59500863693107886 
		0.21926636967488641 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99785862500660749 0 
		0 -0.98551940514167335 0 0 0 0 0;
createNode animCurveTA -n "walker_lf_heel_ik_ctrl_rotateZ";
	rename -uid "F2E99CE9-C545-7C5E-4191-A9B5D8624586";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 3.2727273809523809 0 4.9090904761904763 0
		 6.5454547619047618 0 8.1818178571428568 0.35900000000000015 9.8181821428571432 0.718
		 11.454545238095237 0.332 13.090909523809524 -0.054 14.72727261904762 0.79224603182027653
		 16.363636904761904 1.6385313284118066 18 0.81926566420590263 19 0 23 0 25 0 30 0
		 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 82 0 83 0 84 0 86.971428571428575 0 89.942857142857136 0
		 92.914285714285711 0 93.75 40.630715776041029 95.375 66.949922231575741 97 42.346348269677328
		 98.625 59.013645625562681 100.25 67.878631711334094 101.875 44.21334904771615 103.5 59.778417703099549
		 106.75 72.703886863699665 108.375 72.703886863699665 110 72.703886863699665;
	setAttr -s 39 ".kit[8:38]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 1 18 18;
	setAttr -s 39 ".kot[8:38]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 1 18 18;
	setAttr -s 39 ".kix[8:38]"  0.97732986067330441 1 0.97870918658224382 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.08740918074346965 1 1 0.29075374494318229 1 
		1 0.37815919530563097 1 1 1;
	setAttr -s 39 ".kiy[8:38]"  0.21172232625847326 0 -0.20525186503299536 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99617249265463825 0 0 0.95679792004451747 0 
		0 0.92574058083558042 0 0 0;
	setAttr -s 39 ".kox[8:38]"  0.97732986067330441 1 0.97870918658224382 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.08740918074346965 1 1 0.29075374494318229 1 
		1 0.37815919530563091 1 1 1;
	setAttr -s 39 ".koy[8:38]"  0.21172232625847326 0 -0.20525186503299536 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99617249265463836 0 0 0.95679792004451747 0 
		0 0.92574058083558031 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_pvControl";
	rename -uid "D4AE10C2-454D-E674-2257-8DA283EBF272";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 1 3.2727273809523809 1 4.9090904761904763 1
		 6.5454547619047618 1 8.1818178571428568 1 9.8181821428571432 1 11.454545238095237 1
		 13.090909523809524 1 14.72727261904762 1 16.363636904761904 1 18 1 19 1 23 1 25 1
		 30 1 35 1 44 1 53 1 54 1 55 1 57 1 58 1 59 1 82 1 83 1 84 1 86.971428571428575 1
		 89.942857142857136 1 92.914285714285711 1 93.75 1 95.375 1 97 1 98.625 1 100.25 1
		 101.875 1 103.5 1 106.75 1 108.375 1 110 1;
	setAttr -s 39 ".kit[0:38]"  9 9 9 9 9 9 9 9 
		1 1 1 9 1 9 1 1 1 1 9 1 1 1 9 1 9 
		9 9 9 9 9 9 9 9 9 9 9 1 9 9;
	setAttr -s 39 ".kix[8:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[8:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footRoll";
	rename -uid "DD045996-6741-1479-C1C7-268B5ED846B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 3.2727273809523809 0 4.9090904761904763 0
		 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0 11.454545238095237 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 82 0 83 0 84 0 87.714285714285708 0
		 91.428571428571431 0 93.75 0 95.375 0 97 0 98.625 0 100.25 0 101.875 0 103.5 0 106.75 0
		 108.375 0 110 0;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_footBreak";
	rename -uid "2212FD6E-064D-A248-8987-BC8CF47C2438";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 3.2727273809523809 0 4.9090904761904763 0
		 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0 11.454545238095237 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 82 0 83 0 84 0 87.714285714285708 0
		 91.428571428571431 0 93.75 0 95.375 0 97 0 98.625 0 100.25 0 101.875 0 103.5 0 106.75 0
		 108.375 0 110 0;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeRoll";
	rename -uid "61988EFF-6D4E-66BE-BBB7-4DB054C5EB3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 3.2727273809523809 -9.2000000000000011
		 4.9090904761904763 0 6.5454547619047618 0 8.1818178571428568 -24.100000000000016
		 9.8181821428571432 -48.2 11.454545238095237 -20.947 13.090909523809524 -10.8 14.72727261904762 17.162500000000016
		 16.363636904761904 21.599999999999998 18 10.799999999999994 19 0 23 0 25 0 30 0 35 0
		 44 0 53 0 54 0 55 -46.2 57 -13.4 58 0 59 0 82 0 83 0 84 -8.2000000000000011 87.714285714285708 -17.064738397702556
		 91.428571428571431 -8.8000000000000043 93.75 -8.8000000000000043 95.375 -8.8000000000000043
		 97 -8.8000000000000043 98.625 -8.8000000000000043 100.25 -8.8000000000000043 101.875 -8.8000000000000043
		 103.5 -8.8000000000000043 106.75 -8.8000000000000043 108.375 -8.8000000000000043
		 110 -8.8000000000000043;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  0.0051215728831189855 1 0.0063130069036695024 
		1 1 1 1 1 1 1 1 1 0.0036074801335583486 1 1 1 1 0.011510024644147649 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  0.99998688465959529 0 -0.99998007277336987 
		0 0 0 0 0 0 0 0 0 0.99999349302237261 0 0 0 0 -0.99993375747230928 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 38 ".kox[8:37]"  0.0051215728831189855 1 0.0063130069036695024 
		1 1 1 1 1 1 1 1 1 0.0036074801335583494 1 1 1 1 0.011510024644147649 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 38 ".koy[8:37]"  0.99998688465959529 0 -0.99998007277336987 
		0 0 0 0 0 0 0 0 0 0.99999349302237273 0 0 0 0 -0.99993375747230928 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_legTwist";
	rename -uid "009E50DB-7446-0F63-52A2-5AABC55BFD58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 3.8000000000000007 3.2727273809523809 3.8000000000000007
		 4.9090904761904763 3.8000000000000007 6.5454547619047618 3.8000000000000007 8.1818178571428568 3.8000000000000007
		 9.8181821428571432 3.8000000000000007 11.454545238095237 0 13.090909523809524 0 14.72727261904762 -5.3000000000000007
		 16.363636904761904 -10.6 18 -3.399999999999995 19 0 23 0 25 0 30 0 35 0 44 0 53 0
		 54 0 55 0 57 0 58 0 59 0 82 0 83 0 84 0 87.714285714285708 0 91.428571428571431 0
		 93.75 57.651375390119966 95.375 78.908593749999909 97 128.20000000000002 98.625 112.20000000000002
		 100.25 143.60000000000002 101.875 153.8 103.5 147.78518518518518 106.75 130.60000000000002
		 108.375 130.60000000000002 110 130.60000000000002;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  0.012863432462057326 1 0.0094692744903184072 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0020838562565844822 0.0019194763604732327 1 1 
		0.0032551910867560595 1 0.008755052370237831 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  -0.99991726262991087 0 0.99995516541524354 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999782876919374 0.99999815780355394 0 0 0.99999470185145922 
		0 -0.99996167379454826 0 0 0;
	setAttr -s 38 ".kox[8:37]"  0.012863432462057326 1 0.0094692744903184072 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0020838562565844826 0.0019194763604732327 1 1 
		0.0032551910867560591 1 0.0087550523702378327 1 1 1;
	setAttr -s 38 ".koy[8:37]"  -0.99991726262991087 0 0.99995516541524354 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999782876919396 0.99999815780355394 0 0 0.99999470185145911 
		0 -0.99996167379454826 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_heelTwist";
	rename -uid "B69F1032-6340-A193-4044-C99270AE593B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 3.2727273809523809 0 4.9090904761904763 0
		 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0 11.454545238095237 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 82 0 83 0 84 -4.4 87.714285714285708 -9.4
		 91.428571428571431 -12.8 93.75 -6.4593391681931189 95.375 0 97 4.3999999999999986
		 98.625 4.3999999999999986 100.25 0 101.875 0 103.5 0 106.75 0 108.375 0 110 0;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.02089209555447143 
		0.036823082211736469 1 0.012845387271476674 0.012469095677046911 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99978173635216139 
		-0.99932180033081808 0 0.9999174946093532 0.99992225780457378 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.020892095554471433 
		0.036823082211736469 1 0.012845387271476673 0.012469095677046911 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.9997817363521615 
		-0.99932180033081808 0 0.9999174946093532 0.99992225780457378 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_ballTwist";
	rename -uid "68BA2654-1C45-5AED-5233-769271C39529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 3.2727273809523809 0 4.9090904761904763 0
		 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0 11.454545238095237 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 82 0 83 0 84 0 87.714285714285708 0
		 91.428571428571431 0 93.75 0 95.375 0 97 -20.6 98.625 -20.6 100.25 0 101.875 0 103.5 0
		 106.75 0 108.375 0 110 0;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_heel_ik_ctrl_toeTwist";
	rename -uid "35D390B7-9C4E-382B-A81E-21B7E90D4D2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 3.2727273809523809 0 4.9090904761904763 0
		 6.5454547619047618 0 8.1818178571428568 0 9.8181821428571432 0 11.454545238095237 0
		 13.090909523809524 0 14.72727261904762 0 16.363636904761904 0 18 0 19 0 23 0 25 0
		 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 82 0 83 0 84 0 87.714285714285708 0
		 91.428571428571431 0 93.75 0 95.375 0 97 0 98.625 0 100.25 0 101.875 0 103.5 0 106.75 0
		 108.375 0 110 0;
	setAttr -s 38 ".kit[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kot[8:37]"  1 1 1 18 1 18 1 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 38 ".kix[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[8:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[8:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_foot_ctrl_ikFkBlend";
	rename -uid "B4CBDA90-964C-1E9F-029A-178D36AE28F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 3.2727273809523809 1 8.1818178571428568 1
		 19 1 23 1 25 1 30 1 35 1 44 1 53 1 55 1 83 1;
	setAttr -s 12 ".kit[4:11]"  1 18 1 18 1 1 1 18;
	setAttr -s 12 ".kot[4:11]"  1 18 1 18 1 1 1 18;
	setAttr -s 12 ".kix[4:11]"  1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[4:11]"  0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[4:11]"  1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[4:11]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "walker_lf_knee_pv_ctrl_lfLegIkCtrl";
	rename -uid "51FB1984-1F4E-09E8-2CC2-66B9711AD024";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3.2727273809523809 0 6.5454547619047618 0
		 8.1818178571428568 0 19 0 25 0 30 0 35 0 55 0 83 0 85.932387414965987 0;
	setAttr -s 11 ".kit[6:10]"  1 18 1 18 18;
	setAttr -s 11 ".kot[6:10]"  1 18 1 18 18;
	setAttr -s 11 ".kix[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".kiy[6:10]"  0 0 0 0 0;
	setAttr -s 11 ".kox[6:10]"  1 1 1 1 1;
	setAttr -s 11 ".koy[6:10]"  0 0 0 0 0;
createNode animCurveTU -n "walker_rt_foot_ctrl_ikFkBlend";
	rename -uid "E45AE152-BD4A-369A-B40E-29A305ED7D57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 3.2727273809523809 1 6.5454547619047618 1
		 8.1818178571428568 1 19 1 25 1 30 1 35 1 44 1 53 1 55 1 83 1;
	setAttr -s 12 ".kit[6:11]"  1 18 1 1 1 18;
	setAttr -s 12 ".kot[6:11]"  1 18 1 1 1 18;
	setAttr -s 12 ".kix[6:11]"  1 1 1 1 1 1;
	setAttr -s 12 ".kiy[6:11]"  0 0 0 0 0 0;
	setAttr -s 12 ".kox[6:11]"  1 1 1 1 1 1;
	setAttr -s 12 ".koy[6:11]"  0 0 0 0 0 0;
createNode animCurveTU -n "walker_rt_knee_pv_ctrl_rtLegIkCtrl";
	rename -uid "A28E4736-5B4E-C043-6C48-3795B9461BCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3.2727273809523809 0 6.5454547619047618 0
		 8.1818178571428568 0 19 0 25 0 30 0 35 0 55 0 83 0;
	setAttr -s 10 ".kit[6:9]"  1 18 1 18;
	setAttr -s 10 ".kot[6:9]"  1 18 1 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTA -n "CTRL_Main_rotateZ";
	rename -uid "DB66F9D3-D843-4301-8D51-CCA7D8897F9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -5.89 9.8181821428571432 5.89 10 5.8728067536901465
		 18 -5.89 19 0 23 0 25 0 30 0 35 0 44 0 53 0 54 0 55 0 57 0 58 0 59 0 65 0 71 0 77 0
		 82 0 83 0 84 -1.3864871893283957 85.625 -6.4934651413548936 87.25 -17.09339097924714
		 88.875 -28.320603196386372 90.5 -39.674815934207047 92.125 -62.824661740110287 93.75 -75.081145184502034
		 95.375 -89.463231627416377 97 -89.463231627416377 98.625 -89.463231627416377 100.25 -89.463231627416377
		 101.875 -89.463231627416377 110 -89.463231627416377;
	setAttr -s 34 ".kit[5:33]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18;
	setAttr -s 34 ".kot[5:33]"  1 18 1 18 1 1 18 1 
		1 1 18 1 1 1 18 1 18 18 18 18 18 1 18 1 18 
		18 18 18 18;
	setAttr -s 34 ".kix[5:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.69443238733625845 
		0.44288621471906137 0.33493467818324263 0.32494637432266199 0.21938813014478209 0.21405675419231721 
		0.2796419295032917 0.22216465691938619 1 1 1 1 1;
	setAttr -s 34 ".kiy[5:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.71955796112506787 
		-0.89657782752632331 -0.94224134984105212 -0.94573244303796433 -0.97563766242984695 
		-0.9768212251915136 -0.96010436477691119 -0.97500916160613149 0 0 0 0 0;
	setAttr -s 34 ".kox[5:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.69443238733625845 
		0.44288621471906137 0.33493467818324257 0.32494637432266199 0.21938813014478209 0.31226693275971262 
		0.2796419295032917 1 1 1 1 1 1;
	setAttr -s 34 ".koy[5:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.71955796112506787 
		-0.8965778275263232 -0.94224134984105201 -0.94573244303796433 -0.97563766242984695 
		-0.94999440140710356 -0.96010436477691119 0 0 0 0 0 0;
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "F3A54C35-7543-4A54-0CE7-DEBD70DE3B63";
createNode timeEditor -s -n "timeEditor";
	rename -uid "C3ED0FA0-8842-FB73-5160-4CA638943AE4";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "169A5230-1548-E23E-394A-A3A396DCF66F";
createNode animCurveTL -n "walker_rt_heel_ik_ctrl_translateZ";
	rename -uid "70775493-784F-8A6D-1197-8A8BFF4C4D6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.82513808497203622 1.6363630952380952 -1.0226790841460198
		 3.2727273809523809 -1.2202200833200034 4.9090904761904763 -0.82423042401881375 6.5454547619047618 -0.42824076471762429
		 8.1818178571428568 0.088539756806933712 9.8181821428571432 0.524 13.090909523809524 0.726
		 14.72727261904762 0.071762970043094843 16.363636904761904 -0.3426787205881977 18 -0.65856960779769014
		 19 0 30 0 35 0.053680245181474434 44 0.093889896634103631 53 0.053652218495900988
		 59 -1.0306193608486962 60 -1.0097607179118782 62 -0.97318214401837322 65 -0.94407908699202103
		 66 -0.94880276823979881 71 -1.0306193608486962 77 -1.0637508822797697 82 -1.0330735476213684
		 83 0 87.25 0 88.875 0 90.5 0 92.125 0 93.75 0 97 -0.10090272762441832 98.625 -0.1460182182346661
		 100.25 -0.19862833549052505 101.875 -0.19862833549052505 103.5 -0.27607755690880004
		 110 -0.58442909018568256;
	setAttr -s 36 ".kit[8:35]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 36 ".kot[8:35]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 36 ".kix[8:35]"  0.12652156892135394 0.18354253005527135 
		0.27205950320044126 1 1 0.98729324923425632 1 0.95189734410085414 1 0.90866364920356646 
		0.95372432460389711 1 0.94674242980511836 0.96996058636535931 1 0.91472273124714887 
		1 1 1 1 1 1 0.81197345535814469 0.81089324609398628 1 1 0.65956988101567815 1;
	setAttr -s 36 ".kiy[8:35]"  -0.9919638564976444 -0.98301176984861671 
		-0.9622804303935153 0 0 0.15890890477397596 0 -0.30641711162032065 0 0.41752888836110236 
		0.30068241162203102 0 -0.32199188127451361 -0.24326212384538679 0 0.40408207698406579 
		0 0 0 0 0 0 -0.58369436162580413 -0.58519410748841083 0 0 -0.75164324786228476 0;
	setAttr -s 36 ".kox[8:35]"  0.12652156892135394 0.18354253005527135 
		0.27205950320044126 1 1 0.98729324923425643 1 0.95189734410085425 1 0.90866364920356646 
		0.95372432460389711 1 0.94674242980511836 0.96996058636535942 1 0.91472273124714865 
		1 1 1 1 1 1 0.81197345535814458 0.81089324609398628 1 1 0.65956988101567815 1;
	setAttr -s 36 ".koy[8:35]"  -0.9919638564976444 -0.98301176984861671 
		-0.9622804303935153 0 0 0.15890890477397598 0 -0.30641711162032065 0 0.41752888836110236 
		0.30068241162203108 0 -0.32199188127451367 -0.24326212384538681 0 0.40408207698406573 
		0 0 0 0 0 0 -0.58369436162580413 -0.58519410748841083 0 0 -0.75164324786228476 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 105;
	setAttr ".unw" 105;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".st";
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
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
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
	setAttr ".ro" yes;
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
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
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
connectAttr "CTRL_Main_rotateZ.o" "Ultimate_Walker_RigRN.phl[43]";
connectAttr "CTRL_Main_rotateX.o" "Ultimate_Walker_RigRN.phl[44]";
connectAttr "CTRL_Main_rotateY.o" "Ultimate_Walker_RigRN.phl[45]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of game_animations_final.ma
