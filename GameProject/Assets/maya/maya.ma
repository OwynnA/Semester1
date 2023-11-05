//Maya ASCII 2023 scene
//Name: maya.ma
//Last modified: Wed, Nov 01, 2023 12:08:16 PM
//Codeset: UTF-8
file -rdi 1 -ns "PALBot" -rfn "PALBotRN" -op "v=0;" -typ "mayaAscii" "/Users/owynnarmstrong/Downloads/PALBOT/scenes/PALBot.ma";
file -r -ns "PALBot" -dr 1 -rfn "PALBotRN" -op "v=0;" -typ "mayaAscii" "/Users/owynnarmstrong/Downloads/PALBOT/scenes/PALBot.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Mac OS X 10.16";
fileInfo "UUID" "3C305854-CB4C-1192-7396-88B10C64DF9A";
createNode transform -s -n "persp";
	rename -uid "44F834B6-C64B-2A57-AD39-A98E20B088DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -61.450062912948397 15.171450206580211 42.903513768228549 ;
	setAttr ".r" -type "double3" -366.00000000021458 -413.59999999913754 0 ;
	setAttr ".rpt" -type "double3" 5.9045040780790635e-19 8.2676508594156424e-18 -7.1306761601246994e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8AB29EC0-5D42-060C-3B7C-418E363D7E56";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 80.943930864649019;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.11057459996225279 18.87388457992833 1.7461076536017721 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D7509DAD-D040-B966-BEC8-789244805BB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "392D7697-824D-5A74-1D98-6F97C0656364";
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
	rename -uid "565AF3C3-DF48-BC6C-DA5B-41935B010084";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "01188A2C-E842-7F8C-1404-55AE14FB8889";
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
	rename -uid "7D665A4C-6F41-AB5E-86BC-6BB7B9C8B002";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "77ED209D-164E-0C62-4ECA-C397EE1B4EFB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D4E0F15F-F349-E605-1D47-67A7B722B131";
	setAttr -s 17 ".lnk";
	setAttr -s 17 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "674D0657-4743-D93A-133B-B4BDCB55B0C4";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A4913B70-954C-F138-2D92-0DBE828344E9";
createNode displayLayerManager -n "layerManager";
	rename -uid "55E31CB1-2F4A-342D-01B3-5EB1CE19B945";
createNode displayLayer -n "defaultLayer";
	rename -uid "B2CD7C81-2846-F942-27FC-88B5BABDC7F3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F8CE3E3A-1B48-0E62-8C1C-2A9EF4AD0887";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B57960B3-7C4B-72BB-7338-5E9EDF3D176E";
	setAttr ".g" yes;
createNode reference -n "PALBotRN";
	rename -uid "9D9B6298-D34C-82C3-4F63-70A8946AFB6E";
	setAttr -s 434 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"PALBotRN"
		"PALBotRN" 0
		"PALBotRN" 436
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_HeadGRP|PALBot:GLASS_clean|PALBot:GLASS_cleanShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_elbow_aim_offset|PALBot:PALbot_R_elbow_aim_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.rotateX" 
		"PALBotRN.placeHolderList[1]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.rotateY" 
		"PALBotRN.placeHolderList[2]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.rotateZ" 
		"PALBotRN.placeHolderList[3]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.visibility" 
		"PALBotRN.placeHolderList[4]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.translateX" 
		"PALBotRN.placeHolderList[5]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.translateY" 
		"PALBotRN.placeHolderList[6]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.translateZ" 
		"PALBotRN.placeHolderList[7]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.scaleX" 
		"PALBotRN.placeHolderList[8]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.scaleY" 
		"PALBotRN.placeHolderList[9]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam02.scaleZ" 
		"PALBotRN.placeHolderList[10]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.rotateX" 
		"PALBotRN.placeHolderList[11]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.rotateY" 
		"PALBotRN.placeHolderList[12]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.rotateZ" 
		"PALBotRN.placeHolderList[13]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.visibility" 
		"PALBotRN.placeHolderList[14]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.translateX" 
		"PALBotRN.placeHolderList[15]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.translateY" 
		"PALBotRN.placeHolderList[16]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.translateZ" 
		"PALBotRN.placeHolderList[17]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.scaleX" 
		"PALBotRN.placeHolderList[18]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.scaleY" 
		"PALBotRN.placeHolderList[19]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_MESH|PALBot:PALbot_LeftARM_GRP|PALBot:PALbot_Left_Forearm_grp|PALBot:PALbot_Left_Forearm_lightbeamgrp|PALBot:PALbot_Left_Forearm_lightbeam01.scaleZ" 
		"PALBotRN.placeHolderList[20]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.global_scale" 
		"PALBotRN.placeHolderList[21]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.Mesh_lock" 
		"PALBotRN.placeHolderList[22]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateX" 
		"PALBotRN.placeHolderList[23]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateY" 
		"PALBotRN.placeHolderList[24]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.translateZ" 
		"PALBotRN.placeHolderList[25]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateX" 
		"PALBotRN.placeHolderList[26]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateY" 
		"PALBotRN.placeHolderList[27]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN.rotateZ" 
		"PALBotRN.placeHolderList[28]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateX" 
		"PALBotRN.placeHolderList[29]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateY" 
		"PALBotRN.placeHolderList[30]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.translateZ" 
		"PALBotRN.placeHolderList[31]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateX" 
		"PALBotRN.placeHolderList[32]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateY" 
		"PALBotRN.placeHolderList[33]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root.rotateZ" 
		"PALBotRN.placeHolderList[34]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.space_switch" 
		"PALBotRN.placeHolderList[35]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateX" 
		"PALBotRN.placeHolderList[36]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateY" 
		"PALBotRN.placeHolderList[37]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.translateZ" 
		"PALBotRN.placeHolderList[38]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateX" 
		"PALBotRN.placeHolderList[39]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateY" 
		"PALBotRN.placeHolderList[40]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_knee_aim_offset|PALBot:PALbot_L_knee_aim_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[41]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg.translateX" 
		"PALBotRN.placeHolderList[42]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg.translateY" 
		"PALBotRN.placeHolderList[43]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg.translateZ" 
		"PALBotRN.placeHolderList[44]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg.rotateY" 
		"PALBotRN.placeHolderList[45]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg.rotateX" 
		"PALBotRN.placeHolderList[46]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg.rotateZ" 
		"PALBotRN.placeHolderList[47]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01.translateX" 
		"PALBotRN.placeHolderList[48]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01.translateY" 
		"PALBotRN.placeHolderList[49]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01.translateZ" 
		"PALBotRN.placeHolderList[50]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01.rotateX" 
		"PALBotRN.placeHolderList[51]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01.rotateY" 
		"PALBotRN.placeHolderList[52]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01.rotateZ" 
		"PALBotRN.placeHolderList[53]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02.translateX" 
		"PALBotRN.placeHolderList[54]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02.translateY" 
		"PALBotRN.placeHolderList[55]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02.translateZ" 
		"PALBotRN.placeHolderList[56]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02.rotateX" 
		"PALBotRN.placeHolderList[57]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02.rotateY" 
		"PALBotRN.placeHolderList[58]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02.rotateZ" 
		"PALBotRN.placeHolderList[59]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot.translateX" 
		"PALBotRN.placeHolderList[60]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot.translateY" 
		"PALBotRN.placeHolderList[61]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot.translateZ" 
		"PALBotRN.placeHolderList[62]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot.rotateY" 
		"PALBotRN.placeHolderList[63]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot.rotateX" 
		"PALBotRN.placeHolderList[64]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot.rotateZ" 
		"PALBotRN.placeHolderList[65]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot|PALBot:PALbot_L_FK_ankle_offset|PALBot:PALbot_L_FK_ankle.translateX" 
		"PALBotRN.placeHolderList[66]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot|PALBot:PALbot_L_FK_ankle_offset|PALBot:PALbot_L_FK_ankle.translateY" 
		"PALBotRN.placeHolderList[67]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot|PALBot:PALbot_L_FK_ankle_offset|PALBot:PALbot_L_FK_ankle.translateZ" 
		"PALBotRN.placeHolderList[68]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot|PALBot:PALbot_L_FK_ankle_offset|PALBot:PALbot_L_FK_ankle.rotateX" 
		"PALBotRN.placeHolderList[69]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot|PALBot:PALbot_L_FK_ankle_offset|PALBot:PALbot_L_FK_ankle.rotateY" 
		"PALBotRN.placeHolderList[70]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_FK_leg_offset|PALBot:PALbot_L_FK_leg|PALBot:PALbot_L_FK_knee01_offset|PALBot:PALbot_L_FK_knee01|PALBot:PALbot_L_FK_knee02_offset|PALBot:PALbot_L_FK_knee02|PALBot:PALbot_L_FK_foot_offset|PALBot:PALbot_L_FK_foot|PALBot:PALbot_L_FK_ankle_offset|PALBot:PALbot_L_FK_ankle.rotateZ" 
		"PALBotRN.placeHolderList[71]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateX" 
		"PALBotRN.placeHolderList[72]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateY" 
		"PALBotRN.placeHolderList[73]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.translateZ" 
		"PALBotRN.placeHolderList[74]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateX" 
		"PALBotRN.placeHolderList[75]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateY" 
		"PALBotRN.placeHolderList[76]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary.rotateZ" 
		"PALBotRN.placeHolderList[77]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateX" 
		"PALBotRN.placeHolderList[78]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateY" 
		"PALBotRN.placeHolderList[79]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.translateZ" 
		"PALBotRN.placeHolderList[80]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateX" 
		"PALBotRN.placeHolderList[81]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateY" 
		"PALBotRN.placeHolderList[82]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape01_offset|PALBot:PALbot_L_footSec_reshape01.rotateZ" 
		"PALBotRN.placeHolderList[83]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateX" 
		"PALBotRN.placeHolderList[84]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateY" 
		"PALBotRN.placeHolderList[85]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.translateZ" 
		"PALBotRN.placeHolderList[86]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateX" 
		"PALBotRN.placeHolderList[87]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateY" 
		"PALBotRN.placeHolderList[88]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_foot_secondary_offset|PALBot:PALbot_L_foot_secondary|PALBot:PALbot_L_footSec_reshape02_offset|PALBot:PALbot_L_footSec_reshape02.rotateZ" 
		"PALBotRN.placeHolderList[89]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.on_off" 
		"PALBotRN.placeHolderList[90]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateX" 
		"PALBotRN.placeHolderList[91]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateY" 
		"PALBotRN.placeHolderList[92]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.translateZ" 
		"PALBotRN.placeHolderList[93]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateX" 
		"PALBotRN.placeHolderList[94]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateY" 
		"PALBotRN.placeHolderList[95]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[96]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleX" 
		"PALBotRN.placeHolderList[97]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleY" 
		"PALBotRN.placeHolderList[98]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_Engine_ctrl_offset|PALBot:PALbot_L_Engine_ctrl.scaleZ" 
		"PALBotRN.placeHolderList[99]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.Heel_Peel" 
		"PALBotRN.placeHolderList[100]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.follow_hip" 
		"PALBotRN.placeHolderList[101]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateX" 
		"PALBotRN.placeHolderList[102]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateY" 
		"PALBotRN.placeHolderList[103]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.translateZ" 
		"PALBotRN.placeHolderList[104]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateX" 
		"PALBotRN.placeHolderList[105]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateY" 
		"PALBotRN.placeHolderList[106]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[107]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateX" 
		"PALBotRN.placeHolderList[108]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateY" 
		"PALBotRN.placeHolderList[109]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.translateZ" 
		"PALBotRN.placeHolderList[110]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateX" 
		"PALBotRN.placeHolderList[111]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateY" 
		"PALBotRN.placeHolderList[112]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip.rotateZ" 
		"PALBotRN.placeHolderList[113]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateX" 
		"PALBotRN.placeHolderList[114]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateY" 
		"PALBotRN.placeHolderList[115]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.translateZ" 
		"PALBotRN.placeHolderList[116]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateX" 
		"PALBotRN.placeHolderList[117]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateY" 
		"PALBotRN.placeHolderList[118]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip.rotateZ" 
		"PALBotRN.placeHolderList[119]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateX" 
		"PALBotRN.placeHolderList[120]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateY" 
		"PALBotRN.placeHolderList[121]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.translateZ" 
		"PALBotRN.placeHolderList[122]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateX" 
		"PALBotRN.placeHolderList[123]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateY" 
		"PALBotRN.placeHolderList[124]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_IK_Foot_offset|PALBot:PALbot_L_IK_Foot_ctrl|PALBot:PALbot_L_IK_heel_lift_offset|PALBot:PALbot_L_IK_heel_lift_tip|PALBot:PALbot_L_IK_foot_tip_offset|PALBot:PALbot_L_IK_foot_tip|PALBot:PALbot_L_IK_footBall_offset|PALBot:PALbot_L_IK_footBall_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[125]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS.Hand_Vis" 
		"PALBotRN.placeHolderList[126]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_HandVIS_offset|PALBot:PALbot_R_HandVIS.canon_light" 
		"PALBotRN.placeHolderList[127]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.secondary_vis" 
		"PALBotRN.placeHolderList[128]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateX" 
		"PALBotRN.placeHolderList[129]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateY" 
		"PALBotRN.placeHolderList[130]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.translateZ" 
		"PALBotRN.placeHolderList[131]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateX" 
		"PALBotRN.placeHolderList[132]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateY" 
		"PALBotRN.placeHolderList[133]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[134]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.secondary_vis" 
		"PALBotRN.placeHolderList[135]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateY" 
		"PALBotRN.placeHolderList[136]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateX" 
		"PALBotRN.placeHolderList[137]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[138]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateX" 
		"PALBotRN.placeHolderList[139]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateY" 
		"PALBotRN.placeHolderList[140]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl.translateZ" 
		"PALBotRN.placeHolderList[141]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateX" 
		"PALBotRN.placeHolderList[142]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateY" 
		"PALBotRN.placeHolderList[143]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.translateZ" 
		"PALBotRN.placeHolderList[144]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateX" 
		"PALBotRN.placeHolderList[145]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateY" 
		"PALBotRN.placeHolderList[146]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[147]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Space_switch" 
		"PALBotRN.placeHolderList[148]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.FaceLight" 
		"PALBotRN.placeHolderList[149]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Led_color" 
		"PALBotRN.placeHolderList[150]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.Face_Drawing" 
		"PALBotRN.placeHolderList[151]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateY" 
		"PALBotRN.placeHolderList[152]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateX" 
		"PALBotRN.placeHolderList[153]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[154]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateX" 
		"PALBotRN.placeHolderList[155]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateY" 
		"PALBotRN.placeHolderList[156]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_Neck_ctrl_offset|PALBot:PALbot_Neck_ctrl|PALBot:PALbot_head_ctrl_offset|PALBot:PALbot_head_ctrl.translateZ" 
		"PALBotRN.placeHolderList[157]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateX" 
		"PALBotRN.placeHolderList[158]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateY" 
		"PALBotRN.placeHolderList[159]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.translateZ" 
		"PALBotRN.placeHolderList[160]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateX" 
		"PALBotRN.placeHolderList[161]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateY" 
		"PALBotRN.placeHolderList[162]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[163]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[164]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"PALBotRN.placeHolderList[165]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"PALBotRN.placeHolderList[166]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"PALBotRN.placeHolderList[167]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[168]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateY" 
		"PALBotRN.placeHolderList[169]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateX" 
		"PALBotRN.placeHolderList[170]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateY" 
		"PALBotRN.placeHolderList[171]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateZ" 
		"PALBotRN.placeHolderList[172]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.rotateX" 
		"PALBotRN.placeHolderList[173]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateX" 
		"PALBotRN.placeHolderList[174]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateY" 
		"PALBotRN.placeHolderList[175]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl.translateZ" 
		"PALBotRN.placeHolderList[176]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateX" 
		"PALBotRN.placeHolderList[177]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateY" 
		"PALBotRN.placeHolderList[178]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.translateZ" 
		"PALBotRN.placeHolderList[179]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateX" 
		"PALBotRN.placeHolderList[180]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateY" 
		"PALBotRN.placeHolderList[181]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_R_FK_Elbow_offset|PALBot:PALbot_R_FK_Elbow_ctrl|PALBot:PALbot_R_FK_Wrist_ctrl_offset|PALBot:PALbot_R_FK_Wrist_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[182]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_R_Clavicle_offset|PALBot:PALbot_R_Clavicle_ctrl|PALBot:PALbot_R_arm_IK_FK_switch_offset|PALBot:PALbot_R_arm_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[183]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateX" 
		"PALBotRN.placeHolderList[184]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateY" 
		"PALBotRN.placeHolderList[185]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.translateZ" 
		"PALBotRN.placeHolderList[186]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateX" 
		"PALBotRN.placeHolderList[187]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateY" 
		"PALBotRN.placeHolderList[188]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[189]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[190]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateX" 
		"PALBotRN.placeHolderList[191]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateY" 
		"PALBotRN.placeHolderList[192]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl.translateZ" 
		"PALBotRN.placeHolderList[193]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[194]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.rotateY" 
		"PALBotRN.placeHolderList[195]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateX" 
		"PALBotRN.placeHolderList[196]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateY" 
		"PALBotRN.placeHolderList[197]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl.translateZ" 
		"PALBotRN.placeHolderList[198]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.rotateX" 
		"PALBotRN.placeHolderList[199]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateX" 
		"PALBotRN.placeHolderList[200]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateY" 
		"PALBotRN.placeHolderList[201]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl.translateZ" 
		"PALBotRN.placeHolderList[202]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateX" 
		"PALBotRN.placeHolderList[203]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateY" 
		"PALBotRN.placeHolderList[204]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.translateZ" 
		"PALBotRN.placeHolderList[205]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateX" 
		"PALBotRN.placeHolderList[206]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateY" 
		"PALBotRN.placeHolderList[207]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_Arm_FOLLOW|PALBot:PALbot_L_ShoulderRotate_offset|PALBot:PALbot_L_ShoulderRotate_ctrl|PALBot:PALbot_L_Arm_offset|PALBot:PALbot_L_Arm_ctrl|PALBot:PALbot_L_FK_Elbow_offset|PALBot:PALbot_L_FK_Elbow_ctrl|PALBot:PALbot_L_FK_Wrist_ctrl_offset|PALBot:PALbot_L_FK_Wrist_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[208]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_chestup_ctrl_offset|PALBot:PALbot_chestUp_ctrl|PALBot:PALbot_chestUp_secondary_ctrl_offset|PALBot:PALbot_chestUp_secondary_ctrl|PALBot:PALbot_L_Clavicle_offset|PALBot:PALbot_L_Clavicle_ctrl|PALBot:PALbot_L_arm_IK_FK_switch_offset|PALBot:PALbot_L_arm_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[209]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateX" 
		"PALBotRN.placeHolderList[210]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateY" 
		"PALBotRN.placeHolderList[211]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.translateZ" 
		"PALBotRN.placeHolderList[212]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateX" 
		"PALBotRN.placeHolderList[213]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateY" 
		"PALBotRN.placeHolderList[214]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[215]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateX" 
		"PALBotRN.placeHolderList[216]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateY" 
		"PALBotRN.placeHolderList[217]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.translateZ" 
		"PALBotRN.placeHolderList[218]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateX" 
		"PALBotRN.placeHolderList[219]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateY" 
		"PALBotRN.placeHolderList[220]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip.rotateZ" 
		"PALBotRN.placeHolderList[221]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_R_hip_offset|PALBot:PALbot_R_hip|PALBot:PALbot_R_leg_IK_FK_switch_offset|PALBot:PALbot_R_leg_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[222]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateX" 
		"PALBotRN.placeHolderList[223]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateY" 
		"PALBotRN.placeHolderList[224]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.translateZ" 
		"PALBotRN.placeHolderList[225]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateX" 
		"PALBotRN.placeHolderList[226]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateY" 
		"PALBotRN.placeHolderList[227]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip.rotateZ" 
		"PALBotRN.placeHolderList[228]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_cog_ctrl|PALBot:PALbot_cog_secondary_ctrl_offset1|PALBot:PALbot_cog_secondary_ctrl|PALBot:PALbot_hipMain_ctrl|PALBot:PALbot_L_hip_offset|PALBot:PALbot_L_hip|PALBot:PALbot_L_leg_IK_FK_switch_offset|PALBot:PALbot_L_leg_IK_FK_switch.IK_FK" 
		"PALBotRN.placeHolderList[229]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateX" 
		"PALBotRN.placeHolderList[230]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateY" 
		"PALBotRN.placeHolderList[231]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[232]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[233]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[234]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[235]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateX" 
		"PALBotRN.placeHolderList[236]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateY" 
		"PALBotRN.placeHolderList[237]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[238]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[239]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[240]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[241]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateX" 
		"PALBotRN.placeHolderList[242]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateY" 
		"PALBotRN.placeHolderList[243]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.translateZ" 
		"PALBotRN.placeHolderList[244]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateX" 
		"PALBotRN.placeHolderList[245]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateY" 
		"PALBotRN.placeHolderList[246]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Thumb01_offset|PALBot:PALbot_L_Thumb01_ctrl|PALBot:PALbot_L_Thumb02_offset|PALBot:PALbot_L_Thumb02_ctrl|PALBot:PALbot_L_Thumb03_offset|PALBot:PALbot_L_Thumb03_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[247]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateX" 
		"PALBotRN.placeHolderList[248]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateY" 
		"PALBotRN.placeHolderList[249]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[250]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[251]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[252]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[253]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateX" 
		"PALBotRN.placeHolderList[254]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateY" 
		"PALBotRN.placeHolderList[255]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[256]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[257]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[258]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Index01_offset|PALBot:PALbot_L_Index01_ctrl|PALBot:PALbot_L_Index02_offset|PALBot:PALbot_L_Index02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[259]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateX" 
		"PALBotRN.placeHolderList[260]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateY" 
		"PALBotRN.placeHolderList[261]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[262]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[263]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[264]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[265]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateX" 
		"PALBotRN.placeHolderList[266]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateY" 
		"PALBotRN.placeHolderList[267]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[268]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[269]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[270]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Middle01_offset|PALBot:PALbot_L_Middle01_ctrl|PALBot:PALbot_L_Middle02_offset|PALBot:PALbot_L_Middle02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[271]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateX" 
		"PALBotRN.placeHolderList[272]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateY" 
		"PALBotRN.placeHolderList[273]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[274]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[275]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[276]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[277]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateX" 
		"PALBotRN.placeHolderList[278]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateY" 
		"PALBotRN.placeHolderList[279]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[280]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[281]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[282]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Ring01_offset|PALBot:PALbot_L_Ring01_ctrl|PALBot:PALbot_L_Ring02_offset|PALBot:PALbot_L_Ring02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[283]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateX" 
		"PALBotRN.placeHolderList[284]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateY" 
		"PALBotRN.placeHolderList[285]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[286]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[287]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[288]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[289]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateX" 
		"PALBotRN.placeHolderList[290]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateY" 
		"PALBotRN.placeHolderList[291]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[292]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[293]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[294]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_L_fingers_grp|PALBot:PALbot_L_Pinky01_offset|PALBot:PALbot_L_Pinky01_ctrl|PALBot:PALbot_L_Pinky02_offset|PALBot:PALbot_L_Pinky02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[295]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateX" 
		"PALBotRN.placeHolderList[296]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateY" 
		"PALBotRN.placeHolderList[297]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[298]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[299]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[300]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[301]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateX" 
		"PALBotRN.placeHolderList[302]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateY" 
		"PALBotRN.placeHolderList[303]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[304]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[305]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[306]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[307]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateX" 
		"PALBotRN.placeHolderList[308]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateY" 
		"PALBotRN.placeHolderList[309]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.translateZ" 
		"PALBotRN.placeHolderList[310]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateX" 
		"PALBotRN.placeHolderList[311]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateY" 
		"PALBotRN.placeHolderList[312]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Thumb01_offset|PALBot:PALbot_R_Thumb01_ctrl|PALBot:PALbot_R_Thumb02_offset|PALBot:PALbot_R_Thumb02_ctrl|PALBot:PALbot_R_Thumb03_offset|PALBot:PALbot_R_Thumb03_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[313]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateX" 
		"PALBotRN.placeHolderList[314]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateY" 
		"PALBotRN.placeHolderList[315]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[316]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[317]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[318]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[319]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateX" 
		"PALBotRN.placeHolderList[320]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateY" 
		"PALBotRN.placeHolderList[321]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[322]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[323]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[324]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Index01_offset|PALBot:PALbot_R_Index01_ctrl|PALBot:PALbot_R_Index02_offset|PALBot:PALbot_R_Index02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[325]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateX" 
		"PALBotRN.placeHolderList[326]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateY" 
		"PALBotRN.placeHolderList[327]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[328]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[329]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[330]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[331]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateX" 
		"PALBotRN.placeHolderList[332]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateY" 
		"PALBotRN.placeHolderList[333]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[334]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[335]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[336]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Middle01_offset|PALBot:PALbot_R_Middle01_ctrl|PALBot:PALbot_R_Middle02_offset|PALBot:PALbot_R_Middle02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[337]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateX" 
		"PALBotRN.placeHolderList[338]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateY" 
		"PALBotRN.placeHolderList[339]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[340]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[341]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[342]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[343]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateX" 
		"PALBotRN.placeHolderList[344]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateY" 
		"PALBotRN.placeHolderList[345]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[346]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[347]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[348]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Ring01_offset|PALBot:PALbot_R_Ring01_ctrl|PALBot:PALbot_R_Ring02_offset|PALBot:PALbot_R_Ring02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[349]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateX" 
		"PALBotRN.placeHolderList[350]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateY" 
		"PALBotRN.placeHolderList[351]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.translateZ" 
		"PALBotRN.placeHolderList[352]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateX" 
		"PALBotRN.placeHolderList[353]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateY" 
		"PALBotRN.placeHolderList[354]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[355]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateX" 
		"PALBotRN.placeHolderList[356]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateY" 
		"PALBotRN.placeHolderList[357]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.translateZ" 
		"PALBotRN.placeHolderList[358]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateX" 
		"PALBotRN.placeHolderList[359]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateY" 
		"PALBotRN.placeHolderList[360]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_cog_ctrl_offset|PALBot:PALbot_R_fingers_grp|PALBot:PALbot_R_Pinky01_offset|PALBot:PALbot_R_Pinky01_ctrl|PALBot:PALbot_R_Pinky02_offset|PALBot:PALbot_R_Pinky02_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[361]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.space_switch" 
		"PALBotRN.placeHolderList[362]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateX" 
		"PALBotRN.placeHolderList[363]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateY" 
		"PALBotRN.placeHolderList[364]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.translateZ" 
		"PALBotRN.placeHolderList[365]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateX" 
		"PALBotRN.placeHolderList[366]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateY" 
		"PALBotRN.placeHolderList[367]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_knee_aim_offset|PALBot:PALbot_R_knee_aim_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[368]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateX" 
		"PALBotRN.placeHolderList[369]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateY" 
		"PALBotRN.placeHolderList[370]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.translateZ" 
		"PALBotRN.placeHolderList[371]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateX" 
		"PALBotRN.placeHolderList[372]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateY" 
		"PALBotRN.placeHolderList[373]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary.rotateZ" 
		"PALBotRN.placeHolderList[374]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateX" 
		"PALBotRN.placeHolderList[375]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateY" 
		"PALBotRN.placeHolderList[376]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.translateZ" 
		"PALBotRN.placeHolderList[377]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateX" 
		"PALBotRN.placeHolderList[378]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateY" 
		"PALBotRN.placeHolderList[379]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape01_offset|PALBot:PALbot_R_footSec_reshape01.rotateZ" 
		"PALBotRN.placeHolderList[380]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateX" 
		"PALBotRN.placeHolderList[381]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateY" 
		"PALBotRN.placeHolderList[382]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.translateZ" 
		"PALBotRN.placeHolderList[383]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateX" 
		"PALBotRN.placeHolderList[384]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateY" 
		"PALBotRN.placeHolderList[385]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_foot_secondary_offset|PALBot:PALbot_R_foot_secondary|PALBot:PALbot_R_footSec_reshape02_offset|PALBot:PALbot_R_footSec_reshape02.rotateZ" 
		"PALBotRN.placeHolderList[386]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.on_off" 
		"PALBotRN.placeHolderList[387]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateX" 
		"PALBotRN.placeHolderList[388]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateY" 
		"PALBotRN.placeHolderList[389]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.translateZ" 
		"PALBotRN.placeHolderList[390]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateX" 
		"PALBotRN.placeHolderList[391]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateY" 
		"PALBotRN.placeHolderList[392]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[393]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleX" 
		"PALBotRN.placeHolderList[394]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleY" 
		"PALBotRN.placeHolderList[395]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_Engine_ctrl_offset1|PALBot:PALbot_R_Engine_ctrl.scaleZ" 
		"PALBotRN.placeHolderList[396]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.Heel_Peel" 
		"PALBotRN.placeHolderList[397]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.follow_hip" 
		"PALBotRN.placeHolderList[398]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateX" 
		"PALBotRN.placeHolderList[399]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateY" 
		"PALBotRN.placeHolderList[400]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.translateZ" 
		"PALBotRN.placeHolderList[401]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateX" 
		"PALBotRN.placeHolderList[402]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateY" 
		"PALBotRN.placeHolderList[403]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[404]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateX" 
		"PALBotRN.placeHolderList[405]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateY" 
		"PALBotRN.placeHolderList[406]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.translateZ" 
		"PALBotRN.placeHolderList[407]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateX" 
		"PALBotRN.placeHolderList[408]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateY" 
		"PALBotRN.placeHolderList[409]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip.rotateZ" 
		"PALBotRN.placeHolderList[410]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateX" 
		"PALBotRN.placeHolderList[411]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateY" 
		"PALBotRN.placeHolderList[412]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.translateZ" 
		"PALBotRN.placeHolderList[413]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateX" 
		"PALBotRN.placeHolderList[414]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateY" 
		"PALBotRN.placeHolderList[415]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip.rotateZ" 
		"PALBotRN.placeHolderList[416]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateX" 
		"PALBotRN.placeHolderList[417]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateY" 
		"PALBotRN.placeHolderList[418]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.translateZ" 
		"PALBotRN.placeHolderList[419]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateX" 
		"PALBotRN.placeHolderList[420]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateY" 
		"PALBotRN.placeHolderList[421]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_IK_Foot_offset|PALBot:PALbot_R_IK_Foot_ctrl|PALBot:PALbot_R_IK_heel_lift_offset|PALBot:PALbot_R_IK_heel_lift_tip|PALBot:PALbot_R_IK_foot_tip_offset|PALBot:PALbot_R_IK_foot_tip|PALBot:PALbot_R_IK_footBall_offset|PALBot:PALbot_R_IK_footBall_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[422]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.follow_shoulder" 
		"PALBotRN.placeHolderList[423]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.translateX" 
		"PALBotRN.placeHolderList[424]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.translateY" 
		"PALBotRN.placeHolderList[425]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.translateZ" 
		"PALBotRN.placeHolderList[426]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.rotateY" 
		"PALBotRN.placeHolderList[427]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.rotateX" 
		"PALBotRN.placeHolderList[428]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.rotateZ" 
		"PALBotRN.placeHolderList[429]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.scaleX" 
		"PALBotRN.placeHolderList[430]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.scaleY" 
		"PALBotRN.placeHolderList[431]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_R_arm_IK_FOLLOW|PALBot:PALbot_R_arm_IK_offset|PALBot:PALbot_R_arm_IK_ctrl.scaleZ" 
		"PALBotRN.placeHolderList[432]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS.Hand_Vis" 
		"PALBotRN.placeHolderList[433]" ""
		5 4 "PALBotRN" "|PALBot:PALBOT_GRP|PALBot:PALbot_LOC|PALBot:PALbot_CTRLs|PALBot:PALbot_MAIN|PALBot:PALbot_root|PALBot:PALbot_L_HandVIS_offset|PALBot:PALbot_L_HandVIS.canon_light" 
		"PALBotRN.placeHolderList[434]" "";
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
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3BB7237F-754A-D260-06C3-26A065AA9193";
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
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 0\n            -nurbsCurves 0\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 0\n            -hulls 0\n            -grid 1\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n"
		+ "            -particleInstancers 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 0\n            -nParticles 0\n            -nRigids 0\n            -dynamicConstraints 0\n            -locators 0\n            -manipulators 1\n            -pluginShapes 0\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -motionTrails 0\n            -clipGhosts 0\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2254\n            -height 1542\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 0 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
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
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2254\\n    -height 1542\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 0\\n    -nurbsCurves 0\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 0\\n    -hulls 0\\n    -grid 1\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -particleInstancers 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 0\\n    -nParticles 0\\n    -nRigids 0\\n    -dynamicConstraints 0\\n    -locators 0\\n    -manipulators 1\\n    -pluginShapes 0\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -motionTrails 0\\n    -clipGhosts 0\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2254\\n    -height 1542\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 0 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E08F8C02-E744-7758-00BF-8E9B16379044";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 125 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateX";
	rename -uid "4B43F14C-4748-3F6C-7833-6780FCF3943F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateY";
	rename -uid "B7BD6108-A545-2952-9DC4-04AE61885B98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape02_translateZ";
	rename -uid "0D9E7738-A34E-4804-5ED9-B79DB0AFE62A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateX";
	rename -uid "F05CF43C-204C-311D-9903-6B872306F662";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateY";
	rename -uid "67F2CA37-534B-7458-EE10-929EE695442C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape02_rotateZ";
	rename -uid "1E30B398-A94E-C3BD-C777-5494D3A5C4BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateX";
	rename -uid "E86E45A5-E54D-D856-0EEB-3A922EB751DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -2.9548740225180165e-05 5 0.0027055673701039092
		 8 0.005440683480432998 16 0.00015804495732825528 17 0.00015804495732825528 21 0.0010111000614385355
		 29 0.0010111000614385355 60 0.0010111000614385355 62 0.00065918357317563069 64 0.00082276468089844421
		 70 0.00015804495732825528 71 0.00015804495732825528 99 0.00015804495732825528 100 0.00015804495732825528
		 103 0.00015804495732825528 106 0.00015804495732825528 109 0.00015804495732825528
		 111 0.00015804495732825528 112 0.00015804495732825528;
	setAttr -s 19 ".kit[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kot[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kix[1:18]"  0.99986537170958023 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[1:18]"  0.016408487317938338 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.99986537170958023 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[1:18]"  0.016408487317938338 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateY";
	rename -uid "0F970725-8246-F0C4-6E12-9F9AB13B070E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.010765112454344344 5 0.0075875196503545897
		 8 0.0044099268463648356 16 0.010547170561066584 17 0 21 0.20059352805328554 29 0.20059352805328554
		 60 0.20059352805328554 62 0.012232058734867386 64 0.12482407238802611 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 19 ".kit[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kot[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kix[1:18]"  0.99981830180484776 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[1:18]"  -0.019062092646674043 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.99981830180484776 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[1:18]"  -0.019062092646674043 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape01_translateZ";
	rename -uid "62B63B74-DA48-6CFF-5BBC-2A8E156E7E00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.14817990843586543 5 0.13692623481119412
		 8 0.12567256118652279 16 0.14740805153431047 17 0 21 0.0068788466796701111 29 0.0068788466796701111
		 60 0.0068788466796701111 62 -0.051453079736862729 64 0.065393841298050023 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 19 ".kit[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kot[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kix[1:18]"  0.99772815239451751 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[1:18]"  -0.067368641959165379 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.99772815239451751 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[1:18]"  -0.067368641959165379 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateX";
	rename -uid "B6A38BBE-354C-7606-F2E1-1BAD715F5697";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 7.0554038406366173 5 5.4470072801821061
		 8 3.8386107197275954 16 6.9450885758592147 17 0 21 2.4342055637564841 29 2.4342055637564841
		 60 2.4342055637564841 62 -2.4601687966929502 64 5.6796420048340082 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 19 ".kit[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kot[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kix[1:18]"  0.98611035423890414 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[1:18]"  -0.16609144849396343 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  0.98611035423890414 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[1:18]"  -0.16609144849396343 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateY";
	rename -uid "AC1AD311-E440-5675-892F-938D3C44DEF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 8 0 16 0 17 0 21 0 29 0 60 0 62 0
		 64 -0.20177690244325752 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 19 ".kit[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kot[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kix[1:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape01_rotateZ";
	rename -uid "C2AF51CF-2746-606C-BF52-5FB5E3EF71CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 8 0 16 0 17 0 21 0 29 0 60 0 62 0
		 64 -0.38040782519962985 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 19 ".kit[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kot[1:18]"  1 18 18 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18;
	setAttr -s 19 ".kix[1:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[1:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateX";
	rename -uid "2A2D5B38-C348-4898-C2F0-55943A8335E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateY";
	rename -uid "0687A646-CC48-B4AE-5D4A-99B0AC6E6146";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb02_ctrl_translateZ";
	rename -uid "5EA2B944-084B-1C18-E240-39BDAB48EA87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateX";
	rename -uid "E044CA14-734E-3203-789F-43A20D40CC2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateY";
	rename -uid "84AB2D53-0D47-F445-76AD-619B6386980A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb02_ctrl_rotateZ";
	rename -uid "9E829B04-9E4B-77D4-D51C-1388F054BBF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -53.392705365779321 5 -53.392705365779321
		 16 -53.392705365779321 17 -52.720673222041796 29 -52.720673222041796 60 -52.720673222041796
		 70 -52.720673222041796 100 -52.720673222041796 103 -25.402797043440675 106 -25.402797043440675
		 109 -25.402797043440675 112 -25.402797043440675;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_cog_ctrl_translateX";
	rename -uid "525FDEC1-1149-D2DE-FFA1-94905CD03BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 4 0 5 0 7 0 8 0 12 0 16 0 17 0 19 0
		 21 0 22 0 23 0 24 0 25 0 28 0 29 0 60 0 62 0 63 0 64 0 65 0 66 0 70 0 71 0 78 0 85 0
		 92 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 34 ".kit[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kot[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_cog_ctrl_translateY";
	rename -uid "4354BD09-DD46-565F-1AE7-A1973EF68E80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 4 -1.0134903089997531 5 -1.7085344991527283
		 7 -0.23341913981317886 8 0 12 -1.494 16 -0.15537599999999996 17 0 19 -0.27258636875359343
		 21 -1.44791193380442 22 -2.6560429994392898 23 -3.9871064124123485 24 -3.9871064124123485
		 25 -3.2552918134532796 28 -0.19455374604210363 29 -0.00305835757453643 60 -0.00305835757453643
		 62 -0.41103729555920299 63 -0.97622752493779363 64 -1.8575827164806524 65 -2.4796777700518575
		 66 -2.2217912819664654 70 0 71 -1.5866749353423568 78 -1.186335513345206 85 -1.5866749353423568
		 92 -1.3201158645553264 99 -1.5866749353423568 100 0 103 -0.32223264492659531 106 -2.3559214047911041
		 109 -8.4295803314705466 111 -8.4295803314705466 112 -8.4295803314705466;
	setAttr -s 34 ".kit[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kot[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kix[1:33]"  0.12104033099029197 1 0.072967091782833157 
		1 1 0.13811033704391915 1 0.11435319765555182 0.069756116835673301 0.081772245308007474 
		1 1 0.043903401775436585 1 1 1 0.1273996720852118 0.057513158242758405 0.055343112658544094 
		1 0.083721328864684877 1 1 1 1 1 1 1 0.12823852703993355 0.030821575101996533 1 1 
		1;
	setAttr -s 34 ".kiy[1:33]"  -0.99264759017173887 0 0.99733434891051231 
		0 0 0.99041684900935278 0 -0.99344015732501489 -0.99756407521723034 -0.99665104218943512 
		0 0 0.99903578079693645 0 0 0 -0.99185146244414057 -0.99834474838551812 -0.99846739550235875 
		0 0.99648920671180941 0 0 0 0 0 0 0 -0.99174335398964386 -0.99952490239524894 0 0 
		0;
	setAttr -s 34 ".kox[1:33]"  0.12104033099029197 1 0.072967091782833171 
		1 1 0.13811033704391912 1 0.11435319765555182 0.069756116835673301 0.08177224530800746 
		1 1 0.043903401775436585 1 1 1 0.1273996720852118 0.057513158242758405 0.055343112658544101 
		1 0.083721328864684877 1 1 1 1 1 1 1 0.12823852703993355 0.030821575101996533 1 1 
		1;
	setAttr -s 34 ".koy[1:33]"  -0.99264759017173887 0 0.99733434891051242 
		0 0 0.99041684900935278 0 -0.99344015732501489 -0.99756407521723023 -0.99665104218943512 
		0 0 0.99903578079693645 0 0 0 -0.99185146244414057 -0.99834474838551812 -0.99846739550235875 
		0 0.99648920671180941 0 0 0 0 0 0 0 -0.99174335398964386 -0.99952490239524894 0 0 
		0;
