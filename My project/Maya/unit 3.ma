//Maya ASCII 2023 scene
//Name: unit 3.ma
//Last modified: Fri, Nov 10, 2023 12:15:13 PM
//Codeset: UTF-8
requires maya "2023";
requires -nodeType "houdiniAsset" "houdiniEngine" "5.0 (API: 8)";
requires "stereoCamera" "10.0";
requires -nodeType "substanceNode" -nodeType "substanceOutputNode" "substancemaya" "2.3.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiStandardSurface" -nodeType "aiPhysicalSky" "mtoa" "5.3.4.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "D41F907D-9C4A-B3C3-5029-02BA53E63F0F";
createNode transform -s -n "persp";
	rename -uid "9E74101A-BF4E-8193-A053-35B5254F7D27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.125342734614136 35.873268749570329 6.2204071622424797 ;
	setAttr ".r" -type "double3" -37.538352722833523 -981.39999999984934 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E78F58A4-5A43-046C-8A2F-10A79BEFEFAA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 51.504223670830051;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "325B7DE8-FF45-7179-C839-85AC28627AAA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2690B047-494F-0C48-0884-8DB82606C418";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B8DE91EB-7446-5485-FEFD-D79E2C8E287A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "70C028B4-2144-F016-2C63-FE88D4073882";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "A5118F44-F44D-7ECC-CD1C-9AB26678F1EF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "27EC15DF-2C4B-65DA-F599-F5ACDA60CBD2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode houdiniAsset -n "owynnarmstrong__dev__asteroid__1_01";
	rename -uid "127CEB7A-7245-1005-A833-E4BAF6080540";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "/Users/owynnarmstrong/Desktop/object_asteroid.hdanc";
	setAttr ".assetName" -type "string" "owynnarmstrong::dev::Object/asteroid::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "asteroid1" -p "owynnarmstrong__dev__asteroid__1_01";
	rename -uid "52127363-3546-DF94-C6F0-41BEA7EBD2D3";
createNode transform -n "mountain1_0" -p "asteroid1";
	rename -uid "C5EB0AF2-7245-E4C1-B3FD-199E8EADCF60";
	setAttr ".t" -type "double3" -9.2025661091573987 1.4761300627524481 9.1740040187663894 ;
	setAttr ".s" -type "double3" 3.3261226661234238 3.3261226661234238 3.3261226661234238 ;
createNode mesh -n "mountain1_0Shape" -p "mountain1_0";
	rename -uid "A4BDD4C9-4D44-F426-FCE4-BBA59804FDD8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.73222581327778014 0.21007308118963897 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "owynnarmstrong__dev__barrel__1_01";
	rename -uid "688FDAC1-134E-ACC2-845A-96998F4EB50F";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "/Users/owynnarmstrong/Desktop/object_barrel.1.0.hdanc";
	setAttr ".assetName" -type "string" "owynnarmstrong::dev::Object/barrel::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "barrel1" -p "owynnarmstrong__dev__barrel__1_01";
	rename -uid "97696094-1F47-4418-1681-9EB6E34A7099";
createNode transform -n "polyextrude9_0" -p "barrel1";
	rename -uid "7074195F-9742-91A2-F760-B68520B0B3AD";
createNode mesh -n "polyextrude9_0Shape" -p "polyextrude9_0";
	rename -uid "C28AD975-424A-DE07-EC1B-DEA06C4799E2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51388919353485107 1.8512793779373169 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "owynnarmstrong__dev__crate__1_01";
	rename -uid "19FF5B35-4641-4CF1-F440-359EBC022ABE";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "/Users/owynnarmstrong/Desktop/object_crate.1.0.hdanc";
	setAttr ".assetName" -type "string" "owynnarmstrong::dev::Object/crate::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "crate1" -p "owynnarmstrong__dev__crate__1_01";
	rename -uid "71123C45-0849-BF19-4CAB-6B809A732D76";
createNode transform -n "merge1_0" -p "crate1";
	rename -uid "E64EA3DC-2C4A-356C-BA5F-8D9DDF14BD7F";
	setAttr ".t" -type "double3" -25.48561776359297 1.9914974001110926 15.231972624402589 ;
	setAttr ".s" -type "double3" 2.8303257675804376 2.8303257675804376 2.8303257675804376 ;
	setAttr ".spt" -type "double3" 0.00015816180596052028 0.002253021608032544 0 ;
createNode mesh -n "merge1_0Shape" -p "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0";
	rename -uid "BB2C867F-C041-3C6E-3545-08A76E6F3AE3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43800032138824463 2.0053644180297852 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[72]" -type "float3" -1.1920929e-07 3.5762787e-07 -1.1920929e-07 ;
	setAttr ".pt[73]" -type "float3" -1.1920929e-07 3.5762787e-07 -1.1920929e-07 ;
	setAttr ".pt[74]" -type "float3" -1.1920929e-07 3.5762787e-07 -1.1920929e-07 ;
	setAttr ".pt[75]" -type "float3" -1.1920929e-07 3.5762787e-07 -1.1920929e-07 ;
createNode houdiniAsset -n "owynnarmstrong__dev__table__1_01";
	rename -uid "C684E62F-5340-C245-AF30-9B9E282DF063";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "/Users/owynnarmstrong/Desktop/object_table.1.0.hdanc";
	setAttr ".assetName" -type "string" "owynnarmstrong::dev::Object/table::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "table1" -p "owynnarmstrong__dev__table__1_01";
	rename -uid "47C84D29-BC49-E8D0-D140-85BF2CD444B4";
createNode transform -n "merge1_0" -p "table1";
	rename -uid "95A5FFD1-764C-B840-8BD4-4F8935B20D70";
	setAttr ".t" -type "double3" -26.486629903718285 0.21705455037280252 1.9209104543470792 ;
	setAttr ".s" -type "double3" 7.8121416380000577 0.26213225844010568 7.8121416380000577 ;
createNode mesh -n "merge1_0Shape" -p "|owynnarmstrong__dev__table__1_01|table1|merge1_0";
	rename -uid "31EDF753-6D46-2E3D-6D9D-A2A78DC0D551";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54734709858894348 0.48888131976127625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode houdiniAsset -n "owynnarmstrong__dev__stool__1_01";
	rename -uid "A14302FA-D345-8FE4-BCA9-658A17DC78A7";
	addAttr -is true -ci true -sn "houdiniAssetParm" -ln "houdiniAssetParm" -at "compound" 
		-nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_0__folder" -ln "houdiniAssetParm_stdswitcher4_0__folder" 
		-nn "Transform" -at "compound" -p "houdiniAssetParm" -nc 12;
	addAttr -is true -ci true -sn "houdiniAssetParm_xOrd" -ln "houdiniAssetParm_xOrd" 
		-nn "Transform Order" -min 0 -max 5 -en "Scale Rot Trans:Scale Trans Rot:Rot Scale Trans:Rot Trans Scale:Trans Scale Rot:Trans Rot Scale" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_rOrd" -ln "houdiniAssetParm_rOrd" 
		-nn "Rotate Order" -min 0 -max 5 -en "Rx Ry Rz:Rx Rz Ry:Ry Rx Rz:Ry Rz Rx:Rz Rx Ry:Rz Ry Rx" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_t" -ln "houdiniAssetParm_t" -nn "Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple0" -ln "houdiniAssetParm_t__tuple0" 
		-nn "Translate 0" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple1" -ln "houdiniAssetParm_t__tuple1" 
		-nn "Translate 1" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_t__tuple2" -ln "houdiniAssetParm_t__tuple2" 
		-nn "Translate 2" -at "float" -p "houdiniAssetParm_t";
	addAttr -is true -ci true -sn "houdiniAssetParm_r" -ln "houdiniAssetParm_r" -nn "Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple0" -ln "houdiniAssetParm_r__tuple0" 
		-nn "Rotate 0" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple1" -ln "houdiniAssetParm_r__tuple1" 
		-nn "Rotate 1" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_r__tuple2" -ln "houdiniAssetParm_r__tuple2" 
		-nn "Rotate 2" -at "float" -p "houdiniAssetParm_r";
	addAttr -is true -ci true -sn "houdiniAssetParm_s" -ln "houdiniAssetParm_s" -nn "Scale" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple0" -ln "houdiniAssetParm_s__tuple0" 
		-nn "Scale 0" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple1" -ln "houdiniAssetParm_s__tuple1" 
		-nn "Scale 1" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_s__tuple2" -ln "houdiniAssetParm_s__tuple2" 
		-nn "Scale 2" -at "float" -p "houdiniAssetParm_s";
	addAttr -is true -ci true -sn "houdiniAssetParm_p" -ln "houdiniAssetParm_p" -nn "Pivot Translate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple0" -ln "houdiniAssetParm_p__tuple0" 
		-nn "Pivot Translate 0" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple1" -ln "houdiniAssetParm_p__tuple1" 
		-nn "Pivot Translate 1" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_p__tuple2" -ln "houdiniAssetParm_p__tuple2" 
		-nn "Pivot Translate 2" -at "float" -p "houdiniAssetParm_p";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr" -ln "houdiniAssetParm_pr" -nn "Pivot Rotate" 
		-at "compound" -p "houdiniAssetParm_stdswitcher4_0__folder" -nc 3;
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple0" -ln "houdiniAssetParm_pr__tuple0" 
		-nn "Pivot Rotate 0" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple1" -ln "houdiniAssetParm_pr__tuple1" 
		-nn "Pivot Rotate 1" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_pr__tuple2" -ln "houdiniAssetParm_pr__tuple2" 
		-nn "Pivot Rotate 2" -at "float" -p "houdiniAssetParm_pr";
	addAttr -is true -ci true -sn "houdiniAssetParm_scale" -ln "houdiniAssetParm_scale" 
		-nn "Uniform Scale" -at "float" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_pre_xform" -ln "houdiniAssetParm_pre_xform" 
		-nn "Modify Pre-Transform" -min 0 -max 6 -en "Modify Pre-Transform:Clean Transform:Clean Translates:Clean Rotates:Clean Scales:Extract Pre-transform:Reset Pre-transform" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_keeppos" -ln "houdiniAssetParm_keeppos" 
		-nn "Keep Position When Parenting" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_childcomp" -ln "houdiniAssetParm_childcomp" 
		-nn "Child Compensation" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_constraints_on" -ln "houdiniAssetParm_constraints_on" 
		-nn "Enable Constraints" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_1__folder" -ln "houdiniAssetParm_stdswitcher4_1__folder" 
		-nn "Render" -at "compound" -p "houdiniAssetParm" -nc 10;
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_materialpath__node" 
		-ln "houdiniAssetParm_shop_materialpath__node" -nn "Material" -dv -1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_tdisplay" -ln "houdiniAssetParm_tdisplay" 
		-nn "Display" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_display" -ln "houdiniAssetParm_display" 
		-nn "Display" -min 0 -max 1 -smn 0 -smx 1 -at "long" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_viewportlod" -ln "houdiniAssetParm_viewportlod" 
		-nn "Display As" -min 0 -max 5 -en "Full Geometry:Point Cloud:Bounding Box:Centroid:Hidden:Subdivision Surface / Curves" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendervisibility" -ln "houdiniAssetParm_vm_rendervisibility" 
		-nn "Render Visibility" -min 0 -max 6 -en "Visible to all:Visible only to primary rays:Visible only to primary and shadow rays:Invisible to primary rays (Phantom):Invisible to diffuse rays:Invisible to secondary rays:Invisible (Unrenderable)" 
		-at "enum" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubd" -ln "houdiniAssetParm_vm_rendersubd" 
		-nn "Render Polygons As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_0__folder" -ln "houdiniAssetParm_folder0_0__folder" 
		-nn "Shading" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 10;
	addAttr -is true -ci true -sn "houdiniAssetParm_categories" -ln "houdiniAssetParm_categories" 
		-nn "Categories" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_reflectmask" -ln "houdiniAssetParm_reflectmask" 
		-nn "Reflection Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_refractmask" -ln "houdiniAssetParm_refractmask" 
		-nn "Refraction Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightmask" -ln "houdiniAssetParm_lightmask" 
		-nn "Light Mask" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_lightcategories" -ln "houdiniAssetParm_lightcategories" 
		-nn "Light Selection" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_lpetag" -ln "houdiniAssetParm_vm_lpetag" 
		-nn "LPE Tag" -dt "string" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilter" -ln "houdiniAssetParm_vm_volumefilter" 
		-nn "Volume Filter" -min 0 -max 6 -en "Box Filter:Gaussian:Bartlett (triangle):Catmull-Rom:Hanning:Blackman:Sinc (sharpening)" 
		-at "enum" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_volumefilterwidth" -ln "houdiniAssetParm_vm_volumefilterwidth" 
		-nn "Volume Filter Width" -smn 0.0010000000474974513 -smx 5 -at "float" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_matte" -ln "houdiniAssetParm_vm_matte" 
		-nn "Matte shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rayshade" -ln "houdiniAssetParm_vm_rayshade" 
		-nn "Raytrace Shading" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_0__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_1__folder" -ln "houdiniAssetParm_folder0_1__folder" 
		-nn "Sampling" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 1;
	addAttr -is true -ci true -sn "houdiniAssetParm_geo_velocityblur" -ln "houdiniAssetParm_geo_velocityblur" 
		-nn "Geometry Velocity Blur" -min 0 -max 2 -en "No Velocity Blur:Velocity Blur:Acceleration Blur" 
		-at "enum" -p "houdiniAssetParm_folder0_1__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_2__folder" -ln "houdiniAssetParm_folder0_2__folder" 
		-nn "Dicing" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 4;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_shadingquality" -ln "houdiniAssetParm_vm_shadingquality" 
		-nn "Shading Quality" -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_flatness" -ln "houdiniAssetParm_vm_flatness" 
		-nn "Dicing Flatness" -smn 0 -smx 1 -at "float" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_raypredice" -ln "houdiniAssetParm_vm_raypredice" 
		-nn "Ray Predicing" -min 0 -max 2 -en "Disable Predicing:Full Predicing:Precompute Bounds" 
		-at "enum" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_curvesurface" -ln "houdiniAssetParm_vm_curvesurface" 
		-nn "Shade Curves As Surfaces" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_folder0_3__folder" -ln "houdiniAssetParm_folder0_3__folder" 
		-nn "Geometry" -at "compound" -p "houdiniAssetParm_stdswitcher4_1__folder" -nc 14;
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rmbackface" -ln "houdiniAssetParm_vm_rmbackface" 
		-nn "Backface Removal" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -dcb 1 -is true -ci true -sn "houdiniAssetParm_shop_geometrypath__node" 
		-ln "houdiniAssetParm_shop_geometrypath__node" -nn "Procedural Shader" -dv -1 -at "long" 
		-p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_forcegeometry" -ln "houdiniAssetParm_vm_forcegeometry" 
		-nn "Force Procedural Geometry Output" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_rendersubdcurves" -ln "houdiniAssetParm_vm_rendersubdcurves" 
		-nn "Render Polygon Curves As Subdivision (Mantra)" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpoints" -ln "houdiniAssetParm_vm_renderpoints" 
		-nn "Render As Points (Mantra)" -min 0 -max 2 -en "No Point Rendering:Render Only Points:Render Unconnected Points" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_renderpointsas" -ln "houdiniAssetParm_vm_renderpointsas" 
		-nn "Render Points As (Mantra)" -min 0 -max 1 -en "Spheres:Circles" -at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_usenforpoints" -ln "houdiniAssetParm_vm_usenforpoints" 
		-nn "Use N For Point Rendering" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pointscale" -ln "houdiniAssetParm_vm_pointscale" 
		-nn "Point Scale" -min 0 -smn 0 -smx 10 -at "float" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_pscalediameter" -ln "houdiniAssetParm_vm_pscalediameter" 
		-nn "Treat Point Scale as Diameter Instead of Radius" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_metavolume" -ln "houdiniAssetParm_vm_metavolume" 
		-nn "Metaballs as Volume" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_coving" -ln "houdiniAssetParm_vm_coving" 
		-nn "Coving" -min 0 -max 2 -en "Disable Coving:Coving for displacement/sub-d:Coving for all primitives" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_materialoverride" -ln "houdiniAssetParm_vm_materialoverride" 
		-nn "Material Override" -min 0 -max 2 -en "Disabled:Evaluate for Each Primitve/Point:Evaluate Once" 
		-at "enum" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_overridedetail" -ln "houdiniAssetParm_vm_overridedetail" 
		-nn "Ignore Geometry Attribute Shaders" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vm_procuseroottransform" -ln "houdiniAssetParm_vm_procuseroottransform" 
		-nn "Proc Use Root Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_folder0_3__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_stdswitcher4_2__folder" -ln "houdiniAssetParm_stdswitcher4_2__folder" 
		-nn "Misc" -at "compound" -p "houdiniAssetParm" -nc 7;
	addAttr -is true -ci true -sn "houdiniAssetParm_use_dcolor" -ln "houdiniAssetParm_use_dcolor" 
		-nn "Set Wireframe Color" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uac -sn "houdiniAssetParm_dcolor" -ln "houdiniAssetParm_dcolor" 
		-nn "Wireframe Color" -at "float3" -p "houdiniAssetParm_stdswitcher4_2__folder" -nc 
		3;
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorr" -ln "houdiniAssetParm_dcolorR" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorg" -ln "houdiniAssetParm_dcolorG" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_dcolorb" -ln "houdiniAssetParm_dcolorB" 
		-at "float" -p "houdiniAssetParm_dcolor";
	addAttr -is true -ci true -sn "houdiniAssetParm_picking" -ln "houdiniAssetParm_picking" 
		-nn "Viewport Selecting Enabled" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -uaf -sn "houdiniAssetParm_pickscript" -ln "houdiniAssetParm_pickscript" 
		-nn "Select Script" -ct "hapiParmFile_read" -dt "string" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_caching" -ln "houdiniAssetParm_caching" 
		-nn "Cache Object Transform" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_shadeopen" -ln "houdiniAssetParm_vport_shadeopen" 
		-nn "Shade Open Curves In Viewport" -min 0 -max 1 -at "bool" -p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_vport_onionskin" -ln "houdiniAssetParm_vport_onionskin" 
		-nn "Onion Skinning" -min 0 -max 2 -en "Off:Transform only:Full Deformation" -at "enum" 
		-p "houdiniAssetParm_stdswitcher4_2__folder";
	addAttr -is true -ci true -sn "houdiniAssetParm_renderable" -ln "houdiniAssetParm_renderable" 
		-nn "Renderable" -min 0 -max 1 -at "bool" -p "houdiniAssetParm";
	setAttr ".otlFilePath" -type "string" "/Users/owynnarmstrong/Desktop/object_stool.1.0.hdanc";
	setAttr ".assetName" -type "string" "owynnarmstrong::dev::Object/stool::1.0";
	setAttr -cb on ".houdiniAssetParm_s__tuple0" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple1" 1;
	setAttr -cb on ".houdiniAssetParm_s__tuple2" 1;
	setAttr -cb on ".houdiniAssetParm_scale" 1;
	setAttr -cb on ".houdiniAssetParm_shop_materialpath__node" -1;
	setAttr -l on -cb on ".houdiniAssetParm_display" 1;
	setAttr ".houdiniAssetParm_categories" -type "string" "";
	setAttr ".houdiniAssetParm_reflectmask" -type "string" "*";
	setAttr ".houdiniAssetParm_refractmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightmask" -type "string" "*";
	setAttr ".houdiniAssetParm_lightcategories" -type "string" "*";
	setAttr ".houdiniAssetParm_vm_lpetag" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_vm_volumefilterwidth" 1;
	setAttr -cb on ".houdiniAssetParm_vm_shadingquality" 1;
	setAttr -cb on ".houdiniAssetParm_vm_flatness" 0.05000000074505806;
	setAttr -cb on ".houdiniAssetParm_shop_geometrypath__node" -1;
	setAttr -cb on ".houdiniAssetParm_vm_forcegeometry" yes;
	setAttr -cb on ".houdiniAssetParm_vm_renderpoints" 2;
	setAttr -cb on ".houdiniAssetParm_vm_pointscale" 1;
	setAttr -cb on ".houdiniAssetParm_vm_coving" 1;
	setAttr -cb on ".houdiniAssetParm_vm_materialoverride" 2;
	setAttr -cb on ".houdiniAssetParm_vm_procuseroottransform" yes;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor" -type "float3" 1 1 1 ;
	setAttr -l on -cb on ".houdiniAssetParm_dcolor";
	setAttr -cb on ".houdiniAssetParm_picking" yes;
	setAttr ".houdiniAssetParm_pickscript" -type "string" "";
	setAttr -cb on ".houdiniAssetParm_caching" yes;
	setAttr -cb on ".houdiniAssetParm_renderable" yes;
createNode transform -n "stool1" -p "owynnarmstrong__dev__stool__1_01";
	rename -uid "99E792CB-7945-4708-C520-DD8F011C24E4";
createNode transform -n "merge1_0" -p "stool1";
	rename -uid "A8711069-554C-BF91-7023-98AD71291A1D";
	setAttr ".t" -type "double3" -24.591352658943087 0.18445480633150746 -9.2864338966452316 ;
	setAttr ".s" -type "double3" 2.8443335082509145 2.8443335082509145 2.8443335082509145 ;
createNode mesh -n "merge1_0Shape" -p "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0";
	rename -uid "A99C0F7D-CB4C-FDED-5662-8D8DB9C816BD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.40295109152793884 0.34871798753738403 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "areaLight1";
	rename -uid "E0C2EE1C-B149-AF13-ECE8-919C6EBC985B";
	setAttr ".t" -type "double3" -18.428505277518674 8.0501335870922599 13.969924829044954 ;
createNode areaLight -n "areaLightShape1" -p "areaLight1";
	rename -uid "1E909130-6F44-6C1A-9036-CF966CB11D83";
	setAttr -k off ".v";
	setAttr ".in" 1000;
createNode transform -n "aiSkyDomeLight1";
	rename -uid "0F04E49A-B74E-C9AB-2293-04BBCF7FE8CA";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "6A7E9CC5-6648-C69C-056D-C18264C21B2A";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E72BE365-434D-FE91-B464-6B8789CDB464";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7905C72F-4A4B-E7FA-D728-B397E71BC613";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "76B2E967-2E41-EF87-27E8-09805EEDA4A8";
createNode displayLayerManager -n "layerManager";
	rename -uid "17B91E2C-0841-4995-B1F7-1D9F8AC4C470";
createNode displayLayer -n "defaultLayer";
	rename -uid "7B6C5D81-954B-A231-5E5C-2098849D7064";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6839DDC5-5349-B418-2055-8CB348FF886D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "160D2556-4F43-9C5D-993F-F79097D29875";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "6104B6AA-D34E-5370-2A2C-A1B26C1ECE58";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.1.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "8308116C-944E-0FC2-32CA-759EA8DBC3BF";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "5E27C87B-5945-1823-AEB3-C69521C79C79";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6846456B-E74B-87E3-3F85-B4BA5630529B";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode timeEditor -s -n "timeEditor";
	rename -uid "A9EADE68-4E4E-A29B-0AC9-EA88A51BE278";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "555A10E5-1C45-7B07-BE8D-CAB81D53C36D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:287]";
	setAttr ".ix" -type "matrix" 3.3261226661234238 0 0 0 0 3.3261226661234238 0 0 0 0 3.3261226661234238 0
		 0 1.4761300627524481 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.19959497451782227 1.3471246957778931 0.15327703952789307 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 7.6328632831573486 4.1463778018951416 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "79C2A818-8D4B-ACC1-CB17-C393F45008C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[144]" "e[147]" "e[149]" "e[153]" "e[155]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[354]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "F69E1A33-DC4F-8A21-6A8D-ED87E1DA6EB5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[336]" "e[339]" "e[341]" "e[343]" "e[345]" "e[347]" "e[349]" "e[351]" "e[353]" "e[355]" "e[357]" "e[359]" "e[361]" "e[363]" "e[365]" "e[367]" "e[369]" "e[371]" "e[373]" "e[375]" "e[377]" "e[379]" "e[381]" "e[383]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "B1303A43-4940-6474-49EF-C2860CD58A0D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[206]" "e[254]" "e[302]" "e[350]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "D5CD3C8A-E145-3B95-F398-D48CACACA342";
	setAttr ".uopa" yes;
	setAttr -s 317 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.22195041 0.091326952 0.22257245 0.11201251
		 0.24970907 0.20404279 0.22219461 0.11200607 0.22782868 0.14393914 0.23331904 0.17057407
		 0.23874164 0.1888082 0.24540406 0.20693755 0.25292033 0.23288572 0.25989079 0.25253916
		 0.26519722 0.2577821 0.26894748 0.25397515 0.2739771 0.26535654 0.27708989 0.28717268
		 0.27663702 0.3127768 0.27507639 0.32591796 0.2707352 0.33561027 0.26661193 0.32467461
		 0.26049918 0.3134526 0.25283897 0.30286074 0.24569321 0.28133917 0.23864961 0.25271785
		 0.23224801 0.21390009 0.22813767 0.15789211 0.22639054 0.098414183 0.20067173 0.097747684
		 0.19887805 0.090507925 0.20006293 0.085385025 0.20386326 0.093528152 0.21151185 0.077658057
		 0.22214246 0.11220205 0.23858833 0.18019688 0.25471389 0.2456876 0.26877081 0.2931639
		 0.27886349 0.3144784 0.28839546 0.33155322 0.29798359 0.34697187 0.3042956 0.39562786
		 0.30213338 0.44860554 0.29945248 0.46362841 0.29491729 0.4478116 0.2869218 0.41517031
		 0.27563131 0.37389672 0.26094484 0.33405495 0.24742228 0.27820086 0.23340303 0.2226615
		 0.22199726 0.14378572 0.21058494 0.10313189 0.20135176 0.069331288 0.17861712 0.1015287
		 0.17895645 0.080693781 0.18129647 0.050856709 0.18513501 0.041416883 0.19437945 0.070189893
		 0.21781623 0.14923429 0.23794913 0.21811914 0.25829875 0.28674448 0.2828393 0.37725008
		 0.29723275 0.42035747 0.30819654 0.44683743 0.32261187 0.47627759 0.33357209 0.53001261
		 0.33320934 0.57699943 0.32500362 0.60015619 0.31878281 0.56441534 0.30717629 0.52197957
		 0.30044675 0.40791321 0.26486948 0.40042174 0.23764038 0.36635232 0.2192941 0.28472543
		 0.2071124 0.16679895 0.1907922 0.12112582 0.18032622 0.09390825 0.22141206 -0.047075152
		 0.2072587 0.0011104345 0.18804133 0.03321594 0.17940509 0.075284421 0.20701516 0.14402455
		 0.26384377 0.2144407 0.3375107 0.26067716 0.39626312 0.28665018 -1.6185751 -0.95988047
		 -1.45744014 -0.89661443 -1.28199816 -0.84966832 -1.10231781 -0.81618768 -0.90196347
		 -0.7591995 -0.70671749 -0.70393699 -0.52292144 -0.63614535 -0.35094193 -0.59379786
		 -0.2051322 -0.5293957 -0.051723722 -0.51133186 0.047920883 -0.44669825 0.10549073
		 -0.36938763 0.1773665 -0.35304147 0.21119061 -0.303352 0.21963108 -0.22412497 0.21748978
		 -0.14505345 0.25000376 -0.0044158101 0.23200226 0.051971853 0.20962471 0.089012802
		 0.19913554 0.14502728 0.20441306 0.19144005 0.24723876 0.24701434 0.34548926 0.31512451
		 0.42325747 0.36233515 -1.61232114 -0.89164585 -1.46790528 -0.85372937 -1.27987862
		 -0.80236644 -1.068899512 -0.7358709 -0.8634609 -0.68182665 -0.65942788 -0.62617022
		 -0.46505174 -0.57348055 -0.27011341 -0.53611434 -0.11821724 -0.47987944 0.057932533
		 -0.45738351 0.14333574 -0.38849941 0.19792038 -0.32822809 0.26934716 -0.29732633
		 0.29189852 -0.25355384 0.27156228 -0.16184205 0.26182884 -0.12148774 0.27864361 0.033324063
		 0.25973624 0.090605438 0.23388505 0.15027648 0.21793532 0.20923519 0.21640944 0.26153165
		 0.2362721 0.31057566 0.37170541 0.36715388 0.46422744 0.41501939 -1.59318352 -0.8354516
		 -1.45252919 -0.78813529 -1.2606976 -0.73710304 -1.040127635 -0.67914677 -0.83331341
		 -0.62496668 -0.63047278 -0.57052618 -0.42236388 -0.51376927 -0.22872162 -0.46396947
		 -0.070966639 -0.41916713 0.13132805 -0.3679719 0.22320692 -0.31664973 0.26616839
		 -0.26405594 0.33307123 -0.21030504 0.33750576 -0.1573236 0.31683147 -0.09752807 0.30221552
		 -0.038163096 0.31569719 0.099439561 0.29438049 0.1575982 0.2820971 0.21101362 0.26154959
		 0.29400116 0.27748466 0.3392213 0.33099985 0.37818277 0.40610492 0.4201656 0.49054968
		 0.4691965 -1.55992365 -0.77359438 -1.41590166 -0.70612693 -1.22236955 -0.66218895
		 -1.010227919 -0.62168944 -0.80611467 -0.57026219 -0.61049134 -0.5253309 -0.41409913
		 -0.46973932 -0.22420722 -0.41451201 -0.039389767 -0.35061121 0.13579781 -0.284477
		 0.27727783 -0.21087757 0.30429402 -0.18744865 0.34059572 -0.14017645 0.36109138 -0.078424692
		 0.35377824 -0.020729512 0.33817869 0.03667748 -0.12812674 0.15567759 -0.14457119
		 0.16549614 -0.14419991 0.13189539 -0.14894289 0.14604744 -0.14078778 0.1276367 -0.11239749
		 0.072073817 -0.089030266 0.0338296 -0.059098601 -0.017175406 -0.012601316 -0.10446274
		 0.038155019 -0.21278799 0.076658726 -0.28648055 0.10261452 -0.33819348 0.12138158
		 -0.41035342 0.12782323 -0.47424185 0.13464782 -0.48117757 0.14290082 -0.44988954
		 0.14555719 -0.38670644 0.13572289 -0.30024397 0.11041147 -0.21126935 0.05294396 -0.18658015
		 0.017209575 -0.093428567 -0.02441512 0.007057488 -0.071863711 0.054245114 -0.10532704
		 0.1281513 -0.099867791 0.18257526 -0.1115596 0.16187394 -0.1180535 0.15103021 -0.11945778
		 0.14780495 -0.11637461 0.14983529 -0.10750633 0.15100506 -0.092810273 0.13552129
		 -0.063477397 0.084975868 -0.038564146 0.055275068 0.010541618 -0.057142027 0.037168384
		 -0.077550329 0.071448922 -0.12775265 0.097277403 -0.22102275 0.11225724 -0.27183026
		 0.11997277 -0.29160666 0.11507133 -0.31382838 0.1116271 -0.27655444 0.10397407 -0.17297588
		 0.082856953 -0.1151595 0.051765397 -0.076064803 0.022355005 0.0029208362 -0.012623459
		 0.074679539 -0.047330588 0.13640389 -0.077626079 0.20314354 -0.069723696 0.17630595
		 -0.076401174 0.14010224 -0.084783077 0.14999005 -0.088679254 0.17173508 -0.08583045
		 0.16067857 -0.07949239 0.1808455 -0.068105996 0.19321027 -0.047683299 0.12831035
		 -0.025080204 0.091702819 4.5716763e-05 0.048730657 0.022266567 0.053825915 0.048458517
		 0.040552098 0.065573156 -0.057065841 0.080540478 -0.096157089 0.090487987 -0.10837547
		 0.080333471 -0.16523699 0.073669285 -0.17132325 0.066231132 -0.13512152 0.053671688
		 -0.067208007 0.037968725 0.0071284175 0.016448438 0.062778965 -0.006768465 0.12561841
		 -0.031972528 0.16374123 -0.05483216 0.20002294 -0.037972301 0.13253312 -0.041552961
		 0.11068098 -0.04554528 0.10330622 -0.047348976 0.099695951 -0.046309352 0.093901083
		 -0.042607427 0.088269442 -0.036188006 0.079996079 -0.027175248 0.060907841 -0.016045094
		 0.055381626;
	setAttr ".uvtk[250:316]" -0.0040884018 0.062076032 0.0082867146 0.056574374
		 0.02081728 0.048555456 0.031807005 0.047670498 0.041243315 0.046252504 0.045104921
		 0.023926377 0.040830582 -0.008237578 0.039461464 0.00081526488 0.034231782 0.0095038041
		 0.026368737 0.027186558 0.016744018 0.050869167 0.0053441226 0.087197915 -0.0073024631
		 0.11956236 -0.020332575 0.14836623 -0.031218529 0.14964426 -0.0054175854 0.063416898
		 0.15781981 0.11437553 0.16265905 0.13722432 0.16875941 0.14646697 0.1886459 0.18625081
		 0.21073917 0.28686309 0.22989601 0.44056201 0.26436198 0.50249481 0.29474592 0.57443476
		 0.30703348 0.69836187 0.33305115 0.72783589 0.341842 0.76513803 0.35320175 0.75254989
		 0.35716408 0.73447037 0.35562295 0.6799258 0.34783483 0.63277245 0.32307708 0.55003381
		 0.29486942 0.44572341 0.27255309 0.37088931 0.26192296 0.31669819 0.23480439 0.23085952
		 0.16894013 0.07961911 0.16335684 0.11678636 0.37567693 0.11660054 0.35666901 0.168221
		 0.3803274 0.048343599 0.38795012 0.0073818862 0.35400081 -0.066461042 0.30026817
		 -0.1354129 0.25617588 -0.15193829 0.11957768 -0.22166993 -0.053795196 -0.29944232
		 -0.23739563 -0.37563175 -0.4161357 -0.43316618 -0.59066981 -0.4705767 -0.76923895
		 -0.49710321 -0.96062613 -0.53538597 -1.15106082 -0.60242945 -1.32378495 -0.66364831
		 -1.4912008 -0.6878413 0.54938626 0.56612873 0.46878195 0.49867213 0.41936851 0.422221
		 0.3727926 0.37150234 0.35021305 0.30565411 0.34407866 0.23776555 0.34171659 0.21483499
		 -1.61630023 -0.73086661 -1.67215347 -0.82437623 -1.69231987 -0.87641275 -1.72244215
		 -0.92519677 -1.72964644 -0.99008012;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "7DE73FFC-3244-5F1B-8EA3-F9A5CFBF9DAB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[151]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "7AAEAEC2-064E-19E7-33A2-08A8A4972547";
	setAttr ".uopa" yes;
	setAttr -s 319 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.50470954 -0.37633196 -0.52086127
		 -0.37287548 -0.51911563 -0.4228299 -0.53544229 -0.37347475 -0.55034006 -0.37771216
		 -0.56228155 -0.38465944 -0.57103175 -0.39377323 -0.5766263 -0.40445402 -0.57835764
		 -0.4161984 -0.57614738 -0.42820099 -0.56997192 -0.44083884 -0.55997205 -0.45358828
		 -0.54775602 -0.4627184 -0.53332204 -0.46877864 -0.51736331 -0.47180238 -0.50218016
		 -0.47170058 -0.48793906 -0.46840265 -0.47637898 -0.46219698 -0.46750027 -0.45341888
		 -0.46193612 -0.44264629 -0.46026689 -0.43105927 -0.4622848 -0.41904858 -0.46789432
		 -0.40670112 -0.47746372 -0.39363709 -0.49084634 -0.38191739 -0.49365997 -0.33004585
		 -0.52272743 -0.32544354 -0.55171019 -0.32751659 -0.57830256 -0.33525249 -0.60407495
		 -0.34774235 -0.62174368 -0.36594728 -0.63223493 -0.38878086 -0.63488984 -0.41290429
		 -0.63036323 -0.43677667 -0.618622 -0.46098819 -0.60001338 -0.48317888 -0.57612133
		 -0.50173801 -0.54743236 -0.51343793 -0.51597083 -0.51848239 -0.48703432 -0.51793784
		 -0.46049422 -0.51145977 -0.43724436 -0.49891225 -0.41916871 -0.4807891 -0.40783226
		 -0.45853963 -0.40404385 -0.43412843 -0.40799302 -0.40902618 -0.41907501 -0.38305655
		 -0.43823951 -0.36202779 -0.46262652 -0.34539369 -0.48221397 -0.29018316 -0.5246262
		 -0.28316399 -0.5677129 -0.28435472 -0.6077686 -0.29446003 -0.64151388 -0.31454501
		 -0.66717476 -0.34208372 -0.68221074 -0.37384191 -0.68678033 -0.40869203 -0.67972749
		 -0.44458428 -0.66366458 -0.47995177 -0.63715243 -0.51295692 -0.60320622 -0.539478
		 -0.56261301 -0.55671841 -0.51827806 -0.56452829 -0.47504109 -0.56228703 -0.43527073
		 -0.55362707 -0.40103775 -0.53666025 -0.37069869 -0.51093024 -0.35622084 -0.47367027
		 -0.35326093 -0.43779889 -0.35850084 -0.40215531 -0.37398225 -0.36331657 -0.40274727
		 -0.33174887 -0.43952566 -0.30708793 -0.094594531 0.056207411 -0.14456929 0.039836653
		 -0.19532554 0.014502963 -0.24780802 -0.011892011 -0.29959133 -0.028926706 -0.35232705
		 -0.045698173 -0.39963776 -0.054283559 -0.43962559 -0.077111587 0.7927441 0.31328866
		 0.74052298 0.30128366 0.68622351 0.28880525 0.6330741 0.26854107 0.57795882 0.25548172
		 0.52399969 0.23968701 0.46998328 0.22653757 0.4185167 0.20466255 0.36620763 0.18774275
		 0.31177893 0.16106926 0.25654963 0.14671777 0.20472598 0.13271321 0.14972426 0.10737377
		 0.090174504 0.089525357 0.027874913 0.080163762 -0.032427613 0.064352147 -0.10341357
		 0.085936904 -0.15658312 0.068600193 -0.21256338 0.046875902 -0.26554507 0.024789592
		 -0.31661728 0.0070973132 -0.36590832 -0.008741973 -0.41460684 -0.02008233 -0.45602432
		 -0.038078375 0.78802222 0.35649803 0.73627448 0.34038913 0.68062794 0.32610568 0.62255836
		 0.31197801 0.56598771 0.29511222 0.51005709 0.27828902 0.4559176 0.26030838 0.40183145
		 0.24083023 0.35022315 0.22555421 0.29516155 0.2055767 0.24213098 0.18943872 0.19187441
		 0.17457522 0.13764916 0.15453438 0.082813658 0.13684131 0.020187732 0.12328652 -0.037116293
		 0.10582028 -0.11154204 0.11867264 -0.16992198 0.1007252 -0.22753648 0.081282601 -0.27983385
		 0.061035983 -0.33099714 0.044360436 -0.37654668 0.027993405 -0.42698839 0.0085623283
		 -0.46757743 -0.0083864387 0.78223711 0.38890162 0.72884589 0.3753086 0.67275405 0.36029223
		 0.6132288 0.34224185 0.55649155 0.32562786 0.50049132 0.30869311 0.44436797 0.29049888
		 0.39071864 0.27558553 0.34013936 0.26272029 0.28180969 0.24814634 0.22932488 0.23210774
		 0.17743964 0.21521886 0.12443797 0.19795199 0.068633594 0.1817814 0.0097219339 0.16256063
		 -0.048426021 0.14339708 -0.12307587 0.15675382 -0.18098627 0.1365947 -0.23784868
		 0.11841542 -0.29355159 0.099342108 -0.3441737 0.081925288 -0.39398235 0.062782831
		 -0.43755582 0.039135769 -0.48008129 0.021425767 0.77212733 0.42142901 0.71638566
		 0.41232854 0.66182774 0.3958689 0.60411561 0.37424999 0.54829097 0.3546963 0.49345049
		 0.33470148 0.4388569 0.32197946 0.38427711 0.31102291 0.32956937 0.30091 0.27290961
		 0.29312104 0.2170548 0.27999797 0.16193335 0.25769085 0.10960982 0.24186362 0.053299185
		 0.22248854 -0.0041854689 0.20077817 -0.063892476 0.17997159 0.26530796 -0.055548571
		 0.22861151 -0.06542179 0.19176206 -0.066095144 0.15760516 -0.064153574 0.12658037
		 -0.053233229 0.10070248 -0.035092995 0.080883458 -0.010622934 0.06895414 0.020819515
		 0.067706555 0.055577546 0.077771321 0.090876848 0.096305534 0.12268732 0.12533791
		 0.15095672 0.16219501 0.16866075 0.20014964 0.17784484 0.23443152 0.1778921 0.26667473
		 0.17426436 0.2996031 0.16684267 0.33053216 0.15039912 0.35279384 0.12430057 0.35697022
		 0.088215396 0.3573094 0.055836007 0.34922615 0.021361411 0.32853726 -0.010118827
		 0.30109081 -0.037423447 0.2536296 -0.029325202 0.22423263 -0.037661806 0.19614463
		 -0.040607139 0.16960542 -0.038348362 0.14526211 -0.030170009 0.12390308 -0.015621617
		 0.10872684 0.0053192526 0.10062994 0.028984621 0.10095479 0.055167452 0.10823508
		 0.08203344 0.12408511 0.10612167 0.14512371 0.12644663 0.1721562 0.14260143 0.20091443
		 0.15076067 0.22926818 0.15216559 0.25630537 0.14954612 0.28019613 0.14139973 0.30498317
		 0.12751564 0.31965077 0.10742846 0.32519397 0.082809433 0.32520911 0.056816116 0.31797907
		 0.030533805 0.30308738 0.0061857551 0.28183234 -0.014298961 0.24117225 -0.0024006218
		 0.22014444 -0.0088999122 0.20132844 -0.011678323 0.18255827 -0.010121658 0.16624223
		 -0.0041900128 0.15105473 0.0061971098 0.13966928 0.020317256 0.13639908 0.036862999
		 0.13661574 0.0542254 0.14216648 0.070923567 0.15176325 0.089187235 0.16536091 0.10285519
		 0.18525895 0.1142388 0.20430325 0.120744 0.2234108 0.12242562 0.24459741 0.1209545
		 0.26085609 0.11552222 0.2739194 0.10580936 0.28472885 0.091957629 0.29032031 0.075015977
		 0.29034159 0.057409421 0.28535107 0.039341614 0.27514774 0.022920698 0.26071072 0.0085929185
		 0.22805066 0.025447682 0.21719508 0.021442309 0.20753483 0.019937798 0.19852577 0.020746201
		 0.19054857 0.023741648 0.18409511 0.028637767 0.17956744 0.035232246 0.17749153 0.042842746
		 0.17721967 0.051396638;
	setAttr ".uvtk[250:318]" 0.1792082 0.061489016 0.18404666 0.069994837 0.19077298
		 0.078080773 0.19921349 0.084555104 0.20849822 0.088754147 0.21886443 0.089935005
		 0.23019548 0.088315591 0.23862335 0.085439697 0.24559519 0.080559492 0.25057179 0.073939294
		 0.25301066 0.065878585 0.25321183 0.056722999 0.25077182 0.047482103 0.24591544 0.03870748
		 0.23813778 0.031360582 0.21459685 0.053674594 -0.4173919 -0.27267632 -0.47393441
		 -0.25510374 -0.36931628 -0.30218038 -0.3280679 -0.34130767 -0.30556089 -0.38934878
		 -0.30714977 -0.44164708 -0.30969891 -0.48924711 -0.32883865 -0.53437907 -0.36994022
		 -0.57101721 -0.4140234 -0.59227782 -0.46462297 -0.6017403 -0.51836592 -0.60609549
		 -0.57484668 -0.59866422 -0.62943774 -0.57552582 -0.67350823 -0.53776866 -0.70379174
		 -0.49555054 -0.72670764 -0.45152023 -0.73220193 -0.40454867 -0.72499651 -0.35984829
		 -0.7070387 -0.32099518 -0.57891601 -0.24462005 -0.52450472 -0.24582723 -0.080432557
		 0.22030835 -0.13653921 0.19588499 -0.022716228 0.24016093 0.033386942 0.26570043
		 0.090597458 0.28364724 0.14406349 0.30102488 0.20214696 0.33121327 0.26453757 0.34076509
		 0.32549113 0.34353137 0.38269049 0.34711936 0.43576708 0.35394874 0.48593944 0.36659297
		 0.53676856 0.39241198 0.58918107 0.41752669 0.64510882 0.43220362 0.69943297 0.45148379
		 0.75394118 0.46469188 -0.50009942 0.068210647 -0.45290831 0.080526054 -0.40699726
		 0.1004087 -0.3566553 0.12303466 -0.30232114 0.14214657 -0.2469589 0.1561458 -0.1916853
		 0.17528434 0.80271137 0.47876978 0.82072639 0.43054897 0.82971489 0.40036935 0.83506209
		 0.36997142 0.83968198 0.32772654 -0.63152087 -0.25613019 -0.67697471 -0.2857593;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "C858A7D8-5A48-93A6-DE03-D2A518C8572E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[1704]" "e[1708]" "e[1711]" "e[1714]" "e[1771]" "e[1774]" "e[1777]" "e[1780]" "e[1782]" "e[1820]" "e[1822:1823]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "A2DB4F77-6343-16A2-FAD8-A1907E8C1E91";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[1717]" "e[1720]" "e[1723]" "e[1726]" "e[1729]" "e[1732]" "e[1735]" "e[1738]" "e[1741]" "e[1744]" "e[1747]" "e[1750]" "e[1753]" "e[1756]" "e[1759]" "e[1762]" "e[1765]" "e[1768]" "e[1784]" "e[1786]" "e[1788]" "e[1790]" "e[1792]" "e[1794]" "e[1796]" "e[1798]" "e[1800]" "e[1802]" "e[1804]" "e[1806]" "e[1808]" "e[1810]" "e[1812]" "e[1814]" "e[1816]" "e[1818]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "08F3C030-3C46-211D-77D3-08AE5D1075F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 47 "e[1272:1847]" "e[1849:1850]" "e[1852]" "e[1854]" "e[1856]" "e[1858]" "e[1860]" "e[1862]" "e[1864]" "e[1866]" "e[1868]" "e[1870]" "e[1872]" "e[1874]" "e[1876]" "e[1878]" "e[1880]" "e[1882]" "e[1884]" "e[1886]" "e[1888]" "e[1890]" "e[1892]" "e[1894]" "e[1897:1898]" "e[1900]" "e[1902]" "e[1904]" "e[1906]" "e[1908]" "e[1910]" "e[1912]" "e[1914]" "e[1916]" "e[1918]" "e[1920]" "e[1922]" "e[1924]" "e[1926]" "e[1928]" "e[1930]" "e[1932]" "e[1934]" "e[1936]" "e[1938]" "e[1940]" "e[1942]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge4";
	rename -uid "DBC15F06-3344-0BBD-2046-9BBF1B4131D4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 47 "e[1537:1538]" "e[1540]" "e[1542]" "e[1544]" "e[1546]" "e[1548]" "e[1550]" "e[1552]" "e[1554]" "e[1556]" "e[1558]" "e[1560]" "e[1562]" "e[1564]" "e[1566]" "e[1568]" "e[1570]" "e[1572]" "e[1574]" "e[1576]" "e[1578]" "e[1580]" "e[1582]" "e[1705]" "e[1707]" "e[1709]" "e[1712]" "e[1715]" "e[1718]" "e[1721]" "e[1724]" "e[1727]" "e[1730]" "e[1733]" "e[1736]" "e[1739]" "e[1742]" "e[1745]" "e[1748]" "e[1751]" "e[1754]" "e[1757]" "e[1760]" "e[1763]" "e[1766]" "e[1769]" "e[1772]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge5";
	rename -uid "45FC2B74-A74D-AE0B-53EF-7BAC868FD607";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 47 "e[1369:1370]" "e[1372]" "e[1374]" "e[1376]" "e[1378]" "e[1380]" "e[1382]" "e[1384]" "e[1386]" "e[1388]" "e[1390]" "e[1392]" "e[1394]" "e[1396]" "e[1398]" "e[1400]" "e[1402]" "e[1404]" "e[1406]" "e[1408]" "e[1410]" "e[1412]" "e[1414]" "e[1585]" "e[1587]" "e[1589]" "e[1592]" "e[1595]" "e[1598]" "e[1601]" "e[1604]" "e[1607]" "e[1610]" "e[1613]" "e[1616]" "e[1619]" "e[1622]" "e[1625]" "e[1628]" "e[1631]" "e[1634]" "e[1637]" "e[1640]" "e[1643]" "e[1646]" "e[1649]" "e[1652]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge6";
	rename -uid "A9A41EA0-E245-5960-A5B6-21AD60F29326";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1130]" "e[1134]" "e[1137]" "e[1140]" "e[1143]" "e[1146]" "e[1149]" "e[1152]" "e[1155]" "e[1158]" "e[1161]" "e[1164]" "e[1167]" "e[1170]" "e[1173]" "e[1176]" "e[1179]" "e[1182]" "e[1185]" "e[1188]" "e[1191]" "e[1194]" "e[1197]" "e[1199]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge7";
	rename -uid "5E57EFDB-EF40-7882-6BFC-C9A6E810395E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1848]" "e[1851]" "e[1853]" "e[1855]" "e[1857]" "e[1859]" "e[1861]" "e[1863]" "e[1865]" "e[1867]" "e[1869]" "e[1871]" "e[1873]" "e[1875]" "e[1877]" "e[1879]" "e[1881]" "e[1883]" "e[1885]" "e[1887]" "e[1889]" "e[1891]" "e[1893]" "e[1895]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "A0D3C112-E04D-1BCB-EFF8-D68D7FA0F122";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1079]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.18452620506286621 11.266242921352386 0.033682823181152344 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 15.618889808654785 23.665565609931946 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "38E61B0F-B240-6979-BCA1-F39E5C51B700";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1848]" "e[1851]" "e[1853]" "e[1855]" "e[1857]" "e[1859]" "e[1861]" "e[1863]" "e[1865]" "e[1867]" "e[1869]" "e[1871]" "e[1873]" "e[1875]" "e[1877]" "e[1879]" "e[1881]" "e[1883]" "e[1885]" "e[1887]" "e[1889]" "e[1891]" "e[1893]" "e[1895]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "D859E6F7-D84F-3FED-9AEA-699F79115B45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1130]" "e[1134]" "e[1137]" "e[1140]" "e[1143]" "e[1146]" "e[1149]" "e[1152]" "e[1155]" "e[1158]" "e[1161]" "e[1164]" "e[1167]" "e[1170]" "e[1173]" "e[1176]" "e[1179]" "e[1182]" "e[1185]" "e[1188]" "e[1191]" "e[1194]" "e[1197]" "e[1199]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "BF002BAF-3940-168F-F93C-9A9751C627DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1080]" "e[1083]" "e[1085]" "e[1087]" "e[1089]" "e[1091]" "e[1093]" "e[1095]" "e[1097]" "e[1099]" "e[1101]" "e[1103]" "e[1105]" "e[1107]" "e[1109]" "e[1111]" "e[1113]" "e[1115]" "e[1117]" "e[1119]" "e[1121]" "e[1123]" "e[1125]" "e[1127]";
createNode polyMapCut -n "polyMapCut8";
	rename -uid "857EBC64-A44D-4FFF-0890-D79F18E955EC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[1273]" "e[1417]" "e[1585]" "e[1657]" "e[1680]" "e[1705]" "e[1778]" "e[1824]" "e[1849]";
createNode polyMapCut -n "polyMapCut9";
	rename -uid "AB070881-6D47-EDCC-2DF9-8E8454730C2F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[624:647]" "f[696:719]" "f[768:935]";
	setAttr ".uic" yes;
	setAttr ".mr" 0.10000000149011612;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "7E942110-2249-E048-26DF-EE99380FE4F4";
	setAttr ".uopa" yes;
	setAttr -s 250 ".uvtk";
	setAttr ".uvtk[578]" -type "float2" -0.55452073 1.0150462 ;
	setAttr ".uvtk[579]" -type "float2" -0.50196075 0.97266018 ;
	setAttr ".uvtk[581]" -type "float2" -0.59595203 1.0543575 ;
	setAttr ".uvtk[583]" -type "float2" -0.62063062 1.0915703 ;
	setAttr ".uvtk[585]" -type "float2" -0.62395728 1.1274078 ;
	setAttr ".uvtk[587]" -type "float2" -0.60233736 1.1623797 ;
	setAttr ".uvtk[589]" -type "float2" -0.55358422 1.1968548 ;
	setAttr ".uvtk[591]" -type "float2" -0.47711274 1.2310833 ;
	setAttr ".uvtk[593]" -type "float2" -0.37414899 1.2651516 ;
	setAttr ".uvtk[595]" -type "float2" -0.24753308 1.2991235 ;
	setAttr ".uvtk[597]" -type "float2" -0.10163265 1.3330076 ;
	setAttr ".uvtk[599]" -type "float2" 0.057911992 1.3668103 ;
	setAttr ".uvtk[601]" -type "float2" 0.22460431 1.4005122 ;
	setAttr ".uvtk[603]" -type "float2" 0.39143419 1.4340515 ;
	setAttr ".uvtk[605]" -type "float2" 0.55139452 1.467387 ;
	setAttr ".uvtk[607]" -type "float2" 0.69801807 1.5004539 ;
	setAttr ".uvtk[609]" -type "float2" 0.82569337 1.5331687 ;
	setAttr ".uvtk[611]" -type "float2" 0.930121 1.5654507 ;
	setAttr ".uvtk[613]" -type "float2" 1.0085564 1.5970958 ;
	setAttr ".uvtk[615]" -type "float2" 1.0600132 1.6278149 ;
	setAttr ".uvtk[617]" -type "float2" 1.0853782 1.6572175 ;
	setAttr ".uvtk[619]" -type "float2" 1.0873382 1.6847706 ;
	setAttr ".uvtk[621]" -type "float2" 1.0700917 1.7096771 ;
	setAttr ".uvtk[623]" -type "float2" 1.0392371 1.7310451 ;
	setAttr ".uvtk[648]" -type "float2" -0.74844778 0.96019369 ;
	setAttr ".uvtk[649]" -type "float2" -0.68553561 0.91206574 ;
	setAttr ".uvtk[650]" -type "float2" 0.99826556 1.732265 ;
	setAttr ".uvtk[651]" -type "float2" 1.0425496 1.7037189 ;
	setAttr ".uvtk[652]" -type "float2" 1.0725765 1.6732752 ;
	setAttr ".uvtk[653]" -type "float2" 1.0808024 1.6410863 ;
	setAttr ".uvtk[654]" -type "float2" 1.0614966 1.6082797 ;
	setAttr ".uvtk[655]" -type "float2" 1.0111176 1.5748469 ;
	setAttr ".uvtk[656]" -type "float2" 0.92831504 1.5409871 ;
	setAttr ".uvtk[657]" -type "float2" 0.81353635 1.5067508 ;
	setAttr ".uvtk[658]" -type "float2" 0.67056113 1.4729011 ;
	setAttr ".uvtk[659]" -type "float2" 0.50389206 1.4385688 ;
	setAttr ".uvtk[660]" -type "float2" 0.32102507 1.4041817 ;
	setAttr ".uvtk[661]" -type "float2" 0.12799889 1.3691497 ;
	setAttr ".uvtk[662]" -type "float2" -0.064938307 1.3339813 ;
	setAttr ".uvtk[663]" -type "float2" -0.24975878 1.2988518 ;
	setAttr ".uvtk[664]" -type "float2" -0.4182736 1.263574 ;
	setAttr ".uvtk[665]" -type "float2" -0.56410503 1.2278073 ;
	setAttr ".uvtk[666]" -type "float2" -0.68136406 1.1919199 ;
	setAttr ".uvtk[667]" -type "float2" -0.76685643 1.1556772 ;
	setAttr ".uvtk[668]" -type "float2" -0.81967676 1.1191947 ;
	setAttr ".uvtk[669]" -type "float2" -0.84006077 1.0819414 ;
	setAttr ".uvtk[670]" -type "float2" -0.8313871 1.0434673 ;
	setAttr ".uvtk[671]" -type "float2" -0.7985422 1.0032282 ;
	setAttr ".uvtk[720]" -type "float2" -0.94017881 0.93833065 ;
	setAttr ".uvtk[721]" -type "float2" -0.88732469 0.90501338 ;
	setAttr ".uvtk[722]" -type "float2" 0.90418279 1.7804081 ;
	setAttr ".uvtk[723]" -type "float2" -0.81049806 0.96304977 ;
	setAttr ".uvtk[724]" -type "float2" 0.82891941 1.7229791 ;
	setAttr ".uvtk[725]" -type "float2" 0.95830113 1.7469397 ;
	setAttr ".uvtk[726]" -type "float2" 0.88027966 1.6824411 ;
	setAttr ".uvtk[727]" -type "float2" 1.0032609 1.7141896 ;
	setAttr ".uvtk[728]" -type "float2" 0.91300583 1.6428168 ;
	setAttr ".uvtk[729]" -type "float2" 1.0331545 1.6809852 ;
	setAttr ".uvtk[730]" -type "float2" 0.92111588 1.6050301 ;
	setAttr ".uvtk[731]" -type "float2" 1.0398464 1.6470232 ;
	setAttr ".uvtk[732]" -type "float2" 0.89947999 1.5681493 ;
	setAttr ".uvtk[733]" -type "float2" 1.0192345 1.6128315 ;
	setAttr ".uvtk[734]" -type "float2" 0.85299575 1.5324829 ;
	setAttr ".uvtk[735]" -type "float2" 0.96889746 1.5784603 ;
	setAttr ".uvtk[736]" -type "float2" 0.7665379 1.4981046 ;
	setAttr ".uvtk[737]" -type "float2" 0.88435233 1.5441811 ;
	setAttr ".uvtk[738]" -type "float2" 0.64258528 1.4628329 ;
	setAttr ".uvtk[739]" -type "float2" 0.76680666 1.5097615 ;
	setAttr ".uvtk[740]" -type "float2" 0.51041555 1.4284482 ;
	setAttr ".uvtk[741]" -type "float2" 0.62604517 1.4755055 ;
	setAttr ".uvtk[742]" -type "float2" 0.35186779 1.3934203 ;
	setAttr ".uvtk[743]" -type "float2" 0.46110821 1.4409273 ;
	setAttr ".uvtk[744]" -type "float2" 0.16228074 1.3573422 ;
	setAttr ".uvtk[745]" -type "float2" 0.27585071 1.4060073 ;
	setAttr ".uvtk[746]" -type "float2" -0.03883484 1.3210378 ;
	setAttr ".uvtk[747]" -type "float2" 0.080299854 1.3703625 ;
	setAttr ".uvtk[748]" -type "float2" -0.23662701 1.2845839 ;
	setAttr ".uvtk[749]" -type "float2" -0.11419225 1.3345985 ;
	setAttr ".uvtk[750]" -type "float2" -0.42694762 1.2481923 ;
	setAttr ".uvtk[751]" -type "float2" -0.30089957 1.2989109 ;
	setAttr ".uvtk[752]" -type "float2" -0.59976137 1.2122658 ;
	setAttr ".uvtk[753]" -type "float2" -0.47086164 1.263167 ;
	setAttr ".uvtk[754]" -type "float2" -0.73866153 1.1756666 ;
	setAttr ".uvtk[755]" -type "float2" -0.61548913 1.2267823 ;
	setAttr ".uvtk[756]" -type "float2" -0.84865129 1.1398618 ;
	setAttr ".uvtk[757]" -type "float2" -0.7314682 1.1903992 ;
	setAttr ".uvtk[758]" -type "float2" -0.93077862 1.1050805 ;
	setAttr ".uvtk[759]" -type "float2" -0.81680202 1.1541815 ;
	setAttr ".uvtk[760]" -type "float2" -0.98198968 1.0707651 ;
	setAttr ".uvtk[761]" -type "float2" -0.87006897 1.1173159 ;
	setAttr ".uvtk[762]" -type "float2" -1.0081716 1.0367255 ;
	setAttr ".uvtk[763]" -type "float2" -0.89275527 1.0803113 ;
	setAttr ".uvtk[764]" -type "float2" -1.0082535 1.0031012 ;
	setAttr ".uvtk[765]" -type "float2" -0.88718945 1.0424023 ;
	setAttr ".uvtk[766]" -type "float2" -0.98336089 0.97026396 ;
	setAttr ".uvtk[767]" -type "float2" -0.85723561 1.0034914 ;
	setAttr ".uvtk[816]" -type "float2" -0.80941647 0.95426053 ;
	setAttr ".uvtk[817]" -type "float2" -0.75065958 0.91277409 ;
	setAttr ".uvtk[818]" -type "float2" 0.94671881 1.7675745 ;
	setAttr ".uvtk[819]" -type "float2" -0.75892377 0.96824849 ;
	setAttr ".uvtk[820]" -type "float2" 0.96620816 1.7376038 ;
	setAttr ".uvtk[821]" -type "float2" 0.99881214 1.7420704 ;
	setAttr ".uvtk[822]" -type "float2" 1.0147436 1.7052858 ;
	setAttr ".uvtk[823]" -type "float2" 1.0466102 1.7130766 ;
	setAttr ".uvtk[824]" -type "float2" 1.0476973 1.6721263 ;
	setAttr ".uvtk[825]" -type "float2" 1.0798876 1.6823952 ;
	setAttr ".uvtk[826]" -type "float2" 1.0570619 1.6384199 ;
	setAttr ".uvtk[827]" -type "float2" 1.0903735 1.6500373 ;
	setAttr ".uvtk[828]" -type "float2" 1.0379314 1.6043162 ;
	setAttr ".uvtk[829]" -type "float2" 1.0726285 1.617064 ;
	setAttr ".uvtk[830]" -type "float2" 0.98838103 1.5699241 ;
	setAttr ".uvtk[831]" -type "float2" 1.0227439 1.5834637 ;
	setAttr ".uvtk[832]" -type "float2" 0.90333927 1.5356717 ;
	setAttr ".uvtk[833]" -type "float2" 0.93932903 1.5495074 ;
	setAttr ".uvtk[834]" -type "float2" 0.7842766 1.5012321 ;
	setAttr ".uvtk[835]" -type "float2" 0.82305926 1.5152771 ;
	setAttr ".uvtk[836]" -type "float2" 0.64138615 1.4671233 ;
	setAttr ".uvtk[837]" -type "float2" 0.67786044 1.4815307 ;
	setAttr ".uvtk[838]" -type "float2" 0.47329831 1.4328291 ;
	setAttr ".uvtk[839]" -type "float2" 0.50788277 1.4474061 ;
	setAttr ".uvtk[840]" -type "float2" 0.28437179 1.3979909 ;
	setAttr ".uvtk[841]" -type "float2" 0.32107133 1.4129798 ;
	setAttr ".uvtk[842]" -type "float2" 0.084801674 1.3623877 ;
	setAttr ".uvtk[843]" -type "float2" 0.12383264 1.3778791 ;
	setAttr ".uvtk[844]" -type "float2" -0.11362082 1.3266259 ;
	setAttr ".uvtk[845]" -type "float2" -0.073181748 1.342604 ;
	setAttr ".uvtk[846]" -type "float2" -0.30386704 1.2908945 ;
	setAttr ".uvtk[847]" -type "float2" -0.26171574 1.3073413 ;
	setAttr ".uvtk[848]" -type "float2" -0.47707033 1.2550968 ;
	setAttr ".uvtk[849]" -type "float2" -0.43360046 1.2719072 ;
	setAttr ".uvtk[850]" -type "float2" -0.624174 1.2186753 ;
	setAttr ".uvtk[851]" -type "float2" -0.58210701 1.2360045 ;
	setAttr ".uvtk[852]" -type "float2" -0.74168766 1.1822268 ;
	setAttr ".uvtk[853]" -type "float2" -0.70098454 1.1999056 ;
	setAttr ".uvtk[854]" -type "float2" -0.82754934 1.1457963 ;
	setAttr ".uvtk[855]" -type "float2" -0.78712201 1.1636101 ;
	setAttr ".uvtk[856]" -type "float2" -0.88028866 1.1090406 ;
	setAttr ".uvtk[857]" -type "float2" -0.83961046 1.1270216 ;
	setAttr ".uvtk[858]" -type "float2" -0.90144998 1.0719754 ;
	setAttr ".uvtk[859]" -type "float2" -0.85868716 1.0897959 ;
	setAttr ".uvtk[860]" -type "float2" -0.89338565 1.0340682 ;
	setAttr ".uvtk[861]" -type "float2" -0.8478362 1.0514073 ;
	setAttr ".uvtk[862]" -type "float2" -0.86022317 0.99499977 ;
	setAttr ".uvtk[863]" -type "float2" -0.81202096 1.0112712 ;
	setAttr ".uvtk[864]" -type "float2" -0.9775703 0.94287372 ;
	setAttr ".uvtk[865]" -type "float2" -0.92587483 0.91757482 ;
	setAttr ".uvtk[866]" -type "float2" 0.76749051 1.7732289 ;
	setAttr ".uvtk[867]" -type "float2" -0.94831359 0.94701034 ;
	setAttr ".uvtk[868]" -type "float2" 0.78228724 1.7189382 ;
	setAttr ".uvtk[869]" -type "float2" 0.82719171 1.7313102 ;
	setAttr ".uvtk[870]" -type "float2" 0.84025204 1.6755157 ;
	setAttr ".uvtk[871]" -type "float2" 0.88225222 1.6904013 ;
	setAttr ".uvtk[872]" -type "float2" 0.87839639 1.6354948 ;
	setAttr ".uvtk[873]" -type "float2" 0.91863716 1.65064 ;
	setAttr ".uvtk[874]" -type "float2" 0.88995218 1.5970737 ;
	setAttr ".uvtk[875]" -type "float2" 0.92906916 1.6127124 ;
	setAttr ".uvtk[876]" -type "float2" 0.86995459 1.5613701 ;
	setAttr ".uvtk[877]" -type "float2" 0.9090184 1.5758829 ;
	setAttr ".uvtk[878]" -type "float2" 0.82699829 1.5245273 ;
	setAttr ".uvtk[879]" -type "float2" 0.86320585 1.5402119 ;
	setAttr ".uvtk[880]" -type "float2" 0.73920339 1.4903443 ;
	setAttr ".uvtk[881]" -type "float2" 0.7759257 1.5056442 ;
	setAttr ".uvtk[882]" -type "float2" 0.61159074 1.4583642 ;
	setAttr ".uvtk[883]" -type "float2" 0.65102142 1.4706168 ;
	setAttr ".uvtk[884]" -type "float2" 0.48247409 1.4223026 ;
	setAttr ".uvtk[885]" -type "float2" 0.51816583 1.4363902 ;
	setAttr ".uvtk[886]" -type "float2" 0.32409424 1.386138 ;
	setAttr ".uvtk[887]" -type "float2" 0.35640067 1.4014533 ;
	setAttr ".uvtk[888]" -type "float2" 0.12831226 1.3511266 ;
	setAttr ".uvtk[889]" -type "float2" 0.16212308 1.3654153 ;
	setAttr ".uvtk[890]" -type "float2" -0.078382045 1.3143712 ;
	setAttr ".uvtk[891]" -type "float2" -0.043514132 1.3290248 ;
	setAttr ".uvtk[892]" -type "float2" -0.28093359 1.2795118 ;
	setAttr ".uvtk[893]" -type "float2" -0.24479732 1.2925451 ;
	setAttr ".uvtk[894]" -type "float2" -0.47455871 1.2421443 ;
	setAttr ".uvtk[895]" -type "float2" -0.43774062 1.256184 ;
	setAttr ".uvtk[896]" -type "float2" -0.65035284 1.2049588 ;
	setAttr ".uvtk[897]" -type "float2" -0.61427075 1.2201467 ;
	setAttr ".uvtk[898]" -type "float2" -0.79018641 1.1701555 ;
	setAttr ".uvtk[899]" -type "float2" -0.75574994 1.1833813 ;
	setAttr ".uvtk[900]" -type "float2" -0.8988325 1.13448 ;
	setAttr ".uvtk[901]" -type "float2" -0.86658734 1.1475155 ;
	setAttr ".uvtk[902]" -type "float2" -0.97924811 1.0997647 ;
	setAttr ".uvtk[903]" -type "float2" -0.94899607 1.1128242 ;
	setAttr ".uvtk[904]" -type "float2" -1.0290637 1.0670686 ;
	setAttr ".uvtk[905]" -type "float2" -0.99973273 1.0784634 ;
	setAttr ".uvtk[906]" -type "float2" -1.053635 1.0338187 ;
	setAttr ".uvtk[907]" -type "float2" -1.0246185 1.0446508 ;
	setAttr ".uvtk[908]" -type "float2" -1.0514961 1.0014877 ;
	setAttr ".uvtk[909]" -type "float2" -1.022554 1.0112867 ;
	setAttr ".uvtk[910]" -type "float2" -1.0232592 0.97081572 ;
	setAttr ".uvtk[911]" -type "float2" -0.99445915 0.97870374 ;
	setAttr ".uvtk[912]" -type "float2" -0.97643983 0.9518559 ;
	setAttr ".uvtk[913]" -type "float2" -0.92705846 0.92814386 ;
	setAttr ".uvtk[914]" -type "float2" -1.0186653 0.97948301 ;
	setAttr ".uvtk[915]" -type "float2" -1.0440788 1.0098737 ;
	setAttr ".uvtk[916]" -type "float2" -1.0442978 1.0421478 ;
	setAttr ".uvtk[917]" -type "float2" -1.0187508 1.0753678 ;
	setAttr ".uvtk[918]" -type "float2" -0.96857524 1.1079175 ;
	setAttr ".uvtk[919]" -type "float2" -0.88870728 1.1424655 ;
	setAttr ".uvtk[920]" -type "float2" -0.78115582 1.1780641 ;
	setAttr ".uvtk[921]" -type "float2" -0.64380461 1.2124944 ;
	setAttr ".uvtk[922]" -type "float2" -0.4718591 1.2496791 ;
	setAttr ".uvtk[923]" -type "float2" -0.28101128 1.2872062 ;
	setAttr ".uvtk[924]" -type "float2" -0.081761718 1.3217652 ;
	setAttr ".uvtk[925]" -type "float2" 0.12033099 1.3585377 ;
	setAttr ".uvtk[926]" -type "float2" 0.31146425 1.3934146 ;
	setAttr ".uvtk[927]" -type "float2" 0.46648389 1.429879 ;
	setAttr ".uvtk[928]" -type "float2" 0.5946663 1.4664795 ;
	setAttr ".uvtk[929]" -type "float2" 0.7214247 1.4980707 ;
	setAttr ".uvtk[930]" -type "float2" 0.80804312 1.5320542 ;
	setAttr ".uvtk[931]" -type "float2" 0.85160851 1.5689776 ;
	setAttr ".uvtk[932]" -type "float2" 0.8727417 1.6045487 ;
	setAttr ".uvtk[933]" -type "float2" 0.86337435 1.6429542 ;
	setAttr ".uvtk[934]" -type "float2" 0.82813358 1.6829249 ;
	setAttr ".uvtk[935]" -type "float2" 0.77348715 1.7264031 ;
	setAttr ".uvtk[1080]" -type "float2" -1.0328251 0.97400218 ;
	setAttr ".uvtk[1081]" -type "float2" -1.0036448 0.95338172 ;
	setAttr ".uvtk[1082]" -type "float2" -1.0449365 0.99765807 ;
	setAttr ".uvtk[1083]" -type "float2" -1.0345427 1.0249641 ;
	setAttr ".uvtk[1084]" -type "float2" -1.0032933 1.0545578 ;
	setAttr ".uvtk[1085]" -type "float2" -0.95709968 1.0859454 ;
	setAttr ".uvtk[1086]" -type "float2" -0.88433993 1.1170282 ;
	setAttr ".uvtk[1087]" -type "float2" -0.78924859 1.1494865 ;
	setAttr ".uvtk[1088]" -type "float2" -0.6820572 1.1818495 ;
	setAttr ".uvtk[1089]" -type "float2" -0.53711724 1.2156231 ;
	setAttr ".uvtk[1090]" -type "float2" -0.35947853 1.2532369 ;
	setAttr ".uvtk[1091]" -type "float2" -0.18281367 1.2897322 ;
	setAttr ".uvtk[1092]" -type "float2" -0.010826737 1.3223445 ;
	setAttr ".uvtk[1093]" -type "float2" 0.13888514 1.3579359 ;
	setAttr ".uvtk[1094]" -type "float2" 0.26385486 1.3914279 ;
	setAttr ".uvtk[1095]" -type "float2" 0.40141749 1.4286703 ;
	setAttr ".uvtk[1096]" -type "float2" 0.51410002 1.4660796 ;
	setAttr ".uvtk[1097]" -type "float2" 0.58993316 1.49343 ;
	setAttr ".uvtk[1098]" -type "float2" 0.62943268 1.5276339 ;
	setAttr ".uvtk[1099]" -type "float2" 0.6562717 1.5631132 ;
	setAttr ".uvtk[1100]" -type "float2" 0.65684968 1.5966824 ;
	setAttr ".uvtk[1101]" -type "float2" 0.63301396 1.6335435 ;
	setAttr ".uvtk[1102]" -type "float2" 0.5905543 1.6720201 ;
	setAttr ".uvtk[1103]" -type "float2" -0.96664304 0.937846 ;
	setAttr ".uvtk[1152]" -type "float2" 0.53749478 1.714784 ;
	setAttr ".uvtk[1153]" -type "float2" 0.70933723 1.7747622 ;
	setAttr ".uvtk[1154]" -type "float2" -0.89315641 0.91427636 ;
	setAttr ".uvtk[1155]" -type "float2" 0.77219594 1.7633051 ;
	setAttr ".uvtk[1156]" -type "float2" 0.71601963 1.7670137 ;
	setAttr ".uvtk[1157]" -type "float2" -0.69367492 0.92028552 ;
	setAttr ".uvtk[1158]" -type "float2" 0.9488008 1.7561153 ;
	setAttr ".uvtk[1159]" -type "float2" -0.75460374 0.9234463 ;
	setAttr ".uvtk[1160]" -type "float2" 0.90968502 1.7707 ;
	setAttr ".uvtk[1161]" -type "float2" 1.0012381 1.7474841 ;
createNode polyMapCut -n "polyMapCut10";
	rename -uid "3FA874D0-664A-0D3A-770A-1B99396C78C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[1322]" "e[1370]" "e[1490]" "e[1538]" "e[1898]" "e[2017]";
createNode polyMapCut -n "polyMapCut11";
	rename -uid "5E4F2F04-824D-66F6-9995-A4A378D4E2D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1946]" "e[1950]" "e[1953]" "e[1956]" "e[1959]" "e[1962]" "e[1965]" "e[1968]" "e[1971]" "e[1974]" "e[1977]" "e[1980]" "e[1983]" "e[1986]" "e[1989]" "e[1992]" "e[1995]" "e[1998]" "e[2001]" "e[2004]" "e[2007]" "e[2010]" "e[2013]" "e[2015]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "149260C1-264A-A717-BA4B-8C92A75190CA";
	setAttr ".uopa" yes;
	setAttr -s 175 ".uvtk";
	setAttr ".uvtk[552]" -type "float2" -0.87485343 -1.277972 ;
	setAttr ".uvtk[553]" -type "float2" 0.58576679 -1.400828 ;
	setAttr ".uvtk[554]" -type "float2" 0.43520916 -1.3858439 ;
	setAttr ".uvtk[555]" -type "float2" 0.29502773 -1.3737594 ;
	setAttr ".uvtk[556]" -type "float2" 0.17089224 -1.3636858 ;
	setAttr ".uvtk[557]" -type "float2" 0.067197561 -1.3549284 ;
	setAttr ".uvtk[558]" -type "float2" -0.013244629 -1.346998 ;
	setAttr ".uvtk[559]" -type "float2" -0.069319725 -1.3395637 ;
	setAttr ".uvtk[560]" -type "float2" -0.10170799 -1.3324432 ;
	setAttr ".uvtk[561]" -type "float2" -0.11276376 -1.3255348 ;
	setAttr ".uvtk[562]" -type "float2" -0.10634112 -1.3188002 ;
	setAttr ".uvtk[563]" -type "float2" -0.087577164 -1.3122201 ;
	setAttr ".uvtk[564]" -type "float2" -0.062413752 -1.3057894 ;
	setAttr ".uvtk[565]" -type "float2" -0.03724122 -1.299545 ;
	setAttr ".uvtk[566]" -type "float2" -0.018491983 -1.2935518 ;
	setAttr ".uvtk[567]" -type "float2" -0.012154132 -1.287818 ;
	setAttr ".uvtk[568]" -type "float2" -0.023359463 -1.2823769 ;
	setAttr ".uvtk[569]" -type "float2" -0.056011491 -1.2772733 ;
	setAttr ".uvtk[570]" -type "float2" -0.11240334 -1.2726774 ;
	setAttr ".uvtk[571]" -type "float2" -0.19329387 -1.2688291 ;
	setAttr ".uvtk[572]" -type "float2" -0.29768464 -1.2660545 ;
	setAttr ".uvtk[573]" -type "float2" -0.42284369 -1.2648576 ;
	setAttr ".uvtk[574]" -type "float2" -0.56458217 -1.265823 ;
	setAttr ".uvtk[575]" -type "float2" -0.71737927 -1.2698504 ;
	setAttr ".uvtk[672]" -type "float2" -0.93757427 -1.2658919 ;
	setAttr ".uvtk[673]" -type "float2" 0.62960768 -1.4027843 ;
	setAttr ".uvtk[674]" -type "float2" 0.44641352 -1.388998 ;
	setAttr ".uvtk[675]" -type "float2" 0.27909791 -1.3780069 ;
	setAttr ".uvtk[676]" -type "float2" 0.1346308 -1.3686069 ;
	setAttr ".uvtk[677]" -type "float2" 0.017734826 -1.3601682 ;
	setAttr ".uvtk[678]" -type "float2" -0.068422019 -1.3521714 ;
	setAttr ".uvtk[679]" -type "float2" -0.12336564 -1.3444884 ;
	setAttr ".uvtk[680]" -type "float2" -0.14827287 -1.3369741 ;
	setAttr ".uvtk[681]" -type "float2" -0.14642096 -1.329657 ;
	setAttr ".uvtk[682]" -type "float2" -0.12305284 -1.3225235 ;
	setAttr ".uvtk[683]" -type "float2" -0.084551871 -1.3155581 ;
	setAttr ".uvtk[684]" -type "float2" -0.038537115 -1.30874 ;
	setAttr ".uvtk[685]" -type "float2" 0.0066749454 -1.3021725 ;
	setAttr ".uvtk[686]" -type "float2" 0.043609202 -1.2958877 ;
	setAttr ".uvtk[687]" -type "float2" 0.064330503 -1.2900126 ;
	setAttr ".uvtk[688]" -type "float2" 0.062626496 -1.2842904 ;
	setAttr ".uvtk[689]" -type "float2" 0.033543788 -1.2786342 ;
	setAttr ".uvtk[690]" -type "float2" -0.025874928 -1.2732449 ;
	setAttr ".uvtk[691]" -type "float2" -0.11667541 -1.2683841 ;
	setAttr ".uvtk[692]" -type "float2" -0.23796591 -1.2641203 ;
	setAttr ".uvtk[693]" -type "float2" -0.38610542 -1.2610562 ;
	setAttr ".uvtk[694]" -type "float2" -0.55674899 -1.2595345 ;
	setAttr ".uvtk[695]" -type "float2" -0.74264741 -1.2606809 ;
	setAttr ".uvtk[696]" -type "float2" -0.94096839 -1.2545627 ;
	setAttr ".uvtk[697]" -type "float2" 0.6478436 -1.4005291 ;
	setAttr ".uvtk[698]" -type "float2" 0.46236885 -1.3906068 ;
	setAttr ".uvtk[699]" -type "float2" 0.29440939 -1.3814964 ;
	setAttr ".uvtk[700]" -type "float2" 0.150195 -1.3731215 ;
	setAttr ".uvtk[701]" -type "float2" 0.033469021 -1.3651674 ;
	setAttr ".uvtk[702]" -type "float2" -0.05371213 -1.3575788 ;
	setAttr ".uvtk[703]" -type "float2" -0.11015719 -1.34997 ;
	setAttr ".uvtk[704]" -type "float2" -0.13775647 -1.3423828 ;
	setAttr ".uvtk[705]" -type "float2" -0.13855326 -1.3349118 ;
	setAttr ".uvtk[706]" -type "float2" -0.11510795 -1.3276205 ;
	setAttr ".uvtk[707]" -type "float2" -0.07651031 -1.3204581 ;
	setAttr ".uvtk[708]" -type "float2" -0.030541241 -1.3135055 ;
	setAttr ".uvtk[709]" -type "float2" 0.015172601 -1.3067427 ;
	setAttr ".uvtk[710]" -type "float2" 0.052053094 -1.3003587 ;
	setAttr ".uvtk[711]" -type "float2" 0.069907174 -1.2945588 ;
	setAttr ".uvtk[712]" -type "float2" 0.064757809 -1.288802 ;
	setAttr ".uvtk[713]" -type "float2" 0.037386648 -1.2830726 ;
	setAttr ".uvtk[714]" -type "float2" -0.021280058 -1.2773485 ;
	setAttr ".uvtk[715]" -type "float2" -0.11408561 -1.2719376 ;
	setAttr ".uvtk[716]" -type "float2" -0.23575485 -1.2670318 ;
	setAttr ".uvtk[717]" -type "float2" -0.38463047 -1.2625555 ;
	setAttr ".uvtk[718]" -type "float2" -0.55697674 -1.2591236 ;
	setAttr ".uvtk[719]" -type "float2" -0.7446546 -1.256557 ;
	setAttr ".uvtk[768]" -type "float2" -0.91618967 -1.2330048 ;
	setAttr ".uvtk[769]" -type "float2" 0.66787946 -1.3892567 ;
	setAttr ".uvtk[770]" -type "float2" 0.4837054 -1.3884981 ;
	setAttr ".uvtk[771]" -type "float2" 0.31813347 -1.3861816 ;
	setAttr ".uvtk[772]" -type "float2" 0.17904341 -1.3825164 ;
	setAttr ".uvtk[773]" -type "float2" 0.066983581 -1.3777339 ;
	setAttr ".uvtk[774]" -type "float2" -0.020316362 -1.3721614 ;
	setAttr ".uvtk[775]" -type "float2" -0.0773862 -1.3656859 ;
	setAttr ".uvtk[776]" -type "float2" -0.11113781 -1.3588482 ;
	setAttr ".uvtk[777]" -type "float2" -0.11828536 -1.351702 ;
	setAttr ".uvtk[778]" -type "float2" -0.092647433 -1.3441563 ;
	setAttr ".uvtk[779]" -type "float2" -0.052056134 -1.3366525 ;
	setAttr ".uvtk[780]" -type "float2" -0.0048837662 -1.3296196 ;
	setAttr ".uvtk[781]" -type "float2" 0.043652922 -1.3227377 ;
	setAttr ".uvtk[782]" -type "float2" 0.081936598 -1.3161554 ;
	setAttr ".uvtk[783]" -type "float2" 0.09230274 -1.3095682 ;
	setAttr ".uvtk[784]" -type "float2" 0.078324899 -1.3028495 ;
	setAttr ".uvtk[785]" -type "float2" 0.058910646 -1.2968857 ;
	setAttr ".uvtk[786]" -type "float2" 0.0051219165 -1.2903837 ;
	setAttr ".uvtk[787]" -type "float2" -0.090874583 -1.2828481 ;
	setAttr ".uvtk[788]" -type "float2" -0.20924115 -1.2749321 ;
	setAttr ".uvtk[789]" -type "float2" -0.35708582 -1.2660437 ;
	setAttr ".uvtk[790]" -type "float2" -0.52922845 -1.2558787 ;
	setAttr ".uvtk[791]" -type "float2" -0.71875691 -1.2445827 ;
	setAttr ".uvtk[792]" -type "float2" -0.897995 -1.2239587 ;
	setAttr ".uvtk[793]" -type "float2" 0.66462755 -1.3861854 ;
	setAttr ".uvtk[794]" -type "float2" 0.48133266 -1.3885612 ;
	setAttr ".uvtk[795]" -type "float2" 0.31808484 -1.3881402 ;
	setAttr ".uvtk[796]" -type "float2" 0.18177986 -1.3853288 ;
	setAttr ".uvtk[797]" -type "float2" 0.07203567 -1.3810917 ;
	setAttr ".uvtk[798]" -type "float2" -0.014244199 -1.3761148 ;
	setAttr ".uvtk[799]" -type "float2" -0.070865989 -1.3691359 ;
	setAttr ".uvtk[800]" -type "float2" -0.10584956 -1.362978 ;
	setAttr ".uvtk[801]" -type "float2" -0.11413383 -1.3567591 ;
	setAttr ".uvtk[802]" -type "float2" -0.087070346 -1.3483409 ;
	setAttr ".uvtk[803]" -type "float2" -0.045548022 -1.3399806 ;
	setAttr ".uvtk[804]" -type "float2" 0.0021616518 -1.3342358 ;
	setAttr ".uvtk[805]" -type "float2" 0.052309841 -1.3269119 ;
	setAttr ".uvtk[806]" -type "float2" 0.09195894 -1.3215003 ;
	setAttr ".uvtk[807]" -type "float2" 0.10083136 -1.3136779 ;
	setAttr ".uvtk[808]" -type "float2" 0.084285259 -1.3053721 ;
	setAttr ".uvtk[809]" -type "float2" 0.067008927 -1.3009565 ;
	setAttr ".uvtk[810]" -type "float2" 0.015536934 -1.2951044 ;
	setAttr ".uvtk[811]" -type "float2" -0.080380097 -1.2862678 ;
	setAttr ".uvtk[812]" -type "float2" -0.19720916 -1.2783875 ;
	setAttr ".uvtk[813]" -type "float2" -0.34286922 -1.2690442 ;
	setAttr ".uvtk[814]" -type "float2" -0.51397425 -1.2568281 ;
	setAttr ".uvtk[815]" -type "float2" -0.70221972 -1.2427585 ;
	setAttr ".uvtk[960]" -type "float2" -0.79214114 -1.222559 ;
	setAttr ".uvtk[961]" -type "float2" 0.65125191 -1.3770559 ;
	setAttr ".uvtk[962]" -type "float2" 0.50726819 -1.3819566 ;
	setAttr ".uvtk[963]" -type "float2" 0.38034046 -1.3830451 ;
	setAttr ".uvtk[964]" -type "float2" 0.27270627 -1.3810656 ;
	setAttr ".uvtk[965]" -type "float2" 0.17994094 -1.3772893 ;
	setAttr ".uvtk[966]" -type "float2" 0.10137194 -1.3730482 ;
	setAttr ".uvtk[967]" -type "float2" 0.045200408 -1.3689656 ;
	setAttr ".uvtk[968]" -type "float2" -0.00048494339 -1.363158 ;
	setAttr ".uvtk[969]" -type "float2" -0.026619911 -1.3576837 ;
	setAttr ".uvtk[970]" -type "float2" -0.017189384 -1.3512781 ;
	setAttr ".uvtk[971]" -type "float2" 0.00407511 -1.3443966 ;
	setAttr ".uvtk[972]" -type "float2" 0.027839303 -1.3376037 ;
	setAttr ".uvtk[973]" -type "float2" 0.052850872 -1.3327279 ;
	setAttr ".uvtk[974]" -type "float2" 0.064562321 -1.3245294 ;
	setAttr ".uvtk[975]" -type "float2" 0.055433154 -1.3177145 ;
	setAttr ".uvtk[976]" -type "float2" 0.035376191 -1.3109697 ;
	setAttr ".uvtk[977]" -type "float2" -0.0013639331 -1.3032657 ;
	setAttr ".uvtk[978]" -type "float2" -0.043338932 -1.2974524 ;
	setAttr ".uvtk[979]" -type "float2" -0.13254803 -1.2896246 ;
	setAttr ".uvtk[980]" -type "float2" -0.23377423 -1.2804495 ;
	setAttr ".uvtk[981]" -type "float2" -0.35248134 -1.2700171 ;
	setAttr ".uvtk[982]" -type "float2" -0.48858386 -1.2585101 ;
	setAttr ".uvtk[983]" -type "float2" -0.63702476 -1.2425324 ;
	setAttr ".uvtk[986]" -type "float2" 0.64885306 -1.3776571 ;
	setAttr ".uvtk[987]" -type "float2" 0.80110466 -1.3687818 ;
	setAttr ".uvtk[989]" -type "float2" 0.50571263 -1.3824116 ;
	setAttr ".uvtk[991]" -type "float2" 0.37965667 -1.3835263 ;
	setAttr ".uvtk[993]" -type "float2" 0.27299178 -1.3815527 ;
	setAttr ".uvtk[995]" -type "float2" 0.18106961 -1.3777928 ;
	setAttr ".uvtk[997]" -type "float2" 0.10277718 -1.3735619 ;
	setAttr ".uvtk[999]" -type "float2" 0.046681166 -1.3694589 ;
	setAttr ".uvtk[1001]" -type "float2" 0.00073194504 -1.3637142 ;
	setAttr ".uvtk[1003]" -type "float2" -0.025543749 -1.3582029 ;
	setAttr ".uvtk[1005]" -type "float2" -0.01575768 -1.3518553 ;
	setAttr ".uvtk[1007]" -type "float2" 0.0054873824 -1.3449644 ;
	setAttr ".uvtk[1009]" -type "float2" 0.029300094 -1.3382401 ;
	setAttr ".uvtk[1011]" -type "float2" 0.05515644 -1.3331898 ;
	setAttr ".uvtk[1013]" -type "float2" 0.067465097 -1.325193 ;
	setAttr ".uvtk[1015]" -type "float2" 0.057722569 -1.3184072 ;
	setAttr ".uvtk[1017]" -type "float2" 0.036962375 -1.3115696 ;
	setAttr ".uvtk[1019]" -type "float2" 0.00082604587 -1.3039504 ;
	setAttr ".uvtk[1021]" -type "float2" -0.040564977 -1.2981441 ;
	setAttr ".uvtk[1023]" -type "float2" -0.12959574 -1.2904075 ;
	setAttr ".uvtk[1025]" -type "float2" -0.23001501 -1.2812862 ;
	setAttr ".uvtk[1027]" -type "float2" -0.34819421 -1.2710445 ;
	setAttr ".uvtk[1029]" -type "float2" -0.48375952 -1.2595096 ;
	setAttr ".uvtk[1031]" -type "float2" -0.63170469 -1.2437979 ;
	setAttr ".uvtk[1162]" -type "float2" 0.80408168 -1.3681092 ;
	setAttr ".uvtk[1163]" -type "float2" 0.85750723 -1.3792955 ;
	setAttr ".uvtk[1164]" -type "float2" 0.86170805 -1.3895862 ;
	setAttr ".uvtk[1165]" -type "float2" 0.84134471 -1.4105947 ;
	setAttr ".uvtk[1166]" -type "float2" 0.82155275 -1.4205966 ;
	setAttr ".uvtk[1167]" -type "float2" 0.73988819 -1.4200357 ;
	setAttr ".uvtk[1169]" -type "float2" -0.78642225 -1.2240173 ;
createNode polyMapCut -n "polyMapCut12";
	rename -uid "616D6EC3-2546-2E3B-3F26-5E95CFEC56F8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[1947]" "e[2041]" "e[2113]" "e[2136]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "44FFF95F-9B4D-8AE3-2C3C-CF9D36228377";
	setAttr ".uopa" yes;
	setAttr -s 125 ".uvtk";
	setAttr ".uvtk[936]" -type "float2" 0.25637853 -0.054599166 ;
	setAttr ".uvtk[937]" -type "float2" 0.3828516 -0.079248309 ;
	setAttr ".uvtk[938]" -type "float2" -0.27758008 -0.04767549 ;
	setAttr ".uvtk[939]" -type "float2" -0.15493794 -0.024565399 ;
	setAttr ".uvtk[940]" -type "float2" -0.045090273 -0.0040218234 ;
	setAttr ".uvtk[941]" -type "float2" 0.045157358 0.014794052 ;
	setAttr ".uvtk[942]" -type "float2" 0.11418737 0.031840444 ;
	setAttr ".uvtk[943]" -type "float2" 0.17071393 0.046229005 ;
	setAttr ".uvtk[944]" -type "float2" 0.18331707 0.057707787 ;
	setAttr ".uvtk[945]" -type "float2" 0.18005025 0.065703154 ;
	setAttr ".uvtk[946]" -type "float2" 0.15636376 0.077837586 ;
	setAttr ".uvtk[947]" -type "float2" 0.1281361 0.08446157 ;
	setAttr ".uvtk[948]" -type "float2" 0.078194648 0.087342739 ;
	setAttr ".uvtk[949]" -type "float2" 0.012278169 0.087458968 ;
	setAttr ".uvtk[950]" -type "float2" -0.055003166 0.085096836 ;
	setAttr ".uvtk[951]" -type "float2" -0.12070256 0.080493212 ;
	setAttr ".uvtk[952]" -type "float2" -0.16757828 0.074184537 ;
	setAttr ".uvtk[953]" -type "float2" -0.17796302 0.065064907 ;
	setAttr ".uvtk[954]" -type "float2" -0.1708017 0.053577662 ;
	setAttr ".uvtk[955]" -type "float2" -0.14866835 0.040786982 ;
	setAttr ".uvtk[956]" -type "float2" -0.10235882 0.0257864 ;
	setAttr ".uvtk[957]" -type "float2" -0.040481448 0.0087972283 ;
	setAttr ".uvtk[958]" -type "float2" 0.039294362 -0.010164618 ;
	setAttr ".uvtk[959]" -type "float2" 0.13953954 -0.031256258 ;
	setAttr ".uvtk[984]" -type "float2" -0.3865709 -0.11004269 ;
	setAttr ".uvtk[985]" -type "float2" 0.23807281 -0.092954397 ;
	setAttr ".uvtk[988]" -type "float2" 0.12255251 -0.070887625 ;
	setAttr ".uvtk[990]" -type "float2" 0.02390188 -0.051311672 ;
	setAttr ".uvtk[992]" -type "float2" -0.053768992 -0.033260286 ;
	setAttr ".uvtk[994]" -type "float2" -0.1139825 -0.016944289 ;
	setAttr ".uvtk[996]" -type "float2" -0.15899497 -0.0027033687 ;
	setAttr ".uvtk[998]" -type "float2" -0.17999119 0.0095989704 ;
	setAttr ".uvtk[1000]" -type "float2" -0.18652087 0.020471931 ;
	setAttr ".uvtk[1002]" -type "float2" -0.17405331 0.029406548 ;
	setAttr ".uvtk[1004]" -type "float2" -0.12463015 0.034925938 ;
	setAttr ".uvtk[1006]" -type "float2" -0.057868242 0.039296865 ;
	setAttr ".uvtk[1008]" -type "float2" 0.010999918 0.041981697 ;
	setAttr ".uvtk[1010]" -type "float2" 0.080186248 0.041470885 ;
	setAttr ".uvtk[1012]" -type "float2" 0.13295871 0.039284468 ;
	setAttr ".uvtk[1014]" -type "float2" 0.16211739 0.032559514 ;
	setAttr ".uvtk[1016]" -type "float2" 0.18626863 0.020650625 ;
	setAttr ".uvtk[1018]" -type "float2" 0.19132587 0.013198018 ;
	setAttr ".uvtk[1020]" -type "float2" 0.18068874 0.0027053356 ;
	setAttr ".uvtk[1022]" -type "float2" 0.1258814 -0.011394143 ;
	setAttr ".uvtk[1024]" -type "float2" 0.058245257 -0.027506769 ;
	setAttr ".uvtk[1026]" -type "float2" -0.030196309 -0.04547298 ;
	setAttr ".uvtk[1028]" -type "float2" -0.1383055 -0.064932823 ;
	setAttr ".uvtk[1030]" -type "float2" -0.25983971 -0.08644706 ;
	setAttr ".uvtk[1032]" -type "float2" 0.23643076 -0.086620569 ;
	setAttr ".uvtk[1033]" -type "float2" 0.36894685 -0.11199349 ;
	setAttr ".uvtk[1034]" -type "float2" -0.40188324 -0.078814685 ;
	setAttr ".uvtk[1035]" -type "float2" 0.24273986 -0.061389327 ;
	setAttr ".uvtk[1036]" -type "float2" -0.26082504 -0.07983464 ;
	setAttr ".uvtk[1037]" -type "float2" -0.26687294 -0.054428101 ;
	setAttr ".uvtk[1038]" -type "float2" -0.13124798 -0.05762279 ;
	setAttr ".uvtk[1039]" -type "float2" -0.13691032 -0.031795979 ;
	setAttr ".uvtk[1040]" -type "float2" -0.01590246 -0.037843347 ;
	setAttr ".uvtk[1041]" -type "float2" -0.021155268 -0.011499226 ;
	setAttr ".uvtk[1042]" -type "float2" 0.077525154 -0.01964134 ;
	setAttr ".uvtk[1043]" -type "float2" 0.072992846 0.0069735646 ;
	setAttr ".uvtk[1044]" -type "float2" 0.14720246 -0.0033303499 ;
	setAttr ".uvtk[1045]" -type "float2" 0.14327678 0.023707509 ;
	setAttr ".uvtk[1046]" -type "float2" 0.20437464 0.01089406 ;
	setAttr ".uvtk[1047]" -type "float2" 0.20104003 0.03780663 ;
	setAttr ".uvtk[1048]" -type "float2" 0.21407002 0.021618485 ;
	setAttr ".uvtk[1049]" -type "float2" 0.21132609 0.049061775 ;
	setAttr ".uvtk[1050]" -type "float2" 0.20752558 0.029091597 ;
	setAttr ".uvtk[1051]" -type "float2" 0.20587173 0.056598902 ;
	setAttr ".uvtk[1052]" -type "float2" 0.18142232 0.041381478 ;
	setAttr ".uvtk[1053]" -type "float2" 0.17954606 0.06912446 ;
	setAttr ".uvtk[1054]" -type "float2" 0.14882797 0.048521638 ;
	setAttr ".uvtk[1055]" -type "float2" 0.14666054 0.07611692 ;
	setAttr ".uvtk[1056]" -type "float2" 0.08790946 0.051059127 ;
	setAttr ".uvtk[1057]" -type "float2" 0.086912006 0.07880187 ;
	setAttr ".uvtk[1058]" -type "float2" 0.0091212392 0.051329613 ;
	setAttr ".uvtk[1059]" -type "float2" 0.0097550154 0.079041004 ;
	setAttr ".uvtk[1060]" -type "float2" -0.065191448 0.048583865 ;
	setAttr ".uvtk[1061]" -type "float2" -0.064058304 0.076487541 ;
	setAttr ".uvtk[1062]" -type "float2" -0.13566947 0.04408133 ;
	setAttr ".uvtk[1063]" -type "float2" -0.13424075 0.071847439 ;
	setAttr ".uvtk[1064]" -type "float2" -0.19237393 0.038250923 ;
	setAttr ".uvtk[1065]" -type "float2" -0.18993986 0.065595627 ;
	setAttr ".uvtk[1066]" -type "float2" -0.20830637 0.028996468 ;
	setAttr ".uvtk[1067]" -type "float2" -0.20533317 0.056444407 ;
	setAttr ".uvtk[1068]" -type "float2" -0.20279807 0.017709255 ;
	setAttr ".uvtk[1069]" -type "float2" -0.19991845 0.044977188 ;
	setAttr ".uvtk[1070]" -type "float2" -0.18190134 0.0050910711 ;
	setAttr ".uvtk[1071]" -type "float2" -0.17888325 0.032034278 ;
	setAttr ".uvtk[1072]" -type "float2" -0.1355893 -0.0094355941 ;
	setAttr ".uvtk[1073]" -type "float2" -0.13208175 0.017402172 ;
	setAttr ".uvtk[1074]" -type "float2" -0.073377073 -0.025860608 ;
	setAttr ".uvtk[1075]" -type "float2" -0.069099367 0.000664711 ;
	setAttr ".uvtk[1076]" -type "float2" 0.0085883141 -0.044090927 ;
	setAttr ".uvtk[1077]" -type "float2" 0.013722301 -0.01799202 ;
	setAttr ".uvtk[1078]" -type "float2" 0.11381942 -0.064121068 ;
	setAttr ".uvtk[1079]" -type "float2" 0.11962521 -0.038446665 ;
	setAttr ".uvtk[1168]" -type "float2" 0.35552758 -0.12286264 ;
	setAttr ".uvtk[1170]" -type "float2" -0.26015094 -0.093402624 ;
	setAttr ".uvtk[1171]" -type "float2" -0.14584731 -0.072666585 ;
	setAttr ".uvtk[1172]" -type "float2" -0.044087753 -0.053030252 ;
	setAttr ".uvtk[1173]" -type "float2" 0.039354533 -0.035544753 ;
	setAttr ".uvtk[1174]" -type "float2" 0.10336739 -0.019497693 ;
	setAttr ".uvtk[1175]" -type "float2" 0.1564436 -0.0059051514 ;
	setAttr ".uvtk[1176]" -type "float2" 0.16754586 0.0040040016 ;
	setAttr ".uvtk[1177]" -type "float2" 0.16415569 0.01268816 ;
	setAttr ".uvtk[1178]" -type "float2" 0.14278176 0.022755027 ;
	setAttr ".uvtk[1179]" -type "float2" 0.11834273 0.029294491 ;
	setAttr ".uvtk[1180]" -type "float2" 0.072379559 0.03124249 ;
	setAttr ".uvtk[1181]" -type "float2" 0.011514872 0.031829834 ;
	setAttr ".uvtk[1182]" -type "float2" -0.050972342 0.02956748 ;
	setAttr ".uvtk[1183]" -type "float2" -0.11235368 0.025350451 ;
	setAttr ".uvtk[1184]" -type "float2" -0.15562809 0.019323468 ;
	setAttr ".uvtk[1185]" -type "float2" -0.16355878 0.01129508 ;
	setAttr ".uvtk[1186]" -type "float2" -0.1553089 0.00066399574 ;
	setAttr ".uvtk[1187]" -type "float2" -0.13416392 -0.011173308 ;
	setAttr ".uvtk[1188]" -type "float2" -0.090846777 -0.024716854 ;
	setAttr ".uvtk[1189]" -type "float2" -0.034037769 -0.040829778 ;
	setAttr ".uvtk[1190]" -type "float2" 0.03894335 -0.058535218 ;
	setAttr ".uvtk[1191]" -type "float2" 0.13142592 -0.078131318 ;
	setAttr ".uvtk[1192]" -type "float2" 0.23987925 -0.099410057 ;
	setAttr ".uvtk[1193]" -type "float2" 0.37580305 -0.086660683 ;
	setAttr ".uvtk[1194]" -type "float2" -0.40549192 -0.07128799 ;
	setAttr ".uvtk[1195]" -type "float2" 0.3633424 -0.11759585 ;
	setAttr ".uvtk[1196]" -type "float2" -0.39540601 -0.1043117 ;
	setAttr ".uvtk[1197]" -type "float2" -0.37965047 -0.11625832 ;
createNode polyMapCut -n "polyMapCut13";
	rename -uid "89432CB7-D649-826D-2BD1-17B38CD51CCE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[2042]" "e[2046]" "e[2049]" "e[2052]" "e[2055]" "e[2058]" "e[2061]" "e[2064]" "e[2067]" "e[2070]" "e[2073]" "e[2076]" "e[2079]" "e[2082]" "e[2085]" "e[2088]" "e[2091]" "e[2094]" "e[2097]" "e[2100]" "e[2103]" "e[2106]" "e[2109]" "e[2111]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "D05BFE47-BE49-EE72-4520-C0A4404D6451";
	setAttr ".uopa" yes;
	setAttr -s 100 ".uvtk";
	setAttr ".uvtk[984]" -type "float2" 0.2009027 -0.069524467 ;
	setAttr ".uvtk[985]" -type "float2" -0.16657871 -0.063977361 ;
	setAttr ".uvtk[988]" -type "float2" -0.13098961 -0.05411607 ;
	setAttr ".uvtk[990]" -type "float2" -0.10116696 -0.041141808 ;
	setAttr ".uvtk[992]" -type "float2" -0.076497555 -0.026029587 ;
	setAttr ".uvtk[994]" -type "float2" -0.055297911 -0.0096991658 ;
	setAttr ".uvtk[996]" -type "float2" -0.037208319 0.006639719 ;
	setAttr ".uvtk[998]" -type "float2" -0.023285627 0.022537351 ;
	setAttr ".uvtk[1000]" -type "float2" -0.011141539 0.038739085 ;
	setAttr ".uvtk[1002]" -type "float2" -0.002803266 0.052317858 ;
	setAttr ".uvtk[1004]" -type "float2" 7.9810619e-05 0.061161518 ;
	setAttr ".uvtk[1006]" -type "float2" 0.0017867684 0.068072319 ;
	setAttr ".uvtk[1008]" -type "float2" 0.0028139949 0.073014259 ;
	setAttr ".uvtk[1010]" -type "float2" 0.0029533803 0.072719812 ;
	setAttr ".uvtk[1012]" -type "float2" 0.0043607652 0.066519141 ;
	setAttr ".uvtk[1014]" -type "float2" 0.0086010695 0.056406379 ;
	setAttr ".uvtk[1016]" -type "float2" 0.015391141 0.042497635 ;
	setAttr ".uvtk[1018]" -type "float2" 0.024005741 0.027293682 ;
	setAttr ".uvtk[1020]" -type "float2" 0.03342253 0.01373589 ;
	setAttr ".uvtk[1022]" -type "float2" 0.05091849 -0.0030716062 ;
	setAttr ".uvtk[1024]" -type "float2" 0.071266875 -0.020670891 ;
	setAttr ".uvtk[1026]" -type "float2" 0.095838338 -0.036988676 ;
	setAttr ".uvtk[1028]" -type "float2" 0.12555115 -0.051438212 ;
	setAttr ".uvtk[1030]" -type "float2" 0.16084492 -0.06257689 ;
	setAttr ".uvtk[1032]" -type "float2" -0.16440415 -0.073894322 ;
	setAttr ".uvtk[1033]" -type "float2" -0.2068491 -0.080928743 ;
	setAttr ".uvtk[1036]" -type "float2" 0.15840879 -0.07231915 ;
	setAttr ".uvtk[1038]" -type "float2" 0.12207799 -0.060095727 ;
	setAttr ".uvtk[1040]" -type "float2" 0.091674954 -0.044104874 ;
	setAttr ".uvtk[1042]" -type "float2" 0.066794947 -0.026401222 ;
	setAttr ".uvtk[1044]" -type "float2" 0.046515435 -0.0079220533 ;
	setAttr ".uvtk[1046]" -type "float2" 0.029079676 0.010255933 ;
	setAttr ".uvtk[1048]" -type "float2" 0.020119846 0.024931908 ;
	setAttr ".uvtk[1050]" -type "float2" 0.012014598 0.040721655 ;
	setAttr ".uvtk[1052]" -type "float2" 0.0056833923 0.055102468 ;
	setAttr ".uvtk[1054]" -type "float2" 0.0021903515 0.065936804 ;
	setAttr ".uvtk[1056]" -type "float2" 0.0020714402 0.072654366 ;
	setAttr ".uvtk[1058]" -type "float2" 0.0033291578 0.073040009 ;
	setAttr ".uvtk[1060]" -type "float2" 0.0031737685 0.067747116 ;
	setAttr ".uvtk[1062]" -type "float2" 0.002152741 0.060603142 ;
	setAttr ".uvtk[1064]" -type "float2" 0.00036591291 0.051065564 ;
	setAttr ".uvtk[1066]" -type "float2" -0.0073043108 0.036110878 ;
	setAttr ".uvtk[1068]" -type "float2" -0.019057512 0.019194484 ;
	setAttr ".uvtk[1070]" -type "float2" -0.032769799 0.0023596287 ;
	setAttr ".uvtk[1072]" -type "float2" -0.050850987 -0.014940441 ;
	setAttr ".uvtk[1074]" -type "float2" -0.072123468 -0.032268524 ;
	setAttr ".uvtk[1076]" -type "float2" -0.09720856 -0.048735201 ;
	setAttr ".uvtk[1078]" -type "float2" -0.1278106 -0.062975168 ;
	setAttr ".uvtk[1168]" -type "float2" -0.20674658 -0.059204936 ;
	setAttr ".uvtk[1170]" -type "float2" 0.16370684 -0.052664399 ;
	setAttr ".uvtk[1171]" -type "float2" 0.12917818 -0.042627215 ;
	setAttr ".uvtk[1172]" -type "float2" 0.099874184 -0.029615402 ;
	setAttr ".uvtk[1173]" -type "float2" 0.075590849 -0.014605761 ;
	setAttr ".uvtk[1174]" -type "float2" 0.055599362 0.0017718673 ;
	setAttr ".uvtk[1175]" -type "float2" 0.037917167 0.017334819 ;
	setAttr ".uvtk[1176]" -type "float2" 0.028019071 0.029761791 ;
	setAttr ".uvtk[1177]" -type "float2" 0.019058466 0.044142246 ;
	setAttr ".uvtk[1178]" -type "float2" 0.011877209 0.05736506 ;
	setAttr ".uvtk[1179]" -type "float2" 0.0068105757 0.066757798 ;
	setAttr ".uvtk[1180]" -type "float2" 0.0038891733 0.072813153 ;
	setAttr ".uvtk[1181]" -type "float2" 0.0022422969 0.072951555 ;
	setAttr ".uvtk[1182]" -type "float2" 0.00025159121 0.06827271 ;
	setAttr ".uvtk[1183]" -type "float2" -0.0021359921 0.061782956 ;
	setAttr ".uvtk[1184]" -type "float2" -0.0062596798 0.053491116 ;
	setAttr ".uvtk[1185]" -type "float2" -0.015732944 0.040786743 ;
	setAttr ".uvtk[1186]" -type "float2" -0.028186083 0.02568233 ;
	setAttr ".uvtk[1187]" -type "float2" -0.042190254 0.010867596 ;
	setAttr ".uvtk[1188]" -type "float2" -0.060094833 -0.004265368 ;
	setAttr ".uvtk[1189]" -type "float2" -0.080790937 -0.019331396 ;
	setAttr ".uvtk[1190]" -type "float2" -0.10503316 -0.033213913 ;
	setAttr ".uvtk[1191]" -type "float2" -0.13426185 -0.044803202 ;
	setAttr ".uvtk[1192]" -type "float2" -0.16884178 -0.053763926 ;
	setAttr ".uvtk[1193]" -type "float2" -0.20516646 -0.09221977 ;
	setAttr ".uvtk[1195]" -type "float2" -0.2071445 -0.070208132 ;
	setAttr ".uvtk[1196]" -type "float2" 0.2004059 -0.080198467 ;
	setAttr ".uvtk[1197]" -type "float2" 0.20210692 -0.058744252 ;
	setAttr ".uvtk[1198]" -type "float2" -0.16209173 -0.084370911 ;
	setAttr ".uvtk[1199]" -type "float2" -0.12454212 -0.072311163 ;
	setAttr ".uvtk[1200]" -type "float2" -0.093143225 -0.056631088 ;
	setAttr ".uvtk[1201]" -type "float2" -0.067614198 -0.038881063 ;
	setAttr ".uvtk[1202]" -type "float2" -0.046189249 -0.020573854 ;
	setAttr ".uvtk[1203]" -type "float2" -0.028057814 -0.002063632 ;
	setAttr ".uvtk[1204]" -type "float2" -0.014666438 0.015614152 ;
	setAttr ".uvtk[1205]" -type "float2" -0.003210485 0.033252239 ;
	setAttr ".uvtk[1206]" -type "float2" 0.0036779046 0.049821258 ;
	setAttr ".uvtk[1207]" -type "float2" 0.004155159 0.059929729 ;
	setAttr ".uvtk[1208]" -type "float2" 0.0046613812 0.067264676 ;
	setAttr ".uvtk[1209]" -type "float2" 0.0039507151 0.072952509 ;
	setAttr ".uvtk[1210]" -type "float2" 0.001149863 0.072643399 ;
	setAttr ".uvtk[1211]" -type "float2" -0.00013780594 0.065183282 ;
	setAttr ".uvtk[1212]" -type "float2" 0.002582103 0.053665042 ;
	setAttr ".uvtk[1213]" -type "float2" 0.0084528923 0.038901806 ;
	setAttr ".uvtk[1214]" -type "float2" 0.016260505 0.022320628 ;
	setAttr ".uvtk[1215]" -type "float2" 0.024513483 0.0066679716 ;
	setAttr ".uvtk[1216]" -type "float2" 0.041918725 -0.013164759 ;
	setAttr ".uvtk[1217]" -type "float2" 0.062185451 -0.032425582 ;
	setAttr ".uvtk[1218]" -type "float2" 0.087283075 -0.051629603 ;
	setAttr ".uvtk[1219]" -type "float2" 0.11854506 -0.069018424 ;
	setAttr ".uvtk[1220]" -type "float2" 0.15570956 -0.082647622 ;
	setAttr ".uvtk[1221]" -type "float2" 0.19847575 -0.091419637 ;
createNode polyMapCut -n "polyMapCut14";
	rename -uid "D184E68F-9B4A-F0D2-77C8-039C67AA60DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[2043]" "e[2045]" "e[2048]" "e[2051]" "e[2054]" "e[2057]" "e[2060]" "e[2063]" "e[2066]" "e[2069]" "e[2072]" "e[2075]" "e[2078]" "e[2081]" "e[2084]" "e[2087]" "e[2090]" "e[2093]" "e[2096]" "e[2099]" "e[2102]" "e[2105]" "e[2108]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "D92298F2-A54F-52F3-A0B1-89943F1A61B7";
	setAttr ".uopa" yes;
	setAttr -s 173 ".uvtk";
	setAttr ".uvtk[936]" -type "float2" -0.48706269 -0.31458935 ;
	setAttr ".uvtk[937]" -type "float2" -0.49880031 -0.32195953 ;
	setAttr ".uvtk[938]" -type "float2" 0.28421366 -0.38223895 ;
	setAttr ".uvtk[939]" -type "float2" 0.2836144 -0.42637685 ;
	setAttr ".uvtk[940]" -type "float2" 0.28602684 -0.45821342 ;
	setAttr ".uvtk[941]" -type "float2" 0.28909218 -0.47779045 ;
	setAttr ".uvtk[942]" -type "float2" 0.29068142 -0.48618278 ;
	setAttr ".uvtk[943]" -type "float2" 0.29004005 -0.48907682 ;
	setAttr ".uvtk[944]" -type "float2" 0.28067958 -0.47772315 ;
	setAttr ".uvtk[945]" -type "float2" 0.26434571 -0.45701042 ;
	setAttr ".uvtk[946]" -type "float2" 0.2402139 -0.42997304 ;
	setAttr ".uvtk[947]" -type "float2" 0.21534008 -0.40472525 ;
	setAttr ".uvtk[948]" -type "float2" 0.17706314 -0.37494221 ;
	setAttr ".uvtk[949]" -type "float2" 0.12206367 -0.34333557 ;
	setAttr ".uvtk[950]" -type "float2" 0.054838538 -0.31543723 ;
	setAttr ".uvtk[951]" -type "float2" -0.016229093 -0.28875321 ;
	setAttr ".uvtk[952]" -type "float2" -0.08258009 -0.26950708 ;
	setAttr ".uvtk[953]" -type "float2" -0.15035442 -0.26324028 ;
	setAttr ".uvtk[954]" -type "float2" -0.21955442 -0.26181331 ;
	setAttr ".uvtk[955]" -type "float2" -0.28186318 -0.26427895 ;
	setAttr ".uvtk[956]" -type "float2" -0.33803472 -0.27152565 ;
	setAttr ".uvtk[957]" -type "float2" -0.38992417 -0.28140295 ;
	setAttr ".uvtk[958]" -type "float2" -0.43360317 -0.29297704 ;
	setAttr ".uvtk[959]" -type "float2" -0.46584186 -0.30462003 ;
	setAttr ".uvtk[984]" -type "float2" 0.17446733 0.043675244 ;
	setAttr ".uvtk[985]" -type "float2" -0.14866906 0.025212944 ;
	setAttr ".uvtk[988]" -type "float2" -0.127657 0.0057003498 ;
	setAttr ".uvtk[990]" -type "float2" -0.10567516 -0.0062182546 ;
	setAttr ".uvtk[992]" -type "float2" -0.084396064 -0.011430383 ;
	setAttr ".uvtk[994]" -type "float2" -0.064233005 -0.012452126 ;
	setAttr ".uvtk[996]" -type "float2" -0.045767188 -0.010817349 ;
	setAttr ".uvtk[998]" -type "float2" -0.030570865 -0.0060721636 ;
	setAttr ".uvtk[1000]" -type "float2" -0.016643763 0.00043654442 ;
	setAttr ".uvtk[1002]" -type "float2" -0.0067138076 0.0075435638 ;
	setAttr ".uvtk[1004]" -type "float2" -0.0036206841 0.013142824 ;
	setAttr ".uvtk[1006]" -type "float2" -0.0020216107 0.017449141 ;
	setAttr ".uvtk[1008]" -type "float2" -0.0012270212 0.02060473 ;
	setAttr ".uvtk[1010]" -type "float2" -0.0014143586 0.019445419 ;
	setAttr ".uvtk[1012]" -type "float2" 0.00084078312 0.013405681 ;
	setAttr ".uvtk[1014]" -type "float2" 0.007088393 0.0057578087 ;
	setAttr ".uvtk[1016]" -type "float2" 0.01642403 -0.0034348965 ;
	setAttr ".uvtk[1018]" -type "float2" 0.028906554 -0.012632966 ;
	setAttr ".uvtk[1020]" -type "float2" 0.041092962 -0.019065201 ;
	setAttr ".uvtk[1022]" -type "float2" 0.061522067 -0.021529734 ;
	setAttr ".uvtk[1024]" -type "float2" 0.083779633 -0.021884739 ;
	setAttr ".uvtk[1026]" -type "float2" 0.10759953 -0.016833782 ;
	setAttr ".uvtk[1028]" -type "float2" 0.132204 -0.0047107339 ;
	setAttr ".uvtk[1030]" -type "float2" 0.15511265 0.015721262 ;
	setAttr ".uvtk[1032]" -type "float2" -0.15469021 0.01991266 ;
	setAttr ".uvtk[1033]" -type "float2" -0.17454085 0.04759419 ;
	setAttr ".uvtk[1034]" -type "float2" 0.27665788 -0.32717776 ;
	setAttr ".uvtk[1035]" -type "float2" -0.48985764 -0.31054881 ;
	setAttr ".uvtk[1036]" -type "float2" 0.16143093 0.01006043 ;
	setAttr ".uvtk[1037]" -type "float2" 0.27198288 -0.38184741 ;
	setAttr ".uvtk[1038]" -type "float2" 0.13656968 -0.011107743 ;
	setAttr ".uvtk[1039]" -type "float2" 0.27381647 -0.42712012 ;
	setAttr ".uvtk[1040]" -type "float2" 0.10983846 -0.023312092 ;
	setAttr ".uvtk[1041]" -type "float2" 0.27955756 -0.45964804 ;
	setAttr ".uvtk[1042]" -type "float2" 0.084341884 -0.027896702 ;
	setAttr ".uvtk[1043]" -type "float2" 0.28570557 -0.47903481 ;
	setAttr ".uvtk[1044]" -type "float2" 0.06121558 -0.027000785 ;
	setAttr ".uvtk[1045]" -type "float2" 0.28952363 -0.48675194 ;
	setAttr ".uvtk[1046]" -type "float2" 0.039584309 -0.023582518 ;
	setAttr ".uvtk[1047]" -type "float2" 0.29170495 -0.48849407 ;
	setAttr ".uvtk[1048]" -type "float2" 0.026896477 -0.015946031 ;
	setAttr ".uvtk[1049]" -type "float2" 0.28494355 -0.47505912 ;
	setAttr ".uvtk[1050]" -type "float2" 0.014274597 -0.0059485435 ;
	setAttr ".uvtk[1051]" -type "float2" 0.26993635 -0.45262137 ;
	setAttr ".uvtk[1052]" -type "float2" 0.005046159 0.003837347 ;
	setAttr ".uvtk[1053]" -type "float2" 0.24681711 -0.42438909 ;
	setAttr ".uvtk[1054]" -type "float2" -0.001070112 0.012335062 ;
	setAttr ".uvtk[1055]" -type "float2" 0.22324428 -0.39705533 ;
	setAttr ".uvtk[1056]" -type "float2" -0.002414763 0.019268394 ;
	setAttr ".uvtk[1057]" -type "float2" 0.18545011 -0.36337879 ;
	setAttr ".uvtk[1058]" -type "float2" -0.00098347664 0.020648718 ;
	setAttr ".uvtk[1059]" -type "float2" 0.12942696 -0.3288061 ;
	setAttr ".uvtk[1060]" -type "float2" -0.0011557341 0.01712954 ;
	setAttr ".uvtk[1061]" -type "float2" 0.061220348 -0.29947212 ;
	setAttr ".uvtk[1062]" -type "float2" -0.0023493767 0.012520552 ;
	setAttr ".uvtk[1063]" -type "float2" -0.010474861 -0.27201155 ;
	setAttr ".uvtk[1064]" -type "float2" -0.0047474504 0.0059074163 ;
	setAttr ".uvtk[1065]" -type "float2" -0.07926333 -0.25158039 ;
	setAttr ".uvtk[1066]" -type "float2" -0.014895976 -0.0026687384 ;
	setAttr ".uvtk[1067]" -type "float2" -0.14966428 -0.24585167 ;
	setAttr ".uvtk[1068]" -type "float2" -0.029093623 -0.0098801851 ;
	setAttr ".uvtk[1069]" -type "float2" -0.21993455 -0.24520412 ;
	setAttr ".uvtk[1070]" -type "float2" -0.044858098 -0.015409529 ;
	setAttr ".uvtk[1071]" -type "float2" -0.28339329 -0.24855497 ;
	setAttr ".uvtk[1072]" -type "float2" -0.064149499 -0.017675877 ;
	setAttr ".uvtk[1073]" -type "float2" -0.34061185 -0.25747746 ;
	setAttr ".uvtk[1074]" -type "float2" -0.085247755 -0.017121375 ;
	setAttr ".uvtk[1075]" -type "float2" -0.39309284 -0.26892498 ;
	setAttr ".uvtk[1076]" -type "float2" -0.10806698 -0.012269676 ;
	setAttr ".uvtk[1077]" -type "float2" -0.43717885 -0.28288653 ;
	setAttr ".uvtk[1078]" -type "float2" -0.13192689 -0.00024807453 ;
	setAttr ".uvtk[1079]" -type "float2" -0.46939027 -0.29779902 ;
	setAttr ".uvtk[1168]" -type "float2" -0.15935481 0.055141032 ;
	setAttr ".uvtk[1170]" -type "float2" 0.14887097 0.021742046 ;
	setAttr ".uvtk[1171]" -type "float2" 0.12781975 0.001857996 ;
	setAttr ".uvtk[1172]" -type "float2" 0.10513756 -0.010289848 ;
	setAttr ".uvtk[1173]" -type "float2" 0.082943797 -0.015752554 ;
	setAttr ".uvtk[1174]" -type "float2" 0.062019914 -0.015893459 ;
	setAttr ".uvtk[1175]" -type "float2" 0.042626828 -0.014426231 ;
	setAttr ".uvtk[1176]" -type "float2" 0.031004786 -0.0091742277 ;
	setAttr ".uvtk[1177]" -type "float2" 0.018825382 -0.00090909004 ;
	setAttr ".uvtk[1178]" -type "float2" 0.009503454 0.0074785948 ;
	setAttr ".uvtk[1179]" -type "float2" 0.0030297637 0.014204025 ;
	setAttr ".uvtk[1180]" -type "float2" -0.0003772974 0.019655704 ;
	setAttr ".uvtk[1181]" -type "float2" -0.0014926791 0.020554066 ;
	setAttr ".uvtk[1182]" -type "float2" -0.0029950142 0.0176965 ;
	setAttr ".uvtk[1183]" -type "float2" -0.0049923062 0.013829231 ;
	setAttr ".uvtk[1184]" -type "float2" -0.0088567138 0.0091900826 ;
	setAttr ".uvtk[1185]" -type "float2" -0.019084871 0.0033948421 ;
	setAttr ".uvtk[1186]" -type "float2" -0.032541931 -0.0021520853 ;
	setAttr ".uvtk[1187]" -type "float2" -0.047028005 -0.00601089 ;
	setAttr ".uvtk[1188]" -type "float2" -0.064431965 -0.0069138408 ;
	setAttr ".uvtk[1189]" -type "float2" -0.083259404 -0.0054814816 ;
	setAttr ".uvtk[1190]" -type "float2" -0.10299933 2.3782253e-05 ;
	setAttr ".uvtk[1191]" -type "float2" -0.12314397 0.011853099 ;
	setAttr ".uvtk[1192]" -type "float2" -0.14247966 0.030701041 ;
	setAttr ".uvtk[1193]" -type "float2" -0.18179369 0.042530596 ;
	setAttr ".uvtk[1194]" -type "float2" 0.28974962 -0.33008152 ;
	setAttr ".uvtk[1195]" -type "float2" -0.16716719 0.051557183 ;
	setAttr ".uvtk[1196]" -type "float2" 0.18231416 0.039536774 ;
	setAttr ".uvtk[1197]" -type "float2" 0.16674963 0.048430502 ;
	setAttr ".uvtk[1198]" -type "float2" -0.16214478 0.014142275 ;
	setAttr ".uvtk[1199]" -type "float2" -0.13765186 -0.0070191622 ;
	setAttr ".uvtk[1200]" -type "float2" -0.11160928 -0.019515574 ;
	setAttr ".uvtk[1201]" -type "float2" -0.086703002 -0.023908317 ;
	setAttr ".uvtk[1202]" -type "float2" -0.064309835 -0.023820043 ;
	setAttr ".uvtk[1203]" -type "float2" -0.04412055 -0.021413088 ;
	setAttr ".uvtk[1204]" -type "float2" -0.027472734 -0.014582515 ;
	setAttr ".uvtk[1205]" -type "float2" -0.012656331 -0.0068234205 ;
	setAttr ".uvtk[1206]" -type "float2" -0.0015189648 0.0019290447 ;
	setAttr ".uvtk[1207]" -type "float2" -0.00018614531 0.011354804 ;
	setAttr ".uvtk[1208]" -type "float2" 0.00021368265 0.016679525 ;
	setAttr ".uvtk[1209]" -type "float2" 0.00097626448 0.020294309 ;
	setAttr ".uvtk[1210]" -type "float2" -0.0012587607 0.019271255 ;
	setAttr ".uvtk[1211]" -type "float2" -0.0017765164 0.012151361 ;
	setAttr ".uvtk[1212]" -type "float2" 0.0031248033 0.0020971298 ;
	setAttr ".uvtk[1213]" -type "float2" 0.0126881 -0.0076431036 ;
	setAttr ".uvtk[1214]" -type "float2" 0.024989814 -0.018777132 ;
	setAttr ".uvtk[1215]" -type "float2" 0.038489342 -0.026165426 ;
	setAttr ".uvtk[1216]" -type "float2" 0.06070146 -0.032284439 ;
	setAttr ".uvtk[1217]" -type "float2" 0.084479213 -0.033012033 ;
	setAttr ".uvtk[1218]" -type "float2" 0.11144197 -0.028909743 ;
	setAttr ".uvtk[1219]" -type "float2" 0.13970828 -0.01691097 ;
	setAttr ".uvtk[1220]" -type "float2" 0.16687483 0.0045492053 ;
	setAttr ".uvtk[1221]" -type "float2" 0.1900152 0.034204245 ;
	setAttr ".uvtk[1222]" -type "float2" -0.50124061 -0.31916007 ;
	setAttr ".uvtk[1223]" -type "float2" -0.13524073 -0.0056205988 ;
	setAttr ".uvtk[1224]" -type "float2" -0.10964346 -0.017375171 ;
	setAttr ".uvtk[1225]" -type "float2" -0.08577013 -0.022096992 ;
	setAttr ".uvtk[1226]" -type "float2" -0.06392467 -0.022473693 ;
	setAttr ".uvtk[1227]" -type "float2" -0.043963432 -0.01905185 ;
	setAttr ".uvtk[1228]" -type "float2" -0.027667701 -0.013230681 ;
	setAttr ".uvtk[1229]" -type "float2" -0.013271809 -0.005012989 ;
	setAttr ".uvtk[1230]" -type "float2" -0.0046935081 0.0058187246 ;
	setAttr ".uvtk[1231]" -type "float2" -0.0019438863 0.012368798 ;
	setAttr ".uvtk[1232]" -type "float2" -0.00061655045 0.01699245 ;
	setAttr ".uvtk[1233]" -type "float2" -0.002487421 0.020746827 ;
	setAttr ".uvtk[1234]" -type "float2" -0.0054937899 0.018126965 ;
	setAttr ".uvtk[1235]" -type "float2" -0.0043663383 0.010154605 ;
	setAttr ".uvtk[1236]" -type "float2" 0.0026204586 0.0014740229 ;
	setAttr ".uvtk[1237]" -type "float2" 0.011523485 -0.0096675158 ;
	setAttr ".uvtk[1238]" -type "float2" 0.024587959 -0.019929409 ;
	setAttr ".uvtk[1239]" -type "float2" 0.038354605 -0.030415177 ;
	setAttr ".uvtk[1240]" -type "float2" 0.060940385 -0.033236384 ;
	setAttr ".uvtk[1241]" -type "float2" 0.085555524 -0.035289526 ;
	setAttr ".uvtk[1242]" -type "float2" 0.11335891 -0.031067193 ;
	setAttr ".uvtk[1243]" -type "float2" 0.14232957 -0.018461645 ;
	setAttr ".uvtk[1244]" -type "float2" 0.16949132 0.00392735 ;
	setAttr ".uvtk[1245]" -type "float2" -0.15990341 0.014719963 ;
createNode polyMapCut -n "polyMapCut15";
	rename -uid "EA4AFD47-6847-E61F-604A-1196D886E97C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 26 "e[3]" "e[74]" "e[122]" "e[170]" "e[218]" "e[266]" "e[314]" "e[362]" "e[410]" "e[458]" "e[506]" "e[554]" "e[602]" "e[650]" "e[698]" "e[746]" "e[794]" "e[842]" "e[890]" "e[938]" "e[986]" "e[1034]" "e[1082]" "e[1131]" "e[1202]" "e[1249]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "CFD6F128-B743-3578-6AFA-28882BA8CB80";
	setAttr ".uopa" yes;
	setAttr -s 675 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.30412948 -0.038481116 ;
	setAttr ".uvtk[1]" -type "float2" 0.15589863 -0.020582495 ;
	setAttr ".uvtk[2]" -type "float2" 0.15639693 -0.028734151 ;
	setAttr ".uvtk[3]" -type "float2" 0.29607564 -0.011787928 ;
	setAttr ".uvtk[4]" -type "float2" 0.027112722 -0.032414805 ;
	setAttr ".uvtk[5]" -type "float2" 0.026477933 -0.04072018 ;
	setAttr ".uvtk[6]" -type "float2" -0.086149514 -0.040456481 ;
	setAttr ".uvtk[7]" -type "float2" -0.087784886 -0.048872575 ;
	setAttr ".uvtk[8]" -type "float2" -0.17809474 -0.046034317 ;
	setAttr ".uvtk[9]" -type "float2" -0.18051147 -0.054520696 ;
	setAttr ".uvtk[10]" -type "float2" -0.24435067 -0.050123584 ;
	setAttr ".uvtk[11]" -type "float2" -0.24728644 -0.058652811 ;
	setAttr ".uvtk[12]" -type "float2" -0.28226489 -0.053355787 ;
	setAttr ".uvtk[13]" -type "float2" -0.2854383 -0.061911069 ;
	setAttr ".uvtk[14]" -type "float2" -0.29105318 -0.056113642 ;
	setAttr ".uvtk[15]" -type "float2" -0.29418176 -0.064685136 ;
	setAttr ".uvtk[16]" -type "float2" -0.27184963 -0.058616728 ;
	setAttr ".uvtk[17]" -type "float2" -0.27466679 -0.067198813 ;
	setAttr ".uvtk[18]" -type "float2" -0.22764128 -0.060982801 ;
	setAttr ".uvtk[19]" -type "float2" -0.22991127 -0.069572389 ;
	setAttr ".uvtk[20]" -type "float2" -0.16307944 -0.063267991 ;
	setAttr ".uvtk[21]" -type "float2" -0.16461247 -0.071863472 ;
	setAttr ".uvtk[22]" -type "float2" -0.084178269 -0.065491706 ;
	setAttr ".uvtk[23]" -type "float2" -0.084841907 -0.074092336 ;
	setAttr ".uvtk[24]" -type "float2" 0.0020816922 -0.067650855 ;
	setAttr ".uvtk[25]" -type "float2" 0.0023547411 -0.076256357 ;
	setAttr ".uvtk[26]" -type "float2" 0.088218987 -0.069726631 ;
	setAttr ".uvtk[27]" -type "float2" 0.089425653 -0.078336939 ;
	setAttr ".uvtk[28]" -type "float2" 0.16675016 -0.071685523 ;
	setAttr ".uvtk[29]" -type "float2" 0.1688171 -0.08030054 ;
	setAttr ".uvtk[30]" -type "float2" 0.23069039 -0.073475078 ;
	setAttr ".uvtk[31]" -type "float2" 0.23347846 -0.082094327 ;
	setAttr ".uvtk[32]" -type "float2" 0.2740199 -0.075013906 ;
	setAttr ".uvtk[33]" -type "float2" 0.27733189 -0.08363609 ;
	setAttr ".uvtk[34]" -type "float2" 0.29208431 -0.076174401 ;
	setAttr ".uvtk[35]" -type "float2" 0.29567695 -0.084796637 ;
	setAttr ".uvtk[36]" -type "float2" 0.28190339 -0.076756015 ;
	setAttr ".uvtk[37]" -type "float2" 0.28550154 -0.085372522 ;
	setAttr ".uvtk[38]" -type "float2" 0.24236965 -0.076446488 ;
	setAttr ".uvtk[39]" -type "float2" 0.24568266 -0.085046582 ;
	setAttr ".uvtk[40]" -type "float2" 0.17433038 -0.074770853 ;
	setAttr ".uvtk[41]" -type "float2" 0.17707029 -0.08333604 ;
	setAttr ".uvtk[42]" -type "float2" 0.08055529 -0.0710373 ;
	setAttr ".uvtk[43]" -type "float2" 0.082458407 -0.079538338 ;
	setAttr ".uvtk[44]" -type "float2" -0.034408689 -0.064318553 ;
	setAttr ".uvtk[45]" -type "float2" -0.03355369 -0.072715819 ;
	setAttr ".uvtk[46]" -type "float2" -0.16460919 -0.053606596 ;
	setAttr ".uvtk[47]" -type "float2" -0.16491324 -0.061869755 ;
	setAttr ".uvtk[48]" -type "float2" -0.30142373 -0.029293807 ;
	setAttr ".uvtk[49]" -type "float2" 0.156537 -0.011484929 ;
	setAttr ".uvtk[50]" -type "float2" 0.030816138 -0.023064634 ;
	setAttr ".uvtk[51]" -type "float2" -0.07979393 -0.030931478 ;
	setAttr ".uvtk[52]" -type "float2" -0.16968638 -0.036400706 ;
	setAttr ".uvtk[53]" -type "float2" -0.2346108 -0.040424913 ;
	setAttr ".uvtk[54]" -type "float2" -0.27197993 -0.043618336 ;
	setAttr ".uvtk[55]" -type "float2" -0.2810238 -0.046352595 ;
	setAttr ".uvtk[56]" -type "float2" -0.26283979 -0.048840564 ;
	setAttr ".uvtk[57]" -type "float2" -0.22033006 -0.051196057 ;
	setAttr ".uvtk[58]" -type "float2" -0.15801775 -0.053472877 ;
	setAttr ".uvtk[59]" -type "float2" -0.081753135 -0.055689108 ;
	setAttr ".uvtk[60]" -type "float2" 0.0016723871 -0.057840899 ;
	setAttr ".uvtk[61]" -type "float2" 0.084979951 -0.059909161 ;
	setAttr ".uvtk[62]" -type "float2" 0.16088861 -0.061860438 ;
	setAttr ".uvtk[63]" -type "float2" 0.22260347 -0.06364283 ;
	setAttr ".uvtk[64]" -type "float2" 0.26426941 -0.065176204 ;
	setAttr ".uvtk[65]" -type "float2" 0.28136113 -0.066335469 ;
	setAttr ".uvtk[66]" -type "float2" 0.27098408 -0.066924617 ;
	setAttr ".uvtk[67]" -type "float2" 0.23206684 -0.066639088 ;
	setAttr ".uvtk[68]" -type "float2" 0.16543978 -0.06501627 ;
	setAttr ".uvtk[69]" -type "float2" 0.073799759 -0.061381713 ;
	setAttr ".uvtk[70]" -type "float2" -0.038441867 -0.054826226 ;
	setAttr ".uvtk[71]" -type "float2" -0.16553338 -0.044331357 ;
	setAttr ".uvtk[72]" -type "float2" -0.29734564 -0.019223418 ;
	setAttr ".uvtk[73]" -type "float2" 0.15787572 -0.0014745868 ;
	setAttr ".uvtk[74]" -type "float2" 0.037086904 -0.012650309 ;
	setAttr ".uvtk[75]" -type "float2" -0.069301486 -0.020244256 ;
	setAttr ".uvtk[76]" -type "float2" -0.15593493 -0.025547376 ;
	setAttr ".uvtk[77]" -type "float2" -0.21875244 -0.029474186 ;
	setAttr ".uvtk[78]" -type "float2" -0.25527304 -0.032611139 ;
	setAttr ".uvtk[79]" -type "float2" -0.26474994 -0.035312258 ;
	setAttr ".uvtk[80]" -type "float2" -0.24822307 -0.037779838 ;
	setAttr ".uvtk[81]" -type "float2" -0.20845932 -0.04012144 ;
	setAttr ".uvtk[82]" -type "float2" -0.1497767 -0.042387299 ;
	setAttr ".uvtk[83]" -type "float2" -0.07776314 -0.044593371 ;
	setAttr ".uvtk[84]" -type "float2" 0.0010935068 -0.046734747 ;
	setAttr ".uvtk[85]" -type "float2" 0.079838932 -0.048791811 ;
	setAttr ".uvtk[86]" -type "float2" 0.15151718 -0.050731283 ;
	setAttr ".uvtk[87]" -type "float2" 0.20963734 -0.052502096 ;
	setAttr ".uvtk[88]" -type "float2" 0.2486079 -0.054026108 ;
	setAttr ".uvtk[89]" -type "float2" 0.26411015 -0.055182163 ;
	setAttr ".uvtk[90]" -type "float2" 0.25338504 -0.05578126 ;
	setAttr ".uvtk[91]" -type "float2" 0.21541792 -0.055530973 ;
	setAttr ".uvtk[92]" -type "float2" 0.15101081 -0.053987872 ;
	setAttr ".uvtk[93]" -type "float2" 0.062744111 -0.05050486 ;
	setAttr ".uvtk[94]" -type "float2" -0.045178473 -0.044201847 ;
	setAttr ".uvtk[95]" -type "float2" -0.1672716 -0.03405045 ;
	setAttr ".uvtk[96]" -type "float2" -0.29182756 -0.0087666772 ;
	setAttr ".uvtk[97]" -type "float2" 0.15959996 0.0090050381 ;
	setAttr ".uvtk[98]" -type "float2" 0.045429766 -0.00157649 ;
	setAttr ".uvtk[99]" -type "float2" -0.055348694 -0.0087773185 ;
	setAttr ".uvtk[100]" -type "float2" -0.13766372 -0.013845501 ;
	setAttr ".uvtk[101]" -type "float2" -0.19769377 -0.017637823 ;
	setAttr ".uvtk[102]" -type "float2" -0.23309445 -0.020699481 ;
	setAttr ".uvtk[103]" -type "float2" -0.24314916 -0.023358556 ;
	setAttr ".uvtk[104]" -type "float2" -0.22882122 -0.025801783 ;
	setAttr ".uvtk[105]" -type "float2" -0.19269788 -0.028127648 ;
	setAttr ".uvtk[106]" -type "float2" -0.13882548 -0.030381104 ;
	setAttr ".uvtk[107]" -type "float2" -0.072444558 -0.032575149 ;
	setAttr ".uvtk[108]" -type "float2" 0.00035893917 -0.034703247 ;
	setAttr ".uvtk[109]" -type "float2" 0.073059946 -0.036745179 ;
	setAttr ".uvtk[110]" -type "float2" 0.13913271 -0.038667858 ;
	setAttr ".uvtk[111]" -type "float2" 0.19248876 -0.040421508 ;
	setAttr ".uvtk[112]" -type "float2" 0.2278854 -0.041930951 ;
	setAttr ".uvtk[113]" -type "float2" 0.24127665 -0.043080665 ;
	setAttr ".uvtk[114]" -type "float2" 0.23008347 -0.043691948 ;
	setAttr ".uvtk[115]" -type "float2" 0.19336605 -0.043489769 ;
	setAttr ".uvtk[116]" -type "float2" 0.1318897 -0.042058513 ;
	setAttr ".uvtk[117]" -type "float2" 0.048083901 -0.038790531 ;
	setAttr ".uvtk[118]" -type "float2" -0.054107487 -0.032848313 ;
	setAttr ".uvtk[119]" -type "float2" -0.1694974 -0.023199134 ;
	setAttr ".uvtk[120]" -type "float2" -0.2849617 0.0014203924 ;
	setAttr ".uvtk[121]" -type "float2" 0.16144252 0.019391671 ;
	setAttr ".uvtk[122]" -type "float2" 0.055281818 0.0096201217 ;
	setAttr ".uvtk[123]" -type "float2" -0.038757026 0.0029453482 ;
	setAttr ".uvtk[124]" -type "float2" -0.1159023 -0.0018129545 ;
	setAttr ".uvtk[125]" -type "float2" -0.17259932 -0.0054319794 ;
	setAttr ".uvtk[126]" -type "float2" -0.20666033 -0.0084002856 ;
	setAttr ".uvtk[127]" -type "float2" -0.21740127 -0.011010316 ;
	setAttr ".uvtk[128]" -type "float2" -0.20569211 -0.013427516 ;
	setAttr ".uvtk[129]" -type "float2" -0.17390519 -0.015737928 ;
	setAttr ".uvtk[130]" -type "float2" -0.12576276 -0.01797932 ;
	setAttr ".uvtk[131]" -type "float2" -0.066090941 -0.020160656 ;
	setAttr ".uvtk[132]" -type "float2" -0.00049740076 -0.022273291 ;
	setAttr ".uvtk[133]" -type "float2" 0.065004647 -0.024296183 ;
	setAttr ".uvtk[134]" -type "float2" 0.12440148 -0.026196595 ;
	setAttr ".uvtk[135]" -type "float2" 0.17208382 -0.027926594 ;
	setAttr ".uvtk[136]" -type "float2" 0.20322454 -0.02941506 ;
	setAttr ".uvtk[137]" -type "float2" 0.21410301 -0.030554269 ;
	setAttr ".uvtk[138]" -type "float2" 0.2023547 -0.031179383 ;
	setAttr ".uvtk[139]" -type "float2" 0.16713026 -0.031038942 ;
	setAttr ".uvtk[140]" -type "float2" 0.10915416 -0.029754698 ;
	setAttr ".uvtk[141]" -type "float2" 0.030683011 -0.026772127 ;
	setAttr ".uvtk[142]" -type "float2" -0.06462878 -0.021311892 ;
	setAttr ".uvtk[143]" -type "float2" -0.17190982 -0.012348559 ;
	setAttr ".uvtk[144]" -type "float2" -0.27703488 0.010667121 ;
	setAttr ".uvtk[145]" -type "float2" 0.16321951 0.029120099 ;
	setAttr ".uvtk[146]" -type "float2" 0.066045344 0.020377059 ;
	setAttr ".uvtk[147]" -type "float2" -0.020455718 0.0143584 ;
	setAttr ".uvtk[148]" -type "float2" -0.091840088 0.0099825282 ;
	setAttr ".uvtk[149]" -type "float2" -0.14482933 0.0065731774 ;
	setAttr ".uvtk[150]" -type "float2" -0.17739856 0.0037136581 ;
	setAttr ".uvtk[151]" -type "float2" -0.18889523 0.0011568733 ;
	setAttr ".uvtk[152]" -type "float2" -0.1800828 -0.0012353428 ;
	setAttr ".uvtk[153]" -type "float2" -0.15309459 -0.003533009 ;
	setAttr ".uvtk[154]" -type "float2" -0.11129314 -0.005764659 ;
	setAttr ".uvtk[155]" -type "float2" -0.059045553 -0.0079341028 ;
	setAttr ".uvtk[156]" -type "float2" -0.001429975 -0.010029977 ;
	setAttr ".uvtk[157]" -type "float2" 0.056106687 -0.012030292 ;
	setAttr ".uvtk[158]" -type "float2" 0.10811749 -0.013902897 ;
	setAttr ".uvtk[159]" -type "float2" 0.14952335 -0.015602278 ;
	setAttr ".uvtk[160]" -type "float2" 0.17595711 -0.01706264 ;
	setAttr ".uvtk[161]" -type "float2" 0.18405855 -0.018186299 ;
	setAttr ".uvtk[162]" -type "float2" 0.17170182 -0.018826161 ;
	setAttr ".uvtk[163]" -type "float2" 0.13813964 -0.018760527 ;
	setAttr ".uvtk[164]" -type "float2" 0.08405596 -0.017658105 ;
	setAttr ".uvtk[165]" -type "float2" 0.011526704 -0.015031324 ;
	setAttr ".uvtk[166]" -type "float2" -0.076092899 -0.010176444 ;
	setAttr ".uvtk[167]" -type "float2" -0.17426868 -0.0020956404 ;
	setAttr ".uvtk[168]" -type "float2" -0.26853514 0.018393157 ;
	setAttr ".uvtk[169]" -type "float2" 0.16487002 0.037689216 ;
	setAttr ".uvtk[170]" -type "float2" 0.07714957 0.030165661 ;
	setAttr ".uvtk[171]" -type "float2" -0.0014184117 0.024909565 ;
	setAttr ".uvtk[172]" -type "float2" -0.066758096 0.020974381 ;
	setAttr ".uvtk[173]" -type "float2" -0.11586493 0.017802974 ;
	setAttr ".uvtk[174]" -type "float2" -0.14687341 0.015062634 ;
	setAttr ".uvtk[175]" -type "float2" -0.15915716 0.012559772 ;
	setAttr ".uvtk[176]" -type "float2" -0.15336621 0.010188766 ;
	setAttr ".uvtk[177]" -type "float2" -0.13138258 0.0078988941 ;
	setAttr ".uvtk[178]" -type "float2" -0.096193075 0.0056728097 ;
	setAttr ".uvtk[179]" -type "float2" -0.051686108 0.0035129886 ;
	setAttr ".uvtk[180]" -type "float2" -0.0023877621 0.0014340009 ;
	setAttr ".uvtk[181]" -type "float2" 0.046845317 -0.00054107094 ;
	setAttr ".uvtk[182]" -type "float2" 0.0911569 -0.0023808458 ;
	setAttr ".uvtk[183]" -type "float2" 0.12602067 -0.004042964 ;
	setAttr ".uvtk[184]" -type "float2" 0.14754885 -0.0054682135 ;
	setAttr ".uvtk[185]" -type "float2" 0.15275744 -0.0065710736 ;
	setAttr ".uvtk[186]" -type "float2" 0.13977018 -0.0072256168 ;
	setAttr ".uvtk[187]" -type "float2" 0.1079492 -0.0072452519 ;
	setAttr ".uvtk[188]" -type "float2" 0.057942361 -0.0063537592 ;
	setAttr ".uvtk[189]" -type "float2" -0.0083503425 -0.004142582 ;
	setAttr ".uvtk[190]" -type "float2" -0.087868214 -1.8385728e-06 ;
	setAttr ".uvtk[191]" -type "float2" -0.17644483 0.0070060263 ;
	setAttr ".uvtk[192]" -type "float2" -0.26010507 0.024180153 ;
	setAttr ".uvtk[193]" -type "float2" 0.16646332 0.044699453 ;
	setAttr ".uvtk[194]" -type "float2" 0.088100612 0.038525797 ;
	setAttr ".uvtk[195]" -type "float2" 0.017401695 0.034094743 ;
	setAttr ".uvtk[196]" -type "float2" -0.041955292 0.030632332 ;
	setAttr ".uvtk[197]" -type "float2" -0.087229133 0.027713228 ;
	setAttr ".uvtk[198]" -type "float2" -0.11670291 0.025095245 ;
	setAttr ".uvtk[199]" -type "float2" -0.12977093 0.022643037 ;
	setAttr ".uvtk[200]" -type "float2" -0.12696892 0.020287029 ;
	setAttr ".uvtk[201]" -type "float2" -0.1099304 0.017998258 ;
	setAttr ".uvtk[202]" -type "float2" -0.081270754 0.015772138 ;
	setAttr ".uvtk[203]" -type "float2" -0.044406354 0.013618338 ;
	setAttr ".uvtk[204]" -type "float2" -0.0033186674 0.01155508 ;
	setAttr ".uvtk[205]" -type "float2" 0.037717998 0.0096065998 ;
	setAttr ".uvtk[206]" -type "float2" 0.074429691 0.0078032063 ;
	setAttr ".uvtk[207]" -type "float2" 0.10283512 0.0061835437 ;
	setAttr ".uvtk[208]" -type "float2" 0.11951941 0.0047991676 ;
	setAttr ".uvtk[209]" -type "float2" 0.12186947 0.0037217801 ;
	setAttr ".uvtk[210]" -type "float2" 0.10825634 0.0030536973 ;
	setAttr ".uvtk[211]" -type "float2" 0.078152269 0.0029430715 ;
	setAttr ".uvtk[212]" -type "float2" 0.032175392 0.0036062682 ;
	setAttr ".uvtk[213]" -type "float2" -0.027936488 0.0053649321 ;
	setAttr ".uvtk[214]" -type "float2" -0.099402696 0.0087179467 ;
	setAttr ".uvtk[215]" -type "float2" -0.1784485 0.014498708 ;
	setAttr ".uvtk[216]" -type "float2" -0.25245205 0.027802816 ;
	setAttr ".uvtk[217]" -type "float2" 0.16815507 0.049863029 ;
	setAttr ".uvtk[218]" -type "float2" 0.098487675 0.04508052 ;
	setAttr ".uvtk[219]" -type "float2" 0.035109282 0.041479848 ;
	setAttr ".uvtk[220]" -type "float2" -0.018690825 0.038489252 ;
	setAttr ".uvtk[221]" -type "float2" -0.06041491 0.035819463 ;
	setAttr ".uvtk[222]" -type "float2" -0.088480413 0.033318572 ;
	setAttr ".uvtk[223]" -type "float2" -0.10229939 0.030909888 ;
	setAttr ".uvtk[224]" -type "float2" -0.10230076 0.028561007 ;
	setAttr ".uvtk[225]" -type "float2" -0.089886487 0.026265815 ;
	setAttr ".uvtk[226]" -type "float2" -0.067326605 0.024033364 ;
	setAttr ".uvtk[227]" -type "float2" -0.037597537 0.021881051 ;
	setAttr ".uvtk[228]" -type "float2" -0.0041736364 0.019830991 ;
	setAttr ".uvtk[229]" -type "float2" 0.029212981 0.017908558 ;
	setAttr ".uvtk[230]" -type "float2" 0.058830619 0.016142756 ;
	setAttr ".uvtk[231]" -type "float2" 0.081205606 0.01456807 ;
	setAttr ".uvtk[232]" -type "float2" 0.093363047 0.013227751 ;
	setAttr ".uvtk[233]" -type "float2" 0.093035102 0.012178846 ;
	setAttr ".uvtk[234]" -type "float2" 0.078822851 0.011499261 ;
	setAttr ".uvtk[235]" -type "float2" 0.05030185 0.011298089 ;
	setAttr ".uvtk[236]" -type "float2" 0.0080657601 0.011731674 ;
	setAttr ".uvtk[237]" -type "float2" -0.046292156 0.013033299 ;
	setAttr ".uvtk[238]" -type "float2" -0.11024573 0.015579386 ;
	setAttr ".uvtk[239]" -type "float2" -0.18040621 0.020053299 ;
	setAttr ".uvtk[240]" -type "float2" -0.24622294 0.029221978 ;
	setAttr ".uvtk[241]" -type "float2" 0.17008352 0.052994698 ;
	setAttr ".uvtk[242]" -type "float2" 0.10792536 0.049540654 ;
	setAttr ".uvtk[243]" -type "float2" 0.050859392 0.046717491 ;
	setAttr ".uvtk[244]" -type "float2" 0.0018456578 0.04416547 ;
	setAttr ".uvtk[245]" -type "float2" -0.036830842 0.041724943 ;
	setAttr ".uvtk[246]" -type "float2" -0.063706994 0.039327811 ;
	setAttr ".uvtk[247]" -type "float2" -0.078213334 0.036952503 ;
	setAttr ".uvtk[248]" -type "float2" -0.080687344 0.034602303 ;
	setAttr ".uvtk[249]" -type "float2" -0.072330832 0.032293532 ;
	setAttr ".uvtk[250]" -type "float2" -0.055113792 0.030048773 ;
	setAttr ".uvtk[251]" -type "float2" -0.031629562 0.027893133 ;
	setAttr ".uvtk[252]" -type "float2" -0.0049106777 0.025852561 ;
	setAttr ".uvtk[253]" -type "float2" 0.021783322 0.023953469 ;
	setAttr ".uvtk[254]" -type "float2" 0.045193642 0.022223433 ;
	setAttr ".uvtk[255]" -type "float2" 0.062288612 0.020692589 ;
	setAttr ".uvtk[256]" -type "float2" 0.070476323 0.019395871 ;
	setAttr ".uvtk[257]" -type "float2" 0.06778878 0.018375929 ;
	setAttr ".uvtk[258]" -type "float2" 0.05302605 0.01768722 ;
	setAttr ".uvtk[259]" -type "float2" 0.025852144 0.017402088 ;
	setAttr ".uvtk[260]" -type "float2" -0.013162136 0.017621228 ;
	setAttr ".uvtk[261]" -type "float2" -0.062549621 0.018495543 ;
	setAttr ".uvtk[262]" -type "float2" -0.12000412 0.020279579 ;
	setAttr ".uvtk[263]" -type "float2" -0.18247142 0.023475284 ;
	setAttr ".uvtk[264]" -type "float2" -0.2418454 0.028557565 ;
	setAttr ".uvtk[265]" -type "float2" 0.17221349 0.054009974 ;
	setAttr ".uvtk[266]" -type "float2" 0.11594504 0.051723234 ;
	setAttr ".uvtk[267]" -type "float2" 0.06381309 0.049575355 ;
	setAttr ".uvtk[268]" -type "float2" 0.018539429 0.047401834 ;
	setAttr ".uvtk[269]" -type "float2" -0.017764211 0.045156118 ;
	setAttr ".uvtk[270]" -type "float2" -0.043736935 0.042842932 ;
	setAttr ".uvtk[271]" -type "float2" -0.058829546 0.040489268 ;
	setAttr ".uvtk[272]" -type "float2" -0.063310683 0.038130321 ;
	setAttr ".uvtk[273]" -type "float2" -0.058224738 0.035802707 ;
	setAttr ".uvtk[274]" -type "float2" -0.045303404 0.033541329 ;
	setAttr ".uvtk[275]" -type "float2" -0.026834607 0.031378295 ;
	setAttr ".uvtk[276]" -type "float2" -0.0054985881 0.029342983 ;
	setAttr ".uvtk[277]" -type "float2" 0.015823334 0.027462639 ;
	setAttr ".uvtk[278]" -type "float2" 0.034249514 0.025763389 ;
	setAttr ".uvtk[279]" -type "float2" 0.047101319 0.024271328 ;
	setAttr ".uvtk[280]" -type "float2" 0.052092195 0.023013745 ;
	setAttr ".uvtk[281]" -type "float2" 0.047491997 0.022020355 ;
	setAttr ".uvtk[282]" -type "float2" 0.032257199 0.021324892 ;
	setAttr ".uvtk[283]" -type "float2" 0.0061188936 0.020967659 ;
	setAttr ".uvtk[284]" -type "float2" -0.03037563 0.021001451 ;
	setAttr ".uvtk[285]" -type "float2" -0.07586655 0.021506615 ;
	setAttr ".uvtk[286]" -type "float2" -0.12822875 0.022630595 ;
	setAttr ".uvtk[287]" -type "float2" -0.18466163 0.02469508 ;
	setAttr ".uvtk[288]" -type "float2" -0.23935193 0.02607229 ;
	setAttr ".uvtk[289]" -type "float2" 0.17419708 0.05296801 ;
	setAttr ".uvtk[290]" -type "float2" 0.12191302 0.051610284 ;
	setAttr ".uvtk[291]" -type "float2" 0.073111117 0.049997061 ;
	setAttr ".uvtk[292]" -type "float2" 0.030365109 0.048120588 ;
	setAttr ".uvtk[293]" -type "float2" -0.0043403506 0.046024255 ;
	setAttr ".uvtk[294]" -type "float2" -0.029723287 0.043771386 ;
	setAttr ".uvtk[295]" -type "float2" -0.045253694 0.041428301 ;
	setAttr ".uvtk[296]" -type "float2" -0.051155806 0.039056189 ;
	setAttr ".uvtk[297]" -type "float2" -0.048367083 0.036708131 ;
	setAttr ".uvtk[298]" -type "float2" -0.038454473 0.03442901 ;
	setAttr ".uvtk[299]" -type "float2" -0.023494601 0.032256562 ;
	setAttr ".uvtk[300]" -type "float2" -0.0059220791 0.030222844 ;
	setAttr ".uvtk[301]" -type "float2" 0.011644214 0.02835568 ;
	setAttr ".uvtk[302]" -type "float2" 0.02658546 0.026679933 ;
	setAttr ".uvtk[303]" -type "float2" 0.036468327 0.025218349 ;
	setAttr ".uvtk[304]" -type "float2" 0.039217889 0.023992021 ;
	setAttr ".uvtk[305]" -type "float2" 0.033268422 0.02302032 ;
	setAttr ".uvtk[306]" -type "float2" 0.01768297 0.022320457 ;
	setAttr ".uvtk[307]" -type "float2" -0.0077646077 0.021907322 ;
	setAttr ".uvtk[308]" -type "float2" -0.042548954 0.021795839 ;
	setAttr ".uvtk[309]" -type "float2" -0.085393488 0.022010591 ;
	setAttr ".uvtk[310]" -type "float2" -0.13431033 0.022614978 ;
	setAttr ".uvtk[311]" -type "float2" -0.18667689 0.023786057 ;
	setAttr ".uvtk[312]" -type "float2" -0.23831365 0.022217035 ;
	setAttr ".uvtk[313]" -type "float2" 0.17539281 0.050198391 ;
	setAttr ".uvtk[314]" -type "float2" 0.12508768 0.049497336 ;
	setAttr ".uvtk[315]" -type "float2" 0.077941179 0.048261039 ;
	setAttr ".uvtk[316]" -type "float2" 0.036454022 0.046591423 ;
	setAttr ".uvtk[317]" -type "float2" 0.0025416613 0.044596173 ;
	setAttr ".uvtk[318]" -type "float2" -0.022557199 0.042381041 ;
	setAttr ".uvtk[319]" -type "float2" -0.038324893 0.040040832 ;
	setAttr ".uvtk[320]" -type "float2" -0.04496485 0.037655365 ;
	setAttr ".uvtk[321]" -type "float2" -0.043360233 0.035289478 ;
	setAttr ".uvtk[322]" -type "float2" -0.034994781 0.032995094 ;
	setAttr ".uvtk[323]" -type "float2" -0.021836698 0.030813836 ;
	setAttr ".uvtk[324]" -type "float2" -0.006195128 0.028779574 ;
	setAttr ".uvtk[325]" -type "float2" 0.0094455779 0.026920479 ;
	setAttr ".uvtk[326]" -type "float2" 0.022601306 0.025260456 ;
	setAttr ".uvtk[327]" -type "float2" 0.030964285 0.023819879 ;
	setAttr ".uvtk[328]" -type "float2" 0.032567859 0.022615481 ;
	setAttr ".uvtk[329]" -type "float2" 0.025929898 0.021659378 ;
	setAttr ".uvtk[330]" -type "float2" 0.010166883 0.020957202 ;
	setAttr ".uvtk[331]" -type "float2" -0.014927119 0.020505998 ;
	setAttr ".uvtk[332]" -type "float2" -0.048840851 0.020293728 ;
	setAttr ".uvtk[333]" -type "float2" -0.090345055 0.020304989 ;
	setAttr ".uvtk[334]" -type "float2" -0.13753054 0.020542726 ;
	setAttr ".uvtk[335]" -type "float2" -0.18788129 0.021085061 ;
	setAttr ".uvtk[336]" -type "float2" -0.23813131 0.01779611 ;
	setAttr ".uvtk[337]" -type "float2" 0.17513573 0.046654724 ;
	setAttr ".uvtk[338]" -type "float2" 0.12484235 0.046454445 ;
	setAttr ".uvtk[339]" -type "float2" 0.077693164 0.045505881 ;
	setAttr ".uvtk[340]" -type "float2" 0.036200285 0.043991722 ;
	setAttr ".uvtk[341]" -type "float2" 0.0022827387 0.042069912 ;
	setAttr ".uvtk[342]" -type "float2" -0.022818983 0.039879695 ;
	setAttr ".uvtk[343]" -type "float2" -0.03858614 0.037538156 ;
	setAttr ".uvtk[344]" -type "float2" -0.045221746 0.035139564 ;
	setAttr ".uvtk[345]" -type "float2" -0.043609142 0.032757718 ;
	setAttr ".uvtk[346]" -type "float2" -0.035231471 0.03044983 ;
	setAttr ".uvtk[347]" -type "float2" -0.022057474 0.028260402 ;
	setAttr ".uvtk[348]" -type "float2" -0.0063959062 0.026224606 ;
	setAttr ".uvtk[349]" -type "float2" 0.0092689097 0.024370808 ;
	setAttr ".uvtk[350]" -type "float2" 0.022452921 0.022722162 ;
	setAttr ".uvtk[351]" -type "float2" 0.030848712 0.021297228 ;
	setAttr ".uvtk[352]" -type "float2" 0.032489628 0.020109471 ;
	setAttr ".uvtk[353]" -type "float2" 0.025893629 0.019165561 ;
	setAttr ".uvtk[354]" -type "float2" 0.010177255 0.018462408 ;
	setAttr ".uvtk[355]" -type "float2" -0.014865726 0.017983459 ;
	setAttr ".uvtk[356]" -type "float2" -0.048724473 0.017695885 ;
	setAttr ".uvtk[357]" -type "float2" -0.090171069 0.01755283 ;
	setAttr ".uvtk[358]" -type "float2" -0.13730097 0.01750879 ;
	setAttr ".uvtk[359]" -type "float2" -0.18761656 0.017561525 ;
	setAttr ".uvtk[360]" -type "float2" -0.23862791 0.01392746 ;
	setAttr ".uvtk[361]" -type "float2" 0.17326111 0.043965109 ;
	setAttr ".uvtk[362]" -type "float2" 0.12101299 0.04440514 ;
	setAttr ".uvtk[363]" -type "float2" 0.072198391 0.043820925 ;
	setAttr ".uvtk[364]" -type "float2" 0.029428899 0.042499237 ;
	setAttr ".uvtk[365]" -type "float2" -0.00529778 0.040664345 ;
	setAttr ".uvtk[366]" -type "float2" -0.030692577 0.038499668 ;
	setAttr ".uvtk[367]" -type "float2" -0.04622221 0.036151297 ;
	setAttr ".uvtk[368]" -type "float2" -0.052109718 0.03373199 ;
	setAttr ".uvtk[369]" -type "float2" -0.049291968 0.031326815 ;
	setAttr ".uvtk[370]" -type "float2" -0.039336026 0.028999489 ;
	setAttr ".uvtk[371]" -type "float2" -0.024318457 0.026797976 ;
	setAttr ".uvtk[372]" -type "float2" -0.0066736639 0.024758939 ;
	setAttr ".uvtk[373]" -type "float2" 0.010979742 0.022910889 ;
	setAttr ".uvtk[374]" -type "float2" 0.026023448 0.02127599 ;
	setAttr ".uvtk[375]" -type "float2" 0.036024719 0.019870527 ;
	setAttr ".uvtk[376]" -type "float2" 0.038909078 0.018703945 ;
	setAttr ".uvtk[377]" -type "float2" 0.033111066 0.01777618 ;
	setAttr ".uvtk[378]" -type "float2" 0.017693579 0.01707333 ;
	setAttr ".uvtk[379]" -type "float2" -0.0075703561 0.016561717 ;
	setAttr ".uvtk[380]" -type "float2" -0.042156875 0.016181905 ;
	setAttr ".uvtk[381]" -type "float2" -0.084794223 0.015845757 ;
	setAttr ".uvtk[382]" -type "float2" -0.13351065 0.015442446 ;
	setAttr ".uvtk[383]" -type "float2" -0.18574604 0.014856048 ;
	setAttr ".uvtk[384]" -type "float2" -0.24021089 0.01140216 ;
	setAttr ".uvtk[385]" -type "float2" 0.17032355 0.043132178 ;
	setAttr ".uvtk[386]" -type "float2" 0.11409277 0.044477604 ;
	setAttr ".uvtk[387]" -type "float2" 0.061916113 0.044393279 ;
	setAttr ".uvtk[388]" -type "float2" 0.016579151 0.043326035 ;
	setAttr ".uvtk[389]" -type "float2" -0.019779146 0.041598499 ;
	setAttr ".uvtk[390]" -type "float2" -0.045784593 0.039458051 ;
	setAttr ".uvtk[391]" -type "float2" -0.060881257 0.037091814 ;
	setAttr ".uvtk[392]" -type "float2" -0.06533587 0.034637868 ;
	setAttr ".uvtk[393]" -type "float2" -0.060192704 0.032196313 ;
	setAttr ".uvtk[394]" -type "float2" -0.047183514 0.029839247 ;
	setAttr ".uvtk[395]" -type "float2" -0.028597176 0.027618907 ;
	setAttr ".uvtk[396]" -type "float2" -0.0071132481 0.025573678 ;
	setAttr ".uvtk[397]" -type "float2" 0.014387012 0.023732055 ;
	setAttr ".uvtk[398]" -type "float2" 0.033022881 0.022114798 ;
	setAttr ".uvtk[399]" -type "float2" 0.04611668 0.020735212 ;
	setAttr ".uvtk[400]" -type "float2" 0.051382601 0.019597489 ;
	setAttr ".uvtk[401]" -type "float2" 0.047091037 0.018692866 ;
	setAttr ".uvtk[402]" -type "float2" 0.032197863 0.017993186 ;
	setAttr ".uvtk[403]" -type "float2" 0.0064325333 0.017441843 ;
	setAttr ".uvtk[404]" -type "float2" -0.029661119 0.016942646 ;
	setAttr ".uvtk[405]" -type "float2" -0.074732006 0.016348541 ;
	setAttr ".uvtk[406]" -type "float2" -0.12668386 0.015452132 ;
	setAttr ".uvtk[407]" -type "float2" -0.1828225 0.013967488 ;
	setAttr ".uvtk[408]" -type "float2" -0.2433632 0.010675412 ;
	setAttr ".uvtk[409]" -type "float2" 0.16702896 0.044527791 ;
	setAttr ".uvtk[410]" -type "float2" 0.10486168 0.047016472 ;
	setAttr ".uvtk[411]" -type "float2" 0.047674954 0.047543637 ;
	setAttr ".uvtk[412]" -type "float2" -0.0014811158 0.046770975 ;
	setAttr ".uvtk[413]" -type "float2" -0.040277004 0.045155436 ;
	setAttr ".uvtk[414]" -type "float2" -0.067227006 0.043028571 ;
	setAttr ".uvtk[415]" -type "float2" -0.081752896 0.040629044 ;
	setAttr ".uvtk[416]" -type "float2" -0.084190547 0.038125381 ;
	setAttr ".uvtk[417]" -type "float2" -0.075742841 0.035634831 ;
	setAttr ".uvtk[418]" -type "float2" -0.058381915 0.03323859 ;
	setAttr ".uvtk[419]" -type "float2" -0.034702241 0.030993178 ;
	setAttr ".uvtk[420]" -type "float2" -0.0077372193 0.028938465 ;
	setAttr ".uvtk[421]" -type "float2" 0.01925385 0.027102634 ;
	setAttr ".uvtk[422]" -type "float2" 0.043012947 0.025504693 ;
	setAttr ".uvtk[423]" -type "float2" 0.060509741 0.024154589 ;
	setAttr ".uvtk[424]" -type "float2" 0.069153309 0.02305077 ;
	setAttr ".uvtk[425]" -type "float2" 0.066976041 0.02217485 ;
	setAttr ".uvtk[426]" -type "float2" 0.052776754 0.021482617 ;
	setAttr ".uvtk[427]" -type "float2" 0.02621606 0.020890679 ;
	setAttr ".uvtk[428]" -type "float2" -0.012141496 0.020258121 ;
	setAttr ".uvtk[429]" -type "float2" -0.060841441 0.019362662 ;
	setAttr ".uvtk[430]" -type "float2" -0.11761531 0.017868627 ;
	setAttr ".uvtk[431]" -type "float2" -0.17954338 0.015265528 ;
	setAttr ".uvtk[432]" -type "float2" -0.24820518 0.011981461 ;
	setAttr ".uvtk[433]" -type "float2" 0.16379088 0.048231177 ;
	setAttr ".uvtk[434]" -type "float2" 0.094024837 0.05201409 ;
	setAttr ".uvtk[435]" -type "float2" 0.030394197 0.053220019 ;
	setAttr ".uvtk[436]" -type "float2" -0.023679316 0.052755654 ;
	setAttr ".uvtk[437]" -type "float2" -0.065626204 0.051242925 ;
	setAttr ".uvtk[438]" -type "float2" -0.093831778 0.049114324 ;
	setAttr ".uvtk[439]" -type "float2" -0.10769868 0.046667211 ;
	setAttr ".uvtk[440]" -type "float2" -0.1076569 0.044102728 ;
	setAttr ".uvtk[441]" -type "float2" -0.095113277 0.041555345 ;
	setAttr ".uvtk[442]" -type "float2" -0.072342694 0.039114647 ;
	setAttr ".uvtk[443]" -type "float2" -0.042325258 0.0368407 ;
	setAttr ".uvtk[444]" -type "float2" -0.0085375309 0.034774184 ;
	setAttr ".uvtk[445]" -type "float2" 0.025287569 0.032942578 ;
	setAttr ".uvtk[446]" -type "float2" 0.055419117 0.031362981 ;
	setAttr ".uvtk[447]" -type "float2" 0.078384608 0.030042 ;
	setAttr ".uvtk[448]" -type "float2" 0.091210306 0.028972618 ;
	setAttr ".uvtk[449]" -type "float2" 0.091628253 0.028127134 ;
	setAttr ".uvtk[450]" -type "float2" 0.078237057 0.027445376 ;
	setAttr ".uvtk[451]" -type "float2" 0.050605506 0.026816033 ;
	setAttr ".uvtk[452]" -type "float2" 0.0093159676 0.02604904 ;
	setAttr ".uvtk[453]" -type "float2" -0.044056922 0.024835043 ;
	setAttr ".uvtk[454]" -type "float2" -0.10702911 0.022684582 ;
	setAttr ".uvtk[455]" -type "float2" -0.17635319 0.018823482 ;
	setAttr ".uvtk[456]" -type "float2" -0.25446224 0.015393317 ;
	setAttr ".uvtk[457]" -type "float2" 0.16070294 0.054149233 ;
	setAttr ".uvtk[458]" -type "float2" 0.082115054 0.059263781 ;
	setAttr ".uvtk[459]" -type "float2" 0.01097095 0.061159104 ;
	setAttr ".uvtk[460]" -type "float2" -0.048845947 0.060992323 ;
	setAttr ".uvtk[461]" -type "float2" -0.09448427 0.059566207 ;
	setAttr ".uvtk[462]" -type "float2" -0.12418604 0.057422802 ;
	setAttr ".uvtk[463]" -type "float2" -0.13733947 0.054920338 ;
	setAttr ".uvtk[464]" -type "float2" -0.13448799 0.052291721 ;
	setAttr ".uvtk[465]" -type "float2" -0.11727601 0.049686886 ;
	setAttr ".uvtk[466]" -type "float2" -0.088328958 0.047202237 ;
	setAttr ".uvtk[467]" -type "float2" -0.051069915 0.044900119 ;
	setAttr ".uvtk[468]" -type "float2" -0.0094852448 0.042821318 ;
	setAttr ".uvtk[469]" -type "float2" 0.032148749 0.040992178 ;
	setAttr ".uvtk[470]" -type "float2" 0.069558024 0.039427847 ;
	setAttr ".uvtk[471]" -type "float2" 0.098762542 0.038131997 ;
	setAttr ".uvtk[472]" -type "float2" 0.11634862 0.037092805 ;
	setAttr ".uvtk[473]" -type "float2" 0.11970243 0.036274426 ;
	setAttr ".uvtk[474]" -type "float2" 0.10718998 0.035602123 ;
	setAttr ".uvtk[475]" -type "float2" 0.078271478 0.03493797 ;
	setAttr ".uvtk[476]" -type "float2" 0.033544242 0.034042448 ;
	setAttr ".uvtk[477]" -type "float2" -0.025283813 0.03251449 ;
	setAttr ".uvtk[478]" -type "float2" -0.095477879 0.029698387 ;
	setAttr ".uvtk[479]" -type "float2" -0.17338318 0.024540715 ;
	setAttr ".uvtk[480]" -type "float2" -0.26162511 0.020849429 ;
	setAttr ".uvtk[481]" -type "float2" 0.15770561 0.062050417 ;
	setAttr ".uvtk[482]" -type "float2" 0.069580376 0.068426035 ;
	setAttr ".uvtk[483]" -type "float2" -0.0096958876 0.070962377 ;
	setAttr ".uvtk[484]" -type "float2" -0.075733006 0.071059935 ;
	setAttr ".uvtk[485]" -type "float2" -0.12537432 0.069701314 ;
	setAttr ".uvtk[486]" -type "float2" -0.15671051 0.067535788 ;
	setAttr ".uvtk[487]" -type "float2" -0.16911846 0.064978711 ;
	setAttr ".uvtk[488]" -type "float2" -0.1632672 0.062291004 ;
	setAttr ".uvtk[489]" -type "float2" -0.14105809 0.059635147 ;
	setAttr ".uvtk[490]" -type "float2" -0.10549408 0.057112277 ;
	setAttr ".uvtk[491]" -type "float2" -0.060475409 0.05478587 ;
	setAttr ".uvtk[492]" -type "float2" -0.010535598 0.052696049 ;
	setAttr ".uvtk[493]" -type "float2" 0.039464831 0.050867818 ;
	setAttr ".uvtk[494]" -type "float2" 0.084668726 0.049314484 ;
	setAttr ".uvtk[495]" -type "float2" 0.12055084 0.048037186 ;
	setAttr ".uvtk[496]" -type "float2" 0.14322472 0.047020197 ;
	setAttr ".uvtk[497]" -type "float2" 0.14970484 0.046221025 ;
	setAttr ".uvtk[498]" -type "float2" 0.13810706 0.045552626 ;
	setAttr ".uvtk[499]" -type "float2" 0.10777354 0.044853635 ;
	setAttr ".uvtk[500]" -type "float2" 0.059316963 0.043839209 ;
	setAttr ".uvtk[501]" -type "float2" -0.0054127276 0.042020969 ;
	setAttr ".uvtk[502]" -type "float2" -0.083410501 0.038581297 ;
	setAttr ".uvtk[503]" -type "float2" -0.17057997 0.032194234 ;
	setAttr ".uvtk[504]" -type "float2" -0.26910114 0.028144971 ;
	setAttr ".uvtk[505]" -type "float2" 0.15473813 0.07156945 ;
	setAttr ".uvtk[506]" -type "float2" 0.056894779 0.079055637 ;
	setAttr ".uvtk[507]" -type "float2" -0.03065294 0.082138911 ;
	setAttr ".uvtk[508]" -type "float2" -0.1030103 0.082451224 ;
	setAttr ".uvtk[509]" -type "float2" -0.15671569 0.081140563 ;
	setAttr ".uvtk[510]" -type "float2" -0.18971097 0.078951433 ;
	setAttr ".uvtk[511]" -type "float2" -0.20136356 0.076347493 ;
	setAttr ".uvtk[512]" -type "float2" -0.19247067 0.073611848 ;
	setAttr ".uvtk[513]" -type "float2" -0.16519529 0.070916034 ;
	setAttr ".uvtk[514]" -type "float2" -0.12292367 0.068363979 ;
	setAttr ".uvtk[515]" -type "float2" -0.07003969 0.066019185 ;
	setAttr ".uvtk[516]" -type "float2" -0.011632323 0.063920759 ;
	setAttr ".uvtk[517]" -type "float2" 0.046845824 0.062092252 ;
	setAttr ".uvtk[518]" -type "float2" 0.099946052 0.060545266 ;
	setAttr ".uvtk[519]" -type "float2" 0.14259049 0.059278913 ;
	setAttr ".uvtk[520]" -type "float2" 0.17041326 0.058274426 ;
	setAttr ".uvtk[521]" -type "float2" 0.18005246 0.057484142 ;
	setAttr ".uvtk[522]" -type "float2" 0.16937104 0.056811355 ;
	setAttr ".uvtk[523]" -type "float2" 0.13759327 0.056075834 ;
	setAttr ".uvtk[524]" -type "float2" 0.085348785 0.054955028 ;
	setAttr ".uvtk[525]" -type "float2" 0.014633179 0.05288589 ;
	setAttr ".uvtk[526]" -type "float2" -0.071276844 0.048908263 ;
	setAttr ".uvtk[527]" -type "float2" -0.16785598 0.041448392 ;
	setAttr ".uvtk[528]" -type "float2" -0.27631962 0.036919348 ;
	setAttr ".uvtk[529]" -type "float2" 0.1518172 0.082219526 ;
	setAttr ".uvtk[530]" -type "float2" 0.044610262 0.090621233 ;
	setAttr ".uvtk[531]" -type "float2" -0.050876379 0.094134167 ;
	setAttr ".uvtk[532]" -type "float2" -0.12928504 0.094605461 ;
	setAttr ".uvtk[533]" -type "float2" -0.18687373 0.093325347 ;
	setAttr ".uvtk[534]" -type "float2" -0.22144586 0.0911154 ;
	setAttr ".uvtk[535]" -type "float2" -0.23236138 0.088476107 ;
	setAttr ".uvtk[536]" -type "float2" -0.22054011 0.085706323 ;
	setAttr ".uvtk[537]" -type "float2" -0.1883961 0.082983196 ;
	setAttr ".uvtk[538]" -type "float2" -0.13968259 0.080411792 ;
	setAttr ".uvtk[539]" -type "float2" -0.079247653 0.078055032 ;
	setAttr ".uvtk[540]" -type "float2" -0.012712836 0.075950719 ;
	setAttr ".uvtk[541]" -type "float2" 0.053901047 0.074121065 ;
	setAttr ".uvtk[542]" -type "float2" 0.11457801 0.072576277 ;
	setAttr ".uvtk[543]" -type "float2" 0.16370976 0.071313731 ;
	setAttr ".uvtk[544]" -type "float2" 0.19647145 0.070312455 ;
	setAttr ".uvtk[545]" -type "float2" 0.20914054 0.069520958 ;
	setAttr ".uvtk[546]" -type "float2" 0.19933924 0.068835557 ;
	setAttr ".uvtk[547]" -type "float2" 0.16618124 0.068062045 ;
	setAttr ".uvtk[548]" -type "float2" 0.11031598 0.066849694 ;
	setAttr ".uvtk[549]" -type "float2" 0.033881575 0.064578205 ;
	setAttr ".uvtk[550]" -type "float2" -0.059588909 0.060174182 ;
	setAttr ".uvtk[551]" -type "float2" -0.16518696 0.051854409 ;
	setAttr ".uvtk[576]" -type "float2" -0.30862904 -0.064824656 ;
	setAttr ".uvtk[577]" -type "float2" 0.16390342 -0.046074476 ;
	setAttr ".uvtk[580]" -type "float2" 0.037149668 -0.058369488 ;
	setAttr ".uvtk[582]" -type "float2" -0.074490368 -0.066781372 ;
	setAttr ".uvtk[584]" -type "float2" -0.16524452 -0.072602004 ;
	setAttr ".uvtk[586]" -type "float2" -0.2308507 -0.076842688 ;
	setAttr ".uvtk[588]" -type "float2" -0.26875424 -0.080168948 ;
	setAttr ".uvtk[590]" -type "float2" -0.27822262 -0.082986519 ;
	setAttr ".uvtk[592]" -type "float2" -0.26038688 -0.085529275 ;
	setAttr ".uvtk[594]" -type "float2" -0.21817476 -0.087923616 ;
	setAttr ".uvtk[596]" -type "float2" -0.15613067 -0.090230793 ;
	setAttr ".uvtk[598]" -type "float2" -0.080121398 -0.092473254 ;
	setAttr ".uvtk[600]" -type "float2" 0.0030475855 -0.094649576 ;
	setAttr ".uvtk[602]" -type "float2" 0.086083651 -0.096741669 ;
	setAttr ".uvtk[604]" -type "float2" 0.16169173 -0.098715886 ;
	setAttr ".uvtk[606]" -type "float2" 0.22306064 -0.10051855 ;
	setAttr ".uvtk[608]" -type "float2" 0.26431555 -0.10206541 ;
	setAttr ".uvtk[610]" -type "float2" 0.28090724 -0.10322341 ;
	setAttr ".uvtk[612]" -type "float2" 0.26991174 -0.10378221 ;
	setAttr ".uvtk[614]" -type "float2" 0.23022512 -0.10341301 ;
	setAttr ".uvtk[616]" -type "float2" 0.16264817 -0.10161498 ;
	setAttr ".uvtk[618]" -type "float2" 0.06986919 -0.097661585 ;
	setAttr ".uvtk[620]" -type "float2" -0.043643355 -0.090596482 ;
	setAttr ".uvtk[622]" -type "float2" -0.17190403 -0.079460785 ;
	setAttr ".uvtk[624]" -type "float2" -0.30703187 -0.055188753 ;
	setAttr ".uvtk[625]" -type "float2" 0.1588496 -0.0368945 ;
	setAttr ".uvtk[626]" -type "float2" 0.029654443 -0.049019217 ;
	setAttr ".uvtk[627]" -type "float2" -0.084021509 -0.057279967 ;
	setAttr ".uvtk[628]" -type "float2" -0.17631346 -0.062998846 ;
	setAttr ".uvtk[629]" -type "float2" -0.24284369 -0.067174911 ;
	setAttr ".uvtk[630]" -type "float2" -0.28097272 -0.07046032 ;
	setAttr ".uvtk[631]" -type "float2" -0.28993177 -0.073251531 ;
	setAttr ".uvtk[632]" -type "float2" -0.27086836 -0.075776525 ;
	setAttr ".uvtk[633]" -type "float2" -0.2267797 -0.078158118 ;
	setAttr ".uvtk[634]" -type "float2" -0.16232562 -0.080455422 ;
	setAttr ".uvtk[635]" -type "float2" -0.083527207 -0.082689591 ;
	setAttr ".uvtk[636]" -type "float2" 0.0026295781 -0.084858492 ;
	setAttr ".uvtk[637]" -type "float2" 0.088657677 -0.086943731 ;
	setAttr ".uvtk[638]" -type "float2" 0.16706789 -0.088911697 ;
	setAttr ".uvtk[639]" -type "float2" 0.23086905 -0.090709224 ;
	setAttr ".uvtk[640]" -type "float2" 0.27403319 -0.092253268 ;
	setAttr ".uvtk[641]" -type "float2" 0.29189652 -0.09341301 ;
	setAttr ".uvtk[642]" -type "float2" 0.28146684 -0.093982153 ;
	setAttr ".uvtk[643]" -type "float2" 0.24162379 -0.093638673 ;
	setAttr ".uvtk[644]" -type "float2" 0.17320269 -0.091892272 ;
	setAttr ".uvtk[645]" -type "float2" 0.078969955 -0.088030264 ;
	setAttr ".uvtk[646]" -type "float2" -0.036503583 -0.081106618 ;
	setAttr ".uvtk[647]" -type "float2" -0.16716479 -0.070135847 ;
	setAttr ".uvtk[1104]" -type "float2" 0.30201942 -0.040327568 ;
	setAttr ".uvtk[1105]" -type "float2" -0.17907105 -0.089940876 ;
	setAttr ".uvtk[1106]" -type "float2" -0.054747522 -0.10127001 ;
	setAttr ".uvtk[1107]" -type "float2" 0.055533201 -0.1085108 ;
	setAttr ".uvtk[1108]" -type "float2" 0.14590144 -0.11257844 ;
	setAttr ".uvtk[1109]" -type "float2" 0.21205792 -0.11444139 ;
	setAttr ".uvtk[1110]" -type "float2" 0.25144106 -0.11484331 ;
	setAttr ".uvtk[1111]" -type "float2" 0.26330391 -0.11429803 ;
	setAttr ".uvtk[1112]" -type "float2" 0.24872166 -0.11314266 ;
	setAttr ".uvtk[1113]" -type "float2" 0.21050689 -0.11159246 ;
	setAttr ".uvtk[1114]" -type "float2" 0.15302297 -0.10978325 ;
	setAttr ".uvtk[1115]" -type "float2" 0.081897587 -0.10780067 ;
	setAttr ".uvtk[1116]" -type "float2" 0.0036514997 -0.10569896 ;
	setAttr ".uvtk[1117]" -type "float2" -0.074733257 -0.10351185 ;
	setAttr ".uvtk[1118]" -type "float2" -0.14627725 -0.10125694 ;
	setAttr ".uvtk[1119]" -type "float2" -0.20446658 -0.098934747 ;
	setAttr ".uvtk[1120]" -type "float2" -0.2436828 -0.096521206 ;
	setAttr ".uvtk[1121]" -type "float2" -0.25956959 -0.093952373 ;
	setAttr ".uvtk[1122]" -type "float2" -0.24931198 -0.091097511 ;
	setAttr ".uvtk[1123]" -type "float2" -0.21180904 -0.087715715 ;
	setAttr ".uvtk[1124]" -type "float2" -0.14773744 -0.08339031 ;
	setAttr ".uvtk[1125]" -type "float2" -0.059517264 -0.077440627 ;
	setAttr ".uvtk[1126]" -type "float2" 0.048779666 -0.06884408 ;
	setAttr ".uvtk[1127]" -type "float2" 0.17154354 -0.05637347 ;
	setAttr ".uvtk[1128]" -type "float2" -0.16265085 0.062865674 ;
	setAttr ".uvtk[1129]" -type "float2" -0.28280121 0.046666116 ;
	setAttr ".uvtk[1130]" -type "float2" -0.048924267 0.071815886 ;
	setAttr ".uvtk[1131]" -type "float2" 0.051338315 0.076530255 ;
	setAttr ".uvtk[1132]" -type "float2" 0.13290873 0.078954257 ;
	setAttr ".uvtk[1133]" -type "float2" 0.19202593 0.080242068 ;
	setAttr ".uvtk[1134]" -type "float2" 0.22642016 0.081053138 ;
	setAttr ".uvtk[1135]" -type "float2" 0.23542017 0.081757128 ;
	setAttr ".uvtk[1136]" -type "float2" 0.22000957 0.082557499 ;
	setAttr ".uvtk[1137]" -type "float2" 0.1827819 0.083562747 ;
	setAttr ".uvtk[1138]" -type "float2" 0.1277844 0.084826946 ;
	setAttr ".uvtk[1139]" -type "float2" 0.06025672 0.086372748 ;
	setAttr ".uvtk[1140]" -type "float2" -0.013714194 0.088204041 ;
	setAttr ".uvtk[1141]" -type "float2" -0.087599695 0.090311766 ;
	setAttr ".uvtk[1142]" -type "float2" -0.15486586 0.092674956 ;
	setAttr ".uvtk[1143]" -type "float2" -0.20940959 0.095256954 ;
	setAttr ".uvtk[1144]" -type "float2" -0.24596417 0.097995877 ;
	setAttr ".uvtk[1145]" -type "float2" -0.26044488 0.10078658 ;
	setAttr ".uvtk[1146]" -type "float2" -0.25021195 0.10344909 ;
	setAttr ".uvtk[1147]" -type "float2" -0.21423531 0.10567477 ;
	setAttr ".uvtk[1148]" -type "float2" -0.15316093 0.10693783 ;
	setAttr ".uvtk[1149]" -type "float2" -0.06930542 0.10635947 ;
	setAttr ".uvtk[1150]" -type "float2" 0.033351183 0.10253488 ;
	setAttr ".uvtk[1151]" -type "float2" 0.1490584 0.09342438 ;
	setAttr ".uvtk[1246]" -type "float2" 0.29757702 -0.020097066 ;
	setAttr ".uvtk[1247]" -type "float2" -0.30574873 -0.046762168 ;
	setAttr ".uvtk[1248]" -type "float2" 0.29952389 -0.029602554 ;
	setAttr ".uvtk[1249]" -type "float2" -0.31063053 -0.075660095 ;
	setAttr ".uvtk[1250]" -type "float2" 0.26358056 0.066764183 ;
	setAttr ".uvtk[1251]" -type "float2" 0.27002567 0.076643854 ;
	setAttr ".uvtk[1252]" -type "float2" 0.25641018 0.057723366 ;
	setAttr ".uvtk[1253]" -type "float2" 0.24896073 0.050071038 ;
	setAttr ".uvtk[1254]" -type "float2" 0.24178243 0.044236988 ;
	setAttr ".uvtk[1255]" -type "float2" 0.23547107 0.040493518 ;
	setAttr ".uvtk[1256]" -type "float2" 0.23056406 0.038941868 ;
	setAttr ".uvtk[1257]" -type "float2" 0.22738463 0.039513603 ;
	setAttr ".uvtk[1258]" -type "float2" 0.2258684 0.041965492 ;
	setAttr ".uvtk[1259]" -type "float2" 0.22553062 0.045831174 ;
	setAttr ".uvtk[1260]" -type "float2" 0.22588873 0.050286911 ;
	setAttr ".uvtk[1261]" -type "float2" 0.22707975 0.054235384 ;
	setAttr ".uvtk[1262]" -type "float2" 0.22962874 0.056925766 ;
	setAttr ".uvtk[1263]" -type "float2" 0.23397183 0.05793149 ;
	setAttr ".uvtk[1264]" -type "float2" 0.24014878 0.057019167 ;
	setAttr ".uvtk[1265]" -type "float2" 0.24780422 0.054086365 ;
	setAttr ".uvtk[1266]" -type "float2" 0.25634873 0.049146548 ;
	setAttr ".uvtk[1267]" -type "float2" 0.26510698 0.042354245 ;
	setAttr ".uvtk[1268]" -type "float2" 0.27342772 0.034031775 ;
	setAttr ".uvtk[1269]" -type "float2" 0.2807712 0.024665892 ;
	setAttr ".uvtk[1270]" -type "float2" 0.28677046 0.014860805 ;
	setAttr ".uvtk[1271]" -type "float2" 0.29125601 0.0052473322 ;
	setAttr ".uvtk[1272]" -type "float2" 0.29425544 -0.0036611408 ;
createNode polyMapCut -n "polyMapCut16";
	rename -uid "516AF4E9-0149-55BE-CAA3-91B07ECD37AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[648]" "e[651]" "e[653]" "e[655]" "e[657]" "e[659]" "e[661]" "e[663]" "e[665]" "e[667]" "e[669]" "e[671]" "e[673]" "e[675]" "e[677]" "e[679]" "e[681]" "e[683]" "e[685]" "e[687]" "e[689]" "e[691]" "e[693]" "e[695]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "1F256FB8-224F-99BE-178E-6B876ACC25DC";
	setAttr ".uopa" yes;
	setAttr -s 700 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.1135478 0.14267084 ;
	setAttr ".uvtk[1]" -type "float2" -0.091248512 0.11178388 ;
	setAttr ".uvtk[2]" -type "float2" -0.089879394 0.11496311 ;
	setAttr ".uvtk[3]" -type "float2" -0.12860018 0.13060063 ;
	setAttr ".uvtk[4]" -type "float2" -0.058626592 0.092486143 ;
	setAttr ".uvtk[5]" -type "float2" -0.056985378 0.095446408 ;
	setAttr ".uvtk[6]" -type "float2" -0.032026947 0.069620311 ;
	setAttr ".uvtk[7]" -type "float2" -0.030173242 0.072253831 ;
	setAttr ".uvtk[8]" -type "float2" -0.011443973 0.044963472 ;
	setAttr ".uvtk[9]" -type "float2" -0.0094848871 0.047215745 ;
	setAttr ".uvtk[10]" -type "float2" 0.0034620166 0.020142622 ;
	setAttr ".uvtk[11]" -type "float2" 0.0054159164 0.02199664 ;
	setAttr ".uvtk[12]" -type "float2" 0.013199866 -0.0035362281 ;
	setAttr ".uvtk[13]" -type "float2" 0.015048504 -0.00207109 ;
	setAttr ".uvtk[14]" -type "float2" 0.018365145 -0.025045332 ;
	setAttr ".uvtk[15]" -type "float2" 0.020021677 -0.023940407 ;
	setAttr ".uvtk[16]" -type "float2" 0.019607306 -0.043576948 ;
	setAttr ".uvtk[17]" -type "float2" 0.020999312 -0.042789057 ;
	setAttr ".uvtk[18]" -type "float2" 0.017619789 -0.058500849 ;
	setAttr ".uvtk[19]" -type "float2" 0.018689096 -0.057975717 ;
	setAttr ".uvtk[20]" -type "float2" 0.013135374 -0.069338515 ;
	setAttr ".uvtk[21]" -type "float2" 0.013837874 -0.069013469 ;
	setAttr ".uvtk[22]" -type "float2" 0.0069217086 -0.075749584 ;
	setAttr ".uvtk[23]" -type "float2" 0.0072274208 -0.075555898 ;
	setAttr ".uvtk[24]" -type "float2" -0.00022602081 -0.077526078 ;
	setAttr ".uvtk[25]" -type "float2" -0.00033271313 -0.077391155 ;
	setAttr ".uvtk[26]" -type "float2" -0.0074942112 -0.074591279 ;
	setAttr ".uvtk[27]" -type "float2" -0.0080145299 -0.074440747 ;
	setAttr ".uvtk[28]" -type "float2" -0.014062285 -0.067001365 ;
	setAttr ".uvtk[29]" -type "float2" -0.014982462 -0.066761188 ;
	setAttr ".uvtk[30]" -type "float2" -0.019114465 -0.054949135 ;
	setAttr ".uvtk[31]" -type "float2" -0.020405829 -0.054547876 ;
	setAttr ".uvtk[32]" -type "float2" -0.021852404 -0.038770303 ;
	setAttr ".uvtk[33]" -type "float2" -0.023470968 -0.038141407 ;
	setAttr ".uvtk[34]" -type "float2" -0.021507382 -0.018953793 ;
	setAttr ".uvtk[35]" -type "float2" -0.023393631 -0.018038258 ;
	setAttr ".uvtk[36]" -type "float2" -0.017354101 0.0038418211 ;
	setAttr ".uvtk[37]" -type "float2" -0.019432992 0.0050922297 ;
	setAttr ".uvtk[38]" -type "float2" -0.0087296367 0.028763521 ;
	setAttr ".uvtk[39]" -type "float2" -0.010911047 0.030382227 ;
	setAttr ".uvtk[40]" -type "float2" 0.0049346387 0.054732092 ;
	setAttr ".uvtk[41]" -type "float2" 0.002753675 0.056732122 ;
	setAttr ".uvtk[42]" -type "float2" 0.024051905 0.080416888 ;
	setAttr ".uvtk[43]" -type "float2" 0.021980643 0.082783505 ;
	setAttr ".uvtk[44]" -type "float2" 0.048767924 0.1042746 ;
	setAttr ".uvtk[45]" -type "float2" 0.046904117 0.1069555 ;
	setAttr ".uvtk[46]" -type "float2" 0.078792691 0.12489286 ;
	setAttr ".uvtk[47]" -type "float2" 0.07717362 0.12778828 ;
	setAttr ".uvtk[48]" -type "float2" 0.11538991 0.13769707 ;
	setAttr ".uvtk[49]" -type "float2" -0.093225241 0.10702992 ;
	setAttr ".uvtk[50]" -type "float2" -0.061052263 0.08807151 ;
	setAttr ".uvtk[51]" -type "float2" -0.034784377 0.065693259 ;
	setAttr ".uvtk[52]" -type "float2" -0.014365733 0.041606307 ;
	setAttr ".uvtk[53]" -type "float2" 0.0005441308 0.017381642 ;
	setAttr ".uvtk[54]" -type "float2" 0.010437608 -0.0057146847 ;
	setAttr ".uvtk[55]" -type "float2" 0.015889049 -0.02668409 ;
	setAttr ".uvtk[56]" -type "float2" 0.017526269 -0.04474071 ;
	setAttr ".uvtk[57]" -type "float2" 0.016021132 -0.059270974 ;
	setAttr ".uvtk[58]" -type "float2" 0.012085199 -0.069808915 ;
	setAttr ".uvtk[59]" -type "float2" 0.0064646602 -0.076023236 ;
	setAttr ".uvtk[60]" -type "float2" -6.6459179e-05 -0.077711768 ;
	setAttr ".uvtk[61]" -type "float2" -0.0067165792 -0.074800432 ;
	setAttr ".uvtk[62]" -type "float2" -0.012687057 -0.067344859 ;
	setAttr ".uvtk[63]" -type "float2" -0.017184764 -0.05553405 ;
	setAttr ".uvtk[64]" -type "float2" -0.019434094 -0.039696358 ;
	setAttr ".uvtk[65]" -type "float2" -0.018689692 -0.020309381 ;
	setAttr ".uvtk[66]" -type "float2" -0.014249712 0.001984451 ;
	setAttr ".uvtk[67]" -type "float2" -0.0054739714 0.026354501 ;
	setAttr ".uvtk[68]" -type "float2" 0.0081864893 0.051752314 ;
	setAttr ".uvtk[69]" -type "float2" 0.027134389 0.07688906 ;
	setAttr ".uvtk[70]" -type "float2" 0.051528811 0.10027632 ;
	setAttr ".uvtk[71]" -type "float2" 0.081149861 0.12055053 ;
	setAttr ".uvtk[72]" -type "float2" 0.11772305 0.13058017 ;
	setAttr ".uvtk[73]" -type "float2" -0.095867455 0.10029777 ;
	setAttr ".uvtk[74]" -type "float2" -0.064409077 0.081847191 ;
	setAttr ".uvtk[75]" -type "float2" -0.038641155 0.060152281 ;
	setAttr ".uvtk[76]" -type "float2" -0.018472075 0.036866508 ;
	setAttr ".uvtk[77]" -type "float2" -0.0035672784 0.013483477 ;
	setAttr ".uvtk[78]" -type "float2" 0.0065398812 -0.008788567 ;
	setAttr ".uvtk[79]" -type "float2" 0.012392342 -0.028993376 ;
	setAttr ".uvtk[80]" -type "float2" 0.014585972 -0.046376683 ;
	setAttr ".uvtk[81]" -type "float2" 0.013761699 -0.060348872 ;
	setAttr ".uvtk[82]" -type "float2" 0.010600507 -0.070461921 ;
	setAttr ".uvtk[83]" -type "float2" 0.0058182478 -0.076397419 ;
	setAttr ".uvtk[84]" -type "float2" 0.00015825033 -0.07796143 ;
	setAttr ".uvtk[85]" -type "float2" -0.0056186914 -0.075083621 ;
	setAttr ".uvtk[86]" -type "float2" -0.010745376 -0.06781885 ;
	setAttr ".uvtk[87]" -type "float2" -0.014460504 -0.056350648 ;
	setAttr ".uvtk[88]" -type "float2" -0.016021162 -0.040996913 ;
	setAttr ".uvtk[89]" -type "float2" -0.014715105 -0.022218961 ;
	setAttr ".uvtk[90]" -type "float2" -0.0098740458 -0.00063601509 ;
	setAttr ".uvtk[91]" -type "float2" -0.0008906126 0.022953622 ;
	setAttr ".uvtk[92]" -type "float2" 0.012755513 0.047545809 ;
	setAttr ".uvtk[93]" -type "float2" 0.03145048 0.071911223 ;
	setAttr ".uvtk[94]" -type "float2" 0.055366069 0.094633885 ;
	setAttr ".uvtk[95]" -type "float2" 0.084346101 0.11437776 ;
	setAttr ".uvtk[96]" -type "float2" 0.12034038 0.12143503 ;
	setAttr ".uvtk[97]" -type "float2" -0.098985612 0.091686279 ;
	setAttr ".uvtk[98]" -type "float2" -0.068564236 0.073923729 ;
	setAttr ".uvtk[99]" -type "float2" -0.043490529 0.053095117 ;
	setAttr ".uvtk[100]" -type "float2" -0.023670852 0.030824855 ;
	setAttr ".uvtk[101]" -type "float2" -0.0087908506 0.0085135102 ;
	setAttr ".uvtk[102]" -type "float2" 0.0015780926 -0.012705809 ;
	setAttr ".uvtk[103]" -type "float2" 0.0079359412 -0.03193257 ;
	setAttr ".uvtk[104]" -type "float2" 0.010836244 -0.048454024 ;
	setAttr ".uvtk[105]" -type "float2" 0.010878921 -0.061711743 ;
	setAttr ".uvtk[106]" -type "float2" 0.0087051392 -0.071280964 ;
	setAttr ".uvtk[107]" -type "float2" 0.0049916506 -0.076859877 ;
	setAttr ".uvtk[108]" -type "float2" 0.00044208765 -0.078265078 ;
	setAttr ".uvtk[109]" -type "float2" -0.0042220354 -0.075431019 ;
	setAttr ".uvtk[110]" -type "float2" -0.0082738996 -0.068411514 ;
	setAttr ".uvtk[111]" -type "float2" -0.010993242 -0.057383016 ;
	setAttr ".uvtk[112]" -type "float2" -0.011678904 -0.042649783 ;
	setAttr ".uvtk[113]" -type "float2" -0.0096614957 -0.024652012 ;
	setAttr ".uvtk[114]" -type "float2" -0.0043162107 -0.0039785355 ;
	setAttr ".uvtk[115]" -type "float2" 0.0049214959 0.018614607 ;
	setAttr ".uvtk[116]" -type "float2" 0.018533409 0.042181049 ;
	setAttr ".uvtk[117]" -type "float2" 0.036880851 0.065566927 ;
	setAttr ".uvtk[118]" -type "float2" 0.060140699 0.087438196 ;
	setAttr ".uvtk[119]" -type "float2" 0.088196486 0.10644747 ;
	setAttr ".uvtk[120]" -type "float2" 0.12296337 0.110632 ;
	setAttr ".uvtk[121]" -type "float2" -0.10232908 0.081505179 ;
	setAttr ".uvtk[122]" -type "float2" -0.073285818 0.064590499 ;
	setAttr ".uvtk[123]" -type "float2" -0.049112022 0.044783451 ;
	setAttr ".uvtk[124]" -type "float2" -0.029748619 0.023704918 ;
	setAttr ".uvtk[125]" -type "float2" -0.014923155 0.0026554805 ;
	setAttr ".uvtk[126]" -type "float2" -0.0042598248 -0.017320776 ;
	setAttr ".uvtk[127]" -type "float2" 0.0026861429 -0.035390887 ;
	setAttr ".uvtk[128]" -type "float2" 0.0064156651 -0.050892442 ;
	setAttr ".uvtk[129]" -type "float2" 0.0074785352 -0.06330464 ;
	setAttr ".uvtk[130]" -type "float2" 0.0064677596 -0.072230592 ;
	setAttr ".uvtk[131]" -type "float2" 0.0040130615 -0.077388242 ;
	setAttr ".uvtk[132]" -type "float2" 0.00077152252 -0.078606725 ;
	setAttr ".uvtk[133]" -type "float2" -0.00258255 -0.075826019 ;
	setAttr ".uvtk[134]" -type "float2" -0.0053699017 -0.069098622 ;
	setAttr ".uvtk[135]" -type "float2" -0.0069188476 -0.058592469 ;
	setAttr ".uvtk[136]" -type "float2" -0.0065779388 -0.044595379 ;
	setAttr ".uvtk[137]" -type "float2" -0.003728807 -0.027522046 ;
	setAttr ".uvtk[138]" -type "float2" 0.0022011101 -0.0079245716 ;
	setAttr ".uvtk[139]" -type "float2" 0.011724085 0.013492079 ;
	setAttr ".uvtk[140]" -type "float2" 0.025273383 0.035850592 ;
	setAttr ".uvtk[141]" -type "float2" 0.043174326 0.058084168 ;
	setAttr ".uvtk[142]" -type "float2" 0.06559366 0.078941062 ;
	setAttr ".uvtk[143]" -type "float2" 0.092427596 0.09702757 ;
	setAttr ".uvtk[144]" -type "float2" 0.12536836 0.098729134 ;
	setAttr ".uvtk[145]" -type "float2" -0.10568643 0.070199579 ;
	setAttr ".uvtk[146]" -type "float2" -0.078324497 0.054236557 ;
	setAttr ".uvtk[147]" -type "float2" -0.05524236 0.03556864 ;
	setAttr ".uvtk[148]" -type "float2" -0.036435544 0.015809925 ;
	setAttr ".uvtk[149]" -type "float2" -0.021697521 -0.0038404823 ;
	setAttr ".uvtk[150]" -type "float2" -0.010722101 -0.022436043 ;
	setAttr ".uvtk[151]" -type "float2" -0.0031310916 -0.039219882 ;
	setAttr ".uvtk[152]" -type "float2" 0.0015143156 -0.053586699 ;
	setAttr ".uvtk[153]" -type "float2" 0.0037062764 -0.065058321 ;
	setAttr ".uvtk[154]" -type "float2" 0.0039835572 -0.073269241 ;
	setAttr ".uvtk[155]" -type "float2" 0.0029228926 -0.077959485 ;
	setAttr ".uvtk[156]" -type "float2" 0.0011293292 -0.078972086 ;
	setAttr ".uvtk[157]" -type "float2" -0.00077524781 -0.076253146 ;
	setAttr ".uvtk[158]" -type "float2" -0.0021644235 -0.069853529 ;
	setAttr ".uvtk[159]" -type "float2" -0.002420485 -0.059931405 ;
	setAttr ".uvtk[160]" -type "float2" -0.00094723701 -0.046755999 ;
	setAttr ".uvtk[161]" -type "float2" 0.0028165579 -0.030713027 ;
	setAttr ".uvtk[162]" -type "float2" 0.0093844235 -0.01231296 ;
	setAttr ".uvtk[163]" -type "float2" 0.019208491 0.007796865 ;
	setAttr ".uvtk[164]" -type "float2" 0.032663524 0.028815825 ;
	setAttr ".uvtk[165]" -type "float2" 0.050025523 0.049770135 ;
	setAttr ".uvtk[166]" -type "float2" 0.07143122 0.069486842 ;
	setAttr ".uvtk[167]" -type "float2" 0.096771404 0.08651679 ;
	setAttr ".uvtk[168]" -type "float2" 0.12746134 0.086413726 ;
	setAttr ".uvtk[169]" -type "float2" -0.10894907 0.058318317 ;
	setAttr ".uvtk[170]" -type "float2" -0.083474457 0.043326002 ;
	setAttr ".uvtk[171]" -type "float2" -0.061620831 0.025863251 ;
	setAttr ".uvtk[172]" -type "float2" -0.043441176 0.0074958839 ;
	setAttr ".uvtk[173]" -type "float2" -0.028814375 -0.010681089 ;
	setAttr ".uvtk[174]" -type "float2" -0.017518401 -0.027821612 ;
	setAttr ".uvtk[175]" -type "float2" -0.0092514753 -0.043249052 ;
	setAttr ".uvtk[176]" -type "float2" -0.0036433339 -0.056419045 ;
	setAttr ".uvtk[177]" -type "float2" -0.00026392937 -0.066898942 ;
	setAttr ".uvtk[178]" -type "float2" 0.0013671517 -0.074356683 ;
	setAttr ".uvtk[179]" -type "float2" 0.0017709136 -0.078555733 ;
	setAttr ".uvtk[180]" -type "float2" 0.0014973879 -0.079353735 ;
	setAttr ".uvtk[181]" -type "float2" 0.0011137128 -0.076703101 ;
	setAttr ".uvtk[182]" -type "float2" 0.001190722 -0.070652731 ;
	setAttr ".uvtk[183]" -type "float2" 0.0022898018 -0.06135026 ;
	setAttr ".uvtk[184]" -type "float2" 0.0049489439 -0.049044825 ;
	setAttr ".uvtk[185]" -type "float2" 0.0096692741 -0.03409104 ;
	setAttr ".uvtk[186]" -type "float2" 0.016901404 -0.016954858 ;
	setAttr ".uvtk[187]" -type "float2" 0.027031898 0.0017773905 ;
	setAttr ".uvtk[188]" -type "float2" 0.040368855 0.021384889 ;
	setAttr ".uvtk[189]" -type "float2" 0.057124913 0.040987913 ;
	setAttr ".uvtk[190]" -type "float2" 0.077387094 0.059492089 ;
	setAttr ".uvtk[191]" -type "float2" 0.10103232 0.075421602 ;
	setAttr ".uvtk[192]" -type "float2" 0.12929863 0.074428149 ;
	setAttr ".uvtk[193]" -type "float2" -0.11213273 0.046485484 ;
	setAttr ".uvtk[194]" -type "float2" -0.088606715 0.03238868 ;
	setAttr ".uvtk[195]" -type "float2" -0.068018377 0.016128592 ;
	setAttr ".uvtk[196]" -type "float2" -0.050477326 -0.00084354728 ;
	setAttr ".uvtk[197]" -type "float2" -0.035959899 -0.017544549 ;
	setAttr ".uvtk[198]" -type "float2" -0.024336636 -0.033227675 ;
	setAttr ".uvtk[199]" -type "float2" -0.015386641 -0.047296189 ;
	setAttr ".uvtk[200]" -type "float2" -0.0088099241 -0.059267089 ;
	setAttr ".uvtk[201]" -type "float2" -0.0042394996 -0.068753839 ;
	setAttr ".uvtk[202]" -type "float2" -0.0012531877 -0.075458199 ;
	setAttr ".uvtk[203]" -type "float2" 0.00061434507 -0.079167247 ;
	setAttr ".uvtk[204]" -type "float2" 0.0018587708 -0.079753213 ;
	setAttr ".uvtk[205]" -type "float2" 0.0029928088 -0.077174664 ;
	setAttr ".uvtk[206]" -type "float2" 0.0045326352 -0.071478307 ;
	setAttr ".uvtk[207]" -type "float2" 0.0069838762 -0.062800787 ;
	setAttr ".uvtk[208]" -type "float2" 0.010827214 -0.051370673 ;
	setAttr ".uvtk[209]" -type "float2" 0.016504139 -0.037510876 ;
	setAttr ".uvtk[210]" -type "float2" 0.02440244 -0.021642342 ;
	setAttr ".uvtk[211]" -type "float2" 0.034841716 -0.0042905235 ;
	setAttr ".uvtk[212]" -type "float2" 0.048058927 0.013902179 ;
	setAttr ".uvtk[213]" -type "float2" 0.06419313 0.032148015 ;
	setAttr ".uvtk[214]" -type "float2" 0.083264887 0.049438432 ;
	setAttr ".uvtk[215]" -type "float2" 0.10512811 0.064331725 ;
	setAttr ".uvtk[216]" -type "float2" 0.13105738 0.063491806 ;
	setAttr ".uvtk[217]" -type "float2" -0.11534727 0.03536294 ;
	setAttr ".uvtk[218]" -type "float2" -0.093657732 0.022004858 ;
	setAttr ".uvtk[219]" -type "float2" -0.074237108 0.0068628974 ;
	setAttr ".uvtk[220]" -type "float2" -0.057264209 -0.0087904148 ;
	setAttr ".uvtk[221]" -type "float2" -0.042816401 -0.024093356 ;
	setAttr ".uvtk[222]" -type "float2" -0.030855 -0.038395062 ;
	setAttr ".uvtk[223]" -type "float2" -0.0212363 -0.051174805 ;
	setAttr ".uvtk[224]" -type "float2" -0.013726592 -0.062008306 ;
	setAttr ".uvtk[225]" -type "float2" -0.0080177784 -0.070553347 ;
	setAttr ".uvtk[226]" -type "float2" -0.0037417412 -0.076544195 ;
	setAttr ".uvtk[227]" -type "float2" -0.00048476458 -0.079790533 ;
	setAttr ".uvtk[228]" -type "float2" 0.0021982789 -0.080178395 ;
	setAttr ".uvtk[229]" -type "float2" 0.0047698319 -0.077672049 ;
	setAttr ".uvtk[230]" -type "float2" 0.0076953769 -0.072315767 ;
	setAttr ".uvtk[231]" -type "float2" 0.011429012 -0.064235345 ;
	setAttr ".uvtk[232]" -type "float2" 0.016398638 -0.053639248 ;
	setAttr ".uvtk[233]" -type "float2" 0.022990763 -0.040819705 ;
	setAttr ".uvtk[234]" -type "float2" 0.031535029 -0.026154572 ;
	setAttr ".uvtk[235]" -type "float2" 0.042288363 -0.010111666 ;
	setAttr ".uvtk[236]" -type "float2" 0.05541867 0.0067400904 ;
	setAttr ".uvtk[237]" -type "float2" 0.070989102 0.023701021 ;
	setAttr ".uvtk[238]" -type "float2" 0.088942587 0.039859995 ;
	setAttr ".uvtk[239]" -type "float2" 0.10908863 0.053879835 ;
	setAttr ".uvtk[240]" -type "float2" 0.13295925 0.054224346 ;
	setAttr ".uvtk[241]" -type "float2" -0.11870337 0.025593698 ;
	setAttr ".uvtk[242]" -type "float2" -0.09855938 0.012763567 ;
	setAttr ".uvtk[243]" -type "float2" -0.080072463 -0.0014286786 ;
	setAttr ".uvtk[244]" -type "float2" -0.063517034 -0.015925601 ;
	setAttr ".uvtk[245]" -type "float2" -0.049063623 -0.029991703 ;
	setAttr ".uvtk[246]" -type "float2" -0.036751449 -0.043066859 ;
	setAttr ".uvtk[247]" -type "float2" -0.026502013 -0.054700144 ;
	setAttr ".uvtk[248]" -type "float2" -0.018137455 -0.064520955 ;
	setAttr ".uvtk[249]" -type "float2" -0.011399031 -0.072227553 ;
	setAttr ".uvtk[250]" -type "float2" -0.0059646964 -0.077583797 ;
	setAttr ".uvtk[251]" -type "float2" -0.0014647245 -0.080419794 ;
	setAttr ".uvtk[252]" -type "float2" 0.0025025904 -0.080633983 ;
	setAttr ".uvtk[253]" -type "float2" 0.0063565075 -0.07819549 ;
	setAttr ".uvtk[254]" -type "float2" 0.010518998 -0.07314609 ;
	setAttr ".uvtk[255]" -type "float2" 0.015400082 -0.065601371 ;
	setAttr ".uvtk[256]" -type "float2" 0.02138266 -0.055751231 ;
	setAttr ".uvtk[257]" -type "float2" 0.028807074 -0.043859743 ;
	setAttr ".uvtk[258]" -type "float2" 0.037954122 -0.030265555 ;
	setAttr ".uvtk[259]" -type "float2" 0.049028099 -0.015384457 ;
	setAttr ".uvtk[260]" -type "float2" 0.0621382 0.00028101914 ;
	setAttr ".uvtk[261]" -type "float2" 0.077280223 0.016113674 ;
	setAttr ".uvtk[262]" -type "float2" 0.094319969 0.031307504 ;
	setAttr ".uvtk[263]" -type "float2" 0.11299056 0.044681951 ;
	setAttr ".uvtk[264]" -type "float2" 0.13514391 0.047060046 ;
	setAttr ".uvtk[265]" -type "float2" -0.12216711 0.017707959 ;
	setAttr ".uvtk[266]" -type "float2" -0.10313416 0.0051765963 ;
	setAttr ".uvtk[267]" -type "float2" -0.085260034 -0.0082980506 ;
	setAttr ".uvtk[268]" -type "float2" -0.068929434 -0.021873273 ;
	setAttr ".uvtk[269]" -type "float2" -0.054385006 -0.034935005 ;
	setAttr ".uvtk[270]" -type "float2" -0.041722775 -0.047005981 ;
	setAttr ".uvtk[271]" -type "float2" -0.030911088 -0.057696901 ;
	setAttr ".uvtk[272]" -type "float2" -0.021812916 -0.066683717 ;
	setAttr ".uvtk[273]" -type "float2" -0.014206648 -0.073699459 ;
	setAttr ".uvtk[274]" -type "float2" -0.0078049898 -0.078533217 ;
	setAttr ".uvtk[275]" -type "float2" -0.0022724271 -0.081032351 ;
	setAttr ".uvtk[276]" -type "float2" 0.0027591884 -0.081105597 ;
	setAttr ".uvtk[277]" -type "float2" 0.0076749325 -0.078725979 ;
	setAttr ".uvtk[278]" -type "float2" 0.012862623 -0.073932841 ;
	setAttr ".uvtk[279]" -type "float2" 0.018697947 -0.06683287 ;
	setAttr ".uvtk[280]" -type "float2" 0.025529206 -0.05759982 ;
	setAttr ".uvtk[281]" -type "float2" 0.033661515 -0.046473593 ;
	setAttr ".uvtk[282]" -type "float2" 0.04333961 -0.033759177 ;
	setAttr ".uvtk[283]" -type "float2" 0.054729223 -0.019827649 ;
	setAttr ".uvtk[284]" -type "float2" 0.06789732 -0.0051237699 ;
	setAttr ".uvtk[285]" -type "float2" 0.082791299 0.0098098554 ;
	setAttr ".uvtk[286]" -type "float2" 0.099217415 0.024270579 ;
	setAttr ".uvtk[287]" -type "float2" 0.11681986 0.03725059 ;
	setAttr ".uvtk[288]" -type "float2" 0.13751841 0.042141911 ;
	setAttr ".uvtk[289]" -type "float2" -0.12544739 0.011981606 ;
	setAttr ".uvtk[290]" -type "float2" -0.10704964 -0.00045073032 ;
	setAttr ".uvtk[291]" -type "float2" -0.089478195 -0.013454441 ;
	setAttr ".uvtk[292]" -type "float2" -0.073204041 -0.026374344 ;
	setAttr ".uvtk[293]" -type "float2" -0.058512986 -0.038702168 ;
	setAttr ".uvtk[294]" -type "float2" -0.045534253 -0.05003063 ;
	setAttr ".uvtk[295]" -type "float2" -0.034264922 -0.060020763 ;
	setAttr ".uvtk[296]" -type "float2" -0.024593413 -0.06838575 ;
	setAttr ".uvtk[297]" -type "float2" -0.016321957 -0.074885964 ;
	setAttr ".uvtk[298]" -type "float2" -0.0091866255 -0.079330072 ;
	setAttr ".uvtk[299]" -type "float2" -0.0028751493 -0.081578702 ;
	setAttr ".uvtk[300]" -type "float2" 0.0029567182 -0.081548348 ;
	setAttr ".uvtk[301]" -type "float2" 0.0086702406 -0.079214841 ;
	setAttr ".uvtk[302]" -type "float2" 0.014629185 -0.074615479 ;
	setAttr ".uvtk[303]" -type "float2" 0.02118504 -0.06784977 ;
	setAttr ".uvtk[304]" -type "float2" 0.028662384 -0.059078846 ;
	setAttr ".uvtk[305]" -type "float2" 0.037342757 -0.048523579 ;
	setAttr ".uvtk[306]" -type "float2" 0.047447413 -0.03646243 ;
	setAttr ".uvtk[307]" -type "float2" 0.05911842 -0.023230825 ;
	setAttr ".uvtk[308]" -type "float2" 0.072397798 -0.0092265345 ;
	setAttr ".uvtk[309]" -type "float2" 0.087205768 0.0050708763 ;
	setAttr ".uvtk[310]" -type "float2" 0.10331774 0.019050341 ;
	setAttr ".uvtk[311]" -type "float2" 0.1203247 0.031862009 ;
	setAttr ".uvtk[312]" -type "float2" 0.13978133 0.039194681 ;
	setAttr ".uvtk[313]" -type "float2" -0.12814152 0.0082479641 ;
	setAttr ".uvtk[314]" -type "float2" -0.11000884 -0.0042016283 ;
	setAttr ".uvtk[315]" -type "float2" -0.092534184 -0.016931623 ;
	setAttr ".uvtk[316]" -type "float2" -0.076223612 -0.029433794 ;
	setAttr ".uvtk[317]" -type "float2" -0.061381757 -0.041280374 ;
	setAttr ".uvtk[318]" -type "float2" -0.048154354 -0.052116111 ;
	setAttr ".uvtk[319]" -type "float2" -0.036553323 -0.061638668 ;
	setAttr ".uvtk[320]" -type "float2" -0.026480675 -0.06958773 ;
	setAttr ".uvtk[321]" -type "float2" -0.01775223 -0.075742878 ;
	setAttr ".uvtk[322]" -type "float2" -0.01011771 -0.079926372 ;
	setAttr ".uvtk[323]" -type "float2" -0.0032792687 -0.082007878 ;
	setAttr ".uvtk[324]" -type "float2" 0.0030926466 -0.081909157 ;
	setAttr ".uvtk[325]" -type "float2" 0.0093441308 -0.079607815 ;
	setAttr ".uvtk[326]" -type "float2" 0.015823573 -0.07513959 ;
	setAttr ".uvtk[327]" -type "float2" 0.022867471 -0.068599001 ;
	setAttr ".uvtk[328]" -type "float2" 0.03078568 -0.060138308 ;
	setAttr ".uvtk[329]" -type "float2" 0.039845645 -0.049965035 ;
	setAttr ".uvtk[330]" -type "float2" 0.050255477 -0.038338929 ;
	setAttr ".uvtk[331]" -type "float2" 0.062144518 -0.025569983 ;
	setAttr ".uvtk[332]" -type "float2" 0.07554248 -0.012021599 ;
	setAttr ".uvtk[333]" -type "float2" 0.0903579 0.0018740706 ;
	setAttr ".uvtk[334]" -type "float2" 0.10635635 0.015577294 ;
	setAttr ".uvtk[335]" -type "float2" 0.12312594 0.028366134 ;
	setAttr ".uvtk[336]" -type "float2" 0.22428426 -0.0065313838 ;
	setAttr ".uvtk[337]" -type "float2" -0.19821185 -0.030118026 ;
	setAttr ".uvtk[338]" -type "float2" -0.17219591 -0.023263078 ;
	setAttr ".uvtk[339]" -type "float2" -0.14640015 -0.013398785 ;
	setAttr ".uvtk[340]" -type "float2" -0.12183034 -0.0012266636 ;
	setAttr ".uvtk[341]" -type "float2" -0.099217415 0.012444451 ;
	setAttr ".uvtk[342]" -type "float2" -0.079013169 0.026752718 ;
	setAttr ".uvtk[343]" -type "float2" -0.061403215 0.040836096 ;
	setAttr ".uvtk[344]" -type "float2" -0.046330929 0.053879615 ;
	setAttr ".uvtk[345]" -type "float2" -0.033528268 0.065156996 ;
	setAttr ".uvtk[346]" -type "float2" -0.022551417 0.074066199 ;
	setAttr ".uvtk[347]" -type "float2" -0.012822092 0.080158703 ;
	setAttr ".uvtk[348]" -type "float2" -0.0036722422 0.083160453 ;
	setAttr ".uvtk[349]" -type "float2" 0.0056068003 0.082983926 ;
	setAttr ".uvtk[350]" -type "float2" 0.015715361 0.079729982 ;
	setAttr ".uvtk[351]" -type "float2" 0.027295828 0.073679745 ;
	setAttr ".uvtk[352]" -type "float2" 0.04088673 0.065276638 ;
	setAttr ".uvtk[353]" -type "float2" 0.056880206 0.055100247 ;
	setAttr ".uvtk[354]" -type "float2" 0.075485587 0.043833401 ;
	setAttr ".uvtk[355]" -type "float2" 0.09669894 0.032224283 ;
	setAttr ".uvtk[356]" -type "float2" 0.12027791 0.021044087 ;
	setAttr ".uvtk[357]" -type "float2" 0.14572281 0.011037897 ;
	setAttr ".uvtk[358]" -type "float2" 0.1722655 0.0028606616 ;
	setAttr ".uvtk[359]" -type "float2" 0.19887581 -0.0030235276 ;
	setAttr ".uvtk[360]" -type "float2" 0.22408643 -0.011676874 ;
	setAttr ".uvtk[361]" -type "float2" -0.1966235 -0.036119673 ;
	setAttr ".uvtk[362]" -type "float2" -0.16975653 -0.029420622 ;
	setAttr ".uvtk[363]" -type "float2" -0.14326262 -0.019256592 ;
	setAttr ".uvtk[364]" -type "float2" -0.11819398 -0.0064793602 ;
	setAttr ".uvtk[365]" -type "float2" -0.095309317 0.007985428 ;
	setAttr ".uvtk[366]" -type "float2" -0.075072408 0.023177035 ;
	setAttr ".uvtk[367]" -type "float2" -0.0576666 0.038148358 ;
	setAttr ".uvtk[368]" -type "float2" -0.043019116 0.052011833 ;
	setAttr ".uvtk[369]" -type "float2" -0.030833423 0.063980907 ;
	setAttr ".uvtk[370]" -type "float2" -0.020626605 0.07340613 ;
	setAttr ".uvtk[371]" -type "float2" -0.011772513 0.079805121 ;
	setAttr ".uvtk[372]" -type "float2" -0.0035499334 0.082884341 ;
	setAttr ".uvtk[373]" -type "float2" 0.0048060417 0.082551554 ;
	setAttr ".uvtk[374]" -type "float2" 0.01405105 0.078917883 ;
	setAttr ".uvtk[375]" -type "float2" 0.024879128 0.072289072 ;
	setAttr ".uvtk[376]" -type "float2" 0.037873268 0.063146852 ;
	setAttr ".uvtk[377]" -type "float2" 0.053461105 0.052121531 ;
	setAttr ".uvtk[378]" -type "float2" 0.071876138 0.039957885 ;
	setAttr ".uvtk[379]" -type "float2" 0.093126208 0.027476355 ;
	setAttr ".uvtk[380]" -type "float2" 0.11696801 0.015530627 ;
	setAttr ".uvtk[381]" -type "float2" 0.14288893 0.0049602166 ;
	setAttr ".uvtk[382]" -type "float2" 0.17009896 -0.0034677163 ;
	setAttr ".uvtk[383]" -type "float2" 0.19755164 -0.0091391057 ;
	setAttr ".uvtk[384]" -type "float2" 0.22484285 -0.019452121 ;
	setAttr ".uvtk[385]" -type "float2" -0.19504035 -0.045133535 ;
	setAttr ".uvtk[386]" -type "float2" -0.16665614 -0.03861266 ;
	setAttr ".uvtk[387]" -type "float2" -0.13895792 -0.027958963 ;
	setAttr ".uvtk[388]" -type "float2" -0.113033 -0.014249921 ;
	setAttr ".uvtk[389]" -type "float2" -0.089665115 0.0014156848 ;
	setAttr ".uvtk[390]" -type "float2" -0.069324851 0.017932139 ;
	setAttr ".uvtk[391]" -type "float2" -0.052183926 0.034228422 ;
	setAttr ".uvtk[392]" -type "float2" -0.038140237 0.049311586 ;
	setAttr ".uvtk[393]" -type "float2" -0.026850879 0.062307566 ;
	setAttr ".uvtk[394]" -type "float2" -0.017771959 0.072497979 ;
	setAttr ".uvtk[395]" -type "float2" -0.010204375 0.079351224 ;
	setAttr ".uvtk[396]" -type "float2" -0.0033461154 0.082545437 ;
	setAttr ".uvtk[397]" -type "float2" 0.0036522746 0.081981793 ;
	setAttr ".uvtk[398]" -type "float2" 0.01162985 0.077786505 ;
	setAttr ".uvtk[399]" -type "float2" 0.02135843 0.070301674 ;
	setAttr ".uvtk[400]" -type "float2" 0.033489138 0.06006505 ;
	setAttr ".uvtk[401]" -type "float2" 0.048504263 0.047780946 ;
	setAttr ".uvtk[402]" -type "float2" 0.066676557 0.034284133 ;
	setAttr ".uvtk[403]" -type "float2" 0.08803612 0.020499606 ;
	setAttr ".uvtk[404]" -type "float2" 0.11234567 0.0074003302 ;
	setAttr ".uvtk[405]" -type "float2" 0.13908401 -0.004036881 ;
	setAttr ".uvtk[406]" -type "float2" 0.1674448 -0.012878884 ;
	setAttr ".uvtk[407]" -type "float2" 0.19638252 -0.018283121 ;
	setAttr ".uvtk[408]" -type "float2" 0.22705358 -0.030103935 ;
	setAttr ".uvtk[409]" -type "float2" -0.19398552 -0.057319038 ;
	setAttr ".uvtk[410]" -type "float2" -0.16325802 -0.05096573 ;
	setAttr ".uvtk[411]" -type "float2" -0.13371444 -0.039594952 ;
	setAttr ".uvtk[412]" -type "float2" -0.10647845 -0.02459117 ;
	setAttr ".uvtk[413]" -type "float2" -0.082348943 -0.0072874054 ;
	setAttr ".uvtk[414]" -type "float2" -0.061790764 0.011018738 ;
	setAttr ".uvtk[415]" -type "float2" -0.044948697 0.02909442 ;
	setAttr ".uvtk[416]" -type "float2" -0.031673074 0.045809701 ;
	setAttr ".uvtk[417]" -type "float2" -0.021553338 0.060176834 ;
	setAttr ".uvtk[418]" -type "float2" -0.013959825 0.071387663 ;
	setAttr ".uvtk[419]" -type "float2" -0.0080932975 0.07884641 ;
	setAttr ".uvtk[420]" -type "float2" -0.0030412078 0.082194336 ;
	setAttr ".uvtk[421]" -type "float2" 0.0021606386 0.08132413 ;
	setAttr ".uvtk[422]" -type "float2" 0.0084646344 0.07638222 ;
	setAttr ".uvtk[423]" -type "float2" 0.016748548 0.06775853 ;
	setAttr ".uvtk[424]" -type "float2" 0.02775678 0.056064501 ;
	setAttr ".uvtk[425]" -type "float2" 0.042048097 0.042101145 ;
	setAttr ".uvtk[426]" -type "float2" 0.059952199 0.026820287 ;
	setAttr ".uvtk[427]" -type "float2" 0.081536174 0.01128241 ;
	setAttr ".uvtk[428]" -type "float2" 0.10658076 -0.0033850931 ;
	setAttr ".uvtk[429]" -type "float2" 0.1345678 -0.016025975 ;
	setAttr ".uvtk[430]" -type "float2" 0.16468534 -0.025485318 ;
	setAttr ".uvtk[431]" -type "float2" 0.19588196 -0.030610796 ;
	setAttr ".uvtk[432]" -type "float2" 0.23088515 -0.043407984 ;
	setAttr ".uvtk[433]" -type "float2" -0.19371605 -0.072304092 ;
	setAttr ".uvtk[434]" -type "float2" -0.15987849 -0.066055037 ;
	setAttr ".uvtk[435]" -type "float2" -0.12785906 -0.053739887 ;
	setAttr ".uvtk[436]" -type "float2" -0.098855615 -0.037105355 ;
	setAttr ".uvtk[437]" -type "float2" -0.073678255 -0.017771885 ;
	setAttr ".uvtk[438]" -type "float2" -0.05277133 0.0027313158 ;
	setAttr ".uvtk[439]" -type "float2" -0.036235392 0.022979163 ;
	setAttr ".uvtk[440]" -type "float2" -0.023854256 0.041679919 ;
	setAttr ".uvtk[441]" -type "float2" -0.015128732 0.057711512 ;
	setAttr ".uvtk[442]" -type "float2" -0.0093204975 0.070159487 ;
	setAttr ".uvtk[443]" -type "float2" -0.0055049658 0.078351848 ;
	setAttr ".uvtk[444]" -type "float2" -0.0026330054 0.081886023 ;
	setAttr ".uvtk[445]" -type "float2" 0.00040134788 0.080644831 ;
	setAttr ".uvtk[446]" -type "float2" 0.0046902895 0.07479912 ;
	setAttr ".uvtk[447]" -type "float2" 0.011242568 0.064796291 ;
	setAttr ".uvtk[448]" -type "float2" 0.020918608 0.051335819 ;
	setAttr ".uvtk[449]" -type "float2" 0.034373492 0.035333902 ;
	setAttr ".uvtk[450]" -type "float2" 0.052011043 0.017880969 ;
	setAttr ".uvtk[451]" -type "float2" 0.073950171 0.00019726902 ;
	setAttr ".uvtk[452]" -type "float2" 0.10000387 -0.016407698 ;
	setAttr ".uvtk[453]" -type "float2" 0.12967062 -0.030564111 ;
	setAttr ".uvtk[454]" -type "float2" 0.16213977 -0.040848106 ;
	setAttr ".uvtk[455]" -type "float2" 0.19631952 -0.045735247 ;
	setAttr ".uvtk[456]" -type "float2" 0.23609197 -0.058874648 ;
	setAttr ".uvtk[457]" -type "float2" -0.19413096 -0.089451104 ;
	setAttr ".uvtk[458]" -type "float2" -0.15660721 -0.083182216 ;
	setAttr ".uvtk[459]" -type "float2" -0.12161988 -0.069714032 ;
	setAttr ".uvtk[460]" -type "float2" -0.090485334 -0.051177721 ;
	setAttr ".uvtk[461]" -type "float2" -0.06402874 -0.02951429 ;
	setAttr ".uvtk[462]" -type "float2" -0.042663097 -0.0065101534 ;
	setAttr ".uvtk[463]" -type "float2" -0.02643013 0.016198076 ;
	setAttr ".uvtk[464]" -type "float2" -0.015031278 0.037141114 ;
	setAttr ".uvtk[465]" -type "float2" -0.0078622103 0.055049144 ;
	setAttr ".uvtk[466]" -type "float2" -0.0040580034 0.068890251 ;
	setAttr ".uvtk[467]" -type "float2" -0.0025500059 0.077907994 ;
	setAttr ".uvtk[468]" -type "float2" -0.0021320581 0.081651136 ;
	setAttr ".uvtk[469]" -type "float2" -0.0015361905 0.079991721 ;
	setAttr ".uvtk[470]" -type "float2" 0.00048950315 0.07312797 ;
	setAttr ".uvtk[471]" -type "float2" 0.0051036775 0.061571598 ;
	setAttr ".uvtk[472]" -type "float2" 0.013299823 0.046120286 ;
	setAttr ".uvtk[473]" -type "float2" 0.025844544 0.027818091 ;
	setAttr ".uvtk[474]" -type "float2" 0.043228924 0.0079086646 ;
	setAttr ".uvtk[475]" -type "float2" 0.065635264 -0.012212232 ;
	setAttr ".uvtk[476]" -type "float2" 0.092919886 -0.031035487 ;
	setAttr ".uvtk[477]" -type "float2" 0.12460795 -0.046956439 ;
	setAttr ".uvtk[478]" -type "float2" 0.15989166 -0.058253698 ;
	setAttr ".uvtk[479]" -type "float2" 0.1976051 -0.063000508 ;
	setAttr ".uvtk[480]" -type "float2" 0.24218303 -0.075842708 ;
	setAttr ".uvtk[481]" -type "float2" -0.19494289 -0.10795942 ;
	setAttr ".uvtk[482]" -type "float2" -0.1533916 -0.10150324 ;
	setAttr ".uvtk[483]" -type "float2" -0.11514825 -0.086706921 ;
	setAttr ".uvtk[484]" -type "float2" -0.081670105 -0.066085987 ;
	setAttr ".uvtk[485]" -type "float2" -0.053799689 -0.041910559 ;
	setAttr ".uvtk[486]" -type "float2" -0.031911969 -0.016231552 ;
	setAttr ".uvtk[487]" -type "float2" -0.015980721 0.0090969056 ;
	setAttr ".uvtk[488]" -type "float2" -0.0056151748 0.032422282 ;
	setAttr ".uvtk[489]" -type "float2" -9.6201897e-05 0.052321315 ;
	setAttr ".uvtk[490]" -type "float2" 0.001578033 0.067639351 ;
	setAttr ".uvtk[491]" -type "float2" 0.00063198805 0.077531271 ;
	setAttr ".uvtk[492]" -type "float2" -0.0015602112 0.081494734 ;
	setAttr ".uvtk[493]" -type "float2" -0.0035565495 0.079390414 ;
	setAttr ".uvtk[494]" -type "float2" -0.0039337277 0.071445569 ;
	setAttr ".uvtk[495]" -type "float2" -0.001372546 0.058239892 ;
	setAttr ".uvtk[496]" -type "float2" 0.005263567 0.040674567 ;
	setAttr ".uvtk[497]" -type "float2" 0.016860962 0.019927986 ;
	setAttr ".uvtk[498]" -type "float2" 0.034004986 -0.0025961325 ;
	setAttr ".uvtk[499]" -type "float2" 0.05694744 -0.025319844 ;
	setAttr ".uvtk[500]" -type "float2" 0.085592866 -0.04652869 ;
	setAttr ".uvtk[501]" -type "float2" 0.11949745 -0.064378113 ;
	setAttr ".uvtk[502]" -type "float2" 0.15785706 -0.076844886 ;
	setAttr ".uvtk[503]" -type "float2" 0.19942203 -0.081601232 ;
	setAttr ".uvtk[504]" -type "float2" 0.2485857 -0.09352085 ;
	setAttr ".uvtk[505]" -type "float2" -0.19584936 -0.12691914 ;
	setAttr ".uvtk[506]" -type "float2" -0.15016937 -0.1201005 ;
	setAttr ".uvtk[507]" -type "float2" -0.10859954 -0.10385593 ;
	setAttr ".uvtk[508]" -type "float2" -0.07273227 -0.081071943 ;
	setAttr ".uvtk[509]" -type "float2" -0.043422997 -0.054334179 ;
	setAttr ".uvtk[510]" -type "float2" -0.021003842 -0.025947511 ;
	setAttr ".uvtk[511]" -type "float2" -0.0053769946 0.0020235851 ;
	setAttr ".uvtk[512]" -type "float2" 0.0039426684 0.0277474 ;
	setAttr ".uvtk[513]" -type "float2" 0.007791698 0.049649023 ;
	setAttr ".uvtk[514]" -type "float2" 0.0073108673 0.066451728 ;
	setAttr ".uvtk[515]" -type "float2" 0.0038824677 0.077221699 ;
	setAttr ".uvtk[516]" -type "float2" -0.00094872713 0.08140526 ;
	setAttr ".uvtk[517]" -type "float2" -0.0055644214 0.078851707 ;
	setAttr ".uvtk[518]" -type "float2" -0.0083676875 0.069817498 ;
	setAttr ".uvtk[519]" -type "float2" -0.0078766048 0.054950543 ;
	setAttr ".uvtk[520]" -type "float2" -0.0028099716 0.035255887 ;
	setAttr ".uvtk[521]" -type "float2" 0.0078396499 0.01204624 ;
	setAttr ".uvtk[522]" -type "float2" 0.024752319 -0.013115443 ;
	setAttr ".uvtk[523]" -type "float2" 0.048248827 -0.038471766 ;
	setAttr ".uvtk[524]" -type "float2" 0.078281134 -0.062108655 ;
	setAttr ".uvtk[525]" -type "float2" 0.11443552 -0.081952661 ;
	setAttr ".uvtk[526]" -type "float2" 0.15591374 -0.095697448 ;
	setAttr ".uvtk[527]" -type "float2" 0.20139864 -0.10064163 ;
	setAttr ".uvtk[528]" -type "float2" 0.25475734 -0.11101834 ;
	setAttr ".uvtk[529]" -type "float2" -0.19662863 -0.1453636 ;
	setAttr ".uvtk[530]" -type "float2" -0.14695048 -0.13803752 ;
	setAttr ".uvtk[531]" -type "float2" -0.10218668 -0.12030295 ;
	setAttr ".uvtk[532]" -type "float2" -0.064039826 -0.095392689 ;
	setAttr ".uvtk[533]" -type "float2" -0.033366084 -0.066177279 ;
	setAttr ".uvtk[534]" -type "float2" -0.01045233 -0.03519062 ;
	setAttr ".uvtk[535]" -type "float2" 0.0048690438 -0.0046896338 ;
	setAttr ".uvtk[536]" -type "float2" 0.01317364 0.023327291 ;
	setAttr ".uvtk[537]" -type "float2" 0.015410125 0.047142521 ;
	setAttr ".uvtk[538]" -type "float2" 0.012852609 0.065363437 ;
	setAttr ".uvtk[539]" -type "float2" 0.007034719 0.076971598 ;
	setAttr ".uvtk[540]" -type "float2" -0.00033485889 0.081364237 ;
	setAttr ".uvtk[541]" -type "float2" -0.0074687004 0.078379668 ;
	setAttr ".uvtk[542]" -type "float2" -0.012603164 0.068302192 ;
	setAttr ".uvtk[543]" -type "float2" -0.014100045 0.051845022 ;
	setAttr ".uvtk[544]" -type "float2" -0.01053986 0.030112341 ;
	setAttr ".uvtk[545]" -type "float2" -0.00079959631 0.004544884 ;
	setAttr ".uvtk[546]" -type "float2" 0.015890002 -0.023143671 ;
	setAttr ".uvtk[547]" -type "float2" 0.039913416 -0.051027447 ;
	setAttr ".uvtk[548]" -type "float2" 0.071264356 -0.077008501 ;
	setAttr ".uvtk[549]" -type "float2" 0.10955444 -0.098808147 ;
	setAttr ".uvtk[550]" -type "float2" 0.15399387 -0.11387324 ;
	setAttr ".uvtk[551]" -type "float2" 0.20322736 -0.11917618 ;
	setAttr ".uvtk[576]" -type "float2" 0.10737887 0.15323876 ;
	setAttr ".uvtk[577]" -type "float2" -0.086384475 0.12283166 ;
	setAttr ".uvtk[580]" -type "float2" -0.052926719 0.10276557 ;
	setAttr ".uvtk[582]" -type "float2" -0.025622547 0.07877402 ;
	setAttr ".uvtk[584]" -type "float2" -0.004685998 0.052805841 ;
	setAttr ".uvtk[586]" -type "float2" 0.010199964 0.026613906 ;
	setAttr ".uvtk[588]" -type "float2" 0.019575119 0.0015946142 ;
	setAttr ".uvtk[590]" -type "float2" 0.024079382 -0.02115766 ;
	setAttr ".uvtk[592]" -type "float2" 0.024410486 -0.040784732 ;
	setAttr ".uvtk[594]" -type "float2" 0.021310151 -0.056617722 ;
	setAttr ".uvtk[596]" -type "float2" 0.015559733 -0.068148777 ;
	setAttr ".uvtk[598]" -type "float2" 0.0079756379 -0.075016364 ;
	setAttr ".uvtk[600]" -type "float2" -0.00059735775 -0.076998882 ;
	setAttr ".uvtk[602]" -type "float2" -0.0092954934 -0.07401336 ;
	setAttr ".uvtk[604]" -type "float2" -0.017246872 -0.066117138 ;
	setAttr ".uvtk[606]" -type "float2" -0.02358377 -0.053511821 ;
	setAttr ".uvtk[608]" -type "float2" -0.027454972 -0.036550105 ;
	setAttr ".uvtk[610]" -type "float2" -0.028038055 -0.015747055 ;
	setAttr ".uvtk[612]" -type "float2" -0.024554193 0.0082015842 ;
	setAttr ".uvtk[614]" -type "float2" -0.016288728 0.034391545 ;
	setAttr ".uvtk[616]" -type "float2" -0.0026298165 0.061673433 ;
	setAttr ".uvtk[618]" -type "float2" 0.016854703 0.088621221 ;
	setAttr ".uvtk[620]" -type "float2" 0.042262584 0.11356284 ;
	setAttr ".uvtk[622]" -type "float2" 0.073061258 0.13490757 ;
	setAttr ".uvtk[624]" -type "float2" 0.11031714 0.14893639 ;
	setAttr ".uvtk[625]" -type "float2" -0.088492453 0.11812511 ;
	setAttr ".uvtk[626]" -type "float2" -0.055354118 0.098391593 ;
	setAttr ".uvtk[627]" -type "float2" -0.028338432 0.074877918 ;
	setAttr ".uvtk[628]" -type "float2" -0.007547617 0.049464557 ;
	setAttr ".uvtk[629]" -type "float2" 0.0073481798 0.023852598 ;
	setAttr ".uvtk[630]" -type "float2" 0.016876996 -0.00059941038 ;
	setAttr ".uvtk[631]" -type "float2" 0.021660745 -0.022825167 ;
	setAttr ".uvtk[632]" -type "float2" 0.022377193 -0.041987903 ;
	setAttr ".uvtk[633]" -type "float2" 0.019747674 -0.057435162 ;
	setAttr ".uvtk[634]" -type "float2" 0.014533281 -0.068671599 ;
	setAttr ".uvtk[635]" -type "float2" 0.0075297356 -0.075344734 ;
	setAttr ".uvtk[636]" -type "float2" -0.00043916702 -0.077238813 ;
	setAttr ".uvtk[637]" -type "float2" -0.008530885 -0.074273542 ;
	setAttr ".uvtk[638]" -type "float2" -0.015895367 -0.06650582 ;
	setAttr ".uvtk[639]" -type "float2" -0.021686912 -0.054133557 ;
	setAttr ".uvtk[640]" -type "float2" -0.025076687 -0.037502259 ;
	setAttr ".uvtk[641]" -type "float2" -0.025265038 -0.017115951 ;
	setAttr ".uvtk[642]" -type "float2" -0.02149573 0.0063453354 ;
	setAttr ".uvtk[643]" -type "float2" -0.013075858 0.031998944 ;
	setAttr ".uvtk[644]" -type "float2" 0.00058826804 0.058725052 ;
	setAttr ".uvtk[645]" -type "float2" 0.019921631 0.085137762 ;
	setAttr ".uvtk[646]" -type "float2" 0.045044392 0.10961927 ;
	setAttr ".uvtk[647]" -type "float2" 0.075537577 0.13065881 ;
	setAttr ".uvtk[1104]" -type "float2" -0.12066758 0.14550218 ;
	setAttr ".uvtk[1105]" -type "float2" 0.069489792 0.14089441 ;
	setAttr ".uvtk[1106]" -type "float2" 0.038289547 0.11910993 ;
	setAttr ".uvtk[1107]" -type "float2" 0.012495399 0.093507342 ;
	setAttr ".uvtk[1108]" -type "float2" -0.0071880817 0.065799728 ;
	setAttr ".uvtk[1109]" -type "float2" -0.020828128 0.037734315 ;
	setAttr ".uvtk[1110]" -type "float2" -0.028867662 0.010791667 ;
	setAttr ".uvtk[1111]" -type "float2" -0.031943887 -0.013838828 ;
	setAttr ".uvtk[1112]" -type "float2" -0.030801594 -0.035223618 ;
	setAttr ".uvtk[1113]" -type "float2" -0.026251197 -0.052645579 ;
	setAttr ".uvtk[1114]" -type "float2" -0.019146681 -0.065574557 ;
	setAttr ".uvtk[1115]" -type "float2" -0.010370493 -0.073648058 ;
	setAttr ".uvtk[1116]" -type "float2" -0.00082111359 -0.076659456 ;
	setAttr ".uvtk[1117]" -type "float2" 0.0085994005 -0.074550875 ;
	setAttr ".uvtk[1118]" -type "float2" 0.016997457 -0.067409188 ;
	setAttr ".uvtk[1119]" -type "float2" 0.02349937 -0.055464193 ;
	setAttr ".uvtk[1120]" -type "float2" 0.027260005 -0.039090119 ;
	setAttr ".uvtk[1121]" -type "float2" 0.027470171 -0.018812157 ;
	setAttr ".uvtk[1122]" -type "float2" 0.023360431 0.0046781972 ;
	setAttr ".uvtk[1123]" -type "float2" 0.014206588 0.030493664 ;
	setAttr ".uvtk[1124]" -type "float2" -0.00065559149 0.057502165 ;
	setAttr ".uvtk[1125]" -type "float2" -0.021780908 0.084257409 ;
	setAttr ".uvtk[1126]" -type "float2" -0.049468577 0.1089405 ;
	setAttr ".uvtk[1127]" -type "float2" -0.083331883 0.12951863 ;
	setAttr ".uvtk[1128]" -type "float2" 0.20472059 -0.13625993 ;
	setAttr ".uvtk[1129]" -type "float2" 0.26025656 -0.12739335 ;
	setAttr ".uvtk[1130]" -type "float2" 0.15211755 -0.13047187 ;
	setAttr ".uvtk[1131]" -type "float2" 0.10503632 -0.11412672 ;
	setAttr ".uvtk[1132]" -type "float2" 0.064842105 -0.090516262 ;
	setAttr ".uvtk[1133]" -type "float2" 0.032315373 -0.062394492 ;
	setAttr ".uvtk[1134]" -type "float2" 0.0078257322 -0.032213695 ;
	setAttr ".uvtk[1135]" -type "float2" -0.0086541772 -0.0022325888 ;
	setAttr ".uvtk[1136]" -type "float2" -0.017563552 0.025473014 ;
	setAttr ".uvtk[1137]" -type "float2" -0.019751161 0.049053639 ;
	setAttr ".uvtk[1138]" -type "float2" -0.01644367 0.066952959 ;
	setAttr ".uvtk[1139]" -type "float2" -0.00918594 0.077976882 ;
	setAttr ".uvtk[1140]" -type "float2" 0.00024214387 0.081353068 ;
	setAttr ".uvtk[1141]" -type "float2" 0.0099256635 0.076771989 ;
	setAttr ".uvtk[1142]" -type "float2" 0.017923474 0.064405382 ;
	setAttr ".uvtk[1143]" -type "float2" 0.022378206 0.04490073 ;
	setAttr ".uvtk[1144]" -type "float2" 0.02161926 0.019353032 ;
	setAttr ".uvtk[1145]" -type "float2" 0.014252007 -0.010740459 ;
	setAttr ".uvtk[1146]" -type "float2" -0.00077295303 -0.043534406 ;
	setAttr ".uvtk[1147]" -type "float2" -0.024112463 -0.076883197 ;
	setAttr ".uvtk[1148]" -type "float2" -0.05599761 -0.10836301 ;
	setAttr ".uvtk[1149]" -type "float2" -0.096186876 -0.13524507 ;
	setAttr ".uvtk[1150]" -type "float2" -0.14383733 -0.15441628 ;
	setAttr ".uvtk[1151]" -type "float2" -0.19717264 -0.1623349 ;
	setAttr ".uvtk[1246]" -type "float2" -0.12707055 0.13396235 ;
	setAttr ".uvtk[1247]" -type "float2" 0.1121071 0.14590473 ;
	setAttr ".uvtk[1248]" -type "float2" -0.12447971 0.13881375 ;
	setAttr ".uvtk[1249]" -type "float2" 0.10314026 0.15909497 ;
	setAttr ".uvtk[1250]" -type "float2" -0.24818665 -0.13897216 ;
	setAttr ".uvtk[1251]" -type "float2" -0.25287849 -0.15537143 ;
	setAttr ".uvtk[1252]" -type "float2" -0.24291301 -0.12131903 ;
	setAttr ".uvtk[1253]" -type "float2" -0.2374171 -0.10339209 ;
	setAttr ".uvtk[1254]" -type "float2" -0.23216987 -0.086149015 ;
	setAttr ".uvtk[1255]" -type "float2" -0.2276997 -0.070448674 ;
	setAttr ".uvtk[1256]" -type "float2" -0.22448587 -0.056992602 ;
	setAttr ".uvtk[1257]" -type "float2" -0.22279596 -0.046274409 ;
	setAttr ".uvtk[1258]" -type "float2" -0.22251004 -0.038508289 ;
	setAttr ".uvtk[1259]" -type "float2" -0.14814597 0.017827921 ;
	setAttr ".uvtk[1260]" -type "float2" -0.14598364 0.019868612 ;
	setAttr ".uvtk[1261]" -type "float2" -0.14402479 0.022965781 ;
	setAttr ".uvtk[1262]" -type "float2" -0.14202076 0.028023213 ;
	setAttr ".uvtk[1263]" -type "float2" -0.1403259 0.035338484 ;
	setAttr ".uvtk[1264]" -type "float2" -0.13911033 0.044782251 ;
	setAttr ".uvtk[1265]" -type "float2" -0.13826281 0.055926494 ;
	setAttr ".uvtk[1266]" -type "float2" -0.13753915 0.068171002 ;
	setAttr ".uvtk[1267]" -type "float2" -0.13669848 0.08082293 ;
	setAttr ".uvtk[1268]" -type "float2" -0.13558823 0.093153492 ;
	setAttr ".uvtk[1269]" -type "float2" -0.1341874 0.10445856 ;
	setAttr ".uvtk[1270]" -type "float2" -0.13261014 0.11412947 ;
	setAttr ".uvtk[1271]" -type "float2" -0.13106143 0.12172724 ;
	setAttr ".uvtk[1272]" -type "float2" -0.12973392 0.12708148 ;
	setAttr ".uvtk[1273]" -type "float2" 0.12551078 0.025813527 ;
	setAttr ".uvtk[1274]" -type "float2" 0.1421684 0.037329931 ;
	setAttr ".uvtk[1275]" -type "float2" -0.22313905 -0.033439498 ;
	setAttr ".uvtk[1276]" -type "float2" 0.10882038 0.01298574 ;
	setAttr ".uvtk[1277]" -type "float2" 0.092845231 -0.00053715333 ;
	setAttr ".uvtk[1278]" -type "float2" 0.07798183 -0.014146343 ;
	setAttr ".uvtk[1279]" -type "float2" 0.064466029 -0.02736124 ;
	setAttr ".uvtk[1280]" -type "float2" 0.05239439 -0.039788179 ;
	setAttr ".uvtk[1281]" -type "float2" 0.041743517 -0.051091034 ;
	setAttr ".uvtk[1282]" -type "float2" 0.03239128 -0.060979672 ;
	setAttr ".uvtk[1283]" -type "float2" 0.024138033 -0.069208786 ;
	setAttr ".uvtk[1284]" -type "float2" 0.016725689 -0.075581044 ;
	setAttr ".uvtk[1285]" -type "float2" 0.0098544657 -0.079950988 ;
	setAttr ".uvtk[1286]" -type "float2" 0.0031985641 -0.08222796 ;
	setAttr ".uvtk[1287]" -type "float2" -0.0035796165 -0.082377464 ;
	setAttr ".uvtk[1288]" -type "float2" -0.010815442 -0.080420606 ;
	setAttr ".uvtk[1289]" -type "float2" -0.018828034 -0.076431729 ;
	setAttr ".uvtk[1290]" -type "float2" -0.027905643 -0.070534348 ;
	setAttr ".uvtk[1291]" -type "float2" -0.038289368 -0.062895872 ;
	setAttr ".uvtk[1292]" -type "float2" -0.050155163 -0.053722013 ;
	setAttr ".uvtk[1293]" -type "float2" -0.063592851 -0.043252438 ;
	setAttr ".uvtk[1294]" -type "float2" -0.078582764 -0.031760652 ;
	setAttr ".uvtk[1295]" -type "float2" -0.094969988 -0.019560348 ;
	setAttr ".uvtk[1296]" -type "float2" -0.11244088 -0.0070147216 ;
	setAttr ".uvtk[1297]" -type "float2" -0.13049006 0.0054876432 ;
createNode polyMapCut -n "polyMapCut17";
	rename -uid "8468B7A0-524D-8C95-A61A-00BF0B6C8107";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[2]" "e[6]" "e[9]" "e[12]" "e[15]" "e[18]" "e[21]" "e[24]" "e[27]" "e[30]" "e[33]" "e[36]" "e[39]" "e[42]" "e[45]" "e[48]" "e[51]" "e[54]" "e[57]" "e[60]" "e[63]" "e[66]" "e[69]" "e[71]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "D5350915-8E4A-F287-9631-978C1064CDEE";
	setAttr ".uopa" yes;
	setAttr -s 1323 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.33489695 1.51299989 0.029599663 1.52260756
		 0.15827146 1.090149879 0.16194984 1.051162362 0.033418097 1.54538941 0.15684113 1.12895858
		 0.039881729 1.56616402 0.15885654 1.16823769 0.048862368 1.58501136 0.16438565 1.20719874
		 0.060032532 1.60184526 0.17324123 1.24486637 0.073029622 1.61657941 0.18514591 1.28025007
		 0.087503582 1.62916136 0.19976926 1.31240094 0.10313749 1.63957238 0.21674198 1.34044909
		 0.11965345 1.64781976 0.23566189 1.36363196 0.13681144 1.65392387 0.25610021 1.38131702
		 0.15440533 1.65790868 0.27760693 1.39302051 0.1722528 1.65979135 0.29971734 1.39842224
		 0.19018596 1.65957785 0.32195845 1.39737403 0.20803887 1.65725994 0.34385535 1.38990557
		 0.22563729 1.65281677 0.36493966 1.37622273 0.24278703 1.64621854 0.38475636 1.35670209
		 0.25926676 1.63743484 0.40286997 1.33187866 0.2748225 1.62644291 0.41887304 1.30243134
		 0.28916797 1.6132381 0.43239334 1.26915979 0.3019931 1.5978384 0.44310519 1.23295772
		 0.31298956 1.58028007 0.45075253 1.19477522 0.32191554 1.56058002 0.45521119 1.15555668
		 0.32881919 1.53856766 0.45672795 1.11606073 0.33114639 1.51262462 0.032912649 1.52220142
		 0.036560081 1.54463196 0.042826604 1.56503999 0.051572472 1.58354151 0.062474772
		 1.60006666 0.075177774 1.61453462 0.089339107 1.626894 0.10464758 1.63712502 0.12083007
		 1.64523196 0.13764995 1.65123296 0.15490249 1.65514922 0.17240682 1.6569972 0.18999541
		 1.65678144 0.20750272 1.6544944 0.22475508 1.65011621 0.24156019 1.64361978 0.25769922
		 1.63497663 0.27292243 1.62416697 0.28694841 1.61118603 0.29947391 1.59605086 0.31019661
		 1.5787909 0.31887797 1.55940437 0.32554826 1.53768361 0.32582316 1.51232958 0.037581824
		 1.52174675 0.040986918 1.54360557 0.046981286 1.56347489 0.05539988 1.58147883 0.06592606
		 1.59756207 0.078215227 1.61165071 0.091935277 1.62369323 0.10678422 1.63366747 0.12249534
		 1.64157474 0.13883674 1.64742899 0.15560666 1.65124846 0.17262545 1.65304661 0.18972641
		 1.65282762 0.20674467 1.65058422 0.22350773 1.646299 0.23982552 1.63994694 0.25548312
		 1.63150406 0.27023652 1.62095308 0.28381237 1.60829163 0.29591617 1.59353518 0.3062546
		 1.57670569 0.31459209 1.55778444 0.32091919 1.53655434 0.31903771 1.51228392 0.043515693
		 1.52136886 0.046611201 1.54238188 0.052267522 1.5615232 0.060275599 1.57887399 0.070326611
		 1.59438396 0.082090363 1.60798204 0.095248967 1.61961579 0.10951197 1.62925982 0.12462156
		 1.63691008 0.14035189 1.64257598 0.15650508 1.64627087 0.17290357 1.64800537 0.18938154
		 1.64778256 0.20577514 1.64559579 0.22191331 1.64143014 0.23760936 1.6352644 0.25265333
		 1.62707937 0.26680854 1.6168623 0.27981207 1.60461426 0.29138097 1.59035063 0.30123296
		 1.57408905 0.30913249 1.55580473 0.3150042 1.53531873 0.31109497 1.5126698 0.050471753
		 1.52120483 0.053209633 1.54107714 0.058477625 1.55929565 0.066010639 1.57584643 0.075507686
		 1.59066427 0.086655945 1.60367405 0.099154681 1.61481965 0.11272761 1.62406981 0.12712771
		 1.63141441 0.14213699 1.63685632 0.15756199 1.64040363 0.17322806 1.64206314 0.18897051
		 1.64183664 0.20462692 1.63971806 0.2200281 1.6356951 0.23499133 1.6297524 0.24931261
		 1.62187576 0.26276478 1.61205876 0.27509651 1.6003077 0.2860392 1.58664179 0.29532209
		 1.57108188 0.30270448 1.55361664 0.30802462 1.53415489 0.3024241 1.51359427 0.058118269
		 1.5213511 0.060481414 1.53981686 0.065329716 1.5569303 0.072346076 1.5725528 0.081236407
		 1.58658063 0.09170711 1.59892511 0.10347688 1.60952127 0.11628608 1.61832988 0.12990016
		 1.62533259 0.14410982 1.63052452 0.15872726 1.63390756 0.1735805 1.63548458 0.18850726
		 1.6352551 0.20334625 1.633214 0.21793115 1.62935293 0.23208292 1.62366128 0.24560526
		 1.61613238 0.25828096 1.60676742 0.26987216 1.59558129 0.28012541 1.58260214 0.28878132
		 1.56786513 0.2955896 1.55139697 0.30029735 1.53322458 0.29352489 1.51503873 0.066066459
		 1.52182603 0.068075433 1.53870118 0.072494432 1.55456901 0.078976557 1.56916749 0.087235779
		 1.58233809 0.096999019 1.59396791 0.10800552 1.60397744 0.12001364 1.61231661 0.13280219
		 1.61895704 0.14617172 1.62388504 0.15994033 1.6270957 0.17393979 1.62858677 0.18800962
		 1.62835598 0.20199043 1.62639952 0.21571833 1.6227119 0.22901955 1.61728919 0.24170503
		 1.61013269 0.25356838 1.60125387 0.26438579 1.59067845 0.27391866 1.57845068 0.28191844
		 1.56463242 0.28812459 1.54930711 0.29221073 1.53262699 0.2849088 1.51685166 0.073901966
		 1.52255583 0.075610057 1.53777659 0.079613343 1.552333 0.085567802 1.56586409 0.09320128
		 1.57815206 0.10226107 1.5890528 0.1125077 1.59846818 0.12371694 1.60633397 0.13568211
		 1.61261082 0.14821348 1.61727524 0.16113541 1.62031436 0.17428306 1.62172151 0.18749845
		 1.62149203 0.20062399 1.61962295 0.21349877 1.61611259 0.22595325 1.6109637 0.23780617
		 1.60418653 0.24886212 1.59580398 0.25891045 1.58585644 0.2677274 1.57440937 0.27507421
		 1.56156027 0.28068534 1.54745877 0.28419724 1.53236771 0.27704141 1.51878119 0.081218317
		 1.52338874 0.082695499 1.53702927 0.086317539 1.55030787 0.091775626 1.56279862 0.098818094
		 1.5742321 0.1072132 1.58443201 0.11674131 1.59327984 0.12719566 1.60069621 0.13838291
		 1.60662889 0.15012243 1.61104512 0.16224483 1.61392426 0.17458883 1.6152544 0.18699819
		 1.6150291 0.19931746 1.61324573 0.21138805 1.60990679 0.22304496 1.60502148 0.23411413
		 1.59860921 0.24440941 1.59070492 0.25373343 1.58136606 0.26187506 1.57068133 0.26860663
		 1.55878639 0.27366617 1.54589415 0.2766951 1.53235459 0.2702966 1.5205363 0.08765173
		 1.52414191 0.088963151 1.53640437 0.092254311 1.548545 0.097270221 1.56010103 0.10378528
		 1.57076716 0.11158741 1.58034039 0.12047561 1.58868301 0.1302588 1.59570122 0.14075536
		 1.601331;
	setAttr ".uvtk[250:499]" 0.15179268 1.60552979 0.16320679 1.60827005 0.17483917
		 1.60953498 0.18653566 1.60931635 0.19814175 1.60761213 0.20950145 1.60442829 0.22045341
		 1.59977984 0.23082902 1.59369516 0.24045125 1.58622098 0.2491335 1.57743049 0.2566767
		 1.56743479 0.26286444 1.55640316 0.2674478 1.54459846 0.27010295 1.53243375 0.26491943
		 1.5218724 0.092914522 1.52467048 0.094106019 1.53585291 0.097126454 1.54707885 0.10177517
		 1.55787301 0.10785097 1.56791115 0.11516105 1.57697225 0.12352006 1.58490384 0.13274992
		 1.59159935 0.1426785 1.59698486 0.15313986 1.60100937 0.16397384 1.60363948 0.17502418
		 1.60485458 0.1861375 1.6046443 0.19716084 1.60300732 0.20793968 1.59995234 0.21831512
		 1.59549963 0.22812334 1.58968496 0.23719397 1.58256459 0.2453495 1.57422507 0.25240186
		 1.56479526 0.25814667 1.55446839 0.26235023 1.54353905 0.26473323 1.53245878 0.26099822
		 1.52267885 0.096836537 1.52493453 0.097936183 1.53537059 0.10075253 1.5459429 0.10512257
		 1.55618334 0.11086524 1.56576252 0.11780341 1.57444978 0.12576497 1.58208179 0.13458121
		 1.58854342 0.14408693 1.59375226 0.15412048 1.59765196 0.16452435 1.60020411 0.17514381
		 1.601385 0.18582612 1.60118318 0.1964187 1.59959793 0.20676786 1.59663963 0.21671677
		 1.59233236 0.22610459 1.58671701 0.23476608 1.57985759 0.24253002 1.57184947 0.24921772
		 1.56283343 0.25463584 1.55301714 0.25856629 1.54270911 0.26076129 1.53237128 0.25840059
		 1.52301192 0.099467903 1.52500701 0.1004988 1.53498864 0.10317641 1.54514325 0.10735583
		 1.5550251 0.1128709 1.56430602 0.11955677 1.57274997 0.12725013 1.5801878 0.13578868
		 1.58649778 0.14501169 1.59159303 0.15476021 1.59541285 0.1648781 1.59791565 0.17521146
		 1.59907615 0.18560785 1.59888172 0.19591475 1.59733176 0.20597905 1.5944382 0.21564478
		 1.59022737 0.22475311 1.58474374 0.23314197 1.5780555 0.2406449 1.57026386 0.24708936
		 1.56151664 0.25229147 1.55202878 0.25604585 1.54211354 0.25812218 1.5322206 0.42491648
		 1.41083503 0.40615353 1.40726054 0.39929876 1.40274858 0.39375523 1.39670384 0.38986638
		 1.38947749 0.38787356 1.38151133 0.38790002 1.37329531 0.38994464 1.36533427 0.39388201
		 1.35811687 0.39947113 1.35208559 0.40636995 1.34761 0.41415647 1.34496367 0.42235437
		 1.34430873 0.43046263 1.34568536 0.43798515 1.34900928 0.44446227 1.35407746 0.44949785
		 1.36058009 0.45278373 1.36811984 0.45411894 1.37623549 0.45342144 1.38443124 0.45073381
		 1.39220655 0.44622013 1.39908779 0.44015726 1.40466189 0.43291447 1.40861571 0.42538717
		 1.41327333 0.40501693 1.40948009 0.39767036 1.40463972 0.39171782 1.39814436 0.38753936
		 1.3903774 0.38539729 1.38181436 0.38542524 1.37298203 0.38762233 1.36442351 0.3918539
		 1.35666442 0.39786133 1.35017991 0.40527704 1.34536743 0.41364697 1.34252155 0.42245963
		 1.34181631 0.4311761 1.34329498 0.43926343 1.34686708 0.44622698 1.35231423 0.45164123
		 1.35930395 0.45517477 1.36740816 0.45661148 1.37613177 0.4558638 1.3849411 0.45297769
		 1.39329791 0.44813165 1.4006927 0.44162723 1.40668035 0.43387476 1.41092312 0.42594776
		 1.41688371 0.40334556 1.41278279 0.3952572 1.40744936 0.38869545 1.40028322 0.38408706
		 1.39171195 0.38172403 1.38226187 0.38175479 1.37251484 0.38417897 1.36307013 0.38884816
		 1.35450745 0.39547679 1.34735143 0.40365937 1.34204042 0.41289511 1.33889937 0.42261967
		 1.33812022 0.43223801 1.33975112 0.44116226 1.34369195 0.44884685 1.349702 0.45482185
		 1.35741401 0.45872203 1.3663559 0.4603087 1.37598145 0.45948586 1.38570118 0.45630476
		 1.39492106 0.4509643 1.40307844 0.44380102 1.40968108 0.43527487 1.41435182 0.42658606
		 1.42170656 0.40115502 1.41720653 0.3920466 1.41121161 0.3846626 1.40314472 0.37947723
		 1.39349592 0.37681869 1.38285911 0.37685391 1.37188947 0.37958208 1.36126101 0.38483617
		 1.35162532 0.39229485 1.34357297 0.40150186 1.33759665 0.41189399 1.33406198 0.4228361
		 1.3331852 0.43365869 1.33501983 0.4437004 1.33945394 0.45234731 1.3462162 0.45907065
		 1.35489321 0.46345958 1.36495435 0.46524623 1.37578428 0.46432188 1.38672042 0.46074584
		 1.39709401 0.45474193 1.4062717 0.44668874 1.41369808 0.4371002 1.41893804 0.42727104
		 1.42758703 0.39853916 1.42260122 0.38816103 1.4157995 0.37976381 1.40663207 0.37387189
		 1.39566863 0.37085304 1.38358605 0.37089375 1.37112796 0.37399194 1.35905886 0.37995812
		 1.34811831 0.38842681 1.33897614 0.39888033 1.33219099 0.41067913 1.32817829 0.42310187
		 1.32718325 0.43538895 1.32926655 0.44678953 1.33430099 0.4566063 1.34197855 0.46423957
		 1.35183001 0.46922246 1.36325264 0.47125122 1.37554812 0.47020277 1.38796449 0.46614406
		 1.39974272 0.45932761 1.410164 0.45017883 1.41859472 0.43926904 1.4245261 0.42798319
		 1.43426514 0.39561567 1.4287194 0.38378236 1.4210012 0.37422702 1.41058469 0.36753115
		 1.39813006 0.36410257 1.38440895 0.36414912 1.37026536 0.36766663 1.35656571 0.37443873
		 1.34414828 0.38405105 1.33377266 0.3959153 1.32607293 0.40930614 1.32151973 0.42340484
		 1.32039118 0.43734911 1.32275641 0.45028725 1.32847071 0.46142772 1.33718467 0.47009
		 1.34836531 0.47574461 1.3613292 0.4780466 1.37528372 0.47685671 1.38937628 0.472249
		 1.40274572 0.46450725 1.41457617 0.45410684 1.4241451 0.44168213 1.4308604 0.42870978
		 1.44141483 0.39251569 1.43525553 0.3791227 1.42655551 0.36832616 1.41480374 0.36076954
		 1.40075648 0.35690281 1.38528657 0.35695544 1.36934423 0.36092028 1.35390508 0.3685526
		 1.33991265 0.37938467 1.32822168 0.39275399 1.31954634 0.40784302 1.314417 0.42372921
		 1.31314659 0.43944141 1.31581295 0.4540191 1.32225275 0.46657142 1.33207238 0.47633094
		 1.34467113 0.48270166 1.35927927 0.4852947 1.37500405 0.4839524 1.39088488;
	setAttr ".uvtk[500:749]" 0.4787572 1.40595233 0.47002491 1.4192872 0.45828268
		 1.43007195 0.44423226 1.4376272 0.42943755 1.44867373 0.38938168 1.44187593 0.3744103
		 1.43217695 0.36235687 1.41907275 0.35392842 1.40341318 0.34961835 1.38617349 0.34967723
		 1.3684113 0.35409448 1.35121226 0.3625972 1.33562613 0.37466362 1.32260442 0.38955602
		 1.31294239 0.40636328 1.30723 0.42405829 1.30581629 0.44155899 1.30878735 0.45779583
		 1.3159616 0.47177634 1.32690001 0.48264611 1.34093416 0.48974109 1.35720623 0.49262804
		 1.37472224 0.49113095 1.39241254 0.48534012 1.40919864 0.47560376 1.42405593 0.46250209
		 1.43607175 0.44680586 1.44448185 0.43014738 1.45567071 0.38636252 1.44824314 0.36987761
		 1.43757963 0.35661808 1.42317367 0.34735259 1.40596473 0.34261653 1.3870244 0.34268144
		 1.36751366 0.34753385 1.34862328 0.35687295 1.33150542 0.3701261 1.31720495 0.38648215
		 1.30659449 0.40494123 1.30032194 0.42437461 1.29877043 0.44359449 1.30203438 0.46142617
		 1.30991447 0.47677934 1.32192862 0.48871619 1.3373425 0.49650717 1.35521388 0.49967635
		 1.37445164 0.49803013 1.39388144 0.49166632 1.41231883 0.48096526 1.42863917 0.46655837
		 1.44183946 0.44928423 1.45107567 -0.193672 -0.32291222 0.20341912 -0.17875433 0.18650141
		 -0.18199563 0.16937724 -0.1861949 0.15206537 -0.19107726 0.13458878 -0.19642499 0.11696887
		 -0.20208481 0.099231303 -0.20794392 0.081399888 -0.2139411 0.063500524 -0.22003174
		 0.045559287 -0.22619319 0.027588248 -0.23241401 0.0096126199 -0.23868084 -0.0083403029
		 -0.24499369 -0.026248895 -0.25136042 -0.044098467 -0.25777745 -0.061870828 -0.26424742
		 -0.079540767 -0.27076983 -0.097037785 -0.27736473 -0.11431053 -0.28408027 -0.13128817
		 -0.29097986 -0.14785656 -0.29816484 -0.1639016 -0.30575234 -0.1792393 -0.31392908
		 0.46600106 1.076705456 0.14974472 1.089828849 -0.65883672 -1.29920709 -0.69054472
		 -1.27641058 0.14805964 1.12920928 -0.62834835 -1.32491171 0.14997956 1.16923487 -0.59861922
		 -1.35290956 0.1556423 1.20897329 -0.56935346 -1.38255346 0.16487136 1.24739528 -0.54034257
		 -1.41339087 0.17738232 1.2834816 -0.5114361 -1.44508982 0.19282895 1.31626368 -0.48253217
		 -1.47742319 0.21081829 1.34485638 -0.45362437 -1.51019394 0.23091961 1.36848533 -0.42469844
		 -1.54329014 0.25267133 1.38650846 -0.39576852 -1.57664049 0.27558681 1.39843524 -0.36684459
		 -1.61017442 0.29916194 1.40394139 -0.33794612 -1.64386177 0.3228828 1.40287662 -0.30912578
		 -1.67765439 0.34623387 1.39527106 -0.28041804 -1.71149755 0.36870602 1.38133347 -0.25186658
		 -1.74538648 0.38980517 1.36144567 -0.22353303 -1.77928019 0.40906009 1.336151 -0.1954712
		 -1.8131603 0.42603102 1.30613947 -0.1678116 -1.84700799 0.44031855 1.27222586 -0.14073667
		 -1.88081837 0.45157614 1.2353245 -0.11447749 -1.9146322 0.45953563 1.19641745 -0.089344501
		 -1.94853783 0.46407661 1.15651 -0.065814197 -1.98261487 0.4654837 1.11651945 -0.044398487
		 -2.017034531 0.46064404 1.075975418 0.15484837 1.090006828 0.15330687 1.12905633
		 0.15528217 1.16863978 0.16086462 1.20791626 0.169871 1.24588966 0.18202043 1.28155744
		 0.19697595 1.31396353 0.21435863 1.34223163 0.23375495 1.36559439 0.25472263 1.38341546
		 0.27679721 1.39520872 0.29949781 1.40065181 0.32233486 1.39959633 0.34481755 1.39207172
		 0.36646083 1.37828505 0.3867937 1.35861492 0.40536681 1.33360052 0.42175922 1.30392444
		 0.43558797 1.27039266 0.44651893 1.23390687 0.45429084 1.19543016 0.45878085 1.15593076
		 0.46025047 1.11622667 -0.56762719 -1.17686236 -0.60461599 -1.14703894 0.094477952
		 -1.94919932 0.067457378 -1.91034615 0.039738595 -1.87270212 0.010996103 -1.83594549
		 -0.017834261 -1.79961383 -0.047174349 -1.76373494 -0.076712549 -1.72818685 -0.10592639
		 -1.69253254 -0.13575584 -1.65734935 -0.16547444 -1.62211394 -0.19513419 -1.58706117
		 -0.22520369 -1.55196047 -0.25514966 -1.51697588 -0.28519359 -1.48211873 -0.31547868
		 -1.4475385 -0.3455998 -1.41283035 -0.37600884 -1.3784281 -0.40660951 -1.344172 -0.43731263
		 -1.30980968 -0.46855757 -1.27591252 -0.50040901 -1.24233913 -0.53326851 -1.20932662
		 -0.23582086 -0.26573756 0.19465569 -0.11058703 0.17497537 -0.11542204 0.1555807 -0.12100926
		 0.13645524 -0.12692568 0.11752144 -0.13307697 0.098717749 -0.13921726 0.079966724
		 -0.14546096 0.061242789 -0.15173984 0.042493433 -0.15795207 0.023811288 -0.16442654
		 0.0051127151 -0.17085502 -0.01360691 -0.17726436 -0.032223817 -0.18378741 -0.050940484
		 -0.19044337 -0.069534123 -0.19718641 -0.088029251 -0.20413268 -0.10670256 -0.21071887
		 -0.12526144 -0.21761012 -0.14381045 -0.22464752 -0.16245401 -0.23179752 -0.18095234
		 -0.23933166 -0.19951025 -0.24727783 -0.21776408 -0.25597271 -0.24819589 -0.24078581
		 0.18862751 -0.085443914 0.16878277 -0.091504365 0.1492874 -0.09769848 0.13001189
		 -0.10398993 0.11092547 -0.11035809 0.092020154 -0.11666349 0.073113739 -0.12299734
		 0.054221764 -0.12932467 0.03530132 -0.13557971 0.016437843 -0.14208627 -0.0024925414
		 -0.14856282 -0.02141292 -0.15503648 -0.040268593 -0.16161957 -0.059268445 -0.16836771
		 -0.078006864 -0.17517126 -0.096652493 -0.18219066 -0.11548685 -0.18881685 -0.13419172
		 -0.19567937 -0.15304646 -0.20269358 -0.17203423 -0.20980948 -0.19097567 -0.21712595
		 -0.21010831 -0.22476834 -0.22907686 -0.23268205 -0.38975483 -1.015643954 -0.4194411
		 -0.97783542 0.18079895 -1.9477005 -0.52081031 -1.12723899 0.28264701 -1.798527 0.15126356
		 -1.91069794 0.24922916 -1.76415229 0.12178355 -1.87249351 0.21636161 -1.7288065 0.092392147
		 -1.83501387 0.18456367 -1.69375873 0.062455773 -1.79785109 0.15342686 -1.65834951
		 0.032732069 -1.76137066 0.1227504 -1.62266588 0.0027058125 -1.72505212 0.093106508
		 -1.58788335 -0.027146071 -1.68924141 0.063229233 -1.55250108 -0.056551263 -1.65335345
		 0.033114783 -1.51699328 -0.086675704 -1.61785626 0.0026027113 -1.48124468 -0.11667335
		 -1.58234143 -0.028446928 -1.4449594 -0.14684409 -1.54657197 -0.059542529 -1.40858638
		 -0.17741564 -1.51089001 -0.090404212 -1.37262917 -0.20780084 -1.47549582;
	setAttr ".uvtk[750:999]" -0.12142046 -1.33697605 -0.23830302 -1.44016647 -0.15229541
		 -1.30171013 -0.26896763 -1.40523434 -0.18298975 -1.26640511 -0.29954371 -1.37013578
		 -0.21353862 -1.23140192 -0.33036274 -1.33535218 -0.24330422 -1.19692206 -0.36104867
		 -1.30069137 -0.27277043 -1.16218734 -0.39210334 -1.26586962 -0.30233315 -1.12683845
		 -0.42337361 -1.23117709 -0.33177975 -1.090602636 -0.45513424 -1.19648027 -0.36104202
		 -1.053363323 -0.48752767 -1.16195011 -0.27575374 -0.16410482 0.16105765 -0.011829093
		 0.14244899 -0.020051703 0.12383837 -0.027864188 0.10535848 -0.035204113 0.087021589
		 -0.042186201 0.068632141 -0.048848331 0.050327718 -0.05523932 0.031534627 -0.061726511
		 0.012601942 -0.068113685 -0.0063037984 -0.074556172 -0.025494762 -0.081049144 -0.044656865
		 -0.087649584 -0.063869424 -0.094382435 -0.083331883 -0.10126445 -0.10232069 -0.10786107
		 -0.1211115 -0.1147058 -0.13975874 -0.12114617 -0.1582433 -0.12768978 -0.17736393
		 -0.13419414 -0.19641939 -0.14044708 -0.21591452 -0.14670968 -0.23557302 -0.1525898
		 -0.25555217 -0.15836129 -0.28092206 -0.14083797 0.15127549 0.007561639 0.13320345
		 -0.0013488084 0.11524087 -0.0094308406 0.097251534 -0.016804352 0.079323709 -0.023765534
		 0.061345935 -0.030415118 0.043279544 -0.036545157 0.024709709 -0.043129116 0.0060444772
		 -0.049678683 -0.012770586 -0.055817068 -0.032036923 -0.062090904 -0.051078103 -0.069030851
		 -0.070247561 -0.075619429 -0.089472115 -0.08273682 -0.10847457 -0.088946223 -0.12744945
		 -0.09541595 -0.14590825 -0.10222208 -0.16401166 -0.10878959 -0.18303598 -0.11486346
		 -0.20186773 -0.1210258 -0.22096816 -0.12697443 -0.24054793 -0.13220957 -0.26039833
		 -0.13709605 -0.52522868 -1.13160503 -0.55946624 -1.096087217 0.12542361 -1.98742878
		 -0.56375575 -1.17209148 0.14631206 -1.91448987 0.099750578 -1.94600224 0.11703414
		 -1.87611175 0.072407067 -1.90705943 0.087644875 -1.8384999 0.04455179 -1.86943269
		 0.057911038 -1.80138969 0.015704989 -1.83254766 0.028243423 -1.76483953 -0.013208181
		 -1.79622829 -0.0017689466 -1.72862542 -0.042661324 -1.7603035 -0.031561106 -1.69279373
		 -0.072229385 -1.7246834 -0.060956255 -1.65686595 -0.10141438 -1.68900216 -0.091082811
		 -1.62143111 -0.13128483 -1.65382957 -0.12104982 -1.58593059 -0.16104087 -1.61852467
		 -0.15120342 -1.55025363 -0.19079053 -1.58342183 -0.18170494 -1.51459146 -0.22088173
		 -1.54824126 -0.21201983 -1.47920728 -0.25084269 -1.51319659 -0.24251041 -1.44395363
		 -0.28095195 -1.47832394 -0.27317822 -1.4090656 -0.3113187 -1.44372654 -0.30368713
		 -1.37398386 -0.34145844 -1.40893221 -0.33445311 -1.33919466 -0.37191179 -1.37449741
		 -0.36521122 -1.30457819 -0.40250692 -1.34019351 -0.39618084 -1.26977921 -0.43327919
		 -1.3057698 -0.4275029 -1.23515081 -0.46455416 -1.27179599 -0.45929232 -1.2005353
		 -0.49642971 -1.23810208 -0.49180591 -1.16605592 -0.52928883 -1.20496678 -0.34373367
		 -0.98406768 -0.36938095 -0.94239324 0.3212471 -1.82988167 -0.3852123 -1.012070417
		 0.32123876 -1.75831175 0.28682494 -1.79455185 0.2864179 -1.72569299 0.25315282 -1.76017535
		 0.25359017 -1.69151759 0.2202594 -1.7250545 0.221654 -1.65741324 0.18840218 -1.69000065
		 0.19137347 -1.62245715 0.15736192 -1.65479016 0.16027546 -1.58806932 0.1266793 -1.61909091
		 0.13086161 -1.55352128 0.096955121 -1.58427179 0.10286273 -1.51740038 0.067272961
		 -1.548949 0.0719091 -1.48304296 0.037202351 -1.51362753 0.040712535 -1.44822025 0.006591253
		 -1.47783303 0.010135654 -1.41139019 -0.024499163 -1.44148278 -0.021155674 -1.37514973
		 -0.055615805 -1.40508306 -0.05108425 -1.33858442 -0.086434051 -1.36911273 -0.082602829
		 -1.30328381 -0.11738548 -1.33357441 -0.11402479 -1.26896477 -0.14832053 -1.29827619
		 -0.14360785 -1.23321581 -0.17905384 -1.26289022 -0.1739302 -1.19850779 -0.20952854
		 -1.22799373 -0.20342812 -1.16480708 -0.23918131 -1.19356108 -0.23185799 -1.13018358
		 -0.26865998 -1.15884972 -0.26077852 -1.09555769 -0.29808757 -1.12358665 -0.28932115
		 -1.059915543 -0.32741854 -1.0873487 -0.31722951 -1.022852302 -0.35654771 -1.050141811
		 -0.33887255 -0.98106515 -0.363397 -0.93987775 -0.31257474 -1.019870043 -0.28490034
		 -1.056818008 -0.2564607 -1.092367411 -0.2276009 -1.12692809 -0.19925883 -1.16152382
		 -0.16983625 -1.1951468 -0.13948303 -1.22982049 -0.11004743 -1.26557386 -0.07863988
		 -1.2997663 -0.047001541 -1.33507276 -0.01716404 -1.37177587 0.014155805 -1.40792763
		 0.044594295 -1.44474196 0.07579425 -1.47940564 0.10698183 -1.51375008 0.13481769
		 -1.55007493 0.16409528 -1.5843811 0.19522876 -1.61870384 0.22543478 -1.65362108 0.25736588
		 -1.68762183 0.29011589 -1.72156835 0.32487929 -1.75389862 0.38432184 0.8436476 0.37440476
		 0.86621535 0.35969052 0.88612115 0.3405064 0.90085769 0.31762823 0.90879345 0.29325792
		 0.90964043 0.26871517 0.90373051 0.24562785 0.89511931 0.23025419 0.87954462 0.21490645
		 0.85739672 0.20361215 0.83139825 0.19679779 0.80869341 0.19820642 0.78464389 0.21014082
		 0.76244736 0.23007992 0.74490714 0.25233534 0.72920179 0.27423629 0.71993172 0.29786047
		 0.72265947 0.32197019 0.73057604 0.34301934 0.74153078 0.36050847 0.75743818 0.37526861
		 0.7761544 0.38516679 0.79720843 0.38823387 0.82017386 -0.28359717 -0.069133162 0.11218351
		 0.064945698 0.097799003 0.056955993 0.083105683 0.049814463 0.067752853 0.043179214
		 0.051539481 0.036721677 0.035112083 0.030667096 0.018476784 0.024399579 0.00022268295
		 0.018184841 -0.016949981 0.012588561 -0.033995867 0.0064994991 -0.053861693 -0.00052270293
		 -0.073347837 -0.0069914758 -0.091329604 -0.013641566 -0.10888338 -0.01962465 -0.12590532
		 -0.025494516 -0.14647424 -0.032625347 -0.16581705 -0.039454877 -0.18117929 -0.044578493
		 -0.19849792 -0.050421655 -0.21639465 -0.055618405 -0.23346812 -0.06020695 -0.25011203
		 -0.064285606 -0.26674554 -0.067249745 0.30420867 0.44797587 0.27904674 0.44498843
		 0.109595 0.069038451 0.12331134 0.077992052 0.25640741 0.43600619 0.095383584 0.06117025
		 0.23790434 0.42114431 0.08088398 0.054109991 0.22474095 0.40132254 0.065694824 0.047545522
		 0.21619856 0.37856299 0.0496158 0.041144252 0.21147084 0.35490376 0.033270895 0.035123974
		 0.21291292 0.33072537 0.016718626 0.02890116;
	setAttr ".uvtk[1000:1249]" 0.21854603 0.30543047 -0.001437664 0.022713035 0.22856119
		 0.28312284 -0.018593818 0.017136037 0.2483252 0.26872271 -0.035623848 0.011036545
		 0.27379301 0.25748247 -0.055441231 0.0040394664 0.29969135 0.24912068 -0.074900657
		 -0.0024387538 0.32565889 0.25033304 -0.092884362 -0.0090387464 0.34760228 0.26184946
		 -0.11035135 -0.015043825 0.36369833 0.27986604 -0.12727816 -0.020873368 0.38043275
		 0.30364817 -0.14789371 -0.028000653 0.39188507 0.32876664 -0.16721489 -0.034843743
		 0.39742962 0.35039735 -0.1824466 -0.03991133 0.39275727 0.37520778 -0.19968687 -0.045745552
		 0.38503012 0.39980817 -0.21743655 -0.050891906 0.37143782 0.4207781 -0.23438174 -0.055478483
		 0.35236385 0.43668658 -0.25086972 -0.059478074 0.32925877 0.44570673 -0.26730797
		 -0.062432349 0.27740547 0.45133805 0.30391416 0.4547801 0.37979445 0.86952949 0.39046106
		 0.84547365 0.33077112 0.45210332 0.36427984 0.89060915 0.35571936 0.44236183 0.34356359
		 0.90652454 0.37636015 0.425147 0.3188028 0.91511285 0.3909708 0.40260893 0.2926074
		 0.9160217 0.39908132 0.37679172 0.266853 0.90981901 0.40409181 0.35018229 0.24209002
		 0.90058362 0.39804938 0.32660276 0.22533759 0.88361061 0.38610289 0.30039531 0.20932961
		 0.86050475 0.36878642 0.27578944 0.19764078 0.83360839 0.35165462 0.25662571 0.19038677
		 0.80946052 0.32740417 0.24390027 0.19194305 0.78287077 0.29882321 0.24256477 0.20508868
		 0.75842381 0.27147976 0.25139007 0.22614309 0.73990643 0.24505922 0.26305073 0.24923012
		 0.72361445 0.22333845 0.27887517 0.27330962 0.71342289 0.21234292 0.30335349 0.29924604
		 0.71642292 0.20644891 0.32980543 0.32445619 0.72470415 0.20492393 0.35534918 0.34668973
		 0.73627746 0.20992029 0.38035727 0.36517224 0.75308967 0.21891278 0.40431201 0.38070592
		 0.77278435 0.2330475 0.42559153 0.39133444 0.79538548 0.25310025 0.44169575 0.39466015
		 0.82027364 -0.18462396 -0.94748616 -0.20517266 -0.91455197 -0.1624659 -0.97962397
		 -0.13842449 -1.011484861 -0.11259952 -1.043932915 -0.085488886 -1.075429201 -0.058388233
		 -1.10773182 -0.029285371 -1.14253759 -0.00097516179 -1.17461133 0.027495913 -1.20679569
		 0.059587151 -1.24411988 0.0912489 -1.28030705 0.12005302 -1.31567097 0.14899614 -1.34822106
		 0.17718184 -1.38016653 0.21072802 -1.41799831 0.24109083 -1.45509648 0.26560342 -1.48486257
		 0.2940256 -1.51704812 0.32377625 -1.5489285 0.35203058 -1.57909775 0.38146079 -1.60690618
		 0.41127402 -1.63238358 -0.22312894 -0.87927103 0.14584401 1.051659465 0.47285232
		 1.1169945 0.47152391 1.15735841 0.46690401 1.19782972 0.45867571 1.23733449 0.44695517
		 1.27481449 0.43202028 1.30925965 0.41423479 1.33973789 0.39402053 1.36542189 0.3718445
		 1.38561213 0.3482078 1.39975858 0.3236371 1.40747464 0.29867545 1.40854967 0.27387276
		 1.40295315 0.24977741 1.39083672 0.226926 1.37252891 0.20583588 1.34852588 0.18699616
		 1.31947792 0.17086133 1.28616929 0.15784302 1.24949837 0.14830014 1.21045065 0.1425221
		 1.17007065 0.14067107 1.12943208 0.14252716 1.089607358 0.45154956 1.45708036 0.43081328
		 1.46205223 0.47025397 1.44708776 0.48584557 1.43280935 0.49742377 1.41515779 0.50430888
		 1.39521778 0.50609094 1.37420511 0.50266486 1.35340035 0.49424052 1.33407319 0.4813326
		 1.31740379 0.46472988 1.3044107 0.44544682 1.29588842 0.42466226 1.29235768 0.40364662
		 1.2940346 0.38368455 1.30081689 0.36599615 1.31229067 0.3516632 1.32775521 0.34156284
		 1.34626663 0.33631435 1.366696 0.33624378 1.38779759 0.3413668 1.4082849 0.3513923
		 1.42690325 0.36574677 1.44249451 0.38360462 1.45404041 0.44287658 -1.65512109 0.36197126
		 -1.78375793 -0.41474628 -0.97346771 0.31600595 -1.8336823 0.35841084 -1.78911328
		 -0.60089552 -1.14129364 0.11895615 -1.99006391 -0.55376601 -1.092101574 0.17588121
		 -1.95246708 -0.025912821 -2.052001238 0.12599307 0.073963821 0.16900748 0.017704859
		 0.17983371 -0.0033582002 0.20841709 -0.079407632 0.21493104 -0.10663304 0.22008982
		 -0.17688036 0.30375013 0.44150352 -0.28404832 -0.064322591 0.32744327 0.43922812
		 0.34887281 0.43094009 0.36652014 0.4161883 0.37905583 0.39669406 0.38616678 0.37371802
		 0.39063087 0.35070628 0.38541546 0.33095008 0.37465712 0.30735964 0.35893437 0.28482825
		 0.3442879 0.26797241 0.32393906 0.25710899 0.30005172 0.25612801 0.27589032 0.26418477
		 0.25198671 0.27472907 0.23369463 0.28795201 0.2247276 0.30871743 0.21969289 0.33239383
		 0.21842766 0.3548317 0.22287855 0.37676227 0.2307256 0.39792913 0.24277684 0.41633725
		 0.25980952 0.43011111 0.28076658 0.43844002 0.3030692 0.46158618 0.37425902 0.86632967
		 0.30403998 0.44823444 0.30409107 0.45452178 0.3039104 0.4412455 0.27652285 0.45813936
		 0.25057492 0.44807208 0.22877249 0.43095452 0.21319097 0.40809339 0.20348477 0.3827287
		 0.19819212 0.35666078 0.19960761 0.32932121 0.20565802 0.30181628 0.21706045 0.27611119
		 0.24101195 0.25751382 0.26876178 0.24509284 0.29668877 0.23604655 0.32760212 0.23704338
		 0.3548359 0.25054953 0.37393138 0.27124983 0.39157888 0.29626387 0.40436718 0.32392877
		 0.41072127 0.34842312 0.4058117 0.37811249 0.39750788 0.40468371 0.38212433 0.42886299
		 0.36011985 0.4476223 0.33329347 0.45848095 0.30469683 0.4613533 0.37994441 0.86940813
		 0.24881896 0.44705367 0.22734085 0.42939585 0.21251154 0.40677428 0.20320427 0.38174808
		 0.19807768 0.35494125 0.19974953 0.32833666 0.20610625 0.30049795 0.21937227 0.27327842
		 0.24229202 0.2567752 0.26936647 0.24486479 0.29921117 0.23571694 0.3306863 0.23787668
		 0.35672191 0.25200364 0.37429866 0.27170378 0.392427 0.29773813 0.40465984 0.32476777
		 0.41081932 0.35151786 0.40563759 0.37880564 0.39672408 0.40634239 0.38072833 0.43043417
		 0.35821095 0.44875157 0.33138797 0.45893377 0.27489051 0.45771867 0.15841112 1.051048398
		 0.33737519 1.51341534 0.15315148 1.05121243 0.47338286 1.077936292;
	setAttr ".uvtk[1250:1322]" 0.40509078 1.45438862 0.40390208 1.46069634 0.40637669
		 1.44746673 0.40770128 1.44028091 0.40901068 1.43320119 0.41025904 1.42658949 0.41140696
		 1.42077255 0.41241679 1.41600978 0.41325107 1.41245532 0.10199255 1.51591659 0.10003647
		 1.51578307 0.097498983 1.51526284 0.093745828 1.51417875 0.088679194 1.51243019 0.082391277
		 1.51008618 0.075092748 1.50736833 0.06709446 1.50457358 0.05879049 1.50199544 0.050629705
		 1.49986255 0.043073665 1.49829519 0.03654357 1.49729252 0.031361975 1.49675751 0.027670499
		 1.49655461 0.25617138 1.53204274 0.2564542 1.52299285 0.41390648 1.41007102 0.25417182
		 1.54163408 0.25054452 1.55127287 0.24550214 1.56052589 0.23923883 1.56907928 0.23193069
		 1.57671356 0.22374472 1.58327675 0.21484381 1.58866394 0.20538801 1.5928036 0.19553488
		 1.595649 0.18543941 1.59717214 0.17525503 1.59736013 0.16513363 1.59621358 0.15522805
		 1.59374559 0.1456916 1.58998322 0.13667935 1.58496952 0.12834859 1.57876897 0.1208569
		 1.57147169 0.11436209 1.56320369 0.10902017 1.5541389 0.10498625 1.54451609 0.10241312
		 1.53466034 0.10143745 1.52499115 0.025195416 1.49659204 0.45699909 1.07572031 0.33100995
		 1.53919637 0.3239533 1.56137741 0.31486204 1.58128142 0.30368134 1.59903717 0.29065505
		 1.61461306 0.2760956 1.62796736 0.260317 1.63908052 0.2436091 1.64795852 0.22622833
		 1.6546247 0.20839846 1.65911174 0.19031411 1.66145015 0.17215022 1.66166234 0.15407303
		 1.65975618 0.13625067 1.65572596 0.11886619 1.64955294 0.10212702 1.64121199 0.086275131
		 1.63068056 0.071591482 1.6179502 0.058397397 1.60303879 0.047046911 1.58599973 0.037907802
		 1.56692338 0.031309702 1.5459094 0.027373906 1.52291656;
createNode polySoftEdge -n "polySoftEdge8";
	rename -uid "26978F02-8F4D-13B3-1A6F-DB973327DCE2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "F0526AF4-EB48-42C8-0CAC-0EAC11CEACF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:101]";
	setAttr ".ix" -type "matrix" 2.8303257675804376 0 0 0 0 2.8303257675804376 0 0 0 0 2.8303257675804376 0
		 0.00015816180596051521 1.9937504217191251 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -8.6545944213867188e-05 3.9817637801170349 0 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 8.0107431411743164 8.0028296709060669 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak1";
	rename -uid "16E5154F-CB4B-9251-95C1-22AF70457EB0";
	setAttr ".uopa" yes;
	setAttr -s 112 ".tk[0:111]" -type "float3"  -0.7319724 1.6178869 -0.73213005
		 0.73228878 1.6178869 -0.73213005 0.73228878 1.6178869 0.73213005 -0.7319724 1.6178869
		 0.73213005 0.73228878 -0.21063031 -0.73213005 -0.7319724 -0.21063031 -0.73213005
		 -0.7319724 -0.21063031 0.73213005 0.73228878 -0.21063031 0.73213005 0.91500479 -0.026249241
		 -0.73213005 0.91500479 -0.026249241 0.73213005 0.91500479 1.438012 0.73213005 0.91500479
		 1.438012 -0.73213005 0.91500479 1.6178869 0.73213005 0.91500479 1.6178869 -0.73213005
		 0.91500479 -0.21063031 -0.73213005 0.91500479 -0.21063031 0.73213005 -0.91500491
		 -0.026249241 0.73213005 -0.91500491 -0.026249241 -0.73213005 -0.91500491 1.438012
		 -0.73213005 -0.91500491 1.438012 0.73213005 -0.91500491 1.6178869 -0.73213005 -0.91500491
		 1.6178869 0.73213005 -0.91500491 -0.21063031 0.73213005 -0.91500491 -0.21063031 -0.73213005
		 0.73228878 -0.026249241 0.91516268 -0.7319724 -0.026249241 0.91516268 -0.7319724
		 1.438012 0.91516268 0.73228878 1.438012 0.91516268 -0.7319724 1.6178869 0.91516268
		 0.73228878 1.6178869 0.91516268 0.73228878 -0.21063031 0.91516268 -0.7319724 -0.21063031
		 0.91516268 0.91500479 1.438012 0.91516268 0.91500479 -0.026249241 0.91516268 0.91500479
		 1.6178869 0.91516268 0.91500479 -0.21063031 0.91516268 -0.91500491 1.438012 0.91516268
		 -0.91500491 1.6178869 0.91516268 -0.91500491 -0.026249241 0.91516268 -0.91500491
		 -0.21063031 0.91516268 -0.7319724 -0.026249241 -0.91516268 0.73228878 -0.026249241
		 -0.91516268 0.73228878 1.438012 -0.91516268 -0.7319724 1.438012 -0.91516268 0.73228878
		 1.6178869 -0.91516268 -0.7319724 1.6178869 -0.91516268 -0.7319724 -0.21063031 -0.91516268
		 0.73228878 -0.21063031 -0.91516268 0.91500479 1.438012 -0.91516268 0.91500479 1.6178869
		 -0.91516268 0.91500479 -0.026249241 -0.91516268 0.91500479 -0.21063031 -0.91516268
		 -0.91500491 1.438012 -0.91516268 -0.91500491 -0.026249241 -0.91516268 -0.91500491
		 1.6178869 -0.91516268 -0.91500491 -0.21063031 -0.91516268 -0.84715015 -0.026249241
		 0.73213005 -0.84715015 -0.026249241 -0.73213005 -0.84715015 1.438012 -0.73213005
		 -0.84715015 1.438012 0.73213005 -0.7319724 -0.026249241 -0.84730893 0.73228878 -0.026249241
		 -0.84730893 0.73228878 1.438012 -0.84730893 -0.7319724 1.438012 -0.84730893 0.84715003
		 -0.026249241 -0.73213005 0.84715003 -0.026249241 0.73213005 0.84715003 1.438012 0.73213005
		 0.84715003 1.438012 -0.73213005 0.73228878 -0.026249241 0.84730893 -0.7319724 -0.026249241
		 0.84730893 -0.7319724 1.438012 0.84730893 0.73228878 1.438012 0.84730893 -0.7319724
		 1.55003321 -0.73213005 0.73228878 1.55003321 -0.73213005 0.73228878 1.55003321 0.73213005
		 -0.7319724 1.55003321 0.73213005 0.73228878 -0.14277665 -0.73213005 -0.7319724 -0.14277665
		 -0.73213005 -0.7319724 -0.14277665 0.73213005 0.73228878 -0.14277665 0.73213005 -0.74673408
		 0.00025892723 0.81976318 -0.89112562 0.00025892723 0.81976318 -0.7561745 1.5035938
		 -0.67436028 -0.90056598 1.5035938 -0.67436028 -0.89112562 -0.092926107 0.66284764
		 -0.74673408 -0.092926107 0.66284764 -0.90056598 1.41040909 -0.83127636 -0.7561745
		 1.41040909 -0.83127636 0.68260086 -0.12836246 0.76416141 0.68260086 -0.12836246 0.8904537
		 0.82743847 0.016473772 0.76416141 0.82743847 0.016473772 0.8904537 -0.82158756 1.37582624
		 0.8904537 -0.82158756 1.37582624 0.76416141 -0.67675078 1.52066219 0.8904537 -0.67675078
		 1.52066219 0.76416141 0.89807194 -0.13561265 -0.68427503 0.80900639 -0.13561265 -0.68427503
		 0.89807194 1.37963235 0.83097053 0.80900639 1.37963235 0.83097053 0.80900639 0.025833678
		 -0.84572154 0.89807194 0.025833678 -0.84572154 0.80900639 1.54107916 0.6695236 0.89807194
		 1.54107916 0.6695236 0.82843077 1.39092124 -0.76230907 -0.69131434 -0.12882392 -0.76230907
		 0.68705779 1.53229392 -0.76230907 -0.83268732 0.012548865 -0.76230907 -0.69131434
		 -0.12882392 -0.8841691 0.82843077 1.39092124 -0.8841691 -0.83268732 0.012548865 -0.8841691
		 0.68705779 1.53229392 -0.8841691;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "16CB6117-4C4C-07E6-59D9-C98E05C4B7EB";
	setAttr ".uopa" yes;
	setAttr -s 96 ".uvtk[0:95]" -type "float2" 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764 0 1.086518764
		 -0.0066657797 -1.11651468 -0.0066657797 -1.11651468 -0.0066657611 -1.11651468 -0.0066657611
		 -1.11651468 -0.0066657797 -1.11651468 -0.0066657797 -1.11651468 -0.0066657648 -1.11651468
		 -0.0066657648 -1.11651468 -0.27045918 0 -0.27045918 0 -0.27045918 0 -0.27045918 0
		 -0.27045918 0 -0.27045918 0 -0.27045918 0 -0.27045918 0;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "ECBB1D44-B945-8503-83F8-2EADB887E86A";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[90:95]";
	setAttr ".ix" -type "matrix" 2.8303257675804376 0 0 0 0 2.8303257675804376 0 0 0 0 2.8303257675804376 0
		 0.00015816180596051521 1.9937504217191251 0 1;
	setAttr ".s" -type "double3" 7.3383401602767737 7.3383401602767737 7.3383401602767737 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "40451503-4D48-17B8-53B1-1B9C32585811";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[108:111]" -type "float2" -0.58265203 -0.44200361 -0.48829094
		 -0.48989362 -0.03882416 0.39572364 -0.13318515 0.44361341;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "E37F36BF-3045-9CE3-9975-4AA1B924041A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[187]";
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "5DA2E60F-BC44-BBCF-3574-DB932509937C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[104:107]" -type "float2" 0.34602708 0.0067217071 0.44100213
		 0.05394771 -0.0022317395 0.94532704 -0.097206682 0.89810133;
createNode polyMapSew -n "polyMapSew2";
	rename -uid "DF2BB0C5-4446-D4BF-163E-B3B144E5628E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[185]";
createNode polyMapCut -n "polyMapCut18";
	rename -uid "41FB3ECF-2E45-54ED-FE28-BEA5CE989A30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[192:203]";
createNode polyMapCut -n "polyMapCut19";
	rename -uid "2127C233-264A-DEA7-7876-CD8827895A8E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[180:184]" "e[186]" "e[188:191]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "243AD5E5-6F4D-03D4-B146-6FAFFB3535DE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[112]" -type "float2" 0.46068582 -0.00032615568 ;
	setAttr ".uvtk[114]" -type "float2" 0.51780879 0.89617765 ;
	setAttr ".uvtk[136]" -type "float2" 0.46509746 0.89643693 ;
	setAttr ".uvtk[138]" -type "float2" 0.51339716 -0.00058543589 ;
createNode polyMapSew -n "polyMapSew3";
	rename -uid "459D2DC0-E048-7E79-B4A3-A0B07833D7EB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[183]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "6520C899-3943-AFA0-996E-CE928C45C7A8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[112]" -type "float2" 0.38623995 -0.05277786 ;
	setAttr ".uvtk[115]" -type "float2" 0.38729975 0.049472187 ;
	setAttr ".uvtk[116]" -type "float2" 0.39159173 0.051559869 ;
	setAttr ".uvtk[137]" -type "float2" 0.38194796 -0.054865543 ;
createNode polyMapSew -n "polyMapSew4";
	rename -uid "3F695AB5-A74E-8581-3746-7AA40541CE6F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[184]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "CB0CD93B-5547-FFCD-C1FB-BE9801936482";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[114]" -type "float2" -0.0039971061 0.0051895753 ;
	setAttr ".uvtk[115]" -type "float2" 0.0039971056 -0.0051895762 ;
	setAttr ".uvtk[116]" -type "float2" -0.00024465472 -0.0037257802 ;
	setAttr ".uvtk[133]" -type "float2" 0.00024465483 0.003725782 ;
createNode polyMapSew -n "polyMapSew5";
	rename -uid "30780817-8342-7A23-FECA-38B38D709A79";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[182]";
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "54BD9331-494A-B7EA-76DC-C4AE1C35A19F";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[104]" -type "float2" -0.01460439 -0.27772337 ;
	setAttr ".uvtk[105]" -type "float2" -0.01578629 -0.25864947 ;
	setAttr ".uvtk[106]" -type "float2" 0.036702961 0.31935292 ;
	setAttr ".uvtk[107]" -type "float2" -0.19514999 -0.14738619 ;
	setAttr ".uvtk[108]" -type "float2" -0.018337488 -0.31012684 ;
	setAttr ".uvtk[109]" -type "float2" -0.0099866986 -0.28681082 ;
	setAttr ".uvtk[110]" -type "float2" -0.18192247 -0.15335679 ;
	setAttr ".uvtk[111]" -type "float2" -0.19349279 -0.16957253 ;
	setAttr ".uvtk[112]" -type "float2" 0.011230677 -0.29029346 ;
	setAttr ".uvtk[113]" -type "float2" 0.055405229 0.32772854 ;
	setAttr ".uvtk[114]" -type "float2" 0.29188684 0.89220655 ;
	setAttr ".uvtk[115]" -type "float2" 0.2457578 0.88350737 ;
	setAttr ".uvtk[132]" -type "float2" -0.024884194 -0.24790563 ;
	setAttr ".uvtk[133]" -type "float2" 0.013180822 -0.28097039 ;
createNode polyMapCut -n "polyMapCut20";
	rename -uid "231BD046-3E4F-780F-A1A9-C48720248311";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[182]";
createNode polyMapSew -n "polyMapSew6";
	rename -uid "901D268B-B040-69D0-4A51-6F8699E12BFC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[191]";
createNode polyMapCut -n "polyMapCut21";
	rename -uid "FA771436-C24E-1FE0-484F-55AD189B775D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[184]";
createNode polyMapSew -n "polyMapSew7";
	rename -uid "75D5EA50-7A49-AB38-A7A6-11B754C79EC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[188]";
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "A791ACA9-EE41-3195-8DF6-FEB0ECF79630";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[88]" -type "float2" 0.6625821 -0.0086801117 ;
	setAttr ".uvtk[89]" -type "float2" 0.6625821 -0.0086801117 ;
	setAttr ".uvtk[90]" -type "float2" 0.6625821 -0.0086801173 ;
	setAttr ".uvtk[91]" -type "float2" 0.6625821 -0.0086801173 ;
	setAttr ".uvtk[92]" -type "float2" 0.6625821 -0.0086800894 ;
	setAttr ".uvtk[93]" -type "float2" 0.6625821 -0.0086800894 ;
	setAttr ".uvtk[94]" -type "float2" 0.6625821 -0.0086800894 ;
	setAttr ".uvtk[95]" -type "float2" 0.6625821 -0.0086800894 ;
	setAttr ".uvtk[104]" -type "float2" -0.95592833 0.21189541 ;
	setAttr ".uvtk[105]" -type "float2" -0.9305144 0.23217368 ;
	setAttr ".uvtk[106]" -type "float2" -0.76641113 0.22879082 ;
	setAttr ".uvtk[107]" -type "float2" -0.79182506 0.2085125 ;
	setAttr ".uvtk[108]" -type "float2" -0.96135992 0.23938639 ;
	setAttr ".uvtk[109]" -type "float2" -0.9574526 0.21961001 ;
	setAttr ".uvtk[110]" -type "float2" -0.7718426 0.25628173 ;
	setAttr ".uvtk[111]" -type "float2" -0.77574998 0.2760582 ;
	setAttr ".uvtk[112]" -type "float2" -0.88547236 0.25392509 ;
	setAttr ".uvtk[113]" -type "float2" -0.76488692 0.22107625 ;
	setAttr ".uvtk[114]" -type "float2" -0.83686703 0.1867612 ;
	setAttr ".uvtk[131]" -type "float2" -0.95049685 0.18440434 ;
	setAttr ".uvtk[132]" -type "float2" -0.78994644 0.24709409 ;
	setAttr ".uvtk[133]" -type "float2" -0.93239307 0.19359212 ;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "D080FF7D-8B44-AD5E-4CAE-A89830CC45F2";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[84:89]";
	setAttr ".ix" -type "matrix" 2.8303257675804376 0 0 0 0 2.8303257675804376 0 0 0 0 2.8303257675804376 0
		 0.00015816180596051521 1.9937504217191251 0 1;
	setAttr ".s" -type "double3" 7.2172536449134057 7.2172536449134057 7.2172536449134057 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "47C42FCC-C746-4818-CB90-DC946DC34169";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[130:133]" -type "float2" 0.24428253 -0.40754867 -0.20887108
		 -0.22008 -0.22692229 -0.26371357 0.22623114 -0.45118243;
createNode polyMapCut -n "polyMapCut22";
	rename -uid "6992CB9E-4D40-F90D-BFDA-8186A7A78E0B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[168:172]" "e[174]" "e[176:179]";
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "F91D2053-AA4E-10F1-388E-E08ADA77784B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[135]" -type "float2" 0.72596526 0.053094748 ;
	setAttr ".uvtk[138]" -type "float2" 0.74386764 0.23624252 ;
	setAttr ".uvtk[139]" -type "float2" 0.72847283 0.23645304 ;
	setAttr ".uvtk[149]" -type "float2" 0.74136007 0.052884344 ;
createNode polyMapSew -n "polyMapSew8";
	rename -uid "67106FD7-0E4C-11D6-9ABE-489770EE10F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[177]";
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "90D87A84-6548-2FDE-F50B-509A350486EA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[126:129]" -type "float2" 0.75126547 0.27770445 0.29544491
		 0.090243593 0.31349558 0.046353083 0.76931584 0.23381405;
createNode polyMapSew -n "polyMapSew9";
	rename -uid "A3C6535E-6247-838C-B2DD-65843DC4FFDF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[176]";
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "C6148F40-B84A-56BC-5483-07B2C40B7212";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[126]" -type "float2" -0.19964264 0.0057867542 ;
	setAttr ".uvtk[127]" -type "float2" -0.19964264 0.0057867467 ;
	setAttr ".uvtk[128]" -type "float2" -0.19964264 0.0057867467 ;
	setAttr ".uvtk[129]" -type "float2" -0.19964264 0.0057867542 ;
	setAttr ".uvtk[130]" -type "float2" -0.19964264 0.0057867467 ;
	setAttr ".uvtk[131]" -type "float2" -0.19964264 0.0057867542 ;
	setAttr ".uvtk[132]" -type "float2" -0.19964264 0.0057867542 ;
	setAttr ".uvtk[133]" -type "float2" -0.19964264 0.0057867467 ;
	setAttr ".uvtk[136]" -type "float2" 0.70757031 0.074197367 ;
	setAttr ".uvtk[137]" -type "float2" 0.69282162 0.24986023 ;
	setAttr ".uvtk[138]" -type "float2" 0.70757031 0.24986023 ;
	setAttr ".uvtk[144]" -type "float2" 0.69282162 0.074197367 ;
createNode polyMapSew -n "polyMapSew10";
	rename -uid "85D68C51-C74E-926A-2687-BE83963CDB2D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[178]";
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "29F1ECEA-8E46-4584-88C4-F7A3F6C87952";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[126]" -type "float2" 0.089603901 0.11344039 ;
	setAttr ".uvtk[127]" -type "float2" 0.092906415 -0.11185154 ;
	setAttr ".uvtk[128]" -type "float2" 0.10753632 -0.1083886 ;
	setAttr ".uvtk[129]" -type "float2" 0.10387248 0.11485201 ;
	setAttr ".uvtk[130]" -type "float2" 0.1103676 -0.11300939 ;
	setAttr ".uvtk[131]" -type "float2" 0.10896182 0.11227852 ;
	setAttr ".uvtk[132]" -type "float2" -0.025343895 0.13024348 ;
	setAttr ".uvtk[133]" -type "float2" -0.025192082 -0.098892018 ;
	setAttr ".uvtk[136]" -type "float2" -0.25171196 -0.087001383 ;
	setAttr ".uvtk[137]" -type "float2" -0.25214535 0.14803702 ;
	setAttr ".uvtk[138]" -type "float2" 0.2039884 0.31673998 ;
	setAttr ".uvtk[139]" -type "float2" 0.24621539 0.38132268 ;
	setAttr ".uvtk[140]" -type "float2" 0.17214976 0.42974994 ;
	setAttr ".uvtk[141]" -type "float2" 0.12992288 0.3651672 ;
createNode polyMapSew -n "polyMapSew11";
	rename -uid "150EDF97-D84D-DC88-F94E-A0B354D7B816";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[175]";
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "4C0ACE77-B04A-CB7D-48F1-93B90ACAA72D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[134]" -type "float2" 0.51674938 -0.14105991 ;
	setAttr ".uvtk[135]" -type "float2" 0.61745238 -0.026755668 ;
	setAttr ".uvtk[140]" -type "float2" 0.51733673 -0.026243545 ;
	setAttr ".uvtk[141]" -type "float2" 0.6168651 -0.14157203 ;
createNode polyMapSew -n "polyMapSew12";
	rename -uid "0A2371CE-7C44-8C8C-B83C-2985D86D046D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[169]";
createNode polyTweakUV -n "polyTweakUV25";
	rename -uid "F9E5EDE9-9248-FA2D-8C24-1788D8203126";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[126:139]" -type "float2" -1.056004047 -0.41463411
		 -1.047828674 1.059702396 -1.1897912 1.060489058 -1.1979661 -0.41384745 -0.95461309
		 1.10184503 -0.96433926 -0.41992477 -0.82690704 -0.42315695 -0.85450697 1.065418124
		 -0.88630015 1.18023789 -0.73080623 1.05794394 -0.73898196 -0.41639221 -0.96494299
		 -0.52558959 -0.83204067 -0.53126675 -0.82805055 1.1081717;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "DF66CC08-104F-CA76-B7AE-40BC5DE00DAC";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[96:99]";
	setAttr ".ix" -type "matrix" 2.8303257675804376 0 0 0 0 2.8303257675804376 0 0 0 0 2.8303257675804376 0
		 0.00015816180596051521 1.9937504217191251 0 1;
	setAttr ".s" -type "double3" 7.2701756860072955 7.2701756860072955 7.2701756860072955 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSew -n "polyMapSew13";
	rename -uid "48C2144D-C645-5324-9FB1-91822E80EE73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[198]";
createNode polyMapSew -n "polyMapSew14";
	rename -uid "9141C0F7-E94E-2888-8EB2-CA8865A60465";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[196]";
createNode polyTweakUV -n "polyTweakUV26";
	rename -uid "555ADA7A-6943-DDF1-9EAF-0DA5FC7CBF6B";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[128:135]" -type "float2" 0.13963687 -0.23137474 -0.22264916
		 0.25451922 -0.28612828 0.22081786 0.076157749 -0.26507583 0.37878972 0.050117552
		 -0.21046484 0.082074165 -0.23229831 -0.039560795 0.35695624 -0.071517408;
createNode polyMapSew -n "polyMapSew15";
	rename -uid "29B093C1-294D-35B5-F2F7-A5B9A3A0A7F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[192]";
createNode polyTweakUV -n "polyTweakUV27";
	rename -uid "99017A30-B949-215E-0AD5-D08794C00C0D";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[124:133]" -type "float2" -0.43279463 0.26261079 0.47014397
		 -0.043154955 0.91974783 0.11626348 -0.50478667 0.89194459 0.10200405 -0.091679186
		 -0.27933872 -0.25582898 -0.26406893 -0.29130292 0.11727387 -0.12715319 -0.25476182
		 -0.31292468 0.12658101 -0.14877495;
createNode polyMapSew -n "polyMapSew16";
	rename -uid "EFAAD965-9A4E-EEC8-8B74-0AB36C5AD508";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[199]";
createNode polyMapSew -n "polyMapSew17";
	rename -uid "98CE208D-7C4D-C237-82BC-EE91F1ADB814";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[197]";
createNode polyTweakUV -n "polyTweakUV28";
	rename -uid "2CB03716-634E-63B3-48F2-0BA6E61A549D";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[80]" -type "float2" 0.0326345 1.1585238 ;
	setAttr ".uvtk[81]" -type "float2" 0.0326345 1.1585238 ;
	setAttr ".uvtk[82]" -type "float2" 0.032634471 1.1585238 ;
	setAttr ".uvtk[83]" -type "float2" 0.032634471 1.1585238 ;
	setAttr ".uvtk[84]" -type "float2" 0.0326345 1.1585238 ;
	setAttr ".uvtk[85]" -type "float2" 0.0326345 1.1585238 ;
	setAttr ".uvtk[86]" -type "float2" 0.032634471 1.1585238 ;
	setAttr ".uvtk[87]" -type "float2" 0.032634471 1.1585238 ;
	setAttr ".uvtk[88]" -type "float2" -1.6672525 -0.55429757 ;
	setAttr ".uvtk[89]" -type "float2" -1.6123127 1.042253 ;
	setAttr ".uvtk[90]" -type "float2" -1.6814094 0.7772873 ;
	setAttr ".uvtk[91]" -type "float2" -1.121398 -0.33296689 ;
	setAttr ".uvtk[103]" -type "float2" -1.6097796 -0.4767707 ;
	setAttr ".uvtk[104]" -type "float2" -1.6089716 0.86130077 ;
	setAttr ".uvtk[105]" -type "float2" -1.6697854 0.96472603 ;
	setAttr ".uvtk[106]" -type "float2" -1.1938357 -0.41698045 ;
	setAttr ".uvtk[124]" -type "float2" -0.70698458 -0.36985433 ;
	setAttr ".uvtk[125]" -type "float2" -1.6798568 0.56971782 ;
	setAttr ".uvtk[126]" -type "float2" -1.7672592 0.47921732 ;
	setAttr ".uvtk[127]" -type "float2" -0.79438716 -0.46035483 ;
	setAttr ".uvtk[128]" -type "float2" -0.51303631 -0.16903237 ;
	setAttr ".uvtk[129]" -type "float2" -1.4859085 0.7705397 ;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "6DD33F90-1641-5443-C537-B998913C7957";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[78:83]";
	setAttr ".ix" -type "matrix" 2.8303257675804376 0 0 0 0 2.8303257675804376 0 0 0 0 2.8303257675804376 0
		 0.00015816180596051521 1.9937504217191251 0 1;
	setAttr ".s" -type "double3" 7.2260658874687458 7.2260658874687458 7.2260658874687458 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapCut -n "polyMapCut23";
	rename -uid "1A0640EA-6745-3E6D-EA01-A38C78F978A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[156:167]";
createNode polyMapSew -n "polyMapSew18";
	rename -uid "790D7B1A-474B-1BE0-8078-FD8FD52E8F66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[159]";
createNode polyMapSew -n "polyMapSew19";
	rename -uid "6E1AAF88-D742-296E-9EDD-41A0398F5AA0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[161]";
createNode polyTweakUV -n "polyTweakUV29";
	rename -uid "A63FECE4-A147-1D96-65B6-99A10A0E0E55";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[122]" -type "float2" -0.084600106 -0.26380244 ;
	setAttr ".uvtk[123]" -type "float2" -0.0004633069 -0.46540642 ;
	setAttr ".uvtk[124]" -type "float2" -0.095603123 0.47680411 ;
	setAttr ".uvtk[125]" -type "float2" -0.17974001 0.22939849 ;
	setAttr ".uvtk[131]" -type "float2" 0.055221412 0.74637389 ;
	setAttr ".uvtk[134]" -type "float2" 0.12498189 -0.28586107 ;
	setAttr ".uvtk[139]" -type "float2" -0.19746543 0.20733976 ;
	setAttr ".uvtk[140]" -type "float2" 0.37766865 -0.64484632 ;
createNode polyMapSew -n "polyMapSew20";
	rename -uid "69B6E232-BC4B-86D4-3546-A7ADC884E654";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[157]";
createNode polyTweakUV -n "polyTweakUV30";
	rename -uid "09B5472E-A64B-6FAD-F461-9DA8CD394BA8";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[122]" -type "float2" 0.35454565 0.06320639 ;
	setAttr ".uvtk[123]" -type "float2" 0.35138699 0.10452873 ;
	setAttr ".uvtk[124]" -type "float2" -0.12298159 0.18602866 ;
	setAttr ".uvtk[125]" -type "float2" -0.11982302 0.14470637 ;
	setAttr ".uvtk[126]" -type "float2" 0.086215436 -0.43552899 ;
	setAttr ".uvtk[127]" -type "float2" -0.054489791 -1.0102377 ;
	setAttr ".uvtk[128]" -type "float2" -0.39669091 0.46248287 ;
	setAttr ".uvtk[129]" -type "float2" -0.32206929 0.34158111 ;
	setAttr ".uvtk[130]" -type "float2" 0.74556571 -0.62511659 ;
	setAttr ".uvtk[131]" -type "float2" 0.5525766 -0.69676161 ;
	setAttr ".uvtk[132]" -type "float2" 0.67676181 -0.76007378 ;
	setAttr ".uvtk[133]" -type "float2" 0.34913754 0.030866325 ;
	setAttr ".uvtk[138]" -type "float2" -0.12523112 0.11236632 ;
	setAttr ".uvtk[139]" -type "float2" 0.62138051 -0.56180441 ;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "2FB54384-5F43-CFC1-050C-1FA27C2D60C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[164]";
createNode polyTweakUV -n "polyTweakUV31";
	rename -uid "17D60A92-544B-7BF0-AB24-99A8CBDED0AB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[133:136]" -type "float2" -0.33399242 0.43741727 -0.22778749
		 0.41474986 -0.26518846 0.47806227 -0.29659158 0.37410486;
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "2F95FED1-9840-344F-22D6-6EB94D101758";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[167]";
createNode polyTweakUV -n "polyTweakUV32";
	rename -uid "9ADE59B6-094E-B008-2336-AE82FB249B7B";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[122:135]" -type "float2" -0.6690554 1.25602233 -0.78988469
		 1.15509391 0.0045465827 -0.49177709 0.1253759 -0.39084932 -0.90231514 1.10147464
		 -1.056518078 1.069730759 -0.26208666 -0.57714063 -0.10788403 -0.54539633 -0.88106376
		 1.25956774 -0.76023471 1.36049604 -0.55710691 1.31064093 0.21655482 -0.49532357 0.095725611
		 -0.59625137 0.23732442 -0.33623064;
createNode polyMapCut -n "polyMapCut24";
	rename -uid "573AF03D-D348-1388-01F8-C78D9B4DE74E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[9]" "e[23]" "e[53]" "e[93]" "e[140:144]";
createNode polyMapCut -n "polyMapCut25";
	rename -uid "980A8EB0-514C-951A-32C2-2B8B4636B0B9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[70]" "e[74]" "e[81]" "e[86]" "e[116:119]" "e[123]";
createNode polyMapCut -n "polyMapCut26";
	rename -uid "583FE6FF-9449-5764-D003-D6A07B2AC5DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[16]" "e[20]" "e[66]" "e[98]" "e[108:111]" "e[115]";
createNode polyMapCut -n "polyMapCut27";
	rename -uid "C5BA6A16-9E45-DA5B-B3E5-2D888559DBD5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[30]" "e[34]" "e[38]" "e[49]" "e[132:135]" "e[139]";
createNode polyMapCut -n "polyMapCut28";
	rename -uid "9A2F92F6-C248-771A-CAEF-58A767EF32AF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[12]" "e[26]" "e[62]" "e[102]" "e[148:151]" "e[154]";
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "2BCD4497-5F4F-FCB0-DB06-4D8A9A9F2155";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:77]";
	setAttr ".ix" -type "matrix" 2.8303257675804376 0 0 0 0 2.8303257675804376 0 0 0 0 2.8303257675804376 0
		 0.00015816180596051521 1.9937504217191251 0 1;
	setAttr ".s" -type "double3" 8.0107428113843042 8.0107428113843042 8.0107428113843042 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV33";
	rename -uid "1C040FEA-544F-2BE9-68E5-DA8E71DF5D26";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[200:215]" -type "float2" 0.14446893 0.24218678 -0.07435593
		 0.023361802 -0.047474593 -0.0035194755 0.17135027 0.21530551 -0.10170898 -0.0039912462
		 -0.074827641 -0.030872524 0.19865611 0.24261135 0.17177477 0.26949263 0.14399722
		 -0.24969727 0.17135027 -0.22234422 0.41748098 0.023786604 0.39017513 -0.003519237
		 0.17155191 -0.27725196 0.19890496 -0.24989891 0.44503567 -0.0037680864 0.41772982
		 -0.031073928;
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "8AED4A19-DC4F-F59C-7032-D4AD6D1B84BC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[32]";
createNode polyTweakUV -n "polyTweakUV34";
	rename -uid "A4B20ADB-0143-A0DE-C478-229B304A7C68";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[56:71]" -type "float2" 0.83298391 -1.0244548e-07
		 0.83298391 1.3038516e-08 0.83298391 1.3038516e-08 0.83298391 -1.0244548e-07 0.83298391
		 1.3038516e-08 0.83298391 1.3038516e-08 0.83298391 -1.0430813e-07 0.83298391 -1.0430813e-07
		 0.83298379 1.3038516e-08 0.83298379 1.3038516e-08 0.83298379 -1.0430813e-07 0.83298379
		 -1.0244548e-07 0.83298379 1.3038516e-08 0.83298379 1.3038516e-08 0.83298379 -1.0430813e-07
		 0.83298379 -1.0244548e-07;
createNode polyMapSewMove -n "polyMapSewMove4";
	rename -uid "EB143CD6-0446-0D97-0623-66AB74F3CCAD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyTweakUV -n "polyTweakUV35";
	rename -uid "A1F9837E-034F-9E6D-59F8-14B90BA706A9";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[212:227]" -type "float2" 0.47795755 -0.79669058 0.69678241
		 -0.5778656 0.66990119 -0.55098444 0.45107633 -0.76980937 0.72408837 -0.5505597 0.69720715
		 -0.52367848 0.4237234 -0.79716235 0.45060462 -0.82404357 0.47838217 -0.30485368 0.45107627
		 -0.33215961 0.20489842 -0.57833755 0.23225141 -0.55098456 0.4508276 -0.27729911 0.4235217
		 -0.30460504 0.17734385 -0.55078298 0.20469683 -0.52342999;
createNode polyMapSewMove -n "polyMapSewMove5";
	rename -uid "50E1697D-D14E-0199-DFB0-CAB32215B3A2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[72]";
createNode polyTweakUV -n "polyTweakUV36";
	rename -uid "6457C3AF-A94D-C299-7D47-9F9BA770DE78";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[72:87]" -type "float2" -0.6540224 -0.058474213 -0.6540224
		 -0.49612388 -0.60025984 -0.49612388 -0.60025984 -0.058474213 -0.6540224 -0.55083013
		 -0.60025984 -0.55083007 -0.60025984 -0.003767997 -0.6540224 -0.003767997 -0.16261011
		 -0.55083007 -0.16261011 -0.49612385 -0.16261011 -0.0037679672 -0.16261011 -0.058474183
		 -0.10750085 -0.55083007 -0.10750085 -0.49612385 -0.10750085 -0.0037679672 -0.10750085
		 -0.058474183;
createNode polyMapSewMove -n "polyMapSewMove6";
	rename -uid "40CC28FF-7446-D900-AA17-D6B9342CBAE1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18]";
createNode polyTweakUV -n "polyTweakUV37";
	rename -uid "6DF8FD82-E247-1D45-6700-B188AED08EA9";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[128:143]" -type "float2" 0.2796579 -0.54679155 0.2796579
		 -0.54679167 0.2796579 -0.54679167 0.2796579 -0.54679155 0.2796579 -0.54679167 0.2796579
		 -0.54679167 0.2796579 -0.54679149 0.2796579 -0.54679149 0.27965802 -0.54679167 0.27965802
		 -0.54679167 0.27965802 -0.54679149 0.27965802 -0.54679155 0.27965802 -0.54679167
		 0.27965802 -0.54679167 0.27965802 -0.54679149 0.27965802 -0.54679155;
createNode polyMapSewMove -n "polyMapSewMove7";
	rename -uid "9EC4CE88-CA48-B49F-AF34-26860285B55E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[68]";
createNode polyMapSew -n "polyMapSew21";
	rename -uid "8E132C6F-2744-086B-B29F-49AF18E9B137";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[51]" "e[63]";
createNode polyMapSew -n "polyMapSew22";
	rename -uid "456E2E84-324B-0E3C-AE28-A5891CCE3199";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[43]" "e[59]" "e[78]" "e[83]" "e[89]" "e[91]" "e[99]" "e[103]";
createNode polyTweakUV -n "polyTweakUV38";
	rename -uid "A66282A7-7E4B-A9D1-3203-E6AE241EEF38";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[172:175]" -type "float2" -0.016558588 -0.2188248 -0.016558588
		 -0.2188248 -0.016558588 -0.2188248 -0.016558588 -0.2188248;
createNode polyMapSewMove -n "polyMapSewMove8";
	rename -uid "7B9262C6-3C42-AEBD-CD09-F1B42F8A978D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[130]";
createNode polyTweakUV -n "polyTweakUV39";
	rename -uid "5EDAC81A-314E-EC19-F53A-D5A9BCF31DA7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[226:229]" -type "float2" -0.033117294 -0.43764985
		 -0.033117294 -0.43764728 -0.033117414 -0.43764728 -0.033117414 -0.43764985;
createNode polyMapSewMove -n "polyMapSewMove9";
	rename -uid "52DBA60A-C347-BCEE-976D-E482FE6BDC5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[131]";
createNode polyTweakUV -n "polyTweakUV40";
	rename -uid "FF5B1DBE-D147-C50F-245A-4C87B0819F53";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[168:171]" -type "float2" 0.016558677 -0.65647209 0.016558677
		 -0.65647078 0.016558677 -0.65647078 0.016558677 -0.65647209;
createNode polyMapSewMove -n "polyMapSewMove10";
	rename -uid "5E1B877B-AD49-C5AC-79CE-E38B059668C8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[129]";
createNode polyTweakUV -n "polyTweakUV41";
	rename -uid "58833F5B-374D-D237-BDAB-D18B6F5EBB59";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[164:167]" -type "float2" 0.016558707 0 0.016558707
		 0 0.016558707 0 0.016558707 0;
createNode polyMapSewMove -n "polyMapSewMove11";
	rename -uid "A6D74621-D04E-8AB8-7628-C59D8ECFC310";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[123]";
createNode polyTweakUV -n "polyTweakUV42";
	rename -uid "A387F9C2-6347-7FB0-9D6B-BB830F5D5D03";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[92:95]" -type "float2" 0.033117414 0.21882498 0.033117414
		 0.21882498 0.033117414 0.21882498 0.033117414 0.21882498;
createNode polyMapSewMove -n "polyMapSewMove12";
	rename -uid "8A26F3E1-4D4F-FBD3-9B33-609F2168CB6F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[122]";
createNode polyTweakUV -n "polyTweakUV43";
	rename -uid "28E9BA37-EF4E-FB0A-57AE-DD917F9A368A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[160:163]" -type "float2" 0.049676061 -0.21882498 0.049676061
		 -0.21882498 0.049676061 -0.21882498 0.049676061 -0.21882498;
createNode polyMapSewMove -n "polyMapSewMove13";
	rename -uid "E08472A4-AF4F-8447-6665-09B242EA8D6A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[121]";
createNode polyTweakUV -n "polyTweakUV44";
	rename -uid "16B3DD90-0A4E-6950-DF11-1D89EA978A16";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[224:227]" -type "float2" -0.047796592 -0.21882492
		 -0.047796592 -0.21882689 -0.047796473 -0.21882689 -0.047796473 -0.21882492;
createNode polyMapSewMove -n "polyMapSewMove14";
	rename -uid "F5AEFEB2-9842-69F5-6D9D-6B96BC843DA6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[145]";
createNode polyTweakUV -n "polyTweakUV45";
	rename -uid "BC97B976-8B4F-DC38-811C-79AFF4357D88";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[226:229]" -type "float2" 0.015932158 0 0.015932158
		 1.9669533e-06 0.015932038 1.9669533e-06 0.015932038 0;
createNode polyMapSewMove -n "polyMapSewMove15";
	rename -uid "25BE0980-604A-C9FB-7AFD-E6B78AEC06B9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[146]";
createNode polyTweakUV -n "polyTweakUV46";
	rename -uid "CD96E001-FA4C-0D61-E7BA-F0901A505A38";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[112]" -type "float2" -0.031864345 -4.7087669e-06 ;
	setAttr ".uvtk[113]" -type "float2" -0.031864345 -3.4570694e-06 ;
	setAttr ".uvtk[114]" -type "float2" -0.031864405 -3.4570694e-06 ;
	setAttr ".uvtk[115]" -type "float2" -0.031864405 -4.7087669e-06 ;
	setAttr ".uvtk[226]" -type "float2" -0.031864345 -2.1457672e-06 ;
	setAttr ".uvtk[227]" -type "float2" -0.031864405 -2.1457672e-06 ;
createNode polyMapSewMove -n "polyMapSewMove16";
	rename -uid "8BFFA6C6-1245-E4E8-4F21-D5BD57BCD56D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[147]";
createNode polyTweakUV -n "polyTweakUV47";
	rename -uid "7A6E8B4D-5A4F-432E-2364-BDB2FB957F5D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[156:159]" -type "float2" 0.016558707 -0.2188248 0.016558707
		 -0.2188248 0.016558707 -0.2188248 0.016558707 -0.2188248;
createNode polyMapSewMove -n "polyMapSewMove17";
	rename -uid "57DF9197-8841-D096-AE0B-3DB82A553F5B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[115]";
createNode polyTweakUV -n "polyTweakUV48";
	rename -uid "64CED44C-E241-25CF-42E2-9BBE38CFBFBD";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[206:209]" -type "float2" 0.033117391 -0.43764952 0.033117391
		 -0.43764985 0.033117391 -0.43764985 0.033117391 -0.43764952;
createNode polyMapSewMove -n "polyMapSewMove18";
	rename -uid "FB1145AD-4344-3D40-C84F-648D6158312C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[114]";
createNode polyTweakUV -n "polyTweakUV49";
	rename -uid "593B0EA6-1C4F-651D-D6BD-06965E99D75B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[152:155]" -type "float2" 0.04967612 -0.6564737 0.04967612
		 -0.65647435 0.04967612 -0.65647435 0.04967612 -0.6564737;
createNode polyMapSewMove -n "polyMapSewMove19";
	rename -uid "D124471C-AC4A-EFE9-3722-FFB98B22A197";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[112]";
createNode polyTweakUV -n "polyTweakUV50";
	rename -uid "1AE71BE5-C44A-59C2-C3ED-BD9874534BC9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[224:227]" -type "float2" 0.015932109 -1.7881393e-07
		 0.015932109 -4.1723251e-06 0.015932288 -4.1723251e-06 0.015932288 -1.7881393e-07;
createNode polyMapSewMove -n "polyMapSewMove20";
	rename -uid "2ACA4139-FC41-D1EB-3C21-9594F66485D6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[154]";
createNode polyTweakUV -n "polyTweakUV51";
	rename -uid "CA2B3C01-6C40-0534-2FA2-0D8CE5ECC231";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[220:223]" -type "float2" -0.047796536 0.2188248 -0.047796536
		 0.21882528 -0.047796551 0.21882528 -0.047796551 0.2188248;
createNode polyMapSewMove -n "polyMapSewMove21";
	rename -uid "D5EFEBC7-5D47-F845-24C9-4D8636A8B497";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[153]";
createNode polyTweakUV -n "polyTweakUV52";
	rename -uid "134474E2-E943-0C35-3417-39BBCCDF8E0B";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[124]" -type "float2" 0.031864371 -4.1723251e-06 ;
	setAttr ".uvtk[125]" -type "float2" 0.031864371 -2.7418137e-06 ;
	setAttr ".uvtk[126]" -type "float2" 0.031864312 -2.7418137e-06 ;
	setAttr ".uvtk[127]" -type "float2" 0.031864312 -4.1723251e-06 ;
	setAttr ".uvtk[220]" -type "float2" 0.031864371 -1.3113022e-06 ;
	setAttr ".uvtk[221]" -type "float2" 0.031864312 -1.3113022e-06 ;
createNode polyMapSewMove -n "polyMapSewMove22";
	rename -uid "E6E1A89D-D646-DCE7-8E7B-C987C9A155FA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[155]";
createNode polyTweakUV -n "polyTweakUV53";
	rename -uid "50E3E528-664C-8554-3DC6-54BB80A76D55";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" -0.48470354 0.52994257 ;
	setAttr ".uvtk[93]" -type "float2" -0.48470354 0.52994245 ;
	setAttr ".uvtk[94]" -type "float2" -0.48470354 0.52994245 ;
	setAttr ".uvtk[95]" -type "float2" -0.48470354 0.52994257 ;
	setAttr ".uvtk[96]" -type "float2" -0.48470354 0.52994251 ;
	setAttr ".uvtk[97]" -type "float2" -0.48470354 0.52994245 ;
	setAttr ".uvtk[98]" -type "float2" -0.48470354 0.52994245 ;
	setAttr ".uvtk[99]" -type "float2" -0.48470354 0.52994251 ;
	setAttr ".uvtk[112]" -type "float2" -0.3059018 0.30805606 ;
	setAttr ".uvtk[113]" -type "float2" -0.3059018 0.30805606 ;
	setAttr ".uvtk[114]" -type "float2" -0.3059018 0.30805606 ;
	setAttr ".uvtk[115]" -type "float2" -0.3059018 0.30805606 ;
	setAttr ".uvtk[116]" -type "float2" -0.3059018 0.30805606 ;
	setAttr ".uvtk[117]" -type "float2" -0.3059018 0.308056 ;
	setAttr ".uvtk[118]" -type "float2" -0.3059018 0.308056 ;
	setAttr ".uvtk[119]" -type "float2" -0.3059018 0.30805606 ;
	setAttr ".uvtk[120]" -type "float2" -0.06893561 0.52563405 ;
	setAttr ".uvtk[121]" -type "float2" -0.06893561 0.52563411 ;
	setAttr ".uvtk[122]" -type "float2" -0.06893561 0.52563411 ;
	setAttr ".uvtk[123]" -type "float2" -0.06893561 0.52563405 ;
	setAttr ".uvtk[124]" -type "float2" -0.06893561 0.52563411 ;
	setAttr ".uvtk[125]" -type "float2" -0.06893561 0.52563411 ;
	setAttr ".uvtk[126]" -type "float2" -0.06893561 0.52563411 ;
	setAttr ".uvtk[127]" -type "float2" -0.06893561 0.52563411 ;
	setAttr ".uvtk[152]" -type "float2" -0.17449327 0.96725285 ;
	setAttr ".uvtk[153]" -type "float2" -0.17449327 0.96725285 ;
	setAttr ".uvtk[154]" -type "float2" -0.17449327 0.96725285 ;
	setAttr ".uvtk[155]" -type "float2" -0.17449327 0.96725285 ;
	setAttr ".uvtk[156]" -type "float2" -0.17449327 0.96725285 ;
	setAttr ".uvtk[157]" -type "float2" -0.17449327 0.96725285 ;
	setAttr ".uvtk[158]" -type "float2" -0.17449327 0.96725285 ;
	setAttr ".uvtk[159]" -type "float2" -0.17449327 0.96725285 ;
	setAttr ".uvtk[160]" -type "float2" -0.48470354 0.52994251 ;
	setAttr ".uvtk[161]" -type "float2" -0.48470354 0.52994251 ;
	setAttr ".uvtk[162]" -type "float2" -0.70874429 0.96509862 ;
	setAttr ".uvtk[163]" -type "float2" -0.70874429 0.96509856 ;
	setAttr ".uvtk[164]" -type "float2" -0.70874429 0.96509856 ;
	setAttr ".uvtk[165]" -type "float2" -0.70874429 0.96509862 ;
	setAttr ".uvtk[166]" -type "float2" -0.70874429 0.9650985 ;
	setAttr ".uvtk[167]" -type "float2" -0.70874429 0.9650985 ;
	setAttr ".uvtk[168]" -type "float2" -0.70874429 0.9650985 ;
	setAttr ".uvtk[169]" -type "float2" -0.70874429 0.9650985 ;
	setAttr ".uvtk[170]" -type "float2" -0.015932262 -0.21882498 ;
	setAttr ".uvtk[171]" -type "float2" -0.015932262 -0.21882498 ;
	setAttr ".uvtk[172]" -type "float2" -0.015932262 -0.21882498 ;
	setAttr ".uvtk[173]" -type "float2" -0.015932262 -0.21882498 ;
	setAttr ".uvtk[206]" -type "float2" -0.17449327 0.96725273 ;
	setAttr ".uvtk[207]" -type "float2" -0.17449327 0.96725273 ;
	setAttr ".uvtk[212]" -type "float2" -0.70874429 0.96509862 ;
	setAttr ".uvtk[213]" -type "float2" -0.70874429 0.96509862 ;
	setAttr ".uvtk[218]" -type "float2" -0.3059018 0.30805606 ;
	setAttr ".uvtk[219]" -type "float2" -0.3059018 0.30805606 ;
	setAttr ".uvtk[220]" -type "float2" -0.06893561 0.52563411 ;
	setAttr ".uvtk[221]" -type "float2" -0.06893561 0.52563411 ;
createNode polyMapSewMove -n "polyMapSewMove23";
	rename -uid "48AC4368-024F-6F0C-592F-5791F6364DFB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[136]";
createNode polyTweakUV -n "polyTweakUV54";
	rename -uid "99615294-D94E-84F2-4BEF-76947F7C266A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[172:175]" -type "float2" 0.015932202 0 0.015932202
		 0 0.015932202 0 0.015932202 0;
createNode polyMapSewMove -n "polyMapSewMove24";
	rename -uid "7D394904-344B-92D3-B290-8485706DEDBA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[138]";
createNode polyTweakUV -n "polyTweakUV55";
	rename -uid "19C49C33-2D4D-97E9-E1C2-B08F3D6AAE7C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[108:111]" -type "float2" 0.031864405 0.21882504 0.031864405
		 0.21882504 0.031864405 0.21882504 0.031864405 0.21882504;
createNode polyMapSewMove -n "polyMapSewMove25";
	rename -uid "9FD77101-824E-38B7-0181-4989D79E7708";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[139]";
createNode polyTweakUV -n "polyTweakUV56";
	rename -uid "A3B62A8E-D048-C6AB-86ED-08BB598E0EE2";
	setAttr ".uopa" yes;
	setAttr -s 216 ".uvtk[0:215]" -type "float2" 1.40030384 0.084560424 1.31081724
		 -1.082587004 1.40787029 -1.022518754 1.30325055 0.024491906 1.34228218 -0.40748927
		 1.32295334 -0.40559304 1.30515254 -0.58700007 1.32448137 -0.58889693 1.36915064 -0.41012573
		 1.34982216 -0.40822947 1.33202112 -0.58963668 1.35134983 -0.59153354 1.32369316 -0.39805281
		 1.29761279 -0.58626044 1.32374132 -0.59643686 1.302845 0.083894223 1.31041145 -1.023183942
		 1.40827656 -1.081920981 1.40070987 0.025157541 1.31541359 -0.40485305 1.30441272
		 -0.59454042 1.34302211 -0.39994982 0.45380366 -0.40382174 0.45101634 -0.60166246
		 0.47006628 -0.60193056 0.47285357 -0.40408969 0.4392707 -0.60149688 0.44205809 -0.40365586
		 0.42300805 -0.40338755 0.42022073 -0.60122836 0.43910506 -0.61324275 0.40847513 -0.60106277
		 0.4112626 -0.4032222 0.44222346 -0.39191037 0.42317367 -0.39164209 0.42005524 -0.61297417
		 1.46011186 0.025563568 1.46727252 -1.022113085 1.56473088 -1.021446228 1.55757093
		 0.026230037 1.24384856 0.024085402 1.25100923 -1.023590326 0.27980152 -1.026319504
		 0.36699614 -1.0042698383 0.36569071 0.040286936 0.2784963 0.018237717 0.43815479
		 -1.0044976473 0.52540439 -1.026329637 0.52409846 0.018227585 0.43684953 0.040059336
		 0.38444141 -1.073257327 0.29724699 -1.095306635 0.208644 -1.026725531 0.26105103
		 0.087224998 0.34824541 0.1092749 0.2073386 0.017831571 0.20256674 1.74609685 0.19984794
		 1.99326992 0.16948369 1.9929359 0.17220286 1.74576271 0.19950819 2.024166822 0.16914347
		 2.023832321 0.17254248 1.7148658 0.20290685 1.71519971 -0.078029275 2.021113873 -0.077689767
		 1.99021745 -0.074631095 1.712147 -0.074970603 1.74304402 -0.10915434 2.020771503
		 -0.10881484 1.9898746 -0.10575467 1.71180487 -0.10609502 1.74270141 -0.72638965 1.9830811
		 -0.72367126 1.73590755 -0.69330651 1.73624122 -0.69602573 1.98341513 -0.72333074
		 1.70501089 -0.6929673 1.70534503 -0.69636559 2.014312029 -0.7267288 2.013978004 -0.44579309
		 1.70806384 -0.44613284 1.73896015 -0.44919237 2.017030954 -0.44885227 1.98613334
		 -0.41466874 1.70840669 -0.41500857 1.73930275 -0.4180674 2.017373323 -0.41772792
		 1.9864769 1.02553165 1.4545567 0.79539347 1.4545567 0.79539347 1.22441864 1.02553165
		 1.22441864 0.82818383 -0.74956262 0.82818383 -0.77736229 0.82947224 -0.77736229 0.82947224
		 -0.74956262 0.82818383 -0.80516231 0.82818383 -0.83296204 0.82947224 -0.83296204
		 0.82947224 -0.80516231 -0.14164162 1.45443082 -0.37177974 1.45443082 -0.37177974
		 1.22429276 -0.14164162 1.22429276 0.28174013 -0.52812308 0.28174013 -0.50032359 0.2804516
		 -0.50032359 0.2804516 -0.52812308 0.28174013 -0.47252339 0.28174013 -0.4447231 0.2804516
		 -0.4447231 0.2804516 -0.47252339 0.82581782 -0.74947226 0.82580918 -0.7772724 0.82709706
		 -0.77727258 0.8271057 -0.7494725 0.82580918 -0.80507249 0.82580918 -0.83287263 0.82709706
		 -0.83287263 0.82709706 -0.80507249 0.82462215 -0.8608315 0.82461768 -0.83303219 0.82332957
		 -0.83303249 0.8233335 -0.8608321 0.82461768 -0.80523139 0.82461768 -0.77743179 0.82332957
		 -0.77743149 0.82332957 -0.80523139 -0.099300981 1.12507284 -0.10202032 1.3722465
		 -0.1328643 1.37190676 -0.13014519 1.12473309 -0.10235953 1.40314329 -0.1332038 1.40280414
		 -0.12980545 1.093837023 -0.098961353 1.094177485 -0.38037592 1.40008616 -0.3800351
		 1.36918783 -0.37697855 1.091118455 -0.37731797 1.12201428 -0.41127264 1.39974546
		 -0.41093296 1.36884844 -0.40787515 1.090778708 -0.40821454 1.1216743 -0.13965791
		 1.98953509 -0.13693947 1.74236131 -0.1399979 2.02043128 -0.13659912 1.71146584 -0.3871702
		 2.017712831 -0.38683051 1.98681664 -0.3837716 1.70874691 -0.38411087 1.73964274 0.83171815
		 -0.86080527 0.83171737 -0.83300519 0.83042926 -0.83300561 0.83042979 -0.86080521
		 0.83171737 -0.80520535 0.83171737 -0.77740568 0.83042926 -0.77740568 0.83042926 -0.80520535
		 0.82818383 -0.86076212 0.82947224 -0.86076212 0.83267862 -0.83327293 0.83267862 -0.8610723
		 0.83396679 -0.8610723 0.83396679 -0.83327293 0.83267838 -0.77767313 0.83267838 -0.80547345
		 0.83396649 -0.80547345 0.83396649 -0.77767313 0.28174013 -0.55592316 0.2804516 -0.55592316
		 -0.21258758 0.068088278 -0.21258758 -0.16205022 0.017550353 -0.16205022 0.017550353
		 0.068088278 -0.2903434 0.99444354 -0.2903434 1.22458172 -0.52048165 1.22458172 -0.52048165
		 0.99444354 -0.14339375 2.32909393 -0.39056635 2.32637405 -0.39023283 2.29600978 -0.14305818
		 2.29872894 -0.42146298 2.32603478 -0.42112929 2.29566979 -0.11221543 2.29906797 -0.11255017
		 2.32943296 -0.41841069 2.048497677 -0.3875142 2.048837185 -0.10949659 2.051895857
		 -0.14034045 2.05155611 -0.13353819 1.43316817 -0.38071015 1.43044877 -0.10269397
		 1.43350673 -0.41160747 1.43010879 -0.1054126 1.68068016 -0.13625687 1.68034136 -0.41432536
		 1.67728233 -0.38342935 1.67762244 0.83171737 -0.74960601 0.83042926 -0.74960601 -0.077631831
		 0.63869929 0.15250546 0.63869929 0.15250546 0.86883748 -0.077631831 0.86883748 0.83267838
		 -0.74987328 0.83396649 -0.74987328 -0.28688729 1.80803585 -0.51702476 1.80803585
		 -0.51702476 1.57789803 -0.28688729 1.57789803 0.82580918 -0.86067265 0.82709706 -0.86067265
		 0.82462209 -0.74963176 0.82333356 -0.74963117;
createNode polySoftEdge -n "polySoftEdge9";
	rename -uid "BA395CC2-2C4C-8A34-70BB-06A05252E1F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 11.502660038601187 0 0 0 0 0.38596564088400076 0 0 0 0 11.502660038601187 0
		 0 0 -4.5415156727727615 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge10";
	rename -uid "B6CC1A42-7740-5472-3E3E-50B4991723ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[72:107]";
	setAttr ".ix" -type "matrix" 11.502660038601187 0 0 0 0 0.38596564088400076 0 0 0 0 11.502660038601187 0
		 0 0 -4.5415156727727615 1;
	setAttr ".a" 180;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "9F2BCEE0-4141-3F57-3334-8BBE9D21D64D";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:109]";
	setAttr ".ix" -type "matrix" 11.502660038601187 0 0 0 0 0.38596564088400076 0 0 0 0 11.502660038601187 0
		 0 0 -4.5415156727727615 1;
	setAttr ".s" -type "double3" 14.044747402521642 14.044747402521642 14.044747402521642 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV57";
	rename -uid "9E7045F5-B348-F794-AE27-05BF92FC799E";
	setAttr ".uopa" yes;
	setAttr -s 348 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.0035375953 0.040019777 0.022393525
		 0.023097795 0.029468626 -0.056941733 0.0035375059 -0.040019751 0.048553139 0.0061758151
		 0.05562827 -0.073863715 -0.029468656 0.056941736 -0.022393554 -0.023097791 0.07516253
		 -0.010746165 0.082237601 -0.09078569 -0.0556283 0.073863715 -0.048553199 -0.0061758086
		 0.1024296 -0.027668146 0.10950467 -0.10770767 -0.082237661 0.09078569 -0.07516256
		 0.010746166 0.13054216 -0.044590127 0.13761723 -0.12462965 -0.1095047 0.10770767
		 -0.1024296 0.027668148 0.15966231 -0.061512113 0.16673744 -0.14155164 -0.13761726
		 0.12462965 -0.13054213 0.044590123 -0.16673741 0.14155163 -0.15966228 0.061512105
		 -0.078101665 0.09953177 -0.053066492 0.07980413 -0.044818282 -0.00089355558 -0.069853485
		 0.018834084 -0.028481126 0.060076494 -0.020232916 -0.020621195 -0.1037946 0.11925941
		 -0.095546424 0.038561724 -0.004124105 0.040348854 0.004124105 -0.040348835 -0.1303331
		 0.13898708 -0.12208492 0.058289386 0.020232916 0.020621186 0.028481066 -0.060076501
		 -0.15787905 0.15871471 -0.1496309 0.078017034 0.044818342 0.00089354604 0.053066492
		 -0.079804137 0.069853604 -0.018834097 0.078101754 -0.099531785 0.095546484 -0.038561732
		 0.10379463 -0.11925942 0.12208486 -0.058289375 0.13033301 -0.13898706 0.1496309 -0.078017011
		 0.15787905 -0.1587147 0.11149989 0.34399924 -0.15472111 0.42746451 -0.15991269 0.52205938
		 0.10630833 0.43859407 -0.17246351 0.43302712 -0.17765507 0.52762192 0.12459359 0.43286136
		 0.12978515 0.33826649 -0.12026477 -0.20035887 -0.13800716 -0.19479632 0.16453579
		 -0.29491889 0.1462505 -0.28918618 -0.11532322 -0.29039794 -0.13306561 -0.28483534
		 0.16918314 -0.37959725 0.15089785 -0.37386447 0.0083159506 -0.24067134 0.013257489
		 -0.33071041 0.025716394 -0.33461773 0.021069065 -0.24993938 0.14062402 0.38665333
		 -0.13596223 0.37929788 -0.13550472 0.47324803 0.14108151 0.48060346 -0.15495938 0.3787927
		 -0.15450189 0.47274283 0.1595147 0.4810937 0.1590572 0.38714358 -0.13902467 -0.24957198
		 -0.15802182 -0.25007719 0.1560207 -0.23640084 0.13758752 -0.23689103 -0.13943422
		 -0.33367318 -0.15843138 -0.33417833 0.15558523 -0.32582623 0.13715205 -0.32631642
		 -0.0089692473 -0.2461133 -0.0093787909 -0.3302145 0.0035650134 -0.32986903 0.0040004849
		 -0.24044365 -0.18891725 -0.047878005 -0.20673971 -0.044912137 -0.20957159 0.049224451
		 -0.19174913 0.046258524 -0.17020556 -0.66988736 -0.18802802 -0.6669215 -0.16722502
		 -0.7689659 -0.18504748 -0.76600009 0.0075176507 0.31138456 -0.010500208 0.31185544
		 -0.010949805 0.40580532 0.0070680529 0.40533444 0.010488406 -0.30938953 -0.0075294524
		 -0.30891865 0.010961607 -0.40827131 -0.0070562512 -0.40780044 0.014259964 -0.31140977
		 -0.0036991239 -0.30973586 -0.014259964 0.31140977 0.0036991239 0.30973586 0.017449677
		 -0.17740738 -1.5288591e-05 -0.17247695 -0.031121761 0.45178729 -0.013656795 0.44685686
		 0.022404552 -0.27684516 0.0049395859 -0.27191472 0.012304068 -0.05424659 -0.0041871071
		 -0.046169646 -0.012304068 0.054246586 0.0041871071 0.04616965 -5.9604645e-08 2.9802322e-08
		 0 -7.4505806e-09 5.9604645e-08 8.5681677e-08 5.9604645e-08 1.4901161e-08 5.9604645e-08
		 -1.4901161e-08 0 -7.4505806e-09 -5.9604645e-08 -2.9802322e-08 0 6.7055225e-08 0 2.2351742e-08
		 -5.9604645e-08 -2.2351742e-08 0 7.4505806e-09 0 4.4703484e-08 -5.9604645e-08 -6.7055225e-08
		 0 -5.2154064e-08 -5.9604645e-08 -7.4505806e-08 -5.9604645e-08 -5.2154064e-08 0 1.8626451e-08
		 -5.9604645e-08 -7.8231096e-08 0 -3.7252903e-08 -5.9604645e-08 -1.1175871e-08 0 1.4901161e-08
		 0 -2.9802322e-08 0 3.7252903e-09 5.9604645e-08 -3.7252903e-09 0 2.1886081e-08 5.9604645e-08
		 -7.5437129e-08 5.9604645e-08 -3.1199306e-08 5.9604645e-08 1.5832484e-08 -5.9604645e-08
		 -1.5599653e-08 5.9604645e-08 -4.4237822e-08 0 6.3329935e-08 5.9604645e-08 5.3085387e-08
		 0 6.8917871e-08 5.9604645e-08 4.6566129e-08 5.9604645e-08 -2.0489097e-08 0 7.4505806e-08
		 -5.9604645e-08 3.7252903e-09 0 7.4505806e-09 5.9604645e-08 -7.4505806e-09 -5.9604645e-08
		 0 0 7.4505806e-09 -5.9604645e-08 -7.4505806e-09 5.9604645e-08 7.4505806e-09 -5.9604645e-08
		 0 0 0 0 7.4505806e-09 0 -7.4505806e-09 -5.9604645e-08 0 0 0 0 -7.4505806e-09 5.9604645e-08
		 -7.4505806e-09 5.9604645e-08 7.4505806e-09 -5.9604645e-08 7.4505806e-09 0 7.4505806e-09
		 -5.9604645e-08 -1.1175871e-08 5.9604645e-08 1.3038516e-08 0 2.6077032e-08 0 -5.5879354e-09
		 0 -2.3283064e-08 -5.9604645e-08 -2.7939677e-09 0 1.3504177e-08 0 -7.4505806e-09 -5.9604645e-08
		 2.8871e-08 5.9604645e-08 -1.3504177e-08 5.9604645e-08 5.5879354e-09 -5.9604645e-08
		 -1.2107193e-08 0 2.6077032e-08 5.9604645e-08 -2.2351742e-08 0 9.3132257e-09 0 -3.7252903e-09
		 -5.9604645e-08 -2.9802322e-08 -5.9604645e-08 -7.4505806e-09 0 -1.4249235e-07 0 -1.4225952e-07
		 0 1.4156103e-07 0 1.4156103e-07 -0.42345834 0.39223802 -0.41989586 0.41429743 -0.75852644
		 0.46898657 -0.76208931 0.44692716 -0.40089005 0.38859326 -0.39732754 0.41065264 -0.78178495
		 0.47274286 -0.78534776 0.45068347 -5.9604645e-08 2.9802322e-08 -5.9604645e-08 1.4901161e-08
		 0 -5.9604645e-08 -5.9604645e-08 -4.4703484e-08 5.9604645e-08 2.2351742e-08 5.9604645e-08
		 3.7252903e-08 0 7.4505806e-08 0 7.4505806e-08 0 -7.4505806e-08 0 -7.4505806e-08 0
		 -4.4703484e-08 0 -4.4703484e-08 0 -2.9802322e-08 0 -2.9802322e-08 0 7.4505806e-08
		 0 7.4505806e-08 0 -7.4505806e-08 0 -7.4505806e-08 0 7.4505806e-08 0 7.4505806e-08
		 -5.9604645e-08 -3.2782555e-07 0 3.1851232e-07 5.9604645e-08 3.2200478e-07 0 -3.2037497e-07
		 5.9604645e-08 -1.3224781e-07 -5.9604645e-08 1.5646219e-07 -5.9604645e-08 1.4901161e-07
		 5.9604645e-08 -1.3783574e-07 -5.9604645e-08 1.7881393e-07 -5.9604645e-08 1.7881393e-07
		 5.9604645e-08 -1.9837171e-07 5.9604645e-08 -1.9278377e-07 0 -3.7252903e-08 0 2.9802322e-08
		 0 3.7252903e-08 0 -2.9802322e-08 1.1920929e-07 -2.8312206e-07 5.9604645e-08 -2.682209e-07
		 5.9604645e-08 -2.4586916e-07 1.1920929e-07 -2.682209e-07 -2.3841858e-07 5.4296106e-07
		 -1.7881393e-07 5.2410178e-07 5.9604645e-08 -1.7113052e-07 0 -1.671724e-07;
	setAttr ".uvtk[250:347]" -5.9604645e-08 1.7136335e-07 0 1.6391277e-07 0.085827291
		 -0.10289888 0.058307111 -0.081875704 0.049517274 -0.0022169652 0.077037454 -0.023240143
		 0.031236827 -0.060852539 0.02244699 0.018806199 0.0043949485 -0.039829373 -0.0043948889
		 0.039829366 -0.02244693 -0.018806197 -0.031236768 0.060852543 -0.049517274 0.0022169724
		 -0.058307111 0.081875712 -0.077037454 0.023240142 -0.085827261 0.10289888 -0.085827291
		 0.10289881 -0.058307111 0.081875667 -0.049517274 0.0022169277 -0.077037454 0.02324006
		 -0.031236827 0.060852535 -0.02244705 -0.018806204 -0.0043948889 0.039829347 0.0043949485
		 -0.039829396 0.02244699 0.018806215 0.031236768 -0.060852528 0.049517393 -0.00221692
		 0.058307171 -0.08187566 0.077037454 -0.023240052 0.085827291 -0.10289879 0.0018422902
		 -0.31109166 0.019604415 -0.31447375 0.022833735 -0.4086678 0.0050716102 -0.40528572
		 -0.019773692 0.31941098 -0.0020115674 0.31602886 -0.022664487 0.40373054 -0.0049023628
		 0.40034845 0.014262289 -0.31544259 -0.0036985874 -0.31378976 -0.014262289 0.31544256
		 0.0036985874 0.31378976 0.01186502 -0.047257472 -0.0043101013 -0.038418576 -0.01186502
		 0.047257476 0.0043101013 0.038418576 -0.0018113554 0.30975646 -0.019572765 0.31314313
		 -0.022806466 0.4073379 -0.0050450563 0.4039512 0.019650638 -0.31541139 0.0018892288
		 -0.31202471 0.022728622 -0.40506959 0.0049671829 -0.40168291 -0.014260888 0.31278849
		 0.0036989748 0.31112182 0.014260888 -0.31278849 -0.0036989748 -0.31112185 -0.012035757
		 0.049771365 0.0042615831 0.041217465 0.012035757 -0.049771369 -0.0042615831 -0.041217469
		 -0.07527326 0.76037365 0.39885044 0.61845398 0.40529132 0.7598868 -0.064189419 0.90051228
		 0.41636086 0.64106274 0.41504973 0.76276642 -0.085184142 0.91552746 -0.079826787
		 0.78496754 0.5722881 -0.2010814 0.57838476 -0.17538911 -0.25505498 0.047167361 -0.25409496
		 0.02028811 0.58026749 -0.29470491 0.5811789 -0.29043388 -0.2858814 -0.077118158 -0.2794635
		 -0.10132152 0.94188833 -0.25923496 0.94314194 -0.35208189 -0.17317979 -0.74004835
		 -0.10620374 -1.16167688 -0.080791339 -1.2661823 -0.14617516 -0.84937352 -0.082578652
		 -1.15893555 -0.07796596 -1.26869226 -0.13598821 -0.82890499 -0.15018305 -0.72491896
		 -0.050009325 -0.57698941 -0.029202312 -0.56601584 -0.22723803 0.19479263 -0.25631791
		 0.18257517 -0.031693615 -0.48124576 -0.0151418 -0.46674734 -0.22995478 0.31827578
		 -0.23213983 0.31542569 -0.32967493 0.38154125 -0.35710123 0.25164294;
createNode polyMapSewMove -n "polyMapSewMove26";
	rename -uid "53518259-784B-8531-30F7-C388954E7EE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[113]";
createNode polyTweakUV -n "polyTweakUV58";
	rename -uid "3D8CEFC3-D64B-8AF8-809E-4DA5B88D198C";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[52:71]" -type "float2" -0.23049821 -0.028886706
		 0.43639851 -0.10499662 0.44113255 -0.063515365 -0.22576419 0.012594581 0.48084402
		 -0.11006892 0.48557806 -0.068587631 -0.27156949 0.017822087 -0.27630353 -0.02365917
		 0.4049786 -0.38030654 0.44942418 -0.38537884 -0.30799174 -0.30132031 -0.26218641
		 -0.30654788 0.40047252 -0.41978979 0.4449181 -0.42486235 -0.31222957 -0.33845299
		 -0.26642424 -0.34368056 0.082877487 -0.34354651 0.078371465 -0.38303003 0.047161579
		 -0.37946877 0.05139941 -0.34233612;
createNode polyMapSewMove -n "polyMapSewMove27";
	rename -uid "712820D7-524B-5B80-2C96-108819F4694D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[115]";
createNode polyTweakUV -n "polyTweakUV59";
	rename -uid "656B7465-034A-5FE6-3025-2891C8510D0C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[292:299]" -type "float2" 0.14010441 0.013201758 0.18396702
		 0.010294244 0.1867432 0.052175567 0.14288059 0.0550832 0.12167895 -0.26476371 0.16554153
		 -0.26767123 0.11903644 -0.30462807 0.16289911 -0.30753559;
createNode polyMapSewMove -n "polyMapSewMove28";
	rename -uid "F9AA519E-474E-A9BB-36A7-CAB217D924AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[164]";
createNode polyTweakUV -n "polyTweakUV60";
	rename -uid "2BCF6537-374D-2458-8689-12B2D955FC58";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[276:283]" -type "float2" -0.25495487 -0.13258143 -0.25469941
		 -0.12872018 -0.25838625 -0.12847628 -0.25864172 -0.1323375 -0.23027644 -0.13421415
		 -0.23002097 -0.1303529 -0.2269761 -0.13443248 -0.22672063 -0.13057123;
createNode polyMapSewMove -n "polyMapSewMove29";
	rename -uid "A0836A10-C842-27AB-753C-7C9E12556EE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[134]";
createNode polyTweakUV -n "polyTweakUV61";
	rename -uid "F36A6F46-E34C-9142-57FE-7E8C3119B46A";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[212:217]" -type "float2" -0.45288256 0.19024612 -0.45740333
		 0.2123055 -0.47997162 0.20768015 -0.47545084 0.18562074 -0.64352548 0.1741607 -0.63900441
		 0.15210132;
createNode polyMapSewMove -n "polyMapSewMove30";
	rename -uid "D4134E6E-4145-BB81-D5E0-5C9E9D671D71";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[182]";
createNode polyTweakUV -n "polyTweakUV62";
	rename -uid "CE0DA2BF-8148-5AF1-74CA-1A814C973473";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[202:207]" -type "float2" -0.83201176 0.17051823 -0.82749063
		 0.14845888 -0.80423212 0.15322588 -0.80875313 0.17528503 -0.64500242 0.18585838 -0.64952314
		 0.20791788;
createNode polyMapSewMove -n "polyMapSewMove31";
	rename -uid "684717CE-CA4E-61DC-F20B-7385EA460945";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[151]";
createNode polyTweakUV -n "polyTweakUV63";
	rename -uid "5CA87300-9246-2B84-C96D-E587DD87E3BC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[214:217]" -type "float2" -0.62768668 0.57206678 -0.63124919
		 0.55000734 -0.46769547 0.52359319 -0.46413332 0.54565257;
createNode polyMapSewMove -n "polyMapSewMove32";
	rename -uid "5552254D-F645-C200-16B9-7495EF9EF18E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[181]";
createNode polyTweakUV -n "polyTweakUV64";
	rename -uid "40F58EDF-7F4C-1CDE-B9E4-E38CBB1190D4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[206:209]" -type "float2" -0.63727313 0.5179736 -0.63371062
		 0.54003298 -0.79294056 0.56574875 -0.79650337 0.54368937;
createNode polyMapSewMove -n "polyMapSewMove33";
	rename -uid "03A5EB7D-C74C-C6CA-17A5-17A6FF9FB1CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[148]";
createNode polyTweakUV -n "polyTweakUV65";
	rename -uid "39730D64-854C-4607-AAC6-62A0C905B6A6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[288:291]" -type "float2" 0.081795573 -0.015581012
		 0.0818533 -0.013435185 0.068254918 -0.013069302 0.068197161 -0.015215129;
createNode polyMapSewMove -n "polyMapSewMove34";
	rename -uid "8AE28040-F041-9A1D-0281-8ABC7AE0A598";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[161]";
createNode polyTweakUV -n "polyTweakUV66";
	rename -uid "6FBB5AD9-8C47-D8CB-06C3-23A48D25243F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[274:277]" -type "float2" -0.25624529 -0.16527835 -0.21218324
		 -0.16645205 -0.20468198 0.11516219 -0.24874404 0.1163359;
createNode polyMapSewMove -n "polyMapSewMove35";
	rename -uid "A7302A31-8646-F540-5CA3-0C89313886E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[130]";
createNode polyMapSew -n "polyMapSew23";
	rename -uid "76070005-DC4F-8288-0B8C-85ADC83E64B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[155:157]" "e[169]" "e[172]";
createNode polyMapSew -n "polyMapSew24";
	rename -uid "32849FB9-E844-519F-19E1-519CF22177E3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[121]" "e[124:125]" "e[139]" "e[142]";
createNode polyTweakUV -n "polyTweakUV67";
	rename -uid "EDA99381-8945-27F9-5FD4-F68AC2F4D500";
	setAttr ".uopa" yes;
	setAttr -s 60 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" 0.49355799 -0.33215711 ;
	setAttr ".uvtk[93]" -type "float2" 0.5658887 -0.38602656 ;
	setAttr ".uvtk[94]" -type "float2" 0.57212633 -0.38467824 ;
	setAttr ".uvtk[95]" -type "float2" 0.49979562 -0.33080879 ;
	setAttr ".uvtk[96]" -type "float2" 0.47084475 -0.26183993 ;
	setAttr ".uvtk[97]" -type "float2" 0.52467352 -0.39493567 ;
	setAttr ".uvtk[98]" -type "float2" 0.46427959 -0.26325905 ;
	setAttr ".uvtk[99]" -type "float2" 0.51810849 -0.39635473 ;
	setAttr ".uvtk[100]" -type "float2" -0.028354224 0.15662172 ;
	setAttr ".uvtk[101]" -type "float2" -0.0065399818 0.17821413 ;
	setAttr ".uvtk[102]" -type "float2" -0.027157124 0.19904301 ;
	setAttr ".uvtk[103]" -type "float2" -0.048971362 0.17745063 ;
	setAttr ".uvtk[104]" -type "float2" 0.10787345 0.018994685 ;
	setAttr ".uvtk[105]" -type "float2" 0.12968771 0.040587094 ;
	setAttr ".uvtk[106]" -type "float2" 0.12957293 -0.0029276684 ;
	setAttr ".uvtk[107]" -type "float2" 0.15138716 0.018664744 ;
	setAttr ".uvtk[108]" -type "float2" -0.14052516 0.08223287 ;
	setAttr ".uvtk[109]" -type "float2" -0.1187081 0.10262253 ;
	setAttr ".uvtk[110]" -type "float2" -0.24734738 0.24026804 ;
	setAttr ".uvtk[111]" -type "float2" -0.26916456 0.21987824 ;
	setAttr ".uvtk[112]" -type "float2" -0.10802074 -0.026273396 ;
	setAttr ".uvtk[113]" -type "float2" -0.098937929 0.13592313 ;
	setAttr ".uvtk[114]" -type "float2" -0.25126496 0.19705427 ;
	setAttr ".uvtk[115]" -type "float2" -0.21612141 0.10915788 ;
	setAttr ".uvtk[116]" -type "float2" -0.090801552 -0.047845971 ;
	setAttr ".uvtk[117]" -type "float2" -0.081718758 0.11435055 ;
	setAttr ".uvtk[118]" -type "float2" -0.17650381 -0.0098057659 ;
	setAttr ".uvtk[119]" -type "float2" -0.17650381 -0.0098057697 ;
	setAttr ".uvtk[120]" -type "float2" -0.17650381 -0.0098057659 ;
	setAttr ".uvtk[121]" -type "float2" -0.17650381 -0.0098057659 ;
	setAttr ".uvtk[215]" -type "float2" -0.056609686 0.070762128 ;
	setAttr ".uvtk[218]" -type "float2" -0.056609686 0.070762128 ;
	setAttr ".uvtk[221]" -type "float2" -0.012383353 0.14506234 ;
	setAttr ".uvtk[222]" -type "float2" -0.012383353 0.14506237 ;
	setAttr ".uvtk[268]" -type "float2" -0.14376667 0.49590713 ;
	setAttr ".uvtk[269]" -type "float2" -0.14559871 0.4862355 ;
	setAttr ".uvtk[270]" -type "float2" -0.13733199 0.48466963 ;
	setAttr ".uvtk[271]" -type "float2" -0.13549998 0.49434125 ;
	setAttr ".uvtk[278]" -type "float2" -0.10372108 0.50807613 ;
	setAttr ".uvtk[279]" -type "float2" -0.10199562 0.5166927 ;
	setAttr ".uvtk[280]" -type "float2" -0.10982674 0.5182609 ;
	setAttr ".uvtk[281]" -type "float2" -0.11155218 0.50964427 ;
	setAttr ".uvtk[300]" -type "float2" 0.0044626743 -0.19707553 ;
	setAttr ".uvtk[301]" -type "float2" 0.38765758 0.22623412 ;
	setAttr ".uvtk[302]" -type "float2" 0.36251846 0.24928597 ;
	setAttr ".uvtk[303]" -type "float2" -0.019509703 -0.16866186 ;
	setAttr ".uvtk[304]" -type "float2" 0.39331844 0.22117019 ;
	setAttr ".uvtk[305]" -type "float2" 0.38959882 0.25091958 ;
	setAttr ".uvtk[306]" -type "float2" -0.062448747 -0.19144805 ;
	setAttr ".uvtk[307]" -type "float2" -0.047262073 -0.21168788 ;
	setAttr ".uvtk[308]" -type "float2" 0.33622411 0.19318563 ;
	setAttr ".uvtk[309]" -type "float2" 0.34394369 0.1799427 ;
	setAttr ".uvtk[310]" -type "float2" 0.029859476 -0.57397139 ;
	setAttr ".uvtk[311]" -type "float2" 0.083728984 -0.56158042 ;
	setAttr ".uvtk[312]" -type "float2" 0.31550479 0.18418677 ;
	setAttr ".uvtk[313]" -type "float2" 0.32747468 0.16741939 ;
	setAttr ".uvtk[314]" -type "float2" 0.033823363 -0.60866034 ;
	setAttr ".uvtk[315]" -type "float2" 0.060295157 -0.60452676 ;
	setAttr ".uvtk[316]" -type "float2" 0.57125932 -0.65942574 ;
	setAttr ".uvtk[317]" -type "float2" 0.59795243 -0.61945868 ;
createNode polyMapSewMove -n "polyMapSewMove36";
	rename -uid "CFE73F08-A04B-69E8-CB61-5084BD136C33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[224]";
createNode polyTweakUV -n "polyTweakUV68";
	rename -uid "A19E653C-0E4C-EE8E-B435-92A414A8D4BA";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" -0.016047269 0.0052749589 ;
	setAttr ".uvtk[93]" -type "float2" 0.060589075 -0.046914961 ;
	setAttr ".uvtk[94]" -type "float2" 0.064409584 -0.041362628 ;
	setAttr ".uvtk[95]" -type "float2" -0.012116134 0.010314437 ;
	setAttr ".uvtk[96]" -type "float2" -0.010913432 0.012995392 ;
	setAttr ".uvtk[97]" -type "float2" 0.043196708 -0.11999078 ;
	setAttr ".uvtk[98]" -type "float2" -0.014498055 0.0086697936 ;
	setAttr ".uvtk[99]" -type "float2" 0.039612234 -0.12146008 ;
	setAttr ".uvtk[301]" -type "float2" -0.0082807243 0.0043620728 ;
	setAttr ".uvtk[302]" -type "float2" -0.0092955828 -0.0041518714 ;
	setAttr ".uvtk[304]" -type "float2" -0.017642707 -0.0022174381 ;
	setAttr ".uvtk[307]" -type "float2" -0.0023920238 0.011267841 ;
	setAttr ".uvtk[310]" -type "float2" 1.1593103e-05 0.017633587 ;
	setAttr ".uvtk[311]" -type "float2" -0.0049343407 0.020902395 ;
createNode polyMapSew -n "polyMapSew25";
	rename -uid "2465A6AD-8241-9C86-7D4F-F4A719C6E1D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[199]";
createNode polyMapSew -n "polyMapSew26";
	rename -uid "DF75AD1D-104D-8047-B3FB-ACA8595D7B11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[234]";
createNode polyTweakUV -n "polyTweakUV69";
	rename -uid "2E615E7C-EA4E-D611-A511-34933F493439";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" -0.050722837 -0.044126078 ;
	setAttr ".uvtk[93]" -type "float2" -0.047546923 -0.045448937 ;
	setAttr ".uvtk[94]" -type "float2" -0.045470059 -0.042508043 ;
	setAttr ".uvtk[95]" -type "float2" -0.048142612 -0.042143654 ;
	setAttr ".uvtk[96]" -type "float2" -0.076321006 -0.028731138 ;
	setAttr ".uvtk[97]" -type "float2" -0.069120795 -0.028484195 ;
	setAttr ".uvtk[98]" -type "float2" -0.08072859 -0.032583326 ;
	setAttr ".uvtk[99]" -type "float2" -0.071743101 -0.035952657 ;
	setAttr ".uvtk[100]" -type "float2" -0.29946315 -0.63863391 ;
	setAttr ".uvtk[101]" -type "float2" -0.26711768 -0.66068667 ;
	setAttr ".uvtk[102]" -type "float2" -0.24606104 -0.62980211 ;
	setAttr ".uvtk[103]" -type "float2" -0.27840656 -0.6077494 ;
	setAttr ".uvtk[104]" -type "float2" -0.438595 -0.84270358 ;
	setAttr ".uvtk[105]" -type "float2" -0.40624952 -0.86475635 ;
	setAttr ".uvtk[106]" -type "float2" -0.46075699 -0.87520957 ;
	setAttr ".uvtk[107]" -type "float2" -0.42841151 -0.89726222 ;
	setAttr ".uvtk[301]" -type "float2" -0.053182691 -0.043063942 ;
	setAttr ".uvtk[302]" -type "float2" -0.049948663 -0.040078655 ;
	setAttr ".uvtk[306]" -type "float2" -0.080294967 -0.026800215 ;
	setAttr ".uvtk[309]" -type "float2" -0.082917273 -0.02835077 ;
createNode polyMapSewMove -n "polyMapSewMove37";
	rename -uid "AA4C8691-1A48-071F-E00F-66B859018F2E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[218]";
createNode polyMapSew -n "polyMapSew27";
	rename -uid "DA585956-054B-F48D-D388-91B34ABBD129";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[205]";
createNode polyMapSew -n "polyMapSew28";
	rename -uid "A1034ADF-6746-2E46-1DA1-47B818307220";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[242]";
createNode polyTweakUV -n "polyTweakUV70";
	rename -uid "3E45BCA8-B743-6788-7D24-36A85F34D439";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" -0.0047325194 0.01780986 ;
	setAttr ".uvtk[93]" -type "float2" -0.0036165118 0.019390315 ;
	setAttr ".uvtk[94]" -type "float2" -0.0051258504 0.02045466 ;
	setAttr ".uvtk[95]" -type "float2" -0.0062419474 0.018872663 ;
	setAttr ".uvtk[96]" -type "float2" 0.0052397847 0.010769069 ;
	setAttr ".uvtk[97]" -type "float2" 0.0063557923 0.012349695 ;
	setAttr ".uvtk[98]" -type "float2" 0.0068282485 0.0096475482 ;
	setAttr ".uvtk[99]" -type "float2" 0.0079442561 0.011228144 ;
	setAttr ".uvtk[100]" -type "float2" -0.03037414 -0.0033629462 ;
	setAttr ".uvtk[101]" -type "float2" -0.03121163 -0.0044292733 ;
	setAttr ".uvtk[102]" -type "float2" -0.0297025 -0.0055376962 ;
	setAttr ".uvtk[103]" -type "float2" -0.029355869 -0.0041627716 ;
	setAttr ".uvtk[104]" -type "float2" -0.037102178 0.0019213855 ;
	setAttr ".uvtk[105]" -type "float2" -0.037939683 0.00085502863 ;
	setAttr ".uvtk[106]" -type "float2" -0.038173929 0.0027632117 ;
	setAttr ".uvtk[107]" -type "float2" -0.039629668 0.0016954541 ;
	setAttr ".uvtk[212]" -type "float2" -1.1116278 0.47754487 ;
	setAttr ".uvtk[213]" -type "float2" -1.0502714 -0.1010249 ;
	setAttr ".uvtk[214]" -type "float2" -1.0125819 -0.097027935 ;
	setAttr ".uvtk[215]" -type "float2" -0.47607702 -0.12233515 ;
	setAttr ".uvtk[216]" -type "float2" -1.0466037 -0.13561308 ;
	setAttr ".uvtk[217]" -type "float2" -1.0089142 -0.13161625 ;
	setAttr ".uvtk[218]" -type "float2" -0.47986472 -0.086618721 ;
	setAttr ".uvtk[219]" -type "float2" -1.1154156 0.51326132 ;
	setAttr ".uvtk[300]" -type "float2" -0.03495878 -0.0048811063 ;
	setAttr ".uvtk[301]" -type "float2" -0.005790025 0.01631289 ;
	setAttr ".uvtk[302]" -type "float2" -0.0073001385 0.017367855 ;
	setAttr ".uvtk[303]" -type "float2" -0.036982909 -0.0091335326 ;
	setAttr ".uvtk[304]" -type "float2" 0.0041821897 0.0092712045 ;
	setAttr ".uvtk[305]" -type "float2" -0.037748471 -0.0002874434 ;
	setAttr ".uvtk[306]" -type "float2" 0.0057706535 0.0081496537 ;
	setAttr ".uvtk[307]" -type "float2" -0.039553829 -0.00055831671 ;
	setAttr ".uvtk[308]" -type "float2" -0.034994781 -0.027988166 ;
	setAttr ".uvtk[309]" -type "float2" -0.033200502 -0.027690232 ;
createNode polyMapSewMove -n "polyMapSewMove38";
	rename -uid "301BC0F2-E247-96A0-3E9A-38A7C7DF53B4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[190]";
createNode polyTweakUV -n "polyTweakUV71";
	rename -uid "D910470E-FE43-F73A-4C07-48B6C8F8B008";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" 0.036315233 0 ;
	setAttr ".uvtk[93]" -type "float2" 0.03632614 0 ;
	setAttr ".uvtk[94]" -type "float2" 0.036381215 0 ;
	setAttr ".uvtk[95]" -type "float2" 0.036397189 0 ;
	setAttr ".uvtk[96]" -type "float2" 0.036315829 0 ;
	setAttr ".uvtk[97]" -type "float2" 0.036301911 0 ;
	setAttr ".uvtk[98]" -type "float2" 0.036346585 0 ;
	setAttr ".uvtk[99]" -type "float2" 0.036257088 0 ;
	setAttr ".uvtk[100]" -type "float2" -0.039397359 0 ;
	setAttr ".uvtk[101]" -type "float2" -0.039414227 0 ;
	setAttr ".uvtk[102]" -type "float2" -0.039205164 0 ;
	setAttr ".uvtk[103]" -type "float2" -0.039318115 0 ;
	setAttr ".uvtk[104]" -type "float2" -0.039419457 0 ;
	setAttr ".uvtk[105]" -type "float2" -0.039430112 0 ;
	setAttr ".uvtk[106]" -type "float2" -0.039399967 0 ;
	setAttr ".uvtk[107]" -type "float2" -0.039420992 0 ;
	setAttr ".uvtk[212]" -type "float2" 0.61097169 -0.47878402 ;
	setAttr ".uvtk[213]" -type "float2" -0.005796615 0.036324892 ;
	setAttr ".uvtk[214]" -type "float2" -0.039826062 -0.0012986306 ;
	setAttr ".uvtk[215]" -type "float2" 0.036603779 0 ;
	setAttr ".uvtk[216]" -type "float2" -0.039210483 0.071031898 ;
	setAttr ".uvtk[217]" -type "float2" -0.075529844 0.033408556 ;
	setAttr ".uvtk[218]" -type "float2" 0.078145027 0 ;
	setAttr ".uvtk[219]" -type "float2" 0.64206123 -0.51081884 ;
	setAttr ".uvtk[282]" -type "float2" -0.096657306 -1.8557825 ;
	setAttr ".uvtk[283]" -type "float2" -0.65699017 -1.3417907 ;
	setAttr ".uvtk[284]" -type "float2" -0.6856904 -1.3795726 ;
	setAttr ".uvtk[285]" -type "float2" -0.13186967 -1.8882306 ;
	setAttr ".uvtk[286]" -type "float2" -0.69482934 -1.3682576 ;
	setAttr ".uvtk[287]" -type "float2" -0.69748056 -1.3799462 ;
	setAttr ".uvtk[288]" -type "float2" -0.11550015 -1.9242771 ;
	setAttr ".uvtk[289]" -type "float2" -0.11234663 -1.8961385 ;
	setAttr ".uvtk[290]" -type "float2" -0.89240122 -1.1254661 ;
	setAttr ".uvtk[291]" -type "float2" -0.91411328 -1.1648613 ;
	setAttr ".uvtk[292]" -type "float2" 0.15651819 -2.0509977 ;
	setAttr ".uvtk[293]" -type "float2" 0.17932145 -2.0093174 ;
	setAttr ".uvtk[294]" -type "float2" -0.92399275 -1.1643362 ;
	setAttr ".uvtk[295]" -type "float2" -0.92232293 -1.1727176 ;
	setAttr ".uvtk[296]" -type "float2" 0.20890778 -2.0664675 ;
	setAttr ".uvtk[297]" -type "float2" 0.22095497 -2.0253775 ;
	setAttr ".uvtk[298]" -type "float2" -1.5532701 -0.73927355 ;
	setAttr ".uvtk[299]" -type "float2" -1.5742238 -0.78433716 ;
	setAttr ".uvtk[300]" -type "float2" -0.039488383 0 ;
	setAttr ".uvtk[301]" -type "float2" 0.036287129 0 ;
	setAttr ".uvtk[302]" -type "float2" 0.036321431 0 ;
	setAttr ".uvtk[303]" -type "float2" -0.039451614 0 ;
	setAttr ".uvtk[304]" -type "float2" 0.036392659 0 ;
	setAttr ".uvtk[305]" -type "float2" -0.039448842 0 ;
	setAttr ".uvtk[306]" -type "float2" -0.039405376 0 ;
	setAttr ".uvtk[307]" -type "float2" -0.039411068 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "010E9E8D-CF4D-8046-51B2-519D8E3DB751";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1582\n            -height 1746\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
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
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1582\\n    -height 1746\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1582\\n    -height 1746\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "67076087-4842-495A-7516-1BB4750C1CFE";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode polyMapSew -n "polyMapSew29";
	rename -uid "9D4A8515-9C46-6E1B-8BB7-A593BFB179D3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[201]";
createNode polyTweakUV -n "polyTweakUV72";
	rename -uid "5EEBB739-6748-1648-53E9-5B9A49590822";
	setAttr ".uopa" yes;
	setAttr -s 41 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" -0.012733579 0.023657311 ;
	setAttr ".uvtk[93]" -type "float2" -0.0086847246 0.024965808 ;
	setAttr ".uvtk[94]" -type "float2" -0.0095155835 0.028219441 ;
	setAttr ".uvtk[95]" -type "float2" -0.018401802 0.010594811 ;
	setAttr ".uvtk[96]" -type "float2" -0.00099894404 0.0033144355 ;
	setAttr ".uvtk[97]" -type "float2" 0.002613306 0.0042473078 ;
	setAttr ".uvtk[100]" -type "float2" 0.011966765 0.014021523 ;
	setAttr ".uvtk[101]" -type "float2" 0.013844579 0.013559774 ;
	setAttr ".uvtk[102]" -type "float2" 0.013456002 0.014807439 ;
	setAttr ".uvtk[103]" -type "float2" 0.011846691 0.015182605 ;
	setAttr ".uvtk[104]" -type "float2" 0.0015284121 0.0035254955 ;
	setAttr ".uvtk[105]" -type "float2" 0.0031371415 0.0030170679 ;
	setAttr ".uvtk[106]" -type "float2" 0.001292333 0.0015074611 ;
	setAttr ".uvtk[107]" -type "float2" 0.0028626323 0.0012093484 ;
	setAttr ".uvtk[113]" -type "float2" -0.053008318 -0.038126707 ;
	setAttr ".uvtk[114]" -type "float2" -0.018064555 0.046757877 ;
	setAttr ".uvtk[210]" -type "float2" 0 2.3283064e-10 ;
	setAttr ".uvtk[212]" -type "float2" -0.017093211 0.010005183 ;
	setAttr ".uvtk[213]" -type "float2" 0.0159159 0.015605478 ;
	setAttr ".uvtk[214]" -type "float2" 0.015917614 0.016197156 ;
	setAttr ".uvtk[215]" -type "float2" -0.017955244 0.025863679 ;
	setAttr ".uvtk[216]" -type "float2" 0.015039176 0.012348838 ;
	setAttr ".uvtk[217]" -type "float2" 0.017387211 0.012650217 ;
	setAttr ".uvtk[218]" -type "float2" -0.011490762 0.0099381814 ;
	setAttr ".uvtk[223]" -type "float2" 0 1.4901161e-08 ;
	setAttr ".uvtk[224]" -type "float2" 0 1.4901161e-08 ;
	setAttr ".uvtk[226]" -type "float2" 0 7.4505806e-09 ;
	setAttr ".uvtk[283]" -type "float2" 0.00059723854 -0.0020048618 ;
	setAttr ".uvtk[284]" -type "float2" -0.00028754771 0.0026333928 ;
	setAttr ".uvtk[285]" -type "float2" -0.00066965818 0.0020340085 ;
	setAttr ".uvtk[286]" -type "float2" -0.0062501729 -0.0019624233 ;
	setAttr ".uvtk[287]" -type "float2" -0.011075437 0.0082013011 ;
	setAttr ".uvtk[288]" -type "float2" 0.00021419674 -0.0034257174 ;
	setAttr ".uvtk[290]" -type "float2" 0.0036199093 -0.0024026334 ;
	setAttr ".uvtk[291]" -type "float2" 0.00064950623 -0.00069367886 ;
	setAttr ".uvtk[294]" -type "float2" -0.00082787871 -0.0068450868 ;
	setAttr ".uvtk[299]" -type "float2" 0.015874907 0.013159748 ;
	setAttr ".uvtk[300]" -type "float2" -0.016643673 0.022042248 ;
	setAttr ".uvtk[301]" -type "float2" -0.0044090748 0.0020266175 ;
	setAttr ".uvtk[302]" -type "float2" 0.0044073462 0.0024662614 ;
	setAttr ".uvtk[304]" -type "float2" 0.0040480494 0.00075656176 ;
createNode polyMapSew -n "polyMapSew30";
	rename -uid "C5224443-2E48-2693-1C78-0AB642AF1B8D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[208]";
createNode polyTweakUV -n "polyTweakUV73";
	rename -uid "761981C9-6B42-D9A3-DD04-02A4F3947104";
	setAttr ".uopa" yes;
	setAttr -s 57 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" 0.0027772784 -1.4517456e-05 ;
	setAttr ".uvtk[93]" -type "float2" 0.0015894175 -0.00024175271 ;
	setAttr ".uvtk[94]" -type "float2" 0.0013327599 -0.00075320899 ;
	setAttr ".uvtk[95]" -type "float2" 0.0027843714 -0.00064043142 ;
	setAttr ".uvtk[96]" -type "float2" -0.0021362305 0.0022092462 ;
	setAttr ".uvtk[97]" -type "float2" -0.0028626621 0.0023576319 ;
	setAttr ".uvtk[98]" -type "float2" -0.002079308 0.0026375055 ;
	setAttr ".uvtk[99]" -type "float2" 0.00088208914 0.0037187636 ;
	setAttr ".uvtk[100]" -type "float2" 0.015474662 -0.010103032 ;
	setAttr ".uvtk[101]" -type "float2" 0.015527055 -0.0085326545 ;
	setAttr ".uvtk[102]" -type "float2" 0.014665782 -0.0076536248 ;
	setAttr ".uvtk[103]" -type "float2" 0.014456853 -0.009436775 ;
	setAttr ".uvtk[104]" -type "float2" 0.032929942 -0.011678368 ;
	setAttr ".uvtk[105]" -type "float2" 0.033245176 -0.010061234 ;
	setAttr ".uvtk[106]" -type "float2" 0.03426069 -0.011583149 ;
	setAttr ".uvtk[107]" -type "float2" 0.03462474 -0.010176331 ;
	setAttr ".uvtk[108]" -type "float2" -8.9406967e-08 -1.1920929e-07 ;
	setAttr ".uvtk[111]" -type "float2" 0 5.9604645e-08 ;
	setAttr ".uvtk[113]" -type "float2" 0.073344678 0.031346858 ;
	setAttr ".uvtk[114]" -type "float2" 0.0532423 0.020708263 ;
	setAttr ".uvtk[117]" -type "float2" 0.08534506 -0.0066601634 ;
	setAttr ".uvtk[118]" -type "float2" 0 7.4505806e-09 ;
	setAttr ".uvtk[121]" -type "float2" 0 3.7252903e-09 ;
	setAttr ".uvtk[212]" -type "float2" 0.0035731196 -0.0016452307 ;
	setAttr ".uvtk[213]" -type "float2" 0.014275461 -0.0066534681 ;
	setAttr ".uvtk[214]" -type "float2" 0.014708072 -0.0069369506 ;
	setAttr ".uvtk[215]" -type "float2" 0.0039563179 -0.00050341338 ;
	setAttr ".uvtk[216]" -type "float2" 0.014307439 -0.0075020296 ;
	setAttr ".uvtk[217]" -type "float2" 0.0022572875 -0.0013799444 ;
	setAttr ".uvtk[227]" -type "float2" 0 -1.8626451e-09 ;
	setAttr ".uvtk[228]" -type "float2" 0 3.7252903e-09 ;
	setAttr ".uvtk[280]" -type "float2" 0.49154964 1.0235045 ;
	setAttr ".uvtk[281]" -type "float2" 0.11434367 0.65089488 ;
	setAttr ".uvtk[282]" -type "float2" 0.14370859 0.63181764 ;
	setAttr ".uvtk[283]" -type "float2" 0.50990927 0.99603558 ;
	setAttr ".uvtk[284]" -type "float2" 0.12937194 0.62162381 ;
	setAttr ".uvtk[285]" -type "float2" 0.1453805 0.61462927 ;
	setAttr ".uvtk[286]" -type "float2" 0.53484821 0.9898234 ;
	setAttr ".uvtk[287]" -type "float2" 0.52333134 1.0136036 ;
	setAttr ".uvtk[288]" -type "float2" -0.04480496 0.49451491 ;
	setAttr ".uvtk[289]" -type "float2" -0.017059535 0.48362669 ;
	setAttr ".uvtk[290]" -type "float2" 0.63249266 1.1947751 ;
	setAttr ".uvtk[291]" -type "float2" 0.60442871 1.2108868 ;
	setAttr ".uvtk[292]" -type "float2" -0.018678218 0.47162601 ;
	setAttr ".uvtk[293]" -type "float2" -0.0043010116 0.4748565 ;
	setAttr ".uvtk[294]" -type "float2" 0.64338714 1.2253683 ;
	setAttr ".uvtk[295]" -type "float2" 0.61630416 1.239287 ;
	setAttr ".uvtk[296]" -type "float2" -0.32658249 0.045909576 ;
	setAttr ".uvtk[297]" -type "float2" -0.29586828 0.030583598 ;
	setAttr ".uvtk[298]" -type "float2" 0.015471384 -0.0071514398 ;
	setAttr ".uvtk[299]" -type "float2" 0.0039939284 0.00057591498 ;
	setAttr ".uvtk[300]" -type "float2" -0.0014532506 0.0024724305 ;
	setAttr ".uvtk[301]" -type "float2" 0.033897087 -0.0084913969 ;
	setAttr ".uvtk[302]" -type "float2" -0.0048469305 0.0016128719 ;
	setAttr ".uvtk[303]" -type "float2" 0.03536801 -0.0088530779 ;
	setAttr ".uvtk[304]" -type "float2" 0.071174473 0.0089265406 ;
	setAttr ".uvtk[305]" -type "float2" 0.070065767 0.011007845 ;
createNode polyMapSewMove -n "polyMapSewMove39";
	rename -uid "E6F7B0C7-0544-EFB3-49F9-C394C3BAE64B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[186]";
createNode polyTweakUV -n "polyTweakUV74";
	rename -uid "053FF0E6-B447-675C-8F1F-DABBF9E5324C";
	setAttr ".uopa" yes;
	setAttr -s 42 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0 3.7252903e-09 ;
	setAttr ".uvtk[6]" -type "float2" 0 7.4505806e-09 ;
	setAttr ".uvtk[93]" -type "float2" 0.00022739172 0.00010857359 ;
	setAttr ".uvtk[94]" -type "float2" 8.7976456e-05 0.00030618533 ;
	setAttr ".uvtk[95]" -type "float2" 0.00014480948 -7.9037622e-05 ;
	setAttr ".uvtk[97]" -type "float2" 0.00018694997 8.8810921e-06 ;
	setAttr ".uvtk[100]" -type "float2" -0.00030064583 -3.8519502e-06 ;
	setAttr ".uvtk[102]" -type "float2" -0.0001193881 0.00025306642 ;
	setAttr ".uvtk[103]" -type "float2" -0.00040932 0.00019662455 ;
	setAttr ".uvtk[104]" -type "float2" -0.00029680133 -2.9444695e-05 ;
	setAttr ".uvtk[106]" -type "float2" -0.00029550493 -0.00016564131 ;
	setAttr ".uvtk[109]" -type "float2" 2.9802322e-08 0 ;
	setAttr ".uvtk[110]" -type "float2" -2.2351742e-08 0 ;
	setAttr ".uvtk[112]" -type "float2" -0.048664957 0.028252244 ;
	setAttr ".uvtk[115]" -type "float2" -0.055037603 0.025069535 ;
	setAttr ".uvtk[158]" -type "float2" 0 3.7252903e-09 ;
	setAttr ".uvtk[208]" -type "float2" 0 7.4505806e-09 ;
	setAttr ".uvtk[209]" -type "float2" 0 -2.3283064e-10 ;
	setAttr ".uvtk[212]" -type "float2" 0.000436306 -0.0004601283 ;
	setAttr ".uvtk[213]" -type "float2" 7.3194504e-05 0.00027216505 ;
	setAttr ".uvtk[214]" -type "float2" -8.2448125e-05 0.0001092013 ;
	setAttr ".uvtk[215]" -type "float2" 0.00022339821 -0.00022622384 ;
	setAttr ".uvtk[216]" -type "float2" -0.00023317337 0.00050766207 ;
	setAttr ".uvtk[217]" -type "float2" 0.00032353401 -0.0002157297 ;
	setAttr ".uvtk[223]" -type "float2" 0 -7.4505806e-09 ;
	setAttr ".uvtk[226]" -type "float2" 0 -2.7939677e-09 ;
	setAttr ".uvtk[229]" -type "float2" 0 7.21775e-09 ;
	setAttr ".uvtk[230]" -type "float2" 0 -7.4505806e-09 ;
	setAttr ".uvtk[280]" -type "float2" 0.00052940845 -0.00208994 ;
	setAttr ".uvtk[281]" -type "float2" 0.0080444962 -0.00023788959 ;
	setAttr ".uvtk[282]" -type "float2" -0.012719721 0.031226598 ;
	setAttr ".uvtk[283]" -type "float2" -0.019520864 0.015409682 ;
	setAttr ".uvtk[284]" -type "float2" 0.00076904893 0.00036864914 ;
	setAttr ".uvtk[285]" -type "float2" 0.0011552572 -0.00038347952 ;
	setAttr ".uvtk[286]" -type "float2" 0.23181038 0.20874147 ;
	setAttr ".uvtk[287]" -type "float2" 0.18931845 0.23611912 ;
	setAttr ".uvtk[288]" -type "float2" -0.0023815036 0.0044274628 ;
	setAttr ".uvtk[289]" -type "float2" -0.0031667948 0.0035181344 ;
	setAttr ".uvtk[290]" -type "float2" 0.2297163 0.2764194 ;
	setAttr ".uvtk[291]" -type "float2" 0.18684371 0.28452829 ;
	setAttr ".uvtk[294]" -type "float2" 1.2523144 0.32288235 ;
	setAttr ".uvtk[295]" -type "float2" 1.2417208 0.38841432 ;
createNode polyMapSew -n "polyMapSew31";
	rename -uid "9AEF2B0B-384F-6C83-F8F0-EBAF12B92035";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[209]";
createNode polyTweakUV -n "polyTweakUV75";
	rename -uid "3A57412D-3A47-9551-DB45-6EBD5D4F29B2";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[93]" -type "float2" -0.0011379421 -3.9607286e-05 ;
	setAttr ".uvtk[94]" -type "float2" -0.0017804801 -0.0010746606 ;
	setAttr ".uvtk[95]" -type "float2" -0.00064086914 -0.0012439601 ;
	setAttr ".uvtk[97]" -type "float2" -0.0010608733 8.0376863e-05 ;
	setAttr ".uvtk[99]" -type "float2" -0.00085926056 0.00049594045 ;
	setAttr ".uvtk[112]" -type "float2" 0.06020999 0.005712688 ;
	setAttr ".uvtk[115]" -type "float2" 0.01085595 0.0078443885 ;
	setAttr ".uvtk[116]" -type "float2" 0.074798465 0.017495215 ;
	setAttr ".uvtk[212]" -type "float2" -0.00042495131 -0.0022841664 ;
	setAttr ".uvtk[213]" -type "float2" -9.8824501e-05 -0.00038377661 ;
	setAttr ".uvtk[215]" -type "float2" -6.5326691e-05 -0.0012229383 ;
	setAttr ".uvtk[217]" -type "float2" -0.0011935234 -0.0025259089 ;
	setAttr ".uvtk[218]" -type "float2" 0.022881687 0.037214048 ;
	setAttr ".uvtk[221]" -type "float2" -0.047650099 0.037214614 ;
	setAttr ".uvtk[280]" -type "float2" -0.0065878928 -0.0022286698 ;
	setAttr ".uvtk[281]" -type "float2" -0.00038549304 -0.0011830628 ;
	setAttr ".uvtk[283]" -type "float2" 0.016201615 0.018507442 ;
	setAttr ".uvtk[284]" -type "float2" 0.0075559914 0.025095796 ;
	setAttr ".uvtk[287]" -type "float2" -0.19175944 0.17113855 ;
	setAttr ".uvtk[288]" -type "float2" -0.21254241 0.140499 ;
	setAttr ".uvtk[291]" -type "float2" -0.22588804 0.19516742 ;
	setAttr ".uvtk[292]" -type "float2" -0.24378857 0.16441953 ;
createNode polyMapSew -n "polyMapSew32";
	rename -uid "06CA4535-4A45-9ABB-C65A-249B38C5965C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[200]";
createNode polyTweakUV -n "polyTweakUV76";
	rename -uid "74E33B9C-864C-EBF1-7AB6-F495E014BBC1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[222:227]" -type "float2" -1.067047834 -0.36357364
		 -1.062953472 -0.39690748 -1.0323627 -0.39314967 -1.036457062 -0.35981584 -0.52050924
		 -0.33027771 -0.52460361 -0.29694384;
createNode polyMapSewMove -n "polyMapSewMove40";
	rename -uid "C05E74ED-B940-1D38-4D9A-168F4D304BF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[251]";
createNode polyMapSew -n "polyMapSew33";
	rename -uid "22111E1B-2F42-B87A-EC38-689E07C39689";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[239]";
createNode polyTweakUV -n "polyTweakUV77";
	rename -uid "D8A60155-B941-77FF-4C9A-D3AC3780496D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[118:121]" -type "float2" 0.1451126 -0.35394204 0.16569814
		 -0.39535272 0.20731413 -0.37466526 0.18672863 -0.33325452;
createNode polyMapSewMove -n "polyMapSewMove41";
	rename -uid "7059D8F9-904B-E9DC-CB40-2F85B82204B0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[244]";
createNode polyTweakUV -n "polyTweakUV78";
	rename -uid "CD03DB4F-834C-DA34-C137-5A9A93781BCC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[108:111]" -type "float2" -0.35774094 -0.27958131 -0.39092565
		 -0.30116478 -0.25475481 -0.51052749 -0.22157015 -0.48894396;
createNode polyMapSewMove -n "polyMapSewMove42";
	rename -uid "EB1B5E08-1949-8876-8A94-10943A027580";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[213]";
createNode polyTweakUV -n "polyTweakUV79";
	rename -uid "DD19F5F6-2244-51C3-B1DA-3487EC69BAAF";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk[112:117]" -type "float2" 0.091350436 0.040859461 0.086606026
		 -0.017199695 -0.1758562 -0.069740593 -0.14477009 -0.01068455 0.074584782 0.065706909
		 0.068085074 -0.0089415908;
createNode polyMapCut -n "polyMapCut29";
	rename -uid "122B70E4-1144-DE34-6E5F-4198C680AF35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[220]";
createNode polyTweakUV -n "polyTweakUV80";
	rename -uid "EAC3BD62-344A-B1F7-2301-C5B8719E1F62";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[112]" -type "float2" 0.012608372 -0.3902559 ;
	setAttr ".uvtk[114]" -type "float2" 0.41962907 -0.60771579 ;
	setAttr ".uvtk[115]" -type "float2" 0.44327733 -0.53945392 ;
	setAttr ".uvtk[296]" -type "float2" -0.011039848 -0.45851776 ;
createNode polyMapSewMove -n "polyMapSewMove43";
	rename -uid "0F00AEEE-DA4C-C592-95A5-7481541559C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[222]";
createNode polyTweakUV -n "polyTweakUV81";
	rename -uid "34E1FB60-E945-0959-CE30-A39838112489";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[225:228]" -type "float2" -0.53168535 -0.26344472 -0.53578019
		 -0.23011151 -1.047633648 -0.29299468 -1.043538332 -0.32632789;
createNode polyMapSewMove -n "polyMapSewMove44";
	rename -uid "FA0CD6AD-3342-4E8C-A348-2F8D79ECA14A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[249]";
createNode polyTweakUV -n "polyTweakUV82";
	rename -uid "5E9D4DBE-2045-BF76-1B30-BDBBFA7B6F79";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[218:221]" -type "float2" -0.48248282 -0.40418005 -0.47969213
		 -0.51661855 -0.47616366 -0.51763517 -0.41397709 -0.42391732;
createNode polyMapSewMove -n "polyMapSewMove45";
	rename -uid "4D53189D-B34B-6CC5-F465-06B8DF2DFF20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[228]";
createNode polyTweakUV -n "polyTweakUV83";
	rename -uid "9F3EDBE6-544B-1861-073C-2FA0C9315ECC";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk";
	setAttr ".uvtk[96]" -type "float2" -0.001360476 0.00041273236 ;
	setAttr ".uvtk[97]" -type "float2" -0.0019765496 0.00052115321 ;
	setAttr ".uvtk[98]" -type "float2" -0.0013161928 0.0014215272 ;
	setAttr ".uvtk[99]" -type "float2" -0.0019598939 0.0012137156 ;
	setAttr ".uvtk[117]" -type "float2" 2.9802322e-08 -5.9604645e-08 ;
	setAttr ".uvtk[118]" -type "float2" -0.0047738664 -0.0035803886 ;
	setAttr ".uvtk[119]" -type "float2" -0.0047738664 -0.0035803886 ;
	setAttr ".uvtk[120]" -type "float2" -0.0047738664 -0.0035803886 ;
	setAttr ".uvtk[121]" -type "float2" -0.0047738664 -0.0035803886 ;
	setAttr ".uvtk[218]" -type "float2" -0.00085612515 -0.027635723 ;
	setAttr ".uvtk[219]" -type "float2" 0.0040337215 -0.0092419833 ;
	setAttr ".uvtk[221]" -type "float2" -0.0047738515 -0.0035803886 ;
	setAttr ".uvtk[222]" -type "float2" -0.0047738515 -0.0035803886 ;
	setAttr ".uvtk[223]" -type "float2" -0.0047738664 -0.0035803886 ;
	setAttr ".uvtk[224]" -type "float2" -0.0047738664 -0.0035803886 ;
	setAttr ".uvtk[225]" -type "float2" -0.0047738515 -0.0035803886 ;
	setAttr ".uvtk[226]" -type "float2" -0.0047738515 -0.0035803886 ;
	setAttr ".uvtk[227]" -type "float2" 0.024347246 -0.052637558 ;
	setAttr ".uvtk[228]" -type "float2" 0.092154503 -0.090582743 ;
	setAttr ".uvtk[229]" -type "float2" 0.10801953 -0.062232368 ;
	setAttr ".uvtk[230]" -type "float2" 0.040212214 -0.024287175 ;
	setAttr ".uvtk[231]" -type "float2" 0.15996188 -0.12852791 ;
	setAttr ".uvtk[232]" -type "float2" 0.17582685 -0.10017752 ;
	setAttr ".uvtk[233]" -type "float2" 0.2277692 -0.16647309 ;
	setAttr ".uvtk[234]" -type "float2" 0.2436341 -0.13812271 ;
	setAttr ".uvtk[235]" -type "float2" 0.29557645 -0.20441826 ;
	setAttr ".uvtk[236]" -type "float2" 0.31144142 -0.17606789 ;
	setAttr ".uvtk[237]" -type "float2" 0.36338377 -0.24236344 ;
	setAttr ".uvtk[238]" -type "float2" 0.37924874 -0.21401305 ;
	setAttr ".uvtk[239]" -type "float2" 0.43119109 -0.2803086 ;
	setAttr ".uvtk[240]" -type "float2" 0.44705597 -0.25195819 ;
	setAttr ".uvtk[278]" -type "float2" -2.9802322e-08 2.9802322e-07 ;
	setAttr ".uvtk[281]" -type "float2" -3.5762787e-07 2.9802322e-07 ;
	setAttr ".uvtk[282]" -type "float2" -3.5762787e-07 -2.9802322e-08 ;
createNode polyMapSewMove -n "polyMapSewMove46";
	rename -uid "45866459-1B45-A0BC-2722-149EA1D3DE18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[78]";
createNode polyTweakUV -n "polyTweakUV84";
	rename -uid "889857C2-734B-9792-FB00-A58D314CFFF4";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[239:252]" -type "float2" 0.22929412 -0.18093683 0.22690976
		 -0.1794779 0.22629976 -0.18047482 0.22868413 -0.18193375 0.22452533 -0.17801899 0.2239154
		 -0.1790159 0.22214097 -0.17656006 0.22153097 -0.17755698 0.2197566 -0.17510115 0.21914661
		 -0.17609805 0.21737218 -0.17364222 0.21676224 -0.17463914 0.21498787 -0.17218331
		 0.21437788 -0.17318022;
createNode polyMapSewMove -n "polyMapSewMove47";
	rename -uid "699F9919-8147-C947-A3D7-A3AE5021EE2D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[96]";
createNode polyTweakUV -n "polyTweakUV85";
	rename -uid "41D55862-B446-E974-1324-6E9B0B09A807";
	setAttr ".uopa" yes;
	setAttr -s 38 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.44332251 0.35543755 ;
	setAttr ".uvtk[1]" -type "float2" -0.44489771 0.35263023 ;
	setAttr ".uvtk[2]" -type "float2" -0.44372401 0.3519716 ;
	setAttr ".uvtk[3]" -type "float2" -0.44214875 0.35477895 ;
	setAttr ".uvtk[4]" -type "float2" -0.44647297 0.34982288 ;
	setAttr ".uvtk[5]" -type "float2" -0.44529921 0.34916428 ;
	setAttr ".uvtk[6]" -type "float2" -0.44174728 0.3582449 ;
	setAttr ".uvtk[7]" -type "float2" -0.44057354 0.35758629 ;
	setAttr ".uvtk[8]" -type "float2" -0.4480482 0.3470155 ;
	setAttr ".uvtk[9]" -type "float2" -0.44687444 0.34635693 ;
	setAttr ".uvtk[10]" -type "float2" -0.44017208 0.36105224 ;
	setAttr ".uvtk[11]" -type "float2" -0.43899828 0.36039367 ;
	setAttr ".uvtk[12]" -type "float2" -0.44962344 0.34420815 ;
	setAttr ".uvtk[13]" -type "float2" -0.44844967 0.34354958 ;
	setAttr ".uvtk[14]" -type "float2" -0.43859684 0.36385959 ;
	setAttr ".uvtk[15]" -type "float2" -0.43742308 0.36320096 ;
	setAttr ".uvtk[16]" -type "float2" -0.45119867 0.34140083 ;
	setAttr ".uvtk[17]" -type "float2" -0.4500249 0.34074223 ;
	setAttr ".uvtk[18]" -type "float2" -0.43702164 0.36666688 ;
	setAttr ".uvtk[19]" -type "float2" -0.43584788 0.36600831 ;
	setAttr ".uvtk[20]" -type "float2" -0.4527739 0.33859345 ;
	setAttr ".uvtk[21]" -type "float2" -0.45160013 0.33793491 ;
	setAttr ".uvtk[22]" -type "float2" -0.43544641 0.36947426 ;
	setAttr ".uvtk[23]" -type "float2" -0.43427256 0.36881569 ;
	setAttr ".uvtk[24]" -type "float2" -0.43387112 0.37228161 ;
	setAttr ".uvtk[25]" -type "float2" -0.43269739 0.37162304 ;
	setAttr ".uvtk[227]" -type "float2" -0.45434898 0.33578604 ;
	setAttr ".uvtk[228]" -type "float2" -0.45317519 0.33512747 ;
	setAttr ".uvtk[229]" -type "float2" -0.45592409 0.33297861 ;
	setAttr ".uvtk[230]" -type "float2" -0.4547503 0.33232006 ;
	setAttr ".uvtk[231]" -type "float2" -0.45749915 0.33017117 ;
	setAttr ".uvtk[232]" -type "float2" -0.45632538 0.32951266 ;
	setAttr ".uvtk[233]" -type "float2" -0.45907426 0.32736376 ;
	setAttr ".uvtk[234]" -type "float2" -0.45790046 0.32670522 ;
	setAttr ".uvtk[235]" -type "float2" -0.46064934 0.32455635 ;
	setAttr ".uvtk[236]" -type "float2" -0.45947555 0.32389778 ;
	setAttr ".uvtk[237]" -type "float2" -0.46222442 0.32174891 ;
	setAttr ".uvtk[238]" -type "float2" -0.46105063 0.32109034 ;
createNode polyMapSewMove -n "polyMapSewMove48";
	rename -uid "AB0E4FD5-C141-BDE9-5460-95914421B5F9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[84]";
createNode polyTweakUV -n "polyTweakUV86";
	rename -uid "7F92CA35-AD40-AF1E-8213-62882B3E5227";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[113]" -type "float2" 0.051742569 -1.058002 ;
	setAttr ".uvtk[116]" -type "float2" 0.0062902421 -0.96590817 ;
	setAttr ".uvtk[117]" -type "float2" -0.01714243 -1.0344532 ;
	setAttr ".uvtk[283]" -type "float2" 0.075175211 -0.98945701 ;
createNode polyMapSewMove -n "polyMapSewMove49";
	rename -uid "A8B853AD-0E42-53BC-AF9D-4A9F37FF038A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[230]";
createNode polyTweakUV -n "polyTweakUV87";
	rename -uid "364463F5-544B-905B-0AC1-D396CCBC90B9";
	setAttr ".uopa" yes;
	setAttr -s 283 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.42544997 0.81689429 0.42545 0.81689429
		 0.42545 0.81689429 0.42544991 0.81689429 0.42545 0.81689429 0.42545003 0.81689429
		 0.42545 0.81689441 0.42544997 0.81689429 0.42545 0.81689429 0.42544997 0.81689429
		 0.42544997 0.81689429 0.42545 0.81689429 0.42544994 0.81689429 0.42544991 0.81689429
		 0.42544991 0.81689429 0.42544997 0.81689429 0.42545 0.81689429 0.42544997 0.81689441
		 0.42545 0.81689429 0.42544994 0.81689429 0.42544994 0.81689429 0.42544997 0.81689429
		 0.42544994 0.81689429 0.42545 0.81689441 0.42544994 0.81689429 0.42545 0.81689441
		 0.42544994 0.81689429 0.42544997 0.81689429 0.42544997 0.81689429 0.42544997 0.81689429
		 0.42544997 0.81689429 0.42544997 0.81689429 0.42545 0.81689429 0.42544997 0.81689429
		 0.42544997 0.81689429 0.42544997 0.81689429 0.42545 0.81689429 0.42544997 0.81689429
		 0.42544997 0.81689429 0.42544997 0.81689429 0.42544997 0.81689429 0.42544997 0.81689429
		 0.42544997 0.81689429 0.42544997 0.81689429 0.42544991 0.81689429 0.42544997 0.81689429
		 0.42544997 0.81689429 0.42544991 0.81689429 0.42544997 0.81689435 0.42544997 0.81689429
		 0.42544997 0.81689429 0.42544997 0.81689429 -1.21529818 0.49896389 -1.21529818 0.49896389
		 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896395 -1.21529818 0.49896395 -1.21529818
		 0.49896395 -1.21529818 0.49896383 -1.21529818 0.49896383 -1.21529818 0.49896395 -1.21529818
		 0.49896389 -1.21529818 0.49896395 -1.21529818 0.49896395 -1.21529818 0.49896383 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896383 -1.33346772 0.5061844 -1.34679222
		 0.50613451 -1.34645033 0.49339867 -1.33324337 0.49364811 -1.33304477 0.59244108 -1.34613121
		 0.59233826 -1.3330847 0.60579318 -1.3461659 0.60565323 -1.083869457 0.50655502 -1.097626925
		 0.50653172 -1.097557068 0.4934094 -1.083804131 0.4934544 -1.084007978 0.5925827 -1.097764015
		 0.59254885 -1.084030271 0.60634017 -1.097785711 0.60628062 -1.12509608 0.38069725
		 -1.11138308 0.3804999 -1.11013818 0.46701539 -1.12385106 0.46721268 -1.32060158 0.38495135
		 -1.33324146 0.6312896 -1.30728209 0.46796018 -1.32044315 0.46798533 -1.34622228 0.61806107
		 -1.33314979 0.61815232 -1.31874609 0.60742944 -1.31876767 0.62112826 -1.33253443
		 0.62110656 -1.33251274 0.60740775 -0.19910485 0.82791197 -0.2001707 0.84009528 -0.20333594
		 0.85190839 -0.2085045 0.86299235 -0.21551937 0.87301052 -0.22416717 0.88165832 -0.23418528
		 0.88867301 -0.24526924 0.89384156 -0.2570824 0.89700693 -0.26926571 0.89807278 -0.28144902
		 0.89700681 -0.29326206 0.89384156 -0.30434614 0.88867295 -0.31436414 0.8816582 -0.32301205
		 0.8730104 -0.33002681 0.86299223 -0.33519524 0.85190833 -0.33836061 0.84009516 -0.33942658
		 0.82791191 -0.33836061 0.8157286 -0.33519524 0.80391544 -0.33002669 0.79283148 -0.32301182
		 0.78281337 -0.31436414 0.77416563 -0.30434602 0.76715088 -0.29326206 0.76198232 -0.28144878
		 0.75881702 -0.26926559 0.75775111 -0.2570824 0.75881702 -0.24526912 0.76198238 -0.23418516
		 0.76715094 -0.22416717 0.77416569 -0.21551937 0.78281349 -0.2085045 0.7928316 -0.20333594
		 0.80391562 -0.2001707 0.81572866 -0.53664774 0.84076935 -0.53981304 0.85258245 -0.5449816
		 0.86366642 -0.55199635 0.87368453 -0.56064415 0.88233227 -0.57066226 0.88934702 -0.58174628
		 0.89451569 -0.5935595 0.89768088 -0.60574257 0.89874691 -0.617926 0.897681 -0.62973917
		 0.89451563 -0.64082313 0.88934714 -0.65084118 0.88233238 -0.65948898 0.87368464 -0.66650379
		 0.86366647 -0.67167228 0.85258251 -0.67483759 0.84076941 -0.67590344 0.82858604 -0.67483759
		 0.81640285 -0.67167228 0.80458963 -0.66650379 0.79350567 -0.65948898 0.78348762 -0.65084118
		 0.77483976 -0.64082313 0.76782507 -0.62973917 0.76265645 -0.617926 0.75949115 -0.60574275
		 0.7584253 -0.5935595 0.75949115 -0.58174628 0.76265645 -0.57066226 0.76782495 -0.56064415
		 0.7748397 -0.55199635 0.78348756 -0.54498166 0.79350567 -0.53981304 0.80458969 -0.53664774
		 0.81640279 -0.53558183 0.82858604 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896383 -1.21529818 0.49896383 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896395 -1.21529818 0.49896395 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.32044864
		 0.48055395 -1.11014557 0.47981057 -1.1101439 0.49341232 -1.32053053 0.49372044 -1.097568154
		 0.47955918 -1.33298755 0.48055452 -1.097807407 0.62000972 -1.10841703 0.62146109
		 -1.10839534 0.60776228 -1.31872416 0.59366286 -1.31870222 0.57996428 -1.10835147
		 0.58030111 -1.10837352 0.59399968 0.42544997 0.81689429 0.42544997 0.81689429 0.42544997
		 0.81689429 0.42544997 0.81689429 0.42544997 0.81689441 0.42545 0.81689441 0.42544997
		 0.81689441 0.42544997 0.81689441 0.42545 0.81689429 0.42545 0.81689429 0.42544997
		 0.81689429 0.42544997 0.81689435 0.42544997 0.81689429 0.42544997 0.81689429 0.42544997
		 0.81689429 0.42544991 0.81689435 0.42545003 0.81689429 0.42544997 0.81689429 0.42545003
		 0.81689429 0.42544991 0.81689435 0.42544997 0.81689429 0.42544997 0.81689429 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389;
	setAttr ".uvtk[250:282]" -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896383 -1.21529818 0.49896395 -1.21529818 0.49896395 -1.21529818
		 0.49896395 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818
		 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896389 -1.21529818 0.49896395 -1.21529818
		 0.49896395 -1.21529818 0.49896383 -1.21529818 0.49896383 -1.097785592 0.46637744
		 -1.33291698 0.46800905 -1.098868966 0.3803421 -1.33307362 0.38497487 -1.11155581
		 0.36679596 -1.0990417 0.36663824 -1.33309853 0.37174857 -1.3206265 0.37172502 -1.32077527
		 0.3831405 -1.32094812 0.36943656 -1.11019826 0.50652671 -1.32048631 0.50620484 -1.32062232
		 0.59263116 -1.32064414 0.60639787 -1.34631395 0.63119835 -1.30744052 0.38492623;
createNode polyMapCut -n "polyMapCut30";
	rename -uid "3C3A2CA6-6343-3685-801D-3C8A9CD479FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[83]";
createNode polyTweakUV -n "polyTweakUV88";
	rename -uid "1A356E29-8743-2667-BD81-5B8779A2D556";
	setAttr ".uopa" yes;
	setAttr -s 285 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.25662714 -1.061423898 0.33686662
		 -1.041336298 0.32846791 -1.0077884197 0.24822831 -1.027875543 0.41710615 -1.021249175
		 0.40870768 -0.98770082 0.17638761 -1.081511259 0.16798908 -1.047963142 0.49734586
		 -1.0011614561 0.48894709 -0.96761346 0.096148044 -1.10159886 0.087749571 -1.068050385
		 0.57758546 -0.98107409 0.56918645 -0.94752586 0.01590836 -1.12168658 0.0075097084
		 -1.088138103 0.65782481 -0.9609865 0.64942592 -0.9274379 -0.064330757 -1.14177394
		 -0.072729647 -1.1082257 0.73806471 -0.94089949 0.72966522 -0.9073509 -0.14457047
		 -1.16186166 -0.15296918 -1.12831247 -0.22480994 -1.18194902 -0.23320895 -1.14840019
		 -0.67133957 -0.20816898 -0.66572881 -0.1883195 -0.6740278 -0.18597358 -0.67963868
		 -0.20582294 -0.66011781 -0.16847014 -0.66841692 -0.16612422 -0.67695051 -0.22801834
		 -0.68524957 -0.22567242 -0.65450698 -0.14862078 -0.66280597 -0.14627475 -0.68256134
		 -0.24786782 -0.69086039 -0.24552178 -0.64889604 -0.12877132 -0.65719515 -0.1264254
		 -0.68817222 -0.26771706 -0.69647127 -0.26537126 -0.64328521 -0.10892196 -0.65158445
		 -0.10657604 -0.63767427 -0.089072481 -0.6459735 -0.08672668 -0.63206357 -0.069223136
		 -0.64036244 -0.066877335 -0.62645262 -0.049373835 -0.63475174 -0.047027856 -0.6208418
		 -0.029524416 -0.62914079 -0.027178541 1.97877645 -0.010579906 1.64262784 -0.17353132
		 1.65276337 -0.19443998 1.98891211 -0.031488437 1.62022519 -0.18439147 1.63036084
		 -0.20530012 2.012000322 -0.020296358 2.0018646717 0.00061229989 1.57535768 -0.034761682
		 1.55295515 -0.045621708 1.93402004 0.14056709 1.91093206 0.12937501 1.56571043 -0.014860354
		 1.54330754 -0.025720138 1.92494702 0.15928385 1.90185881 0.14809158 1.73771262 0.043941297
		 1.72806513 0.063843049 1.74379623 0.071469165 1.75286913 0.052752532 1.67351437 -0.23724625
		 2.0096628666 -0.074294761 1.99952698 -0.053386286 1.66337872 -0.21633765 2.032750845
		 -0.063102618 2.022615194 -0.042194143 1.64097583 -0.22719762 1.6511116 -0.24810639
		 2.077507496 -0.21424976 2.10059547 -0.20305744 1.71838164 -0.3868759 1.74078441 -0.37601587
		 2.086580515 -0.23296633 2.10966873 -0.22177425 1.72802901 -0.40677765 1.75043201
		 -0.39591768 1.9194448 -0.29087201 1.92851794 -0.30958876 1.9127866 -0.31721446 1.90313888
		 -0.29731271 1.69174898 0.39484021 1.68250489 0.39480552 1.68274224 0.38597003 1.69190478
		 0.386143 1.69204235 0.45468163 1.68296361 0.45461026 1.69201469 0.46394473 1.68293965
		 0.46384764 1.86491024 0.39509729 1.85536587 0.39508116 1.85541427 0.38597742 1.86495566
		 0.38600859 1.86481404 0.45477983 1.85527086 0.45475638 1.86479855 0.46432421 1.8552556
		 0.46428293 1.83630896 0.30778232 1.84582233 0.30764535 1.84668612 0.36766627 1.83717251
		 0.36780325 1.70067501 0.31073359 1.69190598 0.4816331 1.70991564 0.36832181 1.70078492
		 0.36833921 1.68290043 0.47245571 1.69196963 0.47251898 1.70196247 0.4650799 1.70194733
		 0.47458357 1.69239652 0.47456855 1.69241154 0.46506485 0.87542969 -0.30578461 0.87199837
		 -0.26656356 0.86180848 -0.22853425 0.84516972 -0.19285235 0.82258731 -0.16060159
		 0.79474789 -0.13276228 0.76249725 -0.11018028 0.72681528 -0.093541466 0.68878597
		 -0.083351456 0.64956492 -0.079920128 0.61034405 -0.083351575 0.57231486 -0.093541466
		 0.53663266 -0.11018034 0.50438225 -0.13276252 0.47654259 -0.16060188 0.45396042 -0.19285282
		 0.4373219 -0.22853467 0.42713189 -0.26656392 0.42370033 -0.30578485 0.42713189 -0.34500587
		 0.4373219 -0.38303515 0.45396078 -0.41871712 0.47654319 -0.45096776 0.50438237 -0.478807
		 0.53663301 -0.50138915 0.57231498 -0.5180279 0.61034453 -0.52821779 0.6495654 -0.53164923
		 0.68878597 -0.52821779 0.72681564 -0.51802778 0.7624976 -0.50138891 0.79474801 -0.47880676
		 0.82258743 -0.4509674 0.84516972 -0.41871676 0.86180848 -0.38303468 0.87199837 -0.34500545
		 0.38944262 -0.26522163 0.37925279 -0.22719237 0.36261404 -0.19151035 0.34003186 -0.15925977
		 0.31219244 -0.13142046 0.2799418 -0.10883828 0.24425974 -0.092199288 0.20623019 -0.082009517
		 0.1670098 -0.078577951 0.12778851 -0.082009278 0.089759141 -0.092199288 0.054077208
		 -0.10883804 0.021826684 -0.13142022 -0.0060127378 -0.15925953 -0.028594911 -0.19151029
		 -0.045233667 -0.22719219 -0.055423558 -0.26522139 -0.058854878 -0.3044425 -0.055423558
		 -0.34366333 -0.045233667 -0.38169268 -0.02859503 -0.41737464 -0.0060127378 -0.44962528
		 0.021826684 -0.47746471 0.054077208 -0.50004673 0.089759141 -0.51668572 0.12778851
		 -0.52687562 0.16700932 -0.53030694 0.20623019 -0.52687562 0.24425974 -0.51668572
		 0.2799418 -0.50004697 0.31219244 -0.47746477 0.34003186 -0.4496254 0.3626138 -0.41737476
		 0.37925279 -0.38169268 0.38944262 -0.34366339 0.39287406 -0.3044425 1.080634236 -0.47525358
		 1.095149636 -0.47525358 1.095149636 -0.25243047 1.080634236 -0.25243047 1.91433179
		 0.18118152 1.89124382 0.16998896 1.733181 0.093367085 1.90882945 -0.26897445 2.066892624
		 -0.19235197 1.53269255 -0.0038227625 1.5550952 0.0070373826 1.7174499 0.085740723
		 1.89252365 -0.27541521 1.73016894 -0.35411862 1.10089743 -0.25243214 1.10089755 -0.47525191
		 1.11541271 -0.47525191 1.11541247 -0.25243214 1.70078111 0.37705877 1.84668088 0.37654313
		 1.84668207 0.38597938 1.70072436 0.38619319 1.85540664 0.37636867 1.69208217 0.37705919
		 1.8552407 0.47380754 1.84788013 0.47481453 1.84789515 0.46531075 1.70197761 0.45552912
		 1.70199275 0.44602567 1.84792554 0.44625938 1.84791028 0.45576286 0.81830341 -0.92080736
		 0.80990344 -0.88725972 0.89854217 -0.90071583 0.89014184 -0.86716795 0.97878069 -0.88062406
		 0.97038037 -0.84707582 1.059019089 -0.86053264 1.050618887 -0.826985 -0.69378322
		 -0.28756642 1.13085771 -0.80689347 -0.61523145 -0.0096747372 -0.62353057 -0.0073289368
		 -0.60962123 0.010174757 -0.61792022 0.012520498 -0.60401088 0.030024409 -0.61230999
		 0.03237009 -0.59840053 0.049874008 -0.60669976 0.052219748 -0.59279031 0.069723487
		 -0.60108942 0.072069108 -0.58717996 0.089572966 -0.59547907 0.091918647 2.023762226
		 0.011227466 2.033897877 -0.009681128 1.9559176 0.1511822;
	setAttr ".uvtk[250:284]" 1.94684446 0.16989884 1.88903415 0.11875989 1.95687866
		 -0.021194957 1.73444355 -0.70529956 1.73444355 -0.70529956 1.73444355 -0.70529956
		 1.73444355 -0.70529956 1.59832728 -0.19500658 1.60846305 -0.21591523 1.53105736 -0.056236699
		 1.52140999 -0.036335126 1.59725535 -0.024146579 1.66452551 -0.16291609 1.73444355
		 -0.70529956 1.73444355 -0.70529956 1.73444355 -0.70529956 1.73444355 -0.70529956
		 1.85525584 0.36722377 1.69213116 0.36835566 1.85450435 0.30753592 1.69202256 0.31074992
		 1.84570241 0.29813817 1.85438442 0.29802862 1.69200516 0.30157402 1.70065773 0.30155769
		 1.70055461 0.30947736 1.70043468 0.29997018 1.84664428 0.39507762 1.70075512 0.39485437
		 1.70066059 0.45481345 1.70064569 0.4643642 1.68283677 0.48156986 1.70980573 0.31071618
		 1.13925767 -0.84044111 -0.70208222 -0.28522056;
createNode polySoftEdge -n "polySoftEdge11";
	rename -uid "F2C3F736-114A-9271-D855-33913944B42D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.8443335082509145 0 0 0 0 2.8443335082509145 0 0 0 0 2.8443335082509145 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polyAutoProj -n "polyAutoProj7";
	rename -uid "B7D43ABC-F147-828A-D2C6-C3B7CB57663E";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:53]";
	setAttr ".ix" -type "matrix" 2.8443335082509145 0 0 0 0 2.8443335082509145 0 0 0 0 2.8443335082509145 0
		 0 0 0 1;
	setAttr ".s" -type "double3" 7.5432542084687872 7.5432542084687872 7.5432542084687872 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV89";
	rename -uid "216045F8-9044-02B8-918E-76A5480E373D";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[72]" -type "float2" -1.1175871e-08 0.54251456 ;
	setAttr ".uvtk[73]" -type "float2" -1.1175871e-08 0.54251468 ;
	setAttr ".uvtk[74]" -type "float2" -1.1175871e-08 0.54251468 ;
	setAttr ".uvtk[75]" -type "float2" -1.1175871e-08 0.54251456 ;
	setAttr ".uvtk[144]" -type "float2" -0.25912946 0.54875273 ;
	setAttr ".uvtk[145]" -type "float2" -0.25912946 0.54875273 ;
	setAttr ".uvtk[146]" -type "float2" -0.25912946 0.54875273 ;
	setAttr ".uvtk[147]" -type "float2" -0.25912946 0.54875273 ;
createNode polyMapSewMove -n "polyMapSewMove50";
	rename -uid "97A2A4B1-EC42-D60C-E9EA-56B15DA3FE57";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
createNode polyTweakUV -n "polyTweakUV90";
	rename -uid "86035F40-7F4B-F0D4-AB22-BD8984AAF8B6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[0:3]" -type "float2" 0.59993422 0.54113269 0.40050817
		 0.3417066 0.42422456 0.31799027 0.62365061 0.51741624;
createNode polyMapSewMove -n "polyMapSewMove51";
	rename -uid "564E9BE9-C34D-5A52-8DBB-03B87CD8F8F8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8]";
createNode polyTweakUV -n "polyTweakUV91";
	rename -uid "37E8698C-AB4B-407C-2CC8-54BBD530C548";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[144:147]" -type "float2" -0.0061352849 0.5487529 -0.0061352849
		 0.5487529 -0.0061352849 0.5487529 -0.0061352849 0.5487529;
createNode polyMapSewMove -n "polyMapSewMove52";
	rename -uid "CBC3CE94-C545-2E1B-CD42-22865D5E9EE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
createNode polyTweakUV -n "polyTweakUV92";
	rename -uid "926F69CF-D94A-946B-A61A-39BE88568485";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[4:7]" -type "float2" 0.43035978 0.91648936 0.62978595
		 0.71706343 0.6535024 0.74077988 0.45407623 0.94020581;
createNode polyMapSewMove -n "polyMapSewMove53";
	rename -uid "F3072A41-6144-93E0-48DB-C8B2EF370941";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[9]";
createNode polyTweakUV -n "polyTweakUV93";
	rename -uid "88EC435B-8141-EB66-D8CD-DF8894DDF1F2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[72:75]" -type "float2" 0.20556155 0.5655542 0.20556155
		 0.56555456 0.20556131 0.56555456 0.20556131 0.5655542;
createNode polyMapSewMove -n "polyMapSewMove54";
	rename -uid "1CD70A79-3F46-1112-2C05-F788CC372924";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10]";
createNode polyTweakUV -n "polyTweakUV94";
	rename -uid "7D62DBF5-844B-D4C6-84DD-169935AA4DE5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[142:145]" -type "float2" 0.12838221 0.48303875 0.12866074
		 0.47939107 0.20064849 0.47939095 0.20037001 0.48303863;
createNode polyMapSewMove -n "polyMapSewMove55";
	rename -uid "56F019C4-CD40-35F0-AA2A-14BF50D8FBD5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[13]";
createNode polyTweakUV -n "polyTweakUV95";
	rename -uid "E5D75A28-C545-6B8D-A3AC-6BB7835F8520";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[8:11]" -type "float2" 0.01653266 0.48665574 0.016804218
		 0.48303875 0.088172674 0.48303863 0.087901235 0.48665562;
createNode polyMapSewMove -n "polyMapSewMove56";
	rename -uid "87D1681F-AA4B-2393-66CE-9A99E7AD4001";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[15]";
createNode polyTweakUV -n "polyTweakUV96";
	rename -uid "F8C48CD8-394E-25FB-8368-009AB63C3019";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[142:145]" -type "float2" 0.13258284 0.96202391 0.084126651
		 0.96205527 0.15611428 0.011256248 0.20457065 0.011224896;
createNode polyMapSewMove -n "polyMapSewMove57";
	rename -uid "C0A3A998-224B-DFE6-7FA2-C9A65F1182AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyTweakUV -n "polyTweakUV97";
	rename -uid "E0112035-2B45-4F4B-2C44-1188A8A2357B";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[78:81]" -type "float2" 0.96435952 -0.16886961 0.94040865
		 -0.19674671 0.96828568 -0.22069752 0.99223661 -0.19282043;
createNode polyMapSewMove -n "polyMapSewMove58";
	rename -uid "95F50252-7649-FFF7-3D21-84ACCDCA9C95";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[14]";
createNode polyTweakUV -n "polyTweakUV98";
	rename -uid "D5F38B0C-CD40-5D18-E4B2-6AB1CFDCA425";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[74:77]" -type "float2" 0.96033174 0.30288261 0.96005327
		 0.3065303 0.95640558 0.30625176 0.95668405 0.30260408;
createNode polyMapSewMove -n "polyMapSewMove59";
	rename -uid "731CB92C-9F4E-FA41-5DF8-8ABE7F0436D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12]";
createNode polyTweakUV -n "polyTweakUV99";
	rename -uid "28435DE6-2D47-5981-2123-1EBC265084A3";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk";
	setAttr ".uvtk[8]" -type "float2" 0.012903595 0.59807438 ;
	setAttr ".uvtk[9]" -type "float2" 0.012938047 0.59808201 ;
	setAttr ".uvtk[10]" -type "float2" 0.013044501 0.5973959 ;
	setAttr ".uvtk[11]" -type "float2" 0.013010288 0.59739017 ;
	setAttr ".uvtk[12]" -type "float2" 0.012969935 0.59808928 ;
	setAttr ".uvtk[13]" -type "float2" 0.013004864 0.59808117 ;
	setAttr ".uvtk[14]" -type "float2" 0.013111139 0.59739703 ;
	setAttr ".uvtk[15]" -type "float2" 0.013075793 0.59740674 ;
	setAttr ".uvtk[20]" -type "float2" -0.22371942 2.9802322e-08 ;
	setAttr ".uvtk[21]" -type "float2" -0.22371686 -3.4868717e-05 ;
	setAttr ".uvtk[22]" -type "float2" -0.22301996 -3.4880824e-05 ;
	setAttr ".uvtk[23]" -type "float2" -0.22302252 -1.2107193e-08 ;
	setAttr ".uvtk[74]" -type "float2" 0.012945319 0.59805006 ;
	setAttr ".uvtk[75]" -type "float2" 0.012977207 0.59805733 ;
	setAttr ".uvtk[76]" -type "float2" 0.013061071 0.59743941 ;
	setAttr ".uvtk[77]" -type "float2" 0.013030196 0.5974251 ;
	setAttr ".uvtk[138]" -type "float2" 0.012870932 0.59808218 ;
	setAttr ".uvtk[139]" -type "float2" 0.012977863 0.59739804 ;
createNode polyMapSewMove -n "polyMapSewMove60";
	rename -uid "EF330382-6D47-5EDB-0A66-00B1C64D4244";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[25]";
createNode polyTweakUV -n "polyTweakUV100";
	rename -uid "DF2679F7-944F-455A-B541-6AB5562AC3F9";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[16]" -type "float2" 0.31593442 0.37658173 ;
	setAttr ".uvtk[17]" -type "float2" 0.31619161 0.38008517 ;
	setAttr ".uvtk[18]" -type "float2" 0.24617445 0.38008508 ;
	setAttr ".uvtk[19]" -type "float2" 0.24591726 0.37658164 ;
	setAttr ".uvtk[20]" -type "float2" 0.38983086 0.38008505 ;
	setAttr ".uvtk[21]" -type "float2" 0.38983086 0.38008505 ;
	setAttr ".uvtk[22]" -type "float2" 0.38983086 0.38008511 ;
	setAttr ".uvtk[23]" -type "float2" 0.38983086 0.38008508 ;
	setAttr ".uvtk[140]" -type "float2" 0.38983086 0.38008511 ;
	setAttr ".uvtk[141]" -type "float2" 0.38983086 0.38008508 ;
createNode polyMapSewMove -n "polyMapSewMove61";
	rename -uid "47207503-BE4B-51A1-F08E-AE8391FA866F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27]";
createNode polyTweakUV -n "polyTweakUV101";
	rename -uid "63F89EF6-644D-0F7B-430F-19A33665282A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[140:143]" -type "float2" 0.3957476 0.85474992 0.34753859
		 0.85821921 0.34753889 -0.10505584 0.39574784 -0.1085251;
createNode polyMapSewMove -n "polyMapSewMove62";
	rename -uid "A5FF08C6-9241-B316-89E2-61BD7CB43D45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[29]";
createNode polyTweakUV -n "polyTweakUV102";
	rename -uid "39D69199-8742-8142-27D9-AC9DD8338A32";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[82:85]" -type "float2" 0.82639629 -0.30240744 0.82639617
		 -0.30240744 0.82639617 -0.3024075 0.82639629 -0.3024075;
createNode polyMapSewMove -n "polyMapSewMove63";
	rename -uid "343E6998-5942-373B-CDB9-2DB1A7BB3372";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[26]";
createNode polyTweakUV -n "polyTweakUV103";
	rename -uid "F201A00B-F64B-68EA-938E-EFAB577A9094";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[78:81]" -type "float2" 0.89223951 0.20981458 0.89223951
		 0.20981458 0.89223951 0.20981452 0.89223951 0.20981452;
createNode polyMapSewMove -n "polyMapSewMove64";
	rename -uid "1A186523-4640-9BC1-C1E1-8693D395D72B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24]";
createNode polyTweakUV -n "polyTweakUV104";
	rename -uid "6F317B2D-5B4C-B11E-52CF-798F3C12EAF4";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[16]" -type "float2" 0.2436271 0.70851845 ;
	setAttr ".uvtk[17]" -type "float2" 0.24365583 0.7085101 ;
	setAttr ".uvtk[18]" -type "float2" 0.24362263 0.70786417 ;
	setAttr ".uvtk[19]" -type "float2" 0.24359372 0.70787317 ;
	setAttr ".uvtk[20]" -type "float2" 0.2436882 0.70851177 ;
	setAttr ".uvtk[21]" -type "float2" 0.24371782 0.7085169 ;
	setAttr ".uvtk[22]" -type "float2" 0.2436848 0.70787156 ;
	setAttr ".uvtk[23]" -type "float2" 0.243655 0.70786703 ;
	setAttr ".uvtk[36]" -type "float2" 0.37683648 0.37683648 ;
	setAttr ".uvtk[37]" -type "float2" 0.37683645 0.37683648 ;
	setAttr ".uvtk[38]" -type "float2" 0.37683648 0.37683648 ;
	setAttr ".uvtk[39]" -type "float2" 0.37683648 0.37683648 ;
	setAttr ".uvtk[78]" -type "float2" 0.24365482 0.70847911 ;
	setAttr ".uvtk[79]" -type "float2" 0.24368718 0.70847815 ;
	setAttr ".uvtk[80]" -type "float2" 0.24365357 0.70789874 ;
	setAttr ".uvtk[81]" -type "float2" 0.24362114 0.70789719 ;
	setAttr ".uvtk[136]" -type "float2" 0.24359587 0.70852846 ;
	setAttr ".uvtk[137]" -type "float2" 0.24356243 0.707883 ;
	setAttr ".uvtk[146]" -type "float2" 0.60571086 0.3769052 ;
	setAttr ".uvtk[147]" -type "float2" 0.60570568 0.37683648 ;
	setAttr ".uvtk[148]" -type "float2" 0.60708183 0.37683645 ;
	setAttr ".uvtk[149]" -type "float2" 0.60708702 0.37690517 ;
createNode polyMapSewMove -n "polyMapSewMove65";
	rename -uid "C633691A-7B44-C7A1-904B-EFA8B48D3848";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[49]";
createNode polyTweakUV -n "polyTweakUV105";
	rename -uid "E2178E72-B84F-9176-4E4A-46AB14F90975";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[32:35]" -type "float2" 0.45538294 0.38068318 0.4556793
		 0.3769052 0.53134775 0.37690517 0.5310514 0.38068321;
createNode polyMapSewMove -n "polyMapSewMove66";
	rename -uid "A3A8F07A-AF49-2222-918B-DB823532FB9F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[51]";
createNode polyTweakUV -n "polyTweakUV106";
	rename -uid "90FA9819-0749-58E2-9A0D-3AAAE9BEAE7A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[146:149]" -type "float2" 0.60960829 0.86670828 0.56143028
		 0.86299741 0.56280702 -0.10163084 0.6109851 -0.097919911;
createNode polyMapSewMove -n "polyMapSewMove67";
	rename -uid "0B7880F5-C247-E750-A9D0-528D9D43F9E9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[53]";
createNode polyTweakUV -n "polyTweakUV107";
	rename -uid "D1C792A5-9241-FDBE-7BF5-86A42D8C5D78";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[94:97]" -type "float2" 0.68252426 -0.33778712 0.6825189
		 -0.33778712 0.6825189 -0.33779252 0.68252426 -0.33779252;
createNode polyMapSewMove -n "polyMapSewMove68";
	rename -uid "C840B849-3C48-2BFC-B013-D6A20EB9B1AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[50]";
createNode polyTweakUV -n "polyTweakUV108";
	rename -uid "0273D12A-204F-32E4-F5B2-D0A2B7E32E20";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[90:93]" -type "float2" 0.67586803 0.17665827 0.70010239
		 0.20095617 0.67580444 0.22519064 0.65157002 0.20089269;
createNode polyMapSewMove -n "polyMapSewMove69";
	rename -uid "97AA1F3B-BF41-D960-3D36-EBAC222F01C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48]";
createNode polyTweakUV -n "polyTweakUV109";
	rename -uid "940FE7AD-F14B-F688-D21D-60A9FA22B328";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk";
	setAttr ".uvtk[28]" -type "float2" -0.25091714 0 ;
	setAttr ".uvtk[29]" -type "float2" -0.25068912 -0.0032827556 ;
	setAttr ".uvtk[30]" -type "float2" -0.18493082 -0.0032827528 ;
	setAttr ".uvtk[31]" -type "float2" -0.18515885 2.7939677e-09 ;
	setAttr ".uvtk[32]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[33]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[34]" -type "float2" 0.46129987 0.70819277 ;
	setAttr ".uvtk[35]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[36]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[37]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[38]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[39]" -type "float2" 0.46129981 0.70819277 ;
	setAttr ".uvtk[90]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[91]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[92]" -type "float2" 0.46129981 0.70819271 ;
	setAttr ".uvtk[93]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[142]" -type "float2" 0.46129987 0.70819271 ;
	setAttr ".uvtk[143]" -type "float2" 0.46129987 0.70819271 ;
createNode polyMapSewMove -n "polyMapSewMove70";
	rename -uid "7F707572-9A46-50C8-40CA-89944B7A8BC9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[37]";
createNode polyTweakUV -n "polyTweakUV110";
	rename -uid "E5D9BD28-0948-C3AC-93E1-77BD45081CB4";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[24]" -type "float2" 0.72378945 0.34753254 ;
	setAttr ".uvtk[25]" -type "float2" 0.72379416 0.34759918 ;
	setAttr ".uvtk[26]" -type "float2" 0.72245914 0.34759918 ;
	setAttr ".uvtk[27]" -type "float2" 0.72245455 0.34753257 ;
	setAttr ".uvtk[28]" -type "float2" 0.82839048 0.34759918 ;
	setAttr ".uvtk[29]" -type "float2" 0.82839054 0.34759921 ;
	setAttr ".uvtk[30]" -type "float2" 0.82839054 0.34759918 ;
	setAttr ".uvtk[31]" -type "float2" 0.82839054 0.34759918 ;
	setAttr ".uvtk[134]" -type "float2" 0.82839054 0.34759918 ;
	setAttr ".uvtk[135]" -type "float2" 0.82839054 0.34759918 ;
createNode polyMapSewMove -n "polyMapSewMove71";
	rename -uid "335EE5CA-BA43-8314-52B9-9C84EFA05C80";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[39]";
createNode polyTweakUV -n "polyTweakUV111";
	rename -uid "C767FC7C-E945-0E7D-B60F-E2B0D63F37C7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[134:137]" -type "float2" 0.83634925 0.83376938 0.78810513
		 0.83055204 0.78810513 -0.13548714 0.83634943 -0.1322698;
createNode polyMapSewMove -n "polyMapSewMove72";
	rename -uid "7CB06E51-BA47-0DE3-5010-20A4B8C83562";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[41]";
createNode polyTweakUV -n "polyTweakUV112";
	rename -uid "0108721C-E541-4CCC-A204-8ABA13B662DF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[86:89]" -type "float2" 0.7044912 -0.33489347 0.7044912
		 -0.33489347 0.7044912 -0.33489341 0.7044912 -0.33489341;
createNode polyMapSewMove -n "polyMapSewMove73";
	rename -uid "545431A0-ED4F-B111-7080-B6B6549015C2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[38]";
createNode polyTweakUV -n "polyTweakUV113";
	rename -uid "E5694A5A-F54B-D37F-B16A-8386A4F1E7F6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[82:85]" -type "float2" 0.70346272 0.17235565 0.70346272
		 0.17235565 0.70346272 0.17235571 0.70346272 0.17235571;
createNode polyMapSewMove -n "polyMapSewMove74";
	rename -uid "939E7941-904E-2D3C-47FA-D4A47CA81FCA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[36]";
createNode polyTweakUV -n "polyTweakUV114";
	rename -uid "06711C23-FE46-884F-C317-0F8C233E7FEA";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk";
	setAttr ".uvtk[24]" -type "float2" 0.72453177 0.71934289 ;
	setAttr ".uvtk[25]" -type "float2" 0.72519684 0.72491354 ;
	setAttr ".uvtk[26]" -type "float2" 0.61322278 0.73045701 ;
	setAttr ".uvtk[27]" -type "float2" 0.61255777 0.7248863 ;
	setAttr ".uvtk[28]" -type "float2" 0.72584653 0.73048723 ;
	setAttr ".uvtk[29]" -type "float2" 0.72573507 0.7360962 ;
	setAttr ".uvtk[30]" -type "float2" 0.61376089 0.74163973 ;
	setAttr ".uvtk[31]" -type "float2" 0.61387253 0.73603052 ;
	setAttr ".uvtk[82]" -type "float2" 0.73077035 0.72426391 ;
	setAttr ".uvtk[83]" -type "float2" 0.73142004 0.72983736 ;
	setAttr ".uvtk[84]" -type "float2" 0.60829896 0.73668045 ;
	setAttr ".uvtk[85]" -type "float2" 0.60764921 0.73110682 ;
	setAttr ".uvtk[130]" -type "float2" 0.72462785 0.71373248 ;
	setAttr ".uvtk[131]" -type "float2" 0.61265385 0.71927583 ;
	setAttr ".uvtk[134]" -type "float2" -0.064606071 0 ;
	setAttr ".uvtk[135]" -type "float2" -0.064690053 0 ;
	setAttr ".uvtk[136]" -type "float2" -0.064690053 -4.2915344e-06 ;
	setAttr ".uvtk[137]" -type "float2" -0.064606071 -4.2319298e-06 ;
createNode polyMapSewMove -n "polyMapSewMove75";
	rename -uid "3068AD1D-FB48-7DCB-46A2-95B6FB852440";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60]";
createNode polyTweakUV -n "polyTweakUV115";
	rename -uid "943A792A-7141-B074-3050-9BB94E3C9DA7";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[90]" -type "float2" 0.32292503 0.012285167 ;
	setAttr ".uvtk[91]" -type "float2" 0.32292503 0.012285197 ;
	setAttr ".uvtk[92]" -type "float2" 0.32292503 0.012285197 ;
	setAttr ".uvtk[93]" -type "float2" 0.32292503 0.012285167 ;
	setAttr ".uvtk[134]" -type "float2" 0.322925 0.012285167 ;
	setAttr ".uvtk[135]" -type "float2" 0.32292506 0.012285197 ;
	setAttr ".uvtk[136]" -type "float2" 0.31670588 0.012285247 ;
	setAttr ".uvtk[137]" -type "float2" 0.31678969 0.012285247 ;
	setAttr ".uvtk[138]" -type "float2" 0.31678969 0.012289539 ;
	setAttr ".uvtk[139]" -type "float2" 0.31670588 0.012289479 ;
createNode polyMapSewMove -n "polyMapSewMove76";
	rename -uid "6FA4ACBD-9149-2878-0B20-D282040ED6B2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64]";
createNode polyTweakUV -n "polyTweakUV116";
	rename -uid "B4903123-614A-DFEC-4E9F-91974D86251A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[94:97]" -type "float2" 0.38156351 0.012298092 0.38139591
		 0.012297973 0.38139591 0.01228945 0.38156351 0.012289569;
createNode polyMapSewMove -n "polyMapSewMove77";
	rename -uid "D1F02B8B-A640-7554-870E-70B357D63438";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[66]";
createNode polyTweakUV -n "polyTweakUV117";
	rename -uid "79C995C5-6E45-F656-D1F4-2F8DD799E2D2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[40:43]" -type "float2" 0.46779907 -0.20928293 0.46779907
		 -0.20928293 0.46779907 -0.20928293 0.46779907 -0.20928293;
createNode polyMapSewMove -n "polyMapSewMove78";
	rename -uid "851E99CF-3C4E-8359-AB0D-929E7D87F8CB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[68]";
createNode polyTweakUV -n "polyTweakUV118";
	rename -uid "5F29E6A7-7647-B304-2AD3-0092C4D07B1C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[44:47]" -type "float2" 0.44237876 -0.008746326 0.44237864
		 -0.008746326 0.44237864 -0.0087463856 0.44237876 -0.0087463856;
createNode polyMapSewMove -n "polyMapSewMove79";
	rename -uid "69D955FE-A94F-A7F4-83D0-398DB86A0F7F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[69]";
createNode polyTweakUV -n "polyTweakUV119";
	rename -uid "D80006DD-F44E-76D7-5412-DF989FA699B9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[132:135]" -type "float2" -0.064606041 0 -0.064606041
		 0 -0.064606041 0 -0.064606041 0;
createNode polyMapSewMove -n "polyMapSewMove80";
	rename -uid "E08665F4-3848-CB1F-66ED-45A3ED39630B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[72]";
createNode polyTweakUV -n "polyTweakUV120";
	rename -uid "D6C1E881-E545-BDE3-69E8-BEAD06159FD1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[134:137]" -type "float2" -0.064606011 -4.4703484e-08
		 -0.064606011 7.4505806e-08 -0.064606011 7.4505806e-08 -0.064606011 -4.4703484e-08;
createNode polyMapSewMove -n "polyMapSewMove81";
	rename -uid "F11962BA-C24A-139C-F656-3680F9EDDDF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[78]";
createNode polyTweakUV -n "polyTweakUV121";
	rename -uid "76976267-8741-CD92-2F7C-EBBA3B18D1B2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[94]" -type "float2" -0.058470666 1.0430813e-07 ;
	setAttr ".uvtk[95]" -type "float2" -0.058470666 1.0430813e-07 ;
	setAttr ".uvtk[96]" -type "float2" -0.058470666 1.0430813e-07 ;
	setAttr ".uvtk[97]" -type "float2" -0.058470666 1.0430813e-07 ;
	setAttr ".uvtk[132]" -type "float2" -0.058470666 1.0430813e-07 ;
	setAttr ".uvtk[133]" -type "float2" -0.058470666 1.0430813e-07 ;
createNode polyMapSewMove -n "polyMapSewMove82";
	rename -uid "7DA1CF22-BC4B-A196-D4A5-9C939D8BD6BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[76]";
createNode polyTweakUV -n "polyTweakUV122";
	rename -uid "E65E2CC7-1141-01D1-9519-6395C1F1F546";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[48:51]" -type "float2" -0.058759093 -0.36422485
		 -0.058759093 -0.36422485 -0.058759093 -0.36422485 -0.058759093 -0.36422485;
createNode polyMapSewMove -n "polyMapSewMove83";
	rename -uid "6BBD343C-DF4A-F119-1580-A5A42BAFE96F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[80]";
createNode polyTweakUV -n "polyTweakUV123";
	rename -uid "0E561A8C-5842-3B14-CEA3-23BF741A206D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[52:55]" -type "float2" -0.084095553 -0.021436691
		 -0.084095448 -0.021436691 -0.084095448 -0.021436632 -0.084095553 -0.021436632;
createNode polyMapSewMove -n "polyMapSewMove84";
	rename -uid "978EAC05-C34F-3FDC-FA64-5281BE32BDD3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[81]";
createNode polyTweakUV -n "polyTweakUV124";
	rename -uid "4D8B5E9E-234C-4085-4D18-BF84FFFC11E7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk";
	setAttr ".uvtk[48]" -type "float2" 0.56862891 -0.0035100547 ;
	setAttr ".uvtk[49]" -type "float2" 0.56862879 -0.0035100547 ;
	setAttr ".uvtk[50]" -type "float2" 0.56862879 -0.0035100547 ;
	setAttr ".uvtk[51]" -type "float2" 0.56862891 -0.0035100547 ;
	setAttr ".uvtk[52]" -type "float2" 0.56862885 -0.0035100249 ;
	setAttr ".uvtk[53]" -type "float2" 0.56862891 -0.0035100249 ;
	setAttr ".uvtk[54]" -type "float2" 0.56862885 -0.0035100845 ;
	setAttr ".uvtk[55]" -type "float2" 0.56862885 -0.0035100845 ;
	setAttr ".uvtk[94]" -type "float2" 0.56862885 -0.0035100547 ;
	setAttr ".uvtk[95]" -type "float2" 0.56862885 -0.0035100845 ;
	setAttr ".uvtk[96]" -type "float2" 0.56862891 -0.0035100845 ;
	setAttr ".uvtk[97]" -type "float2" 0.56862891 -0.0035100547 ;
	setAttr ".uvtk[98]" -type "float2" -0.012270719 0.16726057 ;
	setAttr ".uvtk[99]" -type "float2" -0.047160968 0.16726057 ;
	setAttr ".uvtk[100]" -type "float2" -0.047160968 -0.1672606 ;
	setAttr ".uvtk[101]" -type "float2" -0.012270749 -0.1672606 ;
	setAttr ".uvtk[128]" -type "float2" 0.56862879 -0.0035100845 ;
	setAttr ".uvtk[129]" -type "float2" 0.56862879 -0.0035100547 ;
createNode polyMapSewMove -n "polyMapSewMove85";
	rename -uid "9858A959-394B-A16F-425F-8190DAA7EF8A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[92]";
createNode polyTweakUV -n "polyTweakUV125";
	rename -uid "2273EF48-4D4C-DB72-E41E-298E6E4E287E";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[56]" -type "float2" 0.19656304 0.063180983 ;
	setAttr ".uvtk[57]" -type "float2" 0.19656307 0.063180953 ;
	setAttr ".uvtk[58]" -type "float2" 0.19656304 0.063180953 ;
	setAttr ".uvtk[59]" -type "float2" 0.19656304 0.063180953 ;
	setAttr ".uvtk[60]" -type "float2" 0.23758869 0.2304415 ;
	setAttr ".uvtk[61]" -type "float2" 0.23758851 -0.10407956 ;
	setAttr ".uvtk[62]" -type "float2" 0.27247894 -0.10407956 ;
	setAttr ".uvtk[63]" -type "float2" 0.27247912 0.2304415 ;
	setAttr ".uvtk[98]" -type "float2" 0.19656305 0.063180953 ;
	setAttr ".uvtk[99]" -type "float2" 0.19656305 0.063180983 ;
createNode polyMapSewMove -n "polyMapSewMove86";
	rename -uid "3F6CF49E-CC41-333A-0E5A-9ABC91098A1E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[93]";
createNode polyTweakUV -n "polyTweakUV126";
	rename -uid "BBFBC2F7-5846-037C-4E19-F79806AFCA42";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[98:101]" -type "float2" 0.225318 0.063181072 0.225318
		 0.063181072 0.225318 0.063181072 0.225318 0.063181072;
createNode polyMapSewMove -n "polyMapSewMove87";
	rename -uid "F26B9BFB-BD42-D440-50B4-55BF606A1436";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[94]";
createNode polyTweakUV -n "polyTweakUV127";
	rename -uid "C74A1583-8745-078B-57B0-46AA3F78B0FE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[124:127]" -type "float2" 0.0090217739 -0.13348299
		 0.0090217739 -0.13348299 0.0090217739 -0.13348299 0.0090217739 -0.13348299;
createNode polyMapSewMove -n "polyMapSewMove88";
	rename -uid "3664D587-8946-B77E-2984-8590EC39B841";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[84]";
createNode polyTweakUV -n "polyTweakUV128";
	rename -uid "6EB900D7-354E-EDC2-E08D-0FB2D6CE73F8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[126:129]" -type "float2" 0.0011303723 -0.30074352
		 -0.016314715 -0.28329831 -0.033759564 -0.30074304 -0.016314477 -0.31818825;
createNode polyMapSewMove -n "polyMapSewMove89";
	rename -uid "468D32D2-2C4A-8E5C-359E-8A9733442189";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[88]";
createNode polyTweakUV -n "polyTweakUV129";
	rename -uid "A523D8F1-EA4D-9174-62E9-75AD1E43A10A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[100:103]" -type "float2" -0.014723346 0.16117081 -0.049609378
		 0.16090545 -0.052058056 -0.16090548 -0.017171867 -0.16064006;
createNode polyMapSewMove -n "polyMapSewMove90";
	rename -uid "D92D3FFA-E64B-7BD2-292F-C1A4F8C6766B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[104]";
createNode polyTweakUV -n "polyTweakUV130";
	rename -uid "4DF7ED6E-8549-03FC-A741-C9932985BF5B";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[64]" -type "float2" 0.16146252 -0.038610615 ;
	setAttr ".uvtk[65]" -type "float2" 0.16146252 -0.038610585 ;
	setAttr ".uvtk[66]" -type "float2" 0.16146252 -0.038610585 ;
	setAttr ".uvtk[67]" -type "float2" 0.16146252 -0.038610585 ;
	setAttr ".uvtk[68]" -type "float2" 0.20248422 0.12256025 ;
	setAttr ".uvtk[69]" -type "float2" 0.20248407 -0.19925047 ;
	setAttr ".uvtk[70]" -type "float2" 0.23737448 -0.19925047 ;
	setAttr ".uvtk[71]" -type "float2" 0.23737463 0.12256025 ;
	setAttr ".uvtk[100]" -type "float2" 0.16146252 -0.038610585 ;
	setAttr ".uvtk[101]" -type "float2" 0.16146252 -0.038610615 ;
createNode polyMapSewMove -n "polyMapSewMove91";
	rename -uid "8F9A1D9F-3A48-CDC0-7C03-C88FEB50FF22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[105]";
createNode polyTweakUV -n "polyTweakUV131";
	rename -uid "08260FAD-0A4A-3AC9-394A-D4A772DB3B25";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[100:103]" -type "float2" 0.19020922 -0.038610354 0.19021325
		 -0.038345054 0.18776505 -0.038345173 0.18776102 -0.038610563;
createNode polyMapSewMove -n "polyMapSewMove92";
	rename -uid "649196C5-214A-980E-1680-EE8663E7F0EF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[106]";
createNode polyTweakUV -n "polyTweakUV132";
	rename -uid "29CB1F84-C842-934C-9689-769F5208CC9D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[122:125]" -type "float2" -0.17597379 -0.24149701 -0.17597167
		 -0.24149701 -0.17597167 -0.24149492 -0.17597379 -0.24149492;
createNode polyMapSewMove -n "polyMapSewMove93";
	rename -uid "9C829876-4B4D-69A6-4739-0FB9CEFA4B09";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[96]";
createNode polyTweakUV -n "polyTweakUV133";
	rename -uid "FD5C1021-7744-8585-C757-67AEB5B47B46";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[124:127]" -type "float2" -0.18386588 -0.40226933 -0.20130703
		 -0.3850899 -0.21848653 -0.40253109 -0.20104535 -0.41971055;
createNode polyMapSewMove -n "polyMapSewMove94";
	rename -uid "CFECDA80-5447-8116-99CD-DDA0573EAF84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[100]";
createNode polyTweakUV -n "polyTweakUV134";
	rename -uid "DE8BF6CA-D146-5E0D-F55B-FEBBA41A8616";
	setAttr ".uopa" yes;
	setAttr -s 126 ".uvtk[0:125]" -type "float2" -0.81537068 -0.32457227 -0.61811596
		 -0.092463374 -0.64571911 -0.069005147 -0.8429727 -0.30111432 -0.18124443 -0.4637332
		 -0.37849936 -0.69584203 -0.350896 -0.71930009 -0.15364051 -0.48719203 -0.95269835
		 -0.90404248 -0.94323987 -0.90142208 -0.98087114 -0.71143621 -0.99032992 -0.71405649
		 -0.93378454 -0.89878958 -0.92404133 -0.89760619 -0.9616726 -0.70762068 -0.97141594
		 -0.70880365 -1.17343497 -1.24312961 -1.16396582 -1.24575651 -1.12543249 -1.053208709
		 -1.13490188 -1.050582051 -1.15421712 -1.2469902 -1.1444664 -1.2482096 -1.10593307
		 -1.055661798 -1.11568379 -1.054442286 -1.39329863 -1.22803617 -1.38422608 -1.23274004
		 -1.3030175 -1.0453583 -1.31209052 -1.040654421 -1.37513864 -1.23741949 -1.36550272
		 -1.24082375 -1.28429401 -1.05344224 -1.29393017 -1.050037622 -1.22983372 -1.24718571
		 -1.22037387 -1.24457061 -1.25767863 -1.052175164 -1.26713836 -1.054791451 -1.21062326
		 -1.24343193 -1.20087099 -1.24232376 -1.23817551 -1.0499295 -1.24792743 -1.051038623
		 -0.48384887 -0.11903385 -0.48071501 -0.11903385 -0.48071501 -0.11589993 -0.48384887
		 -0.11589993 -0.48069987 -0.18068688 -0.48383394 -0.18068753 -0.48383263 -0.18382172
		 -0.48069873 -0.18382041 -0.51168054 -0.11619631 -0.50854659 -0.11619631 -0.50854659
		 -0.11306253 -0.51168054 -0.11306253 -0.50854671 -0.17777668 -0.51168054 -0.17777686
		 -0.51168025 -0.18091087 -0.50854641 -0.18091051 0.40415594 -0.44051537 0.2666913
		 -0.60612714 0.28396466 -0.6204648 0.42142931 -0.45485273 0.24941804 -0.59178972 0.38688287
		 -0.42617795 0.36960956 -0.41184041 0.23214477 -0.57745218 0.40431347 -0.38341045
		 0.53656423 -0.54380953 0.55395395 -0.52947056 0.42170373 -0.36907214 0.51939547 -0.55840778
		 0.38714543 -0.39801013 0.36975518 -0.41234875 0.50200576 -0.57274675 0.28322971 -0.85846353
		 0.085974075 -1.09057188 -0.94060725 -0.91087729 -0.93115199 -0.90824479 -0.97404832
		 -0.69934839 -0.9835037 -0.70198089 -1.16519952 -1.25550544 -1.15545058 -1.25673902
		 -1.11445022 -1.044693351 -1.12419915 -1.043459773 -1.38890564 -1.24182737 -1.3798182
		 -1.24650705 -1.28925049 -1.040950537 -1.29833794 -1.036270857 -1.21923339 -1.25432217
		 -1.20948291 -1.25318182 -1.24906337 -1.04128778 -1.25881445 -1.042423844 -0.4901168
		 -0.11903615 -0.49010184 -0.18068938 -0.48696789 -0.18068789 -0.48698297 -0.1190346
		 -0.51794851 -0.11619631 -0.51794851 -0.17777686 -0.5148145 -0.17777686 -0.5148145
		 -0.11619631 0.21487147 -0.56311464 0.3523365 -0.39750296 0.48440155 -0.58681726 0.35215095
		 -0.4264192 -0.15778619 -0.43613017 -0.5946576 -0.06486024 -0.83882844 -0.35217476
		 -0.40195772 -0.72344553 -0.96244311 -0.90521288 -1.000074505806 -0.71522689 -1.18290782
		 -1.24051678 -1.14437461 -1.047968864 -1.40292704 -1.22460473 -1.32171893 -1.037222981
		 -1.23930287 -1.24977553 -1.27660763 -1.057381153 -0.47756606 -0.18068628 -0.4775812
		 -0.11903311 -0.50541276 -0.17777686 -0.50541276 -0.11619631 0.2350806 -0.60906303
		 0.25235373 -0.62340045 0.418493 -0.42324254 0.40121982 -0.40890512 0.53399229 -0.57557708
		 0.551162 -0.56097984 0.38971385 -0.36624235 0.37254575 -0.38084203;
createNode place2dTexture -n "place2dTexture2";
	rename -uid "0BD909DC-A64F-DA3C-4AF1-B99E219B5C87";
createNode file -n "file4";
	rename -uid "9D2A14B6-DE45-6D93-0535-1990A3048899";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/Adobe/Adobe Substance 3D Painter/export/crate_initialShadingGroup_Normal.1001.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file5";
	rename -uid "D419AA5F-8145-71D6-59A4-989FE791917C";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/Adobe/Adobe Substance 3D Painter/export/crate_initialShadingGroup_BaseMap.1001.png";
	setAttr ".cs" -type "string" "sRGB";
createNode bump2d -n "bump2d1";
	rename -uid "0C799C88-224A-E9DD-D55D-1E87009AB5D6";
	setAttr ".bi" 1;
createNode substanceNode -n "substanceNode2";
	rename -uid "C4B715A3-E843-CD8A-5CCA-648FFAFA1E07";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_aluminium_color_variation" 
		-ln "input_aluminium_color_variation" -nn "Aluminium Color Variation" -ct "substance_input" 
		-dv 0.60000002384185791 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_dirt" -ln "input_dirt" -nn "Dirt" 
		-ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_soft_oxidation" -ln "input_soft_oxidation" 
		-nn "Soft Oxidation" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_foam_scale" -ln "input_foam_scale" 
		-nn "Foam Scale" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cell_infill" -ln "input_cell_infill" 
		-nn "Cell Infill" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cell_wall_thickness" -ln "input_cell_wall_thickness" 
		-nn "Cell Wall Thickness" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cells_density" -ln "input_cells_density" 
		-nn "Cells Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_rows_amount" -ln "input_rows_amount" 
		-nn "Rows Amount" -ct "substance_input" -dv 1 -smn 1 -smx 4 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_separations_thickness" -ln "input_separations_thickness" 
		-nn "Separations Thickness" -ct "substance_input" -dv 0.10000000149011612 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_separations_toggle" -ln "input_separations_toggle" 
		-nn "Separations Toggle" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_lateral_separations_toggle" 
		-ln "input_lateral_separations_toggle" -nn "Lateral Separations Toggle" -ct "substance_input" 
		-min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_anisotropylevel" -ln "input_channel_anisotropylevel" 
		-nn "Anisotropy Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_anisotropyangle" -ln "input_channel_anisotropyangle" 
		-nn "Anisotropy Angle" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/aluminium_close_cell_foam.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Thick Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Old Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0.45\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.45\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0.31\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0.12\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Stacked Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"3\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0.05\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture3";
	rename -uid "951F1E6C-074B-42E9-980B-3DA1E5063848";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "94A1BA79-D343-1266-2827-F1A3F310C92B";
createNode file -n "file6";
	rename -uid "54D99CCD-184A-B0BA-4053-908D554F3C10";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/Adobe/Adobe Substance 3D Painter/export/crate_initialShadingGroup_Normal.1001.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file7";
	rename -uid "1535666F-B645-4802-1CAE-5BAF91FAD0BB";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Documents/Adobe/Adobe Substance 3D Painter/export/crate_initialShadingGroup_BaseMap.1001.png";
	setAttr ".cs" -type "string" "sRGB";
createNode bump2d -n "bump2d2";
	rename -uid "D31AA45C-2A45-D4F1-75A5-C8A2225D6AE9";
	setAttr ".bi" 1;
createNode substanceNode -n "asteroid";
	rename -uid "49AFB5CD-B847-158D-1306-48B08F9B3436";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_aluminium_color_variation" 
		-ln "input_aluminium_color_variation" -nn "Aluminium Color Variation" -ct "substance_input" 
		-dv 0.60000002384185791 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_dirt" -ln "input_dirt" -nn "Dirt" 
		-ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_soft_oxidation" -ln "input_soft_oxidation" 
		-nn "Soft Oxidation" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_foam_scale" -ln "input_foam_scale" 
		-nn "Foam Scale" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cell_infill" -ln "input_cell_infill" 
		-nn "Cell Infill" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cell_wall_thickness" -ln "input_cell_wall_thickness" 
		-nn "Cell Wall Thickness" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cells_density" -ln "input_cells_density" 
		-nn "Cells Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_rows_amount" -ln "input_rows_amount" 
		-nn "Rows Amount" -ct "substance_input" -dv 1 -smn 1 -smx 4 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_separations_thickness" -ln "input_separations_thickness" 
		-nn "Separations Thickness" -ct "substance_input" -dv 0.10000000149011612 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_separations_toggle" -ln "input_separations_toggle" 
		-nn "Separations Toggle" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_lateral_separations_toggle" 
		-ln "input_lateral_separations_toggle" -nn "Lateral Separations Toggle" -ct "substance_input" 
		-min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_anisotropylevel" -ln "input_channel_anisotropylevel" 
		-nn "Anisotropy Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_anisotropyangle" -ln "input_channel_anisotropyangle" 
		-nn "Anisotropy Angle" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/aluminium_close_cell_foam.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Thick Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Old Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0.45\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.45\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0.31\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0.12\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Stacked Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"3\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0.05\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture5";
	rename -uid "99B6D6F6-0B4F-7771-0274-FBBE58B676FE";
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_basecolor1";
	rename -uid "9308C0AE-4A41-A4F4-F409-B1A18451F5F4";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_basecolor1.png";
createNode file -n "file8";
	rename -uid "6ABCB9AD-AC47-6103-51AC-A3888D9B219C";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_normal";
	rename -uid "90F85B4D-5540-55CA-5BD6-C8B076BE1E66";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_normal.exr";
createNode file -n "file9";
	rename -uid "45EA59B7-4540-6FB3-D2A8-959D20A85D83";
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_height1";
	rename -uid "7895B279-8448-E409-B0D7-87BDAC0A059E";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_height1.exr";
createNode file -n "file10";
	rename -uid "7D7B7825-F641-C4EB-78C3-AB86328E4A26";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode shadingEngine -n "crate_initialShadingGroup";
	rename -uid "549639A7-7746-3F11-DF2C-2291E8D5BF31";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "crate_materialInfo1";
	rename -uid "AA7F1A63-8A4E-B3B8-F972-78930B4328DD";
createNode lambert -n "crate_initialShadingGroup1";
	rename -uid "7904A677-4C49-D340-F9ED-EB8235375C2B";
createNode shadingEngine -n "crate_initialShadingGroup2";
	rename -uid "BCAF7E56-144A-A039-0C85-5D930633C172";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "crate_materialInfo2";
	rename -uid "CA4A8EBE-B041-0455-18CD-97B17D100E84";
createNode lambert -n "crate_initialShadingGroup3";
	rename -uid "5128B7D1-D348-4909-E667-709DA5C9DC1D";
createNode animCurveTL -n "polyextrude9_0_translateX";
	rename -uid "F7D4F6D9-0247-A619-C7F3-12A6CFAD0BFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 -27.272217165792028 32 -27.272217165792028
		 48 -27.272217165792028 64 -27.272217165792028;
createNode animCurveTL -n "polyextrude9_0_translateY";
	rename -uid "26550445-1E40-8826-8A9B-488732F8B61A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 0 32 0 48 0 64 0;
createNode animCurveTL -n "polyextrude9_0_translateZ";
	rename -uid "C2C910E9-C244-9D43-A1F8-46AF35737793";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 36.44708193817138 32 36.44708193817138
		 48 36.44708193817138 64 36.44708193817138;
createNode animCurveTU -n "polyextrude9_0_visibility";
	rename -uid "104FB339-9B45-5002-A50A-6AAA6339859D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 1 32 1 48 1 64 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "polyextrude9_0_rotateX";
	rename -uid "BE87B77B-D74E-1264-886F-9D9F13C80968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 0 32 0 48 0 64 0;
createNode animCurveTA -n "polyextrude9_0_rotateY";
	rename -uid "7F5AB12D-8B43-386D-5322-598164B96749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 0 32 0 48 0 64 0;
createNode animCurveTA -n "polyextrude9_0_rotateZ";
	rename -uid "364175E7-2840-2166-7CCB-589E167D93A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 0 32 0 48 0 64 0;
createNode animCurveTU -n "polyextrude9_0_scaleX";
	rename -uid "51AC414B-7243-A692-B46C-81B925422574";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 0.42681628125495474 32 0.42681628125495474
		 48 0.42681628125495474 64 0.42681628125495474;
createNode animCurveTU -n "polyextrude9_0_scaleY";
	rename -uid "F4F7B9E7-5B40-C58C-A08B-D5B579D1060A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 0.42681628125495474 32 0.42681628125495474
		 48 0.42681628125495474 64 0.42681628125495474;
createNode animCurveTU -n "polyextrude9_0_scaleZ";
	rename -uid "209DF811-0F4B-7725-C5EA-BCA98523A713";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  16 0.42681628125495474 32 0.42681628125495474
		 48 0.42681628125495474 64 0.42681628125495474;
createNode substanceNode -n "substanceNode3";
	rename -uid "A7C0258D-6346-617B-B4C2-8CAF1243FB19";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_aluminium_color_variation" 
		-ln "input_aluminium_color_variation" -nn "Aluminium Color Variation" -ct "substance_input" 
		-dv 0.60000002384185791 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_roughness" -ln "input_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_dirt" -ln "input_dirt" -nn "Dirt" 
		-ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_soft_oxidation" -ln "input_soft_oxidation" 
		-nn "Soft Oxidation" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_foam_scale" -ln "input_foam_scale" 
		-nn "Foam Scale" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cell_infill" -ln "input_cell_infill" 
		-nn "Cell Infill" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cell_wall_thickness" -ln "input_cell_wall_thickness" 
		-nn "Cell Wall Thickness" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_cells_density" -ln "input_cells_density" 
		-nn "Cells Density" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_rows_amount" -ln "input_rows_amount" 
		-nn "Rows Amount" -ct "substance_input" -dv 1 -smn 1 -smx 4 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_separations_thickness" -ln "input_separations_thickness" 
		-nn "Separations Thickness" -ct "substance_input" -dv 0.10000000149011612 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	addAttr -r false -ci true -h true -k true -sn "input_separations_toggle" -ln "input_separations_toggle" 
		-nn "Separations Toggle" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_lateral_separations_toggle" 
		-ln "input_lateral_separations_toggle" -nn "Lateral Separations Toggle" -ct "substance_input" 
		-min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_anisotropylevel" -ln "input_channel_anisotropylevel" 
		-nn "Anisotropy Level" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_anisotropyangle" -ln "input_channel_anisotropyangle" 
		-nn "Anisotropy Angle" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	setAttr ".sbs" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/aluminium_close_cell_foam.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Thick Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Old Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0.45\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.45\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0.31\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0.12\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://aluminium_close_cell_foam\" label=\"Stacked Aluminium Foam\" >\n  <presetinput identifier=\"aluminium_color_variation\" uid=\"3053490289\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"roughness\" uid=\"3053879637\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"dirt\" uid=\"3053490303\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"soft_oxidation\" uid=\"3053888906\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"foam_scale\" uid=\"3055417339\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_infill\" uid=\"3053871512\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cell_wall_thickness\" uid=\"3053454659\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"cells_density\" uid=\"3053652381\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"rows_amount\" uid=\"3055346944\" type=\"4\" value=\"3\" />\n  <presetinput identifier=\"separations_toggle\" uid=\"3055398609\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"separations_thickness\" uid=\"3053596633\" type=\"0\" value=\"0.05\" />\n  <presetinput identifier=\"lateral_separations_toggle\" uid=\"3055397177\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"2903415368\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"2745410146\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"2745410145\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"2903415415\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"2903415414\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"2745410157\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"2745410156\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"2745410154\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"2822827279\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropylevel\" uid=\"3071019396\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_anisotropyangle\" uid=\"3071019394\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"3667475309\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"2770137679\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"3667475231\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"3667475320\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"3667444748\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"2745413953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"2730018861\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"2730018908\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"2834027686\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture6";
	rename -uid "761910EB-8644-6E14-0DC4-578817E00B62";
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_basecolor";
	rename -uid "23673B74-2D47-3BAA-9660-F2AD1E4BC9E0";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_basecolor.png";
createNode file -n "file11";
	rename -uid "B5D62347-8E4E-3F5A-0291-6BB0EB1BE73F";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_ambientocclusion";
	rename -uid "5CC941C3-BA4D-C86A-B43B-148FA7158940";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_ambientocclusion.exr";
createNode file -n "file12";
	rename -uid "34923861-9145-688C-9AFB-018D333819B8";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_metallic";
	rename -uid "341F6443-DF4B-27D7-A211-C3BA01B59285";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_metallic.exr";
createNode file -n "file13";
	rename -uid "2F175D39-454C-26F7-D1C2-7E948EB9F0D5";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_normal1";
	rename -uid "BC971A88-DB4F-3D9E-AEED-13B5D7B8F74E";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_normal1.exr";
createNode file -n "file14";
	rename -uid "AF327F6E-2340-562A-4C20-40A3C66DAAE2";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_height";
	rename -uid "BB7F76D0-6A45-D349-11E5-B6B3CD4DA080";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_height.exr";
createNode file -n "file15";
	rename -uid "FF3971FD-8A46-12B9-F269-01A4A221D2C6";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Aluminium_Close_Cell_Foam_roughness";
	rename -uid "84FFD1D4-3440-356E-0B61-D2A7BAAF0020";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Aluminium_Close_Cell_Foam_roughness.exr";
createNode file -n "file16";
	rename -uid "FB6D6B16-5F40-0BDE-3A6D-9A93853605A7";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "87D6916E-C646-90E7-886E-DA973D1C8CAD";
createNode aiStandardSurface -n "asteroid2";
	rename -uid "DF6302A1-5744-D519-C568-769795233DD6";
	setAttr ".specular_roughness" 1;
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set1";
	rename -uid "AE315350-D345-E863-9652-E588C8AFDF90";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "2D6313D8-1543-F0F8-0B57-57AACA9D6B47";
createNode bump2d -n "bump2d3";
	rename -uid "7AAA9F69-2B47-4959-387C-1481AE0F414D";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode substanceNode -n "substanceNode4";
	rename -uid "2F3EE6C1-9444-132A-B04A-B8B66DEB819F";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_wood_color" -ln "input_wood_color" 
		-nn "Wood Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorr" -ln "input_wood_colorR" 
		-dv 0.31609201431274414 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorg" -ln "input_wood_colorG" 
		-dv 0.17678000032901764 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorb" -ln "input_wood_colorB" 
		-dv 0.091647997498512268 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_roughness" -ln "input_wood_roughness" 
		-nn "Wood Roughness" -ct "substance_input" -dv 0.80000001192092896 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_wood_color_variation" 
		-ln "input_wood_color_variation" -nn "Wood Color Variation" -ct "substance_input" 
		-at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_wood_color_variationr" -ln "input_wood_color_variationR" 
		-dv 0.30980399250984192 -smn 0 -smx 0 -at "float" -p "input_wood_color_variation";
	addAttr -r false -ci true -h true -k true -sn "input_wood_color_variationg" -ln "input_wood_color_variationG" 
		-dv 0.22745099663734436 -smn 0 -smx 0 -at "float" -p "input_wood_color_variation";
	addAttr -r false -ci true -h true -k true -sn "input_wood_color_variationb" -ln "input_wood_color_variationB" 
		-dv 0.17647099494934082 -smn 0 -smx 0 -at "float" -p "input_wood_color_variation";
	addAttr -r false -ci true -h true -k true -sn "input_wood_color_variation_intensity" 
		-ln "input_wood_color_variation_intensity" -nn "Wood Color Variation Intensity" -ct "substance_input" 
		-dv 0.36000001430511475 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_fiber_color" -ln "input_fiber_color" 
		-nn "Fiber Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_fiber_colorr" -ln "input_fiber_colorR" 
		-dv 0.30196100473403931 -smn 0 -smx 0 -at "float" -p "input_fiber_color";
	addAttr -r false -ci true -h true -k true -sn "input_fiber_colorg" -ln "input_fiber_colorG" 
		-dv 0.31764701008796692 -smn 0 -smx 0 -at "float" -p "input_fiber_color";
	addAttr -r false -ci true -h true -k true -sn "input_fiber_colorb" -ln "input_fiber_colorB" 
		-dv 0.33725500106811523 -smn 0 -smx 0 -at "float" -p "input_fiber_color";
	addAttr -r false -ci true -h true -k true -sn "input_fiber_color_intensity" -ln "input_fiber_color_intensity" 
		-nn "Fiber Color Intensity" -ct "substance_input" -dv 0.55000001192092896 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_varnish_color" -ln "input_varnish_color" 
		-nn "Varnish Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_varnish_colorr" -ln "input_varnish_colorR" 
		-dv 0.30095899105072021 -smn 0 -smx 0 -at "float" -p "input_varnish_color";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_colorg" -ln "input_varnish_colorG" 
		-dv 0.31767800450325012 -smn 0 -smx 0 -at "float" -p "input_varnish_color";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_colorb" -ln "input_varnish_colorB" 
		-dv 0.33908000588417053 -smn 0 -smx 0 -at "float" -p "input_varnish_color";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_intensity" -ln "input_varnish_intensity" 
		-nn "Varnish Intensity" -ct "substance_input" -dv 0.37999999523162842 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_spread" -ln "input_varnish_spread" 
		-nn "Varnish Spread" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_highlight_intensity_color" 
		-ln "input_highlight_intensity_color" -nn "Highlight Intensity Color" -ct "substance_input" 
		-at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_highlight_intensity_colorr" 
		-ln "input_highlight_intensity_colorR" -dv 0.57471299171447754 -smn 0 -smx 0 -at "float" 
		-p "input_highlight_intensity_color";
	addAttr -r false -ci true -h true -k true -sn "input_highlight_intensity_colorg" 
		-ln "input_highlight_intensity_colorG" -dv 0.34581300616264343 -smn 0 -smx 0 -at "float" 
		-p "input_highlight_intensity_color";
	addAttr -r false -ci true -h true -k true -sn "input_highlight_intensity_colorb" 
		-ln "input_highlight_intensity_colorB" -dv 0.15983100235462189 -smn 0 -smx 0 -at "float" 
		-p "input_highlight_intensity_color";
	addAttr -r false -ci true -h true -k true -sn "input_force_highlight" -ln "input_force_highlight" 
		-nn "Force Highlight" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_wood_fiber_deformation" -ln "input_wood_fiber_deformation" 
		-nn "Wood Fiber Deformation" -ct "substance_input" -dv 0.15000000596046448 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_flatten_wood_fiber" -ln "input_flatten_wood_fiber" 
		-nn "Flatten Wood Fiber" -ct "substance_input" -dv 0.31000000238418579 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_trim_intensity" -ln "input_trim_intensity" 
		-nn "Trim Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_planks_amount" -ln "input_planks_amount" 
		-nn "Planks Amount" -ct "substance_input" -dv 10 -smn 5 -smx 20 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_planks_tilt" -ln "input_planks_tilt" 
		-nn "Planks Tilt" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_planks_gap" -ln "input_planks_gap" 
		-nn "Planks Gap" -ct "substance_input" -dv 0.18999999761581421 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_surfacing" -ln "input_surfacing" 
		-nn "Surfacing" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_woodboring_insect" -ln "input_woodboring_insect" 
		-nn "Woodboring Insect" -ct "substance_input" -dv 0.25 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	setAttr ".sbs" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/stylized_scratched_wood_planks.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://stylized_scratched_wood_planks\" label=\"Light Wood Planks\" >\n  <presetinput identifier=\"wood_color\" uid=\"1214017597\" type=\"2\" value=\"0.470588,0.321569,0.145098\" />\n  <presetinput identifier=\"wood_color_variation\" uid=\"1214522643\" type=\"2\" value=\"0.208869,0.425287,0.358123\" />\n  <presetinput identifier=\"wood_color_variation_intensity\" uid=\"1214563958\" type=\"0\" value=\"0.25\" />\n  <presetinput identifier=\"fiber_color\" uid=\"1215431139\" type=\"2\" value=\"0.262745,0.235294,0.121569\" />\n  <presetinput identifier=\"fiber_color_intensity\" uid=\"1215456318\" type=\"0\" value=\"0.36\" />\n  <presetinput identifier=\"varnish_color\" uid=\"1214211577\" type=\"2\" value=\"0.477012,0.40382,0.211691\" />\n  <presetinput identifier=\"varnish_intensity\" uid=\"1213850674\" type=\"0\" value=\"0.16\" />\n  <presetinput identifier=\"varnish_spread\" uid=\"1214677711\" type=\"0\" value=\"0.56\" />\n  <presetinput identifier=\"highlight_intensity_color\" uid=\"1214545833\" type=\"2\" value=\"0.556863,0.360784,0.231373\" />\n  <presetinput identifier=\"wood_fiber_deformation\" uid=\"1214843296\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"planks_amount\" uid=\"1214837344\" type=\"4\" value=\"15\" />\n  <presetinput identifier=\"planks_tilt\" uid=\"1214118891\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"planks_gap\" uid=\"1214845358\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"surfacing\" uid=\"1214941463\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"woodboring_insect\" uid=\"1214893644\" type=\"0\" value=\"0.15\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://stylized_scratched_wood_planks\" label=\"Old Green Wood Planks\" >\n  <presetinput identifier=\"wood_color\" uid=\"1214017597\" type=\"2\" value=\"0.316092,0.261916,0.091648\" />\n  <presetinput identifier=\"wood_roughness\" uid=\"1214583558\" type=\"0\" value=\"0.8\" />\n  <presetinput identifier=\"wood_color_variation\" uid=\"1214522643\" type=\"2\" value=\"0.208869,0.425287,0.358123\" />\n  <presetinput identifier=\"wood_color_variation_intensity\" uid=\"1214563958\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"fiber_color\" uid=\"1215431139\" type=\"2\" value=\"0.201591,0.327586,0.201592\" />\n  <presetinput identifier=\"fiber_color_intensity\" uid=\"1215456318\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"varnish_color\" uid=\"1214211577\" type=\"2\" value=\"0.300959,0.317678,0.33908\" />\n  <presetinput identifier=\"\" uid=\"1214607276\" type=\"65535\" value=\"1\" />\n  <presetinput identifier=\"varnish_intensity\" uid=\"1213850674\" type=\"0\" value=\"0.38\" />\n  <presetinput identifier=\"varnish_spread\" uid=\"1214677711\" type=\"0\" value=\"0.56\" />\n  <presetinput identifier=\"highlight_intensity_color\" uid=\"1214545833\" type=\"2\" value=\"0.787356,0.558588,0.372713\" />\n  <presetinput identifier=\"force_highlight\" uid=\"1214088939\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"wood_fiber_deformation\" uid=\"1214843296\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"flatten_wood_fiber\" uid=\"1214869240\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"trim_intensity\" uid=\"1267894773\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"planks_amount\" uid=\"1214837344\" type=\"4\" value=\"20\" />\n  <presetinput identifier=\"planks_tilt\" uid=\"1214118891\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"planks_gap\" uid=\"1214845358\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"surfacing\" uid=\"1214941463\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"woodboring_insect\" uid=\"1214893644\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://stylized_scratched_wood_planks\" label=\"Light Brown Wood Planks\" >\n  <presetinput identifier=\"wood_color\" uid=\"1214017597\" type=\"2\" value=\"0.316092,0.192261,0.091648\" />\n  <presetinput identifier=\"wood_color_variation\" uid=\"1214522643\" type=\"2\" value=\"0.666667,0.467692,0\" />\n  <presetinput identifier=\"wood_color_variation_intensity\" uid=\"1214563958\" type=\"0\" value=\"0.2\" />\n  <presetinput identifier=\"fiber_color\" uid=\"1215431139\" type=\"2\" value=\"0.317647,0.192157,0.0901961\" />\n  <presetinput identifier=\"fiber_color_intensity\" uid=\"1215456318\" type=\"0\" value=\"0.01\" />\n  <presetinput identifier=\"varnish_intensity\" uid=\"1213850674\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"force_highlight\" uid=\"1214088939\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"wood_fiber_deformation\" uid=\"1214843296\" type=\"0\" value=\"0.1\" />\n  <presetinput identifier=\"flatten_wood_fiber\" uid=\"1214869240\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"trim_intensity\" uid=\"1267894773\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"planks_gap\" uid=\"1214845358\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"woodboring_insect\" uid=\"1214893644\" type=\"0\" value=\"0.01\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture7";
	rename -uid "6935BBB5-5D4B-7A9F-AF0C-4BA969FC4DEE";
createNode substanceOutputNode -n "Stylized_Scratched_Wood_Planks_basecolor";
	rename -uid "FB4E372B-7044-3B2A-20A7-1E81B4AF5179";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Stylized_Scratched_Wood_Planks_basecolor.exr";
createNode file -n "file17";
	rename -uid "2A04F77D-1E45-3E01-81D8-15A40AA57C56";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Scratched_Wood_Planks_ambientocclusion";
	rename -uid "30C16DF9-6B40-C8B2-5466-9A99A73BAD3A";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Stylized_Scratched_Wood_Planks_ambientocclusion.png";
createNode file -n "file18";
	rename -uid "4D29EBBD-F544-BC0D-7653-06B3D6C837D2";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Scratched_Wood_Planks_metallic";
	rename -uid "B8F3C369-6445-E0E9-D14B-BF8D27700A0A";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Stylized_Scratched_Wood_Planks_metallic.png";
createNode file -n "file19";
	rename -uid "895A9425-0542-89AE-6F97-FD989B0C296A";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Scratched_Wood_Planks_normal";
	rename -uid "977BFFCB-2847-D38D-1499-CF8268CA8A50";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Stylized_Scratched_Wood_Planks_normal.exr";
createNode file -n "file20";
	rename -uid "16367E33-CA41-1E5F-3F58-6C8ABEACC833";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Scratched_Wood_Planks_height";
	rename -uid "E240A5A1-0646-6B2B-A83F-B9BD41EFD991";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Stylized_Scratched_Wood_Planks_height.exr";
createNode file -n "file21";
	rename -uid "78EF3976-8A41-9452-417D-65955C9AC936";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Stylized_Scratched_Wood_Planks_roughness";
	rename -uid "F2CBE903-304B-4F81-9704-FB8588B6C9A5";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Stylized_Scratched_Wood_Planks_roughness.png";
createNode file -n "file22";
	rename -uid "2CCE7874-DE4F-691D-8051-7EA5400CBFD1";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "2FCD6F28-EA4A-244E-9E7D-A5ACBF27975F";
createNode aiStandardSurface -n "crate";
	rename -uid "0D33A303-944B-E1AC-30AD-34826A3D57D7";
	setAttr ".specular" 0.18400000035762787;
	setAttr ".specular_IOR" 7.6393442153930664;
	setAttr ".coat_roughness" 0.20731706917285919;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set2";
	rename -uid "C6D0B6F8-F642-48EF-FFAF-5B8525DFACDD";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "E14B78C8-E84F-0AEF-5344-2E8BED5C2B07";
createNode bump2d -n "bump2d4";
	rename -uid "09542AE1-3142-A110-8EDB-0F8DFE06EC2B";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 2.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader1";
	rename -uid "EA85E93D-FB46-D9A4-0922-AEAAFCFE9FAC";
createNode substanceNode -n "substanceNode5";
	rename -uid "E4A51A1D-4C4F-0457-C2B1-EC8B166571B8";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
createNode place2dTexture -n "place2dTexture8";
	rename -uid "A913DB10-2A48-4FD7-6C13-A6B4B6C43CD0";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "A5B909E8-D340-5479-C207-DF9429BBBEAF";
createNode file -n "file23";
	rename -uid "681837FF-2C44-8E5D-89F5-1F85D4D9CBC3";
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/substanceNode3_Base Color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file24";
	rename -uid "4DE0ABC6-7849-53A8-0F2E-1D910772D274";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/substanceNode3_Height.exr";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file25";
	rename -uid "00F2D5ED-BB4D-46B7-4103-0B9A984CB39C";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/substanceNode3_Normal.exr";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "219CCF83-6049-36AD-C3C8-CFBAEFE8B1AA";
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "F5B174B4-BF47-DAD4-6F52-989E066B91FE";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set3";
	rename -uid "A1D75820-5946-7D2A-86B1-2AA7E73B6F7A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "CC9A021E-FF4E-5E56-7DE4-5E80EA4C68F0";
createNode displacementShader -n "displacementShader2";
	rename -uid "D7524152-5C47-4564-F4A4-73976F6D2097";
createNode bump2d -n "bump2d5";
	rename -uid "41B66300-8A48-3900-5B00-1CB91953E097";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 2.9999999e-05 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode place2dTexture -n "place2dTexture10";
	rename -uid "CC4F6756-B44A-72F2-2771-C7B13A9F2EF2";
createNode file -n "file26";
	rename -uid "C3632898-A24D-6768-C3D3-1FB7FF96D786";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/crate_initialShadingGroup_Normal.1001.exr";
	setAttr ".cs" -type "string" "Raw";
createNode bump2d -n "bump2d6";
	rename -uid "4F64A418-874A-6CE2-277D-80A208703780";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode shadingEngine -n "set4";
	rename -uid "C64BB4B1-7A42-8D5D-B040-40BA8531008A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "FFC0C884-D347-A3B0-E25A-52A638952273";
createNode polyMapCut -n "polyMapCut31";
	rename -uid "01ECD474-C448-AA5F-7986-E6BB14EE5D07";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[1849:1850]" "e[1852]" "e[1854]" "e[1856]" "e[1858]" "e[1860]" "e[1862]" "e[1864]" "e[1866]" "e[1868]" "e[1870]" "e[1872]" "e[1874]" "e[1876]" "e[1878]" "e[1880]" "e[1882]" "e[1884]" "e[1886]" "e[1888]" "e[1890]" "e[1892]" "e[1894]";
createNode polyMapCut -n "polyMapCut32";
	rename -uid "A2634468-0840-5397-ADDC-8FA4D23FE9FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[1273:1274]" "e[1276]" "e[1278]" "e[1280]" "e[1282]" "e[1284]" "e[1286]" "e[1288]" "e[1290]" "e[1292]" "e[1294]" "e[1296]" "e[1298]" "e[1300]" "e[1302]" "e[1304]" "e[1306]" "e[1308]" "e[1310]" "e[1312]" "e[1314]" "e[1316]" "e[1318]";
createNode polyTweakUV -n "polyTweakUV135";
	rename -uid "C6A3085B-6D42-48F5-720A-A792C5464EB1";
	setAttr ".uopa" yes;
	setAttr -s 297 ".uvtk";
	setAttr ".uvtk[578]" -type "float2" -0.039647341 0.0068033338 ;
	setAttr ".uvtk[579]" -type "float2" -0.051734209 0.0097947717 ;
	setAttr ".uvtk[581]" -type "float2" -0.031602025 0.004607439 ;
	setAttr ".uvtk[583]" -type "float2" -0.02637291 0.0030968189 ;
	setAttr ".uvtk[585]" -type "float2" -0.021533549 0.0020672679 ;
	setAttr ".uvtk[587]" -type "float2" -0.017518461 0.001388073 ;
	setAttr ".uvtk[589]" -type "float2" -0.014686093 0.00094753504 ;
	setAttr ".uvtk[591]" -type "float2" -0.012362882 0.00064879656 ;
	setAttr ".uvtk[593]" -type "float2" -0.0095427781 0.00043785572 ;
	setAttr ".uvtk[595]" -type "float2" -0.0064505637 0.00026684999 ;
	setAttr ".uvtk[597]" -type "float2" -0.0052936226 0.00013440847 ;
	setAttr ".uvtk[599]" -type "float2" 0.001421839 7.2717667e-06 ;
	setAttr ".uvtk[601]" -type "float2" 0.0038507283 -0.00012665987 ;
	setAttr ".uvtk[603]" -type "float2" 0.0065110326 -0.00025385618 ;
	setAttr ".uvtk[605]" -type "float2" 0.010036647 -0.00041097403 ;
	setAttr ".uvtk[607]" -type "float2" 0.012995899 -0.00058948994 ;
	setAttr ".uvtk[609]" -type "float2" 0.015413344 -0.00079905987 ;
	setAttr ".uvtk[611]" -type "float2" 0.017876327 -0.0011012554 ;
	setAttr ".uvtk[613]" -type "float2" 0.020001829 -0.0015456676 ;
	setAttr ".uvtk[615]" -type "float2" 0.023997545 -0.0022056103 ;
	setAttr ".uvtk[617]" -type "float2" 0.028652906 -0.0031762719 ;
	setAttr ".uvtk[619]" -type "float2" 0.034177542 -0.0045852661 ;
	setAttr ".uvtk[621]" -type "float2" 0.041648865 -0.0065258145 ;
	setAttr ".uvtk[623]" -type "float2" 0.049904108 -0.0092638731 ;
	setAttr ".uvtk[648]" -type "float2" 0.031446457 0.0075727105 ;
	setAttr ".uvtk[649]" -type "float2" 0.037977576 0.025961101 ;
	setAttr ".uvtk[650]" -type "float2" -0.032679796 0.0079148412 ;
	setAttr ".uvtk[651]" -type "float2" -0.026046276 -0.0022322536 ;
	setAttr ".uvtk[652]" -type "float2" -0.021985292 -0.009583652 ;
	setAttr ".uvtk[653]" -type "float2" -0.01792872 -0.014059722 ;
	setAttr ".uvtk[654]" -type "float2" -0.014976382 -0.017806947 ;
	setAttr ".uvtk[655]" -type "float2" -0.012509644 -0.020107687 ;
	setAttr ".uvtk[656]" -type "float2" -0.0092986226 -0.021631658 ;
	setAttr ".uvtk[657]" -type "float2" -0.0073131323 -0.023824513 ;
	setAttr ".uvtk[658]" -type "float2" -0.0055871606 -0.024375379 ;
	setAttr ".uvtk[659]" -type "float2" -0.0047616959 -0.025177777 ;
	setAttr ".uvtk[660]" -type "float2" -0.0050249994 -0.025822222 ;
	setAttr ".uvtk[661]" -type "float2" -0.0038507283 -0.025871456 ;
	setAttr ".uvtk[662]" -type "float2" -0.0027430952 -0.025961101 ;
	setAttr ".uvtk[663]" -type "float2" -0.0057800859 -0.02571553 ;
	setAttr ".uvtk[664]" -type "float2" -0.0030797422 -0.024698913 ;
	setAttr ".uvtk[665]" -type "float2" -0.0019268543 -0.024123013 ;
	setAttr ".uvtk[666]" -type "float2" -4.5731664e-05 -0.022661746 ;
	setAttr ".uvtk[667]" -type "float2" 0.0030739158 -0.020688593 ;
	setAttr ".uvtk[668]" -type "float2" 0.0070144832 -0.018698394 ;
	setAttr ".uvtk[669]" -type "float2" 0.011016577 -0.015191615 ;
	setAttr ".uvtk[670]" -type "float2" 0.016079724 -0.010260999 ;
	setAttr ".uvtk[671]" -type "float2" 0.023255229 -0.00293082 ;
	setAttr ".uvtk[720]" -type "float2" 0.045439482 -0.0038273335 ;
	setAttr ".uvtk[721]" -type "float2" 0.054743052 -0.0082348585 ;
	setAttr ".uvtk[722]" -type "float2" -0.056663036 0.012507141 ;
	setAttr ".uvtk[723]" -type "float2" 0.046713114 0.0093201995 ;
	setAttr ".uvtk[724]" -type "float2" -0.049903989 -0.0055044889 ;
	setAttr ".uvtk[725]" -type "float2" -0.049105525 0.0089685321 ;
	setAttr ".uvtk[726]" -type "float2" -0.041648865 0.00084388256 ;
	setAttr ".uvtk[727]" -type "float2" -0.040119171 0.003680408 ;
	setAttr ".uvtk[728]" -type "float2" -0.034177542 0.0049632788 ;
	setAttr ".uvtk[729]" -type "float2" -0.034014702 -0.00074797869 ;
	setAttr ".uvtk[730]" -type "float2" -0.028652906 0.0077706575 ;
	setAttr ".uvtk[731]" -type "float2" -0.027651668 -0.003862679 ;
	setAttr ".uvtk[732]" -type "float2" -0.023997426 0.0090135336 ;
	setAttr ".uvtk[733]" -type "float2" -0.023225546 -0.006375134 ;
	setAttr ".uvtk[734]" -type "float2" -0.020001829 0.0091365576 ;
	setAttr ".uvtk[735]" -type "float2" -0.019103467 -0.0081785321 ;
	setAttr ".uvtk[736]" -type "float2" -0.017876327 0.008838892 ;
	setAttr ".uvtk[737]" -type "float2" -0.015034974 -0.0095599294 ;
	setAttr ".uvtk[738]" -type "float2" -0.015413404 0.0080912113 ;
	setAttr ".uvtk[739]" -type "float2" -0.012406349 -0.011768997 ;
	setAttr ".uvtk[740]" -type "float2" -0.012772381 0.0075517893 ;
	setAttr ".uvtk[741]" -type "float2" -0.009770453 -0.012276828 ;
	setAttr ".uvtk[742]" -type "float2" -0.010022759 0.0073196888 ;
	setAttr ".uvtk[743]" -type "float2" -0.0081095695 -0.01301676 ;
	setAttr ".uvtk[744]" -type "float2" -0.0063794255 0.0072108507 ;
	setAttr ".uvtk[745]" -type "float2" -0.0065110326 -0.013825953 ;
	setAttr ".uvtk[746]" -type "float2" -0.001737237 0.0070557594 ;
	setAttr ".uvtk[747]" -type "float2" -0.0037069917 -0.01387006 ;
	setAttr ".uvtk[748]" -type "float2" 0.002202332 0.0070991516 ;
	setAttr ".uvtk[749]" -type "float2" -0.0013322234 -0.013818085 ;
	setAttr ".uvtk[750]" -type "float2" 0.0017910302 0.0078099966 ;
	setAttr ".uvtk[751]" -type "float2" -0.0029755235 -0.013486683 ;
	setAttr ".uvtk[752]" -type "float2" 0.0064082742 0.0088303089 ;
	setAttr ".uvtk[753]" -type "float2" 0.00081643462 -0.01234597 ;
	setAttr ".uvtk[754]" -type "float2" 0.0093173236 0.0095047951 ;
	setAttr ".uvtk[755]" -type "float2" 0.0032274574 -0.011576355 ;
	setAttr ".uvtk[756]" -type "float2" 0.012362882 0.010361075 ;
	setAttr ".uvtk[757]" -type "float2" 0.0062900931 -0.009981215 ;
	setAttr ".uvtk[758]" -type "float2" 0.014686093 0.010679841 ;
	setAttr ".uvtk[759]" -type "float2" 0.010178313 -0.0084301829 ;
	setAttr ".uvtk[760]" -type "float2" 0.017518431 0.010163546 ;
	setAttr ".uvtk[761]" -type "float2" 0.015347034 -0.0065081716 ;
	setAttr ".uvtk[762]" -type "float2" 0.021533579 0.0089536905 ;
	setAttr ".uvtk[763]" -type "float2" 0.020661801 -0.0040581822 ;
	setAttr ".uvtk[764]" -type "float2" 0.027563959 0.0063312054 ;
	setAttr ".uvtk[765]" -type "float2" 0.027410418 -0.00082606077 ;
	setAttr ".uvtk[766]" -type "float2" 0.036579728 0.0020260811 ;
	setAttr ".uvtk[767]" -type "float2" 0.036388993 0.0036564469 ;
	setAttr ".uvtk[816]" -type "float2" 0.04578352 0.0091375709 ;
	setAttr ".uvtk[817]" -type "float2" 0.057686329 0.015226901 ;
	setAttr ".uvtk[818]" -type "float2" -0.044164181 0.023921669 ;
	setAttr ".uvtk[819]" -type "float2" 0.033784628 0.0077897906 ;
	setAttr ".uvtk[820]" -type "float2" -0.048374414 0.0088514686 ;
	setAttr ".uvtk[821]" -type "float2" -0.034812212 0.0080481172 ;
	setAttr ".uvtk[822]" -type "float2" -0.03938508 0.0029972196 ;
	setAttr ".uvtk[823]" -type "float2" -0.027589083 -0.0017012954 ;
	setAttr ".uvtk[824]" -type "float2" -0.03307128 -0.0016184449 ;
	setAttr ".uvtk[825]" -type "float2" -0.023370743 -0.0088080764 ;
	setAttr ".uvtk[826]" -type "float2" -0.027073145 -0.004986465 ;
	setAttr ".uvtk[827]" -type "float2" -0.018959403 -0.013293684 ;
	setAttr ".uvtk[828]" -type "float2" -0.022612453 -0.0076865554 ;
	setAttr ".uvtk[829]" -type "float2" -0.01591301 -0.016891658 ;
	setAttr ".uvtk[830]" -type "float2" -0.018678367 -0.0093665719 ;
	setAttr ".uvtk[831]" -type "float2" -0.013215125 -0.019072831 ;
	setAttr ".uvtk[832]" -type "float2" -0.014661133 -0.010872424 ;
	setAttr ".uvtk[833]" -type "float2" -0.0098499656 -0.020649016 ;
	setAttr ".uvtk[834]" -type "float2" -0.011982083 -0.013151944 ;
	setAttr ".uvtk[835]" -type "float2" -0.0078588724 -0.022925317 ;
	setAttr ".uvtk[836]" -type "float2" -0.0094406009 -0.013572037 ;
	setAttr ".uvtk[837]" -type "float2" -0.0060936809 -0.023396432 ;
	setAttr ".uvtk[838]" -type "float2" -0.007843852 -0.014339507 ;
	setAttr ".uvtk[839]" -type "float2" -0.0051065683 -0.024233639 ;
	setAttr ".uvtk[840]" -type "float2" -0.0064207017 -0.01505059 ;
	setAttr ".uvtk[841]" -type "float2" -0.0051627755 -0.024801791 ;
	setAttr ".uvtk[842]" -type "float2" -0.0037435591 -0.015180409 ;
	setAttr ".uvtk[843]" -type "float2" -0.0038304925 -0.024926364 ;
	setAttr ".uvtk[844]" -type "float2" -0.0014826655 -0.015226901 ;
	setAttr ".uvtk[845]" -type "float2" -0.0026047528 -0.025075495 ;
	setAttr ".uvtk[846]" -type "float2" -0.0032635182 -0.014809906 ;
	setAttr ".uvtk[847]" -type "float2" -0.0055276304 -0.024746001 ;
	setAttr ".uvtk[848]" -type "float2" 0.00046205521 -0.013602674 ;
	setAttr ".uvtk[849]" -type "float2" -0.0026866496 -0.023621857 ;
	setAttr ".uvtk[850]" -type "float2" 0.0027548522 -0.012918651 ;
	setAttr ".uvtk[851]" -type "float2" -0.0013671368 -0.023135364 ;
	setAttr ".uvtk[852]" -type "float2" 0.0057520419 -0.01141578 ;
	setAttr ".uvtk[853]" -type "float2" 0.00062982738 -0.021647036 ;
	setAttr ".uvtk[854]" -type "float2" 0.0096666664 -0.0096877217 ;
	setAttr ".uvtk[855]" -type "float2" 0.0038152784 -0.019748986 ;
	setAttr ".uvtk[856]" -type "float2" 0.014681309 -0.0078707337 ;
	setAttr ".uvtk[857]" -type "float2" 0.0079518259 -0.017731965 ;
	setAttr ".uvtk[858]" -type "float2" 0.019964248 -0.0052493215 ;
	setAttr ".uvtk[859]" -type "float2" 0.012118012 -0.014282882 ;
	setAttr ".uvtk[860]" -type "float2" 0.026622802 -0.0018592477 ;
	setAttr ".uvtk[861]" -type "float2" 0.017407626 -0.0094797015 ;
	setAttr ".uvtk[862]" -type "float2" 0.035683274 0.0028873086 ;
	setAttr ".uvtk[863]" -type "float2" 0.024782777 -0.0023198724 ;
	setAttr ".uvtk[864]" -type "float2" 0.032728791 -0.0023433566 ;
	setAttr ".uvtk[865]" -type "float2" 0.042681217 -0.01860106 ;
	setAttr ".uvtk[866]" -type "float2" -0.060890317 -0.011883318 ;
	setAttr ".uvtk[867]" -type "float2" 0.044921041 -0.0035935044 ;
	setAttr ".uvtk[868]" -type "float2" -0.038428426 -0.0039866567 ;
	setAttr ".uvtk[869]" -type "float2" -0.049271822 -0.005237639 ;
	setAttr ".uvtk[870]" -type "float2" -0.031064272 0.0070456862 ;
	setAttr ".uvtk[871]" -type "float2" -0.040659904 0.0015175939 ;
	setAttr ".uvtk[872]" -type "float2" -0.025537491 0.012720048 ;
	setAttr ".uvtk[873]" -type "float2" -0.033520103 0.0059892535 ;
	setAttr ".uvtk[874]" -type "float2" -0.021339536 0.017053306 ;
	setAttr ".uvtk[875]" -type "float2" -0.027901292 0.0088842511 ;
	setAttr ".uvtk[876]" -type "float2" -0.018599749 0.017542422 ;
	setAttr ".uvtk[877]" -type "float2" -0.02370131 0.010246456 ;
	setAttr ".uvtk[878]" -type "float2" -0.016106904 0.020135224 ;
	setAttr ".uvtk[879]" -type "float2" -0.019669592 0.010357201 ;
	setAttr ".uvtk[880]" -type "float2" -0.014679372 0.019791186 ;
	setAttr ".uvtk[881]" -type "float2" -0.01737684 0.010139525 ;
	setAttr ".uvtk[882]" -type "float2" -0.013620973 0.01499635 ;
	setAttr ".uvtk[883]" -type "float2" -0.015277863 0.0091597438 ;
	setAttr ".uvtk[884]" -type "float2" -0.011671007 0.017397106 ;
	setAttr ".uvtk[885]" -type "float2" -0.012995899 0.0088052154 ;
	setAttr ".uvtk[886]" -type "float2" -0.0094698668 0.019546211 ;
	setAttr ".uvtk[887]" -type "float2" -0.010036707 0.0086693168 ;
	setAttr ".uvtk[888]" -type "float2" -0.0056019723 0.017925084 ;
	setAttr ".uvtk[889]" -type "float2" -0.0062320232 0.0085374713 ;
	setAttr ".uvtk[890]" -type "float2" -0.00090369582 0.018268764 ;
	setAttr ".uvtk[891]" -type "float2" -0.001519084 0.0083803535 ;
	setAttr ".uvtk[892]" -type "float2" 0.0027271807 0.015967548 ;
	setAttr ".uvtk[893]" -type "float2" 0.0023815334 0.0083341002 ;
	setAttr ".uvtk[894]" -type "float2" 0.0024417788 0.017977178 ;
	setAttr ".uvtk[895]" -type "float2" 0.0016961843 0.0090999007 ;
	setAttr ".uvtk[896]" -type "float2" 0.0062913001 0.021184981 ;
	setAttr ".uvtk[897]" -type "float2" 0.0064505637 0.010171354 ;
	setAttr ".uvtk[898]" -type "float2" 0.0083784014 0.01945585 ;
	setAttr ".uvtk[899]" -type "float2" 0.0095427781 0.01079756 ;
	setAttr ".uvtk[900]" -type "float2" 0.010634229 0.020355642 ;
	setAttr ".uvtk[901]" -type "float2" 0.012311921 0.011681855 ;
	setAttr ".uvtk[902]" -type "float2" 0.011331722 0.021319926 ;
	setAttr ".uvtk[903]" -type "float2" 0.014406249 0.011883318 ;
	setAttr ".uvtk[904]" -type "float2" 0.012555629 0.01928705 ;
	setAttr ".uvtk[905]" -type "float2" 0.017216414 0.011419833 ;
	setAttr ".uvtk[906]" -type "float2" 0.014518768 0.01804167 ;
	setAttr ".uvtk[907]" -type "float2" 0.020906478 0.010111511 ;
	setAttr ".uvtk[908]" -type "float2" 0.018344015 0.014783323 ;
	setAttr ".uvtk[909]" -type "float2" 0.026782602 0.0072993636 ;
	setAttr ".uvtk[910]" -type "float2" 0.025203347 0.0085397363 ;
	setAttr ".uvtk[911]" -type "float2" 0.035560012 0.0028247237 ;
	setAttr ".uvtk[912]" -type "float2" 0.030847907 -0.0021439195 ;
	setAttr ".uvtk[913]" -type "float2" 0.038466096 -0.019535601 ;
	setAttr ".uvtk[914]" -type "float2" 0.023578525 0.0091013312 ;
	setAttr ".uvtk[915]" -type "float2" 0.017226487 0.015563071 ;
	setAttr ".uvtk[916]" -type "float2" 0.01369223 0.018858373 ;
	setAttr ".uvtk[917]" -type "float2" 0.011920244 0.020111024 ;
	setAttr ".uvtk[918]" -type "float2" 0.010863945 0.022246659 ;
	setAttr ".uvtk[919]" -type "float2" 0.010391995 0.021297634 ;
	setAttr ".uvtk[920]" -type "float2" 0.008150056 0.020300686 ;
	setAttr ".uvtk[921]" -type "float2" 0.0062579215 0.022273719 ;
	setAttr ".uvtk[922]" -type "float2" 0.0026320815 0.018912733 ;
	setAttr ".uvtk[923]" -type "float2" 0.0027430952 0.016719878 ;
	setAttr ".uvtk[924]" -type "float2" -0.00098124146 0.019356787 ;
	setAttr ".uvtk[925]" -type "float2" -0.0055783391 0.018845975 ;
	setAttr ".uvtk[926]" -type "float2" -0.009229064 0.020667851 ;
	setAttr ".uvtk[927]" -type "float2" -0.011180341 0.018293202 ;
	setAttr ".uvtk[928]" -type "float2" -0.013430953 0.015497267 ;
	setAttr ".uvtk[929]" -type "float2" -0.014592707 0.020837486 ;
	setAttr ".uvtk[930]" -type "float2" -0.015442789 0.021066725 ;
	setAttr ".uvtk[931]" -type "float2" -0.017878532 0.018326819 ;
	setAttr ".uvtk[932]" -type "float2" -0.020453215 0.01790303 ;
	setAttr ".uvtk[933]" -type "float2" -0.02447772 0.013434947 ;
	setAttr ".uvtk[934]" -type "float2" -0.029528856 0.0075717568 ;
	setAttr ".uvtk[935]" -type "float2" -0.036351204 -0.0037671924 ;
	setAttr ".uvtk[1080]" -type "float2" -0.036579728 -0.004352212 ;
	setAttr ".uvtk[1081]" -type "float2" -0.046713114 -0.0061973333 ;
	setAttr ".uvtk[1082]" -type "float2" -0.027563959 -0.0026424527 ;
	setAttr ".uvtk[1083]" -type "float2" -0.019076318 -0.0016123056 ;
	setAttr ".uvtk[1084]" -type "float2" -0.013254076 8.2015991e-05 ;
	setAttr ".uvtk[1085]" -type "float2" -0.0076153427 -0.0004837513 ;
	setAttr ".uvtk[1086]" -type "float2" -0.0027488917 -0.00060009956 ;
	setAttr ".uvtk[1087]" -type "float2" -0.003479287 0.00064897537 ;
	setAttr ".uvtk[1088]" -type "float2" 0.0021134317 0.00070154667 ;
	setAttr ".uvtk[1089]" -type "float2" 0.0057800859 6.8068504e-05 ;
	setAttr ".uvtk[1090]" -type "float2" 0.002015233 0.00050652027 ;
	setAttr ".uvtk[1091]" -type "float2" -0.0034017861 -0.0012260675 ;
	setAttr ".uvtk[1092]" -type "float2" -0.0032505989 0.00082933903 ;
	setAttr ".uvtk[1093]" -type "float2" 0.0020329952 0.00063765049 ;
	setAttr ".uvtk[1094]" -type "float2" 0.0086290836 0.00088834763 ;
	setAttr ".uvtk[1095]" -type "float2" -0.0025000572 -0.001167655 ;
	setAttr ".uvtk[1096]" -type "float2" -0.0083991885 -0.0008161068 ;
	setAttr ".uvtk[1097]" -type "float2" 0.0046492219 0.00066101551 ;
	setAttr ".uvtk[1098]" -type "float2" 0.0094023943 0.0019431114 ;
	setAttr ".uvtk[1099]" -type "float2" 0.012352467 0.0019190311 ;
	setAttr ".uvtk[1100]" -type "float2" 0.019579887 0.0044970512 ;
	setAttr ".uvtk[1101]" -type "float2" 0.029000044 0.0064169168 ;
	setAttr ".uvtk[1102]" -type "float2" 0.040058136 0.0097501278 ;
	setAttr ".uvtk[1103]" -type "float2" -0.057686329 -0.0099077225 ;
	setAttr ".uvtk[1152]" -type "float2" 0.052625537 -0.0097501278 ;
	setAttr ".uvtk[1153]" -type "float2" -0.042842627 -0.022273719 ;
	setAttr ".uvtk[1154]" -type "float2" 0.055294752 -0.0093446374 ;
	setAttr ".uvtk[1155]" -type "float2" -0.059769392 -0.010679841 ;
	setAttr ".uvtk[1156]" -type "float2" -0.046549797 -0.021319926 ;
	setAttr ".uvtk[1157]" -type "float2" 0.042093515 0.025075495 ;
	setAttr ".uvtk[1158]" -type "float2" -0.039475679 0.024936378 ;
	setAttr ".uvtk[1159]" -type "float2" 0.056233168 0.01387006 ;
	setAttr ".uvtk[1160]" -type "float2" -0.05755043 0.013680875 ;
	setAttr ".uvtk[1161]" -type "float2" 0.060890198 0.0092638731 ;
	setAttr ".uvtk[1323]" -type "float2" -0.036579728 0.0061973333 ;
	setAttr ".uvtk[1324]" -type "float2" -0.027563959 0.0043521523 ;
	setAttr ".uvtk[1325]" -type "float2" -0.019076318 0.0026423931 ;
	setAttr ".uvtk[1326]" -type "float2" -0.013254076 0.0016123056 ;
	setAttr ".uvtk[1327]" -type "float2" -0.0076153427 -8.2015991e-05 ;
	setAttr ".uvtk[1328]" -type "float2" -0.0027488917 0.0004837513 ;
	setAttr ".uvtk[1329]" -type "float2" -0.003479287 0.00060009956 ;
	setAttr ".uvtk[1330]" -type "float2" 0.0021134317 -0.00064897537 ;
	setAttr ".uvtk[1331]" -type "float2" 0.0057800859 -0.00070154667 ;
	setAttr ".uvtk[1332]" -type "float2" 0.002015233 -6.8068504e-05 ;
	setAttr ".uvtk[1333]" -type "float2" -0.0034017861 -0.00050652027 ;
	setAttr ".uvtk[1334]" -type "float2" -0.0032505989 0.0012260675 ;
	setAttr ".uvtk[1335]" -type "float2" 0.0020329952 -0.00082933903 ;
	setAttr ".uvtk[1336]" -type "float2" 0.0086290836 -0.00063765049 ;
	setAttr ".uvtk[1337]" -type "float2" -0.0025000572 -0.00088834763 ;
	setAttr ".uvtk[1338]" -type "float2" -0.0083991885 0.001167655 ;
	setAttr ".uvtk[1339]" -type "float2" 0.0046492219 0.0008161068 ;
	setAttr ".uvtk[1340]" -type "float2" 0.0094023943 -0.00066101551 ;
	setAttr ".uvtk[1341]" -type "float2" 0.012352467 -0.0019431114 ;
	setAttr ".uvtk[1342]" -type "float2" 0.019579887 -0.0019190311 ;
	setAttr ".uvtk[1343]" -type "float2" 0.029000044 -0.0044970512 ;
	setAttr ".uvtk[1344]" -type "float2" 0.040058136 -0.0064169168 ;
	setAttr ".uvtk[1345]" -type "float2" -0.046713114 0.0099077225 ;
	setAttr ".uvtk[1346]" -type "float2" -0.031602025 -0.0068033338 ;
	setAttr ".uvtk[1347]" -type "float2" -0.02637291 -0.004607439 ;
	setAttr ".uvtk[1348]" -type "float2" -0.021533549 -0.0030968189 ;
	setAttr ".uvtk[1349]" -type "float2" -0.017518461 -0.0020672679 ;
	setAttr ".uvtk[1350]" -type "float2" -0.014686093 -0.001388073 ;
	setAttr ".uvtk[1351]" -type "float2" -0.012362882 -0.00094753504 ;
	setAttr ".uvtk[1352]" -type "float2" -0.0095427781 -0.00064879656 ;
	setAttr ".uvtk[1353]" -type "float2" -0.0064505637 -0.00043785572 ;
	setAttr ".uvtk[1354]" -type "float2" -0.0052936226 -0.00026684999 ;
	setAttr ".uvtk[1355]" -type "float2" 0.001421839 -0.00013440847 ;
	setAttr ".uvtk[1356]" -type "float2" 0.0038507283 -7.2717667e-06 ;
	setAttr ".uvtk[1357]" -type "float2" 0.0065110326 0.00012665987 ;
	setAttr ".uvtk[1358]" -type "float2" 0.010036647 0.00025385618 ;
	setAttr ".uvtk[1359]" -type "float2" 0.012995899 0.00041097403 ;
	setAttr ".uvtk[1360]" -type "float2" 0.015413344 0.00058948994 ;
	setAttr ".uvtk[1361]" -type "float2" 0.017876327 0.00079905987 ;
	setAttr ".uvtk[1362]" -type "float2" 0.020001829 0.0011012554 ;
	setAttr ".uvtk[1363]" -type "float2" 0.023997545 0.0015456676 ;
	setAttr ".uvtk[1364]" -type "float2" 0.028652906 0.0022056103 ;
	setAttr ".uvtk[1365]" -type "float2" 0.034177542 0.0031762719 ;
	setAttr ".uvtk[1366]" -type "float2" 0.041648865 0.0045852661 ;
	setAttr ".uvtk[1367]" -type "float2" 0.049904108 0.0065258145 ;
	setAttr ".uvtk[1368]" -type "float2" -0.039647341 -0.0097947717 ;
createNode polyMapCut -n "polyMapCut33";
	rename -uid "5AAF44DF-5043-AC99-CDDD-3D840A855F93";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 70 "e[1080]" "e[1083]" "e[1085]" "e[1087]" "e[1089]" "e[1091]" "e[1093]" "e[1095]" "e[1097]" "e[1099]" "e[1101]" "e[1103]" "e[1105]" "e[1107]" "e[1109]" "e[1111]" "e[1113]" "e[1115]" "e[1117]" "e[1119]" "e[1121]" "e[1123]" "e[1125]" "e[1127]" "e[1321:1322]" "e[1324]" "e[1326]" "e[1328]" "e[1330]" "e[1332]" "e[1334]" "e[1336]" "e[1338]" "e[1340]" "e[1342]" "e[1344]" "e[1346]" "e[1348]" "e[1350]" "e[1352]" "e[1354]" "e[1356]" "e[1358]" "e[1360]" "e[1362]" "e[1364]" "e[1366]" "e[1897:1898]" "e[1900]" "e[1902]" "e[1904]" "e[1906]" "e[1908]" "e[1910]" "e[1912]" "e[1914]" "e[1916]" "e[1918]" "e[1920]" "e[1922]" "e[1924]" "e[1926]" "e[1928]" "e[1930]" "e[1932]" "e[1934]" "e[1936]" "e[1938]" "e[1940]" "e[1942]";
createNode polyMapCut -n "polyMapCut34";
	rename -uid "36A486E5-CC40-FC62-C611-B5AEB53988C3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[2016]" "e[2018:2039]";
createNode polyMapCut -n "polyMapCut35";
	rename -uid "803EA9DD-114C-8314-177A-06B5C340658F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[1897:1898]" "e[1900]" "e[1902]" "e[1904]" "e[1906]" "e[1908]" "e[1910]" "e[1912]" "e[1914]" "e[1916]" "e[1918]" "e[1920]" "e[1922]" "e[1924]" "e[1926]" "e[1928]" "e[1930]" "e[1932]" "e[1934]" "e[1936]" "e[1938]" "e[1940]" "e[1942]";
createNode polyTweakUV -n "polyTweakUV136";
	rename -uid "EF0F94E4-694A-C81C-23B2-8FB9BAC48A7A";
	setAttr ".uopa" yes;
	setAttr -s 245 ".uvtk";
	setAttr ".uvtk[552]" -type "float2" -0.05684495 0.0085523129 ;
	setAttr ".uvtk[553]" -type "float2" 0.024042964 -0.008666873 ;
	setAttr ".uvtk[554]" -type "float2" 0.017865658 -0.0058714151 ;
	setAttr ".uvtk[555]" -type "float2" 0.014701724 -0.0039426088 ;
	setAttr ".uvtk[556]" -type "float2" 0.012684226 -0.0025956631 ;
	setAttr ".uvtk[557]" -type "float2" 0.010649443 -0.001704812 ;
	setAttr ".uvtk[558]" -type "float2" 0.010710657 -0.0011353493 ;
	setAttr ".uvtk[559]" -type "float2" 0.010155618 -0.00078749657 ;
	setAttr ".uvtk[560]" -type "float2" 0.0076830387 -0.00056171417 ;
	setAttr ".uvtk[561]" -type "float2" 0.0052035451 -0.00040888786 ;
	setAttr ".uvtk[562]" -type "float2" 0.0043091774 -0.00028657913 ;
	setAttr ".uvtk[563]" -type "float2" -0.0016812682 -0.0001796484 ;
	setAttr ".uvtk[564]" -type "float2" -0.0037021041 -8.1896782e-05 ;
	setAttr ".uvtk[565]" -type "float2" -0.0058977008 3.4213066e-05 ;
	setAttr ".uvtk[566]" -type "float2" -0.0096803606 0.00018680096 ;
	setAttr ".uvtk[567]" -type "float2" -0.012302697 0.00034153461 ;
	setAttr ".uvtk[568]" -type "float2" -0.014812052 0.00051450729 ;
	setAttr ".uvtk[569]" -type "float2" -0.016880821 0.00070941448 ;
	setAttr ".uvtk[570]" -type "float2" -0.018996164 0.00099945068 ;
	setAttr ".uvtk[571]" -type "float2" -0.022864729 0.0014336109 ;
	setAttr ".uvtk[572]" -type "float2" -0.026901484 0.0020625591 ;
	setAttr ".uvtk[573]" -type "float2" -0.03258124 0.0029940605 ;
	setAttr ".uvtk[574]" -type "float2" -0.039156616 0.0042763948 ;
	setAttr ".uvtk[575]" -type "float2" -0.047132343 0.0061020851 ;
	setAttr ".uvtk[672]" -type "float2" 0.039546967 0.022989988 ;
	setAttr ".uvtk[673]" -type "float2" -0.042029381 0.0048158169 ;
	setAttr ".uvtk[674]" -type "float2" -0.033717155 -0.0042021275 ;
	setAttr ".uvtk[675]" -type "float2" -0.024849415 -0.0095025301 ;
	setAttr ".uvtk[676]" -type "float2" -0.017373323 -0.012956142 ;
	setAttr ".uvtk[677]" -type "float2" -0.011823416 -0.015093088 ;
	setAttr ".uvtk[678]" -type "float2" -0.0058634877 -0.017079473 ;
	setAttr ".uvtk[679]" -type "float2" -0.0014067292 -0.018532276 ;
	setAttr ".uvtk[680]" -type "float2" 0.00044608116 -0.019791365 ;
	setAttr ".uvtk[681]" -type "float2" 0.0018569827 -0.021378994 ;
	setAttr ".uvtk[682]" -type "float2" 0.0046758056 -0.021718979 ;
	setAttr ".uvtk[683]" -type "float2" 0.0021766424 -0.0222826 ;
	setAttr ".uvtk[684]" -type "float2" 0.0036173165 -0.022964835 ;
	setAttr ".uvtk[685]" -type "float2" 0.0046415925 -0.022989988 ;
	setAttr ".uvtk[686]" -type "float2" 0.004824549 -0.022597551 ;
	setAttr ".uvtk[687]" -type "float2" 0.0059486181 -0.021628857 ;
	setAttr ".uvtk[688]" -type "float2" 0.0073239505 -0.019622326 ;
	setAttr ".uvtk[689]" -type "float2" 0.009727288 -0.019467115 ;
	setAttr ".uvtk[690]" -type "float2" 0.012700304 -0.017800808 ;
	setAttr ".uvtk[691]" -type "float2" 0.014888614 -0.015478849 ;
	setAttr ".uvtk[692]" -type "float2" 0.018504024 -0.01281476 ;
	setAttr ".uvtk[693]" -type "float2" 0.021778494 -0.0082530975 ;
	setAttr ".uvtk[694]" -type "float2" 0.026715159 -0.0019795895 ;
	setAttr ".uvtk[695]" -type "float2" 0.032252312 0.0080215931 ;
	setAttr ".uvtk[696]" -type "float2" 0.055353522 0.01360631 ;
	setAttr ".uvtk[697]" -type "float2" -0.054203868 0.0043148994 ;
	setAttr ".uvtk[698]" -type "float2" -0.043298721 0.0003862381 ;
	setAttr ".uvtk[699]" -type "float2" -0.033064365 -0.0024248362 ;
	setAttr ".uvtk[700]" -type "float2" -0.024359584 -0.0044682026 ;
	setAttr ".uvtk[701]" -type "float2" -0.017812133 -0.0058908463 ;
	setAttr ".uvtk[702]" -type "float2" -0.011156142 -0.0073122978 ;
	setAttr ".uvtk[703]" -type "float2" -0.0058845282 -0.008608222 ;
	setAttr ".uvtk[704]" -type "float2" -0.0032229424 -0.0099112988 ;
	setAttr ".uvtk[705]" -type "float2" -0.00099939108 -0.011575937 ;
	setAttr ".uvtk[706]" -type "float2" 0.0026587248 -0.012051821 ;
	setAttr ".uvtk[707]" -type "float2" 0.0012460947 -0.012764215 ;
	setAttr ".uvtk[708]" -type "float2" 0.003660202 -0.01347208 ;
	setAttr ".uvtk[709]" -type "float2" 0.0058184266 -0.01360631 ;
	setAttr ".uvtk[710]" -type "float2" 0.0073779523 -0.013240099 ;
	setAttr ".uvtk[711]" -type "float2" 0.0092255026 -0.012231588 ;
	setAttr ".uvtk[712]" -type "float2" 0.011368036 -0.0101372 ;
	setAttr ".uvtk[713]" -type "float2" 0.014536101 -0.010049343 ;
	setAttr ".uvtk[714]" -type "float2" 0.018101923 -0.0087320805 ;
	setAttr ".uvtk[715]" -type "float2" 0.021590024 -0.0069823265 ;
	setAttr ".uvtk[716]" -type "float2" 0.026653945 -0.0049927235 ;
	setAttr ".uvtk[717]" -type "float2" 0.031529039 -0.0020551682 ;
	setAttr ".uvtk[718]" -type "float2" 0.038505435 0.0020062923 ;
	setAttr ".uvtk[719]" -type "float2" 0.045967698 0.0075070858 ;
	setAttr ".uvtk[768]" -type "float2" 0.058246613 -0.0099862218 ;
	setAttr ".uvtk[769]" -type "float2" -0.046568751 -0.0059261322 ;
	setAttr ".uvtk[770]" -type "float2" -0.037750244 0.0014718175 ;
	setAttr ".uvtk[771]" -type "float2" -0.028895617 0.007077992 ;
	setAttr ".uvtk[772]" -type "float2" -0.022058606 0.010823488 ;
	setAttr ".uvtk[773]" -type "float2" -0.017839074 0.013224959 ;
	setAttr ".uvtk[774]" -type "float2" -0.012888253 0.014151454 ;
	setAttr ".uvtk[775]" -type "float2" -0.010155678 0.014022887 ;
	setAttr ".uvtk[776]" -type "float2" -0.0076830387 0.01357007 ;
	setAttr ".uvtk[777]" -type "float2" -0.0052035451 0.012465656 ;
	setAttr ".uvtk[778]" -type "float2" -0.0014591217 0.011640429 ;
	setAttr ".uvtk[779]" -type "float2" -0.0017094612 0.010603905 ;
	setAttr ".uvtk[780]" -type "float2" 0.0019548535 0.010077775 ;
	setAttr ".uvtk[781]" -type "float2" 0.0058977306 0.010053813 ;
	setAttr ".uvtk[782]" -type "float2" 0.0096803904 0.010297596 ;
	setAttr ".uvtk[783]" -type "float2" 0.012302712 0.010019958 ;
	setAttr ".uvtk[784]" -type "float2" 0.014812052 0.011127412 ;
	setAttr ".uvtk[785]" -type "float2" 0.016880821 0.010691583 ;
	setAttr ".uvtk[786]" -type "float2" 0.018996164 0.010955453 ;
	setAttr ".uvtk[787]" -type "float2" 0.022864729 0.010074437 ;
	setAttr ".uvtk[788]" -type "float2" 0.026901484 0.0081958771 ;
	setAttr ".uvtk[789]" -type "float2" 0.03258124 0.0056849122 ;
	setAttr ".uvtk[790]" -type "float2" 0.039156616 0.0012572408 ;
	setAttr ".uvtk[791]" -type "float2" 0.047748566 -0.0041328073 ;
	setAttr ".uvtk[792]" -type "float2" 0.045193315 -0.019389808 ;
	setAttr ".uvtk[793]" -type "float2" -0.033565521 -0.0054786801 ;
	setAttr ".uvtk[794]" -type "float2" -0.026030779 0.0057416558 ;
	setAttr ".uvtk[795]" -type "float2" -0.019593 0.013514221 ;
	setAttr ".uvtk[796]" -type "float2" -0.014843583 0.018156171 ;
	setAttr ".uvtk[797]" -type "float2" -0.012443304 0.021093488 ;
	setAttr ".uvtk[798]" -type "float2" -0.0093080401 0.022595823 ;
	setAttr ".uvtk[799]" -type "float2" -0.0080125332 0.021695971 ;
	setAttr ".uvtk[800]" -type "float2" -0.0063615441 0.022002459 ;
	setAttr ".uvtk[801]" -type "float2" -0.0048037171 0.022017837 ;
	setAttr ".uvtk[802]" -type "float2" -0.0019195676 0.020007193 ;
	setAttr ".uvtk[803]" -type "float2" -0.0021765828 0.017895103 ;
	setAttr ".uvtk[804]" -type "float2" 0.0014780164 0.019036293 ;
	setAttr ".uvtk[805]" -type "float2" 0.005012691 0.018449545 ;
	setAttr ".uvtk[806]" -type "float2" 0.0081197023 0.020082355 ;
	setAttr ".uvtk[807]" -type "float2" 0.010207459 0.018096805 ;
	setAttr ".uvtk[808]" -type "float2" 0.012945354 0.017285824 ;
	setAttr ".uvtk[809]" -type "float2" 0.01475336 0.018733621 ;
	setAttr ".uvtk[810]" -type "float2" 0.015240476 0.019684076 ;
	setAttr ".uvtk[811]" -type "float2" 0.018031269 0.017072499 ;
	setAttr ".uvtk[812]" -type "float2" 0.020954162 0.015140772 ;
	setAttr ".uvtk[813]" -type "float2" 0.024430603 0.011865854 ;
	setAttr ".uvtk[814]" -type "float2" 0.02967751 0.0047440529 ;
	setAttr ".uvtk[815]" -type "float2" 0.036350012 -0.0043101311 ;
	setAttr ".uvtk[960]" -type "float2" -0.052853346 -0.0087836981 ;
	setAttr ".uvtk[961]" -type "float2" 0.049171329 0.0091055334 ;
	setAttr ".uvtk[962]" -type "float2" 0.039209127 0.0064223111 ;
	setAttr ".uvtk[963]" -type "float2" 0.02994585 0.0043353736 ;
	setAttr ".uvtk[964]" -type "float2" 0.022062063 0.0027290285 ;
	setAttr ".uvtk[965]" -type "float2" 0.01621604 0.0016803443 ;
	setAttr ".uvtk[966]" -type "float2" 0.011676252 0.00063964725 ;
	setAttr ".uvtk[967]" -type "float2" 0.0069383383 0.00094413757 ;
	setAttr ".uvtk[968]" -type "float2" 0.0066440105 -0.00040918589 ;
	setAttr ".uvtk[969]" -type "float2" 0.00023573637 -0.00093084574 ;
	setAttr ".uvtk[970]" -type "float2" -0.0046758652 0.00024083257 ;
	setAttr ".uvtk[971]" -type "float2" -0.0011721849 0.00011798739 ;
	setAttr ".uvtk[972]" -type "float2" 0.0037021339 -0.0007969141 ;
	setAttr ".uvtk[973]" -type "float2" 0.0021507144 0.00074875355 ;
	setAttr ".uvtk[974]" -type "float2" -0.0037682652 -0.00037884712 ;
	setAttr ".uvtk[975]" -type "float2" -0.010837868 -0.00021988153 ;
	setAttr ".uvtk[976]" -type "float2" -0.00013387203 -0.0001821816 ;
	setAttr ".uvtk[977]" -type "float2" 0.0055643208 9.9182129e-05 ;
	setAttr ".uvtk[978]" -type "float2" -0.0081140473 -0.00057607889 ;
	setAttr ".uvtk[979]" -type "float2" -0.013118356 -0.00050479174 ;
	setAttr ".uvtk[980]" -type "float2" -0.015750766 -0.0023566782 ;
	setAttr ".uvtk[981]" -type "float2" -0.023200542 -0.0030536354 ;
	setAttr ".uvtk[982]" -type "float2" -0.032529712 -0.0038361251 ;
	setAttr ".uvtk[983]" -type "float2" -0.042830497 -0.0062609315 ;
	setAttr ".uvtk[986]" -type "float2" 0.054203868 -0.0062887073 ;
	setAttr ".uvtk[987]" -type "float2" 0.065219641 -0.0090378225 ;
	setAttr ".uvtk[989]" -type "float2" 0.043298721 -0.0043086112 ;
	setAttr ".uvtk[991]" -type "float2" 0.033064485 -0.0026981831 ;
	setAttr ".uvtk[993]" -type "float2" 0.024359703 -0.0016613305 ;
	setAttr ".uvtk[995]" -type "float2" 0.017838955 -0.00062716007 ;
	setAttr ".uvtk[997]" -type "float2" 0.012888253 -0.00091013312 ;
	setAttr ".uvtk[999]" -type "float2" 0.0077183247 0.00039285421 ;
	setAttr ".uvtk[1001]" -type "float2" 0.0069601536 0.00096020103 ;
	setAttr ".uvtk[1003]" -type "float2" 0.00044959784 -0.00027626753 ;
	setAttr ".uvtk[1005]" -type "float2" -0.004516542 -0.00010064244 ;
	setAttr ".uvtk[1007]" -type "float2" -0.0012630224 0.00075531006 ;
	setAttr ".uvtk[1009]" -type "float2" 0.0035099685 -0.00063630939 ;
	setAttr ".uvtk[1011]" -type "float2" 0.0018911064 0.00026482344 ;
	setAttr ".uvtk[1013]" -type "float2" -0.0043693781 0.00023409724 ;
	setAttr ".uvtk[1015]" -type "float2" -0.011920258 0.00022423267 ;
	setAttr ".uvtk[1017]" -type "float2" -0.0010179877 -0.0001437664 ;
	setAttr ".uvtk[1019]" -type "float2" 0.0046067126 0.00059920549 ;
	setAttr ".uvtk[1021]" -type "float2" -0.0097282156 0.00046312809 ;
	setAttr ".uvtk[1023]" -type "float2" -0.015086919 0.0023545027 ;
	setAttr ".uvtk[1025]" -type "float2" -0.018439829 0.0029594302 ;
	setAttr ".uvtk[1027]" -type "float2" -0.02644816 0.0038896203 ;
	setAttr ".uvtk[1029]" -type "float2" -0.036582172 0.0061328113 ;
	setAttr ".uvtk[1031]" -type "float2" -0.047748536 0.0086837113 ;
	setAttr ".uvtk[1162]" -type "float2" 0.059686422 -0.0091055334 ;
	setAttr ".uvtk[1163]" -type "float2" -0.041885614 -0.022595882 ;
	setAttr ".uvtk[1164]" -type "float2" -0.056885719 -0.014151454 ;
	setAttr ".uvtk[1165]" -type "float2" -0.06521976 0.0082600117 ;
	setAttr ".uvtk[1166]" -type "float2" -0.051979184 0.018590212 ;
	setAttr ".uvtk[1167]" -type "float2" 0.033004403 0.008666873 ;
	setAttr ".uvtk[1169]" -type "float2" -0.058246613 -0.0086837113 ;
	setAttr ".uvtk[1369]" -type "float2" -0.047132343 -0.0085523129 ;
	setAttr ".uvtk[1370]" -type "float2" -0.039156616 -0.0061020851 ;
	setAttr ".uvtk[1371]" -type "float2" -0.03258124 -0.0042763948 ;
	setAttr ".uvtk[1372]" -type "float2" -0.026901484 -0.0029940605 ;
	setAttr ".uvtk[1373]" -type "float2" -0.022864729 -0.0020625591 ;
	setAttr ".uvtk[1374]" -type "float2" -0.018996164 -0.0014336109 ;
	setAttr ".uvtk[1375]" -type "float2" -0.016880821 -0.00099945068 ;
	setAttr ".uvtk[1376]" -type "float2" -0.014812052 -0.00070941448 ;
	setAttr ".uvtk[1377]" -type "float2" -0.012302697 -0.00051450729 ;
	setAttr ".uvtk[1378]" -type "float2" -0.0096803606 -0.00034153461 ;
	setAttr ".uvtk[1379]" -type "float2" -0.0058977008 -0.00018680096 ;
	setAttr ".uvtk[1380]" -type "float2" -0.0037021041 -3.4213066e-05 ;
	setAttr ".uvtk[1381]" -type "float2" -0.0016812682 8.1896782e-05 ;
	setAttr ".uvtk[1382]" -type "float2" 0.0043091774 0.0001796484 ;
	setAttr ".uvtk[1383]" -type "float2" 0.0052035451 0.00028657913 ;
	setAttr ".uvtk[1384]" -type "float2" 0.0076830387 0.00040888786 ;
	setAttr ".uvtk[1385]" -type "float2" 0.010155618 0.00056171417 ;
	setAttr ".uvtk[1386]" -type "float2" 0.010710657 0.00078749657 ;
	setAttr ".uvtk[1387]" -type "float2" 0.010649443 0.0011353493 ;
	setAttr ".uvtk[1388]" -type "float2" 0.012684226 0.001704812 ;
	setAttr ".uvtk[1389]" -type "float2" 0.014701724 0.0025956631 ;
	setAttr ".uvtk[1390]" -type "float2" 0.017865658 0.0039426088 ;
	setAttr ".uvtk[1391]" -type "float2" 0.024042964 0.0058714151 ;
	setAttr ".uvtk[1392]" -type "float2" -0.047748536 -0.0061328411 ;
	setAttr ".uvtk[1393]" -type "float2" -0.036582172 -0.0038896203 ;
	setAttr ".uvtk[1394]" -type "float2" -0.02644816 -0.0029594302 ;
	setAttr ".uvtk[1395]" -type "float2" -0.018439829 -0.0023545325 ;
	setAttr ".uvtk[1396]" -type "float2" -0.015086919 -0.00046312809 ;
	setAttr ".uvtk[1397]" -type "float2" -0.0097282156 -0.00059920549 ;
	setAttr ".uvtk[1398]" -type "float2" 0.0046067126 0.0001437664 ;
	setAttr ".uvtk[1399]" -type "float2" -0.0010179877 -0.00022423267 ;
	setAttr ".uvtk[1400]" -type "float2" -0.011920258 -0.00023406744 ;
	setAttr ".uvtk[1401]" -type "float2" -0.0043693781 -0.00026479363 ;
	setAttr ".uvtk[1402]" -type "float2" 0.0018911064 0.00063633919 ;
	setAttr ".uvtk[1403]" -type "float2" 0.0035099685 -0.00075528026 ;
	setAttr ".uvtk[1404]" -type "float2" -0.0012630224 0.00010067225 ;
	setAttr ".uvtk[1405]" -type "float2" -0.004516542 0.00027629733 ;
	setAttr ".uvtk[1406]" -type "float2" 0.00044959784 -0.00096023083 ;
	setAttr ".uvtk[1407]" -type "float2" 0.0069601536 -0.00039288402 ;
	setAttr ".uvtk[1408]" -type "float2" 0.0077183247 0.00091016293 ;
	setAttr ".uvtk[1409]" -type "float2" 0.012888253 0.00062713027 ;
	setAttr ".uvtk[1410]" -type "float2" 0.017838955 0.0016613603 ;
	setAttr ".uvtk[1411]" -type "float2" 0.024359703 0.0026981533 ;
	setAttr ".uvtk[1412]" -type "float2" 0.033064485 0.004308641 ;
	setAttr ".uvtk[1413]" -type "float2" 0.043298721 0.0062887371 ;
	setAttr ".uvtk[1414]" -type "float2" 0.054203868 0.0090377927 ;
	setAttr ".uvtk[1415]" -type "float2" -0.042830497 0.0087836683 ;
	setAttr ".uvtk[1416]" -type "float2" -0.032529712 0.0062609315 ;
	setAttr ".uvtk[1417]" -type "float2" -0.023200542 0.0038361549 ;
	setAttr ".uvtk[1418]" -type "float2" -0.015750766 0.0030536354 ;
	setAttr ".uvtk[1419]" -type "float2" -0.013118356 0.0023566782 ;
	setAttr ".uvtk[1420]" -type "float2" -0.0081140473 0.00050479174 ;
	setAttr ".uvtk[1421]" -type "float2" 0.0055643208 0.00057607889 ;
	setAttr ".uvtk[1422]" -type "float2" -0.00013387203 -9.9211931e-05 ;
	setAttr ".uvtk[1423]" -type "float2" -0.010837868 0.00018215179 ;
	setAttr ".uvtk[1424]" -type "float2" -0.0037682652 0.00021988153 ;
	setAttr ".uvtk[1425]" -type "float2" 0.0021507144 0.00037887692 ;
	setAttr ".uvtk[1426]" -type "float2" 0.0037021339 -0.00074875355 ;
	setAttr ".uvtk[1427]" -type "float2" -0.0011721849 0.0007969141 ;
	setAttr ".uvtk[1428]" -type "float2" -0.0046758652 -0.00011798739 ;
	setAttr ".uvtk[1429]" -type "float2" 0.00023573637 -0.00024086237 ;
	setAttr ".uvtk[1430]" -type "float2" 0.0066440105 0.00093084574 ;
	setAttr ".uvtk[1431]" -type "float2" 0.0069383383 0.00040918589 ;
	setAttr ".uvtk[1432]" -type "float2" 0.011676252 -0.00094410777 ;
	setAttr ".uvtk[1433]" -type "float2" 0.01621604 -0.00063964725 ;
	setAttr ".uvtk[1434]" -type "float2" 0.022062063 -0.0016803741 ;
	setAttr ".uvtk[1435]" -type "float2" 0.02994585 -0.0027290285 ;
	setAttr ".uvtk[1436]" -type "float2" 0.039209127 -0.0043353736 ;
	setAttr ".uvtk[1437]" -type "float2" 0.049171329 -0.0064223111 ;
createNode polyMapCut -n "polyMapCut36";
	rename -uid "A27C424E-F148-EC8C-FA6B-51A3867E9A5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 47 "e[1416]" "e[1420]" "e[1423]" "e[1426]" "e[1429]" "e[1432]" "e[1435]" "e[1438]" "e[1441]" "e[1444]" "e[1447]" "e[1450]" "e[1453]" "e[1456]" "e[1459]" "e[1462]" "e[1465]" "e[1468]" "e[1471]" "e[1474]" "e[1477]" "e[1480]" "e[1483]" "e[1486]" "e[1777]" "e[1780]" "e[1782]" "e[1784]" "e[1786]" "e[1788]" "e[1790]" "e[1792]" "e[1794]" "e[1796]" "e[1798]" "e[1800]" "e[1802]" "e[1804]" "e[1806]" "e[1808]" "e[1810]" "e[1812]" "e[1814]" "e[1816]" "e[1818]" "e[1820]" "e[1822:1823]";
createNode polyTweakUV -n "polyTweakUV137";
	rename -uid "5022ECBE-2F45-6616-980C-17BB4A4ECE90";
	setAttr ".uopa" yes;
	setAttr -s 101 ".uvtk";
	setAttr ".uvtk[720]" -type "float2" 0.12238733 0.65477204 ;
	setAttr ".uvtk[721]" -type "float2" 0.12238733 0.65477204 ;
	setAttr ".uvtk[724]" -type "float2" 0.12238728 0.65477204 ;
	setAttr ".uvtk[726]" -type "float2" 0.12238728 0.65477204 ;
	setAttr ".uvtk[728]" -type "float2" 0.12238728 0.65477204 ;
	setAttr ".uvtk[730]" -type "float2" 0.12238728 0.65477204 ;
	setAttr ".uvtk[732]" -type "float2" 0.12238728 0.65477204 ;
	setAttr ".uvtk[734]" -type "float2" 0.12238733 0.65477204 ;
	setAttr ".uvtk[736]" -type "float2" 0.12238728 0.65477204 ;
	setAttr ".uvtk[738]" -type "float2" 0.12238733 0.65477204 ;
	setAttr ".uvtk[740]" -type "float2" 0.12238728 0.65477204 ;
	setAttr ".uvtk[742]" -type "float2" 0.12238733 0.65477204 ;
	setAttr ".uvtk[744]" -type "float2" 0.12238728 0.65477204 ;
	setAttr ".uvtk[746]" -type "float2" 0.12238733 0.65477204 ;
	setAttr ".uvtk[748]" -type "float2" 0.1223873 0.65477204 ;
	setAttr ".uvtk[750]" -type "float2" 0.12238732 0.65477204 ;
	setAttr ".uvtk[752]" -type "float2" 0.1223873 0.65477204 ;
	setAttr ".uvtk[754]" -type "float2" 0.1223873 0.65477204 ;
	setAttr ".uvtk[756]" -type "float2" 0.1223873 0.65477204 ;
	setAttr ".uvtk[758]" -type "float2" 0.1223873 0.65477204 ;
	setAttr ".uvtk[760]" -type "float2" 0.1223873 0.65477204 ;
	setAttr ".uvtk[762]" -type "float2" 0.12238732 0.65477204 ;
	setAttr ".uvtk[764]" -type "float2" 0.1223873 0.65477204 ;
	setAttr ".uvtk[766]" -type "float2" 0.1223873 0.65477204 ;
	setAttr ".uvtk[864]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[865]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[866]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[867]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[868]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[869]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[870]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[871]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[872]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[873]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[874]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[875]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[876]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[877]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[878]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[879]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[880]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[881]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[882]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[883]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[884]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[885]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[886]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[887]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[888]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[889]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[890]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[891]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[892]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[893]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[894]" -type "float2" 0.12238732 0.6547721 ;
	setAttr ".uvtk[895]" -type "float2" 0.12238732 0.6547721 ;
	setAttr ".uvtk[896]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[897]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[898]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[899]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[900]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[901]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[902]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[903]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[904]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[905]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[906]" -type "float2" 0.12238732 0.6547721 ;
	setAttr ".uvtk[907]" -type "float2" 0.12238732 0.6547721 ;
	setAttr ".uvtk[908]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[909]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[910]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[911]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1153]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1154]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[1156]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1438]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[1440]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1442]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1444]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1446]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1448]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1450]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[1452]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1454]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[1456]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1458]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[1460]" -type "float2" 0.12238728 0.6547721 ;
	setAttr ".uvtk[1462]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[1464]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1466]" -type "float2" 0.12238732 0.6547721 ;
	setAttr ".uvtk[1468]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1470]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1472]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1474]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1476]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1478]" -type "float2" 0.12238732 0.6547721 ;
	setAttr ".uvtk[1480]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1482]" -type "float2" 0.1223873 0.6547721 ;
	setAttr ".uvtk[1484]" -type "float2" 0.12238733 0.6547721 ;
	setAttr ".uvtk[1510]" -type "float2" 0.12238728 0.65477204 ;
createNode polyMapCut -n "polyMapCut37";
	rename -uid "C150EEA0-EB47-EF26-B0B2-2FA4F1AB2256";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1418]" "e[1422]" "e[1425]" "e[1428]" "e[1431]" "e[1434]" "e[1437]" "e[1440]" "e[1443]" "e[1446]" "e[1449]" "e[1452]" "e[1455]" "e[1458]" "e[1461]" "e[1464]" "e[1467]" "e[1470]" "e[1473]" "e[1476]" "e[1479]" "e[1482]" "e[1485]" "e[1487]";
createNode polyMapCut -n "polyMapCut38";
	rename -uid "1D14EDD5-2B4D-0E29-C974-20814412B48B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[1272]" "e[1275]" "e[1277]" "e[1279]" "e[1281]" "e[1283]" "e[1285]" "e[1287]" "e[1289]" "e[1291]" "e[1293]" "e[1295]" "e[1297]" "e[1299]" "e[1301]" "e[1303]" "e[1305]" "e[1307]" "e[1309]" "e[1311]" "e[1313]" "e[1315]" "e[1317]" "e[1319]";
createNode polyTweakUV -n "polyTweakUV138";
	rename -uid "C70AB0AE-1E4E-53FF-1208-209FB4129AC3";
	setAttr ".uopa" yes;
	setAttr -s 1098 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.37694228 -0.69014108 ;
	setAttr ".uvtk[1]" -type "float2" -0.34008932 -0.69225585 ;
	setAttr ".uvtk[2]" -type "float2" -0.2578097 -0.96243984 ;
	setAttr ".uvtk[3]" -type "float2" -0.26114279 -0.96644586 ;
	setAttr ".uvtk[4]" -type "float2" -0.33433139 -0.69747829 ;
	setAttr ".uvtk[5]" -type "float2" -0.2552979 -0.95786941 ;
	setAttr ".uvtk[6]" -type "float2" -0.32995 -0.70381713 ;
	setAttr ".uvtk[7]" -type "float2" -0.25369751 -0.95290613 ;
	setAttr ".uvtk[8]" -type "float2" -0.3271153 -0.71094066 ;
	setAttr ".uvtk[9]" -type "float2" -0.25306535 -0.94772959 ;
	setAttr ".uvtk[10]" -type "float2" -0.32593703 -0.71849525 ;
	setAttr ".uvtk[11]" -type "float2" -0.25342447 -0.94252706 ;
	setAttr ".uvtk[12]" -type "float2" -0.32645765 -0.72611272 ;
	setAttr ".uvtk[13]" -type "float2" -0.2547617 -0.93748641 ;
	setAttr ".uvtk[14]" -type "float2" -0.32864475 -0.73342252 ;
	setAttr ".uvtk[15]" -type "float2" -0.25702882 -0.93278992 ;
	setAttr ".uvtk[16]" -type "float2" -0.33238804 -0.74006838 ;
	setAttr ".uvtk[17]" -type "float2" -0.26014376 -0.92860746 ;
	setAttr ".uvtk[18]" -type "float2" -0.33750293 -0.74572515 ;
	setAttr ".uvtk[19]" -type "float2" -0.26399386 -0.92509013 ;
	setAttr ".uvtk[20]" -type "float2" -0.34373823 -0.75011587 ;
	setAttr ".uvtk[21]" -type "float2" -0.26844019 -0.92236495 ;
	setAttr ".uvtk[22]" -type "float2" -0.35078752 -0.75302476 ;
	setAttr ".uvtk[23]" -type "float2" -0.27332208 -0.92053068 ;
	setAttr ".uvtk[24]" -type "float2" -0.3583048 -0.75430906 ;
	setAttr ".uvtk[25]" -type "float2" -0.27846274 -0.91965342 ;
	setAttr ".uvtk[26]" -type "float2" -0.3659206 -0.75390524 ;
	setAttr ".uvtk[27]" -type "float2" -0.28367633 -0.91976494 ;
	setAttr ".uvtk[28]" -type "float2" -0.37326095 -0.7518326 ;
	setAttr ".uvtk[29]" -type "float2" -0.28877482 -0.92086124 ;
	setAttr ".uvtk[30]" -type "float2" -0.37996483 -0.74819219 ;
	setAttr ".uvtk[31]" -type "float2" -0.29357368 -0.9229027 ;
	setAttr ".uvtk[32]" -type "float2" -0.38570243 -0.7431615 ;
	setAttr ".uvtk[33]" -type "float2" -0.29789934 -0.92581534 ;
	setAttr ".uvtk[34]" -type "float2" -0.39019036 -0.73698562 ;
	setAttr ".uvtk[35]" -type "float2" -0.30159563 -0.92949426 ;
	setAttr ".uvtk[36]" -type "float2" -0.39320493 -0.72996545 ;
	setAttr ".uvtk[37]" -type "float2" -0.3045288 -0.93380606 ;
	setAttr ".uvtk[38]" -type "float2" -0.39459166 -0.72244203 ;
	setAttr ".uvtk[39]" -type "float2" -0.30659288 -0.93859524 ;
	setAttr ".uvtk[40]" -type "float2" -0.39427048 -0.71478224 ;
	setAttr ".uvtk[41]" -type "float2" -0.30771333 -0.94368839 ;
	setAttr ".uvtk[42]" -type "float2" -0.39223623 -0.70736301 ;
	setAttr ".uvtk[43]" -type "float2" -0.30784959 -0.94890153 ;
	setAttr ".uvtk[44]" -type "float2" -0.38855737 -0.70055902 ;
	setAttr ".uvtk[45]" -type "float2" -0.30699664 -0.95404625 ;
	setAttr ".uvtk[46]" -type "float2" -0.38337904 -0.69473004 ;
	setAttr ".uvtk[47]" -type "float2" -0.30518416 -0.95893633 ;
	setAttr ".uvtk[48]" -type "float2" -0.37644351 -0.69101298 ;
	setAttr ".uvtk[49]" -type "float2" -0.340675 -0.69306564 ;
	setAttr ".uvtk[50]" -type "float2" -0.33508435 -0.69813758 ;
	setAttr ".uvtk[51]" -type "float2" -0.33083177 -0.70429134 ;
	setAttr ".uvtk[52]" -type "float2" -0.32808068 -0.71120679 ;
	setAttr ".uvtk[53]" -type "float2" -0.32693738 -0.71854085 ;
	setAttr ".uvtk[54]" -type "float2" -0.32744342 -0.72593617 ;
	setAttr ".uvtk[55]" -type "float2" -0.32956722 -0.73303282 ;
	setAttr ".uvtk[56]" -type "float2" -0.33320192 -0.73948479 ;
	setAttr ".uvtk[57]" -type "float2" -0.33816814 -0.74497652 ;
	setAttr ".uvtk[58]" -type "float2" -0.34422201 -0.74923903 ;
	setAttr ".uvtk[59]" -type "float2" -0.35106629 -0.75206298 ;
	setAttr ".uvtk[60]" -type "float2" -0.35836467 -0.75330937 ;
	setAttr ".uvtk[61]" -type "float2" -0.36575866 -0.75291693 ;
	setAttr ".uvtk[62]" -type "float2" -0.37288511 -0.75090432 ;
	setAttr ".uvtk[63]" -type "float2" -0.37939358 -0.74736965 ;
	setAttr ".uvtk[64]" -type "float2" -0.38496375 -0.74248528 ;
	setAttr ".uvtk[65]" -type "float2" -0.38932052 -0.73648953 ;
	setAttr ".uvtk[66]" -type "float2" -0.39224678 -0.72967386 ;
	setAttr ".uvtk[67]" -type "float2" -0.3935928 -0.72237062 ;
	setAttr ".uvtk[68]" -type "float2" -0.39328083 -0.71493536 ;
	setAttr ".uvtk[69]" -type "float2" -0.39130631 -0.70773423 ;
	setAttr ".uvtk[70]" -type "float2" -0.38773569 -0.70113051 ;
	setAttr ".uvtk[71]" -type "float2" -0.38270783 -0.69547015 ;
	setAttr ".uvtk[72]" -type "float2" -0.37576297 -0.69225991 ;
	setAttr ".uvtk[73]" -type "float2" -0.34149516 -0.69420946 ;
	setAttr ".uvtk[74]" -type "float2" -0.33614403 -0.69906855 ;
	setAttr ".uvtk[75]" -type "float2" -0.33207464 -0.70496118 ;
	setAttr ".uvtk[76]" -type "float2" -0.32944193 -0.71158278 ;
	setAttr ".uvtk[77]" -type "float2" -0.32834846 -0.71860582 ;
	setAttr ".uvtk[78]" -type "float2" -0.32883403 -0.7256875 ;
	setAttr ".uvtk[79]" -type "float2" -0.33086869 -0.73248333 ;
	setAttr ".uvtk[80]" -type "float2" -0.33435017 -0.73866189 ;
	setAttr ".uvtk[81]" -type "float2" -0.33910674 -0.7439208 ;
	setAttr ".uvtk[82]" -type "float2" -0.34490487 -0.74800235 ;
	setAttr ".uvtk[83]" -type "float2" -0.35145974 -0.7507062 ;
	setAttr ".uvtk[84]" -type "float2" -0.35844946 -0.7518993 ;
	setAttr ".uvtk[85]" -type "float2" -0.36553058 -0.75152284 ;
	setAttr ".uvtk[86]" -type "float2" -0.37235528 -0.74959487 ;
	setAttr ".uvtk[87]" -type "float2" -0.37858796 -0.74620926 ;
	setAttr ".uvtk[88]" -type "float2" -0.38392186 -0.74153137 ;
	setAttr ".uvtk[89]" -type "float2" -0.38809365 -0.73578924 ;
	setAttr ".uvtk[90]" -type "float2" -0.39089537 -0.72926277 ;
	setAttr ".uvtk[91]" -type "float2" -0.3921839 -0.72226983 ;
	setAttr ".uvtk[92]" -type "float2" -0.39188525 -0.71515155 ;
	setAttr ".uvtk[93]" -type "float2" -0.38999546 -0.70825845 ;
	setAttr ".uvtk[94]" -type "float2" -0.38657868 -0.70193744 ;
	setAttr ".uvtk[95]" -type "float2" -0.38176593 -0.69651675 ;
	setAttr ".uvtk[96]" -type "float2" -0.37491846 -0.69385815 ;
	setAttr ".uvtk[97]" -type "float2" -0.34252772 -0.69566739 ;
	setAttr ".uvtk[98]" -type "float2" -0.33748719 -0.70025349 ;
	setAttr ".uvtk[99]" -type "float2" -0.33365297 -0.70581365 ;
	setAttr ".uvtk[100]" -type "float2" -0.33117205 -0.71206164 ;
	setAttr ".uvtk[101]" -type "float2" -0.33014226 -0.71868873 ;
	setAttr ".uvtk[102]" -type "float2" -0.33060202 -0.72537166 ;
	setAttr ".uvtk[103]" -type "float2" -0.33252341 -0.73178506 ;
	setAttr ".uvtk[104]" -type "float2" -0.33581012 -0.73761582 ;
	setAttr ".uvtk[105]" -type "float2" -0.34030023 -0.74257863 ;
	setAttr ".uvtk[106]" -type "float2" -0.34577322 -0.74643016 ;
	setAttr ".uvtk[107]" -type "float2" -0.35196018 -0.7489813 ;
	setAttr ".uvtk[108]" -type "float2" -0.35855743 -0.75010657 ;
	setAttr ".uvtk[109]" -type "float2" -0.36524075 -0.74975038 ;
	setAttr ".uvtk[110]" -type "float2" -0.37168175 -0.74792993 ;
	setAttr ".uvtk[111]" -type "float2" -0.37756389 -0.74473381 ;
	setAttr ".uvtk[112]" -type "float2" -0.38259736 -0.74031848 ;
	setAttr ".uvtk[113]" -type "float2" -0.38653377 -0.73489916 ;
	setAttr ".uvtk[114]" -type "float2" -0.38917732 -0.72874033 ;
	setAttr ".uvtk[115]" -type "float2" -0.39039287 -0.72214222 ;
	setAttr ".uvtk[116]" -type "float2" -0.39011157 -0.71542728 ;
	setAttr ".uvtk[117]" -type "float2" -0.38833067 -0.7089262 ;
	setAttr ".uvtk[118]" -type "float2" -0.38511166 -0.70296502 ;
	setAttr ".uvtk[119]" -type "float2" -0.38057733 -0.69785261 ;
	setAttr ".uvtk[120]" -type "float2" -0.37395126 -0.69574362 ;
	setAttr ".uvtk[121]" -type "float2" -0.34372589 -0.69738299 ;
	setAttr ".uvtk[122]" -type "float2" -0.33905727 -0.70164555 ;
	setAttr ".uvtk[123]" -type "float2" -0.33550233 -0.70681489 ;
	setAttr ".uvtk[124]" -type "float2" -0.33320105 -0.71262395 ;
	setAttr ".uvtk[125]" -type "float2" -0.3322466 -0.71878624 ;
	setAttr ".uvtk[126]" -type "float2" -0.3326762 -0.7250011 ;
	setAttr ".uvtk[127]" -type "float2" -0.33446473 -0.73096561 ;
	setAttr ".uvtk[128]" -type "float2" -0.33752292 -0.73638844 ;
	setAttr ".uvtk[129]" -type "float2" -0.34170038 -0.74100387 ;
	setAttr ".uvtk[130]" -type "float2" -0.3467918 -0.74458563 ;
	setAttr ".uvtk[131]" -type "float2" -0.35254729 -0.74695754 ;
	setAttr ".uvtk[132]" -type "float2" -0.35868406 -0.74800324 ;
	setAttr ".uvtk[133]" -type "float2" -0.36490065 -0.74767089 ;
	setAttr ".uvtk[134]" -type "float2" -0.37089151 -0.74597657 ;
	setAttr ".uvtk[135]" -type "float2" -0.37636226 -0.74300313 ;
	setAttr ".uvtk[136]" -type "float2" -0.38104326 -0.73889571 ;
	setAttr ".uvtk[137]" -type "float2" -0.38470376 -0.73385513 ;
	setAttr ".uvtk[138]" -type "float2" -0.38716158 -0.72812784 ;
	setAttr ".uvtk[139]" -type "float2" -0.38829198 -0.72199345 ;
	setAttr ".uvtk[140]" -type "float2" -0.38803163 -0.71575224 ;
	setAttr ".uvtk[141]" -type "float2" -0.38637993 -0.70971161 ;
	setAttr ".uvtk[142]" -type "float2" -0.38339612 -0.70417404 ;
	setAttr ".uvtk[143]" -type "float2" -0.37919503 -0.69942719 ;
	setAttr ".uvtk[144]" -type "float2" -0.37291223 -0.69782591 ;
	setAttr ".uvtk[145]" -type "float2" -0.34503144 -0.69927704 ;
	setAttr ".uvtk[146]" -type "float2" -0.34078014 -0.70318079 ;
	setAttr ".uvtk[147]" -type "float2" -0.33753663 -0.70791829 ;
	setAttr ".uvtk[148]" -type "float2" -0.33543462 -0.71324325 ;
	setAttr ".uvtk[149]" -type "float2" -0.33456352 -0.71889335 ;
	setAttr ".uvtk[150]" -type "float2" -0.33496007 -0.72459269 ;
	setAttr ".uvtk[151]" -type "float2" -0.33660233 -0.73006296 ;
	setAttr ".uvtk[152]" -type "float2" -0.33940884 -0.73503649 ;
	setAttr ".uvtk[153]" -type "float2" -0.34324187 -0.7392695 ;
	setAttr ".uvtk[154]" -type "float2" -0.34791315 -0.74255413 ;
	setAttr ".uvtk[155]" -type "float2" -0.35319334 -0.74472904 ;
	setAttr ".uvtk[156]" -type "float2" -0.35882315 -0.74568707 ;
	setAttr ".uvtk[157]" -type "float2" -0.36452574 -0.74538112 ;
	setAttr ".uvtk[158]" -type "float2" -0.37002099 -0.74382591 ;
	setAttr ".uvtk[159]" -type "float2" -0.37503862 -0.74109745 ;
	setAttr ".uvtk[160]" -type "float2" -0.37933171 -0.73732936 ;
	setAttr ".uvtk[161]" -type "float2" -0.38268834 -0.73270613 ;
	setAttr ".uvtk[162]" -type "float2" -0.38494197 -0.7274543 ;
	setAttr ".uvtk[163]" -type "float2" -0.38597888 -0.72183084 ;
	setAttr ".uvtk[164]" -type "float2" -0.38574252 -0.71611178 ;
	setAttr ".uvtk[165]" -type "float2" -0.38423485 -0.71057916 ;
	setAttr ".uvtk[166]" -type "float2" -0.3815136 -0.7055099 ;
	setAttr ".uvtk[167]" -type "float2" -0.37768686 -0.70116949 ;
	setAttr ".uvtk[168]" -type "float2" -0.37185282 -0.69999582 ;
	setAttr ".uvtk[169]" -type "float2" -0.34638292 -0.70125449 ;
	setAttr ".uvtk[170]" -type "float2" -0.34257269 -0.7047832 ;
	setAttr ".uvtk[171]" -type "float2" -0.33965653 -0.70906889 ;
	setAttr ".uvtk[172]" -type "float2" -0.33776319 -0.71388841 ;
	setAttr ".uvtk[173]" -type "float2" -0.33697933 -0.71900415 ;
	setAttr ".uvtk[174]" -type "float2" -0.33734134 -0.7241658 ;
	setAttr ".uvtk[175]" -type "float2" -0.33883086 -0.72912079 ;
	setAttr ".uvtk[176]" -type "float2" -0.34137481 -0.73362601 ;
	setAttr ".uvtk[177]" -type "float2" -0.34484863 -0.73746037 ;
	setAttr ".uvtk[178]" -type "float2" -0.3490817 -0.74043548 ;
	setAttr ".uvtk[179]" -type "float2" -0.35386628 -0.74240494 ;
	setAttr ".uvtk[180]" -type "float2" -0.3589673 -0.74327195 ;
	setAttr ".uvtk[181]" -type "float2" -0.36413395 -0.74299371 ;
	setAttr ".uvtk[182]" -type "float2" -0.36911243 -0.74158359 ;
	setAttr ".uvtk[183]" -type "float2" -0.37365788 -0.73911083 ;
	setAttr ".uvtk[184]" -type "float2" -0.37754643 -0.73569679 ;
	setAttr ".uvtk[185]" -type "float2" -0.38058639 -0.73150897 ;
	setAttr ".uvtk[186]" -type "float2" -0.38262734 -0.72675288 ;
	setAttr ".uvtk[187]" -type "float2" -0.38356712 -0.7216624 ;
	setAttr ".uvtk[188]" -type "float2" -0.38335639 -0.71648824 ;
	setAttr ".uvtk[189]" -type "float2" -0.38200036 -0.71148616 ;
	setAttr ".uvtk[190]" -type "float2" -0.37955609 -0.70690727 ;
	setAttr ".uvtk[191]" -type "float2" -0.37612644 -0.70299292 ;
	setAttr ".uvtk[192]" -type "float2" -0.37081993 -0.70213449 ;
	setAttr ".uvtk[193]" -type "float2" -0.34771937 -0.70321 ;
	setAttr ".uvtk[194]" -type "float2" -0.34434825 -0.70636892 ;
	setAttr ".uvtk[195]" -type "float2" -0.34175664 -0.71020663 ;
	setAttr ".uvtk[196]" -type "float2" -0.34006959 -0.71452528 ;
	setAttr ".uvtk[197]" -type "float2" -0.33937171 -0.71911204 ;
	setAttr ".uvtk[198]" -type "float2" -0.33969909 -0.72374147 ;
	setAttr ".uvtk[199]" -type "float2" -0.34103706 -0.72818637 ;
	setAttr ".uvtk[200]" -type "float2" -0.34332085 -0.73222822 ;
	setAttr ".uvtk[201]" -type "float2" -0.34643877 -0.73566806 ;
	setAttr ".uvtk[202]" -type "float2" -0.35023776 -0.7383368 ;
	setAttr ".uvtk[203]" -type "float2" -0.35453141 -0.74010319 ;
	setAttr ".uvtk[204]" -type "float2" -0.35910884 -0.74088019 ;
	setAttr ".uvtk[205]" -type "float2" -0.36374483 -0.74062961 ;
	setAttr ".uvtk[206]" -type "float2" -0.36821166 -0.73936349 ;
	setAttr ".uvtk[207]" -type "float2" -0.37228951 -0.73714435 ;
	setAttr ".uvtk[208]" -type "float2" -0.37577778 -0.73408103 ;
	setAttr ".uvtk[209]" -type "float2" -0.37850451 -0.73032427 ;
	setAttr ".uvtk[210]" -type "float2" -0.38033509 -0.7260592 ;
	setAttr ".uvtk[211]" -type "float2" -0.381179 -0.72149652 ;
	setAttr ".uvtk[212]" -type "float2" -0.38099384 -0.71686172 ;
	setAttr ".uvtk[213]" -type "float2" -0.37978813 -0.71238559 ;
	setAttr ".uvtk[214]" -type "float2" -0.37761945 -0.70829314 ;
	setAttr ".uvtk[215]" -type "float2" -0.37458748 -0.70480055 ;
	setAttr ".uvtk[216]" -type "float2" -0.36985379 -0.70412314 ;
	setAttr ".uvtk[217]" -type "float2" -0.34898371 -0.70503712 ;
	setAttr ".uvtk[218]" -type "float2" -0.34602183 -0.70785224 ;
	setAttr ".uvtk[219]" -type "float2" -0.34373164 -0.71127033 ;
	setAttr ".uvtk[220]" -type "float2" -0.34223604 -0.7151196 ;
	setAttr ".uvtk[221]" -type "float2" -0.3416177 -0.71921039 ;
	setAttr ".uvtk[222]" -type "float2" -0.34191191 -0.72334075 ;
	setAttr ".uvtk[223]" -type "float2" -0.34310728 -0.72730732 ;
	setAttr ".uvtk[224]" -type "float2" -0.34514642 -0.73091435 ;
	setAttr ".uvtk[225]" -type "float2" -0.34792995 -0.73398435 ;
	setAttr ".uvtk[226]" -type "float2" -0.3513214 -0.73636591 ;
	setAttr ".uvtk[227]" -type "float2" -0.35515419 -0.73794204 ;
	setAttr ".uvtk[228]" -type "float2" -0.35924 -0.73863506 ;
	setAttr ".uvtk[229]" -type "float2" -0.36337799 -0.73841077 ;
	setAttr ".uvtk[230]" -type "float2" -0.36736465 -0.73728025 ;
	setAttr ".uvtk[231]" -type "float2" -0.37100393 -0.73529923 ;
	setAttr ".uvtk[232]" -type "float2" -0.37411672 -0.73256522 ;
	setAttr ".uvtk[233]" -type "float2" -0.37654957 -0.72921312 ;
	setAttr ".uvtk[234]" -type "float2" -0.37818313 -0.72540891 ;
	setAttr ".uvtk[235]" -type "float2" -0.37893698 -0.72134089 ;
	setAttr ".uvtk[236]" -type "float2" -0.37877545 -0.71721172 ;
	setAttr ".uvtk[237]" -type "float2" -0.37770951 -0.71322834 ;
	setAttr ".uvtk[238]" -type "float2" -0.3757976 -0.70959198 ;
	setAttr ".uvtk[239]" -type "float2" -0.37313905 -0.70649278 ;
	setAttr ".uvtk[240]" -type "float2" -0.36898661 -0.70585489 ;
	setAttr ".uvtk[241]" -type "float2" -0.35012275 -0.70663828 ;
	setAttr ".uvtk[242]" -type "float2" -0.34751347 -0.70915413 ;
	setAttr ".uvtk[243]" -type "float2" -0.34548277 -0.71220362 ;
	setAttr ".uvtk[244]" -type "float2" -0.3441529 -0.71563983 ;
	setAttr ".uvtk[245]" -type "float2" -0.34360284 -0.71929353 ;
	setAttr ".uvtk[246]" -type "float2" -0.34386688 -0.72298384 ;
	setAttr ".uvtk[247]" -type "float2" -0.34493566 -0.72652829 ;
	setAttr ".uvtk[248]" -type "float2" -0.34675831 -0.72975171 ;
	setAttr ".uvtk[249]" -type "float2" -0.34924611 -0.73249519 ;
	setAttr ".uvtk[250]" -type "float2" -0.35227722 -0.73462355 ;
	setAttr ".uvtk[251]" -type "float2" -0.35570261 -0.73603189 ;
	setAttr ".uvtk[252]" -type "float2" -0.35935411 -0.73665112 ;
	setAttr ".uvtk[253]" -type "float2" -0.36305195 -0.73645049 ;
	setAttr ".uvtk[254]" -type "float2" -0.36661458 -0.73544014 ;
	setAttr ".uvtk[255]" -type "float2" -0.36986652 -0.7336697 ;
	setAttr ".uvtk[256]" -type "float2" -0.37264779 -0.7312268 ;
	setAttr ".uvtk[257]" -type "float2" -0.37482154 -0.72823232 ;
	setAttr ".uvtk[258]" -type "float2" -0.3762812 -0.72483468 ;
	setAttr ".uvtk[259]" -type "float2" -0.37695548 -0.72120291 ;
	setAttr ".uvtk[260]" -type "float2" -0.37681386 -0.71751904 ;
	setAttr ".uvtk[261]" -type "float2" -0.37586892 -0.71396863 ;
	setAttr ".uvtk[262]" -type "float2" -0.37417817 -0.71073252 ;
	setAttr ".uvtk[263]" -type "float2" -0.37184334 -0.70797658 ;
	setAttr ".uvtk[264]" -type "float2" -0.36824533 -0.70724827 ;
	setAttr ".uvtk[265]" -type "float2" -0.35108715 -0.70793742 ;
	setAttr ".uvtk[266]" -type "float2" -0.34875247 -0.71021187 ;
	setAttr ".uvtk[267]" -type "float2" -0.34692639 -0.71296221 ;
	setAttr ".uvtk[268]" -type "float2" -0.34572852 -0.71606165 ;
	setAttr ".uvtk[269]" -type "float2" -0.34523278 -0.71935797 ;
	setAttr ".uvtk[270]" -type "float2" -0.34547108 -0.7226879 ;
	setAttr ".uvtk[271]" -type "float2" -0.34643543 -0.72588646 ;
	setAttr ".uvtk[272]" -type "float2" -0.34807998 -0.72879553 ;
	setAttr ".uvtk[273]" -type "float2" -0.35032481 -0.73127145 ;
	setAttr ".uvtk[274]" -type "float2" -0.35305986 -0.73319232 ;
	setAttr ".uvtk[275]" -type "float2" -0.35615072 -0.73446345 ;
	setAttr ".uvtk[276]" -type "float2" -0.35944557 -0.73502243 ;
	setAttr ".uvtk[277]" -type "float2" -0.36278242 -0.73484164 ;
	setAttr ".uvtk[278]" -type "float2" -0.36599714 -0.73393029 ;
	setAttr ".uvtk[279]" -type "float2" -0.36893141 -0.73233318 ;
	setAttr ".uvtk[280]" -type "float2" -0.37144101 -0.73012948 ;
	setAttr ".uvtk[281]" -type "float2" -0.37340248 -0.7274282 ;
	setAttr ".uvtk[282]" -type "float2" -0.37471968 -0.72436368 ;
	setAttr ".uvtk[283]" -type "float2" -0.37532872 -0.72108901 ;
	setAttr ".uvtk[284]" -type "float2" -0.37520251 -0.71776855 ;
	setAttr ".uvtk[285]" -type "float2" -0.37435359 -0.71457064 ;
	setAttr ".uvtk[286]" -type "float2" -0.37283719 -0.71165842 ;
	setAttr ".uvtk[287]" -type "float2" -0.3707549 -0.70917857 ;
	setAttr ".uvtk[288]" -type "float2" -0.36765307 -0.70826256 ;
	setAttr ".uvtk[289]" -type "float2" -0.35183424 -0.70889378 ;
	setAttr ".uvtk[290]" -type "float2" -0.34968853 -0.71099186 ;
	setAttr ".uvtk[291]" -type "float2" -0.34800828 -0.71352208 ;
	setAttr ".uvtk[292]" -type "float2" -0.34690595 -0.71637213 ;
	setAttr ".uvtk[293]" -type "float2" -0.34644949 -0.71940303 ;
	setAttr ".uvtk[294]" -type "float2" -0.346668 -0.72246462 ;
	setAttr ".uvtk[295]" -type "float2" -0.34755397 -0.72540551 ;
	setAttr ".uvtk[296]" -type "float2" -0.34906527 -0.72808015 ;
	setAttr ".uvtk[297]" -type "float2" -0.3511284 -0.73035681 ;
	setAttr ".uvtk[298]" -type "float2" -0.35364228 -0.7321232 ;
	setAttr ".uvtk[299]" -type "float2" -0.3564834 -0.73329234 ;
	setAttr ".uvtk[300]" -type "float2" -0.35951209 -0.73380685 ;
	setAttr ".uvtk[301]" -type "float2" -0.36257946 -0.73364139 ;
	setAttr ".uvtk[302]" -type "float2" -0.36553466 -0.73280412 ;
	setAttr ".uvtk[303]" -type "float2" -0.36823225 -0.73133671 ;
	setAttr ".uvtk[304]" -type "float2" -0.37053943 -0.72931147 ;
	setAttr ".uvtk[305]" -type "float2" -0.37234277 -0.72682905 ;
	setAttr ".uvtk[306]" -type "float2" -0.37355387 -0.72401285 ;
	setAttr ".uvtk[307]" -type "float2" -0.37411436 -0.72100365 ;
	setAttr ".uvtk[308]" -type "float2" -0.37399912 -0.71795291 ;
	setAttr ".uvtk[309]" -type "float2" -0.37322 -0.71501529 ;
	setAttr ".uvtk[310]" -type "float2" -0.37182766 -0.71234041 ;
	setAttr ".uvtk[311]" -type "float2" -0.36991832 -0.7100603 ;
	setAttr ".uvtk[312]" -type "float2" -0.36721292 -0.70892048 ;
	setAttr ".uvtk[313]" -type "float2" -0.35235333 -0.70952749 ;
	setAttr ".uvtk[314]" -type "float2" -0.3503226 -0.71150994 ;
	setAttr ".uvtk[315]" -type "float2" -0.34873664 -0.71389437 ;
	setAttr ".uvtk[316]" -type "float2" -0.3476972 -0.71657807 ;
	setAttr ".uvtk[317]" -type "float2" -0.3472665 -0.71943128 ;
	setAttr ".uvtk[318]" -type "float2" -0.34747124 -0.72231317 ;
	setAttr ".uvtk[319]" -type "float2" -0.34830433 -0.72508126 ;
	setAttr ".uvtk[320]" -type "float2" -0.34972599 -0.72759897 ;
	setAttr ".uvtk[321]" -type "float2" -0.35166696 -0.72974199 ;
	setAttr ".uvtk[322]" -type "float2" -0.35403222 -0.73140484 ;
	setAttr ".uvtk[323]" -type "float2" -0.35670555 -0.7325058 ;
	setAttr ".uvtk[324]" -type "float2" -0.35955554 -0.73299062 ;
	setAttr ".uvtk[325]" -type "float2" -0.36244202 -0.73283559 ;
	setAttr ".uvtk[326]" -type "float2" -0.36522317 -0.73204851 ;
	setAttr ".uvtk[327]" -type "float2" -0.36776191 -0.73066819 ;
	setAttr ".uvtk[328]" -type "float2" -0.36993343 -0.72876304 ;
	setAttr ".uvtk[329]" -type "float2" -0.37163094 -0.72642744 ;
	setAttr ".uvtk[330]" -type "float2" -0.37277114 -0.72377771 ;
	setAttr ".uvtk[331]" -type "float2" -0.37329894 -0.72094631 ;
	setAttr ".uvtk[332]" -type "float2" -0.373191 -0.71807563 ;
	setAttr ".uvtk[333]" -type "float2" -0.37245774 -0.71531117 ;
	setAttr ".uvtk[334]" -type "float2" -0.37114602 -0.71279287 ;
	setAttr ".uvtk[335]" -type "float2" -0.36934251 -0.71064198 ;
	setAttr ".uvtk[336]" -type "float2" -0.21006876 -0.80698252 ;
	setAttr ".uvtk[337]" -type "float2" -0.20449454 -0.80592066 ;
	setAttr ".uvtk[338]" -type "float2" -0.20245802 -0.80458021 ;
	setAttr ".uvtk[339]" -type "float2" -0.20081109 -0.80278426 ;
	setAttr ".uvtk[340]" -type "float2" -0.19965577 -0.80063748 ;
	setAttr ".uvtk[341]" -type "float2" -0.19906378 -0.79827088 ;
	setAttr ".uvtk[342]" -type "float2" -0.19907165 -0.79582983 ;
	setAttr ".uvtk[343]" -type "float2" -0.19967908 -0.79346472 ;
	setAttr ".uvtk[344]" -type "float2" -0.20084882 -0.79132062 ;
	setAttr ".uvtk[345]" -type "float2" -0.20250928 -0.78952873 ;
	setAttr ".uvtk[346]" -type "float2" -0.20455885 -0.78819895 ;
	setAttr ".uvtk[347]" -type "float2" -0.20687211 -0.78741276 ;
	setAttr ".uvtk[348]" -type "float2" -0.20930773 -0.78721821 ;
	setAttr ".uvtk[349]" -type "float2" -0.21171647 -0.78762716 ;
	setAttr ".uvtk[350]" -type "float2" -0.21395153 -0.78861475 ;
	setAttr ".uvtk[351]" -type "float2" -0.2158758 -0.79012048 ;
	setAttr ".uvtk[352]" -type "float2" -0.2173717 -0.79205239 ;
	setAttr ".uvtk[353]" -type "float2" -0.21834803 -0.79429227 ;
	setAttr ".uvtk[354]" -type "float2" -0.21874464 -0.7967034 ;
	setAttr ".uvtk[355]" -type "float2" -0.21853751 -0.79913831 ;
	setAttr ".uvtk[356]" -type "float2" -0.21773899 -0.80144823 ;
	setAttr ".uvtk[357]" -type "float2" -0.21639818 -0.80349261 ;
	setAttr ".uvtk[358]" -type "float2" -0.21459687 -0.8051486 ;
	setAttr ".uvtk[359]" -type "float2" -0.21244502 -0.80632323 ;
	setAttr ".uvtk[360]" -type "float2" -0.21020883 -0.80770701 ;
	setAttr ".uvtk[361]" -type "float2" -0.20415688 -0.80657995 ;
	setAttr ".uvtk[362]" -type "float2" -0.20197421 -0.80514199 ;
	setAttr ".uvtk[363]" -type "float2" -0.20020586 -0.80321234 ;
	setAttr ".uvtk[364]" -type "float2" -0.19896442 -0.80090487 ;
	setAttr ".uvtk[365]" -type "float2" -0.19832802 -0.79836082 ;
	setAttr ".uvtk[366]" -type "float2" -0.1983363 -0.79573679 ;
	setAttr ".uvtk[367]" -type "float2" -0.19898903 -0.79319417 ;
	setAttr ".uvtk[368]" -type "float2" -0.20024633 -0.79088897 ;
	setAttr ".uvtk[369]" -type "float2" -0.20203114 -0.7889626 ;
	setAttr ".uvtk[370]" -type "float2" -0.20423412 -0.78753287 ;
	setAttr ".uvtk[371]" -type "float2" -0.20672083 -0.78668731 ;
	setAttr ".uvtk[372]" -type "float2" -0.20933914 -0.78647786 ;
	setAttr ".uvtk[373]" -type "float2" -0.21192873 -0.78691709 ;
	setAttr ".uvtk[374]" -type "float2" -0.21433133 -0.78797835 ;
	setAttr ".uvtk[375]" -type "float2" -0.21640009 -0.78959674 ;
	setAttr ".uvtk[376]" -type "float2" -0.21800852 -0.79167312 ;
	setAttr ".uvtk[377]" -type "float2" -0.21905828 -0.79408085 ;
	setAttr ".uvtk[378]" -type "float2" -0.21948528 -0.79667246 ;
	setAttr ".uvtk[379]" -type "float2" -0.21926296 -0.79928976 ;
	setAttr ".uvtk[380]" -type "float2" -0.21840566 -0.80177248 ;
	setAttr ".uvtk[381]" -type "float2" -0.21696597 -0.80396938 ;
	setAttr ".uvtk[382]" -type "float2" -0.21503341 -0.80574822 ;
	setAttr ".uvtk[383]" -type "float2" -0.21273029 -0.80700874 ;
	setAttr ".uvtk[384]" -type "float2" -0.21037513 -0.8087796 ;
	setAttr ".uvtk[385]" -type "float2" -0.20366025 -0.80756122 ;
	setAttr ".uvtk[386]" -type "float2" -0.20125735 -0.80597669 ;
	setAttr ".uvtk[387]" -type "float2" -0.19930798 -0.80384773 ;
	setAttr ".uvtk[388]" -type "float2" -0.19793874 -0.80130136 ;
	setAttr ".uvtk[389]" -type "float2" -0.19723672 -0.7984938 ;
	setAttr ".uvtk[390]" -type "float2" -0.19724596 -0.79559803 ;
	setAttr ".uvtk[391]" -type "float2" -0.1979661 -0.79279208 ;
	setAttr ".uvtk[392]" -type "float2" -0.19935334 -0.79024822 ;
	setAttr ".uvtk[393]" -type "float2" -0.20132262 -0.7881223 ;
	setAttr ".uvtk[394]" -type "float2" -0.20375347 -0.78654438 ;
	setAttr ".uvtk[395]" -type "float2" -0.20649743 -0.78561109 ;
	setAttr ".uvtk[396]" -type "float2" -0.20938641 -0.78537977 ;
	setAttr ".uvtk[397]" -type "float2" -0.21224403 -0.78586417 ;
	setAttr ".uvtk[398]" -type "float2" -0.21489549 -0.78703505 ;
	setAttr ".uvtk[399]" -type "float2" -0.21717846 -0.78882068 ;
	setAttr ".uvtk[400]" -type "float2" -0.21895355 -0.79111171 ;
	setAttr ".uvtk[401]" -type "float2" -0.22011209 -0.79376841 ;
	setAttr ".uvtk[402]" -type "float2" -0.22058368 -0.79662788 ;
	setAttr ".uvtk[403]" -type "float2" -0.220339 -0.7995156 ;
	setAttr ".uvtk[404]" -type "float2" -0.21939415 -0.80225468 ;
	setAttr ".uvtk[405]" -type "float2" -0.21780759 -0.80467814 ;
	setAttr ".uvtk[406]" -type "float2" -0.21567929 -0.80663979 ;
	setAttr ".uvtk[407]" -type "float2" -0.21314645 -0.80802739 ;
	setAttr ".uvtk[408]" -type "float2" -0.21056485 -0.81021249 ;
	setAttr ".uvtk[409]" -type "float2" -0.20300949 -0.8088755 ;
	setAttr ".uvtk[410]" -type "float2" -0.20030355 -0.80709445 ;
	setAttr ".uvtk[411]" -type "float2" -0.19810975 -0.80469787 ;
	setAttr ".uvtk[412]" -type "float2" -0.1965692 -0.80183125 ;
	setAttr ".uvtk[413]" -type "float2" -0.19577944 -0.79867125 ;
	setAttr ".uvtk[414]" -type "float2" -0.19578999 -0.79541224 ;
	setAttr ".uvtk[415]" -type "float2" -0.19660038 -0.79225457 ;
	setAttr ".uvtk[416]" -type "float2" -0.19816136 -0.78939199 ;
	setAttr ".uvtk[417]" -type "float2" -0.20037723 -0.78699964 ;
	setAttr ".uvtk[418]" -type "float2" -0.20311254 -0.78522408 ;
	setAttr ".uvtk[419]" -type "float2" -0.2062 -0.78417403 ;
	setAttr ".uvtk[420]" -type "float2" -0.20945072 -0.78391349 ;
	setAttr ".uvtk[421]" -type "float2" -0.21266615 -0.78445864 ;
	setAttr ".uvtk[422]" -type "float2" -0.21564949 -0.78577596 ;
	setAttr ".uvtk[423]" -type "float2" -0.21821827 -0.78778499 ;
	setAttr ".uvtk[424]" -type "float2" -0.2202158 -0.79036283 ;
	setAttr ".uvtk[425]" -type "float2" -0.22151971 -0.79335189 ;
	setAttr ".uvtk[426]" -type "float2" -0.22205031 -0.79656935 ;
	setAttr ".uvtk[427]" -type "float2" -0.22177595 -0.79981834 ;
	setAttr ".uvtk[428]" -type "float2" -0.22071344 -0.8029002 ;
	setAttr ".uvtk[429]" -type "float2" -0.21892971 -0.80562687 ;
	setAttr ".uvtk[430]" -type "float2" -0.21653724 -0.80783319 ;
	setAttr ".uvtk[431]" -type "float2" -0.21368849 -0.80939001 ;
	setAttr ".uvtk[432]" -type "float2" -0.21076846 -0.81195945 ;
	setAttr ".uvtk[433]" -type "float2" -0.20223242 -0.81047827 ;
	setAttr ".uvtk[434]" -type "float2" -0.19914925 -0.80845749 ;
	setAttr ".uvtk[435]" -type "float2" -0.19665438 -0.80573392 ;
	setAttr ".uvtk[436]" -type "float2" -0.19490409 -0.80247676 ;
	setAttr ".uvtk[437]" -type "float2" -0.19400716 -0.79888713 ;
	setAttr ".uvtk[438]" -type "float2" -0.1940192 -0.79518598 ;
	setAttr ".uvtk[439]" -type "float2" -0.19493967 -0.79160041 ;
	setAttr ".uvtk[440]" -type "float2" -0.19671208 -0.78835016 ;
	setAttr ".uvtk[441]" -type "float2" -0.19922811 -0.78563392 ;
	setAttr ".uvtk[442]" -type "float2" -0.20233369 -0.78361821 ;
	setAttr ".uvtk[443]" -type "float2" -0.20583904 -0.782426 ;
	setAttr ".uvtk[444]" -type "float2" -0.20952982 -0.78213042 ;
	setAttr ".uvtk[445]" -type "float2" -0.21318036 -0.78274935 ;
	setAttr ".uvtk[446]" -type "float2" -0.21656728 -0.78424501 ;
	setAttr ".uvtk[447]" -type "float2" -0.21948379 -0.78652602 ;
	setAttr ".uvtk[448]" -type "float2" -0.22175127 -0.78945267 ;
	setAttr ".uvtk[449]" -type "float2" -0.22323179 -0.79284632 ;
	setAttr ".uvtk[450]" -type "float2" -0.22383451 -0.79649913 ;
	setAttr ".uvtk[451]" -type "float2" -0.22352314 -0.80018789 ;
	setAttr ".uvtk[452]" -type "float2" -0.22231722 -0.80368716 ;
	setAttr ".uvtk[453]" -type "float2" -0.22029209 -0.8067832 ;
	setAttr ".uvtk[454]" -type "float2" -0.21757412 -0.80928785 ;
	setAttr ".uvtk[455]" -type "float2" -0.214333 -0.81105 ;
	setAttr ".uvtk[456]" -type "float2" -0.21097994 -0.81394339 ;
	setAttr ".uvtk[457]" -type "float2" -0.20136392 -0.81229585 ;
	setAttr ".uvtk[458]" -type "float2" -0.19784832 -0.81000292 ;
	setAttr ".uvtk[459]" -type "float2" -0.19500959 -0.80690825 ;
	setAttr ".uvtk[460]" -type "float2" -0.19302034 -0.80320805 ;
	setAttr ".uvtk[461]" -type "float2" -0.1920017 -0.79913169 ;
	setAttr ".uvtk[462]" -type "float2" -0.19201553 -0.79492968 ;
	setAttr ".uvtk[463]" -type "float2" -0.19306052 -0.79085958 ;
	setAttr ".uvtk[464]" -type "float2" -0.19507253 -0.78717065 ;
	setAttr ".uvtk[465]" -type "float2" -0.19792819 -0.78408813 ;
	setAttr ".uvtk[466]" -type "float2" -0.20145291 -0.78180057 ;
	setAttr ".uvtk[467]" -type "float2" -0.20543116 -0.78044778 ;
	setAttr ".uvtk[468]" -type "float2" -0.2096197 -0.78011262 ;
	setAttr ".uvtk[469]" -type "float2" -0.2137627 -0.78081536 ;
	setAttr ".uvtk[470]" -type "float2" -0.21760631 -0.78251296 ;
	setAttr ".uvtk[471]" -type "float2" -0.22091597 -0.78510183 ;
	setAttr ".uvtk[472]" -type "float2" -0.2234894 -0.78842348 ;
	setAttr ".uvtk[473]" -type "float2" -0.22516948 -0.79227495 ;
	setAttr ".uvtk[474]" -type "float2" -0.22585338 -0.79642069 ;
	setAttr ".uvtk[475]" -type "float2" -0.22549975 -0.80060732 ;
	setAttr ".uvtk[476]" -type "float2" -0.22413081 -0.80457932 ;
	setAttr ".uvtk[477]" -type "float2" -0.22183102 -0.80809402 ;
	setAttr ".uvtk[478]" -type "float2" -0.21874112 -0.81093687 ;
	setAttr ".uvtk[479]" -type "float2" -0.21504986 -0.81293195 ;
	setAttr ".uvtk[480]" -type "float2" -0.21119583 -0.81606746 ;
	setAttr ".uvtk[481]" -type "float2" -0.20044291 -0.81423765 ;
	setAttr ".uvtk[482]" -type "float2" -0.19646388 -0.81165296 ;
	setAttr ".uvtk[483]" -type "float2" -0.1932565 -0.80816168 ;
	setAttr ".uvtk[484]" -type "float2" -0.19101143 -0.8039884 ;
	setAttr ".uvtk[485]" -type "float2" -0.18986273 -0.7993924 ;
	setAttr ".uvtk[486]" -type "float2" -0.18987846 -0.79465604 ;
	setAttr ".uvtk[487]" -type "float2" -0.19105625 -0.79006922 ;
	setAttr ".uvtk[488]" -type "float2" -0.19332367 -0.78591222 ;
	setAttr ".uvtk[489]" -type "float2" -0.19654185 -0.78243893 ;
	setAttr ".uvtk[490]" -type "float2" -0.20051372 -0.77986163 ;
	setAttr ".uvtk[491]" -type "float2" -0.20499647 -0.77833766 ;
	setAttr ".uvtk[492]" -type "float2" -0.20971608 -0.7779603 ;
	setAttr ".uvtk[493]" -type "float2" -0.21438408 -0.77875239 ;
	setAttr ".uvtk[494]" -type "float2" -0.21871507 -0.78066564 ;
	setAttr ".uvtk[495]" -type "float2" -0.22244406 -0.78358287 ;
	setAttr ".uvtk[496]" -type "float2" -0.22534364 -0.78732598 ;
	setAttr ".uvtk[497]" -type "float2" -0.22723627 -0.79166597 ;
	setAttr ".uvtk[498]" -type "float2" -0.22800678 -0.79633754 ;
	setAttr ".uvtk[499]" -type "float2" -0.22760785 -0.80105555 ;
	setAttr ".uvtk[500]" -type "float2" -0.22606432 -0.80553198 ;
	setAttr ".uvtk[501]" -type "float2" -0.22347009 -0.80949366 ;
	setAttr ".uvtk[502]" -type "float2" -0.21998167 -0.81269765 ;
	setAttr ".uvtk[503]" -type "float2" -0.2158075 -0.81494224 ;
	setAttr ".uvtk[504]" -type "float2" -0.21141201 -0.81822407 ;
	setAttr ".uvtk[505]" -type "float2" -0.19951189 -0.81620449 ;
	setAttr ".uvtk[506]" -type "float2" -0.19506401 -0.81332314 ;
	setAttr ".uvtk[507]" -type "float2" -0.19148314 -0.80942988 ;
	setAttr ".uvtk[508]" -type "float2" -0.18897903 -0.80477768 ;
	setAttr ".uvtk[509]" -type "float2" -0.1876986 -0.79965585 ;
	setAttr ".uvtk[510]" -type "float2" -0.18771601 -0.79437894 ;
	setAttr ".uvtk[511]" -type "float2" -0.18902844 -0.78926921 ;
	setAttr ".uvtk[512]" -type "float2" -0.19155443 -0.7846387 ;
	setAttr ".uvtk[513]" -type "float2" -0.19513929 -0.78077012 ;
	setAttr ".uvtk[514]" -type "float2" -0.19956356 -0.77789962 ;
	setAttr ".uvtk[515]" -type "float2" -0.20455688 -0.77620256 ;
	setAttr ".uvtk[516]" -type "float2" -0.20981383 -0.77578253 ;
	setAttr ".uvtk[517]" -type "float2" -0.21501315 -0.77666521 ;
	setAttr ".uvtk[518]" -type "float2" -0.21983695 -0.77879655 ;
	setAttr ".uvtk[519]" -type "float2" -0.22399044 -0.78204632 ;
	setAttr ".uvtk[520]" -type "float2" -0.2272197 -0.78621572 ;
	setAttr ".uvtk[521]" -type "float2" -0.22932756 -0.79105008 ;
	setAttr ".uvtk[522]" -type "float2" -0.23018527 -0.7962538 ;
	setAttr ".uvtk[523]" -type "float2" -0.22974062 -0.80150956 ;
	setAttr ".uvtk[524]" -type "float2" -0.22802007 -0.80649638 ;
	setAttr ".uvtk[525]" -type "float2" -0.22512758 -0.81091034 ;
	setAttr ".uvtk[526]" -type "float2" -0.22123533 -0.81448019 ;
	setAttr ".uvtk[527]" -type "float2" -0.21657205 -0.81697869 ;
	setAttr ".uvtk[528]" -type "float2" -0.21162283 -0.82030284 ;
	setAttr ".uvtk[529]" -type "float2" -0.19861484 -0.81809616 ;
	setAttr ".uvtk[530]" -type "float2" -0.19371742 -0.81492811 ;
	setAttr ".uvtk[531]" -type "float2" -0.18977809 -0.81064826 ;
	setAttr ".uvtk[532]" -type "float2" -0.18702543 -0.80553573 ;
	setAttr ".uvtk[533]" -type "float2" -0.1856184 -0.79990876 ;
	setAttr ".uvtk[534]" -type "float2" -0.18563765 -0.79411221 ;
	setAttr ".uvtk[535]" -type "float2" -0.18707931 -0.78850007 ;
	setAttr ".uvtk[536]" -type "float2" -0.18985391 -0.7834146 ;
	setAttr ".uvtk[537]" -type "float2" -0.19379115 -0.77916598 ;
	setAttr ".uvtk[538]" -type "float2" -0.19865042 -0.77601361 ;
	setAttr ".uvtk[539]" -type "float2" -0.20413435 -0.77415019 ;
	setAttr ".uvtk[540]" -type "float2" -0.20990783 -0.77368927 ;
	setAttr ".uvtk[541]" -type "float2" -0.21561801 -0.7746591 ;
	setAttr ".uvtk[542]" -type "float2" -0.22091544 -0.77700007 ;
	setAttr ".uvtk[543]" -type "float2" -0.22547686 -0.78056931 ;
	setAttr ".uvtk[544]" -type "float2" -0.2290231 -0.7851485 ;
	setAttr ".uvtk[545]" -type "float2" -0.23133773 -0.79045808 ;
	setAttr ".uvtk[546]" -type "float2" -0.23227924 -0.79617339 ;
	setAttr ".uvtk[547]" -type "float2" -0.23179013 -0.80194587 ;
	setAttr ".uvtk[548]" -type "float2" -0.22989959 -0.80742341 ;
	setAttr ".uvtk[549]" -type "float2" -0.22672045 -0.81227207 ;
	setAttr ".uvtk[550]" -type "float2" -0.22244042 -0.81619364 ;
	setAttr ".uvtk[551]" -type "float2" -0.21730834 -0.81893766 ;
	setAttr ".uvtk[576]" -type "float2" -0.30160126 -0.96275073 ;
	setAttr ".uvtk[577]" -type "float2" -0.25870061 -0.96183336 ;
	setAttr ".uvtk[580]" -type "float2" -0.25628829 -0.95744228 ;
	setAttr ".uvtk[582]" -type "float2" -0.25475091 -0.95267409 ;
	setAttr ".uvtk[584]" -type "float2" -0.2541436 -0.9477011 ;
	setAttr ".uvtk[586]" -type "float2" -0.25448853 -0.94270313 ;
	setAttr ".uvtk[588]" -type "float2" -0.25577325 -0.93786073 ;
	setAttr ".uvtk[590]" -type "float2" -0.2579512 -0.93334895 ;
	setAttr ".uvtk[592]" -type "float2" -0.26094365 -0.92933095 ;
	setAttr ".uvtk[594]" -type "float2" -0.26464242 -0.9259519 ;
	setAttr ".uvtk[596]" -type "float2" -0.26891398 -0.923334 ;
	setAttr ".uvtk[598]" -type "float2" -0.27360377 -0.92157185 ;
	setAttr ".uvtk[600]" -type "float2" -0.27854231 -0.92072904 ;
	setAttr ".uvtk[602]" -type "float2" -0.2835511 -0.92083627 ;
	setAttr ".uvtk[604]" -type "float2" -0.28844896 -0.92188942 ;
	setAttr ".uvtk[606]" -type "float2" -0.29305905 -0.92385054 ;
	setAttr ".uvtk[608]" -type "float2" -0.29721463 -0.92664874 ;
	setAttr ".uvtk[610]" -type "float2" -0.30076554 -0.93018293 ;
	setAttr ".uvtk[612]" -type "float2" -0.30358341 -0.93432528 ;
	setAttr ".uvtk[614]" -type "float2" -0.30556637 -0.93892598 ;
	setAttr ".uvtk[616]" -type "float2" -0.30664274 -0.94381893 ;
	setAttr ".uvtk[618]" -type "float2" -0.3067736 -0.94882715 ;
	setAttr ".uvtk[620]" -type "float2" -0.30595422 -0.95376956 ;
	setAttr ".uvtk[622]" -type "float2" -0.30421358 -0.95846766 ;
	setAttr ".uvtk[624]" -type "float2" -0.3021152 -0.96314394 ;
	setAttr ".uvtk[625]" -type "float2" -0.25816721 -0.96219659 ;
	setAttr ".uvtk[626]" -type "float2" -0.25569528 -0.95769799 ;
	setAttr ".uvtk[627]" -type "float2" -0.25412017 -0.95281291 ;
	setAttr ".uvtk[628]" -type "float2" -0.25349814 -0.94771802 ;
	setAttr ".uvtk[629]" -type "float2" -0.25385147 -0.94259751 ;
	setAttr ".uvtk[630]" -type "float2" -0.25516766 -0.93763649 ;
	setAttr ".uvtk[631]" -type "float2" -0.25739902 -0.93301415 ;
	setAttr ".uvtk[632]" -type "float2" -0.26046479 -0.92889762 ;
	setAttr ".uvtk[633]" -type "float2" -0.26425421 -0.92543578 ;
	setAttr ".uvtk[634]" -type "float2" -0.26863045 -0.92275369 ;
	setAttr ".uvtk[635]" -type "float2" -0.27343515 -0.92094839 ;
	setAttr ".uvtk[636]" -type "float2" -0.27849475 -0.92008501 ;
	setAttr ".uvtk[637]" -type "float2" -0.28362626 -0.9201948 ;
	setAttr ".uvtk[638]" -type "float2" -0.28864416 -0.92127383 ;
	setAttr ".uvtk[639]" -type "float2" -0.29336721 -0.92328304 ;
	setAttr ".uvtk[640]" -type "float2" -0.29762471 -0.92614996 ;
	setAttr ".uvtk[641]" -type "float2" -0.30126259 -0.92977071 ;
	setAttr ".uvtk[642]" -type "float2" -0.30414951 -0.93401456 ;
	setAttr ".uvtk[643]" -type "float2" -0.30618101 -0.93872803 ;
	setAttr ".uvtk[644]" -type "float2" -0.3072837 -0.9437409 ;
	setAttr ".uvtk[645]" -type "float2" -0.30741778 -0.94887179 ;
	setAttr ".uvtk[646]" -type "float2" -0.30657828 -0.95393538 ;
	setAttr ".uvtk[647]" -type "float2" -0.30479443 -0.95874834 ;
	setAttr ".uvtk[648]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[649]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[650]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[651]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[652]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[653]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[654]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[655]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[656]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[657]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[658]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[659]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[660]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[661]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[662]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[663]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[664]" -type "float2" 0.11574446 1.6996648 ;
	setAttr ".uvtk[665]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[666]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[667]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[668]" -type "float2" 0.11574449 1.6996648 ;
	setAttr ".uvtk[669]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[670]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[671]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[720]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[721]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[722]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[723]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[724]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[725]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[726]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[727]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[728]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[729]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[730]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[731]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[732]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[733]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[734]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[735]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[736]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[737]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[738]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[739]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[740]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[741]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[742]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[743]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[744]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[745]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[746]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[747]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[748]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[749]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[750]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[751]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[752]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[753]" -type "float2" 0.11574446 1.6996648 ;
	setAttr ".uvtk[754]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[755]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[756]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[757]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[758]" -type "float2" -0.070896164 0.72668576 ;
	setAttr ".uvtk[759]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[760]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[761]" -type "float2" 0.11574449 1.6996648 ;
	setAttr ".uvtk[762]" -type "float2" -0.070896156 0.72668576 ;
	setAttr ".uvtk[763]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[764]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[765]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[766]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[767]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[816]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[817]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[818]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[819]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[820]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[821]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[822]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[823]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[824]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[825]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[826]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[827]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[828]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[829]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[830]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[831]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[832]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[833]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[834]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[835]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[836]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[837]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[838]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[839]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[840]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[841]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[842]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[843]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[844]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[845]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[846]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[847]" -type "float2" 0.1157445 1.6996648 ;
	setAttr ".uvtk[848]" -type "float2" 0.11574446 1.6996648 ;
	setAttr ".uvtk[849]" -type "float2" 0.11574446 1.6996648 ;
	setAttr ".uvtk[850]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[851]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[852]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[853]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[854]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[855]" -type "float2" 0.11574448 1.6996648 ;
	setAttr ".uvtk[856]" -type "float2" 0.11574449 1.6996648 ;
	setAttr ".uvtk[857]" -type "float2" 0.11574449 1.6996648 ;
	setAttr ".uvtk[858]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[859]" -type "float2" 0.11574447 1.6996648 ;
	setAttr ".uvtk[860]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[861]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[862]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[863]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[864]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[865]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[866]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[867]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[868]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[869]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[870]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[871]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[872]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[873]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[874]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[875]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[876]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[877]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[878]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[879]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[880]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[881]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[882]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[883]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[884]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[885]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[886]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[887]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[888]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[889]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[890]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[891]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[892]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[893]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[894]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[895]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[896]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[897]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[898]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[899]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[900]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[901]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[902]" -type "float2" -0.070896164 0.72668576 ;
	setAttr ".uvtk[903]" -type "float2" -0.070896164 0.72668576 ;
	setAttr ".uvtk[904]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[905]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[906]" -type "float2" -0.070896156 0.72668576 ;
	setAttr ".uvtk[907]" -type "float2" -0.070896156 0.72668576 ;
	setAttr ".uvtk[908]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[909]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[910]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[911]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[936]" -type "float2" -0.30610457 -0.80426323 ;
	setAttr ".uvtk[937]" -type "float2" -0.30352572 -0.81013185 ;
	setAttr ".uvtk[938]" -type "float2" -0.29969937 -0.81530815 ;
	setAttr ".uvtk[939]" -type "float2" -0.29471067 -0.81914037 ;
	setAttr ".uvtk[940]" -type "float2" -0.28876132 -0.82120401 ;
	setAttr ".uvtk[941]" -type "float2" -0.28242391 -0.82142425 ;
	setAttr ".uvtk[942]" -type "float2" -0.27604178 -0.8198874 ;
	setAttr ".uvtk[943]" -type "float2" -0.2700381 -0.81764817 ;
	setAttr ".uvtk[944]" -type "float2" -0.26604009 -0.81359798 ;
	setAttr ".uvtk[945]" -type "float2" -0.26204914 -0.80783856 ;
	setAttr ".uvtk[946]" -type "float2" -0.25911212 -0.80107784 ;
	setAttr ".uvtk[947]" -type "float2" -0.25734007 -0.7951737 ;
	setAttr ".uvtk[948]" -type "float2" -0.2577064 -0.78891963 ;
	setAttr ".uvtk[949]" -type "float2" -0.26080984 -0.78314757 ;
	setAttr ".uvtk[950]" -type "float2" -0.26599491 -0.77858639 ;
	setAttr ".uvtk[951]" -type "float2" -0.27178237 -0.7745024 ;
	setAttr ".uvtk[952]" -type "float2" -0.27747765 -0.77209163 ;
	setAttr ".uvtk[953]" -type "float2" -0.28362089 -0.77280104 ;
	setAttr ".uvtk[954]" -type "float2" -0.28989044 -0.77485961 ;
	setAttr ".uvtk[955]" -type "float2" -0.29536411 -0.77770847 ;
	setAttr ".uvtk[956]" -type "float2" -0.29991201 -0.78184509 ;
	setAttr ".uvtk[957]" -type "float2" -0.30375037 -0.78671205 ;
	setAttr ".uvtk[958]" -type "float2" -0.30632436 -0.79218698 ;
	setAttr ".uvtk[959]" -type "float2" -0.30712187 -0.79815918 ;
	setAttr ".uvtk[984]" -type "float2" -0.2818327 -0.89433342 ;
	setAttr ".uvtk[985]" -type "float2" -0.27595893 -0.89363593 ;
	setAttr ".uvtk[988]" -type "float2" -0.27067402 -0.89153922 ;
	setAttr ".uvtk[990]" -type "float2" -0.26635474 -0.88806987 ;
	setAttr ".uvtk[992]" -type "float2" -0.263282 -0.88344276 ;
	setAttr ".uvtk[994]" -type "float2" -0.26128787 -0.87812984 ;
	setAttr ".uvtk[996]" -type "float2" -0.26018435 -0.87260687 ;
	setAttr ".uvtk[998]" -type "float2" -0.26052088 -0.86696279 ;
	setAttr ".uvtk[1000]" -type "float2" -0.26183587 -0.86105788 ;
	setAttr ".uvtk[1002]" -type "float2" -0.26417369 -0.85585052 ;
	setAttr ".uvtk[1004]" -type "float2" -0.26878732 -0.85248905 ;
	setAttr ".uvtk[1006]" -type "float2" -0.2747325 -0.84986508 ;
	setAttr ".uvtk[1008]" -type "float2" -0.28077811 -0.84791327 ;
	setAttr ".uvtk[1010]" -type "float2" -0.28683993 -0.84819639 ;
	setAttr ".uvtk[1012]" -type "float2" -0.29196236 -0.85088468 ;
	setAttr ".uvtk[1014]" -type "float2" -0.29571971 -0.85509032 ;
	setAttr ".uvtk[1016]" -type "float2" -0.29962611 -0.8606419 ;
	setAttr ".uvtk[1018]" -type "float2" -0.30229956 -0.86650562 ;
	setAttr ".uvtk[1020]" -type "float2" -0.30359393 -0.87155491 ;
	setAttr ".uvtk[1022]" -type "float2" -0.30250311 -0.87734669 ;
	setAttr ".uvtk[1024]" -type "float2" -0.30069932 -0.8830893 ;
	setAttr ".uvtk[1026]" -type "float2" -0.29752636 -0.8879844 ;
	setAttr ".uvtk[1028]" -type "float2" -0.29307389 -0.891698 ;
	setAttr ".uvtk[1030]" -type "float2" -0.28768027 -0.89380372 ;
	setAttr ".uvtk[1032]" -type "float2" -0.27557585 -0.89511824 ;
	setAttr ".uvtk[1033]" -type "float2" -0.28176397 -0.89592171 ;
	setAttr ".uvtk[1034]" -type "float2" -0.30492729 -0.81099361 ;
	setAttr ".uvtk[1035]" -type "float2" -0.30770102 -0.80473804 ;
	setAttr ".uvtk[1036]" -type "float2" -0.28803325 -0.89529681 ;
	setAttr ".uvtk[1037]" -type "float2" -0.30089271 -0.81647533 ;
	setAttr ".uvtk[1038]" -type "float2" -0.29385716 -0.89302284 ;
	setAttr ".uvtk[1039]" -type "float2" -0.29550561 -0.82061398 ;
	setAttr ".uvtk[1040]" -type "float2" -0.29867545 -0.88900429 ;
	setAttr ".uvtk[1041]" -type "float2" -0.28906676 -0.82284737 ;
	setAttr ".uvtk[1042]" -type "float2" -0.3020862 -0.88374311 ;
	setAttr ".uvtk[1043]" -type "float2" -0.28225476 -0.8230837 ;
	setAttr ".uvtk[1044]" -type "float2" -0.30397937 -0.87771642 ;
	setAttr ".uvtk[1045]" -type "float2" -0.27555761 -0.82147068 ;
	setAttr ".uvtk[1046]" -type "float2" -0.30514908 -0.87150466 ;
	setAttr ".uvtk[1047]" -type "float2" -0.2691181 -0.81906909 ;
	setAttr ".uvtk[1048]" -type "float2" -0.3037385 -0.86600047 ;
	setAttr ".uvtk[1049]" -type "float2" -0.26476163 -0.81465536 ;
	setAttr ".uvtk[1050]" -type "float2" -0.30094981 -0.85988259 ;
	setAttr ".uvtk[1051]" -type "float2" -0.2605989 -0.8086468 ;
	setAttr ".uvtk[1052]" -type "float2" -0.29690757 -0.85413861 ;
	setAttr ".uvtk[1053]" -type "float2" -0.25755936 -0.80165255 ;
	setAttr ".uvtk[1054]" -type "float2" -0.2929084 -0.84966511 ;
	setAttr ".uvtk[1055]" -type "float2" -0.25567293 -0.79537296 ;
	setAttr ".uvtk[1056]" -type "float2" -0.28724733 -0.84669459 ;
	setAttr ".uvtk[1057]" -type "float2" -0.25607759 -0.78845859 ;
	setAttr ".uvtk[1058]" -type "float2" -0.28057545 -0.84638286 ;
	setAttr ".uvtk[1059]" -type "float2" -0.25949609 -0.78210133 ;
	setAttr ".uvtk[1060]" -type "float2" -0.27419266 -0.84844291 ;
	setAttr ".uvtk[1061]" -type "float2" -0.26497108 -0.77728605 ;
	setAttr ".uvtk[1062]" -type "float2" -0.26802498 -0.85116494 ;
	setAttr ".uvtk[1063]" -type "float2" -0.27097484 -0.77304941 ;
	setAttr ".uvtk[1064]" -type "float2" -0.26295453 -0.85485899 ;
	setAttr ".uvtk[1065]" -type "float2" -0.27723661 -0.77039903 ;
	setAttr ".uvtk[1066]" -type "float2" -0.26038784 -0.86057317 ;
	setAttr ".uvtk[1067]" -type "float2" -0.28398123 -0.77117926 ;
	setAttr ".uvtk[1068]" -type "float2" -0.25901204 -0.86674803 ;
	setAttr ".uvtk[1069]" -type "float2" -0.29053688 -0.77333277 ;
	setAttr ".uvtk[1070]" -type "float2" -0.25865602 -0.87271082 ;
	setAttr ".uvtk[1071]" -type "float2" -0.29631865 -0.77634227 ;
	setAttr ".uvtk[1072]" -type "float2" -0.25982237 -0.87854862 ;
	setAttr ".uvtk[1073]" -type "float2" -0.30112487 -0.78071409 ;
	setAttr ".uvtk[1074]" -type "float2" -0.26192147 -0.88414061 ;
	setAttr ".uvtk[1075]" -type "float2" -0.30516431 -0.78583568 ;
	setAttr ".uvtk[1076]" -type "float2" -0.26522088 -0.889108 ;
	setAttr ".uvtk[1077]" -type "float2" -0.3079282 -0.791713 ;
	setAttr ".uvtk[1078]" -type "float2" -0.26990214 -0.89286733 ;
	setAttr ".uvtk[1079]" -type "float2" -0.30879298 -0.79818505 ;
	setAttr ".uvtk[1104]" -type "float2" -0.26253754 -0.96502382 ;
	setAttr ".uvtk[1105]" -type "float2" -0.30339602 -0.95807129 ;
	setAttr ".uvtk[1106]" -type "float2" -0.30507538 -0.95353568 ;
	setAttr ".uvtk[1107]" -type "float2" -0.30586642 -0.94876385 ;
	setAttr ".uvtk[1108]" -type "float2" -0.30573991 -0.94392848 ;
	setAttr ".uvtk[1109]" -type "float2" -0.30470061 -0.93920445 ;
	setAttr ".uvtk[1110]" -type "float2" -0.30278605 -0.93476248 ;
	setAttr ".uvtk[1111]" -type "float2" -0.30006528 -0.93076324 ;
	setAttr ".uvtk[1112]" -type "float2" -0.29663691 -0.92735106 ;
	setAttr ".uvtk[1113]" -type "float2" -0.29262465 -0.92464954 ;
	setAttr ".uvtk[1114]" -type "float2" -0.28817362 -0.92275608 ;
	setAttr ".uvtk[1115]" -type "float2" -0.2834447 -0.92173946 ;
	setAttr ".uvtk[1116]" -type "float2" -0.27860883 -0.92163599 ;
	setAttr ".uvtk[1117]" -type "float2" -0.27384076 -0.92244977 ;
	setAttr ".uvtk[1118]" -type "float2" -0.26931283 -0.92415124 ;
	setAttr ".uvtk[1119]" -type "float2" -0.26518875 -0.9266789 ;
	setAttr ".uvtk[1120]" -type "float2" -0.26161772 -0.92994153 ;
	setAttr ".uvtk[1121]" -type "float2" -0.25872862 -0.93382078 ;
	setAttr ".uvtk[1122]" -type "float2" -0.25662589 -0.93817693 ;
	setAttr ".uvtk[1123]" -type "float2" -0.25538558 -0.9428522 ;
	setAttr ".uvtk[1124]" -type "float2" -0.25505275 -0.94767779 ;
	setAttr ".uvtk[1125]" -type "float2" -0.2556392 -0.95247912 ;
	setAttr ".uvtk[1126]" -type "float2" -0.25712365 -0.95708263 ;
	setAttr ".uvtk[1127]" -type "float2" -0.25945246 -0.96132147 ;
	setAttr ".uvtk[1128]" -type "float2" -0.21798134 -0.82072163 ;
	setAttr ".uvtk[1129]" -type "float2" -0.2118209 -0.82219875 ;
	setAttr ".uvtk[1130]" -type "float2" -0.22353816 -0.8177529 ;
	setAttr ".uvtk[1131]" -type "float2" -0.22817034 -0.81351078 ;
	setAttr ".uvtk[1132]" -type "float2" -0.23161012 -0.80826676 ;
	setAttr ".uvtk[1133]" -type "float2" -0.23365545 -0.80234283 ;
	setAttr ".uvtk[1134]" -type "float2" -0.23418504 -0.7961002 ;
	setAttr ".uvtk[1135]" -type "float2" -0.23316717 -0.78991926 ;
	setAttr ".uvtk[1136]" -type "float2" -0.23066437 -0.7841773 ;
	setAttr ".uvtk[1137]" -type "float2" -0.22682971 -0.77922499 ;
	setAttr ".uvtk[1138]" -type "float2" -0.22189713 -0.77536494 ;
	setAttr ".uvtk[1139]" -type "float2" -0.2161684 -0.77283299 ;
	setAttr ".uvtk[1140]" -type "float2" -0.20999342 -0.77178407 ;
	setAttr ".uvtk[1141]" -type "float2" -0.20374978 -0.77228224 ;
	setAttr ".uvtk[1142]" -type "float2" -0.19781911 -0.77429736 ;
	setAttr ".uvtk[1143]" -type "float2" -0.19256425 -0.77770603 ;
	setAttr ".uvtk[1144]" -type "float2" -0.18830609 -0.78230029 ;
	setAttr ".uvtk[1145]" -type "float2" -0.18530536 -0.78779995 ;
	setAttr ".uvtk[1146]" -type "float2" -0.1837461 -0.79386932 ;
	setAttr ".uvtk[1147]" -type "float2" -0.18372512 -0.80013841 ;
	setAttr ".uvtk[1148]" -type "float2" -0.18524706 -0.80622494 ;
	setAttr ".uvtk[1149]" -type "float2" -0.18822557 -0.81175619 ;
	setAttr ".uvtk[1150]" -type "float2" -0.1924901 -0.81638831 ;
	setAttr ".uvtk[1151]" -type "float2" -0.19779551 -0.8198185 ;
	setAttr ".uvtk[1153]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1154]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1156]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1157]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[1160]" -type "float2" 0.11574456 1.6996648 ;
	setAttr ".uvtk[1168]" -type "float2" -0.28172553 -0.8928225 ;
	setAttr ".uvtk[1170]" -type "float2" -0.28725651 -0.89229137 ;
	setAttr ".uvtk[1171]" -type "float2" -0.29225889 -0.89035654 ;
	setAttr ".uvtk[1172]" -type "float2" -0.29637846 -0.886913 ;
	setAttr ".uvtk[1173]" -type "float2" -0.29930475 -0.88236231 ;
	setAttr ".uvtk[1174]" -type "float2" -0.30096465 -0.87699884 ;
	setAttr ".uvtk[1175]" -type "float2" -0.30200681 -0.87162709 ;
	setAttr ".uvtk[1176]" -type "float2" -0.30078927 -0.86701512 ;
	setAttr ".uvtk[1177]" -type "float2" -0.29827791 -0.86150831 ;
	setAttr ".uvtk[1178]" -type "float2" -0.29460773 -0.85624862 ;
	setAttr ".uvtk[1179]" -type "float2" -0.29118863 -0.85231382 ;
	setAttr ".uvtk[1180]" -type "float2" -0.28643844 -0.849778 ;
	setAttr ".uvtk[1181]" -type "float2" -0.28086215 -0.84954888 ;
	setAttr ".uvtk[1182]" -type "float2" -0.27522221 -0.85142982 ;
	setAttr ".uvtk[1183]" -type "float2" -0.26964226 -0.85389119 ;
	setAttr ".uvtk[1184]" -type "float2" -0.2653721 -0.85697794 ;
	setAttr ".uvtk[1185]" -type "float2" -0.26327878 -0.86182523 ;
	setAttr ".uvtk[1186]" -type "float2" -0.26210356 -0.86735237 ;
	setAttr ".uvtk[1187]" -type "float2" -0.26180822 -0.87258995 ;
	setAttr ".uvtk[1188]" -type "float2" -0.26284713 -0.87770957 ;
	setAttr ".uvtk[1189]" -type "float2" -0.26467896 -0.88265061 ;
	setAttr ".uvtk[1190]" -type "float2" -0.26749212 -0.88694769 ;
	setAttr ".uvtk[1191]" -type "float2" -0.27146825 -0.89016306 ;
	setAttr ".uvtk[1192]" -type "float2" -0.27636042 -0.89210731 ;
	setAttr ".uvtk[1193]" -type "float2" -0.2815665 -0.89751047 ;
	setAttr ".uvtk[1194]" -type "float2" -0.30348775 -0.81016153 ;
	setAttr ".uvtk[1195]" -type "float2" -0.28179324 -0.89439368 ;
	setAttr ".uvtk[1196]" -type "float2" -0.28180516 -0.89586139 ;
	setAttr ".uvtk[1197]" -type "float2" -0.28176296 -0.89276218 ;
	setAttr ".uvtk[1198]" -type "float2" -0.27536979 -0.89670581 ;
	setAttr ".uvtk[1199]" -type "float2" -0.26931259 -0.89435583 ;
	setAttr ".uvtk[1200]" -type "float2" -0.26422304 -0.89036 ;
	setAttr ".uvtk[1201]" -type "float2" -0.26058578 -0.8850233 ;
	setAttr ".uvtk[1202]" -type "float2" -0.25832003 -0.87910223 ;
	setAttr ".uvtk[1203]" -type "float2" -0.25708461 -0.87301695 ;
	setAttr ".uvtk[1204]" -type "float2" -0.25741494 -0.86663496 ;
	setAttr ".uvtk[1205]" -type "float2" -0.25882739 -0.86021429 ;
	setAttr ".uvtk[1206]" -type "float2" -0.26148909 -0.85421365 ;
	setAttr ".uvtk[1207]" -type "float2" -0.26708019 -0.84987241 ;
	setAttr ".uvtk[1208]" -type "float2" -0.27355817 -0.84697288 ;
	setAttr ".uvtk[1209]" -type "float2" -0.28007731 -0.84486127 ;
	setAttr ".uvtk[1210]" -type "float2" -0.28729346 -0.84509403 ;
	setAttr ".uvtk[1211]" -type "float2" -0.29365093 -0.84824681 ;
	setAttr ".uvtk[1212]" -type "float2" -0.29810855 -0.85307908 ;
	setAttr ".uvtk[1213]" -type "float2" -0.30222812 -0.85891819 ;
	setAttr ".uvtk[1214]" -type "float2" -0.30521333 -0.86537617 ;
	setAttr ".uvtk[1215]" -type "float2" -0.30669662 -0.87109405 ;
	setAttr ".uvtk[1216]" -type "float2" -0.3055504 -0.87802464 ;
	setAttr ".uvtk[1217]" -type "float2" -0.30361205 -0.88422745 ;
	setAttr ".uvtk[1218]" -type "float2" -0.30002111 -0.88987172 ;
	setAttr ".uvtk[1219]" -type "float2" -0.29488435 -0.89425087 ;
	setAttr ".uvtk[1220]" -type "float2" -0.28862208 -0.89678562 ;
	setAttr ".uvtk[1221]" -type "float2" -0.28194672 -0.89745611 ;
	setAttr ".uvtk[1222]" -type "float2" -0.30496621 -0.81096208 ;
	setAttr ".uvtk[1223]" -type "float2" -0.2689026 -0.89411807 ;
	setAttr ".uvtk[1224]" -type "float2" -0.2638889 -0.88999605 ;
	setAttr ".uvtk[1225]" -type "float2" -0.26042724 -0.88471538 ;
	setAttr ".uvtk[1226]" -type "float2" -0.25825459 -0.87887341 ;
	setAttr ".uvtk[1227]" -type "float2" -0.25705791 -0.87261564 ;
	setAttr ".uvtk[1228]" -type "float2" -0.25744814 -0.86640513 ;
	setAttr ".uvtk[1229]" -type "float2" -0.25893199 -0.85990644 ;
	setAttr ".uvtk[1230]" -type "float2" -0.26202875 -0.85355246 ;
	setAttr ".uvtk[1231]" -type "float2" -0.26737899 -0.84970015 ;
	setAttr ".uvtk[1232]" -type "float2" -0.27369925 -0.84691978 ;
	setAttr ".uvtk[1233]" -type "float2" -0.28066605 -0.84478438 ;
	setAttr ".uvtk[1234]" -type "float2" -0.28801346 -0.84528857 ;
	setAttr ".uvtk[1235]" -type "float2" -0.29409122 -0.84858632 ;
	setAttr ".uvtk[1236]" -type "float2" -0.29819426 -0.85318482 ;
	setAttr ".uvtk[1237]" -type "float2" -0.3024261 -0.85926229 ;
	setAttr ".uvtk[1238]" -type "float2" -0.30528167 -0.86557215 ;
	setAttr ".uvtk[1239]" -type "float2" -0.30671954 -0.87181652 ;
	setAttr ".uvtk[1240]" -type "float2" -0.30550987 -0.87818652 ;
	setAttr ".uvtk[1241]" -type "float2" -0.3034291 -0.88461459 ;
	setAttr ".uvtk[1242]" -type "float2" -0.29969522 -0.89023846 ;
	setAttr ".uvtk[1243]" -type "float2" -0.29443869 -0.89451444 ;
	setAttr ".uvtk[1244]" -type "float2" -0.28817731 -0.89689136 ;
	setAttr ".uvtk[1245]" -type "float2" -0.27498874 -0.89660764 ;
	setAttr ".uvtk[1246]" -type "float2" -0.26146036 -0.96615255 ;
	setAttr ".uvtk[1247]" -type "float2" -0.37730616 -0.68957901 ;
	setAttr ".uvtk[1248]" -type "float2" -0.26191199 -0.96568841 ;
	setAttr ".uvtk[1249]" -type "float2" -0.30088711 -0.9621855 ;
	setAttr ".uvtk[1250]" -type "float2" -0.20417881 -0.81992191 ;
	setAttr ".uvtk[1251]" -type "float2" -0.20382559 -0.82179594 ;
	setAttr ".uvtk[1252]" -type "float2" -0.20456088 -0.81786543 ;
	setAttr ".uvtk[1253]" -type "float2" -0.20495439 -0.81573069 ;
	setAttr ".uvtk[1254]" -type "float2" -0.20534337 -0.8136273 ;
	setAttr ".uvtk[1255]" -type "float2" -0.20571417 -0.81166309 ;
	setAttr ".uvtk[1256]" -type "float2" -0.20605528 -0.80993491 ;
	setAttr ".uvtk[1257]" -type "float2" -0.20635539 -0.80851984 ;
	setAttr ".uvtk[1258]" -type "float2" -0.20660311 -0.80746388 ;
	setAttr ".uvtk[1259]" -type "float2" -0.35500869 -0.70847017 ;
	setAttr ".uvtk[1260]" -type "float2" -0.35465565 -0.70797276 ;
	setAttr ".uvtk[1261]" -type "float2" -0.35427257 -0.7072798 ;
	setAttr ".uvtk[1262]" -type "float2" -0.35377216 -0.70622379 ;
	setAttr ".uvtk[1263]" -type "float2" -0.35316455 -0.7047804 ;
	setAttr ".uvtk[1264]" -type "float2" -0.35247356 -0.7029897 ;
	setAttr ".uvtk[1265]" -type "float2" -0.35172009 -0.70093262 ;
	setAttr ".uvtk[1266]" -type "float2" -0.35092562 -0.69871622 ;
	setAttr ".uvtk[1267]" -type "float2" -0.35011554 -0.69646084 ;
	setAttr ".uvtk[1268]" -type "float2" -0.34932095 -0.69428885 ;
	setAttr ".uvtk[1269]" -type "float2" -0.34857759 -0.69231474 ;
	setAttr ".uvtk[1270]" -type "float2" -0.34792298 -0.69063568 ;
	setAttr ".uvtk[1271]" -type "float2" -0.34738949 -0.68932128 ;
	setAttr ".uvtk[1272]" -type "float2" -0.34699196 -0.6883986 ;
	setAttr ".uvtk[1273]" -type "float2" -0.36890537 -0.71107125 ;
	setAttr ".uvtk[1274]" -type "float2" -0.36682317 -0.70938158 ;
	setAttr ".uvtk[1275]" -type "float2" -0.2067979 -0.80675554 ;
	setAttr ".uvtk[1276]" -type "float2" -0.37063333 -0.71312886 ;
	setAttr ".uvtk[1277]" -type "float2" -0.37188572 -0.71553111 ;
	setAttr ".uvtk[1278]" -type "float2" -0.37258506 -0.71816671 ;
	setAttr ".uvtk[1279]" -type "float2" -0.37268785 -0.72090292 ;
	setAttr ".uvtk[1280]" -type "float2" -0.37218434 -0.72360146 ;
	setAttr ".uvtk[1281]" -type "float2" -0.37109718 -0.72612655 ;
	setAttr ".uvtk[1282]" -type "float2" -0.36947897 -0.72835207 ;
	setAttr ".uvtk[1283]" -type "float2" -0.36740905 -0.73016727 ;
	setAttr ".uvtk[1284]" -type "float2" -0.36498925 -0.73148215 ;
	setAttr ".uvtk[1285]" -type "float2" -0.36233866 -0.73223174 ;
	setAttr ".uvtk[1286]" -type "float2" -0.35958764 -0.73237884 ;
	setAttr ".uvtk[1287]" -type "float2" -0.35687169 -0.73191607 ;
	setAttr ".uvtk[1288]" -type "float2" -0.35432416 -0.73086619 ;
	setAttr ".uvtk[1289]" -type "float2" -0.35207033 -0.72928071 ;
	setAttr ".uvtk[1290]" -type "float2" -0.35022101 -0.72723788 ;
	setAttr ".uvtk[1291]" -type "float2" -0.34886658 -0.7248379 ;
	setAttr ".uvtk[1292]" -type "float2" -0.34807336 -0.72219914 ;
	setAttr ".uvtk[1293]" -type "float2" -0.34787893 -0.71945179 ;
	setAttr ".uvtk[1294]" -type "float2" -0.34829059 -0.71673131 ;
	setAttr ".uvtk[1295]" -type "float2" -0.34928337 -0.71417171 ;
	setAttr ".uvtk[1296]" -type "float2" -0.35080001 -0.71189559 ;
	setAttr ".uvtk[1297]" -type "float2" -0.35275126 -0.70999795 ;
	setAttr ".uvtk[1298]" -type "float2" -0.34669238 -0.68779808 ;
	setAttr ".uvtk[1299]" -type "float2" -0.30247295 -0.9633882 ;
	setAttr ".uvtk[1300]" -type "float2" -0.38382965 -0.69423509 ;
	setAttr ".uvtk[1301]" -type "float2" -0.38910773 -0.70017666 ;
	setAttr ".uvtk[1302]" -type "float2" -0.39285868 -0.70711458 ;
	setAttr ".uvtk[1303]" -type "float2" -0.39493281 -0.71467978 ;
	setAttr ".uvtk[1304]" -type "float2" -0.39526021 -0.72248971 ;
	setAttr ".uvtk[1305]" -type "float2" -0.39384618 -0.73016024 ;
	setAttr ".uvtk[1306]" -type "float2" -0.39077258 -0.73731774 ;
	setAttr ".uvtk[1307]" -type "float2" -0.38619694 -0.74361384 ;
	setAttr ".uvtk[1308]" -type "float2" -0.38034743 -0.74874258 ;
	setAttr ".uvtk[1309]" -type "float2" -0.37351269 -0.75245374 ;
	setAttr ".uvtk[1310]" -type "float2" -0.36602917 -0.75456667 ;
	setAttr ".uvtk[1311]" -type "float2" -0.35826486 -0.75497806 ;
	setAttr ".uvtk[1312]" -type "float2" -0.35060114 -0.75366867 ;
	setAttr ".uvtk[1313]" -type "float2" -0.3434146 -0.75070274 ;
	setAttr ".uvtk[1314]" -type "float2" -0.33705789 -0.74622631 ;
	setAttr ".uvtk[1315]" -type "float2" -0.3318435 -0.74045897 ;
	setAttr ".uvtk[1316]" -type "float2" -0.32802737 -0.73368353 ;
	setAttr ".uvtk[1317]" -type "float2" -0.32579798 -0.72623104 ;
	setAttr ".uvtk[1318]" -type "float2" -0.32526743 -0.71846485 ;
	setAttr ".uvtk[1319]" -type "float2" -0.32646912 -0.71076274 ;
	setAttr ".uvtk[1320]" -type "float2" -0.32935962 -0.70349997 ;
	setAttr ".uvtk[1321]" -type "float2" -0.33382672 -0.69703722 ;
	setAttr ".uvtk[1322]" -type "float2" -0.33969545 -0.69171369 ;
	setAttr ".uvtk[1438]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1440]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1442]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1444]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1446]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1448]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1450]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1452]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1454]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1456]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1458]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1460]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1462]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1464]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1466]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[1468]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[1470]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[1472]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[1474]" -type "float2" -0.070896164 0.72668576 ;
	setAttr ".uvtk[1476]" -type "float2" -0.070896171 0.72668576 ;
	setAttr ".uvtk[1478]" -type "float2" -0.070896156 0.72668576 ;
	setAttr ".uvtk[1480]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1482]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1484]" -type "float2" -0.070896186 0.72668576 ;
	setAttr ".uvtk[1510]" -type "float2" -0.070896126 0.72668576 ;
	setAttr ".uvtk[1535]" -type "float2" 0.11574444 1.6996648 ;
	setAttr ".uvtk[1583]" -type "float2" 0.11574456 1.6996648 ;
createNode substanceNode -n "barrel_wraps";
	rename -uid "395D78BA-3540-38D7-20AE-9DADDBBC29E1";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_steel_color_variation" -ln "input_steel_color_variation" 
		-nn "Steel Color Variation" -ct "substance_input" -dv 0.50999999046325684 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_steel_color_irregularities" 
		-ln "input_steel_color_irregularities" -nn "Steel Color Irregularities" -ct "substance_input" 
		-dv 0.34000000357627869 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_steel_roughness" -ln "input_steel_roughness" 
		-nn "Steel Roughness" -ct "substance_input" -dv 0.14499999582767487 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_steel_roughness_variation" 
		-ln "input_steel_roughness_variation" -nn "Steel Roughness Variation" -ct "substance_input" 
		-smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_dirt" -ln "input_dirt" -nn "Dirt" 
		-ct "substance_input" -dv 0.43000000715255737 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_oxidation" -ln "input_oxidation" 
		-nn "Oxidation" -ct "substance_input" -dv 0.43000000715255737 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches" -ln "input_scratches" 
		-nn "Scratches" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_intensity" -ln "input_scratches_intensity" 
		-nn "Scratches Intensity" -ct "substance_input" -dv 0.30000001192092896 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_relief_variation" -ln "input_relief_variation" 
		-nn "Relief Variation" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_polish_roughness" -ln "input_polish_roughness" 
		-nn "Polish Roughness" -ct "substance_input" -dv 0.40000000596046448 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_erase_stain" -ln "input_erase_stain" 
		-nn "Erase Stain" -ct "substance_input" -dv 0.17000000178813934 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_base_color_lightness" -ln "input_base_color_lightness" 
		-nn "Base Color Lightness" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratch_intensity" -ln "input_scratch_intensity" 
		-nn "Scratch Intensity" -ct "substance_input" -dv 0.25 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratch_density" -ln "input_scratch_density" 
		-nn "Scratch Density" -ct "substance_input" -dv 0.23000000417232513 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_use_mask_input" -ln "input_use_mask_input" 
		-nn "Use Mask Input" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -k true -sn "input_mask_input" -ln "input_mask_input" 
		-nn "Mask Input" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -k true -sn "input_mask_inputr" -ln "input_mask_inputR" 
		-dv 4.2038953929744512e-45 -smn 0 -smx 0 -at "float" -p "input_mask_input";
	addAttr -r false -ci true -k true -sn "input_mask_inputg" -ln "input_mask_inputG" 
		-smn 0 -smx 2.7550648847397363e-40 -at "float" -p "input_mask_input";
	addAttr -r false -ci true -k true -sn "input_mask_inputb" -ln "input_mask_inputB" 
		-smn 0 -smx 1.4012984643248171e-45 -at "float" -p "input_mask_input";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	setAttr ".sbs" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/steel_polished.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://steel_polished\" label=\"Rusty Steel Polished\" >\n  <presetinput identifier=\"steel_color_variation\" uid=\"1462828604\" type=\"0\" value=\"0.51\" />\n  <presetinput identifier=\"steel_color_irregularities\" uid=\"1462828606\" type=\"0\" value=\"0.34\" />\n  <presetinput identifier=\"steel_roughness\" uid=\"1462828600\" type=\"0\" value=\"0.09\" />\n  <presetinput identifier=\"steel_roughness_variation\" uid=\"1462828602\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"dirt\" uid=\"1462828580\" type=\"0\" value=\"0.11\" />\n  <presetinput identifier=\"oxidation\" uid=\"1462828582\" type=\"0\" value=\"0.86\" />\n  <presetinput identifier=\"scratches\" uid=\"1462828576\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"1462828578\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"relief_variation\" uid=\"1462828588\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"polish_roughness\" uid=\"1462777112\" type=\"0\" value=\"0.06\" />\n  <presetinput identifier=\"erase_stain\" uid=\"1462777114\" type=\"0\" value=\"0.21\" />\n  <presetinput identifier=\"base_color_lightness\" uid=\"1462777092\" type=\"0\" value=\"0.65\" />\n  <presetinput identifier=\"scratch_intensity\" uid=\"1462777094\" type=\"0\" value=\"0.05\" />\n  <presetinput identifier=\"scratch_density\" uid=\"1462777088\" type=\"0\" value=\"0.23\" />\n  <presetinput identifier=\"use_mask_input\" uid=\"1462777090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1299391531\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1138629633\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1138629634\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1299391508\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1299391509\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1138629646\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1138629647\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1138629641\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1211978604\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"988054798\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1164004396\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"988054908\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"988054811\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"988117615\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1138626338\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1120237134\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1120237119\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1217817285\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://steel_polished\" label=\"Blurred Polish\" >\n  <presetinput identifier=\"steel_color_variation\" uid=\"1462828604\" type=\"0\" value=\"0.96\" />\n  <presetinput identifier=\"steel_color_irregularities\" uid=\"1462828606\" type=\"0\" value=\"0.73\" />\n  <presetinput identifier=\"steel_roughness\" uid=\"1462828600\" type=\"0\" value=\"0.34\" />\n  <presetinput identifier=\"steel_roughness_variation\" uid=\"1462828602\" type=\"0\" value=\"0.34\" />\n  <presetinput identifier=\"dirt\" uid=\"1462828580\" type=\"0\" value=\"0.85\" />\n  <presetinput identifier=\"oxidation\" uid=\"1462828582\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches\" uid=\"1462828576\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"1462828578\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"relief_variation\" uid=\"1462828588\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"polish_roughness\" uid=\"1462777112\" type=\"0\" value=\"0.52\" />\n  <presetinput identifier=\"erase_stain\" uid=\"1462777114\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"base_color_lightness\" uid=\"1462777092\" type=\"0\" value=\"0.21\" />\n  <presetinput identifier=\"scratch_intensity\" uid=\"1462777094\" type=\"0\" value=\"0.02\" />\n  <presetinput identifier=\"scratch_density\" uid=\"1462777088\" type=\"0\" value=\"0.23\" />\n  <presetinput identifier=\"use_mask_input\" uid=\"1462777090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1299391531\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1138629633\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1138629634\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1299391508\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1299391509\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1138629646\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1138629647\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1138629641\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1211978604\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"988054798\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1164004396\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"988054908\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"988054811\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"988117615\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1138626338\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1120237134\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1120237119\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1217817285\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://steel_polished\" label=\"Scratched Polish\" >\n  <presetinput identifier=\"steel_color_variation\" uid=\"1462828604\" type=\"0\" value=\"0.08\" />\n  <presetinput identifier=\"steel_color_irregularities\" uid=\"1462828606\" type=\"0\" value=\"0.25\" />\n  <presetinput identifier=\"steel_roughness\" uid=\"1462828600\" type=\"0\" value=\"0.22\" />\n  <presetinput identifier=\"steel_roughness_variation\" uid=\"1462828602\" type=\"0\" value=\"0.17\" />\n  <presetinput identifier=\"dirt\" uid=\"1462828580\" type=\"0\" value=\"0.47\" />\n  <presetinput identifier=\"oxidation\" uid=\"1462828582\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches\" uid=\"1462828576\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"1462828578\" type=\"0\" value=\"0.3\" />\n  <presetinput identifier=\"relief_variation\" uid=\"1462828588\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"polish_roughness\" uid=\"1462777112\" type=\"0\" value=\"0.29\" />\n  <presetinput identifier=\"erase_stain\" uid=\"1462777114\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"base_color_lightness\" uid=\"1462777092\" type=\"0\" value=\"0.52\" />\n  <presetinput identifier=\"scratch_intensity\" uid=\"1462777094\" type=\"0\" value=\"0.24\" />\n  <presetinput identifier=\"scratch_density\" uid=\"1462777088\" type=\"0\" value=\"0.68\" />\n  <presetinput identifier=\"use_mask_input\" uid=\"1462777090\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1299391531\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1138629633\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1138629634\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1299391508\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1299391509\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1138629646\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1138629647\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1138629641\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1211978604\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"988054798\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1164004396\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"988054908\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"988054811\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"988117615\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1138626338\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1120237134\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1120237119\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1217817285\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture11";
	rename -uid "CBDE9A6C-4B42-B048-3CEF-E6B7404069CC";
createNode substanceOutputNode -n "Steel_Polished_basecolor";
	rename -uid "28B67DB8-734B-6A61-1445-8C86BC28B44A";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Steel_Polished_basecolor.png";
createNode file -n "file27";
	rename -uid "A53C5FD4-D240-89B3-275D-9DB1E9E9123B";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Polished_ambientocclusion";
	rename -uid "A79D0D49-1146-0FF2-BE71-539E070DED6E";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Steel_Polished_ambientocclusion.exr";
createNode file -n "file28";
	rename -uid "E3F56827-5547-2144-2DC2-3FAB6A5F65E4";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Polished_metallic";
	rename -uid "67983437-3145-E5E7-6226-E1AEE392DD34";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Steel_Polished_metallic.png";
createNode file -n "file29";
	rename -uid "873A2375-6745-AD24-6E85-F7A3D6E5BD92";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Polished_normal";
	rename -uid "DCC7DDBA-F942-BECD-5EA1-F38A59BAF1A3";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Steel_Polished_normal.exr";
createNode file -n "file30";
	rename -uid "5D96FA72-A546-7923-E9E7-528F5B5D9ADB";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Polished_height";
	rename -uid "6AFF8E6C-D241-A3DC-0D3C-A595F09C43B8";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Steel_Polished_height.exr";
createNode file -n "file31";
	rename -uid "C74A8485-874F-F244-2ACF-8192FD24ADB2";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Steel_Polished_roughness";
	rename -uid "B6372DDB-5A4C-0809-8F93-B58F24C438FD";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Steel_Polished_roughness.png";
createNode file -n "file32";
	rename -uid "00BCC0C6-6844-CF2D-72A9-98AB801E17B8";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide4";
	rename -uid "CB65045E-6D4A-B064-1C96-D39B2D968AC1";
createNode aiStandardSurface -n "barrel_wraps1";
	rename -uid "1DC6C581-654D-415B-F5AD-CC9F5BD23F0C";
	setAttr ".specular" 0;
	setAttr ".specular_IOR" 3;
	setAttr ".specular_anisotropy" 0.32800000905990601;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set5";
	rename -uid "8D311BB1-E449-77A7-85A1-11B65063EA27";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo5";
	rename -uid "C4441456-F144-0107-2339-6984AE7BFB0D";
createNode bump2d -n "bump2d7";
	rename -uid "4C302F81-D74E-BF85-18F6-29A6C69DDA11";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader3";
	rename -uid "956A672C-3A4C-7135-0EF4-23BB3FECAC66";
createNode groupId -n "groupId1";
	rename -uid "A837F0B6-BA48-2F8F-E8FE-358E4C0173FF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "27A6BEC8-CE4C-0BD2-B3F2-3390807B780D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:767]" "f[912:1079]";
	setAttr ".irc" -type "componentList" 1 "f[768:911]";
createNode groupId -n "groupId2";
	rename -uid "0EE54926-0543-FAB9-A3B3-2A81B55E2393";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "CDFEF2E0-EF45-A223-70BE-B291AAF54B74";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "87347D70-0E4B-7F8F-F8C8-A497C6163996";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[768:911]";
createNode groupId -n "groupId4";
	rename -uid "48B42D80-FA4A-5086-A879-4893732A72E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "21CB099A-0F4A-F7EE-A1CA-B698E6CBCD7C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[13:31]" "f[38:109]";
	setAttr ".irc" -type "componentList" 2 "f[0:12]" "f[32:37]";
createNode groupId -n "groupId5";
	rename -uid "1B8992C0-5349-ECE8-BAAE-F2B106829AF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "0C8DE052-A64F-44DE-056E-76AEF76FAF42";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "B1A4BD5B-9041-67B0-0C7B-E78D780B6552";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:12]" "f[32:37]";
createNode aiPhysicalSky -n "aiPhysicalSky1";
	rename -uid "0B01738A-554F-EC43-8E1A-43BE361C4DEE";
createNode substanceNode -n "stool_seat";
	rename -uid "69A96C4A-FD45-2E7B-D1C1-88B81F3A7EC5";
	addAttr -r false -ci true -h true -k true -sn "input_randomseed" -ln "input_randomseed" 
		-nn "$randomseed" -ct "substance_input" -smn 0 -smx 2147483647 -at "long";
	addAttr -r false -ci true -uac -h true -k true -sn "input_wood_color" -ln "input_wood_color" 
		-nn "Wood Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorr" -ln "input_wood_colorR" 
		-dv 0.80000001192092896 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorg" -ln "input_wood_colorG" 
		-dv 0.60103702545166016 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_wood_colorb" -ln "input_wood_colorB" 
		-dv 0.37365299463272095 -smn 0 -smx 0 -at "float" -p "input_wood_color";
	addAttr -r false -ci true -h true -k true -sn "input_knots_intensity" -ln "input_knots_intensity" 
		-nn "Knots Intensity" -ct "substance_input" -dv 0.31000000238418579 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_fibers_variations" -ln "input_fibers_variations" 
		-nn "Fibers Variations" -ct "substance_input" -dv 0.25 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_small_fibers_intensity" -ln "input_small_fibers_intensity" 
		-nn "Small Fibers Intensity" -ct "substance_input" -dv 0.87000000476837158 -smn 0 
		-smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_rotate_90" -ln "input_rotate_90" 
		-nn "Rotate 90" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_uniformity" -ln "input_varnish_uniformity" 
		-nn "Varnish Uniformity" -ct "substance_input" -dv 0.37999999523162842 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_color_intensity" -ln "input_varnish_color_intensity" 
		-nn "Varnish Color Intensity" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_varnish_color" -ln "input_varnish_color" 
		-nn "Varnish Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_varnish_colorr" -ln "input_varnish_colorR" 
		-dv 0.86206901073455811 -smn 0 -smx 0 -at "float" -p "input_varnish_color";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_colorg" -ln "input_varnish_colorG" 
		-dv 0.33437898755073547 -smn 0 -smx 0 -at "float" -p "input_varnish_color";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_colorb" -ln "input_varnish_colorB" 
		-dv 0.096919000148773193 -smn 0 -smx 0 -at "float" -p "input_varnish_color";
	addAttr -r false -ci true -h true -k true -sn "input_varnish_roughness" -ln "input_varnish_roughness" 
		-nn "Varnish Roughness" -ct "substance_input" -dv 0.11999999731779099 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_fibers_roughness_intensity" 
		-ln "input_fibers_roughness_intensity" -nn "Fibers Roughness Intensity" -ct "substance_input" 
		-dv 0.11999999731779099 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_invert_fibers_mask" -ln "input_invert_fibers_mask" 
		-nn "Invert Fibers Mask" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_normal_fibers_intensity" -ln "input_normal_fibers_intensity" 
		-nn "Normal Fibers Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_fibers_orientation_variations" 
		-ln "input_normal_fibers_orientation_variations" -nn "Normal Fibers Orientation Variations" 
		-ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_fibers_rotation_varnish" -ln "input_fibers_rotation_varnish" 
		-nn "Fibers Rotation Varnish" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_intensity" -ln "input_scratches_intensity" 
		-nn "Scratches Intensity" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -uac -h true -k true -sn "input_scratches_color" -ln "input_scratches_color" 
		-nn "Scratches Color" -ct "substance_input" -at "float3" -nc 3;
	addAttr -r false -ci true -h true -k true -sn "input_scratches_colorr" -ln "input_scratches_colorR" 
		-dv 0.83137297630310059 -smn 0 -smx 0 -at "float" -p "input_scratches_color";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_colorg" -ln "input_scratches_colorG" 
		-dv 0.68627500534057617 -smn 0 -smx 0 -at "float" -p "input_scratches_color";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_colorb" -ln "input_scratches_colorB" 
		-dv 0.50980401039123535 -smn 0 -smx 0 -at "float" -p "input_scratches_color";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_color_opacity" -ln "input_scratches_color_opacity" 
		-nn "Scratches Color Opacity" -ct "substance_input" -dv 0.15000000596046448 -smn 
		0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_roughness" -ln "input_scratches_roughness" 
		-nn "Scratches Roughness" -ct "substance_input" -dv 0.75 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_scale" -ln "input_scratches_scale" 
		-nn "Scratches Scale" -ct "substance_input" -dv 0.56000000238418579 -smn 0 -smx 1 
		-at "float";
	addAttr -r false -ci true -h true -k true -sn "input_scratches_density" -ln "input_scratches_density" 
		-nn "Scratches Density" -ct "substance_input" -dv 0.40000000596046448 -smn 0 -smx 
		1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_blend_intensity" -ln "input_normal_blend_intensity" 
		-nn "Normal Blend Intensity" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_blend_format" -ln "input_normal_blend_format" 
		-nn "Normal Blend Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_channel_diffuse" -ln "input_channel_diffuse" 
		-nn "Diffuse" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_basecolor" -ln "input_channel_basecolor" 
		-nn "Base Color" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_normal" -ln "input_channel_normal" 
		-nn "Normal" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_specular" -ln "input_channel_specular" 
		-nn "Specular" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_glossiness" -ln "input_channel_glossiness" 
		-nn "Glossiness" -ct "substance_input" -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_roughness" -ln "input_channel_roughness" 
		-nn "Roughness" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_metallic" -ln "input_channel_metallic" 
		-nn "Metallic" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_height" -ln "input_channel_height" 
		-nn "Height" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_channel_ambientocclusion" -ln "input_channel_ambientocclusion" 
		-nn "Ambient Occlusion" -ct "substance_input" -dv 1 -min 0 -max 1 -smn 0 -smx 0 -at "bool";
	addAttr -r false -ci true -h true -k true -sn "input_luminosity" -ln "input_luminosity" 
		-nn "Luminosity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_contrast" -ln "input_contrast" 
		-nn "Contrast" -ct "substance_input" -smn -1 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_hue_shift" -ln "input_hue_shift" 
		-nn "Hue Shift" -ct "substance_input" -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_saturation" -ln "input_saturation" 
		-nn "Saturation" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_intensity" -ln "input_normal_intensity" 
		-nn "Normal Intensity" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_normal_format" -ln "input_normal_format" 
		-nn "Normal Format" -ct "substance_input" -smn 0 -smx 0 -at "long";
	addAttr -r false -ci true -h true -k true -sn "input_height_range" -ln "input_height_range" 
		-nn "Height Range" -ct "substance_input" -dv 1 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_height_position" -ln "input_height_position" 
		-nn "Height Position" -ct "substance_input" -dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -r false -ci true -h true -k true -sn "input_ambientocclusion_intensity" 
		-ln "input_ambientocclusion_intensity" -nn "Ambient Occlusion Intensity" -ct "substance_input" 
		-dv 0.5 -smn 0 -smx 1 -at "float";
	addAttr -ci true -h true -sn "output_basecolor" -ln "output_basecolor" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_ambientocclusion" -ln "output_ambientocclusion" 
		-ct "substance_output" -dt "string";
	addAttr -ci true -h true -sn "output_metallic" -ln "output_metallic" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_normal" -ln "output_normal" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_height" -ln "output_height" -ct "substance_output" 
		-dt "string";
	addAttr -ci true -h true -sn "output_roughness" -ln "output_roughness" -ct "substance_output" 
		-dt "string";
	setAttr ".sbs" -type "string" "/Users/owynnarmstrong/Desktop/substance materials/bamboo_wood_varnished.sbsar";
	setAttr ".ctd" yes;
	setAttr ".wkfl" -type "string" "Arnold";
	setAttr ".storedHeight" 9;
	setAttr ".pst" -type "stringArray" 1 "<sbspresets formatversion=\"1.1\" count=\"3\" >\n <sbspreset pkgurl=\"pkg://bamboo_wood_varnished\" label=\"Matt Varnished Bamboo\" >\n  <presetinput identifier=\"wood_color\" uid=\"1530916983\" type=\"2\" value=\"0.697436,0.510338,0.296515\" />\n  <presetinput identifier=\"\" uid=\"1530916981\" type=\"65535\" value=\"0.69\" />\n  <presetinput identifier=\"knots_intensity\" uid=\"1530916979\" type=\"0\" value=\"0.82\" />\n  <presetinput identifier=\"fibers_variations\" uid=\"1530916977\" type=\"0\" value=\"0.79\" />\n  <presetinput identifier=\"small_fibers_intensity\" uid=\"1530916975\" type=\"0\" value=\"0.26\" />\n  <presetinput identifier=\"rotate_90\" uid=\"1530916973\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"varnish_uniformity\" uid=\"1530916963\" type=\"0\" value=\"0.08\" />\n  <presetinput identifier=\"varnish_color_intensity\" uid=\"1530916961\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"varnish_color\" uid=\"1530916959\" type=\"2\" value=\"0.862069,0.334379,0.096919\" />\n  <presetinput identifier=\"varnish_roughness\" uid=\"1530916957\" type=\"0\" value=\"0.45\" />\n  <presetinput identifier=\"fibers_roughness_intensity\" uid=\"1530916955\" type=\"0\" value=\"0.44\" />\n  <presetinput identifier=\"invert_fibers_mask\" uid=\"1530916953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"normal_fibers_intensity\" uid=\"1530916951\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_fibers_orientation_variations\" uid=\"1530916949\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"fibers_rotation_varnish\" uid=\"1530916947\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"1530916945\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_color\" uid=\"1530916943\" type=\"2\" value=\"0.831373,0.686275,0.509804\" />\n  <presetinput identifier=\"scratches_color_opacity\" uid=\"1530916941\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"scratches_roughness\" uid=\"1530916939\" type=\"0\" value=\"0.75\" />\n  <presetinput identifier=\"scratches_scale\" uid=\"1530916937\" type=\"0\" value=\"0.56\" />\n  <presetinput identifier=\"scratches_density\" uid=\"1530916935\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"normal_blend_intensity\" uid=\"1530916933\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"normal_blend_format\" uid=\"1530916931\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1103611873\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1332412363\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1332412360\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1103611870\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1103611871\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1332412356\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1332412357\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1332412355\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1149874342\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"911238852\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1238740966\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"911238838\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"911238865\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"911317413\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1332407528\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1316066692\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1316066805\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1143113999\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://bamboo_wood_varnished\" label=\"Lacquered Bamboo\" >\n  <presetinput identifier=\"wood_color\" uid=\"1530916983\" type=\"2\" value=\"0.553846,0.436222,0.301796\" />\n  <presetinput identifier=\"\" uid=\"1530916981\" type=\"65535\" value=\"0.05\" />\n  <presetinput identifier=\"knots_intensity\" uid=\"1530916979\" type=\"0\" value=\"0.11\" />\n  <presetinput identifier=\"fibers_variations\" uid=\"1530916977\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"small_fibers_intensity\" uid=\"1530916975\" type=\"0\" value=\"0.8\" />\n  <presetinput identifier=\"rotate_90\" uid=\"1530916973\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"varnish_uniformity\" uid=\"1530916963\" type=\"0\" value=\"0.96\" />\n  <presetinput identifier=\"varnish_color_intensity\" uid=\"1530916961\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"varnish_color\" uid=\"1530916959\" type=\"2\" value=\"0.862069,0.334379,0.096919\" />\n  <presetinput identifier=\"varnish_roughness\" uid=\"1530916957\" type=\"0\" value=\"0.07\" />\n  <presetinput identifier=\"fibers_roughness_intensity\" uid=\"1530916955\" type=\"0\" value=\"0.6\" />\n  <presetinput identifier=\"invert_fibers_mask\" uid=\"1530916953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"normal_fibers_intensity\" uid=\"1530916951\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_fibers_orientation_variations\" uid=\"1530916949\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"fibers_rotation_varnish\" uid=\"1530916947\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"1530916945\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"scratches_color\" uid=\"1530916943\" type=\"2\" value=\"0.831373,0.686275,0.509804\" />\n  <presetinput identifier=\"scratches_color_opacity\" uid=\"1530916941\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"scratches_roughness\" uid=\"1530916939\" type=\"0\" value=\"0.75\" />\n  <presetinput identifier=\"scratches_scale\" uid=\"1530916937\" type=\"0\" value=\"0.56\" />\n  <presetinput identifier=\"scratches_density\" uid=\"1530916935\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"normal_blend_intensity\" uid=\"1530916933\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"normal_blend_format\" uid=\"1530916931\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1103611873\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1332412363\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1332412360\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1103611870\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1103611871\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1332412356\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1332412357\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1332412355\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1149874342\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"911238852\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1238740966\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"911238838\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"911238865\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"911317413\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1332407528\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1316066692\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1316066805\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1143113999\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n <sbspreset pkgurl=\"pkg://bamboo_wood_varnished\" label=\"Satin Varnished Bamboo\" >\n  <presetinput identifier=\"wood_color\" uid=\"1530916983\" type=\"2\" value=\"0.758974,0.60627,0.431752\" />\n  <presetinput identifier=\"\" uid=\"1530916981\" type=\"65535\" value=\"0.69\" />\n  <presetinput identifier=\"knots_intensity\" uid=\"1530916979\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"fibers_variations\" uid=\"1530916977\" type=\"0\" value=\"0.25\" />\n  <presetinput identifier=\"small_fibers_intensity\" uid=\"1530916975\" type=\"0\" value=\"0.26\" />\n  <presetinput identifier=\"rotate_90\" uid=\"1530916973\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"varnish_uniformity\" uid=\"1530916963\" type=\"0\" value=\"0.46\" />\n  <presetinput identifier=\"varnish_color_intensity\" uid=\"1530916961\" type=\"0\" value=\"0.12\" />\n  <presetinput identifier=\"varnish_color\" uid=\"1530916959\" type=\"2\" value=\"0.862069,0.334379,0.096919\" />\n  <presetinput identifier=\"varnish_roughness\" uid=\"1530916957\" type=\"0\" value=\"0.23\" />\n  <presetinput identifier=\"fibers_roughness_intensity\" uid=\"1530916955\" type=\"0\" value=\"0.49\" />\n  <presetinput identifier=\"invert_fibers_mask\" uid=\"1530916953\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"normal_fibers_intensity\" uid=\"1530916951\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_fibers_orientation_variations\" uid=\"1530916949\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"fibers_rotation_varnish\" uid=\"1530916947\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_intensity\" uid=\"1530916945\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"scratches_color\" uid=\"1530916943\" type=\"2\" value=\"0.831373,0.686275,0.509804\" />\n  <presetinput identifier=\"scratches_color_opacity\" uid=\"1530916941\" type=\"0\" value=\"0.15\" />\n  <presetinput identifier=\"scratches_roughness\" uid=\"1530916939\" type=\"0\" value=\"0.75\" />\n  <presetinput identifier=\"scratches_scale\" uid=\"1530916937\" type=\"0\" value=\"0.56\" />\n  <presetinput identifier=\"scratches_density\" uid=\"1530916935\" type=\"0\" value=\"0.4\" />\n  <presetinput identifier=\"normal_blend_intensity\" uid=\"1530916933\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"normal_blend_format\" uid=\"1530916931\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_diffuse\" uid=\"1103611873\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_basecolor\" uid=\"1332412363\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_normal\" uid=\"1332412360\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_specular\" uid=\"1103611870\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_glossiness\" uid=\"1103611871\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"channel_roughness\" uid=\"1332412356\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_metallic\" uid=\"1332412357\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_height\" uid=\"1332412355\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"channel_ambientocclusion\" uid=\"1149874342\" type=\"4\" value=\"1\" />\n  <presetinput identifier=\"luminosity\" uid=\"911238852\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"contrast\" uid=\"1238740966\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"hue_shift\" uid=\"911238838\" type=\"0\" value=\"0\" />\n  <presetinput identifier=\"saturation\" uid=\"911238865\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_intensity\" uid=\"911317413\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"normal_format\" uid=\"1332407528\" type=\"4\" value=\"0\" />\n  <presetinput identifier=\"height_range\" uid=\"1316066692\" type=\"0\" value=\"1\" />\n  <presetinput identifier=\"height_position\" uid=\"1316066805\" type=\"0\" value=\"0.5\" />\n  <presetinput identifier=\"ambientocclusion_intensity\" uid=\"1143113999\" type=\"0\" value=\"0.5\" />\n </sbspreset>\n</sbspresets>\n"  ;
createNode place2dTexture -n "place2dTexture12";
	rename -uid "09950E8B-FB4A-8075-E64C-77BFCAE127BA";
createNode substanceOutputNode -n "Bamboo_Wood_Varnished_basecolor";
	rename -uid "72DD6F29-8048-6E36-BA30-0DB36408308C";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Bamboo_Wood_Varnished_basecolor.png";
createNode file -n "file33";
	rename -uid "2CE0E24C-A845-BBEB-4FE7-70AE7A688A12";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Bamboo_Wood_Varnished_ambientocclusion";
	rename -uid "6F3B6415-FF45-C1F9-1486-0FB6CCCA5C14";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Bamboo_Wood_Varnished_ambientocclusion.exr";
createNode file -n "file34";
	rename -uid "A44B14BD-854D-96FE-B0AD-E48FC9A7632C";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Bamboo_Wood_Varnished_metallic";
	rename -uid "166AF1CF-6844-6C01-9EEF-D0B2D50E308B";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Bamboo_Wood_Varnished_metallic.png";
createNode file -n "file35";
	rename -uid "609D8C83-A848-A45B-BAC9-B79947A4BC67";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Bamboo_Wood_Varnished_normal";
	rename -uid "F89E5842-EE4F-E3C3-073D-F68B4D6B7BEA";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Bamboo_Wood_Varnished_normal.exr";
createNode file -n "file36";
	rename -uid "6F171995-BA48-2107-8466-F49BABBC2CF4";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Bamboo_Wood_Varnished_height";
	rename -uid "A58C9B09-CA4E-DD41-2FE5-2A9D578FBAF3";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Bamboo_Wood_Varnished_height.exr";
createNode file -n "file37";
	rename -uid "1E7BBC43-DD49-47F6-3D01-2E9A5600F669";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode substanceOutputNode -n "Bamboo_Wood_Varnished_roughness";
	rename -uid "F91A06F4-5D44-7921-60CE-B9A05589DE4F";
	setAttr ".cpth" -type "string" "/Users/owynnarmstrong/Library/Preferences/Autodesk/maya/2023/substance/baked_images/Bamboo_Wood_Varnished_roughness.png";
createNode file -n "file38";
	rename -uid "CE572931-854D-A720-CCB6-FC8B9683A040";
	setAttr ".ail" yes;
	setAttr ".cs" -type "string" "Raw";
	setAttr ".ifr" yes;
createNode multiplyDivide -n "multiplyDivide5";
	rename -uid "60A66264-5E44-DDB9-0F96-FFB96976033F";
createNode aiStandardSurface -n "stool_seat1";
	rename -uid "2777C1B3-C84C-9F50-A508-AD9FCF1E0FB6";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set6";
	rename -uid "6F4B5B04-4543-E2C6-A884-33A11BE558F3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "D9E6C772-874E-5137-ED45-BA8508C5F9EC";
createNode bump2d -n "bump2d8";
	rename -uid "72CFBBB7-9C41-F2FD-09D6-C1B675730FCC";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode displacementShader -n "displacementShader4";
	rename -uid "3F8F783A-7B4F-D5F2-91A6-39AD5377CC8A";
createNode groupId -n "groupId7";
	rename -uid "E5682257-DC46-28EC-FBDD-95AEDE9CDA83";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "EFDB2456-CE4D-7EBB-ECAB-159924D23BCF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[6:53]";
	setAttr ".irc" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId8";
	rename -uid "77E8C499-C245-89F9-B605-9B8B404465F6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "131E4F7E-1B41-AB87-3DEF-38B0849B1BB8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "8C48B5FF-934C-20AE-23E9-03942FB4208D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "9D776B49-2F4A-1611-A540-51A982CFF9EF";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 1433.7098555659315 -6100.478073915313 ;
	setAttr ".tgi[0].vh" -type "double2" 2974.1465047529246 -4420.950079429269 ;
	setAttr -s 90 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 2011.4285888671875;
	setAttr ".tgi[0].ni[0].y" -4734.28564453125;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 1202.857177734375;
	setAttr ".tgi[0].ni[1].y" -3987.142822265625;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -552.85711669921875;
	setAttr ".tgi[0].ni[2].y" -1995.7142333984375;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -834.28570556640625;
	setAttr ".tgi[0].ni[3].y" -2017.142822265625;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -1254.2857666015625;
	setAttr ".tgi[0].ni[4].y" -2478.571533203125;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 1202.857177734375;
	setAttr ".tgi[0].ni[5].y" -4895.71435546875;
	setAttr ".tgi[0].ni[5].nvs" 2066;
	setAttr ".tgi[0].ni[6].x" 1535.7142333984375;
	setAttr ".tgi[0].ni[6].y" -1672.857177734375;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 1698.5714111328125;
	setAttr ".tgi[0].ni[7].y" -5405.71435546875;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -95.714286804199219;
	setAttr ".tgi[0].ni[8].y" -2634.28564453125;
	setAttr ".tgi[0].ni[8].nvs" 2659;
	setAttr ".tgi[0].ni[9].x" -925.71429443359375;
	setAttr ".tgi[0].ni[9].y" -1940;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -1254.2857666015625;
	setAttr ".tgi[0].ni[10].y" -2008.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 2555.71435546875;
	setAttr ".tgi[0].ni[11].y" -4901.4287109375;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" 1940;
	setAttr ".tgi[0].ni[12].y" -1611.4285888671875;
	setAttr ".tgi[0].ni[12].nvs" 2659;
	setAttr ".tgi[0].ni[13].x" 2414.28564453125;
	setAttr ".tgi[0].ni[13].y" 460;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 1202.857177734375;
	setAttr ".tgi[0].ni[14].y" -4287.14306640625;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" -1198.5714111328125;
	setAttr ".tgi[0].ni[15].y" -1990;
	setAttr ".tgi[0].ni[15].nvs" 2066;
	setAttr ".tgi[0].ni[16].x" 80;
	setAttr ".tgi[0].ni[16].y" -4470;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" 1202.857177734375;
	setAttr ".tgi[0].ni[17].y" -4452.85693359375;
	setAttr ".tgi[0].ni[17].nvs" 2066;
	setAttr ".tgi[0].ni[18].x" -670;
	setAttr ".tgi[0].ni[18].y" -3580;
	setAttr ".tgi[0].ni[18].nvs" 2098;
	setAttr ".tgi[0].ni[19].x" -1198.5714111328125;
	setAttr ".tgi[0].ni[19].y" -1547.142822265625;
	setAttr ".tgi[0].ni[19].nvs" 2066;
	setAttr ".tgi[0].ni[20].x" -440;
	setAttr ".tgi[0].ni[20].y" -2942.857177734375;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" 1535.7142333984375;
	setAttr ".tgi[0].ni[21].y" -1972.857177734375;
	setAttr ".tgi[0].ni[21].nvs" 2066;
	setAttr ".tgi[0].ni[22].x" -1190;
	setAttr ".tgi[0].ni[22].y" -2550;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" 1698.5714111328125;
	setAttr ".tgi[0].ni[23].y" -4912.85693359375;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" 672.85711669921875;
	setAttr ".tgi[0].ni[24].y" -1484.2857666015625;
	setAttr ".tgi[0].ni[24].nvs" 2066;
	setAttr ".tgi[0].ni[25].x" 710;
	setAttr ".tgi[0].ni[25].y" -3074.28564453125;
	setAttr ".tgi[0].ni[25].nvs" 2066;
	setAttr ".tgi[0].ni[26].x" -440;
	setAttr ".tgi[0].ni[26].y" -3435.71435546875;
	setAttr ".tgi[0].ni[26].nvs" 1923;
	setAttr ".tgi[0].ni[27].x" 1202.857177734375;
	setAttr ".tgi[0].ni[27].y" -5338.5712890625;
	setAttr ".tgi[0].ni[27].nvs" 2066;
	setAttr ".tgi[0].ni[28].x" 1940;
	setAttr ".tgi[0].ni[28].y" -945.71429443359375;
	setAttr ".tgi[0].ni[28].nvs" 2066;
	setAttr ".tgi[0].ni[29].x" -834.28570556640625;
	setAttr ".tgi[0].ni[29].y" -1851.4285888671875;
	setAttr ".tgi[0].ni[29].nvs" 1923;
	setAttr ".tgi[0].ni[30].x" 42.857143402099609;
	setAttr ".tgi[0].ni[30].y" -922.85711669921875;
	setAttr ".tgi[0].ni[30].nvs" 1923;
	setAttr ".tgi[0].ni[31].x" -440;
	setAttr ".tgi[0].ni[31].y" -2777.142822265625;
	setAttr ".tgi[0].ni[31].nvs" 1923;
	setAttr ".tgi[0].ni[32].x" 710;
	setAttr ".tgi[0].ni[32].y" -3517.142822265625;
	setAttr ".tgi[0].ni[32].nvs" 2066;
	setAttr ".tgi[0].ni[33].x" 2182.857177734375;
	setAttr ".tgi[0].ni[33].y" -4604.28564453125;
	setAttr ".tgi[0].ni[33].nvs" 2659;
	setAttr ".tgi[0].ni[34].x" -834.28570556640625;
	setAttr ".tgi[0].ni[34].y" -2482.857177734375;
	setAttr ".tgi[0].ni[34].nvs" 2066;
	setAttr ".tgi[0].ni[35].x" -834.28570556640625;
	setAttr ".tgi[0].ni[35].y" -2317.142822265625;
	setAttr ".tgi[0].ni[35].nvs" 1923;
	setAttr ".tgi[0].ni[36].x" 350;
	setAttr ".tgi[0].ni[36].y" -528.5714111328125;
	setAttr ".tgi[0].ni[36].nvs" 2098;
	setAttr ".tgi[0].ni[37].x" 2414.28564453125;
	setAttr ".tgi[0].ni[37].y" -1611.4285888671875;
	setAttr ".tgi[0].ni[37].nvs" 1923;
	setAttr ".tgi[0].ni[38].x" 1940;
	setAttr ".tgi[0].ni[38].y" -2225.71435546875;
	setAttr ".tgi[0].ni[38].nvs" 1923;
	setAttr ".tgi[0].ni[39].x" 1560;
	setAttr ".tgi[0].ni[39].y" -3990;
	setAttr ".tgi[0].ni[39].nvs" 2066;
	setAttr ".tgi[0].ni[40].x" 1940;
	setAttr ".tgi[0].ni[40].y" 692.85711669921875;
	setAttr ".tgi[0].ni[40].nvs" 2066;
	setAttr ".tgi[0].ni[41].x" -1924.2857666015625;
	setAttr ".tgi[0].ni[41].y" -2240;
	setAttr ".tgi[0].ni[41].nvs" 1923;
	setAttr ".tgi[0].ni[42].x" 2414.28564453125;
	setAttr ".tgi[0].ni[42].y" -95.714286804199219;
	setAttr ".tgi[0].ni[42].nvs" 1923;
	setAttr ".tgi[0].ni[43].x" 2182.857177734375;
	setAttr ".tgi[0].ni[43].y" -5238.5712890625;
	setAttr ".tgi[0].ni[43].nvs" 1923;
	setAttr ".tgi[0].ni[44].x" -1617.142822265625;
	setAttr ".tgi[0].ni[44].y" -2194.28564453125;
	setAttr ".tgi[0].ni[44].nvs" 1923;
	setAttr ".tgi[0].ni[45].x" 1087.142822265625;
	setAttr ".tgi[0].ni[45].y" -1695.7142333984375;
	setAttr ".tgi[0].ni[45].nvs" 1923;
	setAttr ".tgi[0].ni[46].x" -977.14288330078125;
	setAttr ".tgi[0].ni[46].y" -3745.71435546875;
	setAttr ".tgi[0].ni[46].nvs" 1923;
	setAttr ".tgi[0].ni[47].x" 2414.28564453125;
	setAttr ".tgi[0].ni[47].y" -2205.71435546875;
	setAttr ".tgi[0].ni[47].nvs" 1923;
	setAttr ".tgi[0].ni[48].x" 2414.28564453125;
	setAttr ".tgi[0].ni[48].y" -1178.5714111328125;
	setAttr ".tgi[0].ni[48].nvs" 1923;
	setAttr ".tgi[0].ni[49].x" -440;
	setAttr ".tgi[0].ni[49].y" -2300;
	setAttr ".tgi[0].ni[49].nvs" 1923;
	setAttr ".tgi[0].ni[50].x" 1698.5714111328125;
	setAttr ".tgi[0].ni[50].y" -4747.14306640625;
	setAttr ".tgi[0].ni[50].nvs" 1923;
	setAttr ".tgi[0].ni[51].x" -1521.4285888671875;
	setAttr ".tgi[0].ni[51].y" -2258.571533203125;
	setAttr ".tgi[0].ni[51].nvs" 2098;
	setAttr ".tgi[0].ni[52].x" 710;
	setAttr ".tgi[0].ni[52].y" -3960;
	setAttr ".tgi[0].ni[52].nvs" 2066;
	setAttr ".tgi[0].ni[53].x" 2414.28564453125;
	setAttr ".tgi[0].ni[53].y" -634.28570556640625;
	setAttr ".tgi[0].ni[53].nvs" 1923;
	setAttr ".tgi[0].ni[54].x" 1202.857177734375;
	setAttr ".tgi[0].ni[54].y" -3821.428466796875;
	setAttr ".tgi[0].ni[54].nvs" 1923;
	setAttr ".tgi[0].ni[55].x" -1945.7142333984375;
	setAttr ".tgi[0].ni[55].y" -2591.428466796875;
	setAttr ".tgi[0].ni[55].nvs" 1923;
	setAttr ".tgi[0].ni[56].x" -1198.5714111328125;
	setAttr ".tgi[0].ni[56].y" -1104.2857666015625;
	setAttr ".tgi[0].ni[56].nvs" 2066;
	setAttr ".tgi[0].ni[57].x" -440;
	setAttr ".tgi[0].ni[57].y" -2631.428466796875;
	setAttr ".tgi[0].ni[57].nvs" 1923;
	setAttr ".tgi[0].ni[58].x" 1698.5714111328125;
	setAttr ".tgi[0].ni[58].y" -4601.4287109375;
	setAttr ".tgi[0].ni[58].nvs" 1923;
	setAttr ".tgi[0].ni[59].x" 1698.5714111328125;
	setAttr ".tgi[0].ni[59].y" -4270;
	setAttr ".tgi[0].ni[59].nvs" 1923;
	setAttr ".tgi[0].ni[60].x" 1940;
	setAttr ".tgi[0].ni[60].y" -401.42855834960938;
	setAttr ".tgi[0].ni[60].nvs" 2066;
	setAttr ".tgi[0].ni[61].x" 277.14285278320312;
	setAttr ".tgi[0].ni[61].y" -2931.428466796875;
	setAttr ".tgi[0].ni[61].nvs" 1923;
	setAttr ".tgi[0].ni[62].x" -1617.142822265625;
	setAttr ".tgi[0].ni[62].y" -2360;
	setAttr ".tgi[0].ni[62].nvs" 1923;
	setAttr ".tgi[0].ni[63].x" 387.14285278320312;
	setAttr ".tgi[0].ni[63].y" -4205.71435546875;
	setAttr ".tgi[0].ni[63].nvs" 2098;
	setAttr ".tgi[0].ni[64].x" 2492.857177734375;
	setAttr ".tgi[0].ni[64].y" -5818.5712890625;
	setAttr ".tgi[0].ni[64].nvs" 1923;
	setAttr ".tgi[0].ni[65].x" 2011.4285888671875;
	setAttr ".tgi[0].ni[65].y" -5801.4287109375;
	setAttr ".tgi[0].ni[65].nvs" 2066;
	setAttr ".tgi[0].ni[66].x" 2011.4285888671875;
	setAttr ".tgi[0].ni[66].y" -4900;
	setAttr ".tgi[0].ni[66].nvs" 1923;
	setAttr ".tgi[0].ni[67].x" 1560;
	setAttr ".tgi[0].ni[67].y" -4875.71435546875;
	setAttr ".tgi[0].ni[67].nvs" 2066;
	setAttr ".tgi[0].ni[68].x" 2011.4285888671875;
	setAttr ".tgi[0].ni[68].y" -5192.85693359375;
	setAttr ".tgi[0].ni[68].nvs" 1923;
	setAttr ".tgi[0].ni[69].x" 2011.4285888671875;
	setAttr ".tgi[0].ni[69].y" -6244.28564453125;
	setAttr ".tgi[0].ni[69].nvs" 2066;
	setAttr ".tgi[0].ni[70].x" 2492.857177734375;
	setAttr ".tgi[0].ni[70].y" -6311.4287109375;
	setAttr ".tgi[0].ni[70].nvs" 1923;
	setAttr ".tgi[0].ni[71].x" 2011.4285888671875;
	setAttr ".tgi[0].ni[71].y" -5358.5712890625;
	setAttr ".tgi[0].ni[71].nvs" 2066;
	setAttr ".tgi[0].ni[72].x" 2492.857177734375;
	setAttr ".tgi[0].ni[72].y" -5652.85693359375;
	setAttr ".tgi[0].ni[72].nvs" 1923;
	setAttr ".tgi[0].ni[73].x" 2492.857177734375;
	setAttr ".tgi[0].ni[73].y" -5180;
	setAttr ".tgi[0].ni[73].nvs" 1923;
	setAttr ".tgi[0].ni[74].x" 2924.28564453125;
	setAttr ".tgi[0].ni[74].y" -5511.4287109375;
	setAttr ".tgi[0].ni[74].nvs" 2659;
	setAttr ".tgi[0].ni[75].x" 3297.142822265625;
	setAttr ".tgi[0].ni[75].y" -5808.5712890625;
	setAttr ".tgi[0].ni[75].nvs" 1923;
	setAttr ".tgi[0].ni[76].x" 2492.857177734375;
	setAttr ".tgi[0].ni[76].y" -5507.14306640625;
	setAttr ".tgi[0].ni[76].nvs" 1923;
	setAttr ".tgi[0].ni[77].x" 2924.28564453125;
	setAttr ".tgi[0].ni[77].y" -6145.71435546875;
	setAttr ".tgi[0].ni[77].nvs" 1923;
	setAttr ".tgi[0].ni[78].x" -1828.5714111328125;
	setAttr ".tgi[0].ni[78].y" -2528.571533203125;
	setAttr ".tgi[0].ni[78].nvs" 1923;
	setAttr ".tgi[0].ni[79].x" -95.714286804199219;
	setAttr ".tgi[0].ni[79].y" -3268.571533203125;
	setAttr ".tgi[0].ni[79].nvs" 1923;
	setAttr ".tgi[0].ni[80].x" -510;
	setAttr ".tgi[0].ni[80].y" -2081.428466796875;
	setAttr ".tgi[0].ni[80].nvs" 1923;
	setAttr ".tgi[0].ni[81].x" -925.71429443359375;
	setAttr ".tgi[0].ni[81].y" -2105.71435546875;
	setAttr ".tgi[0].ni[81].nvs" 2659;
	setAttr ".tgi[0].ni[82].x" -834.28570556640625;
	setAttr ".tgi[0].ni[82].y" -3368.571533203125;
	setAttr ".tgi[0].ni[82].nvs" 2066;
	setAttr ".tgi[0].ni[83].x" 1940;
	setAttr ".tgi[0].ni[83].y" 137.14285278320312;
	setAttr ".tgi[0].ni[83].nvs" 2066;
	setAttr ".tgi[0].ni[84].x" -1254.2857666015625;
	setAttr ".tgi[0].ni[84].y" -2174.28564453125;
	setAttr ".tgi[0].ni[84].nvs" 1923;
	setAttr ".tgi[0].ni[85].x" -1638.5714111328125;
	setAttr ".tgi[0].ni[85].y" -2570;
	setAttr ".tgi[0].ni[85].nvs" 1923;
	setAttr ".tgi[0].ni[86].x" 930;
	setAttr ".tgi[0].ni[86].y" -5262.85693359375;
	setAttr ".tgi[0].ni[86].nvs" 1923;
	setAttr ".tgi[0].ni[87].x" 1560;
	setAttr ".tgi[0].ni[87].y" -4432.85693359375;
	setAttr ".tgi[0].ni[87].nvs" 2066;
	setAttr ".tgi[0].ni[88].x" -834.28570556640625;
	setAttr ".tgi[0].ni[88].y" -2925.71435546875;
	setAttr ".tgi[0].ni[88].nvs" 2066;
	setAttr ".tgi[0].ni[89].x" 1237.142822265625;
	setAttr ".tgi[0].ni[89].y" -5134.28564453125;
	setAttr ".tgi[0].ni[89].nvs" 2098;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 95;
	setAttr -av -k on ".unw" 95;
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
	setAttr -s 16 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 24 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :defaultTextureList1;
	setAttr -s 69 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
	setAttr -s 2 ".gn";
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
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
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
	setAttr -s 4 ".sol";
connectAttr ":time1.o" "owynnarmstrong__dev__asteroid__1_01.inTime";
connectAttr "owynnarmstrong__dev__asteroid__1_01.outputObjects[0].outputObjectTranslate" "asteroid1.t"
		;
connectAttr "owynnarmstrong__dev__asteroid__1_01.outputObjects[0].outputObjectRotate" "asteroid1.r"
		;
connectAttr "owynnarmstrong__dev__asteroid__1_01.outputObjects[0].outputObjectScale" "asteroid1.s"
		;
connectAttr "polyTweakUV2.out" "mountain1_0Shape.i";
connectAttr "polyTweakUV2.uvtk[0]" "mountain1_0Shape.uvst[0].uvtw";
connectAttr ":time1.o" "owynnarmstrong__dev__barrel__1_01.inTime";
connectAttr "owynnarmstrong__dev__barrel__1_01.outputObjects[0].outputObjectTranslate" "barrel1.t"
		;
connectAttr "owynnarmstrong__dev__barrel__1_01.outputObjects[0].outputObjectRotate" "barrel1.r"
		;
connectAttr "owynnarmstrong__dev__barrel__1_01.outputObjects[0].outputObjectScale" "barrel1.s"
		;
connectAttr "polyextrude9_0_translateX.o" "polyextrude9_0.tx";
connectAttr "polyextrude9_0_translateY.o" "polyextrude9_0.ty";
connectAttr "polyextrude9_0_translateZ.o" "polyextrude9_0.tz";
connectAttr "polyextrude9_0_visibility.o" "polyextrude9_0.v";
connectAttr "polyextrude9_0_rotateX.o" "polyextrude9_0.rx";
connectAttr "polyextrude9_0_rotateY.o" "polyextrude9_0.ry";
connectAttr "polyextrude9_0_rotateZ.o" "polyextrude9_0.rz";
connectAttr "polyextrude9_0_scaleX.o" "polyextrude9_0.sx";
connectAttr "polyextrude9_0_scaleY.o" "polyextrude9_0.sy";
connectAttr "polyextrude9_0_scaleZ.o" "polyextrude9_0.sz";
connectAttr "groupParts2.og" "polyextrude9_0Shape.i";
connectAttr "polyTweakUV138.uvtk[0]" "polyextrude9_0Shape.uvst[0].uvtw";
connectAttr "groupId1.id" "polyextrude9_0Shape.iog.og[0].gid";
connectAttr "set2.mwc" "polyextrude9_0Shape.iog.og[0].gco";
connectAttr "groupId3.id" "polyextrude9_0Shape.iog.og[1].gid";
connectAttr "set5.mwc" "polyextrude9_0Shape.iog.og[1].gco";
connectAttr "groupId2.id" "polyextrude9_0Shape.ciog.cog[0].cgid";
connectAttr ":time1.o" "owynnarmstrong__dev__crate__1_01.inTime";
connectAttr "owynnarmstrong__dev__crate__1_01.outputObjects[0].outputObjectTranslate" "crate1.t"
		;
connectAttr "owynnarmstrong__dev__crate__1_01.outputObjects[0].outputObjectRotate" "crate1.r"
		;
connectAttr "owynnarmstrong__dev__crate__1_01.outputObjects[0].outputObjectScale" "crate1.s"
		;
connectAttr "polyTweakUV56.out" "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.i"
		;
connectAttr "polyTweakUV56.uvtk[0]" "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.uvst[0].uvtw"
		;
connectAttr ":time1.o" "owynnarmstrong__dev__table__1_01.inTime";
connectAttr "owynnarmstrong__dev__table__1_01.outputObjects[0].outputObjectTranslate" "table1.t"
		;
connectAttr "owynnarmstrong__dev__table__1_01.outputObjects[0].outputObjectRotate" "table1.r"
		;
connectAttr "owynnarmstrong__dev__table__1_01.outputObjects[0].outputObjectScale" "table1.s"
		;
connectAttr "groupParts4.og" "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.i"
		;
connectAttr "polyTweakUV88.uvtk[0]" "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.uvst[0].uvtw"
		;
connectAttr "groupId4.id" "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.iog.og[0].gid"
		;
connectAttr "set5.mwc" "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.iog.og[1].gid"
		;
connectAttr "set2.mwc" "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.iog.og[1].gco"
		;
connectAttr "groupId5.id" "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.ciog.cog[0].cgid"
		;
connectAttr ":time1.o" "owynnarmstrong__dev__stool__1_01.inTime";
connectAttr "owynnarmstrong__dev__stool__1_01.outputObjects[0].outputObjectTranslate" "stool1.t"
		;
connectAttr "owynnarmstrong__dev__stool__1_01.outputObjects[0].outputObjectRotate" "stool1.r"
		;
connectAttr "owynnarmstrong__dev__stool__1_01.outputObjects[0].outputObjectScale" "stool1.s"
		;
connectAttr "groupParts6.og" "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.i"
		;
connectAttr "polyTweakUV134.uvtk[0]" "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.uvst[0].uvtw"
		;
connectAttr "groupId7.id" "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.iog.og[0].gid"
		;
connectAttr "set5.mwc" "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.iog.og[0].gco"
		;
connectAttr "groupId9.id" "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.iog.og[1].gid"
		;
connectAttr "set6.mwc" "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.iog.og[1].gco"
		;
connectAttr "groupId8.id" "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.ciog.cog[0].cgid"
		;
connectAttr "aiPhysicalSky1.out" "aiSkyDomeLightShape1.sc";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "crate_initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "crate_initialShadingGroup2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "crate_initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "crate_initialShadingGroup2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set6.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "owynnarmstrong__dev__asteroid__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "polyPlanarProj1.ip"
		;
connectAttr "mountain1_0Shape.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV2.ip";
connectAttr "owynnarmstrong__dev__barrel__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "polySoftEdge1.ip"
		;
connectAttr "polyextrude9_0Shape.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "polyextrude9_0Shape.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "polySoftEdge3.ip";
connectAttr "polyextrude9_0Shape.wm" "polySoftEdge3.mp";
connectAttr "polySoftEdge3.out" "polySoftEdge4.ip";
connectAttr "polyextrude9_0Shape.wm" "polySoftEdge4.mp";
connectAttr "polySoftEdge4.out" "polySoftEdge5.ip";
connectAttr "polyextrude9_0Shape.wm" "polySoftEdge5.mp";
connectAttr "polySoftEdge5.out" "polySoftEdge6.ip";
connectAttr "polyextrude9_0Shape.wm" "polySoftEdge6.mp";
connectAttr "polySoftEdge6.out" "polySoftEdge7.ip";
connectAttr "polyextrude9_0Shape.wm" "polySoftEdge7.mp";
connectAttr "polySoftEdge7.out" "polyPlanarProj2.ip";
connectAttr "polyextrude9_0Shape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyTweakUV10.ip";
connectAttr "owynnarmstrong__dev__crate__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "polySoftEdge8.ip"
		;
connectAttr "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.wm" "polySoftEdge8.mp"
		;
connectAttr "polyTweak1.out" "polyPlanarProj3.ip";
connectAttr "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.wm" "polyPlanarProj3.mp"
		;
connectAttr "polySoftEdge8.out" "polyTweak1.ip";
connectAttr "polyPlanarProj3.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyAutoProj1.ip";
connectAttr "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.wm" "polyAutoProj1.mp"
		;
connectAttr "polyAutoProj1.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyMapCut19.ip";
connectAttr "polyMapCut19.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapSew3.ip";
connectAttr "polyMapSew3.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapSew4.ip";
connectAttr "polyMapSew4.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyMapSew5.ip";
connectAttr "polyMapSew5.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapCut20.ip";
connectAttr "polyMapCut20.out" "polyMapSew6.ip";
connectAttr "polyMapSew6.out" "polyMapCut21.ip";
connectAttr "polyMapCut21.out" "polyMapSew7.ip";
connectAttr "polyMapSew7.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyAutoProj2.ip";
connectAttr "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.wm" "polyAutoProj2.mp"
		;
connectAttr "polyAutoProj2.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyMapCut22.ip";
connectAttr "polyMapCut22.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV20.out" "polyMapSew8.ip";
connectAttr "polyMapSew8.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyMapSew9.ip";
connectAttr "polyMapSew9.out" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyMapSew10.ip";
connectAttr "polyMapSew10.out" "polyTweakUV23.ip";
connectAttr "polyTweakUV23.out" "polyMapSew11.ip";
connectAttr "polyMapSew11.out" "polyTweakUV24.ip";
connectAttr "polyTweakUV24.out" "polyMapSew12.ip";
connectAttr "polyMapSew12.out" "polyTweakUV25.ip";
connectAttr "polyTweakUV25.out" "polyAutoProj3.ip";
connectAttr "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.wm" "polyAutoProj3.mp"
		;
connectAttr "polyAutoProj3.out" "polyMapSew13.ip";
connectAttr "polyMapSew13.out" "polyMapSew14.ip";
connectAttr "polyMapSew14.out" "polyTweakUV26.ip";
connectAttr "polyTweakUV26.out" "polyMapSew15.ip";
connectAttr "polyMapSew15.out" "polyTweakUV27.ip";
connectAttr "polyTweakUV27.out" "polyMapSew16.ip";
connectAttr "polyMapSew16.out" "polyMapSew17.ip";
connectAttr "polyMapSew17.out" "polyTweakUV28.ip";
connectAttr "polyTweakUV28.out" "polyAutoProj4.ip";
connectAttr "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.wm" "polyAutoProj4.mp"
		;
connectAttr "polyAutoProj4.out" "polyMapCut23.ip";
connectAttr "polyMapCut23.out" "polyMapSew18.ip";
connectAttr "polyMapSew18.out" "polyMapSew19.ip";
connectAttr "polyMapSew19.out" "polyTweakUV29.ip";
connectAttr "polyTweakUV29.out" "polyMapSew20.ip";
connectAttr "polyMapSew20.out" "polyTweakUV30.ip";
connectAttr "polyTweakUV30.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyTweakUV31.ip";
connectAttr "polyTweakUV31.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyTweakUV32.ip";
connectAttr "polyTweakUV32.out" "polyMapCut24.ip";
connectAttr "polyMapCut24.out" "polyMapCut25.ip";
connectAttr "polyMapCut25.out" "polyMapCut26.ip";
connectAttr "polyMapCut26.out" "polyMapCut27.ip";
connectAttr "polyMapCut27.out" "polyMapCut28.ip";
connectAttr "polyMapCut28.out" "polyAutoProj5.ip";
connectAttr "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.wm" "polyAutoProj5.mp"
		;
connectAttr "polyAutoProj5.out" "polyTweakUV33.ip";
connectAttr "polyTweakUV33.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyTweakUV34.ip";
connectAttr "polyTweakUV34.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyTweakUV35.ip";
connectAttr "polyTweakUV35.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyTweakUV36.ip";
connectAttr "polyTweakUV36.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV37.ip";
connectAttr "polyTweakUV37.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyMapSew21.ip";
connectAttr "polyMapSew21.out" "polyMapSew22.ip";
connectAttr "polyMapSew22.out" "polyTweakUV38.ip";
connectAttr "polyTweakUV38.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyTweakUV39.ip";
connectAttr "polyTweakUV39.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyTweakUV40.ip";
connectAttr "polyTweakUV40.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyTweakUV41.ip";
connectAttr "polyTweakUV41.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyTweakUV42.ip";
connectAttr "polyTweakUV42.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyTweakUV43.ip";
connectAttr "polyTweakUV43.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyTweakUV44.ip";
connectAttr "polyTweakUV44.out" "polyMapSewMove14.ip";
connectAttr "polyMapSewMove14.out" "polyTweakUV45.ip";
connectAttr "polyTweakUV45.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyTweakUV46.ip";
connectAttr "polyTweakUV46.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyTweakUV47.ip";
connectAttr "polyTweakUV47.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyTweakUV48.ip";
connectAttr "polyTweakUV48.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyTweakUV49.ip";
connectAttr "polyTweakUV49.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove19.out" "polyTweakUV50.ip";
connectAttr "polyTweakUV50.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove20.out" "polyTweakUV51.ip";
connectAttr "polyTweakUV51.out" "polyMapSewMove21.ip";
connectAttr "polyMapSewMove21.out" "polyTweakUV52.ip";
connectAttr "polyTweakUV52.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyTweakUV53.ip";
connectAttr "polyTweakUV53.out" "polyMapSewMove23.ip";
connectAttr "polyMapSewMove23.out" "polyTweakUV54.ip";
connectAttr "polyTweakUV54.out" "polyMapSewMove24.ip";
connectAttr "polyMapSewMove24.out" "polyTweakUV55.ip";
connectAttr "polyTweakUV55.out" "polyMapSewMove25.ip";
connectAttr "polyMapSewMove25.out" "polyTweakUV56.ip";
connectAttr "owynnarmstrong__dev__table__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "polySoftEdge9.ip"
		;
connectAttr "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.wm" "polySoftEdge9.mp"
		;
connectAttr "polySoftEdge9.out" "polySoftEdge10.ip";
connectAttr "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.wm" "polySoftEdge10.mp"
		;
connectAttr "polySoftEdge10.out" "polyAutoProj6.ip";
connectAttr "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.wm" "polyAutoProj6.mp"
		;
connectAttr "polyAutoProj6.out" "polyTweakUV57.ip";
connectAttr "polyTweakUV57.out" "polyMapSewMove26.ip";
connectAttr "polyMapSewMove26.out" "polyTweakUV58.ip";
connectAttr "polyTweakUV58.out" "polyMapSewMove27.ip";
connectAttr "polyMapSewMove27.out" "polyTweakUV59.ip";
connectAttr "polyTweakUV59.out" "polyMapSewMove28.ip";
connectAttr "polyMapSewMove28.out" "polyTweakUV60.ip";
connectAttr "polyTweakUV60.out" "polyMapSewMove29.ip";
connectAttr "polyMapSewMove29.out" "polyTweakUV61.ip";
connectAttr "polyTweakUV61.out" "polyMapSewMove30.ip";
connectAttr "polyMapSewMove30.out" "polyTweakUV62.ip";
connectAttr "polyTweakUV62.out" "polyMapSewMove31.ip";
connectAttr "polyMapSewMove31.out" "polyTweakUV63.ip";
connectAttr "polyTweakUV63.out" "polyMapSewMove32.ip";
connectAttr "polyMapSewMove32.out" "polyTweakUV64.ip";
connectAttr "polyTweakUV64.out" "polyMapSewMove33.ip";
connectAttr "polyMapSewMove33.out" "polyTweakUV65.ip";
connectAttr "polyTweakUV65.out" "polyMapSewMove34.ip";
connectAttr "polyMapSewMove34.out" "polyTweakUV66.ip";
connectAttr "polyTweakUV66.out" "polyMapSewMove35.ip";
connectAttr "polyMapSewMove35.out" "polyMapSew23.ip";
connectAttr "polyMapSew23.out" "polyMapSew24.ip";
connectAttr "polyMapSew24.out" "polyTweakUV67.ip";
connectAttr "polyTweakUV67.out" "polyMapSewMove36.ip";
connectAttr "polyMapSewMove36.out" "polyTweakUV68.ip";
connectAttr "polyTweakUV68.out" "polyMapSew25.ip";
connectAttr "polyMapSew25.out" "polyMapSew26.ip";
connectAttr "polyMapSew26.out" "polyTweakUV69.ip";
connectAttr "polyTweakUV69.out" "polyMapSewMove37.ip";
connectAttr "polyMapSewMove37.out" "polyMapSew27.ip";
connectAttr "polyMapSew27.out" "polyMapSew28.ip";
connectAttr "polyMapSew28.out" "polyTweakUV70.ip";
connectAttr "polyTweakUV70.out" "polyMapSewMove38.ip";
connectAttr "polyMapSewMove38.out" "polyTweakUV71.ip";
connectAttr "polyTweakUV71.out" "polyMapSew29.ip";
connectAttr "polyMapSew29.out" "polyTweakUV72.ip";
connectAttr "polyTweakUV72.out" "polyMapSew30.ip";
connectAttr "polyMapSew30.out" "polyTweakUV73.ip";
connectAttr "polyTweakUV73.out" "polyMapSewMove39.ip";
connectAttr "polyMapSewMove39.out" "polyTweakUV74.ip";
connectAttr "polyTweakUV74.out" "polyMapSew31.ip";
connectAttr "polyMapSew31.out" "polyTweakUV75.ip";
connectAttr "polyTweakUV75.out" "polyMapSew32.ip";
connectAttr "polyMapSew32.out" "polyTweakUV76.ip";
connectAttr "polyTweakUV76.out" "polyMapSewMove40.ip";
connectAttr "polyMapSewMove40.out" "polyMapSew33.ip";
connectAttr "polyMapSew33.out" "polyTweakUV77.ip";
connectAttr "polyTweakUV77.out" "polyMapSewMove41.ip";
connectAttr "polyMapSewMove41.out" "polyTweakUV78.ip";
connectAttr "polyTweakUV78.out" "polyMapSewMove42.ip";
connectAttr "polyMapSewMove42.out" "polyTweakUV79.ip";
connectAttr "polyTweakUV79.out" "polyMapCut29.ip";
connectAttr "polyMapCut29.out" "polyTweakUV80.ip";
connectAttr "polyTweakUV80.out" "polyMapSewMove43.ip";
connectAttr "polyMapSewMove43.out" "polyTweakUV81.ip";
connectAttr "polyTweakUV81.out" "polyMapSewMove44.ip";
connectAttr "polyMapSewMove44.out" "polyTweakUV82.ip";
connectAttr "polyTweakUV82.out" "polyMapSewMove45.ip";
connectAttr "polyMapSewMove45.out" "polyTweakUV83.ip";
connectAttr "polyTweakUV83.out" "polyMapSewMove46.ip";
connectAttr "polyMapSewMove46.out" "polyTweakUV84.ip";
connectAttr "polyTweakUV84.out" "polyMapSewMove47.ip";
connectAttr "polyMapSewMove47.out" "polyTweakUV85.ip";
connectAttr "polyTweakUV85.out" "polyMapSewMove48.ip";
connectAttr "polyMapSewMove48.out" "polyTweakUV86.ip";
connectAttr "polyTweakUV86.out" "polyMapSewMove49.ip";
connectAttr "polyMapSewMove49.out" "polyTweakUV87.ip";
connectAttr "polyTweakUV87.out" "polyMapCut30.ip";
connectAttr "polyMapCut30.out" "polyTweakUV88.ip";
connectAttr "owynnarmstrong__dev__stool__1_01.outputObjects[0].outputGeos[0].outputParts[0].outputPartMeshData" "polySoftEdge11.ip"
		;
connectAttr "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.wm" "polySoftEdge11.mp"
		;
connectAttr "polySoftEdge11.out" "polyAutoProj7.ip";
connectAttr "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.wm" "polyAutoProj7.mp"
		;
connectAttr "polyAutoProj7.out" "polyTweakUV89.ip";
connectAttr "polyTweakUV89.out" "polyMapSewMove50.ip";
connectAttr "polyMapSewMove50.out" "polyTweakUV90.ip";
connectAttr "polyTweakUV90.out" "polyMapSewMove51.ip";
connectAttr "polyMapSewMove51.out" "polyTweakUV91.ip";
connectAttr "polyTweakUV91.out" "polyMapSewMove52.ip";
connectAttr "polyMapSewMove52.out" "polyTweakUV92.ip";
connectAttr "polyTweakUV92.out" "polyMapSewMove53.ip";
connectAttr "polyMapSewMove53.out" "polyTweakUV93.ip";
connectAttr "polyTweakUV93.out" "polyMapSewMove54.ip";
connectAttr "polyMapSewMove54.out" "polyTweakUV94.ip";
connectAttr "polyTweakUV94.out" "polyMapSewMove55.ip";
connectAttr "polyMapSewMove55.out" "polyTweakUV95.ip";
connectAttr "polyTweakUV95.out" "polyMapSewMove56.ip";
connectAttr "polyMapSewMove56.out" "polyTweakUV96.ip";
connectAttr "polyTweakUV96.out" "polyMapSewMove57.ip";
connectAttr "polyMapSewMove57.out" "polyTweakUV97.ip";
connectAttr "polyTweakUV97.out" "polyMapSewMove58.ip";
connectAttr "polyMapSewMove58.out" "polyTweakUV98.ip";
connectAttr "polyTweakUV98.out" "polyMapSewMove59.ip";
connectAttr "polyMapSewMove59.out" "polyTweakUV99.ip";
connectAttr "polyTweakUV99.out" "polyMapSewMove60.ip";
connectAttr "polyMapSewMove60.out" "polyTweakUV100.ip";
connectAttr "polyTweakUV100.out" "polyMapSewMove61.ip";
connectAttr "polyMapSewMove61.out" "polyTweakUV101.ip";
connectAttr "polyTweakUV101.out" "polyMapSewMove62.ip";
connectAttr "polyMapSewMove62.out" "polyTweakUV102.ip";
connectAttr "polyTweakUV102.out" "polyMapSewMove63.ip";
connectAttr "polyMapSewMove63.out" "polyTweakUV103.ip";
connectAttr "polyTweakUV103.out" "polyMapSewMove64.ip";
connectAttr "polyMapSewMove64.out" "polyTweakUV104.ip";
connectAttr "polyTweakUV104.out" "polyMapSewMove65.ip";
connectAttr "polyMapSewMove65.out" "polyTweakUV105.ip";
connectAttr "polyTweakUV105.out" "polyMapSewMove66.ip";
connectAttr "polyMapSewMove66.out" "polyTweakUV106.ip";
connectAttr "polyTweakUV106.out" "polyMapSewMove67.ip";
connectAttr "polyMapSewMove67.out" "polyTweakUV107.ip";
connectAttr "polyTweakUV107.out" "polyMapSewMove68.ip";
connectAttr "polyMapSewMove68.out" "polyTweakUV108.ip";
connectAttr "polyTweakUV108.out" "polyMapSewMove69.ip";
connectAttr "polyMapSewMove69.out" "polyTweakUV109.ip";
connectAttr "polyTweakUV109.out" "polyMapSewMove70.ip";
connectAttr "polyMapSewMove70.out" "polyTweakUV110.ip";
connectAttr "polyTweakUV110.out" "polyMapSewMove71.ip";
connectAttr "polyMapSewMove71.out" "polyTweakUV111.ip";
connectAttr "polyTweakUV111.out" "polyMapSewMove72.ip";
connectAttr "polyMapSewMove72.out" "polyTweakUV112.ip";
connectAttr "polyTweakUV112.out" "polyMapSewMove73.ip";
connectAttr "polyMapSewMove73.out" "polyTweakUV113.ip";
connectAttr "polyTweakUV113.out" "polyMapSewMove74.ip";
connectAttr "polyMapSewMove74.out" "polyTweakUV114.ip";
connectAttr "polyTweakUV114.out" "polyMapSewMove75.ip";
connectAttr "polyMapSewMove75.out" "polyTweakUV115.ip";
connectAttr "polyTweakUV115.out" "polyMapSewMove76.ip";
connectAttr "polyMapSewMove76.out" "polyTweakUV116.ip";
connectAttr "polyTweakUV116.out" "polyMapSewMove77.ip";
connectAttr "polyMapSewMove77.out" "polyTweakUV117.ip";
connectAttr "polyTweakUV117.out" "polyMapSewMove78.ip";
connectAttr "polyMapSewMove78.out" "polyTweakUV118.ip";
connectAttr "polyTweakUV118.out" "polyMapSewMove79.ip";
connectAttr "polyMapSewMove79.out" "polyTweakUV119.ip";
connectAttr "polyTweakUV119.out" "polyMapSewMove80.ip";
connectAttr "polyMapSewMove80.out" "polyTweakUV120.ip";
connectAttr "polyTweakUV120.out" "polyMapSewMove81.ip";
connectAttr "polyMapSewMove81.out" "polyTweakUV121.ip";
connectAttr "polyTweakUV121.out" "polyMapSewMove82.ip";
connectAttr "polyMapSewMove82.out" "polyTweakUV122.ip";
connectAttr "polyTweakUV122.out" "polyMapSewMove83.ip";
connectAttr "polyMapSewMove83.out" "polyTweakUV123.ip";
connectAttr "polyTweakUV123.out" "polyMapSewMove84.ip";
connectAttr "polyMapSewMove84.out" "polyTweakUV124.ip";
connectAttr "polyTweakUV124.out" "polyMapSewMove85.ip";
connectAttr "polyMapSewMove85.out" "polyTweakUV125.ip";
connectAttr "polyTweakUV125.out" "polyMapSewMove86.ip";
connectAttr "polyMapSewMove86.out" "polyTweakUV126.ip";
connectAttr "polyTweakUV126.out" "polyMapSewMove87.ip";
connectAttr "polyMapSewMove87.out" "polyTweakUV127.ip";
connectAttr "polyTweakUV127.out" "polyMapSewMove88.ip";
connectAttr "polyMapSewMove88.out" "polyTweakUV128.ip";
connectAttr "polyTweakUV128.out" "polyMapSewMove89.ip";
connectAttr "polyMapSewMove89.out" "polyTweakUV129.ip";
connectAttr "polyTweakUV129.out" "polyMapSewMove90.ip";
connectAttr "polyMapSewMove90.out" "polyTweakUV130.ip";
connectAttr "polyTweakUV130.out" "polyMapSewMove91.ip";
connectAttr "polyMapSewMove91.out" "polyTweakUV131.ip";
connectAttr "polyTweakUV131.out" "polyMapSewMove92.ip";
connectAttr "polyMapSewMove92.out" "polyTweakUV132.ip";
connectAttr "polyTweakUV132.out" "polyMapSewMove93.ip";
connectAttr "polyMapSewMove93.out" "polyTweakUV133.ip";
connectAttr "polyTweakUV133.out" "polyMapSewMove94.ip";
connectAttr "polyMapSewMove94.out" "polyTweakUV134.ip";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture2.o" "file4.uv";
connectAttr "place2dTexture2.ofs" "file4.fs";
connectAttr "place2dTexture2.c" "file4.c";
connectAttr "place2dTexture2.tf" "file4.tf";
connectAttr "place2dTexture2.rf" "file4.rf";
connectAttr "place2dTexture2.mu" "file4.mu";
connectAttr "place2dTexture2.mv" "file4.mv";
connectAttr "place2dTexture2.s" "file4.s";
connectAttr "place2dTexture2.wu" "file4.wu";
connectAttr "place2dTexture2.wv" "file4.wv";
connectAttr "place2dTexture2.re" "file4.re";
connectAttr "place2dTexture2.of" "file4.of";
connectAttr "place2dTexture2.r" "file4.ro";
connectAttr "place2dTexture2.n" "file4.n";
connectAttr "place2dTexture2.vt1" "file4.vt1";
connectAttr "place2dTexture2.vt2" "file4.vt2";
connectAttr "place2dTexture2.vt3" "file4.vt3";
connectAttr "place2dTexture2.vc1" "file4.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture2.o" "file5.uv";
connectAttr "place2dTexture2.ofs" "file5.fs";
connectAttr "place2dTexture2.c" "file5.c";
connectAttr "place2dTexture2.tf" "file5.tf";
connectAttr "place2dTexture2.rf" "file5.rf";
connectAttr "place2dTexture2.mu" "file5.mu";
connectAttr "place2dTexture2.mv" "file5.mv";
connectAttr "place2dTexture2.s" "file5.s";
connectAttr "place2dTexture2.wu" "file5.wu";
connectAttr "place2dTexture2.wv" "file5.wv";
connectAttr "place2dTexture2.re" "file5.re";
connectAttr "place2dTexture2.of" "file5.of";
connectAttr "place2dTexture2.r" "file5.ro";
connectAttr "place2dTexture2.n" "file5.n";
connectAttr "place2dTexture2.vt1" "file5.vt1";
connectAttr "place2dTexture2.vt2" "file5.vt2";
connectAttr "place2dTexture2.vt3" "file5.vt3";
connectAttr "place2dTexture2.vc1" "file5.vc1";
connectAttr "file4.oa" "bump2d1.bv";
connectAttr "place2dTexture3.o" "substanceNode2.uv";
connectAttr "place2dTexture3.ofs" "substanceNode2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture4.o" "file6.uv";
connectAttr "place2dTexture4.ofs" "file6.fs";
connectAttr "place2dTexture4.c" "file6.c";
connectAttr "place2dTexture4.tf" "file6.tf";
connectAttr "place2dTexture4.rf" "file6.rf";
connectAttr "place2dTexture4.mu" "file6.mu";
connectAttr "place2dTexture4.mv" "file6.mv";
connectAttr "place2dTexture4.s" "file6.s";
connectAttr "place2dTexture4.wu" "file6.wu";
connectAttr "place2dTexture4.wv" "file6.wv";
connectAttr "place2dTexture4.re" "file6.re";
connectAttr "place2dTexture4.of" "file6.of";
connectAttr "place2dTexture4.r" "file6.ro";
connectAttr "place2dTexture4.n" "file6.n";
connectAttr "place2dTexture4.vt1" "file6.vt1";
connectAttr "place2dTexture4.vt2" "file6.vt2";
connectAttr "place2dTexture4.vt3" "file6.vt3";
connectAttr "place2dTexture4.vc1" "file6.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture4.o" "file7.uv";
connectAttr "place2dTexture4.ofs" "file7.fs";
connectAttr "place2dTexture4.c" "file7.c";
connectAttr "place2dTexture4.tf" "file7.tf";
connectAttr "place2dTexture4.rf" "file7.rf";
connectAttr "place2dTexture4.mu" "file7.mu";
connectAttr "place2dTexture4.mv" "file7.mv";
connectAttr "place2dTexture4.s" "file7.s";
connectAttr "place2dTexture4.wu" "file7.wu";
connectAttr "place2dTexture4.wv" "file7.wv";
connectAttr "place2dTexture4.re" "file7.re";
connectAttr "place2dTexture4.of" "file7.of";
connectAttr "place2dTexture4.r" "file7.ro";
connectAttr "place2dTexture4.n" "file7.n";
connectAttr "place2dTexture4.vt1" "file7.vt1";
connectAttr "place2dTexture4.vt2" "file7.vt2";
connectAttr "place2dTexture4.vt3" "file7.vt3";
connectAttr "place2dTexture4.vc1" "file7.vc1";
connectAttr "file6.oa" "bump2d2.bv";
connectAttr "place2dTexture5.o" "asteroid.uv";
connectAttr "place2dTexture5.ofs" "asteroid.fs";
connectAttr "asteroid.output_basecolor" "Aluminium_Close_Cell_Foam_basecolor1.sbs"
		;
connectAttr "asteroid.rsw" "Aluminium_Close_Cell_Foam_basecolor1.rsw";
connectAttr "asteroid.cext" "Aluminium_Close_Cell_Foam_basecolor1.cext";
connectAttr "asteroid.hext" "Aluminium_Close_Cell_Foam_basecolor1.hext";
connectAttr "asteroid.cfld" "Aluminium_Close_Cell_Foam_basecolor1.cprx";
connectAttr "place2dTexture5.o" "Aluminium_Close_Cell_Foam_basecolor1.uv";
connectAttr "place2dTexture5.ofs" "Aluminium_Close_Cell_Foam_basecolor1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "Aluminium_Close_Cell_Foam_basecolor1.cpth" "file8.ftn";
connectAttr "place2dTexture5.o" "file8.uv";
connectAttr "place2dTexture5.ofs" "file8.fs";
connectAttr "place2dTexture5.c" "file8.c";
connectAttr "place2dTexture5.tf" "file8.tf";
connectAttr "place2dTexture5.rf" "file8.rf";
connectAttr "place2dTexture5.mu" "file8.mu";
connectAttr "place2dTexture5.mv" "file8.mv";
connectAttr "place2dTexture5.s" "file8.s";
connectAttr "place2dTexture5.wu" "file8.wu";
connectAttr "place2dTexture5.wv" "file8.wv";
connectAttr "place2dTexture5.re" "file8.re";
connectAttr "place2dTexture5.of" "file8.of";
connectAttr "place2dTexture5.r" "file8.ro";
connectAttr "place2dTexture5.n" "file8.n";
connectAttr "place2dTexture5.vt1" "file8.vt1";
connectAttr "place2dTexture5.vt2" "file8.vt2";
connectAttr "place2dTexture5.vt3" "file8.vt3";
connectAttr "place2dTexture5.vc1" "file8.vc1";
connectAttr "asteroid.output_normal" "Aluminium_Close_Cell_Foam_normal.sbs";
connectAttr "asteroid.rsw" "Aluminium_Close_Cell_Foam_normal.rsw";
connectAttr "asteroid.cext" "Aluminium_Close_Cell_Foam_normal.cext";
connectAttr "asteroid.hext" "Aluminium_Close_Cell_Foam_normal.hext";
connectAttr "asteroid.cfld" "Aluminium_Close_Cell_Foam_normal.cprx";
connectAttr "place2dTexture5.o" "Aluminium_Close_Cell_Foam_normal.uv";
connectAttr "place2dTexture5.ofs" "Aluminium_Close_Cell_Foam_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "Aluminium_Close_Cell_Foam_normal.cpth" "file9.ftn";
connectAttr "place2dTexture5.o" "file9.uv";
connectAttr "place2dTexture5.ofs" "file9.fs";
connectAttr "place2dTexture5.c" "file9.c";
connectAttr "place2dTexture5.tf" "file9.tf";
connectAttr "place2dTexture5.rf" "file9.rf";
connectAttr "place2dTexture5.mu" "file9.mu";
connectAttr "place2dTexture5.mv" "file9.mv";
connectAttr "place2dTexture5.s" "file9.s";
connectAttr "place2dTexture5.wu" "file9.wu";
connectAttr "place2dTexture5.wv" "file9.wv";
connectAttr "place2dTexture5.re" "file9.re";
connectAttr "place2dTexture5.of" "file9.of";
connectAttr "place2dTexture5.r" "file9.ro";
connectAttr "place2dTexture5.n" "file9.n";
connectAttr "place2dTexture5.vt1" "file9.vt1";
connectAttr "place2dTexture5.vt2" "file9.vt2";
connectAttr "place2dTexture5.vt3" "file9.vt3";
connectAttr "place2dTexture5.vc1" "file9.vc1";
connectAttr "asteroid.output_height" "Aluminium_Close_Cell_Foam_height1.sbs";
connectAttr "asteroid.rsw" "Aluminium_Close_Cell_Foam_height1.rsw";
connectAttr "asteroid.cext" "Aluminium_Close_Cell_Foam_height1.cext";
connectAttr "asteroid.hext" "Aluminium_Close_Cell_Foam_height1.hext";
connectAttr "asteroid.cfld" "Aluminium_Close_Cell_Foam_height1.cprx";
connectAttr "place2dTexture5.o" "Aluminium_Close_Cell_Foam_height1.uv";
connectAttr "place2dTexture5.ofs" "Aluminium_Close_Cell_Foam_height1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "Aluminium_Close_Cell_Foam_height1.cpth" "file10.ftn";
connectAttr "place2dTexture5.o" "file10.uv";
connectAttr "place2dTexture5.ofs" "file10.fs";
connectAttr "place2dTexture5.c" "file10.c";
connectAttr "place2dTexture5.tf" "file10.tf";
connectAttr "place2dTexture5.rf" "file10.rf";
connectAttr "place2dTexture5.mu" "file10.mu";
connectAttr "place2dTexture5.mv" "file10.mv";
connectAttr "place2dTexture5.s" "file10.s";
connectAttr "place2dTexture5.wu" "file10.wu";
connectAttr "place2dTexture5.wv" "file10.wv";
connectAttr "place2dTexture5.re" "file10.re";
connectAttr "place2dTexture5.of" "file10.of";
connectAttr "place2dTexture5.r" "file10.ro";
connectAttr "place2dTexture5.n" "file10.n";
connectAttr "place2dTexture5.vt1" "file10.vt1";
connectAttr "place2dTexture5.vt2" "file10.vt2";
connectAttr "place2dTexture5.vt3" "file10.vt3";
connectAttr "place2dTexture5.vc1" "file10.vc1";
connectAttr "crate_initialShadingGroup1.oc" "crate_initialShadingGroup.ss";
connectAttr "crate_initialShadingGroup.msg" "crate_materialInfo1.sg";
connectAttr "crate_initialShadingGroup1.msg" "crate_materialInfo1.m";
connectAttr "crate_initialShadingGroup3.oc" "crate_initialShadingGroup2.ss";
connectAttr "crate_initialShadingGroup2.msg" "crate_materialInfo2.sg";
connectAttr "crate_initialShadingGroup3.msg" "crate_materialInfo2.m";
connectAttr "place2dTexture6.o" "substanceNode3.uv";
connectAttr "place2dTexture6.ofs" "substanceNode3.fs";
connectAttr "substanceNode3.output_basecolor" "Aluminium_Close_Cell_Foam_basecolor.sbs"
		;
connectAttr "substanceNode3.rsw" "Aluminium_Close_Cell_Foam_basecolor.rsw";
connectAttr "substanceNode3.cext" "Aluminium_Close_Cell_Foam_basecolor.cext";
connectAttr "substanceNode3.hext" "Aluminium_Close_Cell_Foam_basecolor.hext";
connectAttr "substanceNode3.cfld" "Aluminium_Close_Cell_Foam_basecolor.cprx";
connectAttr "place2dTexture6.o" "Aluminium_Close_Cell_Foam_basecolor.uv";
connectAttr "place2dTexture6.ofs" "Aluminium_Close_Cell_Foam_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "Aluminium_Close_Cell_Foam_basecolor.cpth" "file11.ftn";
connectAttr "place2dTexture6.o" "file11.uv";
connectAttr "place2dTexture6.ofs" "file11.fs";
connectAttr "place2dTexture6.c" "file11.c";
connectAttr "place2dTexture6.tf" "file11.tf";
connectAttr "place2dTexture6.rf" "file11.rf";
connectAttr "place2dTexture6.mu" "file11.mu";
connectAttr "place2dTexture6.mv" "file11.mv";
connectAttr "place2dTexture6.s" "file11.s";
connectAttr "place2dTexture6.wu" "file11.wu";
connectAttr "place2dTexture6.wv" "file11.wv";
connectAttr "place2dTexture6.re" "file11.re";
connectAttr "place2dTexture6.of" "file11.of";
connectAttr "place2dTexture6.r" "file11.ro";
connectAttr "place2dTexture6.n" "file11.n";
connectAttr "place2dTexture6.vt1" "file11.vt1";
connectAttr "place2dTexture6.vt2" "file11.vt2";
connectAttr "place2dTexture6.vt3" "file11.vt3";
connectAttr "place2dTexture6.vc1" "file11.vc1";
connectAttr "substanceNode3.output_ambientocclusion" "Aluminium_Close_Cell_Foam_ambientocclusion.sbs"
		;
connectAttr "substanceNode3.rsw" "Aluminium_Close_Cell_Foam_ambientocclusion.rsw"
		;
connectAttr "substanceNode3.cext" "Aluminium_Close_Cell_Foam_ambientocclusion.cext"
		;
connectAttr "substanceNode3.hext" "Aluminium_Close_Cell_Foam_ambientocclusion.hext"
		;
connectAttr "substanceNode3.cfld" "Aluminium_Close_Cell_Foam_ambientocclusion.cprx"
		;
connectAttr "place2dTexture6.o" "Aluminium_Close_Cell_Foam_ambientocclusion.uv";
connectAttr "place2dTexture6.ofs" "Aluminium_Close_Cell_Foam_ambientocclusion.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file12.ws";
connectAttr "Aluminium_Close_Cell_Foam_ambientocclusion.cpth" "file12.ftn";
connectAttr "place2dTexture6.o" "file12.uv";
connectAttr "place2dTexture6.ofs" "file12.fs";
connectAttr "place2dTexture6.c" "file12.c";
connectAttr "place2dTexture6.tf" "file12.tf";
connectAttr "place2dTexture6.rf" "file12.rf";
connectAttr "place2dTexture6.mu" "file12.mu";
connectAttr "place2dTexture6.mv" "file12.mv";
connectAttr "place2dTexture6.s" "file12.s";
connectAttr "place2dTexture6.wu" "file12.wu";
connectAttr "place2dTexture6.wv" "file12.wv";
connectAttr "place2dTexture6.re" "file12.re";
connectAttr "place2dTexture6.of" "file12.of";
connectAttr "place2dTexture6.r" "file12.ro";
connectAttr "place2dTexture6.n" "file12.n";
connectAttr "place2dTexture6.vt1" "file12.vt1";
connectAttr "place2dTexture6.vt2" "file12.vt2";
connectAttr "place2dTexture6.vt3" "file12.vt3";
connectAttr "place2dTexture6.vc1" "file12.vc1";
connectAttr "substanceNode3.output_metallic" "Aluminium_Close_Cell_Foam_metallic.sbs"
		;
connectAttr "substanceNode3.rsw" "Aluminium_Close_Cell_Foam_metallic.rsw";
connectAttr "substanceNode3.cext" "Aluminium_Close_Cell_Foam_metallic.cext";
connectAttr "substanceNode3.hext" "Aluminium_Close_Cell_Foam_metallic.hext";
connectAttr "substanceNode3.cfld" "Aluminium_Close_Cell_Foam_metallic.cprx";
connectAttr "place2dTexture6.o" "Aluminium_Close_Cell_Foam_metallic.uv";
connectAttr "place2dTexture6.ofs" "Aluminium_Close_Cell_Foam_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file13.ws";
connectAttr "Aluminium_Close_Cell_Foam_metallic.cpth" "file13.ftn";
connectAttr "place2dTexture6.o" "file13.uv";
connectAttr "place2dTexture6.ofs" "file13.fs";
connectAttr "place2dTexture6.c" "file13.c";
connectAttr "place2dTexture6.tf" "file13.tf";
connectAttr "place2dTexture6.rf" "file13.rf";
connectAttr "place2dTexture6.mu" "file13.mu";
connectAttr "place2dTexture6.mv" "file13.mv";
connectAttr "place2dTexture6.s" "file13.s";
connectAttr "place2dTexture6.wu" "file13.wu";
connectAttr "place2dTexture6.wv" "file13.wv";
connectAttr "place2dTexture6.re" "file13.re";
connectAttr "place2dTexture6.of" "file13.of";
connectAttr "place2dTexture6.r" "file13.ro";
connectAttr "place2dTexture6.n" "file13.n";
connectAttr "place2dTexture6.vt1" "file13.vt1";
connectAttr "place2dTexture6.vt2" "file13.vt2";
connectAttr "place2dTexture6.vt3" "file13.vt3";
connectAttr "place2dTexture6.vc1" "file13.vc1";
connectAttr "substanceNode3.output_normal" "Aluminium_Close_Cell_Foam_normal1.sbs"
		;
connectAttr "substanceNode3.rsw" "Aluminium_Close_Cell_Foam_normal1.rsw";
connectAttr "substanceNode3.cext" "Aluminium_Close_Cell_Foam_normal1.cext";
connectAttr "substanceNode3.hext" "Aluminium_Close_Cell_Foam_normal1.hext";
connectAttr "substanceNode3.cfld" "Aluminium_Close_Cell_Foam_normal1.cprx";
connectAttr "place2dTexture6.o" "Aluminium_Close_Cell_Foam_normal1.uv";
connectAttr "place2dTexture6.ofs" "Aluminium_Close_Cell_Foam_normal1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file14.ws";
connectAttr "Aluminium_Close_Cell_Foam_normal1.cpth" "file14.ftn";
connectAttr "place2dTexture6.o" "file14.uv";
connectAttr "place2dTexture6.ofs" "file14.fs";
connectAttr "place2dTexture6.c" "file14.c";
connectAttr "place2dTexture6.tf" "file14.tf";
connectAttr "place2dTexture6.rf" "file14.rf";
connectAttr "place2dTexture6.mu" "file14.mu";
connectAttr "place2dTexture6.mv" "file14.mv";
connectAttr "place2dTexture6.s" "file14.s";
connectAttr "place2dTexture6.wu" "file14.wu";
connectAttr "place2dTexture6.wv" "file14.wv";
connectAttr "place2dTexture6.re" "file14.re";
connectAttr "place2dTexture6.of" "file14.of";
connectAttr "place2dTexture6.r" "file14.ro";
connectAttr "place2dTexture6.n" "file14.n";
connectAttr "place2dTexture6.vt1" "file14.vt1";
connectAttr "place2dTexture6.vt2" "file14.vt2";
connectAttr "place2dTexture6.vt3" "file14.vt3";
connectAttr "place2dTexture6.vc1" "file14.vc1";
connectAttr "substanceNode3.output_height" "Aluminium_Close_Cell_Foam_height.sbs"
		;
connectAttr "substanceNode3.rsw" "Aluminium_Close_Cell_Foam_height.rsw";
connectAttr "substanceNode3.cext" "Aluminium_Close_Cell_Foam_height.cext";
connectAttr "substanceNode3.hext" "Aluminium_Close_Cell_Foam_height.hext";
connectAttr "substanceNode3.cfld" "Aluminium_Close_Cell_Foam_height.cprx";
connectAttr "place2dTexture6.o" "Aluminium_Close_Cell_Foam_height.uv";
connectAttr "place2dTexture6.ofs" "Aluminium_Close_Cell_Foam_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file15.ws";
connectAttr "Aluminium_Close_Cell_Foam_height.cpth" "file15.ftn";
connectAttr "place2dTexture6.o" "file15.uv";
connectAttr "place2dTexture6.ofs" "file15.fs";
connectAttr "place2dTexture6.c" "file15.c";
connectAttr "place2dTexture6.tf" "file15.tf";
connectAttr "place2dTexture6.rf" "file15.rf";
connectAttr "place2dTexture6.mu" "file15.mu";
connectAttr "place2dTexture6.mv" "file15.mv";
connectAttr "place2dTexture6.s" "file15.s";
connectAttr "place2dTexture6.wu" "file15.wu";
connectAttr "place2dTexture6.wv" "file15.wv";
connectAttr "place2dTexture6.re" "file15.re";
connectAttr "place2dTexture6.of" "file15.of";
connectAttr "place2dTexture6.r" "file15.ro";
connectAttr "place2dTexture6.n" "file15.n";
connectAttr "place2dTexture6.vt1" "file15.vt1";
connectAttr "place2dTexture6.vt2" "file15.vt2";
connectAttr "place2dTexture6.vt3" "file15.vt3";
connectAttr "place2dTexture6.vc1" "file15.vc1";
connectAttr "substanceNode3.output_roughness" "Aluminium_Close_Cell_Foam_roughness.sbs"
		;
connectAttr "substanceNode3.rsw" "Aluminium_Close_Cell_Foam_roughness.rsw";
connectAttr "substanceNode3.cext" "Aluminium_Close_Cell_Foam_roughness.cext";
connectAttr "substanceNode3.hext" "Aluminium_Close_Cell_Foam_roughness.hext";
connectAttr "substanceNode3.cfld" "Aluminium_Close_Cell_Foam_roughness.cprx";
connectAttr "place2dTexture6.o" "Aluminium_Close_Cell_Foam_roughness.uv";
connectAttr "place2dTexture6.ofs" "Aluminium_Close_Cell_Foam_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file16.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file16.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file16.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file16.ws";
connectAttr "Aluminium_Close_Cell_Foam_roughness.cpth" "file16.ftn";
connectAttr "place2dTexture6.o" "file16.uv";
connectAttr "place2dTexture6.ofs" "file16.fs";
connectAttr "place2dTexture6.c" "file16.c";
connectAttr "place2dTexture6.tf" "file16.tf";
connectAttr "place2dTexture6.rf" "file16.rf";
connectAttr "place2dTexture6.mu" "file16.mu";
connectAttr "place2dTexture6.mv" "file16.mv";
connectAttr "place2dTexture6.s" "file16.s";
connectAttr "place2dTexture6.wu" "file16.wu";
connectAttr "place2dTexture6.wv" "file16.wv";
connectAttr "place2dTexture6.re" "file16.re";
connectAttr "place2dTexture6.of" "file16.of";
connectAttr "place2dTexture6.r" "file16.ro";
connectAttr "place2dTexture6.n" "file16.n";
connectAttr "place2dTexture6.vt1" "file16.vt1";
connectAttr "place2dTexture6.vt2" "file16.vt2";
connectAttr "place2dTexture6.vt3" "file16.vt3";
connectAttr "place2dTexture6.vc1" "file16.vc1";
connectAttr "file11.oc" "multiplyDivide1.i1";
connectAttr "multiplyDivide1.o" "asteroid2.base_color";
connectAttr "asteroid2.out" "set1.ss";
connectAttr "mountain1_0Shape.iog" "set1.dsm" -na;
connectAttr "set1.msg" "materialInfo1.sg";
connectAttr "asteroid2.msg" "materialInfo1.m";
connectAttr "file11.msg" "materialInfo1.t" -na;
connectAttr "file14.oa" "bump2d3.bv";
connectAttr "place2dTexture7.o" "substanceNode4.uv";
connectAttr "place2dTexture7.ofs" "substanceNode4.fs";
connectAttr "substanceNode4.output_basecolor" "Stylized_Scratched_Wood_Planks_basecolor.sbs"
		;
connectAttr "substanceNode4.rsw" "Stylized_Scratched_Wood_Planks_basecolor.rsw";
connectAttr "substanceNode4.cext" "Stylized_Scratched_Wood_Planks_basecolor.cext"
		;
connectAttr "substanceNode4.hext" "Stylized_Scratched_Wood_Planks_basecolor.hext"
		;
connectAttr "substanceNode4.cfld" "Stylized_Scratched_Wood_Planks_basecolor.cprx"
		;
connectAttr "place2dTexture7.o" "Stylized_Scratched_Wood_Planks_basecolor.uv";
connectAttr "place2dTexture7.ofs" "Stylized_Scratched_Wood_Planks_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file17.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file17.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file17.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file17.ws";
connectAttr "Stylized_Scratched_Wood_Planks_basecolor.cpth" "file17.ftn";
connectAttr "place2dTexture7.o" "file17.uv";
connectAttr "place2dTexture7.ofs" "file17.fs";
connectAttr "place2dTexture7.c" "file17.c";
connectAttr "place2dTexture7.tf" "file17.tf";
connectAttr "place2dTexture7.rf" "file17.rf";
connectAttr "place2dTexture7.mu" "file17.mu";
connectAttr "place2dTexture7.mv" "file17.mv";
connectAttr "place2dTexture7.s" "file17.s";
connectAttr "place2dTexture7.wu" "file17.wu";
connectAttr "place2dTexture7.wv" "file17.wv";
connectAttr "place2dTexture7.re" "file17.re";
connectAttr "place2dTexture7.of" "file17.of";
connectAttr "place2dTexture7.r" "file17.ro";
connectAttr "place2dTexture7.n" "file17.n";
connectAttr "place2dTexture7.vt1" "file17.vt1";
connectAttr "place2dTexture7.vt2" "file17.vt2";
connectAttr "place2dTexture7.vt3" "file17.vt3";
connectAttr "place2dTexture7.vc1" "file17.vc1";
connectAttr "substanceNode4.output_ambientocclusion" "Stylized_Scratched_Wood_Planks_ambientocclusion.sbs"
		;
connectAttr "substanceNode4.rsw" "Stylized_Scratched_Wood_Planks_ambientocclusion.rsw"
		;
connectAttr "substanceNode4.cext" "Stylized_Scratched_Wood_Planks_ambientocclusion.cext"
		;
connectAttr "substanceNode4.hext" "Stylized_Scratched_Wood_Planks_ambientocclusion.hext"
		;
connectAttr "substanceNode4.cfld" "Stylized_Scratched_Wood_Planks_ambientocclusion.cprx"
		;
connectAttr "place2dTexture7.o" "Stylized_Scratched_Wood_Planks_ambientocclusion.uv"
		;
connectAttr "place2dTexture7.ofs" "Stylized_Scratched_Wood_Planks_ambientocclusion.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file18.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file18.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file18.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file18.ws";
connectAttr "Stylized_Scratched_Wood_Planks_ambientocclusion.cpth" "file18.ftn";
connectAttr "place2dTexture7.o" "file18.uv";
connectAttr "place2dTexture7.ofs" "file18.fs";
connectAttr "place2dTexture7.c" "file18.c";
connectAttr "place2dTexture7.tf" "file18.tf";
connectAttr "place2dTexture7.rf" "file18.rf";
connectAttr "place2dTexture7.mu" "file18.mu";
connectAttr "place2dTexture7.mv" "file18.mv";
connectAttr "place2dTexture7.s" "file18.s";
connectAttr "place2dTexture7.wu" "file18.wu";
connectAttr "place2dTexture7.wv" "file18.wv";
connectAttr "place2dTexture7.re" "file18.re";
connectAttr "place2dTexture7.of" "file18.of";
connectAttr "place2dTexture7.r" "file18.ro";
connectAttr "place2dTexture7.n" "file18.n";
connectAttr "place2dTexture7.vt1" "file18.vt1";
connectAttr "place2dTexture7.vt2" "file18.vt2";
connectAttr "place2dTexture7.vt3" "file18.vt3";
connectAttr "place2dTexture7.vc1" "file18.vc1";
connectAttr "substanceNode4.output_metallic" "Stylized_Scratched_Wood_Planks_metallic.sbs"
		;
connectAttr "substanceNode4.rsw" "Stylized_Scratched_Wood_Planks_metallic.rsw";
connectAttr "substanceNode4.cext" "Stylized_Scratched_Wood_Planks_metallic.cext"
		;
connectAttr "substanceNode4.hext" "Stylized_Scratched_Wood_Planks_metallic.hext"
		;
connectAttr "substanceNode4.cfld" "Stylized_Scratched_Wood_Planks_metallic.cprx"
		;
connectAttr "place2dTexture7.o" "Stylized_Scratched_Wood_Planks_metallic.uv";
connectAttr "place2dTexture7.ofs" "Stylized_Scratched_Wood_Planks_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file19.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file19.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file19.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file19.ws";
connectAttr "Stylized_Scratched_Wood_Planks_metallic.cpth" "file19.ftn";
connectAttr "place2dTexture7.o" "file19.uv";
connectAttr "place2dTexture7.ofs" "file19.fs";
connectAttr "place2dTexture7.c" "file19.c";
connectAttr "place2dTexture7.tf" "file19.tf";
connectAttr "place2dTexture7.rf" "file19.rf";
connectAttr "place2dTexture7.mu" "file19.mu";
connectAttr "place2dTexture7.mv" "file19.mv";
connectAttr "place2dTexture7.s" "file19.s";
connectAttr "place2dTexture7.wu" "file19.wu";
connectAttr "place2dTexture7.wv" "file19.wv";
connectAttr "place2dTexture7.re" "file19.re";
connectAttr "place2dTexture7.of" "file19.of";
connectAttr "place2dTexture7.r" "file19.ro";
connectAttr "place2dTexture7.n" "file19.n";
connectAttr "place2dTexture7.vt1" "file19.vt1";
connectAttr "place2dTexture7.vt2" "file19.vt2";
connectAttr "place2dTexture7.vt3" "file19.vt3";
connectAttr "place2dTexture7.vc1" "file19.vc1";
connectAttr "substanceNode4.output_normal" "Stylized_Scratched_Wood_Planks_normal.sbs"
		;
connectAttr "substanceNode4.rsw" "Stylized_Scratched_Wood_Planks_normal.rsw";
connectAttr "substanceNode4.cext" "Stylized_Scratched_Wood_Planks_normal.cext";
connectAttr "substanceNode4.hext" "Stylized_Scratched_Wood_Planks_normal.hext";
connectAttr "substanceNode4.cfld" "Stylized_Scratched_Wood_Planks_normal.cprx";
connectAttr "place2dTexture7.o" "Stylized_Scratched_Wood_Planks_normal.uv";
connectAttr "place2dTexture7.ofs" "Stylized_Scratched_Wood_Planks_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file20.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file20.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file20.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file20.ws";
connectAttr "Stylized_Scratched_Wood_Planks_normal.cpth" "file20.ftn";
connectAttr "place2dTexture7.o" "file20.uv";
connectAttr "place2dTexture7.ofs" "file20.fs";
connectAttr "place2dTexture7.c" "file20.c";
connectAttr "place2dTexture7.tf" "file20.tf";
connectAttr "place2dTexture7.rf" "file20.rf";
connectAttr "place2dTexture7.mu" "file20.mu";
connectAttr "place2dTexture7.mv" "file20.mv";
connectAttr "place2dTexture7.s" "file20.s";
connectAttr "place2dTexture7.wu" "file20.wu";
connectAttr "place2dTexture7.wv" "file20.wv";
connectAttr "place2dTexture7.re" "file20.re";
connectAttr "place2dTexture7.of" "file20.of";
connectAttr "place2dTexture7.r" "file20.ro";
connectAttr "place2dTexture7.n" "file20.n";
connectAttr "place2dTexture7.vt1" "file20.vt1";
connectAttr "place2dTexture7.vt2" "file20.vt2";
connectAttr "place2dTexture7.vt3" "file20.vt3";
connectAttr "place2dTexture7.vc1" "file20.vc1";
connectAttr "substanceNode4.output_height" "Stylized_Scratched_Wood_Planks_height.sbs"
		;
connectAttr "substanceNode4.rsw" "Stylized_Scratched_Wood_Planks_height.rsw";
connectAttr "substanceNode4.cext" "Stylized_Scratched_Wood_Planks_height.cext";
connectAttr "substanceNode4.hext" "Stylized_Scratched_Wood_Planks_height.hext";
connectAttr "substanceNode4.cfld" "Stylized_Scratched_Wood_Planks_height.cprx";
connectAttr "place2dTexture7.o" "Stylized_Scratched_Wood_Planks_height.uv";
connectAttr "place2dTexture7.ofs" "Stylized_Scratched_Wood_Planks_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file21.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file21.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file21.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file21.ws";
connectAttr "Stylized_Scratched_Wood_Planks_height.cpth" "file21.ftn";
connectAttr "place2dTexture7.o" "file21.uv";
connectAttr "place2dTexture7.ofs" "file21.fs";
connectAttr "place2dTexture7.c" "file21.c";
connectAttr "place2dTexture7.tf" "file21.tf";
connectAttr "place2dTexture7.rf" "file21.rf";
connectAttr "place2dTexture7.mu" "file21.mu";
connectAttr "place2dTexture7.mv" "file21.mv";
connectAttr "place2dTexture7.s" "file21.s";
connectAttr "place2dTexture7.wu" "file21.wu";
connectAttr "place2dTexture7.wv" "file21.wv";
connectAttr "place2dTexture7.re" "file21.re";
connectAttr "place2dTexture7.of" "file21.of";
connectAttr "place2dTexture7.r" "file21.ro";
connectAttr "place2dTexture7.n" "file21.n";
connectAttr "place2dTexture7.vt1" "file21.vt1";
connectAttr "place2dTexture7.vt2" "file21.vt2";
connectAttr "place2dTexture7.vt3" "file21.vt3";
connectAttr "place2dTexture7.vc1" "file21.vc1";
connectAttr "substanceNode4.output_roughness" "Stylized_Scratched_Wood_Planks_roughness.sbs"
		;
connectAttr "substanceNode4.rsw" "Stylized_Scratched_Wood_Planks_roughness.rsw";
connectAttr "substanceNode4.cext" "Stylized_Scratched_Wood_Planks_roughness.cext"
		;
connectAttr "substanceNode4.hext" "Stylized_Scratched_Wood_Planks_roughness.hext"
		;
connectAttr "substanceNode4.cfld" "Stylized_Scratched_Wood_Planks_roughness.cprx"
		;
connectAttr "place2dTexture7.o" "Stylized_Scratched_Wood_Planks_roughness.uv";
connectAttr "place2dTexture7.ofs" "Stylized_Scratched_Wood_Planks_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file22.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file22.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file22.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file22.ws";
connectAttr "Stylized_Scratched_Wood_Planks_roughness.cpth" "file22.ftn";
connectAttr "place2dTexture7.o" "file22.uv";
connectAttr "place2dTexture7.ofs" "file22.fs";
connectAttr "place2dTexture7.c" "file22.c";
connectAttr "place2dTexture7.tf" "file22.tf";
connectAttr "place2dTexture7.rf" "file22.rf";
connectAttr "place2dTexture7.mu" "file22.mu";
connectAttr "place2dTexture7.mv" "file22.mv";
connectAttr "place2dTexture7.s" "file22.s";
connectAttr "place2dTexture7.wu" "file22.wu";
connectAttr "place2dTexture7.wv" "file22.wv";
connectAttr "place2dTexture7.re" "file22.re";
connectAttr "place2dTexture7.of" "file22.of";
connectAttr "place2dTexture7.r" "file22.ro";
connectAttr "place2dTexture7.n" "file22.n";
connectAttr "place2dTexture7.vt1" "file22.vt1";
connectAttr "place2dTexture7.vt2" "file22.vt2";
connectAttr "place2dTexture7.vt3" "file22.vt3";
connectAttr "place2dTexture7.vc1" "file22.vc1";
connectAttr "file17.oc" "multiplyDivide2.i1";
connectAttr "file18.oc" "multiplyDivide2.i2";
connectAttr "multiplyDivide2.o" "crate.base_color";
connectAttr "bump2d4.o" "crate.n";
connectAttr "file22.oa" "crate.specular_roughness";
connectAttr "file19.oa" "crate.metalness";
connectAttr "crate.out" "set2.ss";
connectAttr "|owynnarmstrong__dev__crate__1_01|crate1|merge1_0|merge1_0Shape.iog" "set2.dsm"
		 -na;
connectAttr "polyextrude9_0Shape.iog.og[0]" "set2.dsm" -na;
connectAttr "polyextrude9_0Shape.ciog.cog[0]" "set2.dsm" -na;
connectAttr "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.iog.og[1]" "set2.dsm"
		 -na;
connectAttr "groupId1.msg" "set2.gn" -na;
connectAttr "groupId2.msg" "set2.gn" -na;
connectAttr "groupId6.msg" "set2.gn" -na;
connectAttr "set2.msg" "materialInfo2.sg";
connectAttr "crate.msg" "materialInfo2.m";
connectAttr "file17.msg" "materialInfo2.t" -na;
connectAttr "file20.oa" "bump2d4.bv";
connectAttr "file21.oa" "displacementShader1.d";
connectAttr "place2dTexture8.o" "substanceNode5.uv";
connectAttr "place2dTexture8.ofs" "substanceNode5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file23.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file23.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file23.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file23.ws";
connectAttr "place2dTexture9.o" "file23.uv";
connectAttr "place2dTexture9.ofs" "file23.fs";
connectAttr "place2dTexture9.c" "file23.c";
connectAttr "place2dTexture9.tf" "file23.tf";
connectAttr "place2dTexture9.rf" "file23.rf";
connectAttr "place2dTexture9.mu" "file23.mu";
connectAttr "place2dTexture9.mv" "file23.mv";
connectAttr "place2dTexture9.s" "file23.s";
connectAttr "place2dTexture9.wu" "file23.wu";
connectAttr "place2dTexture9.wv" "file23.wv";
connectAttr "place2dTexture9.re" "file23.re";
connectAttr "place2dTexture9.of" "file23.of";
connectAttr "place2dTexture9.r" "file23.ro";
connectAttr "place2dTexture9.n" "file23.n";
connectAttr "place2dTexture9.vt1" "file23.vt1";
connectAttr "place2dTexture9.vt2" "file23.vt2";
connectAttr "place2dTexture9.vt3" "file23.vt3";
connectAttr "place2dTexture9.vc1" "file23.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file24.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file24.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file24.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file24.ws";
connectAttr "place2dTexture9.o" "file24.uv";
connectAttr "place2dTexture9.ofs" "file24.fs";
connectAttr "place2dTexture9.c" "file24.c";
connectAttr "place2dTexture9.tf" "file24.tf";
connectAttr "place2dTexture9.rf" "file24.rf";
connectAttr "place2dTexture9.mu" "file24.mu";
connectAttr "place2dTexture9.mv" "file24.mv";
connectAttr "place2dTexture9.s" "file24.s";
connectAttr "place2dTexture9.wu" "file24.wu";
connectAttr "place2dTexture9.wv" "file24.wv";
connectAttr "place2dTexture9.re" "file24.re";
connectAttr "place2dTexture9.of" "file24.of";
connectAttr "place2dTexture9.r" "file24.ro";
connectAttr "place2dTexture9.n" "file24.n";
connectAttr "place2dTexture9.vt1" "file24.vt1";
connectAttr "place2dTexture9.vt2" "file24.vt2";
connectAttr "place2dTexture9.vt3" "file24.vt3";
connectAttr "place2dTexture9.vc1" "file24.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file25.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file25.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file25.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file25.ws";
connectAttr "place2dTexture9.o" "file25.uv";
connectAttr "place2dTexture9.ofs" "file25.fs";
connectAttr "place2dTexture9.c" "file25.c";
connectAttr "place2dTexture9.tf" "file25.tf";
connectAttr "place2dTexture9.rf" "file25.rf";
connectAttr "place2dTexture9.mu" "file25.mu";
connectAttr "place2dTexture9.mv" "file25.mv";
connectAttr "place2dTexture9.s" "file25.s";
connectAttr "place2dTexture9.wu" "file25.wu";
connectAttr "place2dTexture9.wv" "file25.wv";
connectAttr "place2dTexture9.re" "file25.re";
connectAttr "place2dTexture9.of" "file25.of";
connectAttr "place2dTexture9.r" "file25.ro";
connectAttr "place2dTexture9.n" "file25.n";
connectAttr "place2dTexture9.vt1" "file25.vt1";
connectAttr "place2dTexture9.vt2" "file25.vt2";
connectAttr "place2dTexture9.vt3" "file25.vt3";
connectAttr "place2dTexture9.vc1" "file25.vc1";
connectAttr "file23.oc" "multiplyDivide3.i1";
connectAttr "multiplyDivide3.o" "aiStandardSurface1.base_color";
connectAttr "bump2d5.o" "aiStandardSurface1.n";
connectAttr "aiStandardSurface1.out" "set3.ss";
connectAttr "displacementShader2.d" "set3.ds";
connectAttr "set3.msg" "materialInfo3.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo3.m";
connectAttr "aiStandardSurface1.msg" "materialInfo3.t" -na;
connectAttr "file24.oa" "displacementShader2.d";
connectAttr "file25.oa" "bump2d5.bv";
connectAttr ":defaultColorMgtGlobals.cme" "file26.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file26.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file26.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file26.ws";
connectAttr "place2dTexture10.o" "file26.uv";
connectAttr "place2dTexture10.ofs" "file26.fs";
connectAttr "place2dTexture10.c" "file26.c";
connectAttr "place2dTexture10.tf" "file26.tf";
connectAttr "place2dTexture10.rf" "file26.rf";
connectAttr "place2dTexture10.mu" "file26.mu";
connectAttr "place2dTexture10.mv" "file26.mv";
connectAttr "place2dTexture10.s" "file26.s";
connectAttr "place2dTexture10.wu" "file26.wu";
connectAttr "place2dTexture10.wv" "file26.wv";
connectAttr "place2dTexture10.re" "file26.re";
connectAttr "place2dTexture10.of" "file26.of";
connectAttr "place2dTexture10.r" "file26.ro";
connectAttr "place2dTexture10.n" "file26.n";
connectAttr "place2dTexture10.vt1" "file26.vt1";
connectAttr "place2dTexture10.vt2" "file26.vt2";
connectAttr "place2dTexture10.vt3" "file26.vt3";
connectAttr "place2dTexture10.vc1" "file26.vc1";
connectAttr "file26.oa" "bump2d6.bv";
connectAttr "set4.msg" "materialInfo4.sg";
connectAttr "polyTweakUV10.out" "polyMapCut31.ip";
connectAttr "polyMapCut31.out" "polyMapCut32.ip";
connectAttr "polyMapCut32.out" "polyTweakUV135.ip";
connectAttr "polyTweakUV135.out" "polyMapCut33.ip";
connectAttr "polyMapCut33.out" "polyMapCut34.ip";
connectAttr "polyMapCut34.out" "polyMapCut35.ip";
connectAttr "polyMapCut35.out" "polyTweakUV136.ip";
connectAttr "polyTweakUV136.out" "polyMapCut36.ip";
connectAttr "polyMapCut36.out" "polyTweakUV137.ip";
connectAttr "polyTweakUV137.out" "polyMapCut37.ip";
connectAttr "polyMapCut37.out" "polyMapCut38.ip";
connectAttr "polyMapCut38.out" "polyTweakUV138.ip";
connectAttr "place2dTexture11.o" "barrel_wraps.uv";
connectAttr "place2dTexture11.ofs" "barrel_wraps.fs";
connectAttr "barrel_wraps.output_basecolor" "Steel_Polished_basecolor.sbs";
connectAttr "barrel_wraps.rsw" "Steel_Polished_basecolor.rsw";
connectAttr "barrel_wraps.cext" "Steel_Polished_basecolor.cext";
connectAttr "barrel_wraps.hext" "Steel_Polished_basecolor.hext";
connectAttr "barrel_wraps.cfld" "Steel_Polished_basecolor.cprx";
connectAttr "place2dTexture11.o" "Steel_Polished_basecolor.uv";
connectAttr "place2dTexture11.ofs" "Steel_Polished_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file27.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file27.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file27.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file27.ws";
connectAttr "Steel_Polished_basecolor.cpth" "file27.ftn";
connectAttr "place2dTexture11.o" "file27.uv";
connectAttr "place2dTexture11.ofs" "file27.fs";
connectAttr "place2dTexture11.c" "file27.c";
connectAttr "place2dTexture11.tf" "file27.tf";
connectAttr "place2dTexture11.rf" "file27.rf";
connectAttr "place2dTexture11.mu" "file27.mu";
connectAttr "place2dTexture11.mv" "file27.mv";
connectAttr "place2dTexture11.s" "file27.s";
connectAttr "place2dTexture11.wu" "file27.wu";
connectAttr "place2dTexture11.wv" "file27.wv";
connectAttr "place2dTexture11.re" "file27.re";
connectAttr "place2dTexture11.of" "file27.of";
connectAttr "place2dTexture11.r" "file27.ro";
connectAttr "place2dTexture11.n" "file27.n";
connectAttr "place2dTexture11.vt1" "file27.vt1";
connectAttr "place2dTexture11.vt2" "file27.vt2";
connectAttr "place2dTexture11.vt3" "file27.vt3";
connectAttr "place2dTexture11.vc1" "file27.vc1";
connectAttr "barrel_wraps.output_ambientocclusion" "Steel_Polished_ambientocclusion.sbs"
		;
connectAttr "barrel_wraps.rsw" "Steel_Polished_ambientocclusion.rsw";
connectAttr "barrel_wraps.cext" "Steel_Polished_ambientocclusion.cext";
connectAttr "barrel_wraps.hext" "Steel_Polished_ambientocclusion.hext";
connectAttr "barrel_wraps.cfld" "Steel_Polished_ambientocclusion.cprx";
connectAttr "place2dTexture11.o" "Steel_Polished_ambientocclusion.uv";
connectAttr "place2dTexture11.ofs" "Steel_Polished_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file28.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file28.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file28.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file28.ws";
connectAttr "Steel_Polished_ambientocclusion.cpth" "file28.ftn";
connectAttr "place2dTexture11.o" "file28.uv";
connectAttr "place2dTexture11.ofs" "file28.fs";
connectAttr "place2dTexture11.c" "file28.c";
connectAttr "place2dTexture11.tf" "file28.tf";
connectAttr "place2dTexture11.rf" "file28.rf";
connectAttr "place2dTexture11.mu" "file28.mu";
connectAttr "place2dTexture11.mv" "file28.mv";
connectAttr "place2dTexture11.s" "file28.s";
connectAttr "place2dTexture11.wu" "file28.wu";
connectAttr "place2dTexture11.wv" "file28.wv";
connectAttr "place2dTexture11.re" "file28.re";
connectAttr "place2dTexture11.of" "file28.of";
connectAttr "place2dTexture11.r" "file28.ro";
connectAttr "place2dTexture11.n" "file28.n";
connectAttr "place2dTexture11.vt1" "file28.vt1";
connectAttr "place2dTexture11.vt2" "file28.vt2";
connectAttr "place2dTexture11.vt3" "file28.vt3";
connectAttr "place2dTexture11.vc1" "file28.vc1";
connectAttr "barrel_wraps.output_metallic" "Steel_Polished_metallic.sbs";
connectAttr "barrel_wraps.rsw" "Steel_Polished_metallic.rsw";
connectAttr "barrel_wraps.cext" "Steel_Polished_metallic.cext";
connectAttr "barrel_wraps.hext" "Steel_Polished_metallic.hext";
connectAttr "barrel_wraps.cfld" "Steel_Polished_metallic.cprx";
connectAttr "place2dTexture11.o" "Steel_Polished_metallic.uv";
connectAttr "place2dTexture11.ofs" "Steel_Polished_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file29.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file29.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file29.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file29.ws";
connectAttr "Steel_Polished_metallic.cpth" "file29.ftn";
connectAttr "place2dTexture11.o" "file29.uv";
connectAttr "place2dTexture11.ofs" "file29.fs";
connectAttr "place2dTexture11.c" "file29.c";
connectAttr "place2dTexture11.tf" "file29.tf";
connectAttr "place2dTexture11.rf" "file29.rf";
connectAttr "place2dTexture11.mu" "file29.mu";
connectAttr "place2dTexture11.mv" "file29.mv";
connectAttr "place2dTexture11.s" "file29.s";
connectAttr "place2dTexture11.wu" "file29.wu";
connectAttr "place2dTexture11.wv" "file29.wv";
connectAttr "place2dTexture11.re" "file29.re";
connectAttr "place2dTexture11.of" "file29.of";
connectAttr "place2dTexture11.r" "file29.ro";
connectAttr "place2dTexture11.n" "file29.n";
connectAttr "place2dTexture11.vt1" "file29.vt1";
connectAttr "place2dTexture11.vt2" "file29.vt2";
connectAttr "place2dTexture11.vt3" "file29.vt3";
connectAttr "place2dTexture11.vc1" "file29.vc1";
connectAttr "barrel_wraps.output_normal" "Steel_Polished_normal.sbs";
connectAttr "barrel_wraps.rsw" "Steel_Polished_normal.rsw";
connectAttr "barrel_wraps.cext" "Steel_Polished_normal.cext";
connectAttr "barrel_wraps.hext" "Steel_Polished_normal.hext";
connectAttr "barrel_wraps.cfld" "Steel_Polished_normal.cprx";
connectAttr "place2dTexture11.o" "Steel_Polished_normal.uv";
connectAttr "place2dTexture11.ofs" "Steel_Polished_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file30.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file30.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file30.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file30.ws";
connectAttr "Steel_Polished_normal.cpth" "file30.ftn";
connectAttr "place2dTexture11.o" "file30.uv";
connectAttr "place2dTexture11.ofs" "file30.fs";
connectAttr "place2dTexture11.c" "file30.c";
connectAttr "place2dTexture11.tf" "file30.tf";
connectAttr "place2dTexture11.rf" "file30.rf";
connectAttr "place2dTexture11.mu" "file30.mu";
connectAttr "place2dTexture11.mv" "file30.mv";
connectAttr "place2dTexture11.s" "file30.s";
connectAttr "place2dTexture11.wu" "file30.wu";
connectAttr "place2dTexture11.wv" "file30.wv";
connectAttr "place2dTexture11.re" "file30.re";
connectAttr "place2dTexture11.of" "file30.of";
connectAttr "place2dTexture11.r" "file30.ro";
connectAttr "place2dTexture11.n" "file30.n";
connectAttr "place2dTexture11.vt1" "file30.vt1";
connectAttr "place2dTexture11.vt2" "file30.vt2";
connectAttr "place2dTexture11.vt3" "file30.vt3";
connectAttr "place2dTexture11.vc1" "file30.vc1";
connectAttr "barrel_wraps.output_height" "Steel_Polished_height.sbs";
connectAttr "barrel_wraps.rsw" "Steel_Polished_height.rsw";
connectAttr "barrel_wraps.cext" "Steel_Polished_height.cext";
connectAttr "barrel_wraps.hext" "Steel_Polished_height.hext";
connectAttr "barrel_wraps.cfld" "Steel_Polished_height.cprx";
connectAttr "place2dTexture11.o" "Steel_Polished_height.uv";
connectAttr "place2dTexture11.ofs" "Steel_Polished_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file31.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file31.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file31.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file31.ws";
connectAttr "Steel_Polished_height.cpth" "file31.ftn";
connectAttr "place2dTexture11.o" "file31.uv";
connectAttr "place2dTexture11.ofs" "file31.fs";
connectAttr "place2dTexture11.c" "file31.c";
connectAttr "place2dTexture11.tf" "file31.tf";
connectAttr "place2dTexture11.rf" "file31.rf";
connectAttr "place2dTexture11.mu" "file31.mu";
connectAttr "place2dTexture11.mv" "file31.mv";
connectAttr "place2dTexture11.s" "file31.s";
connectAttr "place2dTexture11.wu" "file31.wu";
connectAttr "place2dTexture11.wv" "file31.wv";
connectAttr "place2dTexture11.re" "file31.re";
connectAttr "place2dTexture11.of" "file31.of";
connectAttr "place2dTexture11.r" "file31.ro";
connectAttr "place2dTexture11.n" "file31.n";
connectAttr "place2dTexture11.vt1" "file31.vt1";
connectAttr "place2dTexture11.vt2" "file31.vt2";
connectAttr "place2dTexture11.vt3" "file31.vt3";
connectAttr "place2dTexture11.vc1" "file31.vc1";
connectAttr "barrel_wraps.output_roughness" "Steel_Polished_roughness.sbs";
connectAttr "barrel_wraps.rsw" "Steel_Polished_roughness.rsw";
connectAttr "barrel_wraps.cext" "Steel_Polished_roughness.cext";
connectAttr "barrel_wraps.hext" "Steel_Polished_roughness.hext";
connectAttr "barrel_wraps.cfld" "Steel_Polished_roughness.cprx";
connectAttr "place2dTexture11.o" "Steel_Polished_roughness.uv";
connectAttr "place2dTexture11.ofs" "Steel_Polished_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file32.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file32.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file32.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file32.ws";
connectAttr "Steel_Polished_roughness.cpth" "file32.ftn";
connectAttr "place2dTexture11.o" "file32.uv";
connectAttr "place2dTexture11.ofs" "file32.fs";
connectAttr "place2dTexture11.c" "file32.c";
connectAttr "place2dTexture11.tf" "file32.tf";
connectAttr "place2dTexture11.rf" "file32.rf";
connectAttr "place2dTexture11.mu" "file32.mu";
connectAttr "place2dTexture11.mv" "file32.mv";
connectAttr "place2dTexture11.s" "file32.s";
connectAttr "place2dTexture11.wu" "file32.wu";
connectAttr "place2dTexture11.wv" "file32.wv";
connectAttr "place2dTexture11.re" "file32.re";
connectAttr "place2dTexture11.of" "file32.of";
connectAttr "place2dTexture11.r" "file32.ro";
connectAttr "place2dTexture11.n" "file32.n";
connectAttr "place2dTexture11.vt1" "file32.vt1";
connectAttr "place2dTexture11.vt2" "file32.vt2";
connectAttr "place2dTexture11.vt3" "file32.vt3";
connectAttr "place2dTexture11.vc1" "file32.vc1";
connectAttr "file27.oc" "multiplyDivide4.i1";
connectAttr "file28.oc" "multiplyDivide4.i2";
connectAttr "multiplyDivide4.o" "barrel_wraps1.base_color";
connectAttr "bump2d7.o" "barrel_wraps1.n";
connectAttr "file32.oa" "barrel_wraps1.specular_roughness";
connectAttr "file29.oa" "barrel_wraps1.metalness";
connectAttr "barrel_wraps1.out" "set5.ss";
connectAttr "displacementShader3.d" "set5.ds";
connectAttr "polyextrude9_0Shape.iog.og[1]" "set5.dsm" -na;
connectAttr "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.iog.og[0]" "set5.dsm"
		 -na;
connectAttr "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.iog.og[0]" "set5.dsm"
		 -na;
connectAttr "groupId3.msg" "set5.gn" -na;
connectAttr "groupId4.msg" "set5.gn" -na;
connectAttr "groupId7.msg" "set5.gn" -na;
connectAttr "set5.msg" "materialInfo5.sg";
connectAttr "barrel_wraps1.msg" "materialInfo5.m";
connectAttr "file27.msg" "materialInfo5.t" -na;
connectAttr "file30.oa" "bump2d7.bv";
connectAttr "file31.oa" "displacementShader3.d";
connectAttr "polyTweakUV138.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyTweakUV88.out" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "place2dTexture12.o" "stool_seat.uv";
connectAttr "place2dTexture12.ofs" "stool_seat.fs";
connectAttr "stool_seat.output_basecolor" "Bamboo_Wood_Varnished_basecolor.sbs";
connectAttr "stool_seat.rsw" "Bamboo_Wood_Varnished_basecolor.rsw";
connectAttr "stool_seat.cext" "Bamboo_Wood_Varnished_basecolor.cext";
connectAttr "stool_seat.hext" "Bamboo_Wood_Varnished_basecolor.hext";
connectAttr "stool_seat.cfld" "Bamboo_Wood_Varnished_basecolor.cprx";
connectAttr "place2dTexture12.o" "Bamboo_Wood_Varnished_basecolor.uv";
connectAttr "place2dTexture12.ofs" "Bamboo_Wood_Varnished_basecolor.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file33.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file33.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file33.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file33.ws";
connectAttr "Bamboo_Wood_Varnished_basecolor.cpth" "file33.ftn";
connectAttr "place2dTexture12.o" "file33.uv";
connectAttr "place2dTexture12.ofs" "file33.fs";
connectAttr "place2dTexture12.c" "file33.c";
connectAttr "place2dTexture12.tf" "file33.tf";
connectAttr "place2dTexture12.rf" "file33.rf";
connectAttr "place2dTexture12.mu" "file33.mu";
connectAttr "place2dTexture12.mv" "file33.mv";
connectAttr "place2dTexture12.s" "file33.s";
connectAttr "place2dTexture12.wu" "file33.wu";
connectAttr "place2dTexture12.wv" "file33.wv";
connectAttr "place2dTexture12.re" "file33.re";
connectAttr "place2dTexture12.of" "file33.of";
connectAttr "place2dTexture12.r" "file33.ro";
connectAttr "place2dTexture12.n" "file33.n";
connectAttr "place2dTexture12.vt1" "file33.vt1";
connectAttr "place2dTexture12.vt2" "file33.vt2";
connectAttr "place2dTexture12.vt3" "file33.vt3";
connectAttr "place2dTexture12.vc1" "file33.vc1";
connectAttr "stool_seat.output_ambientocclusion" "Bamboo_Wood_Varnished_ambientocclusion.sbs"
		;
connectAttr "stool_seat.rsw" "Bamboo_Wood_Varnished_ambientocclusion.rsw";
connectAttr "stool_seat.cext" "Bamboo_Wood_Varnished_ambientocclusion.cext";
connectAttr "stool_seat.hext" "Bamboo_Wood_Varnished_ambientocclusion.hext";
connectAttr "stool_seat.cfld" "Bamboo_Wood_Varnished_ambientocclusion.cprx";
connectAttr "place2dTexture12.o" "Bamboo_Wood_Varnished_ambientocclusion.uv";
connectAttr "place2dTexture12.ofs" "Bamboo_Wood_Varnished_ambientocclusion.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file34.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file34.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file34.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file34.ws";
connectAttr "Bamboo_Wood_Varnished_ambientocclusion.cpth" "file34.ftn";
connectAttr "place2dTexture12.o" "file34.uv";
connectAttr "place2dTexture12.ofs" "file34.fs";
connectAttr "place2dTexture12.c" "file34.c";
connectAttr "place2dTexture12.tf" "file34.tf";
connectAttr "place2dTexture12.rf" "file34.rf";
connectAttr "place2dTexture12.mu" "file34.mu";
connectAttr "place2dTexture12.mv" "file34.mv";
connectAttr "place2dTexture12.s" "file34.s";
connectAttr "place2dTexture12.wu" "file34.wu";
connectAttr "place2dTexture12.wv" "file34.wv";
connectAttr "place2dTexture12.re" "file34.re";
connectAttr "place2dTexture12.of" "file34.of";
connectAttr "place2dTexture12.r" "file34.ro";
connectAttr "place2dTexture12.n" "file34.n";
connectAttr "place2dTexture12.vt1" "file34.vt1";
connectAttr "place2dTexture12.vt2" "file34.vt2";
connectAttr "place2dTexture12.vt3" "file34.vt3";
connectAttr "place2dTexture12.vc1" "file34.vc1";
connectAttr "stool_seat.output_metallic" "Bamboo_Wood_Varnished_metallic.sbs";
connectAttr "stool_seat.rsw" "Bamboo_Wood_Varnished_metallic.rsw";
connectAttr "stool_seat.cext" "Bamboo_Wood_Varnished_metallic.cext";
connectAttr "stool_seat.hext" "Bamboo_Wood_Varnished_metallic.hext";
connectAttr "stool_seat.cfld" "Bamboo_Wood_Varnished_metallic.cprx";
connectAttr "place2dTexture12.o" "Bamboo_Wood_Varnished_metallic.uv";
connectAttr "place2dTexture12.ofs" "Bamboo_Wood_Varnished_metallic.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file35.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file35.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file35.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file35.ws";
connectAttr "Bamboo_Wood_Varnished_metallic.cpth" "file35.ftn";
connectAttr "place2dTexture12.o" "file35.uv";
connectAttr "place2dTexture12.ofs" "file35.fs";
connectAttr "place2dTexture12.c" "file35.c";
connectAttr "place2dTexture12.tf" "file35.tf";
connectAttr "place2dTexture12.rf" "file35.rf";
connectAttr "place2dTexture12.mu" "file35.mu";
connectAttr "place2dTexture12.mv" "file35.mv";
connectAttr "place2dTexture12.s" "file35.s";
connectAttr "place2dTexture12.wu" "file35.wu";
connectAttr "place2dTexture12.wv" "file35.wv";
connectAttr "place2dTexture12.re" "file35.re";
connectAttr "place2dTexture12.of" "file35.of";
connectAttr "place2dTexture12.r" "file35.ro";
connectAttr "place2dTexture12.n" "file35.n";
connectAttr "place2dTexture12.vt1" "file35.vt1";
connectAttr "place2dTexture12.vt2" "file35.vt2";
connectAttr "place2dTexture12.vt3" "file35.vt3";
connectAttr "place2dTexture12.vc1" "file35.vc1";
connectAttr "stool_seat.output_normal" "Bamboo_Wood_Varnished_normal.sbs";
connectAttr "stool_seat.rsw" "Bamboo_Wood_Varnished_normal.rsw";
connectAttr "stool_seat.cext" "Bamboo_Wood_Varnished_normal.cext";
connectAttr "stool_seat.hext" "Bamboo_Wood_Varnished_normal.hext";
connectAttr "stool_seat.cfld" "Bamboo_Wood_Varnished_normal.cprx";
connectAttr "place2dTexture12.o" "Bamboo_Wood_Varnished_normal.uv";
connectAttr "place2dTexture12.ofs" "Bamboo_Wood_Varnished_normal.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file36.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file36.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file36.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file36.ws";
connectAttr "Bamboo_Wood_Varnished_normal.cpth" "file36.ftn";
connectAttr "place2dTexture12.o" "file36.uv";
connectAttr "place2dTexture12.ofs" "file36.fs";
connectAttr "place2dTexture12.c" "file36.c";
connectAttr "place2dTexture12.tf" "file36.tf";
connectAttr "place2dTexture12.rf" "file36.rf";
connectAttr "place2dTexture12.mu" "file36.mu";
connectAttr "place2dTexture12.mv" "file36.mv";
connectAttr "place2dTexture12.s" "file36.s";
connectAttr "place2dTexture12.wu" "file36.wu";
connectAttr "place2dTexture12.wv" "file36.wv";
connectAttr "place2dTexture12.re" "file36.re";
connectAttr "place2dTexture12.of" "file36.of";
connectAttr "place2dTexture12.r" "file36.ro";
connectAttr "place2dTexture12.n" "file36.n";
connectAttr "place2dTexture12.vt1" "file36.vt1";
connectAttr "place2dTexture12.vt2" "file36.vt2";
connectAttr "place2dTexture12.vt3" "file36.vt3";
connectAttr "place2dTexture12.vc1" "file36.vc1";
connectAttr "stool_seat.output_height" "Bamboo_Wood_Varnished_height.sbs";
connectAttr "stool_seat.rsw" "Bamboo_Wood_Varnished_height.rsw";
connectAttr "stool_seat.cext" "Bamboo_Wood_Varnished_height.cext";
connectAttr "stool_seat.hext" "Bamboo_Wood_Varnished_height.hext";
connectAttr "stool_seat.cfld" "Bamboo_Wood_Varnished_height.cprx";
connectAttr "place2dTexture12.o" "Bamboo_Wood_Varnished_height.uv";
connectAttr "place2dTexture12.ofs" "Bamboo_Wood_Varnished_height.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file37.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file37.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file37.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file37.ws";
connectAttr "Bamboo_Wood_Varnished_height.cpth" "file37.ftn";
connectAttr "place2dTexture12.o" "file37.uv";
connectAttr "place2dTexture12.ofs" "file37.fs";
connectAttr "place2dTexture12.c" "file37.c";
connectAttr "place2dTexture12.tf" "file37.tf";
connectAttr "place2dTexture12.rf" "file37.rf";
connectAttr "place2dTexture12.mu" "file37.mu";
connectAttr "place2dTexture12.mv" "file37.mv";
connectAttr "place2dTexture12.s" "file37.s";
connectAttr "place2dTexture12.wu" "file37.wu";
connectAttr "place2dTexture12.wv" "file37.wv";
connectAttr "place2dTexture12.re" "file37.re";
connectAttr "place2dTexture12.of" "file37.of";
connectAttr "place2dTexture12.r" "file37.ro";
connectAttr "place2dTexture12.n" "file37.n";
connectAttr "place2dTexture12.vt1" "file37.vt1";
connectAttr "place2dTexture12.vt2" "file37.vt2";
connectAttr "place2dTexture12.vt3" "file37.vt3";
connectAttr "place2dTexture12.vc1" "file37.vc1";
connectAttr "stool_seat.output_roughness" "Bamboo_Wood_Varnished_roughness.sbs";
connectAttr "stool_seat.rsw" "Bamboo_Wood_Varnished_roughness.rsw";
connectAttr "stool_seat.cext" "Bamboo_Wood_Varnished_roughness.cext";
connectAttr "stool_seat.hext" "Bamboo_Wood_Varnished_roughness.hext";
connectAttr "stool_seat.cfld" "Bamboo_Wood_Varnished_roughness.cprx";
connectAttr "place2dTexture12.o" "Bamboo_Wood_Varnished_roughness.uv";
connectAttr "place2dTexture12.ofs" "Bamboo_Wood_Varnished_roughness.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file38.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file38.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file38.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file38.ws";
connectAttr "Bamboo_Wood_Varnished_roughness.cpth" "file38.ftn";
connectAttr "place2dTexture12.o" "file38.uv";
connectAttr "place2dTexture12.ofs" "file38.fs";
connectAttr "place2dTexture12.c" "file38.c";
connectAttr "place2dTexture12.tf" "file38.tf";
connectAttr "place2dTexture12.rf" "file38.rf";
connectAttr "place2dTexture12.mu" "file38.mu";
connectAttr "place2dTexture12.mv" "file38.mv";
connectAttr "place2dTexture12.s" "file38.s";
connectAttr "place2dTexture12.wu" "file38.wu";
connectAttr "place2dTexture12.wv" "file38.wv";
connectAttr "place2dTexture12.re" "file38.re";
connectAttr "place2dTexture12.of" "file38.of";
connectAttr "place2dTexture12.r" "file38.ro";
connectAttr "place2dTexture12.n" "file38.n";
connectAttr "place2dTexture12.vt1" "file38.vt1";
connectAttr "place2dTexture12.vt2" "file38.vt2";
connectAttr "place2dTexture12.vt3" "file38.vt3";
connectAttr "place2dTexture12.vc1" "file38.vc1";
connectAttr "file33.oc" "multiplyDivide5.i1";
connectAttr "file34.oc" "multiplyDivide5.i2";
connectAttr "multiplyDivide5.o" "stool_seat1.base_color";
connectAttr "bump2d8.o" "stool_seat1.n";
connectAttr "file38.oa" "stool_seat1.specular_roughness";
connectAttr "file35.oa" "stool_seat1.metalness";
connectAttr "stool_seat1.out" "set6.ss";
connectAttr "displacementShader4.d" "set6.ds";
connectAttr "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.iog.og[1]" "set6.dsm"
		 -na;
connectAttr "groupId9.msg" "set6.gn" -na;
connectAttr "set6.msg" "materialInfo6.sg";
connectAttr "stool_seat1.msg" "materialInfo6.m";
connectAttr "file33.msg" "materialInfo6.t" -na;
connectAttr "file36.oa" "bump2d8.bv";
connectAttr "file37.oa" "displacementShader4.d";
connectAttr "polyTweakUV134.out" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId9.id" "groupParts6.gi";
connectAttr "file33.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "file18.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "set3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file28.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "bump2d5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Stylized_Scratched_Wood_Planks_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "multiplyDivide1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "file21.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "barrel_wraps1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "displacementShader2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "file24.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "set2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "asteroid2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "file13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "file20.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Steel_Polished_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "place2dTexture7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Stylized_Scratched_Wood_Planks_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "substanceNode5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Steel_Polished_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "file29.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Aluminium_Close_Cell_Foam_normal1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "bump2d6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "file19.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Aluminium_Close_Cell_Foam_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Stylized_Scratched_Wood_Planks_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "file31.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Stylized_Scratched_Wood_Planks_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Aluminium_Close_Cell_Foam_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "file27.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "place2dTexture6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "file32.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Stylized_Scratched_Wood_Planks_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "crate.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Steel_Polished_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "file30.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "substanceNode3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "set1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "file14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Bamboo_Wood_Varnished_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Aluminium_Close_Cell_Foam_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "place2dTexture9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "file15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "displacementShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "file23.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "file11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "place2dTexture8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "bump2d3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "file12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "multiplyDivide4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "file22.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "barrel_wraps.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Stylized_Scratched_Wood_Planks_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "file16.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "file17.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "place2dTexture10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Steel_Polished_basecolor.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "bump2d7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "bump2d4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "multiplyDivide2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Aluminium_Close_Cell_Foam_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "set5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "file25.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "substanceNode4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "file35.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Bamboo_Wood_Varnished_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "file34.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Bamboo_Wood_Varnished_normal.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "file36.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Bamboo_Wood_Varnished_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "file37.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Bamboo_Wood_Varnished_roughness.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "file38.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "multiplyDivide5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "stool_seat1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "set6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "bump2d8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "displacementShader4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "place2dTexture11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "displacementShader3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "set4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "aiStandardSurface1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Steel_Polished_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Aluminium_Close_Cell_Foam_height.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "multiplyDivide3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "file26.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "place2dTexture12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Bamboo_Wood_Varnished_ambientocclusion.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Steel_Polished_metallic.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "stool_seat.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "crate_initialShadingGroup.pa" ":renderPartition.st" -na;
connectAttr "crate_initialShadingGroup2.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "set3.pa" ":renderPartition.st" -na;
connectAttr "set4.pa" ":renderPartition.st" -na;
connectAttr "set5.pa" ":renderPartition.st" -na;
connectAttr "set6.pa" ":renderPartition.st" -na;
connectAttr "crate_initialShadingGroup1.msg" ":defaultShaderList1.s" -na;
connectAttr "crate_initialShadingGroup3.msg" ":defaultShaderList1.s" -na;
connectAttr "asteroid2.msg" ":defaultShaderList1.s" -na;
connectAttr "crate.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "barrel_wraps1.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "stool_seat1.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "areaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "asteroid.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_basecolor1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_normal.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_height1.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode3.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_basecolor.msg" ":defaultTextureList1.tx" 
		-na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_metallic.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_normal1.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_height.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
connectAttr "Aluminium_Close_Cell_Foam_roughness.msg" ":defaultTextureList1.tx" 
		-na;
connectAttr "file16.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode4.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Scratched_Wood_Planks_basecolor.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file17.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Scratched_Wood_Planks_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file18.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Scratched_Wood_Planks_metallic.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file19.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Scratched_Wood_Planks_normal.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file20.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Scratched_Wood_Planks_height.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file21.msg" ":defaultTextureList1.tx" -na;
connectAttr "Stylized_Scratched_Wood_Planks_roughness.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file22.msg" ":defaultTextureList1.tx" -na;
connectAttr "substanceNode5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file23.msg" ":defaultTextureList1.tx" -na;
connectAttr "file24.msg" ":defaultTextureList1.tx" -na;
connectAttr "file25.msg" ":defaultTextureList1.tx" -na;
connectAttr "file26.msg" ":defaultTextureList1.tx" -na;
connectAttr "barrel_wraps.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Polished_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file27.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Polished_ambientocclusion.msg" ":defaultTextureList1.tx" -na;
connectAttr "file28.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Polished_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file29.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Polished_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file30.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Polished_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file31.msg" ":defaultTextureList1.tx" -na;
connectAttr "Steel_Polished_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file32.msg" ":defaultTextureList1.tx" -na;
connectAttr "stool_seat.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bamboo_Wood_Varnished_basecolor.msg" ":defaultTextureList1.tx" -na;
connectAttr "file33.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bamboo_Wood_Varnished_ambientocclusion.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "file34.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bamboo_Wood_Varnished_metallic.msg" ":defaultTextureList1.tx" -na;
connectAttr "file35.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bamboo_Wood_Varnished_normal.msg" ":defaultTextureList1.tx" -na;
connectAttr "file36.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bamboo_Wood_Varnished_height.msg" ":defaultTextureList1.tx" -na;
connectAttr "file37.msg" ":defaultTextureList1.tx" -na;
connectAttr "Bamboo_Wood_Varnished_roughness.msg" ":defaultTextureList1.tx" -na;
connectAttr "file38.msg" ":defaultTextureList1.tx" -na;
connectAttr "|owynnarmstrong__dev__table__1_01|table1|merge1_0|merge1_0Shape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|owynnarmstrong__dev__stool__1_01|stool1|merge1_0|merge1_0Shape.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "areaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
// End of unit 3.ma