createNode animCurveTL -n "PALbot_cog_ctrl_translateZ";
	rename -uid "ACC100E6-8146-4F58-15DE-588C3CBD56BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 4 0 5 0 7 0 8 0 12 0 16 0 17 0 19 0
		 21 -0.44622006858607577 22 -1.3470994313897302 23 -2.0441941004155448 24 -2.0441941004155448
		 25 -2.0441941004155448 28 -0.79781401812116881 29 0.2439231118948566 60 0.2439231118948566
		 62 0.21855510825779143 63 -0.56588914184196937 64 -0.89027677417616724 65 -0.82433034645941317
		 66 -0.76141263852211027 70 0 71 0.054057647964639521 78 -0.1684039131759707 85 -0.39086547431658092
		 92 -0.16840391317597073 99 0.054057647964639521 100 0 103 -1.6295287348331637 106 -5.4777731645207375
		 109 -9.1123525856250609 111 -9.1123525856250609 112 -9.1123525856250609;
	setAttr -s 34 ".kit[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kot[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 0.12278642235173563 0.12927935023912343 
		1 1 1 1 1 1 0.73841024209717931 0.074942818103054365 1 0.54302461789017231 0.24502627180247782 
		1 1 0.4898604057703157 1 0.79511708143394788 1 1 0.045591526689604679 0.033391216263565719 
		1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 -0.99243311839441417 -0.9916082137627491 
		0 0 0 0 0 0 -0.6743517734580261 -0.99718783286538992 0 0.83971677627949781 0.96951643932765685 
		0 0 -0.87180088486909779 0 0.60645595620124015 0 0 -0.99896016571938995 -0.99944235785583946 
		0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 0.12278642235173562 0.12927935023912343 
		1 1 1 1 1 1 0.73841024209717931 0.074942818103054365 1 0.54302461789017231 0.24502627180247788 
		1 1 0.4898604057703157 1 0.79511708143394799 1 1 0.045591526689604679 0.033391216263565719 
		1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 -0.99243311839441417 -0.99160821376274932 
		0 0 0 0 0 0 -0.6743517734580261 -0.99718783286538992 0 0.83971677627949792 0.96951643932765696 
		0 0 -0.87180088486909779 0 0.60645595620124015 0 0 -0.99896016571938995 -0.99944235785583946 
		0 0 0;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateX";
	rename -uid "1A1FA31A-D649-3C4D-C468-64AB12B019B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 16.674 4 16.674372913507611 5 16.674 7 16.674
		 8 16.674 12 16.674 16 16.674 17 0 19 10.298314848155151 21 17.223212638450232 22 38.39553476401219
		 23 55.807355204781459 24 59.70391366539161 25 51.351394907740953 28 7.8036814436529953
		 29 7.8036814436529953 60 7.8036814436529953 62 17.999946615434698 63 27.147758089541711
		 64 35.126154096714004 65 49.773958575499073 66 51.345687602056344 70 0 71 11.671149105203044
		 78 11.671149105203044 85 11.671149105203044 92 11.671149105203044 99 11.671149105203044
		 100 0 103 -14.81476101158713 106 -36.946881685823591 109 -79.52405457614735 111 -79.52405457614735
		 112 -79.52405457614735;
	setAttr -s 34 ".kit[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kot[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 0.48489949873584609 0.32178921158720108 
		0.21221375550042731 0.35696876540483685 0.52311570680047426 0.18095582604680299 1 
		1 1 0.34720775829568667 0.26855065723007454 0.20647579698384555 0.45170822326002397 
		1 1 1 1 1 1 1 1 0.36147527005716079 0.21612665626508837 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0.87456988064175023 0.94681133458893885 
		0.97722327130313713 0.93411632066105477 0.85226167184652879 -0.98349122467855254 
		0 0 0 0.9377882344001145 0.96326556281292186 0.97845170818997795 0.89216572509779379 
		0 0 0 0 0 0 0 0 -0.93238169712682728 -0.97636533554385896 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 0.48489949873584609 0.32178921158720108 
		0.21221371471553974 0.35696878019347683 0.27425014860152136 0.18095582604680302 1 
		1 1 0.34720775829568662 0.26855065723007454 0.20647579698384558 0.45170822326002397 
		1 1 1 1 1 1 1 1 0.36147527005716079 0.21612665626508837 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0.87456988064175023 0.94681133458893885 
		0.97722328015998039 0.93411631500963588 -0.96165838840621742 -0.98349122467855254 
		0 0 0 0.9377882344001145 0.96326556281292186 0.97845170818997806 0.8921657250977939 
		0 0 0 0 0 0 0 0 -0.93238169712682728 -0.97636533554385896 0 0 0;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateY";
	rename -uid "F5566625-6B41-FAED-B41B-1388A3D6F666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 4 0 5 0 7 0 8 0 12 0 16 0 17 0 19 0
		 21 0 22 0 23 0 24 0 25 0 28 0 29 0 60 0 62 0 63 0 64 0 65 0 66 0 70 0 71 0 78 0 85 0
		 92 0 99 0 100 0 103 -17.88421675193435 106 -39.020853045890938 109 -3.5046288141685662
		 111 -3.5046288141685662 112 -3.5046288141685662;
	setAttr -s 34 ".kit[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kot[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.34460026610202565 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 -0.93874951749783242 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.34460026610202565 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 -0.93874951749783242 0 0 0 0;
createNode animCurveTA -n "PALbot_cog_ctrl_rotateZ";
	rename -uid "A35D3D06-EB46-F0A6-C5A3-659455A89F9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 4 0 5 0 7 0 8 0 12 0 16 0 17 0 19 0
		 21 0 22 0 23 0 24 0 25 0 28 0 29 0 60 0 62 0 63 0 64 0 65 0 66 0 70 0 71 0 78 0 85 0
		 92 0 99 0 100 0 103 4.6435133471035037 106 43.513257957083091 109 80.666272501916723
		 111 80.666272501916723 112 80.666272501916723;
	setAttr -s 34 ".kit[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kot[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.4572316188687473 0.18515856056711905 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.88934765233100199 0.98270865847855049 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.4572316188687473 0.18515856056711905 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.88934765233100199 0.98270865847855049 0 0 0;
createNode animCurveTU -n "PALbot_cog_ctrl_secondary_vis";
	rename -uid "315FD996-044F-BBA9-F6C2-4DBCEB7EC83A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 4 0 5 0 7 0 8 0 12 0 16 0 17 0 19 0
		 21 0 22 0 23 0 24 0 25 0 28 0 29 0 60 0 62 0 63 0 64 0 65 0 66 0 70 0 71 0 78 0 85 0
		 92 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 34 ".kit[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kot[1:33]"  1 1 18 18 18 18 1 1 
		1 1 1 1 18 1 18 18 18 18 18 18 18 1 1 1 1 
		18 1 1 18 18 18 18 18;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateX";
	rename -uid "5CC46894-6F43-7EFB-2C8F-2FA08AF83F23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 5 0 7 0 8 0 9 0 16 0 17 0 23 0 24 0
		 25 0 28 0 29 0 34 0 44 0 54 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0
		 119 0;
	setAttr -s 27 ".kit[0:26]"  1 18 1 18 1 18 18 1 
		18 1 18 1 18 1 1 1 18 18 1 1 1 1 18 18 18 
		18 18;
	setAttr -s 27 ".kot[0:26]"  1 18 1 18 1 18 18 1 
		18 1 18 1 18 1 1 1 18 18 1 1 1 1 18 18 18 
		18 18;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateY";
	rename -uid "CFBA07B1-1C40-0D31-5F8F-898F485F978E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 5 0 7 0 8 0 9 0 16 0 17 0 23 0 24 0
		 25 0 28 0 29 0 34 0 44 0 54 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0
		 119 0;
	setAttr -s 27 ".kit[0:26]"  1 18 1 18 1 18 18 1 
		18 1 18 1 18 1 1 1 18 18 1 1 1 1 18 18 18 
		18 18;
	setAttr -s 27 ".kot[0:26]"  1 18 1 18 1 18 18 1 
		18 1 18 1 18 1 1 1 18 18 1 1 1 1 18 18 18 
		18 18;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateZ";
	rename -uid "B1AE81D7-1648-832C-0338-0F97167A0043";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 5 0 7 0 8 0 9 0 16 0 17 0 23 0 24 0
		 25 0 28 0 29 0 34 0 44 0 54 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0
		 119 0;
	setAttr -s 27 ".kit[0:26]"  1 18 1 18 1 18 18 1 
		18 1 18 1 18 1 1 1 18 18 1 1 1 1 18 18 18 
		18 18;
	setAttr -s 27 ".kot[0:26]"  1 18 1 18 1 18 18 1 
		18 1 18 1 18 1 1 1 18 18 1 1 1 1 18 18 18 
		18 18;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_ShoulderRotate_ctrl_rotateZ";
	rename -uid "EBB96BEB-5B40-A99F-9B57-B488967575CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -60.649373025127979 1 -59.414499778446789
		 7 10.512393217144599 8 12.242505110414985 9 11.126505321029413 16 -57.931440683333655
		 17 0 23 0 24 0 25 38.263620099534748 28 138.06701656548978 29 150.72212069128264
		 34 153.11704163924679 44 150.38717300441829 54 153.8387150133093 60 151.60211579154793
		 65 0.97295603044593304 70 0 71 65.806067893969683 99 65.806067893969683 100 0 103 40.809356067439694
		 106 93.42958735101584 109 23.899912544161374 112 10.009542946614321 119 4.1353335585703022;
	setAttr -s 26 ".kit[0:25]"  1 18 18 1 18 18 1 18 
		1 18 1 18 1 1 1 18 18 1 1 1 1 18 18 18 18 
		18;
	setAttr -s 26 ".kot[0:25]"  1 18 18 1 18 18 1 18 
		1 18 1 18 1 1 1 18 18 1 1 1 1 18 18 18 18 
		18;
	setAttr -s 26 ".kix[0:25]"  1 0.54168570832894936 0.41787234173471532 
		1 0.58057712985733312 1 1 1 1 0.068999374460597063 1 0.85677039752140038 1 1 1 0.90556948918746594 
		0.97137971688166869 1 1 1 1 0.15154208914587136 1 0.16938548671905912 0.77027681663809622 
		1;
	setAttr -s 26 ".kiy[0:25]"  0 0.84058110458905999 0.90850575452946114 
		0 -0.81420525439634761 0 0 0 0 0.99761670310999018 0 0.51569805693935056 0 0 0 -0.42419794937358191 
		-0.23753198864761163 0 0 0 0 0.9884508056637441 0 -0.98554987539390793 -0.6377096719902251 
		0;
	setAttr -s 26 ".kox[0:25]"  1 0.54168570832894936 0.41787234173471521 
		1 0.58057712985733323 1 1 1 1 0.068999374460597063 1 0.85677039752140038 1 1 1 0.90556948918746605 
		0.9713797168816688 1 1 1 1 0.15154208914587136 1 0.16938548671905912 0.77027681663809644 
		1;
	setAttr -s 26 ".koy[0:25]"  0 0.8405811045890601 0.90850575452946092 
		0 -0.81420525439634772 0 0 0 0 0.99761670310999018 0 0.51569805693935056 0 0 0 -0.42419794937358191 
		-0.23753198864761163 0 0 0 0 0.9884508056637441 0 -0.98554987539390793 -0.63770967199022521 
		0;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateX";
	rename -uid "BC954B74-CE43-C3A5-C7A9-E7BBE63E94FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -6.0316656065726631e-16 1 -8.1588225068840622e-16
		 2 -1.2603953779657941e-15 3 -6.4516727267159104e-16 4 -6.5801338437465053e-16 5 -4.4217221532344401e-16
		 7 -2.0168705082864914e-16 8 -1.7589752154673482e-16 12 -2.4707193796061681e-16 16 -5.0164175152675043e-16
		 17 -3.1824635437449884e-16 27 0 29 0 60 0 70 -3.1824635437449884e-16 71 -1.0080336966969296e-16
		 99 -1.0080336966969296e-16 100 -3.1824635437449884e-16 103 -3.1824635437449884e-16
		 106 -2.4316466798193316e-16;
	setAttr -s 20 ".kit[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kot[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kix[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateY";
	rename -uid "8CC49E53-9940-A3F7-21E3-8FBCC4922013";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 3.0940384375337846 1 1.8784665277124644
		 2 0.53445811936678611 3 0.11069018237402095 4 0 5 0 7 0.64290467455925515 8 0.99
		 12 4.565 16 3.7595231424838484 17 0 27 0 29 0 60 0 70 0 71 0.28779904490889896 99 0.28779904490889896
		 100 0 103 0.10925802384615535 106 2.2919762844406457;
	setAttr -s 20 ".kit[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kot[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kix[4:19]"  1 1 0.12526804723326851 0.053043087816274245 
		1 0.068808782005963604 1 1 1 1 1 1 1 1 0.35632809983520569 1;
	setAttr -s 20 ".kiy[4:19]"  0 0 0.99212293408748686 0.9985922245015304 
		0 -0.99762986699419531 0 0 0 0 0 0 0 0 0.93436089669240308 0;
	setAttr -s 20 ".kox[4:19]"  1 1 0.12526804723326851 0.053043087816274245 
		1 0.068808782005963604 1 1 1 1 1 1 1 1 0.35632809983520569 1;
	setAttr -s 20 ".koy[4:19]"  0 0 0.99212293408748686 0.9985922245015304 
		0 -0.99762986699419531 0 0 0 0 0 0 0 0 0.93436089669240308 0;
createNode animCurveTL -n "PALbot_L_IK_Foot_ctrl_translateZ";
	rename -uid "97C66B76-9845-CC58-CC95-57BF2E5C5A28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 3.112096940910531 1 5.3972042444197061
		 2 4.1356858773171776 3 3.2343719868909813 4 1.5671391808838011 5 -0.240655739806799
		 7 -3.8093736511859424 8 -4.009 12 -1.521 16 2.1896163452630559 17 0 27 0 29 0 60 0
		 70 0 71 -3.5886885095018872 99 -3.5886885095018872 100 0 103 3.1019272970738538e-25
		 106 1.2000432992989252;
	setAttr -s 20 ".kit[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kot[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kix[4:19]"  0.024018226505540623 0.015666704864612007 
		0.069406645141683918 1 0.053697856301097906 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[4:19]"  -0.99971152078763625 -0.99987726964797297 
		-0.99758845102084881 0 0.99855722932071689 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[4:19]"  0.024018226505540623 0.015666704864612007 
		0.069406645141683904 1 0.053697856301097892 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[4:19]"  -0.99971152078763625 -0.99987726964797297 
		-0.99758845102084881 0 0.99855722932071678 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateX";
	rename -uid "2B3A8DB2-2F46-F38B-DD5B-29B14A078594";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 36.642338107863516 1 -14.297646653275942
		 2 -13.964320549677669 3 -6.4850153029505408 4 0.49430078837917812 5 0 7 39.300117187500014
		 8 53.279 12 80.413 16 51.240113930479019 17 0 27 0 29 0 60 0 70 0 71 37.120474312289204
		 99 37.120474312289204 100 0 103 13.388909210624666 106 -17.005643135760025;
	setAttr -s 20 ".kit[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kot[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kix[4:19]"  1 1 0.1332256367971992 0.27882360519504401 
		1 0.1468325279871992 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[4:19]"  0 0 0.99108573276986522 0.9603423333301716 
		0 -0.9891613663729939 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[4:19]"  1 1 0.1332256367971992 0.27882360519504401 
		1 0.1468325279871992 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[4:19]"  0 0 0.99108573276986522 0.9603423333301716 
		0 -0.9891613663729939 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateY";
	rename -uid "A78C54B7-6C4E-81E5-D659-A597F15CE7EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 12 0 16 0
		 17 0 27 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 33.969914386919072;
	setAttr -s 20 ".kit[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kot[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kix[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_Foot_ctrl_rotateZ";
	rename -uid "6805A787-E04F-5A1F-9400-26855E86A8E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 12 0 16 0
		 17 0 27 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 -34.720516689376467;
	setAttr -s 20 ".kit[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kot[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kix[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_IK_Foot_ctrl_Heel_Peel";
	rename -uid "CCE89F3D-8444-1813-22B2-1FB712BE9AE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 12 0 16 0
		 17 0 27 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0;
	setAttr -s 20 ".kit[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kot[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kix[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_IK_Foot_ctrl_follow_hip";
	rename -uid "36382DA0-A94D-E912-B449-92A081D8084A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 7 0 8 0 12 0 16 0
		 17 0 27 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0;
	setAttr -s 20 ".kit[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kot[4:19]"  1 1 18 18 18 18 1 18 
		18 18 1 1 1 1 18 18;
	setAttr -s 20 ".kix[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[4:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[4:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateX1";
	rename -uid "C8E0232D-F14B-6939-F3E5-EEB7B11144F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 7 0 8 0 9 0 16 0 17 0 29 0 40 0
		 50 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0 116 0 125 0;
	setAttr -s 21 ".kit[6:20]"  1 18 1 1 1 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 21 ".kot[6:20]"  1 18 1 1 1 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateY1";
	rename -uid "9ED0EB1C-854E-08B7-B552-A085EC110989";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 7 0 8 0 9 0 16 0 17 0 29 0 40 0
		 50 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0 116 0 125 0;
	setAttr -s 21 ".kit[6:20]"  1 18 1 1 1 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 21 ".kot[6:20]"  1 18 1 1 1 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_ShoulderRotate_ctrl_translateZ1";
	rename -uid "DE6BBD93-2244-68C4-A6DD-BD8D92121C27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 7 0 8 0 9 0 16 0 17 0 29 0 40 0
		 50 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0 116 0 125 0;
	setAttr -s 21 ".kit[6:20]"  1 18 1 1 1 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 21 ".kot[6:20]"  1 18 1 1 1 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_ShoulderRotate_ctrl_rotateZ1";
	rename -uid "7BA40A58-7B4C-F37B-712F-DA872414486D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 12.242505110414985 1 11.238810198483622
		 7 -59.407554192333578 8 -60.649373025127979 9 -60.0347863320832 16 9.3385015024004367
		 17 0.6744107929883193 29 0.6744107929883193 40 5.2065881996623071 50 0.6744107929883193
		 60 5.2065881996623071 70 0.6744107929883193 71 79.74423832579464 99 79.74423832579464
		 100 0.6744107929883193 103 29.678719399671895 106 104.44035091187577 109 120.02126066934271
		 112 92.055832620784059 116 82.76309221577398 125 68.985693796057092;
	setAttr -s 21 ".kit[6:20]"  1 18 1 1 1 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 21 ".kot[6:20]"  1 18 1 1 1 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 21 ".kix[6:20]"  0.99860013512930224 1 1 1 1 0.99860013512930224 
		0.99860013512930224 0.99860013512930224 0.99860013512930224 0.13674420837412407 0.1565954178850357 
		1 0.40924617758370907 0.80255306830158168 1;
	setAttr -s 21 ".kiy[6:20]"  -0.052893951636640249 0 0 0 0 -0.052893951636640249 
		-0.052893951636640249 -0.052893951636640249 -0.052893951636640249 0.99060639079108215 
		0.98766283472519667 0 -0.91242400567560866 -0.59658073431826197 0;
	setAttr -s 21 ".kox[6:20]"  0.99860013512930224 1 1 1 1 0.99860013512930224 
		0.99860013512930224 0.99860013512930224 0.99860013512930224 0.13674420837412407 0.1565954178850357 
		1 0.40924617758370913 0.8025530683015818 1;
	setAttr -s 21 ".koy[6:20]"  -0.052893951636640249 0 0 0 0 -0.052893951636640249 
		-0.052893951636640249 -0.052893951636640249 -0.052893951636640249 0.99060639079108215 
		0.98766283472519667 0 -0.91242400567560877 -0.59658073431826208 0;
createNode animCurveTU -n "PALbot_L_HandVIS_Hand_Vis";
	rename -uid "115EFD91-B04E-C377-67D0-458172CE48D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 5 1 16 1 17 1 29 1 60 1 70 1 71 0 99 0
		 100 1 103 1 106 1 109 1 112 1;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_HandVIS_canon_light";
	rename -uid "7A981F2F-3D48-5F77-71AF-5BAC12B3C853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 1 99 1
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateX";
	rename -uid "83BCA7DC-A14D-86CC-E586-94AA5FD00624";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0 116 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateY";
	rename -uid "2E2AAD5C-0B46-14CF-7DE0-0183EAA4B169";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0 116 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_FK_Wrist_ctrl_translateZ";
	rename -uid "F6054E00-B541-CC22-9BCA-A6BC8696ED03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0 116 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateX";
	rename -uid "5B3A98BF-2749-04D1-4AED-1F891F1EB8D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 -23.67630500521518 106 -23.67630500521518 109 -168.89171005979853 111 -168.89171005979853
		 112 -168.89171005979853 116 -167.7532422850845;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateY";
	rename -uid "F91C5E03-5A47-CF2B-1C23-448E1E606094";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 62.989126818753121 106 62.989126818753121 109 18.808066003609145 111 18.808066003609145
		 112 18.808066003609145 116 30.709238866386467;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_FK_Wrist_ctrl_rotateZ";
	rename -uid "B6971B40-5545-DB77-8720-C3B73E7CE1E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 -26.429230999924471 106 -26.429230999924471 109 -181.46923680233596 111 -181.46923680233596
		 112 -181.46923680233596 116 -178.76587251446571;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_hip_translateX";
	rename -uid "A6F11597-864F-A868-B07D-94B9DF2381AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_hip_translateY";
	rename -uid "EF4C5A18-8043-29F1-C06B-EF9CF1AE0469";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_hip_translateZ";
	rename -uid "3FF284FF-804E-EEFC-FD2A-A69E90186F91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_hip_rotateX";
	rename -uid "5640FEC1-9C4B-A157-712D-5F94C228C71A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_hip_rotateY";
	rename -uid "C7A9BB05-5543-4080-9B5E-52B644B8E987";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_hip_rotateZ";
	rename -uid "AAE8A10F-7146-885C-A97E-F5AC1207EAC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateX";
	rename -uid "949AE0A6-8044-74B2-DA51-8C90C859785F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateY";
	rename -uid "B7AA59F8-4442-A924-D81B-37BADE54A16D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb01_ctrl_translateZ";
	rename -uid "D9002D4B-D84D-4E46-B861-CEB331AD1FA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateX";
	rename -uid "59335D2D-F945-77E3-8593-10BF1A269009";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateY";
	rename -uid "FE55B3E5-3D4E-8845-74C6-64BB07472BCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb01_ctrl_rotateZ";
	rename -uid "9F28DD22-F440-291D-0B45-1AB6FE388DD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateX";
	rename -uid "53B8693D-7F41-B0A6-796D-2CB9C00C922C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 125 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateY";
	rename -uid "54823866-534C-9A9E-8DA2-D2AC26C5BF32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 125 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Wrist_ctrl_translateZ";
	rename -uid "19B10C05-BA48-FB7C-FF93-3A84010F00C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 125 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateX";
	rename -uid "ECE811FE-9A48-BB2C-71F5-FE9FC6051E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 125 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateY";
	rename -uid "FA6279BF-E749-9AAA-B1E9-5885535F0FEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 71.882578687148083 106 71.882578687148083 109 23.50492435640669 112 23.50492435640669
		 125 55.415904906539986;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_Wrist_ctrl_rotateZ";
	rename -uid "3678987F-5542-249D-F475-80AC22C03D7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 125 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateX";
	rename -uid "F6ABE981-C549-44FA-AEC9-AFB841695119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 22 0 29 0 60 0 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateY";
	rename -uid "D7F38DA3-5A4E-F5F2-0328-99A7CA7B5C16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 22 0 29 0 60 0 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_foot_secondary_translateZ";
	rename -uid "ACE88823-2F4D-8B21-182B-18A8DCA86DED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 22 0 29 0 60 0 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateX";
	rename -uid "34C364F2-9C44-ECD3-ECC9-C8BC29254A3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 -26.614513922165308 16 -0.52366520448705256
		 17 0 22 -25.712159605876835 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 0.83535479932099266 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0.54971115983885976 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 0.83535479932099255 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0.54971115983885965 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateY";
	rename -uid "B4063F5F-CB42-CF29-5865-B3A26FCF0E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 22 0 29 0 60 0 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_foot_secondary_rotateZ";
	rename -uid "BFBBC217-284A-5B13-6B08-ED8A835E8C2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 22 0 29 0 60 0 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateX";
	rename -uid "A82F3B69-FB4E-76D5-ECE8-9FBD1C19344F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -6.6613381477509422e-16 5 -6.6613381477509422e-16
		 16 -6.6613381477509422e-16 17 -6.6613381477509422e-16 29 0 60 0 70 -6.6613381477509422e-16
		 71 -6.6613381477509422e-16 99 -6.6613381477509422e-16 100 -6.6613381477509422e-16
		 103 -6.6613381477509422e-16 106 10.510139509566557 109 -0.85479434474280425 111 -0.85479434474280425
		 112 -0.85479434474280425;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateY";
	rename -uid "CE18438C-5A4A-E774-18C9-4E87542114E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 -8.8817841970012523e-16 109 -0.028763662395050522 111 -0.028763662395050522
		 112 -0.028763662395050522;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_knee_aim_ctrl_translateZ";
	rename -uid "5CB06615-0840-14DD-E462-3D94B776353E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 2.6645352591003757e-15 5 2.6645352591003757e-15
		 16 2.6645352591003757e-15 17 2.6645352591003757e-15 29 0 60 0 70 2.6645352591003757e-15
		 71 2.6645352591003757e-15 99 2.6645352591003757e-15 100 2.6645352591003757e-15 103 2.6645352591003757e-15
		 106 8.8817841970012523e-16 109 -0.36835040349507309 111 -0.36835040349507309 112 -0.36835040349507309;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateX";
	rename -uid "AF829BC7-654F-3204-3798-2EABD560CBB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateY";
	rename -uid "567A7A06-054D-5D72-C724-708B69629D4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_knee_aim_ctrl_rotateZ";
	rename -uid "5B8FC5B1-B148-48A9-3861-8B8EC2E1E35B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_knee_aim_ctrl_space_switch";
	rename -uid "4634E4D5-0941-28A4-65A8-B6A9A97D4C53";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 2 5 2 16 2 17 2 29 2 60 2 70 2 71 2 99 2
		 100 2 103 2 106 2 109 2 111 2 112 2;
	setAttr -s 15 ".kit[0:14]"  9 1 9 1 9 9 1 1 
		1 1 9 9 9 9 9;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateX";
	rename -uid "8A1A16D1-5B45-7361-D9B3-C7900A3A7FA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateY";
	rename -uid "54880F1E-6D40-1920-C59A-A888FF48D98A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Clavicle_ctrl_translateZ";
	rename -uid "AC4F6A56-0B4C-EC96-AA88-86B007A0223D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateX";
	rename -uid "1C4171FA-6743-885C-2819-E89A26F528AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateY";
	rename -uid "4C06394E-944C-82E2-D23A-47BB6EB3C4F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 28.006117100315905
		 99 28.006117100315905 100 0 103 0 106 19.68993460707588 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Clavicle_ctrl_rotateZ";
	rename -uid "7DF165BA-4147-B724-2140-5BB7D23E819F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateX";
	rename -uid "687274FC-5E48-D491-BA4D-3BA6122CBD35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateY";
	rename -uid "54061D96-DE49-CE18-FE25-DBA738A60A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle02_ctrl_translateZ";
	rename -uid "0FB683C9-8845-8790-1416-88944F785251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateX";
	rename -uid "F0382B3D-9C47-161D-67A2-E798CF5807EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 71 90 99 90 100 90 103 45.092980894113659 106 45.092980894113659 109 45.092980894113659
		 111 45.092980894113659 112 45.092980894113659;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateY";
	rename -uid "A5FBA3D6-4D43-CCCD-39C5-6EB46FBC4ED3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle02_ctrl_rotateZ";
	rename -uid "26802AB9-9A4E-BC62-981F-CB83D6E68808";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateX";
	rename -uid "FFE7AA3E-094D-E2B7-3E49-9C99A37BF058";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateY";
	rename -uid "E6410F29-1649-3570-80BF-EB9B071A45D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring02_ctrl_translateZ";
	rename -uid "F01572B2-574D-CC65-9AEA-29A12281E553";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateX";
	rename -uid "A1EC2542-5C4F-3E4C-A3C5-0A8EAE0B56C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 71 90 99 90 100 90 103 42.706786695247537 106 42.706786695247537 109 42.706786695247537
		 111 42.706786695247537 112 42.706786695247537;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateY";
	rename -uid "85024DCA-A540-2AEB-B65F-C9BFDE9F3ACA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring02_ctrl_rotateZ";
	rename -uid "FC08DD8C-3D4C-FDD1-BE8F-9A8B4C3413CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateX";
	rename -uid "418DC682-1240-6F2B-C67A-FB98D0D2515C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 -0.11288037101751523;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateY";
	rename -uid "2943BB6E-974B-4BFE-CE6C-769047674D1F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 -0.0038638680934497821;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_knee_aim_ctrl_translateZ";
	rename -uid "0526F629-6A44-9330-6A10-80BEED1518DD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 -3.3261501405684633;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateX";
	rename -uid "71FAA32A-2949-4128-35B9-0194BBC48344";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateY";
	rename -uid "DCA2EB3E-4D47-BC75-A4BA-F899AB2BE719";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_knee_aim_ctrl_rotateZ";
	rename -uid "AD513ABC-1E4C-4782-EA38-EABB817A1BDD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_knee_aim_ctrl_space_switch";
	rename -uid "1B0E4887-324C-F469-8B87-288339B8224D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2 5 2 16 2 17 2 29 2 60 2 70 2 71 2 99 2
		 100 2 103 2 106 2;
	setAttr -s 12 ".kit[0:11]"  9 1 9 1 9 9 1 1 
		1 1 9 9;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateX";
	rename -uid "F3A8BFD6-334C-97E0-B251-5790A2A5CFDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 116 0 125 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateY";
	rename -uid "277156E1-5449-2F3F-3692-8EBBCDC9712F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 116 0 125 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateZ";
	rename -uid "00D1BC48-1649-F7ED-330C-3E983304EB10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 116 0 125 0;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateY";
	rename -uid "EF4A78B4-AF4D-A646-D908-628ACF6B5A49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 83.234074936461781
		 99 83.234074936461781 100 0 103 0 106 36.438105128615177 109 -7.6061507428105832
		 112 5.6572864535963374 116 5.6560804552109465 125 8.6253285625434728;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateZ";
	rename -uid "5753D64A-C941-74DA-69D8-8682C8582865";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 16.450829769603907 109 -19.662465093803611 112 -6.7345616342085091
		 116 -1.471516336421167 125 5.861908869759282;
	setAttr -s 16 ".kit[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 0.67652128966675895 
		0.9265871402571334 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0.73642307448071254 
		0.37608013974431997 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 0.67652128966675895 
		0.92658714025713351 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0.73642307448071254 
		0.37608013974431997 0;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateX";
	rename -uid "4D4EB10C-B442-76A5-94D5-72881060A28C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateY";
	rename -uid "5991AF90-E946-689A-F2D1-21A49ECA0967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index02_ctrl_translateZ";
	rename -uid "66E2693E-A34D-DF84-72D9-81A3F14C9231";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateX";
	rename -uid "C3EC0891-4440-00F9-FC6A-CDAEE58D658C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 71 90 99 90 100 90 103 24.868728500570189 106 24.868728500570189 109 24.868728500570189
		 111 24.868728500570189 112 24.868728500570189;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateY";
	rename -uid "95BAF10A-AA43-1F00-CEBB-C7A4F615D579";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index02_ctrl_rotateZ";
	rename -uid "56F4CFB8-BA41-26A9-B353-3E8B1F55807D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateX";
	rename -uid "EFC365EB-9C41-C637-941E-B08DA8644FCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateY";
	rename -uid "A7CDC449-4141-43D4-11C6-B0992262F749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky02_ctrl_translateZ";
	rename -uid "638E65FE-3C4B-72F9-70E7-62BAFCBB84BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateX";
	rename -uid "277C6255-734A-CF4A-9B09-3AAF274E1529";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 71 90 99 90 100 90 103 47.821342007695343 106 47.821342007695343 109 47.821342007695343
		 111 47.821342007695343 112 47.821342007695343;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateY";
	rename -uid "1502A4FD-9443-37F8-E82F-149FA23A7499";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky02_ctrl_rotateZ";
	rename -uid "B82E15FE-564B-6D43-01CF-BD99B90EC277";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_head_ctrl_translateX";
	rename -uid "08F49829-B741-575E-F17A-E8B7EE72A8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 10 0 11 0
		 12 0 13 0 16 0 17 0 19 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 -0.99036147933127761
		 112 -2.6140822098291574 113 -2.2762771806218449 115 -2.6140822098291574 117 -2.4452525126286293
		 119 -2.6140822098291574 121 -2.3574880286886111 123 -2.6140822098291574;
	setAttr -s 31 ".kit[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kot[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kix[5:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.09520148411883414 
		1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99545802393750948 
		0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[5:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.09520148411883414 
		1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[5:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99545802393750948 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_head_ctrl_translateY";
	rename -uid "CE041629-7D43-92C7-38C1-12AED4E3D148";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 -0.074134816392008002 2 -0.23064165099735823
		 3 -0.38591290532950839 4 -0.47446282490885128 5 0 6 0 8 0 10 -0.23723141245442572
		 11 -0.38550104523844159 12 -0.47446282490885128 13 -0.42511869111833084 16 -0.048632439553157492
		 17 0 19 -0.32828650788331992 29 -0.11782063910802645 60 -0.11782063910802645 70 0
		 71 -0.19088027636777588 99 -0.19088027636777588 100 0 103 0 106 0 109 -0.089294332940214438
		 112 -1.0392529374394954 113 -0.84161994051383604 115 -1.0392529374394954 117 -0.94047904083384026
		 119 -1.0392529374394954 121 -0.8891323867434705 123 -1.0392529374394954;
	setAttr -s 31 ".kit[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kot[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kix[5:30]"  1 1 1 0.30844359729570742 0.33142140957971017 
		1 0.36447024677924927 0.36499917941575655 1 1 1 1 1 1 1 1 1 1 0.42285194706597684 
		1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0 0 -0.95124263323680125 -0.94348282934677619 
		0 0.93121503382015536 0.931007840474947 0 0 0 0 0 0 0 0 0 0 -0.90619878109745444 
		0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[5:30]"  1 1 1 0.30844359729570736 0.33142140957971017 
		1 0.36447024677924927 0.36499917941575655 1 1 1 1 1 1 1 1 1 1 0.42285194706597684 
		1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[5:30]"  0 0 0 -0.95124263323680114 -0.94348282934677619 
		0 0.93121503382015536 0.931007840474947 0 0 0 0 0 0 0 0 0 0 -0.90619878109745444 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_head_ctrl_translateZ";
	rename -uid "0E4319FA-0840-DEDD-765B-23904F1B4044";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0.012416880894773769 2 0.038630296117073956
		 3 0.064636763324461249 4 0.079468037726552143 5 0 6 0 8 0 10 0.039734018863276092
		 11 0.064567780652823606 12 0.079468037726552143 13 0.071203361802990736 16 0.0081454738669716337
		 17 0 19 0.059649795520699392 29 0.030805780699339973 60 0.030805780699339973 70 0
		 71 -0.15428057545543367 99 -0.15428057545543367 100 0 103 0 106 0 109 -0.14933504922301624
		 112 -0.43185128820803009 113 -0.37307553658440645 115 -0.43185128820803009 117 -0.40247608212351726
		 119 -0.43185128820803009 121 -0.38720566557128616 123 -0.43185128820803009;
	setAttr -s 31 ".kit[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kot[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kix[5:30]"  1 1 1 0.88847098334624108 0.90264395750115545 
		1 0.91935661801303115 0.919594340664181 1 1 1 1 1 1 1 1 1 1 0.50100750189241239 1 
		1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0 0 0.45893279655278874 0.43038806441007676 
		0 -0.39342522658777429 -0.3928692513017662 0 0 0 0 0 0 0 0 0 0 -0.86544294037650138 
		0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[5:30]"  1 1 1 0.88847098334624108 0.90264395750115545 
		1 0.91935661801303104 0.919594340664181 1 1 1 1 1 1 1 1 1 1 0.50100750189241239 1 
		1 1 1 1 1 1;
	setAttr -s 31 ".koy[5:30]"  0 0 0 0.45893279655278868 0.43038806441007676 
		0 -0.39342522658777429 -0.3928692513017662 0 0 0 0 0 0 0 0 0 0 -0.86544294037650138 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_head_ctrl_rotateX";
	rename -uid "6C624F25-5A40-7A61-3FC1-6BB452712A2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -9.1020472762063083 1 -9.1777818061212013
		 2 -9.2929540018699637 3 -9.3883513063614181 4 -9.4336934456653552 5 -9.303756166260932
		 6 -9.104512718762626 8 -8.1375408418407424 10 -8.8604395354824863 11 -9.2368285644783406
		 12 -9.3914854151340208 13 -9.4416140582954533 16 -9.2507528321140935 17 0 19 -9.046756474697677
		 29 -9.046756474697677 60 -9.046756474697677 70 0 71 -11.498422676701715 99 -11.498422676701715
		 100 0 103 0 106 0 109 -5.3874227013078446 112 -13.924505882132619 113 -10.94333175533459
		 115 -13.924505882132619 117 -12.447175259912299 119 -13.924505882132619 121 -12.945965351728363
		 123 -13.924505882132619;
	setAttr -s 31 ".kit[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kot[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kix[5:30]"  1 0.98700043197698129 1 0.98842461517240099 
		0.99387163377300713 1 1 0.99681941633384619 1 1 1 1 1 1 1 1 1 1 0.71703373856422081 
		1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0.16071760101884403 0 -0.15171282121591073 
		-0.1105403798680526 0 0 0.079693482919561312 0 0 0 0 0 0 0 0 0 0 -0.69703846218169108 
		0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[5:30]"  1 0.98700043197698129 1 0.9884246151724011 
		0.99387163377300713 1 1 0.99681941633384619 1 1 1 1 1 1 1 1 1 1 0.71703373856422081 
		1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[5:30]"  0 0.16071760101884403 0 -0.15171282121591076 
		-0.1105403798680526 0 0 0.079693482919561312 0 0 0 0 0 0 0 0 0 0 -0.69703846218169108 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_head_ctrl_rotateY";
	rename -uid "BBB180AC-2845-64B0-405A-BC9EAF0DEAF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -19.554889769332636 1 -18.024917843303964
		 2 -13.085411378639314 3 -6.721258995480162 4 0.062638877061376025 5 6.866519827664713
		 6 12.93003594502764 8 19.032116118480474 10 14.53792377543858 11 9.3472313724723133
		 12 3.2680052234758499 13 -3.3271501183478724 16 -17.192838838061306 17 0 19 0 29 0
		 60 0 70 0 71 0 99 0 100 0 103 0 106 -15.439938088075992 109 -14.491005517803474 112 -6.7378005553078157
		 113 -10.959139463208221 115 -6.7378005553078157 117 -9.2086949076534612 119 -6.7378005553078157
		 121 -8.4867750211135053 123 -6.7378005553078157;
	setAttr -s 31 ".kit[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kot[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kix[5:30]"  1 0.50732213258630521 1 0.59458321538962988 
		0.39009771308006835 1 0.42291829390883445 1 1 1 1 1 1 1 1 1 1 1 0.92927947573564151 
		1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0.86175649332516391 0 -0.80403407886539813 
		-0.92077346521807457 0 -0.90616781926817547 0 0 0 0 0 0 0 0 0 0 0 0.36937738963895905 
		0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[5:30]"  1 0.50732213258630521 1 0.59458321538962977 
		0.39009771308006835 1 0.42291829390883445 1 1 1 1 1 1 1 1 1 1 1 0.92927947573564151 
		1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[5:30]"  0 0.86175649332516391 0 -0.80403407886539802 
		-0.92077346521807446 0 -0.90616781926817547 0 0 0 0 0 0 0 0 0 0 0 0.36937738963895905 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_head_ctrl_rotateZ";
	rename -uid "253F1BA2-4046-0328-E39B-DB88E3E2FC27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.04291548534398678 1 0.075668416639150957
		 2 0.16003175084530838 3 0.17361759123762141 4 -0.010407645400895853 5 0.30447823042941913
		 6 -0.16407059546341893 8 0.22797229954497969 10 -0.17230482470322853 11 -0.28144470459589982
		 12 0.10928744047486261 13 0.25618288110430409 16 0.29087059863019155 17 0 19 0 29 0
		 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 20.650507737676421 112 64.675358279336535
		 113 45.484874075247745 115 64.675358279336535 117 54.057293961829217 119 64.675358279336535
		 121 57.29930129530559 123 64.675358279336535;
	setAttr -s 31 ".kit[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kot[5:30]"  1 18 18 18 18 1 18 18 
		1 1 18 18 1 1 1 1 18 18 18 18 18 1 18 1 1 
		1;
	setAttr -s 31 ".kix[5:30]"  1 1 1 0.99747995955325464 1 1 0.99989445688413214 
		1 1 1 1 1 1 1 1 1 1 1 0.21623475726976737 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0 0 -0.070948786385937934 0 0 0.014528423602933485 
		0 0 0 0 0 0 0 0 0 0 0 0.97634140020204241 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[5:30]"  1 1 1 0.99747995955325464 1 1 0.99989445688413203 
		1 1 1 1 1 1 1 1 1 1 1 0.21623475726976737 1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[5:30]"  0 0 0 -0.070948786385937934 0 0 0.014528423602933485 
		0 0 0 0 0 0 0 0 0 0 0 0.97634140020204241 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_head_ctrl_Space_switch";
	rename -uid "7274C32B-AD4C-D75F-9B74-3DAAC7F404E8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 10 0 11 0
		 12 0 13 0 16 0 17 0 19 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0 113 0
		 115 0 117 0 119 0 121 0 123 0;
	setAttr -s 31 ".kit[0:30]"  9 9 9 9 9 1 9 9 
		9 9 1 9 9 1 1 9 9 1 1 1 1 9 9 9 9 
		9 1 9 1 1 1;
	setAttr -s 31 ".kix[5:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_head_ctrl_FaceLight";
	rename -uid "32337595-F34E-3EDE-E910-FF8E3C370F34";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 10 0 11 0
		 12 0 13 0 16 0 17 0 19 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0 113 0
		 115 0 117 0 119 0 121 0 123 0;
	setAttr -s 31 ".kit[0:30]"  9 9 9 9 9 1 9 9 
		9 9 1 9 9 1 1 9 9 1 1 1 1 9 9 9 9 
		9 1 9 1 1 1;
	setAttr -s 31 ".kix[5:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_head_ctrl_Led_color";
	rename -uid "412D8E8E-B146-D559-E6B8-D7AE7EB169A4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 2 1 2 2 2 3 2 4 2 5 2 6 2 8 2 10 2 11 2
		 12 2 13 2 16 2 17 2 19 2 29 2 60 2 70 2 71 2 99 2 100 2 103 2 106 2 109 2 112 2 113 2
		 115 2 117 2 119 2 121 2 123 2;
	setAttr -s 31 ".kit[0:30]"  9 9 9 9 9 1 9 9 
		9 9 1 9 9 1 1 9 9 1 1 1 1 9 9 9 9 
		9 1 9 1 1 1;
	setAttr -s 31 ".kix[5:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_head_ctrl_Face_Drawing";
	rename -uid "87FF5DF2-BF44-086C-DAFA-1DB902141CD6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 2 1 2 2 2 3 2 4 2 5 2 6 2 8 2 10 2 11 2
		 12 2 13 2 16 2 17 2 19 2 29 2 60 2 70 2 71 2 99 2 100 2 103 2 106 2 109 2 112 2 113 2
		 115 2 117 2 119 2 121 2 123 2;
	setAttr -s 31 ".kit[0:30]"  9 9 9 9 9 1 9 9 
		9 9 1 9 9 1 1 9 9 1 1 1 1 9 9 9 9 
		9 1 9 1 1 1;
	setAttr -s 31 ".kix[5:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 31 ".kiy[5:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateX";
	rename -uid "61362CE1-F644-1881-8835-EF85CDE0D736";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateY";
	rename -uid "F62F1CD2-7644-8878-CBA6-FE8A97158A1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Clavicle_ctrl_translateZ";
	rename -uid "B238A5D0-054D-8FD2-06BC-EDACA82311C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateX";
	rename -uid "95F51AD5-ED48-FB69-10E1-788EF491E5E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 -41.251245567126148 112 -43.421735117228366;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 0.73991001075727425 
		1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 -0.6727058614143111 
		0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 0.73991001075727425 
		1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 -0.6727058614143111 
		0;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateY";
	rename -uid "3BACB9A0-0D4D-3D18-790C-D499BC9D845A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 16.410287300255728;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Clavicle_ctrl_rotateZ";
	rename -uid "88A04DC5-324F-F9F1-3C13-46A82298B72A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 -14.968659103418725;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateX1";
	rename -uid "E89F5B54-1244-31F5-C5FE-7199AC6F449D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 119 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateY1";
	rename -uid "9FA8E331-1442-F9E3-664D-67BD5E876779";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 119 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Arm_ctrl_translateZ1";
	rename -uid "787A45E5-3C49-D92B-2531-FCBCD6DB74EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0 119 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateY1";
	rename -uid "737C2D14-914B-33C3-F7FF-298328EAC6EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 59.912645302085153 112 64.34636104034719 119 55.527831193063115;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 0.47409039338757591 
		1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0.880476177359509 
		0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 0.47409039338757591 
		1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0.880476177359509 
		0 0;
createNode animCurveTA -n "PALbot_L_Arm_ctrl_rotateZ1";
	rename -uid "0412037B-254B-BD9E-454B-5AB228F958B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 -38.157752179401989 109 12.051782099384582 112 19.747404251511746
		 119 19.308223912362227;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 0.29628913325633888 
		1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0.95509829311658145 
		0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 0.29628913325633888 
		1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0.95509829311658145 
		0 0;
createNode animCurveTL -n "PALbot_R_hip_translateX";
	rename -uid "3174E0C5-E348-4614-F50C-268643E5DD57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_hip_translateY";
	rename -uid "ADAF3522-334C-F8AC-263D-A4ADD3BA1B6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_hip_translateZ";
	rename -uid "32EAE04B-E742-32F2-AE03-25A30699D961";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_hip_rotateX";
	rename -uid "40D9D5C3-874C-645A-5910-368C452C01F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_hip_rotateY";
	rename -uid "9D8254E1-474D-0446-077D-7E8351BB82C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_hip_rotateZ";
	rename -uid "1196C505-F64D-19AD-FD43-C78A1249875F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateX";
	rename -uid "80C3A9FB-F347-3370-5F56-D8B761A3E153";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateY";
	rename -uid "3FAE0AEB-774C-991C-6A4A-03B0497C920F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb03_ctrl_translateZ";
	rename -uid "AFAC6452-CB4A-EE12-8167-7181E94E52D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateX";
	rename -uid "962A0E81-EE40-C90B-70CB-4891A79EEC0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 79.269829091334856 5 79.269829091334856
		 16 79.269829091334856 17 90 29 90 60 90 70 90 71 90 99 90 100 90 103 0 106 0 109 0
		 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateY";
	rename -uid "F26856DE-A24D-4137-B782-FEA57AE7BD97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb03_ctrl_rotateZ";
	rename -uid "F8F5FC9F-3F46-C782-CEB3-48B16F2A6EC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateX";
	rename -uid "867A857E-934C-EBA0-E7ED-26B0465F549B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateY";
	rename -uid "FEFB91ED-7847-5FE7-BD02-CD8B6EB4D5BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_Neck_ctrl_translateZ";
	rename -uid "8D34758F-D147-15A9-6D32-019B865BA6FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateX";
	rename -uid "FC7A71DB-4F45-36BF-B7B9-2A84ACE0A815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateY";
	rename -uid "BEBD1657-C444-4948-2A3C-22A731A5C35C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_Neck_ctrl_rotateZ";
	rename -uid "961876A9-9140-E1D6-75CD-BD9911822736";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateX";
	rename -uid "D168A53D-A04C-142E-4954-D1B6D8876E16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 16 0 17 0 19 0 21 0 29 0 30 0 60 0
		 62 0 64 0 66 0 68 0 69 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 23 ".kit[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kot[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kix[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".kiy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 23 ".kox[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".koy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateY";
	rename -uid "5FFC459D-D748-EDB6-395D-828D07EB0F7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 16 0 17 0 19 0 21 0 29 0 30 0 60 0
		 62 0 64 0 66 0 68 0 69 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 23 ".kit[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kot[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kix[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".kiy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 23 ".kox[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".koy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "PALbot_R_foot_secondary_translateZ";
	rename -uid "8B9B14DE-DF4C-19EA-0CA8-6892E9301485";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 16 0 17 0 19 0 21 0 29 0 30 0 60 0
		 62 0 64 0 66 0 68 0 69 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 23 ".kit[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kot[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kix[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".kiy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 23 ".kox[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".koy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateX";
	rename -uid "3AB72050-1E41-E36E-CB5A-A6A0C4F2F09D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 16 0 17 0 19 -14.021765597536048
		 21 -30.114429720538116 29 13.700945831360832 30 -0.17691806685530015 60 -0.17691806685530015
		 62 3.2896260046721708 64 -26.236772108628628 66 -29.010064001680231 68 -19.460654713640825
		 69 -12.415690605380586 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 23 ".kit[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kot[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kix[1:22]"  1 1 1 0.30226741278807717 1 1 1 1 1 0.49774389393169188 
		1 0.39625975049352646 0.23828178873950354 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[1:22]"  0 0 0 -0.95322316965462073 0 0 0 0 0 -0.86732405481095509 
		0 0.91813844824122692 0.97119606113034795 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[1:22]"  1 1 1 0.30226741278807717 1 1 1 1 1 0.49774389393169188 
		1 0.39625975049352646 0.23828178873950354 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[1:22]"  0 0 0 -0.95322316965462084 0 0 0 0 0 -0.8673240548109552 
		0 0.91813844824122692 0.97119606113034795 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateY";
	rename -uid "7F7EA91D-2647-139C-EFAB-B98A0F2EED93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 16 0 17 0 19 0 21 0 29 0 30 0 60 0
		 62 0 64 0 66 0 68 0 69 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 23 ".kit[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kot[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kix[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".kiy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 23 ".kox[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".koy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTA -n "PALbot_R_foot_secondary_rotateZ";
	rename -uid "83BCEC60-A745-AEE0-8530-D4A88C60173D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 16 0 17 0 19 0 21 0 29 0 30 0 60 0
		 62 0 64 0 66 0 68 0 69 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 23 ".kit[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kot[1:22]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 23 ".kix[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".kiy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 23 ".kox[1:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 23 ".koy[1:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTU -n "PALbot_L_arm_IK_FK_switch_IK_FK";
	rename -uid "6517F83F-C347-B820-0BB7-EDB3DA6BCA6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 5 1 16 1 17 1 29 1 60 1 70 1 71 1 99 1
		 100 1 103 1 106 1 109 1 112 1;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_leg_IK_FK_switch_IK_FK";
	rename -uid "0856E197-FA4E-247F-EBD6-4B9721B08B88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 1 112 1;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_arm_IK_FK_switch_IK_FK";
	rename -uid "EB253477-3045-7D9F-CC65-DE90C70DAB83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 16 1 17 1 29 1 60 1 70 1 71 1 99 1
		 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateX";
	rename -uid "34B307EF-5F46-0918-0CA9-B2B949DEE9C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 8 0 16 0 17 0 29 0 60 0 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateY";
	rename -uid "5B3ED413-4940-880B-AD72-8A93942AF943";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 8 0 16 0 17 0 29 0 60 0 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_hipMain_ctrl_translateZ";
	rename -uid "7BAEA091-A642-8B51-7760-03B77A47ABE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 8 0 16 0 17 0 29 0 60 0 70 0 71 0
		 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateX";
	rename -uid "1EFE6E0B-364D-B192-347D-55B674EE0A64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 5 0 8 -5.0012451521150383e-17 16 -1.7151046475017312e-18
		 17 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateY";
	rename -uid "77F5F524-7F45-1CC9-8472-D3986474DE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -5.3838047114928456 5 0 8 6.4471346557759039
		 16 -4.9780797674849966 17 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_hipMain_ctrl_rotateZ";
	rename -uid "6C9D23CE-8D4E-483F-8FAA-2FAB2386D764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 7.934017091736453 5 0 8 -5.5152058236808523
		 16 7.4727954554052669 17 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 16 ".kit[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kot[1:15]"  1 18 18 1 18 18 1 1 
		1 1 18 18 18 18 18;
	setAttr -s 16 ".kix[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[1:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[1:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_HandVIS_Hand_Vis";
	rename -uid "1DFB6039-9746-9269-163A-7B8B03A63B28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 16 1 17 1 29 1 60 1 70 1 71 1 99 1
		 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_HandVIS_canon_light";
	rename -uid "0032030B-2241-061F-8A21-11B2D6D338FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateX";
	rename -uid "648B4393-0E44-06F4-98B3-93B1B7C6A2AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateY";
	rename -uid "B49122BF-9D4C-ADF6-2BD2-E98AE56550C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Index01_ctrl_translateZ";
	rename -uid "3B6D0DCC-BB4E-7BEB-25D1-DF9A7FB7317C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateX";
	rename -uid "A0A69879-DC4D-5DB1-62AD-1FAA5736333E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 71 0.93642541143228986 99 0.93642541143228986 100 90 103 -27.00329878799004 106 -27.00329878799004
		 109 -27.00329878799004 111 -27.00329878799004 112 -7.7375202891732151;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateY";
	rename -uid "27B2AFB6-A24F-C03E-DFA0-4BB0F561E2F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 2.1270563563629792 106 2.1270563563629792 109 2.1270563563629792 111 2.1270563563629792
		 112 2.1270563563630094;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Index01_ctrl_rotateZ";
	rename -uid "65A2004F-4847-5C06-5D5A-2999AD971B9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 -1.0601361465687871 106 -1.0601361465687871 109 -1.0601361465687871 111 -1.0601361465687871
		 112 -1.0601361465687973;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateX";
	rename -uid "369784B2-4544-C390-B396-E3B199DBEFD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateY";
	rename -uid "3B0AA5DA-914A-E98F-A35C-DDA51FE2519F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Pinky01_ctrl_translateZ";
	rename -uid "A921E06A-6D4F-92B8-8CF8-5AB9448134AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateX";
	rename -uid "56EC1828-D046-0F6F-0408-84A6540BDB5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 71 0.93642541143228986 99 0.93642541143228986 100 90 103 18.441151085476715 106 18.441151085476715
		 109 18.441151085476715 111 18.441151085476715 112 18.441151085476715;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateY";
	rename -uid "27E1E861-4D43-575A-92A6-8391DDAC869E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Pinky01_ctrl_rotateZ";
	rename -uid "0D661943-DD4F-FB6E-8564-6A9C78798C1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateX";
	rename -uid "D482CB51-1341-714C-BF0A-A3BD3047ED69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 8 0 16 0 17 0 19 0 21 0 22 0 23 0 24 0
		 25 0 28 0 29 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0 119 0 125 0;
	setAttr -s 24 ".kit[9:23]"  18 1 18 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 24 ".kot[9:23]"  18 1 18 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateY";
	rename -uid "24C92C91-E74F-5FCA-8258-608559673A77";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 8 0 16 0 17 0 19 0 21 0 22 0 23 0 24 0
		 25 0 28 0 29 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0 119 0 125 0;
	setAttr -s 24 ".kit[9:23]"  18 1 18 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 24 ".kot[9:23]"  18 1 18 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_Elbow_ctrl_translateZ";
	rename -uid "7251B1A6-854C-C729-0C0C-C0A1AF170372";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 8 0 16 0 17 0 19 0 21 0 22 0 23 0 24 0
		 25 0 28 0 29 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0 119 0 125 0;
	setAttr -s 24 ".kit[9:23]"  18 1 18 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 24 ".kot[9:23]"  18 1 18 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_Elbow_ctrl_rotateX";
	rename -uid "64631135-3C40-33DE-B7D3-99956E00F203";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -54.659839902022476 8 -114.17480108881287
		 16 -64.732536726034894 17 0 19 -16.457048416157271 21 -39.498250279699363 22 -65.954371270188318
		 23 -131.23979907912496 24 -131.23979907912496 25 -112.64708074590965 28 -23.006045007287728
		 29 -23.006045007287728 60 -23.006045007287728 65 -106.47719590982739 70 0 71 -47.290765188432488
		 99 -47.290765188432488 100 0 103 -6.5050725762025623 106 -22.451982561594622 109 -65.748759630453449
		 112 -52.938424223402805 119 -18.789529336577594 125 -12.264494391512548;
	setAttr -s 24 ".kit[9:23]"  18 1 18 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 24 ".kot[9:23]"  18 1 18 18 18 1 1 1 
		1 18 18 18 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 0.23499481559042046 0.18943236330413468 
		0.12902385584975778 1 1 0.087887047393382725 1 1 1 1 1 1 1 1 0.53784580950071614 
		0.23500863779772888 1 0.45318131601998729 0.60660641002610449 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 -0.97199662378303786 -0.98189377212252982 
		-0.9916414899658349 0 0 0.99613044672897799 0 0 0 0 0 0 0 0 -0.84304322854911729 
		-0.97199328195232704 0 0.89141836127061702 0.79500230396851157 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 0.23499481559042043 0.18943236330413468 
		0.12902385584975776 1 1 0.087887047393382725 1 1 1 1 1 1 1 1 0.53784580950071614 
		0.23500863779772888 1 0.45318131601998729 0.60660641002610449 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 -0.97199662378303775 -0.98189377212252971 
		-0.9916414899658349 0 0 0.99613044672897799 0 0 0 0 0 0 0 0 -0.84304322854911729 
		-0.97199328195232704 0 0.89141836127061702 0.79500230396851157 0;
createNode animCurveTU -n "PALbot_R_leg_IK_FK_switch_IK_FK";
	rename -uid "6E1801E7-4C40-E5CD-CEB9-858175ADAB89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateX";
	rename -uid "6A6B5DB5-1747-4722-BFD2-1BBE81B53ECB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateY";
	rename -uid "26AABC21-704B-017A-17B8-6EBA7B7F9A3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Thumb02_ctrl_translateZ";
	rename -uid "E128CC87-BE40-04AF-E7CF-1B8F50C14E13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateX";
	rename -uid "07893C70-0A4A-88CB-2015-1CB97F6F25D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateY";
	rename -uid "4BFA3435-AC4A-676D-01F8-A6B7A4388B61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Thumb02_ctrl_rotateZ";
	rename -uid "F4007989-D542-D1CB-2386-A18AB16A8AEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -41.927885320197497 5 -41.927885320197497
		 16 -41.927885320197497 17 -58.528282448028818 29 -58.528282448028818 60 -58.528282448028818
		 70 -58.528282448028818 71 -58.528282448028818 99 -58.528282448028818 100 -58.528282448028818
		 103 -17.436834015348605 106 -17.436834015348605 109 -17.436834015348605 111 -17.436834015348605
		 112 -17.436834015348605;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateX";
	rename -uid "54173D23-E54A-0F46-8513-9797B8E14726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 8 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateY";
	rename -uid "68EDB987-2F44-61D8-86C2-82AD524E52CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 8 0 16 0 17 0 29 0.27398602577320841
		 60 0.27398602577320841 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_chestUp_ctrl_translateZ";
	rename -uid "E352A2D0-6B4D-7B4A-9F6D-21B603BECB76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 8 0 16 0 17 0 29 -0.037549351988685357
		 60 -0.037549351988685357 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateX";
	rename -uid "2F30EF38-5D4D-1F6F-A1C2-02A81FFC895F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 2.2178845535082301 8 2.2594968538820437
		 16 2.2193115871287308 17 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 0.99998007811212719 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 14 ".kiy[1:13]"  0 -0.0063121611880650628 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 0.99998007811212719 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 14 ".koy[1:13]"  0 -0.0063121611880650628 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateY";
	rename -uid "4CC9656B-3C42-C88F-FFC5-D49E8320FAAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 17.843170174252712 8 -20.872293720894174
		 16 16.515479368520626 17 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_chestUp_ctrl_rotateZ";
	rename -uid "3822D90C-724A-1769-70EB-ED922892EE43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.67989552180308965 8 -0.80539209452293492
		 16 0.62895973249149673 17 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 -25.177739349442767
		 112 -25.177739349442767;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_chestUp_ctrl_secondary_vis";
	rename -uid "95B62CBF-8148-9BBA-AF66-3D82ECD7F413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 8 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 112 0;
	setAttr -s 14 ".kit[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_root_translateX";
	rename -uid "A49812AB-7746-D153-7462-83A38905E923";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 113 0 115 0 117 0 119 0 121 0 125 0;
	setAttr -s 20 ".kit[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_root_translateY";
	rename -uid "7C27511B-B345-8204-1E04-339205B62CC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0.45579702420459656 113 0 115 0.30505277429732747 117 -0.15305477506103049
		 119 0.0010641405626543587 121 -0.30550767504191878 125 -0.30550767504191878;
	setAttr -s 20 ".kit[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_root_translateZ";
	rename -uid "A5C50C45-0647-5B7C-6C77-31B57E61C53A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 -1.3956266691375552 113 -2.6009791333596355 115 -3.6517450923681367
		 117 -4.5043052607241609 119 -4.9564870375224945 121 -5.2079148467920211 125 -5.9641718971828901;
	setAttr -s 20 ".kit[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 0.06394728208453121 
		0.073672439879578139 0.087232204653260245 0.12670958439306262 0.23049557424723124 
		0.34877251203929527 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.99795327802157219 
		-0.9972824933799801 -0.99618800558495568 -0.99193985766423221 -0.97307337351940693 
		-0.93720741292725573 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 0.06394728208453121 
		0.073672439879578125 0.087232204653260245 0.12670958439306262 0.23049557424723124 
		0.34877251203929527 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.99795327802157219 
		-0.99728249337997987 -0.99618800558495557 -0.99193985766423221 -0.97307337351940704 
		-0.93720741292725573 0;
createNode animCurveTA -n "PALbot_root_rotateX";
	rename -uid "CD75A315-2240-3129-C4BD-DAAFD09ADB49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 113 0 115 0 117 0 119 0 121 0 125 0;
	setAttr -s 20 ".kit[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_root_rotateY";
	rename -uid "A30FE154-4F41-8506-D6F9-A3B5C77DB1B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 113 0 115 0 117 0 119 0 121 0 125 0;
	setAttr -s 20 ".kit[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_root_rotateZ";
	rename -uid "05ED7EC1-1C4B-A0AB-3501-B58E75B3B14E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 113 0 115 0 117 0 119 0 121 0 125 0;
	setAttr -s 20 ".kit[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateX";
	rename -uid "C81B9040-0945-E631-AC1C-00A9CC360E17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateY";
	rename -uid "E929E572-9948-80E7-C565-14B3CBA91355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Ring01_ctrl_translateZ";
	rename -uid "043F8AA1-1E4F-380B-6B8A-13AB8AA8981D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateX";
	rename -uid "123DF894-E042-07D4-E6B4-A589AF85CAA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 71 0.93642541143228986 99 0.93642541143228986 100 90 103 0 106 0 109 0 111 0 112 15.450101287458434;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateY";
	rename -uid "ABBF7049-504E-585B-B6DE-199B6160AC66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Ring01_ctrl_rotateZ";
	rename -uid "041A5D28-874C-013D-4D70-72BF0B79DFAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateX";
	rename -uid "AEE6A434-F940-E9A5-760C-CE9DF83781C2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 8 0 16 0 17 0 19 0 21 0 22 0 23 0 24 0
		 25 0 28 0 29 0 40 0 50 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 25 ".kit[0:24]"  18 18 18 1 1 1 1 1 
		1 18 1 1 1 1 1 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  18 18 18 1 1 1 1 1 
		1 18 1 1 1 1 1 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 25 ".kix[3:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 25 ".kiy[3:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 25 ".kox[3:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 25 ".koy[3:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateY";
	rename -uid "0195A74E-4548-1AC9-2A14-4B8C0B0BF11D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 8 0 16 0 17 0 19 0 21 0 22 0 23 0 24 0
		 25 0 28 0 29 0 40 0 50 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 25 ".kit[0:24]"  18 18 18 1 1 1 1 1 
		1 18 1 1 1 1 1 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  18 18 18 1 1 1 1 1 
		1 18 1 1 1 1 1 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 25 ".kix[3:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 25 ".kiy[3:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 25 ".kox[3:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 25 ".koy[3:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "PALbot_R_FK_Elbow_ctrl_translateZ";
	rename -uid "F4B924FE-C34A-F724-D54F-AFA5731C84BB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 8 0 16 0 17 0 19 0 21 0 22 0 23 0 24 0
		 25 0 28 0 29 0 40 0 50 0 60 0 65 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 25 ".kit[0:24]"  18 18 18 1 1 1 1 1 
		1 18 1 1 1 1 1 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  18 18 18 1 1 1 1 1 
		1 18 1 1 1 1 1 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 25 ".kix[3:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 25 ".kiy[3:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 25 ".kox[3:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 25 ".koy[3:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTA -n "PALbot_R_FK_Elbow_ctrl_rotateX";
	rename -uid "49EFBF2A-BD4F-DCFE-45E2-F6AD9D231DDD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -114.17480108881287 8 -54.700024689499671
		 16 -111.93266922051298 17 0.11379608941537347 19 -24.475806604368525 21 -46.92372478031367
		 22 -76.046805909391978 23 -121.37984399480081 24 -121.37984399480081 25 -101.29556791098287
		 28 -14.561418152704359 29 -12.094068856107674 40 -7.9492133653367452 50 -6.6512907058464794
		 60 -7.9492133653367452 65 -91.687299403743779 70 0.11379608941537347 71 -67.512956509350161
		 99 -67.512956509350161 100 0.11379608941537347 103 -68.60581812931882 106 -23.863359026047522
		 109 10.522961218598946 111 10.522961218598946 112 10.522961218598946;
	setAttr -s 25 ".kit[0:24]"  18 18 18 16 1 1 1 1 
		1 18 1 1 1 1 1 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  18 18 5 16 1 1 1 1 
		1 18 1 1 1 1 1 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 25 ".kix[4:24]"  0.19895587932537018 0.1820728816878022 
		0.158296188985661 1 1 0.089042364861626908 1 1 1 1 1 1 1 1 1 1 1 0.17812574203442003 
		1 1 1;
	setAttr -s 25 ".kiy[4:24]"  -0.98000844796454123 -0.98328503789791266 
		-0.98739167332554301 0 0 0.99602783960080599 0 0 0 0 0 0 0 0 0 0 0 0.98400773372199024 
		0 0 0;
	setAttr -s 25 ".kox[4:24]"  0.19895587932537015 0.1820728816878022 
		0.15829618898566103 1 1 0.089042364861626908 1 1 1 1 1 1 1 1 1 1 1 0.17812574203442003 
		1 1 1;
	setAttr -s 25 ".koy[4:24]"  -0.98000844796454123 -0.98328503789791277 
		-0.98739167332554323 0 0 0.9960278396008061 0 0 0 0 0 0 0 0 0 0 0 0.98400773372199024 
		0 0 0;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateX";
	rename -uid "430AF36E-CA45-F6F6-E98A-E7B0CB617ADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateY";
	rename -uid "E6425337-2549-4A93-0CFF-A993D7E53528";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Middle01_ctrl_translateZ";
	rename -uid "1ECAE6E9-FE42-0FB1-BFB1-95AF08A7B712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateX";
	rename -uid "C34E4FAC-D448-47BA-2F28-2F823F9D3D07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 71 0.93642541143228986 99 0.93642541143228986 100 90 103 -17.55675970751253 106 -17.55675970751253
		 109 -17.55675970751253 111 -17.55675970751253 112 -1.3664607041724182;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateY";
	rename -uid "2D0F71E5-1B42-C558-E143-6597F2958175";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Middle01_ctrl_rotateZ";
	rename -uid "B3A9718C-2345-CD5C-3655-BABCE68647AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateX";
	rename -uid "36D4A412-5449-28D2-A579-84825F0194DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.00083712843118264701 5 -0.00040531668295293245
		 8 -0.00056655606107318694 16 -0.00083140354947708025 17 0 22 4.6248392636629659e-05
		 29 4.6248392636629659e-05 60 4.6248392636629659e-05 70 0 71 0 99 0 100 0 103 0 106 0
		 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 0.99999956788122946 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 -0.00092964367069966894 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0.99999956788122946 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 -0.00092964367069966894 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateY";
	rename -uid "4D78FF87-6542-1581-0233-84A3B2A6D1B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.034744674149896168 5 0.068291009986079482
		 8 0.044479629689375522 16 0.03480241883229656 17 0 22 0.14050049346991522 29 0.14050049346991522
		 60 0.14050049346991522 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 0.99734131916251134 0.99622868144732779 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 -0.072871757843362625 -0.086766435110119861 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0.99734131916251134 0.99622868144732779 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 -0.072871757843362625 -0.086766435110119861 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_footSec_reshape01_translateZ";
	rename -uid "07841070-5E4F-707C-0554-1FB30547643F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.1674783918149538 5 0.06133703166736159
		 8 0.18713719169684959 16 0.16815256190692554 17 0 22 0.022613821765107268 29 0.022613821765107268
		 60 0.022613821765107268 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 0.98571516566219075 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 -0.16842093748569309 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 0.98571516566219075 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 -0.16842093748569309 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateX";
	rename -uid "A2E49257-3840-975C-E32F-0AA557FD6C1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 11.015058845498057 5 8.6715605727743235
		 8 6.3280623000505916 16 10.854325081936759 17 0 22 0 29 0 60 0 70 0 71 0 99 0 100 0
		 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  0.97118217791672079 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  -0.23833836723644597 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  0.97118217791672079 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  -0.23833836723644597 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateY";
	rename -uid "59B71833-0F47-0D29-8761-FEAA71BC2AEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0.1267443693215731 8 0.25348873864314619
		 16 0.0086930294459241046 17 0 22 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0
		 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  0.99991193015857693 1 0.99994033863759124 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0.013271470398910839 0 -0.010923331238194556 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  0.99991193015857693 1 0.99994033863759124 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0.013271470398910839 0 -0.010923331238194556 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_footSec_reshape01_rotateZ";
	rename -uid "AEE234DA-4D42-581D-118A-6AB811305CAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0.058912128918887675 8 0.11782425783777538
		 16 0.0040406124087029168 17 0 22 0 29 0 60 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0
		 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 18 1 1 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  0.99998097063580249 1 0.99998710932315571 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0.0061691463167977021 0 -0.0050775178501884103 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  0.99998097063580249 1 0.99998710932315571 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0.0061691463167977021 0 -0.0050775178501884103 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateX";
	rename -uid "A4C93124-9E40-4621-23BC-8B8AAB019767";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 16 0 17 0 26 0 27 0 29 0 60 0 61 0
		 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateY";
	rename -uid "43B4D24C-AF47-377F-7374-6490C85D35F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 2.2204460492503131e-16 5 2.2204460492503131e-16
		 16 2.2204460492503131e-16 17 2.2204460492503131e-16 26 0 27 0 29 0 60 0 61 6.2172489379008375e-18
		 70 2.2204460492503131e-16 71 2.2204460492503131e-16 99 2.2204460492503131e-16 100 2.2204460492503131e-16
		 103 2.2204460492503131e-16 106 2.2204460492503131e-16 109 2.2204460492503131e-16
		 111 2.2204460492503131e-16 112 2.2204460492503131e-16;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_Engine_ctrl_translateZ";
	rename -uid "14773ECE-014C-ABF7-01C9-1D9852DEAE03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 6.9388939039072284e-18 5 6.9388939039072284e-18
		 16 6.9388939039072284e-18 17 6.9388939039072284e-18 26 0 27 0 29 0 60 0 61 1.9428902930940117e-19
		 70 6.9388939039072284e-18 71 6.9388939039072284e-18 99 6.9388939039072284e-18 100 6.9388939039072284e-18
		 103 6.9388939039072284e-18 106 6.9388939039072284e-18 109 6.9388939039072284e-18
		 111 6.9388939039072284e-18 112 6.9388939039072284e-18;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateX";
	rename -uid "2B4DD8DE-E543-B110-66C1-4587EA142EBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 16 0 17 0 26 0 27 0 29 0 60 0 61 0
		 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateY";
	rename -uid "6B1BA4E0-8740-707F-6CAF-9A9EB029F5DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 16 0 17 0 26 0 27 0 29 0 60 0 61 0
		 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_Engine_ctrl_rotateZ";
	rename -uid "547C57EC-7C48-C09D-3B8D-53B90928BC72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 16 0 17 0 26 0 27 0 29 0 60 0 61 0
		 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleX";
	rename -uid "AC4514DF-FB42-E230-59A8-54922D46AF24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 5 1 16 1 17 1 26 1 27 1 29 1 60 1 61 1
		 70 1 71 1 99 1 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleY";
	rename -uid "BD2C2D51-7841-71DE-F516-9F84B6FF9C4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 5 1 16 1 17 1 26 1 27 1 29 1 60 1 61 1
		 70 1 71 1 99 1 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_scaleZ";
	rename -uid "DA3C3B08-EF4A-177B-F81D-6395761A8571";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 5 1 16 1 17 1 26 1 27 1 29 1 60 1 61 1
		 70 1 71 1 99 1 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_Engine_ctrl_on_off";
	rename -uid "EAFE05B5-CD47-8633-07E9-7FB5600E6835";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 16 0 17 0 26 0 27 1 29 1 60 1 61 0
		 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 18 ".kit[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 1 18 18 18 18 18 
		1 1 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateX";
	rename -uid "43C0A1D2-5542-7A78-2D76-E4BF0774985A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateY";
	rename -uid "4139116E-5440-9BAC-A4A0-D184A779FF73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index02_ctrl_translateZ";
	rename -uid "ED98F0DB-B346-EE9D-D695-F3864DA94D51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateX";
	rename -uid "7E18AC73-E642-5322-6F35-19AED5DC9E73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 90 5 90 16 90 17 90 30 90 60 90 70 90
		 100 90 103 58.624518059525272 106 58.624518059525272 109 58.624518059525272 112 76.750900488851954
		 125 53.812263307773136;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateY";
	rename -uid "BBACB5E0-894E-EA32-7E46-0A80B38E7F9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index02_ctrl_rotateZ";
	rename -uid "BDFA602C-DF40-7191-AD27-20ABBCDD7444";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_MAIN_translateX";
	rename -uid "204253F4-C24F-5F2A-304D-7D89CF63FF1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_MAIN_translateY";
	rename -uid "21BD196F-0444-76DF-BED5-0382A9F1A954";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_MAIN_translateZ";
	rename -uid "FEA89891-E043-E1B7-34F1-96B522015587";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_MAIN_rotateX";
	rename -uid "D9221C44-D04D-E620-E99B-C4BB51C308A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_MAIN_rotateY";
	rename -uid "1574DBA8-0349-53CA-37AD-8FB23235253D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_MAIN_rotateZ";
	rename -uid "45218E82-3F41-72AC-2ED5-E196061FFAD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_MAIN_global_scale";
	rename -uid "8A4A76D4-0F40-8173-0D8E-2792510076BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 16 1 17 1 29 1 60 1 70 1 71 1 99 1
		 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_MAIN_Mesh_lock";
	rename -uid "E42DF3D5-7949-3DD4-553C-ECBFB0591A20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 16 1 17 1 29 1 60 1 70 1 71 1 99 1
		 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateX";
	rename -uid "4FB364FF-6345-6825-DFD0-FA834122C293";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateY";
	rename -uid "C13B4FDB-264E-CA63-ECAB-EC9CE8B99B5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle02_ctrl_translateZ";
	rename -uid "A984333E-674D-CED4-41BF-08ADD7CA83C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateX";
	rename -uid "591785ED-2E4B-6CC0-8173-6EB834E96106";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 90 5 90 16 90 17 90 30 90 60 90 70 90
		 100 90 103 39.959867413048627 106 39.959867413048627 109 39.959867413048627 112 74.124787075862059
		 125 45.051903275519386;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateY";
	rename -uid "B410D021-7B4F-5371-3228-86819EF4801A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 1.7243491957520649;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle02_ctrl_rotateZ";
	rename -uid "DA4C9522-764E-A822-CCF3-D59F28E5BA4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 1.2227798761562247;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateX";
	rename -uid "12E54A0B-0546-CDEB-F949-A0A45478D1F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateY";
	rename -uid "54F4BD13-0845-FD1F-CA8B-BE9B514E642A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_heel_lift_tip_translateZ";
	rename -uid "E064B071-2E4A-27E8-8000-A0A3C9A32A0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateX";
	rename -uid "BF5C1465-534A-DBFF-46F1-D48102A52CA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateY";
	rename -uid "3B610F92-B549-3121-0CF7-F080675C1F14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_heel_lift_tip_rotateZ";
	rename -uid "A210AA43-F249-DBE5-82A5-558776769D05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateX";
	rename -uid "BA7E3E55-A04F-A649-C749-2CBF48442002";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 7 0 8 0 12 0 16 0 17 0 29 0 60 0
		 70 0 71 0 99 0 100 0 103 0 106 0;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateY";
	rename -uid "673EC940-1D41-12A3-F456-1891F329CE5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 7 0 8 0 12 0 16 0 17 0 29 0 60 0
		 70 0 71 0 99 0 100 0 103 0 106 0;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_footBall_ctrl_translateZ";
	rename -uid "FFE136BD-5A47-EEE7-B1C3-589DD6A9B33A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 7 0 8 0 12 0 16 0 17 0 29 0 60 0
		 70 0 71 0 99 0 100 0 103 0 106 0;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateX";
	rename -uid "08D22FC5-7C4D-CFA3-1C89-E6B0398A4DF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 7 -23.363516697864718 8 -23.288
		 12 7.5170000000000012 16 0.78176800000000379 17 -0.79862825788753078 29 -0.79862825788753078
		 60 -0.79862825788753078 70 -0.79862825788753078 71 -35.292378897867906 99 -35.292378897867906
		 100 -0.79862825788753078 103 -12.615513413389658 106 9.0322692673125573;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 0.99552745737720694 1 0.82052179946439197 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0.094472650053195009 0 -0.57161523475473963 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 0.99552745737720694 1 0.82052179946439197 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0.094472650053195009 0 -0.57161523475473963 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateY";
	rename -uid "DF42CEE6-4947-C9F8-ABA8-47B69E305953";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 7 0 8 0 12 0 16 0 17 0 29 0 60 0
		 70 0 71 0 99 0 100 0 103 0 106 0;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_footBall_ctrl_rotateZ";
	rename -uid "2A3DF869-954C-4D61-EFE6-A596C1537DC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 7 0 8 0 12 0 16 0 17 0 29 0 60 0
		 70 0 71 0 99 0 100 0 103 0 106 0;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 18 18 
		1 1 1 1 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateX";
	rename -uid "91BF24A5-B844-2320-FF7F-C98A2F2B884C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateY";
	rename -uid "DF150447-2849-A73B-0AB5-15854AAB315A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_heel_lift_tip_translateZ";
	rename -uid "A8B7C908-5143-3788-F362-68A6BB646A49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateX";
	rename -uid "75D65EF6-EC40-9179-CEF2-05935AEFD9D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateY";
	rename -uid "B44308B4-7A46-C0C6-F1F8-67BE4ACE8F38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_heel_lift_tip_rotateZ";
	rename -uid "7FED6F16-D542-AE7B-D6CF-EC8CEA51BAC2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateX";
	rename -uid "3AE45BBE-5B44-4DBD-8311-24BAD0C0577B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateY";
	rename -uid "1F384FFA-CD48-A908-A7F7-47A97B41F355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky02_ctrl_translateZ";
	rename -uid "F8A61B2D-F641-94A6-4224-B490C2562DA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateX";
	rename -uid "A2157C9E-5E4E-5351-220B-98822DF4D567";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 90 5 90 16 90 17 90 30 90 60 90 70 90
		 100 90 103 51.378832623017679 106 51.378832623017679 109 51.378832623017679 112 51.378832623017679
		 125 30.209671112374735;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateY";
	rename -uid "E64594AA-A54D-DC9B-AC6C-D19765EE066C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky02_ctrl_rotateZ";
	rename -uid "BE2FE068-214D-D5B9-F635-C19ADFE5A648";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateX";
	rename -uid "0D9F1BD7-D640-FC2C-89A1-229A21614DCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -4.9400951578258161e-05 5 -4.9400951578258161e-05
		 16 -4.9400951578258161e-05 17 -4.9400951578258161e-05 29 -4.9400951578258161e-05
		 60 -4.9400951578258161e-05 70 -4.9400951578258161e-05 100 -4.9400951578258161e-05
		 103 -4.9400951578258161e-05 106 -4.9400951578258161e-05 109 -4.9400951578258161e-05
		 112 -4.9400951578258161e-05;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateY";
	rename -uid "5AFB31A7-0243-78AC-FD71-FB8A74C708DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.7589953799286646e-05 5 1.7589953799286646e-05
		 16 1.7589953799286646e-05 17 1.7589953799286646e-05 29 1.7589953799286646e-05 60 1.7589953799286646e-05
		 70 1.7589953799286646e-05 100 1.7589953799286646e-05 103 1.7589953799286646e-05 106 1.7589953799286646e-05
		 109 1.7589953799286646e-05 112 1.7589953799286646e-05;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb01_ctrl_translateZ";
	rename -uid "549987DC-5446-C129-540F-958826B528B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateX";
	rename -uid "858C12CA-6348-0049-846B-61B3F4F019BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateY";
	rename -uid "0CBF3D1E-1D4A-9C87-67CE-78AD4A08345C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb01_ctrl_rotateZ";
	rename -uid "FC329CD9-0947-334A-C8AF-CC8B2B8DB6B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateX";
	rename -uid "13ADC484-DA49-761A-0C4F-DA91CF547965";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateY";
	rename -uid "57F2C947-1E42-C270-701F-9D9E934BDE2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring02_ctrl_translateZ";
	rename -uid "3BF0E392-D146-FCCD-3E46-DB9A306922ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateX";
	rename -uid "53174F1E-B846-AE54-1898-83B6FB91561D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 90 5 90 16 90 17 90 30 90 60 90 70 90
		 100 90 103 40.677044665661619 106 40.677044665661619 109 40.677044665661619 112 66.353081669317163
		 125 47.590692450746907;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateY";
	rename -uid "72F57F95-AF4C-B7C1-7413-A89BE5F1749E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring02_ctrl_rotateZ";
	rename -uid "59F5212C-D94C-EEB3-4D53-C6864106D52F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateX";
	rename -uid "C64485D6-604B-0700-C718-2392ED880823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 -0.00070587717784221019
		 60 -0.00070587717784221019 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateY";
	rename -uid "A4665B45-B643-04B5-7DDB-B19AFADDF594";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0.042528391679943385
		 60 0.042528391679943385 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_footSec_reshape02_translateZ";
	rename -uid "25EE42D1-7D40-CF2C-48AE-56AA15622BF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0.21765423231135544
		 60 0.21765423231135544 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateX";
	rename -uid "9626EE71-EF40-25A3-A410-A3867BBE6F31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 5.1505320529851595
		 60 5.1505320529851595 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateY";
	rename -uid "B466BAAC-9442-018D-0A5F-7DA302E35C72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_footSec_reshape02_rotateZ";
	rename -uid "7D00D1B6-2B4D-D1FA-13E5-178C3CDC55D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateX";
	rename -uid "80FDC9EC-C44A-5993-7824-EA9A594AD1EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -3.0057911164751421e-12 5 -3.0057911164751421e-12
		 16 -3.0057911164751421e-12 17 -3.0057911164751421e-12 26 0 29 0 60 0 61 -8.4162151261303462e-14
		 70 -3.0057911164751421e-12 71 -3.0057911164751421e-12 99 -3.0057911164751421e-12
		 100 -3.0057911164751421e-12 103 -3.0057911164751421e-12 106 -3.0057911164751421e-12
		 109 -3.0057911164751421e-12 111 -3.0057911164751421e-12 112 -3.0057911164751421e-12;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateY";
	rename -uid "78426C00-3741-0B87-1B31-E0A9A5AF0A44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 16 0 17 0 26 0 29 0 60 0 61 0 70 0
		 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Engine_ctrl_translateZ";
	rename -uid "4C7F315D-7E42-C5A8-1025-0193356614D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 16 0 17 0 26 0 29 0 60 0 61 0 70 0
		 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateX";
	rename -uid "2E4D65FD-474B-E615-D02E-C99B6B066BC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 16 0 17 0 26 0 29 0 60 0 61 0 70 0
		 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateY";
	rename -uid "52A598CF-D34C-85B1-3C50-5482EA4E117F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 16 0 17 0 26 0 29 0 60 0 61 0 70 0
		 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Engine_ctrl_rotateZ";
	rename -uid "4C302CD5-EB4A-8749-B9D4-CDA026165D27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 16 0 17 0 26 0 29 0 60 0 61 0 70 0
		 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleX";
	rename -uid "AD0D7709-EB40-0623-EA0E-D885472BF3BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 16 1 17 1 26 1 29 1 60 1 61 1 70 1
		 71 1 99 1 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleY";
	rename -uid "CA977EED-4643-EAFD-8E3F-BA8BCF13ADC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 16 1 17 1 26 1 29 1 60 1 61 1 70 1
		 71 1 99 1 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_scaleZ";
	rename -uid "2CF51E32-0944-D1BF-E949-97BBECB6B8DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 16 1 17 1 26 1 29 1 60 1 61 1 70 1
		 71 1 99 1 100 1 103 1 106 1 109 1 111 1 112 1;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_L_Engine_ctrl_on_off";
	rename -uid "E0AB2C43-3843-4A3B-D3DD-C68757B93F9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 16 0 17 0 26 0 29 1 60 1 61 0 70 0
		 71 0 99 0 100 0 103 0 106 1 109 1 111 1 112 1;
	setAttr -s 17 ".kit[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kot[1:16]"  1 18 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18;
	setAttr -s 17 ".kix[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateX";
	rename -uid "49F73C7D-874D-8FC1-571E-3CA4D9FE9797";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateY";
	rename -uid "D9943059-2548-DB78-4248-FC8C62D7862E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Thumb03_ctrl_translateZ";
	rename -uid "CFD7E492-B342-3026-59D1-679866C9EABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateX";
	rename -uid "587BC906-2C4B-6264-525C-C79EF6784977";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 81.601741032957364 5 81.601741032957364
		 16 81.601741032957364 17 90 29 90 60 90 70 90 100 90 103 0 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateY";
	rename -uid "70A86750-FA4E-09AD-7D78-C58D078C3297";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Thumb03_ctrl_rotateZ";
	rename -uid "3E6A800D-A94E-0BF8-28FB-48B337AD5CBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateX";
	rename -uid "58EFAD5F-4A42-D9A8-9F56-9C9E8CF46D8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 5 0 8 0 12 0 16 0 17 0 18 0 19 0
		 20 0 21 0 23 0 26 0 29 0 60 0 62 0 63 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 26 ".kit[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kot[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kix[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".kiy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 26 ".kox[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".koy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateY";
	rename -uid "18D090A8-0A49-1382-375E-99A7D20EE4CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 5 0 8 0 12 0 16 0 17 0 18 0 19 0
		 20 0 21 0 23 0 26 0 29 0 60 0 62 0 63 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 26 ".kit[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kot[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kix[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".kiy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 26 ".kox[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".koy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_footBall_ctrl_translateZ";
	rename -uid "576FF11B-3A49-E29E-75AC-C4A7EA651FBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 5 0 8 0 12 0 16 0 17 0 18 0 19 0
		 20 0 21 0 23 0 26 0 29 0 60 0 62 0 63 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 26 ".kit[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kot[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kix[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".kiy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 26 ".kox[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".koy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateX";
	rename -uid "BEF2B60D-9146-5800-8DED-92B967F9D913";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -23.287855518990536 1 0 5 7.5173423556888777
		 8 0 12 0 16 -20.865918545015514 17 0 18 0.43914066360555326 19 0.85388413973108912
		 20 -13.972454492565431 21 -51.494748903281078 23 -51.494748903281078 26 -51.494748903281078
		 29 0 60 0 62 -16.881094105412153 63 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 26 ".kit[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kot[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kix[2:25]"  1 1 1 1 1 0.98438228972463016 1 0.090831620295926604 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".kiy[2:25]"  0 0 0 0 0 0.17604405038652748 0 -0.99586626449258575 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 26 ".kox[2:25]"  1 1 1 1 1 0.98438228972463016 1 0.090831620295926604 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 26 ".koy[2:25]"  0 0 0 0 0 0.17604405038652748 0 -0.99586626449258575 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateY";
	rename -uid "B8FC2299-0A48-7184-DE1B-A6A3547DD24B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 5 0 8 0 12 0 16 0 17 0 18 0 19 0
		 20 0 21 0 23 0 26 0 29 0 60 0 62 0 63 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 26 ".kit[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kot[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kix[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".kiy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 26 ".kox[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".koy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_footBall_ctrl_rotateZ";
	rename -uid "F0C5FCA2-5A45-1FC3-8570-69AF65B48DB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 5 0 8 0 12 0 16 0 17 0 18 0 19 0
		 20 0 21 0 23 0 26 0 29 0 60 0 62 0 63 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 26 ".kit[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kot[2:25]"  1 18 18 18 1 18 18 18 
		1 18 1 18 18 18 18 1 1 1 1 18 18 18 18 18;
	setAttr -s 26 ".kix[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".kiy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 26 ".kox[2:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 26 ".koy[2:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateX";
	rename -uid "DBCA7C70-454C-CED7-CD0E-99B7961A9582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateY";
	rename -uid "F5EA7DFA-4D40-2437-5793-D4B3BA9C3E82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Ring01_ctrl_translateZ";
	rename -uid "FF900401-BD40-0355-3CF7-13AB6F9E6755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateX";
	rename -uid "04A8F494-D04A-CD41-BA65-56ACC7E0BB97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 90 5 90 16 90 17 90 30 90 60 90 70 90
		 100 90 103 15.674881829021942 106 15.674881829021942 109 15.674881829021942 112 36.214270820089361
		 125 10.165905060019467;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateY";
	rename -uid "2009CFC5-9D40-B37D-F4F1-92BF84808E4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Ring01_ctrl_rotateZ";
	rename -uid "D20C83D9-B140-8739-6D1B-31AFE0BA0A71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateX";
	rename -uid "9DC11A4B-D349-CB68-9F42-3FA1530BDB94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateY";
	rename -uid "E38EC0E1-304D-E65D-56BA-BBA380BC475C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Middle01_ctrl_translateZ";
	rename -uid "622802A8-374F-379E-1E0A-7C9165D7131E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateX";
	rename -uid "49BDBCEB-D34A-0DD4-9E35-CAAD0D41F01C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 90 5 90 16 90 17 90 30 90 60 90 70 90
		 100 90 103 -0.87358262320604374 106 -0.87358262320604374 109 -0.87358262320604374
		 112 29.297481799207763 125 19.042666075049596;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateY";
	rename -uid "97E658EF-A245-EA64-75DA-4DAB0612CEF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Middle01_ctrl_rotateZ";
	rename -uid "275E1DC6-A94C-F40E-0DC9-07B24DBEF07E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateX";
	rename -uid "081F0FC9-BC45-D773-65BD-E69B4D6482F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateY";
	rename -uid "37EB5728-274E-57B5-D6E1-5FB4290D913A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Pinky01_ctrl_translateZ";
	rename -uid "A7F9FDCE-BC47-118C-B6AE-10B79F800E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateX";
	rename -uid "BDB76647-A44F-B558-F0D9-84B4704A8118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 90 5 90 16 90 17 90 29 90 60 90 70 90
		 100 90 103 28.034601452256791 106 28.034601452256791 109 28.034601452256791 112 47.992197733871272
		 125 13.593290763005625;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateY";
	rename -uid "D67B9C0F-9047-4D29-B19D-64B8120EDE74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Pinky01_ctrl_rotateZ";
	rename -uid "61834E25-6E43-6BA0-3312-6485E965558D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0 125 0;
	setAttr -s 13 ".kit[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 1 18 18 1 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateX";
	rename -uid "062B8425-0847-B0C3-36CD-F7937759612B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateY";
	rename -uid "749C6AEF-0744-0C4D-BF61-AC87390D87FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_foot_tip_translateZ";
	rename -uid "6C711F5E-9544-3C21-D960-6B8F4A4837A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateX";
	rename -uid "6B28D597-AA4D-86BE-E135-05BC3D0EFB96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateY";
	rename -uid "691E1DEF-CE42-D93C-CE3D-8794553B8194";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_foot_tip_rotateZ";
	rename -uid "765A312C-3C4E-FB5C-5F3B-E0A5A17212C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 15 ".kit[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 1 18 18 1 1 1 
		1 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateX";
	rename -uid "6FAC02ED-2447-AA8E-9B2A-7C8E25F2EA87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 1 0 4 -2.4707193796061681e-16 8 -5.0164175152675043e-16
		 9 -8.1588225068840622e-16 10 -1.2603953779657941e-15 11 -6.4516727267159104e-16 12 -6.5801338437465053e-16
		 13 -4.4217221532344401e-16 16 -2.0168705082864914e-16 17 0 19 0 21 0 23 0 26 0 29 0
		 30 0 60 0 61 0 62 0 63 0 70 0 71 0 99 0 100 0 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 30 ".kit[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kix[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".koy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateY";
	rename -uid "72682164-9744-E9EE-3EF6-2AA1FB68C6BF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0.9903780978050909 1 2.390463891652153
		 4 4.565 8 3.7595231424838484 9 1.8784665277124644 10 0.53445811936678611 11 0.11069018237402095
		 12 0 13 0 16 0.64290467455925515 17 0 19 0 21 0.28371552041693016 23 0.28371552041693016
		 26 0.28371552041693016 29 3.0288164890759059 30 3.0288164890759059 60 3.0288164890759059
		 61 2.0233894241793844 62 0.79533359984369789 63 0 70 0 71 0 99 0 100 0 103 0 106 0
		 109 0 111 0 112 0;
	setAttr -s 30 ".kit[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kix[2:29]"  1 0.14023122801877902 0.032540179245085767 
		0.047087911305432099 0.15405970770691788 1 1 0.12526804723326851 1 1 1 1 1 1 1 1 
		0.03728499099624108 0.041150134955512042 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[2:29]"  0 -0.9901187821106846 -0.99947042814417353 
		-0.99889074908565034 -0.98806153981483313 0 0 0.99212293408748686 0 0 0 0 0 0 0 0 
		-0.999304672983375 -0.99915297447044782 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[2:29]"  1 0.14023122801877899 0.032540179245085767 
		0.047087911305432099 0.15405970770691788 1 1 0.12526804723326851 1 1 1 1 1 1 1 1 
		0.03728499099624108 0.041150134955512035 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".koy[2:29]"  0 -0.99011878211068449 -0.99947042814417353 
		-0.99889074908565045 -0.98806153981483313 0 0 0.99212293408748686 0 0 0 0 0 0 0 0 
		-0.999304672983375 -0.9991529744704476 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_R_IK_Foot_ctrl_translateZ";
	rename -uid "33A5FE63-AE4C-69FD-3986-AB85022DC3DE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 -4.0086947919177449 1 -3.733335564915087
		 4 -1.521 8 2.1896163452630559 9 5.3972042444197061 10 4.1356858773171776 11 3.2343719868909813
		 12 1.5671391808838011 13 -0.240655739806799 16 -3.8093736511859424 17 0 19 -0.58258202441718798
		 21 -3.9938064098417296 23 -3.9938064098417296 26 -3.9938064098417296 29 -1.5703633008005697
		 30 0.037030855189713829 60 0.037030855189713829 61 0.035993991244401849 62 0.032301877830671837
		 63 0 70 0 71 2.7634652871412575 99 2.7634652871412575 100 0 103 0 106 0 109 0 111 0
		 112 0;
	setAttr -s 30 ".kit[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kix[2:29]"  0.053697856301097906 0.044920931497439497 
		1 0.038501157917325023 0.032426706428515785 0.024018226505540623 0.015666704864612007 
		0.069406645141683918 1 0.10368512415801678 1 1 1 0.04131260266408994 1 1 0.99839372614487787 
		0.96643543242508712 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[2:29]"  0.99855722932071689 0.99899054545746435 
		0 -0.9992585555495761 -0.99947411607814973 -0.99971152078763625 -0.99987726964797297 
		-0.99758845102084881 0 -0.9946101723933537 0 0 0 0.99914627000310574 0 0 -0.056656575916184289 
		-0.25690962409636348 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[2:29]"  0.053697856301097892 0.044920931497439504 
		1 0.038501157917325016 0.032426706428515785 0.024018226505540623 0.015666704864612007 
		0.069406645141683904 1 0.10368512415801678 1 1 1 0.041312602664089933 1 1 0.99839372614487809 
		0.96643543242508712 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 30 ".koy[2:29]"  0.99855722932071678 0.99899054545746435 
		0 -0.99925855554957599 -0.99947411607814973 -0.99971152078763625 -0.99987726964797297 
		-0.99758845102084881 0 -0.9946101723933537 0 0 0 0.99914627000310563 0 0 -0.056656575916184303 
		-0.25690962409636348 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateX";
	rename -uid "498CF355-D644-B643-5A28-D382ADE8AF3F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 53.279047671798054 1 73.278472092018248
		 4 80.413 8 51.240113930479019 9 -14.297646653275942 10 -13.964320549677669 11 -6.4850153029505408
		 12 0.49430078837917812 13 0 16 39.300117187500014 17 0 19 0 21 56.119520331084146
		 23 56.119520331084146 26 56.119520331084146 29 56.812417542850383 30 42.154566995364512
		 60 42.154566995364512 61 40.974239119494314 62 36.771272662030533 63 0 70 0 71 0
		 99 0 100 0 103 0 106 -20.844346706005126 109 -51.434690107788995 111 -51.434690107788995
		 112 -51.434690107788995;
	setAttr -s 30 ".kit[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kix[2:29]"  1 0.26310032636666891 1 0.92235381024685803 
		0.31357308257730515 1 1 0.1332256367971992 1 1 1 1 1 1 1 1 0.6635481210821933 0.18603134908880345 
		1 1 1 1 1 1 0.26827899715216108 1 1 1;
	setAttr -s 30 ".kiy[2:29]"  0 -0.96476847910042762 0 0.38634628084543921 
		0.94956406939340676 0 0 0.99108573276986522 0 0 0 0 0 0 0 0 -0.74813360505212645 
		-0.98254380928088891 0 0 0 0 0 0 -0.96334125816713079 0 0 0;
	setAttr -s 30 ".kox[2:29]"  1 0.26310032636666886 1 0.92235381024685803 
		0.31357308257730515 1 1 0.1332256367971992 1 1 1 1 1 1 1 1 0.6635481210821933 0.18603134908880342 
		1 1 1 1 1 1 0.26827899715216108 1 1 1;
	setAttr -s 30 ".koy[2:29]"  0 -0.96476847910042751 0 0.38634628084543921 
		0.94956406939340665 0 0 0.99108573276986522 0 0 0 0 0 0 0 0 -0.74813360505212645 
		-0.98254380928088891 0 0 0 0 0 0 -0.96334125816713079 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateY";
	rename -uid "7EF72738-7B41-166E-F8A1-20967CF051C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 1 0 4 0 8 0 9 0 10 0 11 0 12 0 13 0
		 16 0 17 0 19 0 21 0 23 0 26 0 29 0 30 0 60 0 61 0 62 0 63 0 70 0 71 0 99 0 100 0
		 103 0 106 0 109 0.14485817084643091 111 0.14485817084643091 112 0.14485817084643091;
	setAttr -s 30 ".kit[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kix[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".koy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_R_IK_Foot_ctrl_rotateZ";
	rename -uid "6729487F-F84B-F63B-728B-05AACF29DF6B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 1 0 4 0 8 0 9 0 10 0 11 0 12 0 13 0
		 16 0 17 0 19 0 21 0 23 0 26 0 29 0 30 0 60 0 61 0 62 0 63 0 70 0 71 0 99 0 100 0
		 103 0 106 0 109 91.85637732410153 111 91.85637732410153 112 91.85637732410153;
	setAttr -s 30 ".kit[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kix[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".koy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_IK_Foot_ctrl_Heel_Peel";
	rename -uid "7489F091-8042-2405-82C4-0C9449910942";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 1 0 4 0 8 0 9 0 10 0 11 0 12 0 13 0
		 16 0 17 0 19 0 21 0 23 0 26 0 29 0 30 0 60 0 61 0 62 0 63 0 70 0 71 0 99 0 100 0
		 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 30 ".kit[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kix[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".koy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTU -n "PALbot_R_IK_Foot_ctrl_follow_hip";
	rename -uid "C026B96B-8240-A10F-8A7A-FEBA8EE68177";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 1 0 4 0 8 0 9 0 10 0 11 0 12 0 13 0
		 16 0 17 0 19 0 21 0 23 0 26 0 29 0 30 0 60 0 61 0 62 0 63 0 70 0 71 0 99 0 100 0
		 103 0 106 0 109 0 111 0 112 0;
	setAttr -s 30 ".kit[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kot[0:29]"  18 18 1 1 1 1 1 1 
		1 1 1 1 1 18 1 18 18 18 18 18 18 1 1 1 1 
		18 18 18 18 18;
	setAttr -s 30 ".kix[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 30 ".kox[2:29]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 30 ".koy[2:29]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateX";
	rename -uid "F7222B75-7548-A526-1414-4691DA9C030B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateY";
	rename -uid "E4F0A3B1-474F-ECB7-1233-DCB4713F10D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_Index01_ctrl_translateZ";
	rename -uid "DE2514B4-DF41-852F-FCC4-F7BF46B9101D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateX";
	rename -uid "7F3F3AD9-7347-34A6-87D0-A38FD9DCE051";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 90 5 90 16 90 17 90 30 90 60 90 70 90
		 100 90 103 -27.545768149512764 106 -27.545768149512764 109 -27.545768149512764 112 26.939253265658241;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateY";
	rename -uid "AD52D7AD-4644-BDC4-F8BE-0893F247E3D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_Index01_ctrl_rotateZ";
	rename -uid "7DF28748-B249-B604-943D-5B80907D3C16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 30 0 60 0 70 0 100 0 103 0
		 106 0 109 0 112 0;
	setAttr -s 12 ".kit[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 1 18 18 1 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateX";
	rename -uid "3E09432D-4542-9DF7-EAE3-209081DD1DAD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateY";
	rename -uid "6F1060EF-F54F-0556-0EEB-639984D332D9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "PALbot_L_IK_foot_tip_translateZ";
	rename -uid "D65D0809-324F-3542-A5E0-F08028E8FE10";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateX";
	rename -uid "8FF27B9A-9B4E-BA26-D725-D2A215540766";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateY";
	rename -uid "ED5C9C9F-4144-950B-7DB3-3D821CB46EC8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_L_IK_foot_tip_rotateZ";
	rename -uid "A931AA88-A24B-1965-050A-9DA0DFB7495A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 16 0 17 0 29 0 60 0 70 0 71 0 99 0
		 100 0 103 0 106 0;
	setAttr -s 12 ".kit[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kot[0:11]"  18 1 18 1 18 18 1 1 
		1 1 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "PALbot_Left_Forearm_lightbeam02_rotateX";
	rename -uid "F2354332-C24B-7D7A-0297-2787DE48A47F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0 99 0;
createNode animCurveTA -n "PALbot_Left_Forearm_lightbeam02_rotateY";
	rename -uid "46196975-3F4F-1BE2-389A-E381462A7702";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0 99 0;
createNode animCurveTA -n "PALbot_Left_Forearm_lightbeam02_rotateZ";
	rename -uid "D425A231-0846-FFE3-BF17-099D662D63DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0 99 0;
createNode animCurveTU -n "PALbot_Left_Forearm_lightbeam02_visibility";
	rename -uid "B87F3CD1-CB43-3BE5-9A93-43899EFE5210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 1 99 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "PALbot_Left_Forearm_lightbeam02_translateX";
	rename -uid "4E5B46D1-6348-4D3F-C221-459B4C4B63F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 -0.14567890312339404 99 -0.14567890312339404;
createNode animCurveTL -n "PALbot_Left_Forearm_lightbeam02_translateY";
	rename -uid "32FA0C7E-E24F-DE49-BD79-68B1A29FCE04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 3.9138410996295283 99 3.9138410996295283;
createNode animCurveTL -n "PALbot_Left_Forearm_lightbeam02_translateZ";
	rename -uid "E7A256E1-034D-4ACD-5FFA-E4BCF8627C86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0 99 0;
createNode animCurveTU -n "PALbot_Left_Forearm_lightbeam02_scaleX";
	rename -uid "8844222B-C340-C2C0-C7DD-80B37954A5EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 1.0451748250922615 99 1.0451748250922615;
createNode animCurveTU -n "PALbot_Left_Forearm_lightbeam02_scaleY";
	rename -uid "BDD4E4FA-A645-E038-D777-148EC569102E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0.57315192782223734 99 0.57315192782223734;
createNode animCurveTU -n "PALbot_Left_Forearm_lightbeam02_scaleZ";
	rename -uid "2D651D3D-5C40-BE67-9E09-2D8816BD0B36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 1.0451748250922615 99 1.0451748250922615;
createNode animCurveTA -n "PALbot_Left_Forearm_lightbeam01_rotateX";
	rename -uid "2CBC5FD5-8247-450C-C796-83873A788CC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0 99 0;
createNode animCurveTA -n "PALbot_Left_Forearm_lightbeam01_rotateY";
	rename -uid "CFE2383A-6E46-1405-92D4-49809E9123C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0 99 0;
createNode animCurveTA -n "PALbot_Left_Forearm_lightbeam01_rotateZ";
	rename -uid "D02E9E0F-0A49-0784-CC2D-34A0AA769DAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0 99 0;
createNode animCurveTU -n "PALbot_Left_Forearm_lightbeam01_visibility";
	rename -uid "451B5AF1-7F42-526F-0A6C-FFAB56312E90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 1 99 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "PALbot_Left_Forearm_lightbeam01_translateX";
	rename -uid "7C4A9230-DF4F-A9E1-F4B6-F595D65B2A0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0.19015817911204902 99 0.19015817911204902;
createNode animCurveTL -n "PALbot_Left_Forearm_lightbeam01_translateY";
	rename -uid "9C5659E0-AD4A-E8BC-6514-C58D1994DD6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 3.9369896181331603 99 3.9369896181331603;
createNode animCurveTL -n "PALbot_Left_Forearm_lightbeam01_translateZ";
	rename -uid "A9E0DC5C-5E4F-6A5B-FD26-F994646CC278";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0 99 0;
createNode animCurveTU -n "PALbot_Left_Forearm_lightbeam01_scaleX";
	rename -uid "A15895EC-DF48-98B6-0AF1-17AB1104A6EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0.94103221333309006 99 0.94103221333309006;
createNode animCurveTU -n "PALbot_Left_Forearm_lightbeam01_scaleY";
	rename -uid "429E9E88-A54C-2984-7752-49822ADC7334";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0.57315192782223734 99 0.57315192782223734;
createNode animCurveTU -n "PALbot_Left_Forearm_lightbeam01_scaleZ";
	rename -uid "CBDB1BB2-2544-0692-ED7B-15A3C0B1A3DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  71 0.94103221333309006 99 0.94103221333309006;
createNode animCurveTA -n "PALbot_L_FK_foot_rotateX";
	rename -uid "0867A9D5-4A4A-3507-E904-B296D37F3FFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0 111 0 112 0;
createNode animCurveTA -n "PALbot_L_FK_foot_rotateY";
	rename -uid "13ADACDD-904C-8E9E-C5A6-E5A83428DF10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 -14.596364839386043 111 -14.596364839386043
		 112 -14.596364839386043;
createNode animCurveTA -n "PALbot_L_FK_foot_rotateZ";
	rename -uid "588EFECB-314E-4382-A117-6698C1B13F92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0 111 0 112 0;
createNode animCurveTL -n "PALbot_L_FK_foot_translateX";
	rename -uid "5F902F6C-544E-1E7C-5E1D-4AB65129518D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0.0072474855054440769 111 0.0072474855054440769
		 112 0.0072474855054440769;
createNode animCurveTL -n "PALbot_L_FK_foot_translateY";
	rename -uid "D6657405-9D4B-3D3F-0C60-B598B3FF6770";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 -0.011382866455385509 111 -0.011382866455385509
		 112 -0.011382866455385509;
createNode animCurveTL -n "PALbot_L_FK_foot_translateZ";
	rename -uid "DB65012A-6544-0D03-315C-C5A1F852F25D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 -0.0012120754693984814 111 -0.0012120754693984814
		 112 -0.0012120754693984814;
createNode animCurveTA -n "PALbot_L_FK_knee01_rotateX";
	rename -uid "2BE3D078-5C4D-B372-6091-64AEA0887D76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 37.062150998347001 111 37.062150998347001
		 112 37.062150998347001 125 28.991609293460542;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_knee01_rotateY";
	rename -uid "469FB99C-C548-EF88-240C-3BB98A05C9D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 0 111 0 112 0 125 -42.697234746811404;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_knee01_rotateZ";
	rename -uid "E7463B4C-7249-E5C6-FC1B-2C885A10A9A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 0 111 0 112 0 125 0.080808475770788271;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_knee01_translateX";
	rename -uid "72FEE6A1-E740-E715-3A9C-D6B41F18B106";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 0 111 0 112 0 125 0;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_knee01_translateY";
	rename -uid "979FF461-FD48-D1B2-F9EB-F895D1C5B130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 0 111 0 112 0 125 0;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "PALbot_L_FK_knee01_translateZ";
	rename -uid "7B8B23F2-EC4F-D4D5-F3B4-57883B6CABD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 0 111 0 112 0 125 0;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "PALbot_L_FK_leg_rotateX";
	rename -uid "1ADCEBAE-0841-C10E-BC62-A68E6D0183B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 107.20019898609132 111 107.20019898609132
		 112 107.20019898609132 119 66.43419433326244;
createNode animCurveTA -n "PALbot_L_FK_leg_rotateY";
	rename -uid "DC455DA3-8B43-06E0-AF91-7B8074ED7CC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 66.495528655754939 111 66.495528655754939
		 112 66.495528655754939 119 43.204448749677013;
createNode animCurveTA -n "PALbot_L_FK_leg_rotateZ";
	rename -uid "431170B2-7C41-A32B-5A0A-86A301983119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 106.15623684493536 111 106.15623684493536
		 112 106.15623684493536 119 63.665794819414288;
createNode animCurveTL -n "PALbot_L_FK_leg_translateX";
	rename -uid "8335F9F5-ED4A-E42C-FBA0-BA92AEAFA6EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 0 111 0 112 0 119 0;
createNode animCurveTL -n "PALbot_L_FK_leg_translateY";
	rename -uid "AA74B5F6-E944-B178-D717-3D9BF8E33ABA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 0 111 0 112 0 119 0;
createNode animCurveTL -n "PALbot_L_FK_leg_translateZ";
	rename -uid "ED902C24-474E-EA0D-CA58-12ACD225EE6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  109 0 111 0 112 0 119 0;
createNode animCurveTL -n "PALbot_L_FK_knee02_translateX";
	rename -uid "2459FA79-5844-2E15-1093-31A263003C8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  108 -0.82860109098995405 109 -2.1927079862509706
		 111 -1.6444907772222388 112 -1.4526147540621797 115 4.7531405083132121 119 13.081776842311671
		 124 26.025228005816444;
createNode animCurveTL -n "PALbot_L_FK_knee02_translateY";
	rename -uid "58472D2D-BD4E-BDE3-33F1-DCAA04EBE6D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  108 3.1023724194739826 109 3.2328736862789751
		 111 5.2969924524437602 112 5.901982880476953 115 15.596899193146426 119 16.462085116904387
		 124 10.857330979216169;
createNode animCurveTL -n "PALbot_L_FK_knee02_translateZ";
	rename -uid "37C5F51B-6446-FC27-1320-659C506A12AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  108 5.2393649701668767 109 9.8776659562919065
		 111 20.723931996209785 112 23.174955798087129 115 36.904144154791233 119 36.79215428695035
		 124 37.05070566612001;
createNode animCurveTA -n "PALbot_L_FK_knee02_rotateX";
	rename -uid "5AAA8119-6740-04A5-86F2-B8B64972691A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  108 28.090906443342202 109 61.999560947297098
		 111 66.328992817885776 112 66.495509428293033 115 66.495509428293033 119 50.885864592560246
		 124 29.06317033207835;
createNode animCurveTA -n "PALbot_L_FK_knee02_rotateY";
	rename -uid "1882EC75-2D44-09AD-2C1A-F5B4BA230DB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  108 0 109 0 111 6.2745093291186551 112 8.4705875943102225
		 115 8.4705875943102225 119 23.858349915319227 124 45.370846581203729;
createNode animCurveTA -n "PALbot_L_FK_knee02_rotateZ";
	rename -uid "DFF5FA3F-7B40-2646-88F4-5088080A3E79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  108 0 109 0 111 -12.001304480830566 112 -16.20176104912133
		 115 -16.20176104912133 119 -31.886243901268774 124 -53.813563678119856;
createNode animCurveTL -n "PALbot_L_FK_ankle_translateX";
	rename -uid "300ABEB6-014C-B385-B84C-6B8B675D01E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0 111 0 112 0;
createNode animCurveTL -n "PALbot_L_FK_ankle_translateY";
	rename -uid "AA4E638F-324A-988B-9F43-AA915C583139";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0 111 0 112 0;
createNode animCurveTL -n "PALbot_L_FK_ankle_translateZ";
	rename -uid "ADFB5E2F-A746-EEFC-2EFB-A190EB4E0C5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0 111 0 112 0;
createNode animCurveTA -n "PALbot_L_FK_ankle_rotateX";
	rename -uid "FA8AF28E-614A-0DB5-3308-07B24E9A781D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0 111 0 112 0;
createNode animCurveTA -n "PALbot_L_FK_ankle_rotateY";
	rename -uid "9647CE78-7E45-C692-BC62-8FB5C4A90690";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0 111 0 112 0;
createNode animCurveTA -n "PALbot_L_FK_ankle_rotateZ";
	rename -uid "47FA2DB1-9948-2E84-9B90-D2967AFC684F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  109 0 111 0 112 0;
createNode animCurveTA -n "PALbot_R_arm_IK_ctrl_rotateX";
	rename -uid "1E83F6C9-1E4A-430E-0B6F-CBB7064AE857";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 0;
createNode animCurveTA -n "PALbot_R_arm_IK_ctrl_rotateY";
	rename -uid "F6AB7852-7B4E-6143-18DD-B79A728060DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 134.83404649682103;
createNode animCurveTA -n "PALbot_R_arm_IK_ctrl_rotateZ";
	rename -uid "E6F65D72-564F-5247-4EFB-E0A9010A27AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 0;
createNode animCurveTL -n "PALbot_R_arm_IK_ctrl_translateX";
	rename -uid "47C4C487-4548-94C1-FEB5-5DAAE33FAFE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 0;
createNode animCurveTL -n "PALbot_R_arm_IK_ctrl_translateY";
	rename -uid "1E4E1675-CF40-61E8-26AE-B484A36CE691";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 0;
createNode animCurveTL -n "PALbot_R_arm_IK_ctrl_translateZ";
	rename -uid "70EC26AF-8447-4F9A-D07C-2A8CD9035985";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 0;
createNode animCurveTU -n "PALbot_R_arm_IK_ctrl_scaleX";
	rename -uid "3A15D595-CD40-A574-B67D-BFAC346E7EAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 1;
createNode animCurveTU -n "PALbot_R_arm_IK_ctrl_scaleY";
	rename -uid "F1680616-F44D-2725-1654-9EA6E78856E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 1;
createNode animCurveTU -n "PALbot_R_arm_IK_ctrl_scaleZ";
	rename -uid "575EE99C-5F45-2EFB-6801-66B414CC1DEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 1;
createNode animCurveTU -n "PALbot_R_arm_IK_ctrl_follow_shoulder";
	rename -uid "730A357C-4242-4A89-6316-14B648847F54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 88;
	setAttr -av -k on ".unw" 88;
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
connectAttr "PALbot_Left_Forearm_lightbeam02_rotateX.o" "PALBotRN.phl[1]";
connectAttr "PALbot_Left_Forearm_lightbeam02_rotateY.o" "PALBotRN.phl[2]";
connectAttr "PALbot_Left_Forearm_lightbeam02_rotateZ.o" "PALBotRN.phl[3]";
connectAttr "PALbot_Left_Forearm_lightbeam02_visibility.o" "PALBotRN.phl[4]";
connectAttr "PALbot_Left_Forearm_lightbeam02_translateX.o" "PALBotRN.phl[5]";
connectAttr "PALbot_Left_Forearm_lightbeam02_translateY.o" "PALBotRN.phl[6]";
connectAttr "PALbot_Left_Forearm_lightbeam02_translateZ.o" "PALBotRN.phl[7]";
connectAttr "PALbot_Left_Forearm_lightbeam02_scaleX.o" "PALBotRN.phl[8]";
connectAttr "PALbot_Left_Forearm_lightbeam02_scaleY.o" "PALBotRN.phl[9]";
connectAttr "PALbot_Left_Forearm_lightbeam02_scaleZ.o" "PALBotRN.phl[10]";
connectAttr "PALbot_Left_Forearm_lightbeam01_rotateX.o" "PALBotRN.phl[11]";
connectAttr "PALbot_Left_Forearm_lightbeam01_rotateY.o" "PALBotRN.phl[12]";
connectAttr "PALbot_Left_Forearm_lightbeam01_rotateZ.o" "PALBotRN.phl[13]";
connectAttr "PALbot_Left_Forearm_lightbeam01_visibility.o" "PALBotRN.phl[14]";
connectAttr "PALbot_Left_Forearm_lightbeam01_translateX.o" "PALBotRN.phl[15]";
connectAttr "PALbot_Left_Forearm_lightbeam01_translateY.o" "PALBotRN.phl[16]";
connectAttr "PALbot_Left_Forearm_lightbeam01_translateZ.o" "PALBotRN.phl[17]";
connectAttr "PALbot_Left_Forearm_lightbeam01_scaleX.o" "PALBotRN.phl[18]";
connectAttr "PALbot_Left_Forearm_lightbeam01_scaleY.o" "PALBotRN.phl[19]";
connectAttr "PALbot_Left_Forearm_lightbeam01_scaleZ.o" "PALBotRN.phl[20]";
connectAttr "PALbot_MAIN_global_scale.o" "PALBotRN.phl[21]";
connectAttr "PALbot_MAIN_Mesh_lock.o" "PALBotRN.phl[22]";
connectAttr "PALbot_MAIN_translateX.o" "PALBotRN.phl[23]";
connectAttr "PALbot_MAIN_translateY.o" "PALBotRN.phl[24]";
connectAttr "PALbot_MAIN_translateZ.o" "PALBotRN.phl[25]";
connectAttr "PALbot_MAIN_rotateX.o" "PALBotRN.phl[26]";
connectAttr "PALbot_MAIN_rotateY.o" "PALBotRN.phl[27]";
connectAttr "PALbot_MAIN_rotateZ.o" "PALBotRN.phl[28]";
connectAttr "PALbot_root_translateX.o" "PALBotRN.phl[29]";
connectAttr "PALbot_root_translateY.o" "PALBotRN.phl[30]";
connectAttr "PALbot_root_translateZ.o" "PALBotRN.phl[31]";
connectAttr "PALbot_root_rotateX.o" "PALBotRN.phl[32]";
connectAttr "PALbot_root_rotateY.o" "PALBotRN.phl[33]";
connectAttr "PALbot_root_rotateZ.o" "PALBotRN.phl[34]";
connectAttr "PALbot_L_knee_aim_ctrl_space_switch.o" "PALBotRN.phl[35]";
connectAttr "PALbot_L_knee_aim_ctrl_translateX.o" "PALBotRN.phl[36]";
connectAttr "PALbot_L_knee_aim_ctrl_translateY.o" "PALBotRN.phl[37]";
connectAttr "PALbot_L_knee_aim_ctrl_translateZ.o" "PALBotRN.phl[38]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateX.o" "PALBotRN.phl[39]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateY.o" "PALBotRN.phl[40]";
connectAttr "PALbot_L_knee_aim_ctrl_rotateZ.o" "PALBotRN.phl[41]";
connectAttr "PALbot_L_FK_leg_translateX.o" "PALBotRN.phl[42]";
connectAttr "PALbot_L_FK_leg_translateY.o" "PALBotRN.phl[43]";
connectAttr "PALbot_L_FK_leg_translateZ.o" "PALBotRN.phl[44]";
connectAttr "PALbot_L_FK_leg_rotateY.o" "PALBotRN.phl[45]";
connectAttr "PALbot_L_FK_leg_rotateX.o" "PALBotRN.phl[46]";
connectAttr "PALbot_L_FK_leg_rotateZ.o" "PALBotRN.phl[47]";
connectAttr "PALbot_L_FK_knee01_translateX.o" "PALBotRN.phl[48]";
connectAttr "PALbot_L_FK_knee01_translateY.o" "PALBotRN.phl[49]";
connectAttr "PALbot_L_FK_knee01_translateZ.o" "PALBotRN.phl[50]";
connectAttr "PALbot_L_FK_knee01_rotateX.o" "PALBotRN.phl[51]";
connectAttr "PALbot_L_FK_knee01_rotateY.o" "PALBotRN.phl[52]";
connectAttr "PALbot_L_FK_knee01_rotateZ.o" "PALBotRN.phl[53]";
connectAttr "PALbot_L_FK_knee02_translateX.o" "PALBotRN.phl[54]";
connectAttr "PALbot_L_FK_knee02_translateY.o" "PALBotRN.phl[55]";
connectAttr "PALbot_L_FK_knee02_translateZ.o" "PALBotRN.phl[56]";
connectAttr "PALbot_L_FK_knee02_rotateX.o" "PALBotRN.phl[57]";
connectAttr "PALbot_L_FK_knee02_rotateY.o" "PALBotRN.phl[58]";
connectAttr "PALbot_L_FK_knee02_rotateZ.o" "PALBotRN.phl[59]";
connectAttr "PALbot_L_FK_foot_translateX.o" "PALBotRN.phl[60]";
connectAttr "PALbot_L_FK_foot_translateY.o" "PALBotRN.phl[61]";
connectAttr "PALbot_L_FK_foot_translateZ.o" "PALBotRN.phl[62]";
connectAttr "PALbot_L_FK_foot_rotateY.o" "PALBotRN.phl[63]";
connectAttr "PALbot_L_FK_foot_rotateX.o" "PALBotRN.phl[64]";
connectAttr "PALbot_L_FK_foot_rotateZ.o" "PALBotRN.phl[65]";
connectAttr "PALbot_L_FK_ankle_translateX.o" "PALBotRN.phl[66]";
connectAttr "PALbot_L_FK_ankle_translateY.o" "PALBotRN.phl[67]";
connectAttr "PALbot_L_FK_ankle_translateZ.o" "PALBotRN.phl[68]";
connectAttr "PALbot_L_FK_ankle_rotateX.o" "PALBotRN.phl[69]";
connectAttr "PALbot_L_FK_ankle_rotateY.o" "PALBotRN.phl[70]";
connectAttr "PALbot_L_FK_ankle_rotateZ.o" "PALBotRN.phl[71]";
connectAttr "PALbot_L_foot_secondary_translateX.o" "PALBotRN.phl[72]";
connectAttr "PALbot_L_foot_secondary_translateY.o" "PALBotRN.phl[73]";
connectAttr "PALbot_L_foot_secondary_translateZ.o" "PALBotRN.phl[74]";
connectAttr "PALbot_L_foot_secondary_rotateX.o" "PALBotRN.phl[75]";
connectAttr "PALbot_L_foot_secondary_rotateY.o" "PALBotRN.phl[76]";
connectAttr "PALbot_L_foot_secondary_rotateZ.o" "PALBotRN.phl[77]";
connectAttr "PALbot_L_footSec_reshape01_translateX.o" "PALBotRN.phl[78]";
connectAttr "PALbot_L_footSec_reshape01_translateY.o" "PALBotRN.phl[79]";
connectAttr "PALbot_L_footSec_reshape01_translateZ.o" "PALBotRN.phl[80]";
connectAttr "PALbot_L_footSec_reshape01_rotateX.o" "PALBotRN.phl[81]";
connectAttr "PALbot_L_footSec_reshape01_rotateY.o" "PALBotRN.phl[82]";
connectAttr "PALbot_L_footSec_reshape01_rotateZ.o" "PALBotRN.phl[83]";
connectAttr "PALbot_L_footSec_reshape02_translateX.o" "PALBotRN.phl[84]";
connectAttr "PALbot_L_footSec_reshape02_translateY.o" "PALBotRN.phl[85]";
connectAttr "PALbot_L_footSec_reshape02_translateZ.o" "PALBotRN.phl[86]";
connectAttr "PALbot_L_footSec_reshape02_rotateX.o" "PALBotRN.phl[87]";
connectAttr "PALbot_L_footSec_reshape02_rotateY.o" "PALBotRN.phl[88]";
connectAttr "PALbot_L_footSec_reshape02_rotateZ.o" "PALBotRN.phl[89]";
connectAttr "PALbot_L_Engine_ctrl_on_off.o" "PALBotRN.phl[90]";
connectAttr "PALbot_L_Engine_ctrl_translateX.o" "PALBotRN.phl[91]";
connectAttr "PALbot_L_Engine_ctrl_translateY.o" "PALBotRN.phl[92]";
connectAttr "PALbot_L_Engine_ctrl_translateZ.o" "PALBotRN.phl[93]";
connectAttr "PALbot_L_Engine_ctrl_rotateX.o" "PALBotRN.phl[94]";
connectAttr "PALbot_L_Engine_ctrl_rotateY.o" "PALBotRN.phl[95]";
connectAttr "PALbot_L_Engine_ctrl_rotateZ.o" "PALBotRN.phl[96]";
connectAttr "PALbot_L_Engine_ctrl_scaleX.o" "PALBotRN.phl[97]";
connectAttr "PALbot_L_Engine_ctrl_scaleY.o" "PALBotRN.phl[98]";
connectAttr "PALbot_L_Engine_ctrl_scaleZ.o" "PALBotRN.phl[99]";
connectAttr "PALbot_L_IK_Foot_ctrl_Heel_Peel.o" "PALBotRN.phl[100]";
connectAttr "PALbot_L_IK_Foot_ctrl_follow_hip.o" "PALBotRN.phl[101]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateX.o" "PALBotRN.phl[102]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateY.o" "PALBotRN.phl[103]";
connectAttr "PALbot_L_IK_Foot_ctrl_translateZ.o" "PALBotRN.phl[104]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateX.o" "PALBotRN.phl[105]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateY.o" "PALBotRN.phl[106]";
connectAttr "PALbot_L_IK_Foot_ctrl_rotateZ.o" "PALBotRN.phl[107]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateX.o" "PALBotRN.phl[108]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateY.o" "PALBotRN.phl[109]";
connectAttr "PALbot_L_IK_heel_lift_tip_translateZ.o" "PALBotRN.phl[110]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateX.o" "PALBotRN.phl[111]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateY.o" "PALBotRN.phl[112]";
connectAttr "PALbot_L_IK_heel_lift_tip_rotateZ.o" "PALBotRN.phl[113]";
connectAttr "PALbot_L_IK_foot_tip_translateX.o" "PALBotRN.phl[114]";
connectAttr "PALbot_L_IK_foot_tip_translateY.o" "PALBotRN.phl[115]";
connectAttr "PALbot_L_IK_foot_tip_translateZ.o" "PALBotRN.phl[116]";
connectAttr "PALbot_L_IK_foot_tip_rotateX.o" "PALBotRN.phl[117]";
connectAttr "PALbot_L_IK_foot_tip_rotateY.o" "PALBotRN.phl[118]";
connectAttr "PALbot_L_IK_foot_tip_rotateZ.o" "PALBotRN.phl[119]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateX.o" "PALBotRN.phl[120]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateY.o" "PALBotRN.phl[121]";
connectAttr "PALbot_L_IK_footBall_ctrl_translateZ.o" "PALBotRN.phl[122]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateX.o" "PALBotRN.phl[123]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateY.o" "PALBotRN.phl[124]";
connectAttr "PALbot_L_IK_footBall_ctrl_rotateZ.o" "PALBotRN.phl[125]";
connectAttr "PALbot_R_HandVIS_Hand_Vis.o" "PALBotRN.phl[126]";
connectAttr "PALbot_R_HandVIS_canon_light.o" "PALBotRN.phl[127]";
connectAttr "PALbot_cog_ctrl_secondary_vis.o" "PALBotRN.phl[128]";
connectAttr "PALbot_cog_ctrl_translateX.o" "PALBotRN.phl[129]";
connectAttr "PALbot_cog_ctrl_translateY.o" "PALBotRN.phl[130]";
connectAttr "PALbot_cog_ctrl_translateZ.o" "PALBotRN.phl[131]";
connectAttr "PALbot_cog_ctrl_rotateX.o" "PALBotRN.phl[132]";
connectAttr "PALbot_cog_ctrl_rotateY.o" "PALBotRN.phl[133]";
connectAttr "PALbot_cog_ctrl_rotateZ.o" "PALBotRN.phl[134]";
connectAttr "PALbot_chestUp_ctrl_secondary_vis.o" "PALBotRN.phl[135]";
connectAttr "PALbot_chestUp_ctrl_rotateY.o" "PALBotRN.phl[136]";
connectAttr "PALbot_chestUp_ctrl_rotateX.o" "PALBotRN.phl[137]";
connectAttr "PALbot_chestUp_ctrl_rotateZ.o" "PALBotRN.phl[138]";
connectAttr "PALbot_chestUp_ctrl_translateX.o" "PALBotRN.phl[139]";
connectAttr "PALbot_chestUp_ctrl_translateY.o" "PALBotRN.phl[140]";
connectAttr "PALbot_chestUp_ctrl_translateZ.o" "PALBotRN.phl[141]";
connectAttr "PALbot_Neck_ctrl_translateX.o" "PALBotRN.phl[142]";
connectAttr "PALbot_Neck_ctrl_translateY.o" "PALBotRN.phl[143]";
connectAttr "PALbot_Neck_ctrl_translateZ.o" "PALBotRN.phl[144]";
connectAttr "PALbot_Neck_ctrl_rotateX.o" "PALBotRN.phl[145]";
connectAttr "PALbot_Neck_ctrl_rotateY.o" "PALBotRN.phl[146]";
connectAttr "PALbot_Neck_ctrl_rotateZ.o" "PALBotRN.phl[147]";
connectAttr "PALbot_head_ctrl_Space_switch.o" "PALBotRN.phl[148]";
connectAttr "PALbot_head_ctrl_FaceLight.o" "PALBotRN.phl[149]";
connectAttr "PALbot_head_ctrl_Led_color.o" "PALBotRN.phl[150]";
connectAttr "PALbot_head_ctrl_Face_Drawing.o" "PALBotRN.phl[151]";
connectAttr "PALbot_head_ctrl_rotateY.o" "PALBotRN.phl[152]";
connectAttr "PALbot_head_ctrl_rotateX.o" "PALBotRN.phl[153]";
connectAttr "PALbot_head_ctrl_rotateZ.o" "PALBotRN.phl[154]";
connectAttr "PALbot_head_ctrl_translateX.o" "PALBotRN.phl[155]";
connectAttr "PALbot_head_ctrl_translateY.o" "PALBotRN.phl[156]";
connectAttr "PALbot_head_ctrl_translateZ.o" "PALBotRN.phl[157]";
connectAttr "PALbot_R_Clavicle_ctrl_translateX.o" "PALBotRN.phl[158]";
connectAttr "PALbot_R_Clavicle_ctrl_translateY.o" "PALBotRN.phl[159]";
connectAttr "PALbot_R_Clavicle_ctrl_translateZ.o" "PALBotRN.phl[160]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateX.o" "PALBotRN.phl[161]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateY.o" "PALBotRN.phl[162]";
connectAttr "PALbot_R_Clavicle_ctrl_rotateZ.o" "PALBotRN.phl[163]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_rotateZ1.o" "PALBotRN.phl[164]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateX1.o" "PALBotRN.phl[165]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateY1.o" "PALBotRN.phl[166]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateZ1.o" "PALBotRN.phl[167]";
connectAttr "PALbot_L_Arm_ctrl_rotateZ.o" "PALBotRN.phl[168]";
connectAttr "PALbot_L_Arm_ctrl_rotateY.o" "PALBotRN.phl[169]";
connectAttr "PALbot_L_Arm_ctrl_translateX.o" "PALBotRN.phl[170]";
connectAttr "PALbot_L_Arm_ctrl_translateY.o" "PALBotRN.phl[171]";
connectAttr "PALbot_L_Arm_ctrl_translateZ.o" "PALBotRN.phl[172]";
connectAttr "PALbot_R_FK_Elbow_ctrl_rotateX.o" "PALBotRN.phl[173]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateX.o" "PALBotRN.phl[174]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateY.o" "PALBotRN.phl[175]";
connectAttr "PALbot_R_FK_Elbow_ctrl_translateZ.o" "PALBotRN.phl[176]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateX.o" "PALBotRN.phl[177]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateY.o" "PALBotRN.phl[178]";
connectAttr "PALbot_R_FK_Wrist_ctrl_translateZ.o" "PALBotRN.phl[179]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateX.o" "PALBotRN.phl[180]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateY.o" "PALBotRN.phl[181]";
connectAttr "PALbot_R_FK_Wrist_ctrl_rotateZ.o" "PALBotRN.phl[182]";
connectAttr "PALbot_R_arm_IK_FK_switch_IK_FK.o" "PALBotRN.phl[183]";
connectAttr "PALbot_L_Clavicle_ctrl_translateX.o" "PALBotRN.phl[184]";
connectAttr "PALbot_L_Clavicle_ctrl_translateY.o" "PALBotRN.phl[185]";
connectAttr "PALbot_L_Clavicle_ctrl_translateZ.o" "PALBotRN.phl[186]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateX.o" "PALBotRN.phl[187]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateY.o" "PALBotRN.phl[188]";
connectAttr "PALbot_L_Clavicle_ctrl_rotateZ.o" "PALBotRN.phl[189]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_rotateZ.o" "PALBotRN.phl[190]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateX.o" "PALBotRN.phl[191]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateY.o" "PALBotRN.phl[192]";
connectAttr "PALbot_L_ShoulderRotate_ctrl_translateZ.o" "PALBotRN.phl[193]";
connectAttr "PALbot_L_Arm_ctrl_rotateZ1.o" "PALBotRN.phl[194]";
connectAttr "PALbot_L_Arm_ctrl_rotateY1.o" "PALBotRN.phl[195]";
connectAttr "PALbot_L_Arm_ctrl_translateX1.o" "PALBotRN.phl[196]";
connectAttr "PALbot_L_Arm_ctrl_translateY1.o" "PALBotRN.phl[197]";
connectAttr "PALbot_L_Arm_ctrl_translateZ1.o" "PALBotRN.phl[198]";
connectAttr "PALbot_L_FK_Elbow_ctrl_rotateX.o" "PALBotRN.phl[199]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateX.o" "PALBotRN.phl[200]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateY.o" "PALBotRN.phl[201]";
connectAttr "PALbot_L_FK_Elbow_ctrl_translateZ.o" "PALBotRN.phl[202]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateX.o" "PALBotRN.phl[203]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateY.o" "PALBotRN.phl[204]";
connectAttr "PALbot_L_FK_Wrist_ctrl_translateZ.o" "PALBotRN.phl[205]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateX.o" "PALBotRN.phl[206]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateY.o" "PALBotRN.phl[207]";
connectAttr "PALbot_L_FK_Wrist_ctrl_rotateZ.o" "PALBotRN.phl[208]";
connectAttr "PALbot_L_arm_IK_FK_switch_IK_FK.o" "PALBotRN.phl[209]";
connectAttr "PALbot_hipMain_ctrl_translateX.o" "PALBotRN.phl[210]";
connectAttr "PALbot_hipMain_ctrl_translateY.o" "PALBotRN.phl[211]";
connectAttr "PALbot_hipMain_ctrl_translateZ.o" "PALBotRN.phl[212]";
connectAttr "PALbot_hipMain_ctrl_rotateX.o" "PALBotRN.phl[213]";
connectAttr "PALbot_hipMain_ctrl_rotateY.o" "PALBotRN.phl[214]";
connectAttr "PALbot_hipMain_ctrl_rotateZ.o" "PALBotRN.phl[215]";
connectAttr "PALbot_R_hip_translateX.o" "PALBotRN.phl[216]";
connectAttr "PALbot_R_hip_translateY.o" "PALBotRN.phl[217]";
connectAttr "PALbot_R_hip_translateZ.o" "PALBotRN.phl[218]";
connectAttr "PALbot_R_hip_rotateX.o" "PALBotRN.phl[219]";
connectAttr "PALbot_R_hip_rotateY.o" "PALBotRN.phl[220]";
connectAttr "PALbot_R_hip_rotateZ.o" "PALBotRN.phl[221]";
connectAttr "PALbot_R_leg_IK_FK_switch_IK_FK.o" "PALBotRN.phl[222]";
connectAttr "PALbot_L_hip_translateX.o" "PALBotRN.phl[223]";
connectAttr "PALbot_L_hip_translateY.o" "PALBotRN.phl[224]";
connectAttr "PALbot_L_hip_translateZ.o" "PALBotRN.phl[225]";
connectAttr "PALbot_L_hip_rotateX.o" "PALBotRN.phl[226]";
connectAttr "PALbot_L_hip_rotateY.o" "PALBotRN.phl[227]";
connectAttr "PALbot_L_hip_rotateZ.o" "PALBotRN.phl[228]";
connectAttr "PALbot_L_leg_IK_FK_switch_IK_FK.o" "PALBotRN.phl[229]";
connectAttr "PALbot_L_Thumb01_ctrl_translateX.o" "PALBotRN.phl[230]";
connectAttr "PALbot_L_Thumb01_ctrl_translateY.o" "PALBotRN.phl[231]";
connectAttr "PALbot_L_Thumb01_ctrl_translateZ.o" "PALBotRN.phl[232]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateX.o" "PALBotRN.phl[233]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateY.o" "PALBotRN.phl[234]";
connectAttr "PALbot_L_Thumb01_ctrl_rotateZ.o" "PALBotRN.phl[235]";
connectAttr "PALbot_L_Thumb02_ctrl_translateX.o" "PALBotRN.phl[236]";
connectAttr "PALbot_L_Thumb02_ctrl_translateY.o" "PALBotRN.phl[237]";
connectAttr "PALbot_L_Thumb02_ctrl_translateZ.o" "PALBotRN.phl[238]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateX.o" "PALBotRN.phl[239]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateY.o" "PALBotRN.phl[240]";
connectAttr "PALbot_L_Thumb02_ctrl_rotateZ.o" "PALBotRN.phl[241]";
connectAttr "PALbot_L_Thumb03_ctrl_translateX.o" "PALBotRN.phl[242]";
connectAttr "PALbot_L_Thumb03_ctrl_translateY.o" "PALBotRN.phl[243]";
connectAttr "PALbot_L_Thumb03_ctrl_translateZ.o" "PALBotRN.phl[244]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateX.o" "PALBotRN.phl[245]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateY.o" "PALBotRN.phl[246]";
connectAttr "PALbot_L_Thumb03_ctrl_rotateZ.o" "PALBotRN.phl[247]";
connectAttr "PALbot_L_Index01_ctrl_translateX.o" "PALBotRN.phl[248]";
connectAttr "PALbot_L_Index01_ctrl_translateY.o" "PALBotRN.phl[249]";
connectAttr "PALbot_L_Index01_ctrl_translateZ.o" "PALBotRN.phl[250]";
connectAttr "PALbot_L_Index01_ctrl_rotateX.o" "PALBotRN.phl[251]";
connectAttr "PALbot_L_Index01_ctrl_rotateY.o" "PALBotRN.phl[252]";
connectAttr "PALbot_L_Index01_ctrl_rotateZ.o" "PALBotRN.phl[253]";
connectAttr "PALbot_L_Index02_ctrl_translateX.o" "PALBotRN.phl[254]";
connectAttr "PALbot_L_Index02_ctrl_translateY.o" "PALBotRN.phl[255]";
connectAttr "PALbot_L_Index02_ctrl_translateZ.o" "PALBotRN.phl[256]";
connectAttr "PALbot_L_Index02_ctrl_rotateX.o" "PALBotRN.phl[257]";
connectAttr "PALbot_L_Index02_ctrl_rotateY.o" "PALBotRN.phl[258]";
connectAttr "PALbot_L_Index02_ctrl_rotateZ.o" "PALBotRN.phl[259]";
connectAttr "PALbot_L_Middle01_ctrl_translateX.o" "PALBotRN.phl[260]";
connectAttr "PALbot_L_Middle01_ctrl_translateY.o" "PALBotRN.phl[261]";
connectAttr "PALbot_L_Middle01_ctrl_translateZ.o" "PALBotRN.phl[262]";
connectAttr "PALbot_L_Middle01_ctrl_rotateX.o" "PALBotRN.phl[263]";
connectAttr "PALbot_L_Middle01_ctrl_rotateY.o" "PALBotRN.phl[264]";
connectAttr "PALbot_L_Middle01_ctrl_rotateZ.o" "PALBotRN.phl[265]";
connectAttr "PALbot_L_Middle02_ctrl_translateX.o" "PALBotRN.phl[266]";
connectAttr "PALbot_L_Middle02_ctrl_translateY.o" "PALBotRN.phl[267]";
connectAttr "PALbot_L_Middle02_ctrl_translateZ.o" "PALBotRN.phl[268]";
connectAttr "PALbot_L_Middle02_ctrl_rotateX.o" "PALBotRN.phl[269]";
connectAttr "PALbot_L_Middle02_ctrl_rotateY.o" "PALBotRN.phl[270]";
connectAttr "PALbot_L_Middle02_ctrl_rotateZ.o" "PALBotRN.phl[271]";
connectAttr "PALbot_L_Ring01_ctrl_translateX.o" "PALBotRN.phl[272]";
connectAttr "PALbot_L_Ring01_ctrl_translateY.o" "PALBotRN.phl[273]";
connectAttr "PALbot_L_Ring01_ctrl_translateZ.o" "PALBotRN.phl[274]";
connectAttr "PALbot_L_Ring01_ctrl_rotateX.o" "PALBotRN.phl[275]";
connectAttr "PALbot_L_Ring01_ctrl_rotateY.o" "PALBotRN.phl[276]";
connectAttr "PALbot_L_Ring01_ctrl_rotateZ.o" "PALBotRN.phl[277]";
connectAttr "PALbot_L_Ring02_ctrl_translateX.o" "PALBotRN.phl[278]";
connectAttr "PALbot_L_Ring02_ctrl_translateY.o" "PALBotRN.phl[279]";
connectAttr "PALbot_L_Ring02_ctrl_translateZ.o" "PALBotRN.phl[280]";
connectAttr "PALbot_L_Ring02_ctrl_rotateX.o" "PALBotRN.phl[281]";
connectAttr "PALbot_L_Ring02_ctrl_rotateY.o" "PALBotRN.phl[282]";
connectAttr "PALbot_L_Ring02_ctrl_rotateZ.o" "PALBotRN.phl[283]";
connectAttr "PALbot_L_Pinky01_ctrl_translateX.o" "PALBotRN.phl[284]";
connectAttr "PALbot_L_Pinky01_ctrl_translateY.o" "PALBotRN.phl[285]";
connectAttr "PALbot_L_Pinky01_ctrl_translateZ.o" "PALBotRN.phl[286]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateX.o" "PALBotRN.phl[287]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateY.o" "PALBotRN.phl[288]";
connectAttr "PALbot_L_Pinky01_ctrl_rotateZ.o" "PALBotRN.phl[289]";
connectAttr "PALbot_L_Pinky02_ctrl_translateX.o" "PALBotRN.phl[290]";
connectAttr "PALbot_L_Pinky02_ctrl_translateY.o" "PALBotRN.phl[291]";
connectAttr "PALbot_L_Pinky02_ctrl_translateZ.o" "PALBotRN.phl[292]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateX.o" "PALBotRN.phl[293]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateY.o" "PALBotRN.phl[294]";
connectAttr "PALbot_L_Pinky02_ctrl_rotateZ.o" "PALBotRN.phl[295]";
connectAttr "PALbot_R_Thumb01_ctrl_translateX.o" "PALBotRN.phl[296]";
connectAttr "PALbot_R_Thumb01_ctrl_translateY.o" "PALBotRN.phl[297]";
connectAttr "PALbot_R_Thumb01_ctrl_translateZ.o" "PALBotRN.phl[298]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateX.o" "PALBotRN.phl[299]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateY.o" "PALBotRN.phl[300]";
connectAttr "PALbot_R_Thumb01_ctrl_rotateZ.o" "PALBotRN.phl[301]";
connectAttr "PALbot_R_Thumb02_ctrl_translateX.o" "PALBotRN.phl[302]";
connectAttr "PALbot_R_Thumb02_ctrl_translateY.o" "PALBotRN.phl[303]";
connectAttr "PALbot_R_Thumb02_ctrl_translateZ.o" "PALBotRN.phl[304]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateX.o" "PALBotRN.phl[305]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateY.o" "PALBotRN.phl[306]";
connectAttr "PALbot_R_Thumb02_ctrl_rotateZ.o" "PALBotRN.phl[307]";
connectAttr "PALbot_R_Thumb03_ctrl_translateX.o" "PALBotRN.phl[308]";
connectAttr "PALbot_R_Thumb03_ctrl_translateY.o" "PALBotRN.phl[309]";
connectAttr "PALbot_R_Thumb03_ctrl_translateZ.o" "PALBotRN.phl[310]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateX.o" "PALBotRN.phl[311]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateY.o" "PALBotRN.phl[312]";
connectAttr "PALbot_R_Thumb03_ctrl_rotateZ.o" "PALBotRN.phl[313]";
connectAttr "PALbot_R_Index01_ctrl_translateX.o" "PALBotRN.phl[314]";
connectAttr "PALbot_R_Index01_ctrl_translateY.o" "PALBotRN.phl[315]";
connectAttr "PALbot_R_Index01_ctrl_translateZ.o" "PALBotRN.phl[316]";
connectAttr "PALbot_R_Index01_ctrl_rotateX.o" "PALBotRN.phl[317]";
connectAttr "PALbot_R_Index01_ctrl_rotateY.o" "PALBotRN.phl[318]";
connectAttr "PALbot_R_Index01_ctrl_rotateZ.o" "PALBotRN.phl[319]";
connectAttr "PALbot_R_Index02_ctrl_translateX.o" "PALBotRN.phl[320]";
connectAttr "PALbot_R_Index02_ctrl_translateY.o" "PALBotRN.phl[321]";
connectAttr "PALbot_R_Index02_ctrl_translateZ.o" "PALBotRN.phl[322]";
connectAttr "PALbot_R_Index02_ctrl_rotateX.o" "PALBotRN.phl[323]";
connectAttr "PALbot_R_Index02_ctrl_rotateY.o" "PALBotRN.phl[324]";
connectAttr "PALbot_R_Index02_ctrl_rotateZ.o" "PALBotRN.phl[325]";
connectAttr "PALbot_R_Middle01_ctrl_translateX.o" "PALBotRN.phl[326]";
connectAttr "PALbot_R_Middle01_ctrl_translateY.o" "PALBotRN.phl[327]";
connectAttr "PALbot_R_Middle01_ctrl_translateZ.o" "PALBotRN.phl[328]";
connectAttr "PALbot_R_Middle01_ctrl_rotateX.o" "PALBotRN.phl[329]";
connectAttr "PALbot_R_Middle01_ctrl_rotateY.o" "PALBotRN.phl[330]";
connectAttr "PALbot_R_Middle01_ctrl_rotateZ.o" "PALBotRN.phl[331]";
connectAttr "PALbot_R_Middle02_ctrl_translateX.o" "PALBotRN.phl[332]";
connectAttr "PALbot_R_Middle02_ctrl_translateY.o" "PALBotRN.phl[333]";
connectAttr "PALbot_R_Middle02_ctrl_translateZ.o" "PALBotRN.phl[334]";
connectAttr "PALbot_R_Middle02_ctrl_rotateX.o" "PALBotRN.phl[335]";
connectAttr "PALbot_R_Middle02_ctrl_rotateY.o" "PALBotRN.phl[336]";
connectAttr "PALbot_R_Middle02_ctrl_rotateZ.o" "PALBotRN.phl[337]";
connectAttr "PALbot_R_Ring01_ctrl_translateX.o" "PALBotRN.phl[338]";
connectAttr "PALbot_R_Ring01_ctrl_translateY.o" "PALBotRN.phl[339]";
connectAttr "PALbot_R_Ring01_ctrl_translateZ.o" "PALBotRN.phl[340]";
connectAttr "PALbot_R_Ring01_ctrl_rotateX.o" "PALBotRN.phl[341]";
connectAttr "PALbot_R_Ring01_ctrl_rotateY.o" "PALBotRN.phl[342]";
connectAttr "PALbot_R_Ring01_ctrl_rotateZ.o" "PALBotRN.phl[343]";
connectAttr "PALbot_R_Ring02_ctrl_translateX.o" "PALBotRN.phl[344]";
connectAttr "PALbot_R_Ring02_ctrl_translateY.o" "PALBotRN.phl[345]";
connectAttr "PALbot_R_Ring02_ctrl_translateZ.o" "PALBotRN.phl[346]";
connectAttr "PALbot_R_Ring02_ctrl_rotateX.o" "PALBotRN.phl[347]";
connectAttr "PALbot_R_Ring02_ctrl_rotateY.o" "PALBotRN.phl[348]";
connectAttr "PALbot_R_Ring02_ctrl_rotateZ.o" "PALBotRN.phl[349]";
connectAttr "PALbot_R_Pinky01_ctrl_translateX.o" "PALBotRN.phl[350]";
connectAttr "PALbot_R_Pinky01_ctrl_translateY.o" "PALBotRN.phl[351]";
connectAttr "PALbot_R_Pinky01_ctrl_translateZ.o" "PALBotRN.phl[352]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateX.o" "PALBotRN.phl[353]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateY.o" "PALBotRN.phl[354]";
connectAttr "PALbot_R_Pinky01_ctrl_rotateZ.o" "PALBotRN.phl[355]";
connectAttr "PALbot_R_Pinky02_ctrl_translateX.o" "PALBotRN.phl[356]";
connectAttr "PALbot_R_Pinky02_ctrl_translateY.o" "PALBotRN.phl[357]";
connectAttr "PALbot_R_Pinky02_ctrl_translateZ.o" "PALBotRN.phl[358]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateX.o" "PALBotRN.phl[359]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateY.o" "PALBotRN.phl[360]";
connectAttr "PALbot_R_Pinky02_ctrl_rotateZ.o" "PALBotRN.phl[361]";
connectAttr "PALbot_R_knee_aim_ctrl_space_switch.o" "PALBotRN.phl[362]";
connectAttr "PALbot_R_knee_aim_ctrl_translateX.o" "PALBotRN.phl[363]";
connectAttr "PALbot_R_knee_aim_ctrl_translateY.o" "PALBotRN.phl[364]";
connectAttr "PALbot_R_knee_aim_ctrl_translateZ.o" "PALBotRN.phl[365]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateX.o" "PALBotRN.phl[366]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateY.o" "PALBotRN.phl[367]";
connectAttr "PALbot_R_knee_aim_ctrl_rotateZ.o" "PALBotRN.phl[368]";
connectAttr "PALbot_R_foot_secondary_translateX.o" "PALBotRN.phl[369]";
connectAttr "PALbot_R_foot_secondary_translateY.o" "PALBotRN.phl[370]";
connectAttr "PALbot_R_foot_secondary_translateZ.o" "PALBotRN.phl[371]";
connectAttr "PALbot_R_foot_secondary_rotateX.o" "PALBotRN.phl[372]";
connectAttr "PALbot_R_foot_secondary_rotateY.o" "PALBotRN.phl[373]";
connectAttr "PALbot_R_foot_secondary_rotateZ.o" "PALBotRN.phl[374]";
connectAttr "PALbot_R_footSec_reshape01_translateX.o" "PALBotRN.phl[375]";
connectAttr "PALbot_R_footSec_reshape01_translateY.o" "PALBotRN.phl[376]";
connectAttr "PALbot_R_footSec_reshape01_translateZ.o" "PALBotRN.phl[377]";
connectAttr "PALbot_R_footSec_reshape01_rotateX.o" "PALBotRN.phl[378]";
connectAttr "PALbot_R_footSec_reshape01_rotateY.o" "PALBotRN.phl[379]";
connectAttr "PALbot_R_footSec_reshape01_rotateZ.o" "PALBotRN.phl[380]";
connectAttr "PALbot_R_footSec_reshape02_translateX.o" "PALBotRN.phl[381]";
connectAttr "PALbot_R_footSec_reshape02_translateY.o" "PALBotRN.phl[382]";
connectAttr "PALbot_R_footSec_reshape02_translateZ.o" "PALBotRN.phl[383]";
connectAttr "PALbot_R_footSec_reshape02_rotateX.o" "PALBotRN.phl[384]";
connectAttr "PALbot_R_footSec_reshape02_rotateY.o" "PALBotRN.phl[385]";
connectAttr "PALbot_R_footSec_reshape02_rotateZ.o" "PALBotRN.phl[386]";
connectAttr "PALbot_R_Engine_ctrl_on_off.o" "PALBotRN.phl[387]";
connectAttr "PALbot_R_Engine_ctrl_translateX.o" "PALBotRN.phl[388]";
connectAttr "PALbot_R_Engine_ctrl_translateY.o" "PALBotRN.phl[389]";
connectAttr "PALbot_R_Engine_ctrl_translateZ.o" "PALBotRN.phl[390]";
connectAttr "PALbot_R_Engine_ctrl_rotateX.o" "PALBotRN.phl[391]";
connectAttr "PALbot_R_Engine_ctrl_rotateY.o" "PALBotRN.phl[392]";
connectAttr "PALbot_R_Engine_ctrl_rotateZ.o" "PALBotRN.phl[393]";
connectAttr "PALbot_R_Engine_ctrl_scaleX.o" "PALBotRN.phl[394]";
connectAttr "PALbot_R_Engine_ctrl_scaleY.o" "PALBotRN.phl[395]";
connectAttr "PALbot_R_Engine_ctrl_scaleZ.o" "PALBotRN.phl[396]";
connectAttr "PALbot_R_IK_Foot_ctrl_Heel_Peel.o" "PALBotRN.phl[397]";
connectAttr "PALbot_R_IK_Foot_ctrl_follow_hip.o" "PALBotRN.phl[398]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateX.o" "PALBotRN.phl[399]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateY.o" "PALBotRN.phl[400]";
connectAttr "PALbot_R_IK_Foot_ctrl_translateZ.o" "PALBotRN.phl[401]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateX.o" "PALBotRN.phl[402]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateY.o" "PALBotRN.phl[403]";
connectAttr "PALbot_R_IK_Foot_ctrl_rotateZ.o" "PALBotRN.phl[404]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateX.o" "PALBotRN.phl[405]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateY.o" "PALBotRN.phl[406]";
connectAttr "PALbot_R_IK_heel_lift_tip_translateZ.o" "PALBotRN.phl[407]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateX.o" "PALBotRN.phl[408]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateY.o" "PALBotRN.phl[409]";
connectAttr "PALbot_R_IK_heel_lift_tip_rotateZ.o" "PALBotRN.phl[410]";
connectAttr "PALbot_R_IK_foot_tip_translateX.o" "PALBotRN.phl[411]";
connectAttr "PALbot_R_IK_foot_tip_translateY.o" "PALBotRN.phl[412]";
connectAttr "PALbot_R_IK_foot_tip_translateZ.o" "PALBotRN.phl[413]";
connectAttr "PALbot_R_IK_foot_tip_rotateX.o" "PALBotRN.phl[414]";
connectAttr "PALbot_R_IK_foot_tip_rotateY.o" "PALBotRN.phl[415]";
connectAttr "PALbot_R_IK_foot_tip_rotateZ.o" "PALBotRN.phl[416]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateX.o" "PALBotRN.phl[417]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateY.o" "PALBotRN.phl[418]";
connectAttr "PALbot_R_IK_footBall_ctrl_translateZ.o" "PALBotRN.phl[419]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateX.o" "PALBotRN.phl[420]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateY.o" "PALBotRN.phl[421]";
connectAttr "PALbot_R_IK_footBall_ctrl_rotateZ.o" "PALBotRN.phl[422]";
connectAttr "PALbot_R_arm_IK_ctrl_follow_shoulder.o" "PALBotRN.phl[423]";
connectAttr "PALbot_R_arm_IK_ctrl_translateX.o" "PALBotRN.phl[424]";
connectAttr "PALbot_R_arm_IK_ctrl_translateY.o" "PALBotRN.phl[425]";
connectAttr "PALbot_R_arm_IK_ctrl_translateZ.o" "PALBotRN.phl[426]";
connectAttr "PALbot_R_arm_IK_ctrl_rotateY.o" "PALBotRN.phl[427]";
connectAttr "PALbot_R_arm_IK_ctrl_rotateX.o" "PALBotRN.phl[428]";
connectAttr "PALbot_R_arm_IK_ctrl_rotateZ.o" "PALBotRN.phl[429]";
connectAttr "PALbot_R_arm_IK_ctrl_scaleX.o" "PALBotRN.phl[430]";
connectAttr "PALbot_R_arm_IK_ctrl_scaleY.o" "PALBotRN.phl[431]";
connectAttr "PALbot_R_arm_IK_ctrl_scaleZ.o" "PALBotRN.phl[432]";
connectAttr "PALbot_L_HandVIS_Hand_Vis.o" "PALBotRN.phl[433]";
connectAttr "PALbot_L_HandVIS_canon_light.o" "PALBotRN.phl[434]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of maya.ma
