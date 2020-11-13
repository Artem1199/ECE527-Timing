/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Fri Nov 13 11:52:29 2020
/////////////////////////////////////////////////////////////


module MAC ( Reset, DataIn1, DataIn2, Wclk, Rclk, AverageOut, Wfull );
  input [3:0] DataIn1;
  input [3:0] DataIn2;
  output [7:0] AverageOut;
  input Reset, Wclk, Rclk;
  output Wfull;
  wire   n393, n394, n395, n396, n397, n398, n399, n400, \fifo/n314 ,
         \fifo/n313 , \fifo/n312 , \fifo/n311 , \fifo/n310 , \fifo/n309 ,
         \fifo/n308 , \fifo/n307 , \fifo/n306 , \fifo/n305 , \fifo/n304 ,
         \fifo/n303 , \fifo/n302 , \fifo/n301 , \fifo/n300 , \fifo/n299 ,
         \fifo/n298 , \fifo/n297 , \fifo/n296 , \fifo/n295 , \fifo/n294 ,
         \fifo/n293 , \fifo/n292 , \fifo/n291 , \fifo/n290 , \fifo/n289 ,
         \fifo/n288 , \fifo/n287 , \fifo/n286 , \fifo/n285 , \fifo/n284 ,
         \fifo/n283 , \fifo/n282 , \fifo/n281 , \fifo/n280 , \fifo/n279 ,
         \fifo/n278 , \fifo/n277 , \fifo/n276 , \fifo/n275 , \fifo/n274 ,
         \fifo/n273 , \fifo/n272 , \fifo/n271 , \fifo/n270 , \fifo/n269 ,
         \fifo/n268 , \fifo/n267 , \fifo/n266 , \fifo/n265 , \fifo/n264 ,
         \fifo/n263 , \fifo/n262 , \fifo/n261 , \fifo/n260 , \fifo/n259 ,
         \fifo/n258 , \fifo/n257 , \fifo/n256 , \fifo/n255 , \fifo/n254 ,
         \fifo/n253 , \fifo/n252 , \fifo/n251 , \fifo/n250 , \fifo/n249 ,
         \fifo/n248 , \fifo/n247 , \fifo/n246 , \fifo/n245 , \fifo/n244 ,
         \fifo/n243 , \fifo/n242 , \fifo/n241 , \fifo/n240 , \fifo/n239 ,
         \fifo/n238 , \fifo/n237 , \fifo/n236 , \fifo/n235 , \fifo/n234 ,
         \fifo/n233 , \fifo/n232 , \fifo/n231 , \fifo/n230 , \fifo/n229 ,
         \fifo/n228 , \fifo/n227 , \fifo/n226 , \fifo/n225 , \fifo/n224 ,
         \fifo/n223 , \fifo/n222 , \fifo/n221 , \fifo/n220 , \fifo/n219 ,
         \fifo/n218 , \fifo/n217 , \fifo/n216 , \fifo/n215 , \fifo/n214 ,
         \fifo/n213 , \fifo/n212 , \fifo/n211 , \fifo/n210 , \fifo/n209 ,
         \fifo/n208 , \fifo/n207 , \fifo/n206 , \fifo/n205 , \fifo/n204 ,
         \fifo/n203 , \fifo/n202 , \fifo/n201 , \fifo/n200 , \fifo/n199 ,
         \fifo/n198 , \fifo/n197 , \fifo/n196 , \fifo/n195 , \fifo/n194 ,
         \fifo/n193 , \fifo/n192 , \fifo/n191 , \fifo/n190 , \fifo/n189 ,
         \fifo/n188 , \fifo/n187 , \fifo/n186 , \fifo/n185 , \fifo/n184 ,
         \fifo/n183 , \fifo/n182 , \fifo/n181 , \fifo/n180 , \fifo/n179 ,
         \fifo/n178 , \fifo/n177 , \fifo/n176 , \fifo/n175 , \fifo/n174 ,
         \fifo/n173 , \fifo/n172 , \fifo/n171 , \fifo/n170 , \fifo/n169 ,
         \fifo/n168 , \fifo/n167 , \fifo/n166 , \fifo/n165 , \fifo/n164 ,
         \fifo/n163 , \fifo/n162 , \fifo/n161 , \fifo/n160 , \fifo/n159 ,
         \fifo/n158 , \fifo/n157 , \fifo/n156 , \fifo/n155 , \fifo/n154 ,
         \fifo/n153 , \fifo/n152 , \fifo/n151 , \fifo/n150 , \fifo/n149 ,
         \fifo/n148 , \fifo/n147 , \fifo/n146 , \fifo/n145 , \fifo/n144 ,
         \fifo/n143 , \fifo/n142 , \fifo/n141 , \fifo/n140 , \fifo/n139 ,
         \fifo/n138 , \fifo/n137 , \fifo/n136 , \fifo/n135 , \fifo/n134 ,
         \fifo/n133 , \fifo/n132 , \fifo/n131 , \fifo/n130 , \fifo/n129 ,
         \fifo/n128 , \fifo/n127 , \fifo/n126 , \fifo/n125 , \fifo/n124 ,
         \fifo/n123 , \fifo/n122 , \fifo/n121 , \fifo/n120 , \fifo/n119 ,
         \fifo/n118 , \fifo/n117 , \fifo/n116 , \fifo/n115 , \fifo/n114 ,
         \fifo/n112 , \fifo/n111 , \fifo/n110 , \fifo/n109 , \fifo/n108 ,
         \fifo/n107 , \fifo/n106 , \fifo/n105 , \fifo/n104 , \fifo/n103 ,
         \fifo/n102 , \fifo/n101 , \fifo/n100 , \fifo/n99 , \fifo/n98 ,
         \fifo/n97 , \fifo/n96 , \fifo/n95 , \fifo/n94 , \fifo/n93 ,
         \fifo/n92 , \fifo/n91 , \fifo/n90 , \fifo/n89 , \fifo/n87 ,
         \fifo/n86 , \fifo/n84 , \fifo/n80 , \fifo/n79 , \fifo/n78 ,
         \fifo/n76 , \fifo/n75 , \fifo/n74 , \fifo/n73 , \fifo/n72 ,
         \fifo/n71 , \fifo/n70 , \fifo/n69 , \fifo/n68 , \fifo/n67 ,
         \fifo/n66 , \fifo/n65 , \fifo/n64 , \fifo/n63 , \fifo/n62 ,
         \fifo/n61 , \fifo/n60 , \fifo/n59 , \fifo/n58 , \fifo/n57 ,
         \fifo/n56 , \fifo/n55 , \fifo/n54 , \fifo/n53 , \fifo/n52 ,
         \fifo/n51 , \fifo/n50 , \fifo/n49 , \fifo/n48 , \fifo/n47 ,
         \fifo/n46 , \fifo/n45 , \fifo/n44 , \fifo/n43 , \fifo/n42 ,
         \fifo/n41 , \fifo/n40 , \fifo/n39 , \fifo/n38 , \fifo/n37 ,
         \fifo/n36 , \fifo/n35 , \fifo/n34 , \fifo/n33 , \fifo/n32 ,
         \fifo/n31 , \fifo/n30 , \fifo/n29 , \fifo/data[7][7] ,
         \fifo/data[7][6] , \fifo/data[7][5] , \fifo/data[7][4] ,
         \fifo/data[7][3] , \fifo/data[7][2] , \fifo/data[7][1] ,
         \fifo/data[7][0] , \fifo/data[6][7] , \fifo/data[6][6] ,
         \fifo/data[6][5] , \fifo/data[6][4] , \fifo/data[6][3] ,
         \fifo/data[6][2] , \fifo/data[6][1] , \fifo/data[6][0] ,
         \fifo/data[5][7] , \fifo/data[5][6] , \fifo/data[5][5] ,
         \fifo/data[5][4] , \fifo/data[5][3] , \fifo/data[5][2] ,
         \fifo/data[5][1] , \fifo/data[5][0] , \fifo/data[4][7] ,
         \fifo/data[4][6] , \fifo/data[4][5] , \fifo/data[4][4] ,
         \fifo/data[4][3] , \fifo/data[4][2] , \fifo/data[4][1] ,
         \fifo/data[4][0] , \fifo/data[3][7] , \fifo/data[3][6] ,
         \fifo/data[3][5] , \fifo/data[3][4] , \fifo/data[3][3] ,
         \fifo/data[3][2] , \fifo/data[3][1] , \fifo/data[3][0] ,
         \fifo/data[2][7] , \fifo/data[2][6] , \fifo/data[2][5] ,
         \fifo/data[2][4] , \fifo/data[2][3] , \fifo/data[2][2] ,
         \fifo/data[2][1] , \fifo/data[2][0] , \fifo/data[1][7] ,
         \fifo/data[1][6] , \fifo/data[1][5] , \fifo/data[1][4] ,
         \fifo/data[1][3] , \fifo/data[1][2] , \fifo/data[1][1] ,
         \fifo/data[1][0] , \fifo/data[0][7] , \fifo/data[0][6] ,
         \fifo/data[0][5] , \fifo/data[0][4] , \fifo/data[0][3] ,
         \fifo/data[0][2] , \fifo/data[0][1] , \fifo/data[0][0] ,
         \Accum1/n154 , \Accum1/n151 , \Accum1/n149 , \Accum1/n147 ,
         \Accum1/n145 , \Accum1/n143 , \Accum1/n141 , \Accum1/n139 ,
         \Accum1/n137 , \Accum1/n135 , \Accum1/n133 , \Accum1/n131 ,
         \Accum1/n129 , \Accum1/n127 , \Accum1/n125 , \Accum1/n123 ,
         \Accum1/n121 , \Accum1/n119 , \Accum1/n117 , \Accum1/n115 ,
         \Accum1/n113 , \Accum1/n111 , \Accum1/n109 , \Accum1/n107 ,
         \Accum1/n105 , \Accum1/n103 , \Accum1/n101 , \Accum1/n99 ,
         \Accum1/n97 , \Accum1/n95 , \Accum1/n93 , \Accum1/n91 , \Accum1/n89 ,
         \Accum1/n87 , \Accum1/n85 , \Accum1/n83 , \Accum1/n81 , \Accum1/n79 ,
         \Accum1/n77 , \Accum1/n75 , \Accum1/n73 , \Accum1/n71 , \Accum1/n69 ,
         \Accum1/n68 , \Accum1/n67 , \Accum1/n66 , \Accum1/n65 , \Accum1/n64 ,
         \Accum1/n63 , \Accum1/n62 , \Accum1/n61 , \Accum1/n60 , \Accum1/n59 ,
         \Accum1/n58 , \Accum1/n57 , \Accum1/n56 , \Accum1/n55 , \Accum1/n54 ,
         \Accum1/n53 , \Accum1/n52 , \Accum1/n51 , \Accum1/n50 , \Accum1/n49 ,
         \Accum1/n48 , \Accum1/n47 , \Accum1/n46 , \Accum1/n45 , \Accum1/n44 ,
         \Accum1/n43 , \Accum1/n42 , \Accum1/n41 , \Accum1/n40 , \Accum1/n39 ,
         \Accum1/n38 , \Accum1/n37 , \Accum1/n36 , \Accum1/n35 , \Accum1/n34 ,
         \Accum1/n33 , \Accum1/n32 , \Accum1/n31 , \Accum1/n30 , \Accum1/n29 ,
         \Accum1/n28 , \Accum1/n27 , \Accum1/n26 , \Accum1/n25 , \Accum1/n24 ,
         \Accum1/n23 , \Accum1/n22 , \Accum1/n21 , \Accum1/n20 , \Accum1/n18 ,
         \Accum1/n17 , \Accum1/n16 , \Accum1/n15 , \Accum1/n14 , \Accum1/n13 ,
         \Accum1/n12 , \Accum1/n11 , \Accum1/n10 , \Accum1/n9 , \Accum1/n8 ,
         \Accum1/n7 , \Accum1/n6 , \Accum1/n5 , \Accum1/n4 , \Accum1/n2 ,
         \Accum1/n1 , \Accum1/cla2_cout , \Accum1/cla1_cout ,
         \Accum1/hold[3][7] , \Accum1/hold[3][6] , \Accum1/hold[3][5] ,
         \Accum1/hold[3][4] , \Accum1/hold[3][3] , \Accum1/hold[3][2] ,
         \Accum1/hold[3][1] , \Accum1/hold[3][0] , \Accum1/hold[2][7] ,
         \Accum1/hold[2][6] , \Accum1/hold[2][5] , \Accum1/hold[2][4] ,
         \Accum1/hold[2][3] , \Accum1/hold[2][2] , \Accum1/hold[2][1] ,
         \Accum1/hold[2][0] , \Accum1/hold[1][7] , \Accum1/hold[1][6] ,
         \Accum1/hold[1][5] , \Accum1/hold[1][4] , \Accum1/hold[1][3] ,
         \Accum1/hold[1][2] , \Accum1/hold[1][1] , \Accum1/hold[1][0] ,
         \Accum1/hold[0][7] , \Accum1/hold[0][6] , \Accum1/hold[0][5] ,
         \Accum1/hold[0][4] , \Accum1/hold[0][3] , \Accum1/hold[0][2] ,
         \Accum1/hold[0][1] , \Accum1/hold[0][0] , \Multi1/n27 , \Multi1/n25 ,
         \Multi1/n24 , \Multi1/n22 , \Multi1/n20 , \Multi1/n18 , \Multi1/n16 ,
         \Multi1/n14 , \Multi1/n12 , \Multi1/n10 , \Multi1/n9 , \Multi1/n8 ,
         \Multi1/n7 , \Multi1/n6 , \Multi1/n5 , \Multi1/n4 , \Multi1/n2 ,
         \Multi1/n1 , \Multi1/Mul[7] , \Multi1/cout2 , \Multi1/cout1 ,
         \Multi1/ba[3][3] , \Multi1/ba[3][2] , \Multi1/ba[3][1] ,
         \Multi1/ba[3][0] , \Multi1/ba[2][3] , \Multi1/ba[2][2] ,
         \Multi1/ba[2][1] , \Multi1/ba[2][0] , \Multi1/ba[1][3] ,
         \Multi1/ba[1][2] , \Multi1/ba[1][1] , \Multi1/ba[1][0] ,
         \Multi1/ba[0][3] , \Multi1/ba[0][2] , \Multi1/ba[0][1] ,
         \Accum1/cla1/cout1 , \Accum1/cla3/cout2 , \Accum1/cla3/cout1 ,
         \Multi1/cla1/n11 , \Multi1/cla1/n9 , \Multi1/cla1/n8 ,
         \Multi1/cla1/n7 , \Multi1/cla1/n6 , \Multi1/cla1/n5 ,
         \Multi1/cla1/n4 , \Multi1/cla1/n2 , \Multi1/cla1/n1 ,
         \Accum1/cla2/cout1 , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392;
  wire   [7:0] Mul;
  wire   [7:0] Acc;
  wire   [2:0] \fifo/rd_ptr_gray ;
  wire   [3:0] \fifo/rd_ptr_w1ff ;
  wire   [3:0] \fifo/rd_ptr_wff ;
  wire   [3:0] \fifo/rd_ptr ;
  wire   [2:0] \fifo/wr_ptr_gray ;
  wire   [3:0] \fifo/wr_ptr_r1ff ;
  wire   [3:0] \fifo/wr_ptr_rff ;
  wire   [3:0] \fifo/wr_ptr ;
  wire   [7:0] \Accum1/cla2_dat ;
  wire   [7:0] \Accum1/cla1_dat ;
  wire   [11:0] \Accum1/cla3_dat ;
  wire   [1:0] \Accum1/counter ;
  wire   [3:0] \Multi1/adder3 ;
  wire   [3:0] \Multi1/adder2 ;
  wire   [3:0] \Multi1/adder1 ;

  XNOR2X1 \fifo/U326  ( .A(n273), .B(n153), .Y(\fifo/n238 ) );
  XNOR2X1 \fifo/U322  ( .A(n128), .B(n202), .Y(\fifo/n239 ) );
  XOR2X1 \fifo/U321  ( .A(n271), .B(n287), .Y(\fifo/rd_ptr_gray [0]) );
  XOR2X1 \fifo/U320  ( .A(n243), .B(\fifo/rd_ptr_gray [0]), .Y(\fifo/n241 ) );
  XOR2X1 \fifo/U319  ( .A(n273), .B(n239), .Y(\fifo/rd_ptr_gray [2]) );
  XOR2X1 \fifo/U318  ( .A(n242), .B(\fifo/rd_ptr_gray [2]), .Y(\fifo/n242 ) );
  NAND3X1 \fifo/U316  ( .A(\fifo/n238 ), .B(\fifo/n239 ), .C(n223), .Y(
        \fifo/n101 ) );
  XOR2X1 \fifo/U315  ( .A(n272), .B(n156), .Y(\fifo/wr_ptr_gray [0]) );
  XNOR2X1 \fifo/U314  ( .A(\fifo/wr_ptr_gray [0]), .B(n244), .Y(\fifo/n233 )
         );
  OAI21X1 \fifo/U312  ( .A(n286), .B(\fifo/n79 ), .C(n81), .Y(
        \fifo/wr_ptr_gray [1]) );
  XNOR2X1 \fifo/U311  ( .A(n152), .B(\fifo/wr_ptr_gray [1]), .Y(\fifo/n234 )
         );
  XOR2X1 \fifo/U310  ( .A(n274), .B(n286), .Y(\fifo/wr_ptr_gray [2]) );
  XOR2X1 \fifo/U309  ( .A(n241), .B(\fifo/wr_ptr_gray [2]), .Y(\fifo/n236 ) );
  XOR2X1 \fifo/U308  ( .A(n274), .B(n216), .Y(\fifo/n237 ) );
  NAND3X1 \fifo/U307  ( .A(\fifo/n233 ), .B(\fifo/n234 ), .C(\fifo/n235 ), .Y(
        \fifo/n181 ) );
  AOI22X1 \fifo/U306  ( .A(\fifo/data[2][0] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[4][0] ), .Y(\fifo/n229 ) );
  AOI22X1 \fifo/U303  ( .A(\fifo/n186 ), .B(\fifo/data[0][0] ), .C(
        \fifo/data[6][0] ), .D(n295), .Y(\fifo/n230 ) );
  AOI21X1 \fifo/U302  ( .A(n80), .B(n68), .C(n287), .Y(\fifo/n225 ) );
  AOI22X1 \fifo/U301  ( .A(\fifo/data[3][0] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[5][0] ), .Y(\fifo/n227 ) );
  AOI22X1 \fifo/U300  ( .A(\fifo/n186 ), .B(\fifo/data[1][0] ), .C(
        \fifo/data[7][0] ), .D(n295), .Y(\fifo/n228 ) );
  AOI21X1 \fifo/U299  ( .A(n79), .B(n67), .C(\fifo/n87 ), .Y(\fifo/n226 ) );
  AOI22X1 \fifo/U298  ( .A(\fifo/data[2][1] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[4][1] ), .Y(\fifo/n223 ) );
  AOI22X1 \fifo/U297  ( .A(\fifo/n186 ), .B(\fifo/data[0][1] ), .C(
        \fifo/data[6][1] ), .D(n295), .Y(\fifo/n224 ) );
  AOI21X1 \fifo/U296  ( .A(n78), .B(n66), .C(n287), .Y(\fifo/n219 ) );
  AOI22X1 \fifo/U295  ( .A(\fifo/data[3][1] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[5][1] ), .Y(\fifo/n221 ) );
  AOI22X1 \fifo/U294  ( .A(\fifo/n186 ), .B(\fifo/data[1][1] ), .C(
        \fifo/data[7][1] ), .D(n295), .Y(\fifo/n222 ) );
  AOI21X1 \fifo/U293  ( .A(n77), .B(n65), .C(\fifo/n87 ), .Y(\fifo/n220 ) );
  AOI22X1 \fifo/U292  ( .A(\fifo/data[2][2] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[4][2] ), .Y(\fifo/n217 ) );
  AOI22X1 \fifo/U291  ( .A(\fifo/n186 ), .B(\fifo/data[0][2] ), .C(
        \fifo/data[6][2] ), .D(n295), .Y(\fifo/n218 ) );
  AOI21X1 \fifo/U290  ( .A(n76), .B(n64), .C(n287), .Y(\fifo/n213 ) );
  AOI22X1 \fifo/U289  ( .A(\fifo/data[3][2] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[5][2] ), .Y(\fifo/n215 ) );
  AOI22X1 \fifo/U288  ( .A(\fifo/n186 ), .B(\fifo/data[1][2] ), .C(
        \fifo/data[7][2] ), .D(n295), .Y(\fifo/n216 ) );
  AOI21X1 \fifo/U287  ( .A(n75), .B(n63), .C(\fifo/n87 ), .Y(\fifo/n214 ) );
  AOI22X1 \fifo/U286  ( .A(\fifo/data[2][3] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[4][3] ), .Y(\fifo/n211 ) );
  AOI22X1 \fifo/U285  ( .A(\fifo/n186 ), .B(\fifo/data[0][3] ), .C(
        \fifo/data[6][3] ), .D(n295), .Y(\fifo/n212 ) );
  AOI21X1 \fifo/U284  ( .A(n74), .B(n62), .C(n287), .Y(\fifo/n207 ) );
  AOI22X1 \fifo/U283  ( .A(\fifo/data[3][3] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[5][3] ), .Y(\fifo/n209 ) );
  AOI22X1 \fifo/U282  ( .A(\fifo/n186 ), .B(\fifo/data[1][3] ), .C(
        \fifo/data[7][3] ), .D(n295), .Y(\fifo/n210 ) );
  AOI21X1 \fifo/U281  ( .A(n73), .B(n61), .C(\fifo/n87 ), .Y(\fifo/n208 ) );
  AOI22X1 \fifo/U280  ( .A(\fifo/data[2][4] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[4][4] ), .Y(\fifo/n205 ) );
  AOI22X1 \fifo/U279  ( .A(\fifo/n186 ), .B(\fifo/data[0][4] ), .C(
        \fifo/data[6][4] ), .D(n296), .Y(\fifo/n206 ) );
  AOI21X1 \fifo/U278  ( .A(n90), .B(n91), .C(n287), .Y(\fifo/n201 ) );
  AOI22X1 \fifo/U277  ( .A(\fifo/data[3][4] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[5][4] ), .Y(\fifo/n203 ) );
  AOI22X1 \fifo/U276  ( .A(\fifo/n186 ), .B(\fifo/data[1][4] ), .C(
        \fifo/data[7][4] ), .D(n296), .Y(\fifo/n204 ) );
  AOI21X1 \fifo/U275  ( .A(n72), .B(n60), .C(\fifo/n87 ), .Y(\fifo/n202 ) );
  AOI22X1 \fifo/U274  ( .A(\fifo/data[2][5] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[4][5] ), .Y(\fifo/n199 ) );
  AOI22X1 \fifo/U273  ( .A(\fifo/n186 ), .B(\fifo/data[0][5] ), .C(
        \fifo/data[6][5] ), .D(n296), .Y(\fifo/n200 ) );
  AOI21X1 \fifo/U272  ( .A(n101), .B(n102), .C(n287), .Y(\fifo/n195 ) );
  AOI22X1 \fifo/U271  ( .A(\fifo/data[3][5] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[5][5] ), .Y(\fifo/n197 ) );
  AOI22X1 \fifo/U270  ( .A(\fifo/n186 ), .B(\fifo/data[1][5] ), .C(
        \fifo/data[7][5] ), .D(n296), .Y(\fifo/n198 ) );
  AOI21X1 \fifo/U269  ( .A(n71), .B(n59), .C(\fifo/n87 ), .Y(\fifo/n196 ) );
  AOI22X1 \fifo/U268  ( .A(\fifo/data[2][6] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[4][6] ), .Y(\fifo/n193 ) );
  AOI22X1 \fifo/U267  ( .A(\fifo/n186 ), .B(\fifo/data[0][6] ), .C(
        \fifo/data[6][6] ), .D(n296), .Y(\fifo/n194 ) );
  AOI21X1 \fifo/U266  ( .A(n112), .B(n113), .C(n287), .Y(\fifo/n189 ) );
  AOI22X1 \fifo/U265  ( .A(\fifo/data[3][6] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[5][6] ), .Y(\fifo/n191 ) );
  AOI22X1 \fifo/U264  ( .A(\fifo/n186 ), .B(\fifo/data[1][6] ), .C(
        \fifo/data[7][6] ), .D(n296), .Y(\fifo/n192 ) );
  AOI21X1 \fifo/U263  ( .A(n70), .B(n58), .C(\fifo/n87 ), .Y(\fifo/n190 ) );
  AOI22X1 \fifo/U262  ( .A(\fifo/data[2][7] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[4][7] ), .Y(\fifo/n187 ) );
  AOI22X1 \fifo/U261  ( .A(\fifo/n186 ), .B(\fifo/data[0][7] ), .C(
        \fifo/data[6][7] ), .D(n296), .Y(\fifo/n188 ) );
  AOI21X1 \fifo/U260  ( .A(n125), .B(n126), .C(n287), .Y(\fifo/n182 ) );
  AOI22X1 \fifo/U259  ( .A(\fifo/data[3][7] ), .B(\fifo/n232 ), .C(\fifo/n231 ), .D(\fifo/data[5][7] ), .Y(\fifo/n184 ) );
  AOI22X1 \fifo/U258  ( .A(\fifo/n186 ), .B(\fifo/data[1][7] ), .C(
        \fifo/data[7][7] ), .D(n296), .Y(\fifo/n185 ) );
  AOI21X1 \fifo/U257  ( .A(n69), .B(n57), .C(\fifo/n87 ), .Y(\fifo/n183 ) );
  XOR2X1 \fifo/U256  ( .A(n186), .B(n272), .Y(\fifo/n314 ) );
  XOR2X1 \fifo/U254  ( .A(\fifo/n79 ), .B(n240), .Y(\fifo/n313 ) );
  NAND3X1 \fifo/U251  ( .A(n186), .B(\fifo/n80 ), .C(n304), .Y(\fifo/n123 ) );
  NOR3X1 \fifo/U250  ( .A(n156), .B(n286), .C(n82), .Y(\fifo/n172 ) );
  OAI21X1 \fifo/U248  ( .A(n294), .B(\fifo/n76 ), .C(n42), .Y(\fifo/n311 ) );
  OAI21X1 \fifo/U246  ( .A(n294), .B(\fifo/n75 ), .C(n103), .Y(\fifo/n310 ) );
  OAI21X1 \fifo/U244  ( .A(n294), .B(\fifo/n74 ), .C(n187), .Y(\fifo/n309 ) );
  OAI21X1 \fifo/U242  ( .A(n294), .B(\fifo/n73 ), .C(n157), .Y(\fifo/n308 ) );
  OAI21X1 \fifo/U240  ( .A(n294), .B(\fifo/n72 ), .C(n209), .Y(\fifo/n307 ) );
  OAI21X1 \fifo/U238  ( .A(n294), .B(\fifo/n71 ), .C(n114), .Y(\fifo/n306 ) );
  OAI21X1 \fifo/U236  ( .A(n294), .B(\fifo/n70 ), .C(n92), .Y(\fifo/n305 ) );
  OAI21X1 \fifo/U234  ( .A(n294), .B(\fifo/n69 ), .C(n83), .Y(\fifo/n304 ) );
  NOR3X1 \fifo/U232  ( .A(n240), .B(n305), .C(n127), .Y(\fifo/n162 ) );
  OAI21X1 \fifo/U230  ( .A(n293), .B(\fifo/n68 ), .C(n41), .Y(\fifo/n303 ) );
  OAI21X1 \fifo/U228  ( .A(n293), .B(\fifo/n67 ), .C(n40), .Y(\fifo/n302 ) );
  OAI21X1 \fifo/U226  ( .A(n293), .B(\fifo/n66 ), .C(n85), .Y(\fifo/n301 ) );
  OAI21X1 \fifo/U224  ( .A(n293), .B(\fifo/n65 ), .C(n96), .Y(\fifo/n300 ) );
  OAI21X1 \fifo/U222  ( .A(n293), .B(\fifo/n64 ), .C(n132), .Y(\fifo/n299 ) );
  OAI21X1 \fifo/U220  ( .A(n293), .B(\fifo/n63 ), .C(n107), .Y(\fifo/n298 ) );
  OAI21X1 \fifo/U218  ( .A(n293), .B(\fifo/n62 ), .C(n191), .Y(\fifo/n297 ) );
  OAI21X1 \fifo/U216  ( .A(n293), .B(\fifo/n61 ), .C(n161), .Y(\fifo/n296 ) );
  NOR3X1 \fifo/U215  ( .A(\fifo/n79 ), .B(n286), .C(n82), .Y(\fifo/n153 ) );
  OAI21X1 \fifo/U213  ( .A(n292), .B(\fifo/n60 ), .C(n39), .Y(\fifo/n295 ) );
  OAI21X1 \fifo/U211  ( .A(n292), .B(\fifo/n59 ), .C(n129), .Y(\fifo/n294 ) );
  OAI21X1 \fifo/U209  ( .A(n292), .B(\fifo/n58 ), .C(n158), .Y(\fifo/n293 ) );
  OAI21X1 \fifo/U207  ( .A(n292), .B(\fifo/n57 ), .C(n188), .Y(\fifo/n292 ) );
  OAI21X1 \fifo/U205  ( .A(n292), .B(\fifo/n56 ), .C(n104), .Y(\fifo/n291 ) );
  OAI21X1 \fifo/U203  ( .A(n292), .B(\fifo/n55 ), .C(n210), .Y(\fifo/n290 ) );
  OAI21X1 \fifo/U201  ( .A(n292), .B(\fifo/n54 ), .C(n115), .Y(\fifo/n289 ) );
  OAI21X1 \fifo/U199  ( .A(n292), .B(\fifo/n53 ), .C(n93), .Y(\fifo/n288 ) );
  NAND3X1 \fifo/U198  ( .A(n304), .B(\fifo/n78 ), .C(n208), .Y(\fifo/n144 ) );
  OAI21X1 \fifo/U196  ( .A(\fifo/n96 ), .B(n291), .C(n86), .Y(\fifo/n287 ) );
  OAI21X1 \fifo/U194  ( .A(\fifo/n95 ), .B(n291), .C(n38), .Y(\fifo/n286 ) );
  OAI21X1 \fifo/U192  ( .A(\fifo/n94 ), .B(n291), .C(n108), .Y(\fifo/n285 ) );
  OAI21X1 \fifo/U190  ( .A(\fifo/n93 ), .B(n291), .C(n97), .Y(\fifo/n284 ) );
  OAI21X1 \fifo/U188  ( .A(\fifo/n92 ), .B(n291), .C(n133), .Y(\fifo/n283 ) );
  OAI21X1 \fifo/U186  ( .A(\fifo/n91 ), .B(n291), .C(n118), .Y(\fifo/n282 ) );
  OAI21X1 \fifo/U184  ( .A(\fifo/n90 ), .B(n291), .C(n213), .Y(\fifo/n281 ) );
  OAI21X1 \fifo/U182  ( .A(\fifo/n89 ), .B(n291), .C(n162), .Y(\fifo/n280 ) );
  OAI21X1 \fifo/U179  ( .A(\fifo/n135 ), .B(\fifo/n52 ), .C(n94), .Y(
        \fifo/n279 ) );
  OAI21X1 \fifo/U177  ( .A(\fifo/n135 ), .B(\fifo/n51 ), .C(n37), .Y(
        \fifo/n278 ) );
  OAI21X1 \fifo/U175  ( .A(\fifo/n135 ), .B(\fifo/n50 ), .C(n116), .Y(
        \fifo/n277 ) );
  OAI21X1 \fifo/U173  ( .A(\fifo/n135 ), .B(\fifo/n49 ), .C(n130), .Y(
        \fifo/n276 ) );
  OAI21X1 \fifo/U171  ( .A(\fifo/n135 ), .B(\fifo/n48 ), .C(n189), .Y(
        \fifo/n275 ) );
  OAI21X1 \fifo/U169  ( .A(\fifo/n135 ), .B(\fifo/n47 ), .C(n159), .Y(
        \fifo/n274 ) );
  OAI21X1 \fifo/U167  ( .A(\fifo/n135 ), .B(\fifo/n46 ), .C(n211), .Y(
        \fifo/n273 ) );
  OAI21X1 \fifo/U165  ( .A(\fifo/n135 ), .B(\fifo/n45 ), .C(n105), .Y(
        \fifo/n272 ) );
  NOR3X1 \fifo/U164  ( .A(n240), .B(n305), .C(n81), .Y(\fifo/n124 ) );
  OAI21X1 \fifo/U162  ( .A(n290), .B(\fifo/n44 ), .C(n36), .Y(\fifo/n271 ) );
  OAI21X1 \fifo/U160  ( .A(n290), .B(\fifo/n43 ), .C(n88), .Y(\fifo/n270 ) );
  OAI21X1 \fifo/U158  ( .A(n290), .B(\fifo/n42 ), .C(n99), .Y(\fifo/n269 ) );
  OAI21X1 \fifo/U156  ( .A(n290), .B(\fifo/n41 ), .C(n110), .Y(\fifo/n268 ) );
  OAI21X1 \fifo/U154  ( .A(n290), .B(\fifo/n40 ), .C(n120), .Y(\fifo/n267 ) );
  OAI21X1 \fifo/U152  ( .A(n290), .B(\fifo/n39 ), .C(n135), .Y(\fifo/n266 ) );
  OAI21X1 \fifo/U150  ( .A(n290), .B(\fifo/n38 ), .C(n164), .Y(\fifo/n265 ) );
  OAI21X1 \fifo/U148  ( .A(n290), .B(\fifo/n37 ), .C(n192), .Y(\fifo/n264 ) );
  NOR3X1 \fifo/U147  ( .A(\fifo/n79 ), .B(\fifo/n78 ), .C(n82), .Y(\fifo/n114 ) );
  OAI21X1 \fifo/U145  ( .A(n289), .B(\fifo/n36 ), .C(n84), .Y(\fifo/n263 ) );
  OAI21X1 \fifo/U143  ( .A(n289), .B(\fifo/n35 ), .C(n95), .Y(\fifo/n262 ) );
  OAI21X1 \fifo/U141  ( .A(n289), .B(\fifo/n34 ), .C(n106), .Y(\fifo/n261 ) );
  OAI21X1 \fifo/U139  ( .A(n289), .B(\fifo/n33 ), .C(n117), .Y(\fifo/n260 ) );
  OAI21X1 \fifo/U137  ( .A(n289), .B(\fifo/n32 ), .C(n160), .Y(\fifo/n259 ) );
  OAI21X1 \fifo/U135  ( .A(n289), .B(\fifo/n31 ), .C(n190), .Y(\fifo/n258 ) );
  OAI21X1 \fifo/U133  ( .A(n289), .B(\fifo/n30 ), .C(n131), .Y(\fifo/n257 ) );
  OAI21X1 \fifo/U131  ( .A(n289), .B(\fifo/n29 ), .C(n212), .Y(\fifo/n256 ) );
  NAND3X1 \fifo/U130  ( .A(n286), .B(n304), .C(n208), .Y(\fifo/n104 ) );
  OAI21X1 \fifo/U128  ( .A(n288), .B(\fifo/n96 ), .C(n35), .Y(\fifo/n255 ) );
  OAI21X1 \fifo/U126  ( .A(n288), .B(\fifo/n95 ), .C(n87), .Y(\fifo/n254 ) );
  OAI21X1 \fifo/U124  ( .A(n288), .B(\fifo/n94 ), .C(n98), .Y(\fifo/n253 ) );
  OAI21X1 \fifo/U122  ( .A(n288), .B(\fifo/n93 ), .C(n109), .Y(\fifo/n252 ) );
  OAI21X1 \fifo/U120  ( .A(n288), .B(\fifo/n92 ), .C(n119), .Y(\fifo/n251 ) );
  OAI21X1 \fifo/U118  ( .A(n288), .B(\fifo/n91 ), .C(n134), .Y(\fifo/n250 ) );
  OAI21X1 \fifo/U116  ( .A(n288), .B(\fifo/n90 ), .C(n163), .Y(\fifo/n249 ) );
  OAI21X1 \fifo/U114  ( .A(n288), .B(\fifo/n89 ), .C(n214), .Y(\fifo/n248 ) );
  XNOR2X1 \fifo/U112  ( .A(n274), .B(n180), .Y(\fifo/n247 ) );
  XOR2X1 \fifo/U109  ( .A(\fifo/n86 ), .B(n182), .Y(\fifo/n245 ) );
  AOI21X1 \fifo/U108  ( .A(\fifo/n232 ), .B(\fifo/n100 ), .C(\fifo/n231 ), .Y(
        \fifo/n99 ) );
  OAI21X1 \fifo/U107  ( .A(\fifo/n100 ), .B(\fifo/n84 ), .C(n26), .Y(
        \fifo/n244 ) );
  XNOR2X1 \fifo/U105  ( .A(n273), .B(n154), .Y(\fifo/n243 ) );
  DFFPOSX1 \fifo/data_reg[0][0]  ( .D(\fifo/n311 ), .CLK(Wclk), .Q(
        \fifo/data[0][0] ) );
  DFFPOSX1 \fifo/data_reg[0][1]  ( .D(\fifo/n310 ), .CLK(Wclk), .Q(
        \fifo/data[0][1] ) );
  DFFPOSX1 \fifo/data_reg[0][2]  ( .D(\fifo/n309 ), .CLK(Wclk), .Q(
        \fifo/data[0][2] ) );
  DFFPOSX1 \fifo/data_reg[0][3]  ( .D(\fifo/n308 ), .CLK(Wclk), .Q(
        \fifo/data[0][3] ) );
  DFFPOSX1 \fifo/data_reg[0][4]  ( .D(\fifo/n307 ), .CLK(Wclk), .Q(
        \fifo/data[0][4] ) );
  DFFPOSX1 \fifo/data_reg[0][5]  ( .D(\fifo/n306 ), .CLK(Wclk), .Q(
        \fifo/data[0][5] ) );
  DFFPOSX1 \fifo/data_reg[0][6]  ( .D(\fifo/n305 ), .CLK(Wclk), .Q(
        \fifo/data[0][6] ) );
  DFFPOSX1 \fifo/data_reg[0][7]  ( .D(\fifo/n304 ), .CLK(Wclk), .Q(
        \fifo/data[0][7] ) );
  DFFPOSX1 \fifo/data_reg[2][0]  ( .D(\fifo/n295 ), .CLK(Wclk), .Q(
        \fifo/data[2][0] ) );
  DFFPOSX1 \fifo/data_reg[2][1]  ( .D(\fifo/n294 ), .CLK(Wclk), .Q(
        \fifo/data[2][1] ) );
  DFFPOSX1 \fifo/data_reg[2][2]  ( .D(\fifo/n293 ), .CLK(Wclk), .Q(
        \fifo/data[2][2] ) );
  DFFPOSX1 \fifo/data_reg[2][3]  ( .D(\fifo/n292 ), .CLK(Wclk), .Q(
        \fifo/data[2][3] ) );
  DFFPOSX1 \fifo/data_reg[2][4]  ( .D(\fifo/n291 ), .CLK(Wclk), .Q(
        \fifo/data[2][4] ) );
  DFFPOSX1 \fifo/data_reg[2][5]  ( .D(\fifo/n290 ), .CLK(Wclk), .Q(
        \fifo/data[2][5] ) );
  DFFPOSX1 \fifo/data_reg[2][6]  ( .D(\fifo/n289 ), .CLK(Wclk), .Q(
        \fifo/data[2][6] ) );
  DFFPOSX1 \fifo/data_reg[2][7]  ( .D(\fifo/n288 ), .CLK(Wclk), .Q(
        \fifo/data[2][7] ) );
  DFFPOSX1 \fifo/data_reg[4][0]  ( .D(\fifo/n279 ), .CLK(Wclk), .Q(
        \fifo/data[4][0] ) );
  DFFPOSX1 \fifo/data_reg[4][1]  ( .D(\fifo/n278 ), .CLK(Wclk), .Q(
        \fifo/data[4][1] ) );
  DFFPOSX1 \fifo/data_reg[4][2]  ( .D(\fifo/n277 ), .CLK(Wclk), .Q(
        \fifo/data[4][2] ) );
  DFFPOSX1 \fifo/data_reg[4][3]  ( .D(\fifo/n276 ), .CLK(Wclk), .Q(
        \fifo/data[4][3] ) );
  DFFPOSX1 \fifo/data_reg[4][4]  ( .D(\fifo/n275 ), .CLK(Wclk), .Q(
        \fifo/data[4][4] ) );
  DFFPOSX1 \fifo/data_reg[4][5]  ( .D(\fifo/n274 ), .CLK(Wclk), .Q(
        \fifo/data[4][5] ) );
  DFFPOSX1 \fifo/data_reg[4][6]  ( .D(\fifo/n273 ), .CLK(Wclk), .Q(
        \fifo/data[4][6] ) );
  DFFPOSX1 \fifo/data_reg[4][7]  ( .D(\fifo/n272 ), .CLK(Wclk), .Q(
        \fifo/data[4][7] ) );
  DFFPOSX1 \fifo/data_reg[6][0]  ( .D(\fifo/n263 ), .CLK(Wclk), .Q(
        \fifo/data[6][0] ) );
  DFFPOSX1 \fifo/data_reg[6][1]  ( .D(\fifo/n262 ), .CLK(Wclk), .Q(
        \fifo/data[6][1] ) );
  DFFPOSX1 \fifo/data_reg[6][2]  ( .D(\fifo/n261 ), .CLK(Wclk), .Q(
        \fifo/data[6][2] ) );
  DFFPOSX1 \fifo/data_reg[6][3]  ( .D(\fifo/n260 ), .CLK(Wclk), .Q(
        \fifo/data[6][3] ) );
  DFFPOSX1 \fifo/data_reg[6][4]  ( .D(\fifo/n259 ), .CLK(Wclk), .Q(
        \fifo/data[6][4] ) );
  DFFPOSX1 \fifo/data_reg[6][5]  ( .D(\fifo/n258 ), .CLK(Wclk), .Q(
        \fifo/data[6][5] ) );
  DFFPOSX1 \fifo/data_reg[6][6]  ( .D(\fifo/n257 ), .CLK(Wclk), .Q(
        \fifo/data[6][6] ) );
  DFFPOSX1 \fifo/data_reg[6][7]  ( .D(\fifo/n256 ), .CLK(Wclk), .Q(
        \fifo/data[6][7] ) );
  DFFPOSX1 \fifo/data_reg[1][0]  ( .D(\fifo/n303 ), .CLK(Wclk), .Q(
        \fifo/data[1][0] ) );
  DFFPOSX1 \fifo/data_reg[1][1]  ( .D(\fifo/n302 ), .CLK(Wclk), .Q(
        \fifo/data[1][1] ) );
  DFFPOSX1 \fifo/data_reg[1][2]  ( .D(\fifo/n301 ), .CLK(Wclk), .Q(
        \fifo/data[1][2] ) );
  DFFPOSX1 \fifo/data_reg[1][3]  ( .D(\fifo/n300 ), .CLK(Wclk), .Q(
        \fifo/data[1][3] ) );
  DFFPOSX1 \fifo/data_reg[1][4]  ( .D(\fifo/n299 ), .CLK(Wclk), .Q(
        \fifo/data[1][4] ) );
  DFFPOSX1 \fifo/data_reg[1][5]  ( .D(\fifo/n298 ), .CLK(Wclk), .Q(
        \fifo/data[1][5] ) );
  DFFPOSX1 \fifo/data_reg[1][6]  ( .D(\fifo/n297 ), .CLK(Wclk), .Q(
        \fifo/data[1][6] ) );
  DFFPOSX1 \fifo/data_reg[1][7]  ( .D(\fifo/n296 ), .CLK(Wclk), .Q(
        \fifo/data[1][7] ) );
  DFFPOSX1 \fifo/data_reg[3][0]  ( .D(\fifo/n287 ), .CLK(Wclk), .Q(
        \fifo/data[3][0] ) );
  DFFPOSX1 \fifo/data_reg[3][1]  ( .D(\fifo/n286 ), .CLK(Wclk), .Q(
        \fifo/data[3][1] ) );
  DFFPOSX1 \fifo/data_reg[3][2]  ( .D(\fifo/n285 ), .CLK(Wclk), .Q(
        \fifo/data[3][2] ) );
  DFFPOSX1 \fifo/data_reg[3][3]  ( .D(\fifo/n284 ), .CLK(Wclk), .Q(
        \fifo/data[3][3] ) );
  DFFPOSX1 \fifo/data_reg[3][4]  ( .D(\fifo/n283 ), .CLK(Wclk), .Q(
        \fifo/data[3][4] ) );
  DFFPOSX1 \fifo/data_reg[3][5]  ( .D(\fifo/n282 ), .CLK(Wclk), .Q(
        \fifo/data[3][5] ) );
  DFFPOSX1 \fifo/data_reg[3][6]  ( .D(\fifo/n281 ), .CLK(Wclk), .Q(
        \fifo/data[3][6] ) );
  DFFPOSX1 \fifo/data_reg[3][7]  ( .D(\fifo/n280 ), .CLK(Wclk), .Q(
        \fifo/data[3][7] ) );
  DFFSR \fifo/rd_ptr_w1ff_reg[2]  ( .D(n24), .CLK(Wclk), .R(n302), .S(1'b1), 
        .Q(\fifo/rd_ptr_w1ff [2]) );
  DFFSR \fifo/rd_ptr_wff_reg[2]  ( .D(\fifo/rd_ptr_gray [2]), .CLK(Wclk), .R(
        n303), .S(1'b1), .Q(\fifo/rd_ptr_wff [2]) );
  DFFSR \fifo/rd_ptr_w1ff_reg[3]  ( .D(n23), .CLK(Wclk), .R(n303), .S(1'b1), 
        .Q(\fifo/rd_ptr_w1ff [3]) );
  DFFSR \fifo/rd_ptr_wff_reg[3]  ( .D(n273), .CLK(Wclk), .R(n303), .S(1'b1), 
        .Q(\fifo/rd_ptr_wff [3]) );
  DFFSR \fifo/rd_ptr_reg[3]  ( .D(\fifo/n243 ), .CLK(Rclk), .R(n303), .S(1'b1), 
        .Q(\fifo/rd_ptr [3]) );
  DFFSR \fifo/rd_ptr_w1ff_reg[1]  ( .D(n22), .CLK(Wclk), .R(n303), .S(1'b1), 
        .Q(\fifo/rd_ptr_w1ff [1]) );
  DFFSR \fifo/rd_ptr_wff_reg[1]  ( .D(n202), .CLK(Wclk), .R(n303), .S(1'b1), 
        .Q(\fifo/rd_ptr_wff [1]) );
  DFFSR \fifo/rd_ptr_reg[2]  ( .D(\fifo/n244 ), .CLK(Rclk), .R(n303), .S(1'b1), 
        .Q(\fifo/rd_ptr [2]) );
  DFFSR \fifo/rd_ptr_reg[1]  ( .D(\fifo/n245 ), .CLK(Rclk), .R(n303), .S(1'b1), 
        .Q(\fifo/rd_ptr [1]) );
  DFFSR \fifo/rd_ptr_reg[0]  ( .D(\fifo/n246 ), .CLK(Rclk), .R(n303), .S(1'b1), 
        .Q(\fifo/rd_ptr [0]) );
  DFFSR \fifo/wr_ptr_r1ff_reg[2]  ( .D(n21), .CLK(Rclk), .R(n303), .S(1'b1), 
        .Q(\fifo/wr_ptr_r1ff [2]) );
  DFFSR \fifo/wr_ptr_rff_reg[2]  ( .D(\fifo/wr_ptr_gray [2]), .CLK(Rclk), .R(
        n303), .S(1'b1), .Q(\fifo/wr_ptr_rff [2]) );
  DFFSR \fifo/wr_ptr_r1ff_reg[3]  ( .D(n20), .CLK(Rclk), .R(n302), .S(1'b1), 
        .Q(\fifo/wr_ptr_r1ff [3]) );
  DFFSR \fifo/wr_ptr_rff_reg[3]  ( .D(n274), .CLK(Rclk), .R(n302), .S(1'b1), 
        .Q(\fifo/wr_ptr_rff [3]) );
  DFFSR \fifo/wr_ptr_reg[3]  ( .D(\fifo/n247 ), .CLK(Wclk), .R(n302), .S(1'b1), 
        .Q(\fifo/wr_ptr [3]) );
  DFFPOSX1 \fifo/data_reg[7][0]  ( .D(\fifo/n255 ), .CLK(Wclk), .Q(
        \fifo/data[7][0] ) );
  DFFPOSX1 \fifo/data_reg[7][1]  ( .D(\fifo/n254 ), .CLK(Wclk), .Q(
        \fifo/data[7][1] ) );
  DFFPOSX1 \fifo/data_reg[7][2]  ( .D(\fifo/n253 ), .CLK(Wclk), .Q(
        \fifo/data[7][2] ) );
  DFFPOSX1 \fifo/data_reg[7][3]  ( .D(\fifo/n252 ), .CLK(Wclk), .Q(
        \fifo/data[7][3] ) );
  DFFPOSX1 \fifo/data_reg[7][4]  ( .D(\fifo/n251 ), .CLK(Wclk), .Q(
        \fifo/data[7][4] ) );
  DFFPOSX1 \fifo/data_reg[7][5]  ( .D(\fifo/n250 ), .CLK(Wclk), .Q(
        \fifo/data[7][5] ) );
  DFFPOSX1 \fifo/data_reg[7][6]  ( .D(\fifo/n249 ), .CLK(Wclk), .Q(
        \fifo/data[7][6] ) );
  DFFPOSX1 \fifo/data_reg[7][7]  ( .D(\fifo/n248 ), .CLK(Wclk), .Q(
        \fifo/data[7][7] ) );
  DFFSR \fifo/wr_ptr_r1ff_reg[1]  ( .D(n19), .CLK(Rclk), .R(n302), .S(1'b1), 
        .Q(\fifo/wr_ptr_r1ff [1]) );
  DFFSR \fifo/wr_ptr_rff_reg[1]  ( .D(\fifo/wr_ptr_gray [1]), .CLK(Rclk), .R(
        n302), .S(1'b1), .Q(\fifo/wr_ptr_rff [1]) );
  DFFPOSX1 \fifo/data_reg[5][0]  ( .D(\fifo/n271 ), .CLK(Wclk), .Q(
        \fifo/data[5][0] ) );
  DFFPOSX1 \fifo/data_reg[5][1]  ( .D(\fifo/n270 ), .CLK(Wclk), .Q(
        \fifo/data[5][1] ) );
  DFFPOSX1 \fifo/data_reg[5][2]  ( .D(\fifo/n269 ), .CLK(Wclk), .Q(
        \fifo/data[5][2] ) );
  DFFPOSX1 \fifo/data_reg[5][3]  ( .D(\fifo/n268 ), .CLK(Wclk), .Q(
        \fifo/data[5][3] ) );
  DFFPOSX1 \fifo/data_reg[5][4]  ( .D(\fifo/n267 ), .CLK(Wclk), .Q(
        \fifo/data[5][4] ) );
  DFFPOSX1 \fifo/data_reg[5][5]  ( .D(\fifo/n266 ), .CLK(Wclk), .Q(
        \fifo/data[5][5] ) );
  DFFPOSX1 \fifo/data_reg[5][6]  ( .D(\fifo/n265 ), .CLK(Wclk), .Q(
        \fifo/data[5][6] ) );
  DFFPOSX1 \fifo/data_reg[5][7]  ( .D(\fifo/n264 ), .CLK(Wclk), .Q(
        \fifo/data[5][7] ) );
  DFFSR \fifo/wr_ptr_reg[2]  ( .D(\fifo/n312 ), .CLK(Wclk), .R(n302), .S(1'b1), 
        .Q(\fifo/wr_ptr [2]) );
  DFFSR \fifo/wr_ptr_r1ff_reg[0]  ( .D(n18), .CLK(Rclk), .R(n302), .S(1'b1), 
        .Q(\fifo/wr_ptr_r1ff [0]) );
  DFFSR \fifo/wr_ptr_rff_reg[0]  ( .D(\fifo/wr_ptr_gray [0]), .CLK(Rclk), .R(
        n302), .S(1'b1), .Q(\fifo/wr_ptr_rff [0]) );
  DFFSR \fifo/wr_ptr_reg[1]  ( .D(\fifo/n313 ), .CLK(Wclk), .R(n303), .S(1'b1), 
        .Q(\fifo/wr_ptr [1]) );
  DFFSR \fifo/wr_ptr_reg[0]  ( .D(\fifo/n314 ), .CLK(Wclk), .R(n302), .S(1'b1), 
        .Q(\fifo/wr_ptr [0]) );
  DFFSR \fifo/rd_ptr_w1ff_reg[0]  ( .D(n17), .CLK(Wclk), .R(n302), .S(1'b1), 
        .Q(\fifo/rd_ptr_w1ff [0]) );
  DFFSR \fifo/rd_ptr_wff_reg[0]  ( .D(\fifo/rd_ptr_gray [0]), .CLK(Wclk), .R(
        n302), .S(1'b1), .Q(\fifo/rd_ptr_wff [0]) );
  INVX1 \Accum1/U113  ( .A(n227), .Y(\Accum1/n67 ) );
  OAI21X1 \Accum1/U111  ( .A(n222), .B(\Accum1/n67 ), .C(n34), .Y(
        \Accum1/n154 ) );
  OAI21X1 \Accum1/U108  ( .A(n306), .B(\Accum1/n67 ), .C(n140), .Y(
        \Accum1/n151 ) );
  INVX1 \Accum1/U107  ( .A(n270), .Y(\Accum1/n65 ) );
  OAI21X1 \Accum1/U105  ( .A(n306), .B(\Accum1/n65 ), .C(n199), .Y(
        \Accum1/n149 ) );
  INVX1 \Accum1/U104  ( .A(n234), .Y(\Accum1/n63 ) );
  OAI21X1 \Accum1/U102  ( .A(n306), .B(\Accum1/n63 ), .C(n179), .Y(
        \Accum1/n147 ) );
  INVX1 \Accum1/U101  ( .A(n228), .Y(\Accum1/n60 ) );
  OAI21X1 \Accum1/U99  ( .A(n222), .B(\Accum1/n60 ), .C(n33), .Y(\Accum1/n145 ) );
  OAI21X1 \Accum1/U97  ( .A(n306), .B(\Accum1/n60 ), .C(n139), .Y(
        \Accum1/n143 ) );
  INVX1 \Accum1/U96  ( .A(n263), .Y(\Accum1/n58 ) );
  OAI21X1 \Accum1/U94  ( .A(n306), .B(\Accum1/n58 ), .C(n178), .Y(
        \Accum1/n141 ) );
  INVX1 \Accum1/U93  ( .A(n235), .Y(\Accum1/n56 ) );
  OAI21X1 \Accum1/U91  ( .A(n306), .B(\Accum1/n56 ), .C(n151), .Y(
        \Accum1/n139 ) );
  INVX1 \Accum1/U90  ( .A(n226), .Y(\Accum1/n53 ) );
  OAI21X1 \Accum1/U88  ( .A(n222), .B(\Accum1/n53 ), .C(n32), .Y(\Accum1/n137 ) );
  OAI21X1 \Accum1/U86  ( .A(n306), .B(\Accum1/n53 ), .C(n167), .Y(
        \Accum1/n135 ) );
  INVX1 \Accum1/U85  ( .A(n269), .Y(\Accum1/n51 ) );
  OAI21X1 \Accum1/U83  ( .A(n306), .B(\Accum1/n51 ), .C(n198), .Y(
        \Accum1/n133 ) );
  INVX1 \Accum1/U82  ( .A(n233), .Y(\Accum1/n49 ) );
  OAI21X1 \Accum1/U80  ( .A(n306), .B(\Accum1/n49 ), .C(n177), .Y(
        \Accum1/n131 ) );
  INVX1 \Accum1/U79  ( .A(n229), .Y(\Accum1/n46 ) );
  OAI21X1 \Accum1/U77  ( .A(n222), .B(\Accum1/n46 ), .C(n31), .Y(\Accum1/n129 ) );
  OAI21X1 \Accum1/U75  ( .A(n306), .B(\Accum1/n46 ), .C(n138), .Y(
        \Accum1/n127 ) );
  INVX1 \Accum1/U74  ( .A(n264), .Y(\Accum1/n44 ) );
  OAI21X1 \Accum1/U72  ( .A(n306), .B(\Accum1/n44 ), .C(n197), .Y(
        \Accum1/n125 ) );
  INVX1 \Accum1/U71  ( .A(n236), .Y(\Accum1/n42 ) );
  OAI21X1 \Accum1/U69  ( .A(n306), .B(\Accum1/n42 ), .C(n150), .Y(
        \Accum1/n123 ) );
  INVX1 \Accum1/U68  ( .A(n225), .Y(\Accum1/n39 ) );
  OAI21X1 \Accum1/U66  ( .A(n222), .B(\Accum1/n39 ), .C(n30), .Y(\Accum1/n121 ) );
  OAI21X1 \Accum1/U64  ( .A(n306), .B(\Accum1/n39 ), .C(n166), .Y(
        \Accum1/n119 ) );
  INVX1 \Accum1/U63  ( .A(n268), .Y(\Accum1/n37 ) );
  OAI21X1 \Accum1/U61  ( .A(n306), .B(\Accum1/n37 ), .C(n196), .Y(
        \Accum1/n117 ) );
  INVX1 \Accum1/U60  ( .A(n232), .Y(\Accum1/n35 ) );
  OAI21X1 \Accum1/U58  ( .A(n306), .B(\Accum1/n35 ), .C(n176), .Y(
        \Accum1/n115 ) );
  INVX1 \Accum1/U57  ( .A(n230), .Y(\Accum1/n32 ) );
  OAI21X1 \Accum1/U55  ( .A(n222), .B(\Accum1/n32 ), .C(n29), .Y(\Accum1/n113 ) );
  OAI21X1 \Accum1/U53  ( .A(n306), .B(\Accum1/n32 ), .C(n137), .Y(
        \Accum1/n111 ) );
  INVX1 \Accum1/U52  ( .A(n265), .Y(\Accum1/n30 ) );
  OAI21X1 \Accum1/U50  ( .A(n306), .B(\Accum1/n30 ), .C(n175), .Y(
        \Accum1/n109 ) );
  INVX1 \Accum1/U49  ( .A(n237), .Y(\Accum1/n28 ) );
  OAI21X1 \Accum1/U47  ( .A(n306), .B(\Accum1/n28 ), .C(n149), .Y(
        \Accum1/n107 ) );
  INVX1 \Accum1/U46  ( .A(n224), .Y(\Accum1/n25 ) );
  OAI21X1 \Accum1/U44  ( .A(n222), .B(\Accum1/n25 ), .C(n28), .Y(\Accum1/n105 ) );
  OAI21X1 \Accum1/U42  ( .A(n306), .B(\Accum1/n25 ), .C(n165), .Y(
        \Accum1/n103 ) );
  INVX1 \Accum1/U41  ( .A(n267), .Y(\Accum1/n23 ) );
  OAI21X1 \Accum1/U39  ( .A(n306), .B(\Accum1/n23 ), .C(n195), .Y(
        \Accum1/n101 ) );
  INVX1 \Accum1/U38  ( .A(n231), .Y(\Accum1/n21 ) );
  OAI21X1 \Accum1/U36  ( .A(n306), .B(\Accum1/n21 ), .C(n174), .Y(\Accum1/n99 ) );
  INVX1 \Accum1/U35  ( .A(n185), .Y(\Accum1/n17 ) );
  OAI21X1 \Accum1/U33  ( .A(n222), .B(\Accum1/n17 ), .C(n27), .Y(\Accum1/n97 )
         );
  OAI21X1 \Accum1/U31  ( .A(n306), .B(\Accum1/n17 ), .C(n136), .Y(\Accum1/n95 ) );
  INVX1 \Accum1/U30  ( .A(n266), .Y(\Accum1/n15 ) );
  OAI21X1 \Accum1/U28  ( .A(n306), .B(\Accum1/n15 ), .C(n194), .Y(\Accum1/n93 ) );
  INVX1 \Accum1/U27  ( .A(n238), .Y(\Accum1/n13 ) );
  OAI21X1 \Accum1/U25  ( .A(n306), .B(\Accum1/n13 ), .C(n173), .Y(\Accum1/n91 ) );
  XNOR2X1 \Accum1/U24  ( .A(n252), .B(n306), .Y(\Accum1/n89 ) );
  INVX1 \Accum1/U23  ( .A(n252), .Y(\Accum1/n12 ) );
  OAI21X1 \Accum1/U20  ( .A(n306), .B(\Accum1/n12 ), .C(n251), .Y(\Accum1/n11 ) );
  OAI21X1 \Accum1/U19  ( .A(n306), .B(n285), .C(\Accum1/n11 ), .Y(\Accum1/n87 ) );
  AOI22X1 \Accum1/U18  ( .A(\Accum1/cla3_dat [9]), .B(\Accum1/n2 ), .C(
        AverageOut[7]), .D(n285), .Y(\Accum1/n10 ) );
  INVX1 \Accum1/U17  ( .A(n15), .Y(\Accum1/n85 ) );
  AOI22X1 \Accum1/U16  ( .A(\Accum1/cla3_dat [8]), .B(\Accum1/n2 ), .C(
        AverageOut[6]), .D(n285), .Y(\Accum1/n9 ) );
  INVX1 \Accum1/U15  ( .A(n14), .Y(\Accum1/n83 ) );
  AOI22X1 \Accum1/U14  ( .A(\Accum1/cla3_dat [7]), .B(\Accum1/n2 ), .C(
        AverageOut[5]), .D(n285), .Y(\Accum1/n8 ) );
  INVX1 \Accum1/U13  ( .A(n13), .Y(\Accum1/n81 ) );
  AOI22X1 \Accum1/U12  ( .A(\Accum1/cla3_dat [6]), .B(\Accum1/n2 ), .C(
        AverageOut[4]), .D(n285), .Y(\Accum1/n7 ) );
  INVX1 \Accum1/U11  ( .A(n12), .Y(\Accum1/n79 ) );
  AOI22X1 \Accum1/U10  ( .A(\Accum1/cla3_dat [5]), .B(\Accum1/n2 ), .C(
        AverageOut[3]), .D(n285), .Y(\Accum1/n6 ) );
  INVX1 \Accum1/U9  ( .A(n11), .Y(\Accum1/n77 ) );
  AOI22X1 \Accum1/U8  ( .A(\Accum1/cla3_dat [4]), .B(\Accum1/n2 ), .C(
        AverageOut[2]), .D(n285), .Y(\Accum1/n5 ) );
  INVX1 \Accum1/U7  ( .A(n10), .Y(\Accum1/n75 ) );
  AOI22X1 \Accum1/U6  ( .A(\Accum1/cla3_dat [3]), .B(\Accum1/n2 ), .C(
        AverageOut[1]), .D(n285), .Y(\Accum1/n4 ) );
  INVX1 \Accum1/U5  ( .A(n9), .Y(\Accum1/n73 ) );
  AOI22X1 \Accum1/U4  ( .A(\Accum1/cla3_dat [2]), .B(\Accum1/n2 ), .C(
        AverageOut[0]), .D(n285), .Y(\Accum1/n1 ) );
  INVX1 \Accum1/U3  ( .A(n8), .Y(\Accum1/n71 ) );
  DFFSR \Accum1/Average_o_reg[0]  ( .D(\Accum1/n71 ), .CLK(Rclk), .R(n300), 
        .S(1'b1), .Q(n400) );
  DFFSR \Accum1/Average_o_reg[1]  ( .D(\Accum1/n73 ), .CLK(Rclk), .R(n300), 
        .S(1'b1), .Q(n399) );
  DFFSR \Accum1/Average_o_reg[2]  ( .D(\Accum1/n75 ), .CLK(Rclk), .R(n300), 
        .S(1'b1), .Q(n398) );
  DFFSR \Accum1/Average_o_reg[3]  ( .D(\Accum1/n77 ), .CLK(Rclk), .R(n300), 
        .S(1'b1), .Q(n397) );
  DFFSR \Accum1/Average_o_reg[4]  ( .D(\Accum1/n79 ), .CLK(Rclk), .R(n300), 
        .S(1'b1), .Q(n396) );
  DFFSR \Accum1/Average_o_reg[5]  ( .D(\Accum1/n81 ), .CLK(Rclk), .R(n300), 
        .S(1'b1), .Q(n395) );
  DFFSR \Accum1/Average_o_reg[6]  ( .D(\Accum1/n83 ), .CLK(Rclk), .R(n299), 
        .S(1'b1), .Q(n394) );
  DFFSR \Accum1/Average_o_reg[7]  ( .D(\Accum1/n85 ), .CLK(Rclk), .R(n299), 
        .S(1'b1), .Q(n393) );
  DFFSR \Accum1/counter_reg[1]  ( .D(\Accum1/n87 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/counter [1]) );
  DFFSR \Accum1/counter_reg[0]  ( .D(\Accum1/n89 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/counter [0]) );
  DFFSR \Accum1/hold_reg[3][0]  ( .D(\Accum1/n91 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/hold[3][0] ) );
  DFFSR \Accum1/hold_reg[2][0]  ( .D(\Accum1/n93 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/hold[2][0] ) );
  DFFSR \Accum1/hold_reg[1][0]  ( .D(\Accum1/n95 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/hold[1][0] ) );
  DFFSR \Accum1/hold_reg[0][0]  ( .D(\Accum1/n97 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/hold[0][0] ) );
  DFFSR \Accum1/hold_reg[3][1]  ( .D(\Accum1/n99 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/hold[3][1] ) );
  DFFSR \Accum1/hold_reg[2][1]  ( .D(\Accum1/n101 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/hold[2][1] ) );
  DFFSR \Accum1/hold_reg[1][1]  ( .D(\Accum1/n103 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/hold[1][1] ) );
  DFFSR \Accum1/hold_reg[0][1]  ( .D(\Accum1/n105 ), .CLK(Rclk), .R(n299), .S(
        1'b1), .Q(\Accum1/hold[0][1] ) );
  DFFSR \Accum1/hold_reg[3][2]  ( .D(\Accum1/n107 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[3][2] ) );
  DFFSR \Accum1/hold_reg[2][2]  ( .D(\Accum1/n109 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[2][2] ) );
  DFFSR \Accum1/hold_reg[1][2]  ( .D(\Accum1/n111 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[1][2] ) );
  DFFSR \Accum1/hold_reg[0][2]  ( .D(\Accum1/n113 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[0][2] ) );
  DFFSR \Accum1/hold_reg[3][3]  ( .D(\Accum1/n115 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[3][3] ) );
  DFFSR \Accum1/hold_reg[2][3]  ( .D(\Accum1/n117 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[2][3] ) );
  DFFSR \Accum1/hold_reg[1][3]  ( .D(\Accum1/n119 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[1][3] ) );
  DFFSR \Accum1/hold_reg[0][3]  ( .D(\Accum1/n121 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[0][3] ) );
  DFFSR \Accum1/hold_reg[3][4]  ( .D(\Accum1/n123 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[3][4] ) );
  DFFSR \Accum1/hold_reg[2][4]  ( .D(\Accum1/n125 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[2][4] ) );
  DFFSR \Accum1/hold_reg[1][4]  ( .D(\Accum1/n127 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[1][4] ) );
  DFFSR \Accum1/hold_reg[0][4]  ( .D(\Accum1/n129 ), .CLK(Rclk), .R(n298), .S(
        1'b1), .Q(\Accum1/hold[0][4] ) );
  DFFSR \Accum1/hold_reg[3][5]  ( .D(\Accum1/n131 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[3][5] ) );
  DFFSR \Accum1/hold_reg[2][5]  ( .D(\Accum1/n133 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[2][5] ) );
  DFFSR \Accum1/hold_reg[1][5]  ( .D(\Accum1/n135 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[1][5] ) );
  DFFSR \Accum1/hold_reg[0][5]  ( .D(\Accum1/n137 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[0][5] ) );
  DFFSR \Accum1/hold_reg[3][6]  ( .D(\Accum1/n139 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[3][6] ) );
  DFFSR \Accum1/hold_reg[2][6]  ( .D(\Accum1/n141 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[2][6] ) );
  DFFSR \Accum1/hold_reg[1][6]  ( .D(\Accum1/n143 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[1][6] ) );
  DFFSR \Accum1/hold_reg[0][6]  ( .D(\Accum1/n145 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[0][6] ) );
  DFFSR \Accum1/hold_reg[3][7]  ( .D(\Accum1/n147 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[3][7] ) );
  DFFSR \Accum1/hold_reg[2][7]  ( .D(\Accum1/n149 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[2][7] ) );
  DFFSR \Accum1/hold_reg[1][7]  ( .D(\Accum1/n151 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[1][7] ) );
  DFFSR \Accum1/hold_reg[0][7]  ( .D(\Accum1/n154 ), .CLK(Rclk), .R(n297), .S(
        1'b1), .Q(\Accum1/hold[0][7] ) );
  AND2X1 \Multi1/U35  ( .A(DataIn1[1]), .B(DataIn2[0]), .Y(\Multi1/ba[0][1] )
         );
  AND2X1 \Multi1/U34  ( .A(DataIn1[2]), .B(DataIn2[0]), .Y(\Multi1/ba[0][2] )
         );
  AND2X1 \Multi1/U33  ( .A(DataIn1[3]), .B(DataIn2[0]), .Y(\Multi1/ba[0][3] )
         );
  AND2X1 \Multi1/U32  ( .A(DataIn2[1]), .B(DataIn1[0]), .Y(\Multi1/ba[1][0] )
         );
  AND2X1 \Multi1/U31  ( .A(DataIn2[1]), .B(DataIn1[1]), .Y(\Multi1/ba[1][1] )
         );
  AND2X1 \Multi1/U30  ( .A(DataIn2[1]), .B(DataIn1[2]), .Y(\Multi1/ba[1][2] )
         );
  AND2X1 \Multi1/U29  ( .A(DataIn2[1]), .B(DataIn1[3]), .Y(\Multi1/ba[1][3] )
         );
  AND2X1 \Multi1/U28  ( .A(DataIn2[2]), .B(DataIn1[0]), .Y(\Multi1/ba[2][0] )
         );
  AND2X1 \Multi1/U27  ( .A(DataIn2[2]), .B(DataIn1[1]), .Y(\Multi1/ba[2][1] )
         );
  AND2X1 \Multi1/U26  ( .A(DataIn2[2]), .B(DataIn1[2]), .Y(\Multi1/ba[2][2] )
         );
  AND2X1 \Multi1/U25  ( .A(DataIn2[2]), .B(DataIn1[3]), .Y(\Multi1/ba[2][3] )
         );
  AND2X1 \Multi1/U24  ( .A(DataIn2[3]), .B(DataIn1[0]), .Y(\Multi1/ba[3][0] )
         );
  AND2X1 \Multi1/U23  ( .A(DataIn1[1]), .B(DataIn2[3]), .Y(\Multi1/ba[3][1] )
         );
  AND2X1 \Multi1/U22  ( .A(DataIn1[2]), .B(DataIn2[3]), .Y(\Multi1/ba[3][2] )
         );
  AND2X1 \Multi1/U21  ( .A(DataIn2[3]), .B(DataIn1[3]), .Y(\Multi1/ba[3][3] )
         );
  AOI22X1 \Multi1/U19  ( .A(\Multi1/Mul[7] ), .B(n186), .C(n282), .D(Wfull), 
        .Y(\Multi1/n10 ) );
  INVX1 \Multi1/U18  ( .A(n141), .Y(\Multi1/n27 ) );
  INVX1 \Multi1/U17  ( .A(Reset), .Y(\Multi1/n25 ) );
  AOI22X1 \Multi1/U16  ( .A(n281), .B(Wfull), .C(\Multi1/adder3 [3]), .D(n186), 
        .Y(\Multi1/n9 ) );
  INVX1 \Multi1/U15  ( .A(n7), .Y(\Multi1/n24 ) );
  AOI22X1 \Multi1/U14  ( .A(n280), .B(Wfull), .C(\Multi1/adder3 [2]), .D(n186), 
        .Y(\Multi1/n8 ) );
  INVX1 \Multi1/U13  ( .A(n6), .Y(\Multi1/n22 ) );
  AOI22X1 \Multi1/U12  ( .A(n279), .B(Wfull), .C(\Multi1/adder3 [1]), .D(n186), 
        .Y(\Multi1/n7 ) );
  INVX1 \Multi1/U11  ( .A(n5), .Y(\Multi1/n20 ) );
  AOI22X1 \Multi1/U10  ( .A(n278), .B(Wfull), .C(\Multi1/adder3 [0]), .D(n186), 
        .Y(\Multi1/n6 ) );
  INVX1 \Multi1/U9  ( .A(n4), .Y(\Multi1/n18 ) );
  AOI22X1 \Multi1/U8  ( .A(n277), .B(Wfull), .C(\Multi1/adder2 [0]), .D(n186), 
        .Y(\Multi1/n5 ) );
  INVX1 \Multi1/U7  ( .A(n3), .Y(\Multi1/n16 ) );
  AOI22X1 \Multi1/U6  ( .A(n276), .B(Wfull), .C(\Multi1/adder1 [0]), .D(n186), 
        .Y(\Multi1/n4 ) );
  INVX1 \Multi1/U5  ( .A(n2), .Y(\Multi1/n14 ) );
  NAND3X1 \Multi1/U3  ( .A(DataIn1[0]), .B(n186), .C(DataIn2[0]), .Y(
        \Multi1/n2 ) );
  DFFSR \Multi1/Mul_o_reg[0]  ( .D(n25), .CLK(Wclk), .R(\Multi1/n25 ), .S(1'b1), .Q(Mul[0]) );
  DFFSR \Multi1/Mul_o_reg[1]  ( .D(\Multi1/n14 ), .CLK(Wclk), .R(\Multi1/n25 ), 
        .S(1'b1), .Q(Mul[1]) );
  DFFSR \Multi1/Mul_o_reg[2]  ( .D(\Multi1/n16 ), .CLK(Wclk), .R(\Multi1/n25 ), 
        .S(1'b1), .Q(Mul[2]) );
  DFFSR \Multi1/Mul_o_reg[3]  ( .D(\Multi1/n18 ), .CLK(Wclk), .R(\Multi1/n25 ), 
        .S(1'b1), .Q(Mul[3]) );
  DFFSR \Multi1/Mul_o_reg[4]  ( .D(\Multi1/n20 ), .CLK(Wclk), .R(\Multi1/n25 ), 
        .S(1'b1), .Q(Mul[4]) );
  DFFSR \Multi1/Mul_o_reg[5]  ( .D(\Multi1/n22 ), .CLK(Wclk), .R(\Multi1/n25 ), 
        .S(1'b1), .Q(Mul[5]) );
  DFFSR \Multi1/Mul_o_reg[6]  ( .D(\Multi1/n24 ), .CLK(Wclk), .R(\Multi1/n25 ), 
        .S(1'b1), .Q(Mul[6]) );
  DFFSR \Multi1/Mul_o_reg[7]  ( .D(\Multi1/n27 ), .CLK(Wclk), .R(\Multi1/n25 ), 
        .S(1'b1), .Q(Mul[7]) );
  XOR2X1 \Multi1/cla1/U16  ( .A(\Multi1/ba[0][1] ), .B(\Multi1/ba[1][0] ), .Y(
        \Multi1/adder1 [0]) );
  XNOR2X1 \Multi1/cla1/U14  ( .A(\Multi1/ba[0][2] ), .B(\Multi1/ba[1][1] ), 
        .Y(\Multi1/cla1/n8 ) );
  XOR2X1 \Multi1/cla1/U12  ( .A(\Multi1/cla1/n8 ), .B(\Multi1/cla1/n7 ), .Y(
        \Multi1/adder1 [1]) );
  OAI21X1 \Multi1/cla1/U10  ( .A(\Multi1/cla1/n7 ), .B(\Multi1/cla1/n8 ), .C(
        n171), .Y(\Multi1/cla1/n4 ) );
  XOR2X1 \Multi1/cla1/U9  ( .A(\Multi1/ba[0][3] ), .B(\Multi1/ba[1][2] ), .Y(
        \Multi1/cla1/n5 ) );
  XOR2X1 \Multi1/cla1/U8  ( .A(\Multi1/cla1/n4 ), .B(\Multi1/cla1/n5 ), .Y(
        \Multi1/adder1 [2]) );
  AOI21X1 \Multi1/cla1/U6  ( .A(\Multi1/cla1/n4 ), .B(\Multi1/cla1/n5 ), .C(
        \Multi1/cla1/n6 ), .Y(\Multi1/cla1/n1 ) );
  XOR2X1 \Multi1/cla1/U5  ( .A(\Multi1/cla1/n2 ), .B(n219), .Y(
        \Multi1/adder1 [3]) );
  XOR2X1 \Accum1/cla3/cla3/U16  ( .A(\Accum1/cla1_cout ), .B(
        \Accum1/cla2_cout ), .Y(n391) );
  XOR2X1 \Accum1/cla3/cla3/U15  ( .A(\Accum1/cla3/cout2 ), .B(n391), .Y(
        \Accum1/cla3_dat [8]) );
  AOI21X1 \Accum1/cla3/cla3/U13  ( .A(n391), .B(\Accum1/cla3/cout2 ), .C(n392), 
        .Y(n390) );
  XOR2X1 \Accum1/cla3/cla2/U16  ( .A(\Accum1/cla1_dat [4]), .B(
        \Accum1/cla2_dat [4]), .Y(n388) );
  XOR2X1 \Accum1/cla3/cla2/U15  ( .A(\Accum1/cla3/cout1 ), .B(n388), .Y(
        \Accum1/cla3_dat [4]) );
  XNOR2X1 \Accum1/cla3/cla2/U14  ( .A(\Accum1/cla1_dat [5]), .B(
        \Accum1/cla2_dat [5]), .Y(n386) );
  AOI21X1 \Accum1/cla3/cla2/U13  ( .A(n388), .B(\Accum1/cla3/cout1 ), .C(n389), 
        .Y(n385) );
  XOR2X1 \Accum1/cla3/cla2/U12  ( .A(n386), .B(n221), .Y(\Accum1/cla3_dat [5])
         );
  OAI21X1 \Accum1/cla3/cla2/U10  ( .A(n221), .B(n386), .C(n144), .Y(n382) );
  XOR2X1 \Accum1/cla3/cla2/U9  ( .A(\Accum1/cla1_dat [6]), .B(
        \Accum1/cla2_dat [6]), .Y(n383) );
  XOR2X1 \Accum1/cla3/cla2/U8  ( .A(n382), .B(n383), .Y(\Accum1/cla3_dat [6])
         );
  XNOR2X1 \Accum1/cla3/cla2/U7  ( .A(\Accum1/cla1_dat [7]), .B(
        \Accum1/cla2_dat [7]), .Y(n380) );
  AOI21X1 \Accum1/cla3/cla2/U6  ( .A(n382), .B(n383), .C(n384), .Y(n379) );
  XOR2X1 \Accum1/cla3/cla2/U5  ( .A(n380), .B(n254), .Y(\Accum1/cla3_dat [7])
         );
  OAI21X1 \Accum1/cla3/cla2/U3  ( .A(n254), .B(n380), .C(n172), .Y(
        \Accum1/cla3/cout2 ) );
  XNOR2X1 \Accum1/cla3/cla1/U14  ( .A(\Accum1/cla1_dat [1]), .B(
        \Accum1/cla2_dat [1]), .Y(n376) );
  OAI21X1 \Accum1/cla3/cla1/U10  ( .A(n375), .B(n376), .C(n143), .Y(n372) );
  XOR2X1 \Accum1/cla3/cla1/U9  ( .A(\Accum1/cla1_dat [2]), .B(
        \Accum1/cla2_dat [2]), .Y(n373) );
  XOR2X1 \Accum1/cla3/cla1/U8  ( .A(n372), .B(n373), .Y(\Accum1/cla3_dat [2])
         );
  XNOR2X1 \Accum1/cla3/cla1/U7  ( .A(\Accum1/cla1_dat [3]), .B(
        \Accum1/cla2_dat [3]), .Y(n370) );
  AOI21X1 \Accum1/cla3/cla1/U6  ( .A(n372), .B(n373), .C(n374), .Y(n369) );
  XOR2X1 \Accum1/cla3/cla1/U5  ( .A(n370), .B(n253), .Y(\Accum1/cla3_dat [3])
         );
  OAI21X1 \Accum1/cla3/cla1/U3  ( .A(n253), .B(n370), .C(n170), .Y(
        \Accum1/cla3/cout1 ) );
  XOR2X1 \Accum1/cla1/cla2/U16  ( .A(n229), .B(n264), .Y(n367) );
  XOR2X1 \Accum1/cla1/cla2/U15  ( .A(\Accum1/cla1/cout1 ), .B(n367), .Y(
        \Accum1/cla1_dat [4]) );
  XNOR2X1 \Accum1/cla1/cla2/U14  ( .A(n226), .B(n269), .Y(n365) );
  AOI21X1 \Accum1/cla1/cla2/U13  ( .A(n367), .B(\Accum1/cla1/cout1 ), .C(n368), 
        .Y(n364) );
  XOR2X1 \Accum1/cla1/cla2/U12  ( .A(n365), .B(n183), .Y(\Accum1/cla1_dat [5])
         );
  OAI21X1 \Accum1/cla1/cla2/U10  ( .A(n183), .B(n365), .C(n145), .Y(n361) );
  XOR2X1 \Accum1/cla1/cla2/U9  ( .A(n228), .B(n263), .Y(n362) );
  XOR2X1 \Accum1/cla1/cla2/U8  ( .A(n361), .B(n362), .Y(\Accum1/cla1_dat [6])
         );
  XNOR2X1 \Accum1/cla1/cla2/U7  ( .A(n227), .B(n270), .Y(n359) );
  AOI21X1 \Accum1/cla1/cla2/U6  ( .A(n361), .B(n362), .C(n363), .Y(n358) );
  XOR2X1 \Accum1/cla1/cla2/U5  ( .A(n359), .B(n203), .Y(\Accum1/cla1_dat [7])
         );
  OAI21X1 \Accum1/cla1/cla2/U3  ( .A(n203), .B(n359), .C(n169), .Y(
        \Accum1/cla1_cout ) );
  XOR2X1 \Accum1/cla1/cla1/U16  ( .A(n185), .B(n266), .Y(\Accum1/cla1_dat [0])
         );
  XNOR2X1 \Accum1/cla1/cla1/U14  ( .A(n224), .B(n267), .Y(n355) );
  XOR2X1 \Accum1/cla1/cla1/U12  ( .A(n355), .B(n354), .Y(\Accum1/cla1_dat [1])
         );
  OAI21X1 \Accum1/cla1/cla1/U10  ( .A(n354), .B(n355), .C(n147), .Y(n351) );
  XOR2X1 \Accum1/cla1/cla1/U9  ( .A(n230), .B(n265), .Y(n352) );
  XOR2X1 \Accum1/cla1/cla1/U8  ( .A(n351), .B(n352), .Y(\Accum1/cla1_dat [2])
         );
  XNOR2X1 \Accum1/cla1/cla1/U7  ( .A(n225), .B(n268), .Y(n349) );
  AOI21X1 \Accum1/cla1/cla1/U6  ( .A(n351), .B(n352), .C(n353), .Y(n348) );
  XOR2X1 \Accum1/cla1/cla1/U5  ( .A(n349), .B(n205), .Y(\Accum1/cla1_dat [3])
         );
  OAI21X1 \Accum1/cla1/cla1/U3  ( .A(n205), .B(n349), .C(n122), .Y(
        \Accum1/cla1/cout1 ) );
  XOR2X1 \Multi1/cla3/U16  ( .A(\Multi1/adder2 [1]), .B(\Multi1/ba[3][0] ), 
        .Y(\Multi1/adder3 [0]) );
  XNOR2X1 \Multi1/cla3/U14  ( .A(\Multi1/adder2 [2]), .B(\Multi1/ba[3][1] ), 
        .Y(n345) );
  XOR2X1 \Multi1/cla3/U12  ( .A(n345), .B(n344), .Y(\Multi1/adder3 [1]) );
  OAI21X1 \Multi1/cla3/U10  ( .A(n344), .B(n345), .C(n193), .Y(n341) );
  XOR2X1 \Multi1/cla3/U9  ( .A(\Multi1/adder2 [3]), .B(\Multi1/ba[3][2] ), .Y(
        n342) );
  XOR2X1 \Multi1/cla3/U8  ( .A(n341), .B(n342), .Y(\Multi1/adder3 [2]) );
  XNOR2X1 \Multi1/cla3/U7  ( .A(\Multi1/cout2 ), .B(\Multi1/ba[3][3] ), .Y(
        n339) );
  AOI21X1 \Multi1/cla3/U6  ( .A(n341), .B(n342), .C(n343), .Y(n338) );
  XOR2X1 \Multi1/cla3/U5  ( .A(n339), .B(n220), .Y(\Multi1/adder3 [3]) );
  OAI21X1 \Multi1/cla3/U3  ( .A(n220), .B(n339), .C(n142), .Y(\Multi1/Mul[7] )
         );
  XOR2X1 \Multi1/cla2/U16  ( .A(\Multi1/adder1 [1]), .B(\Multi1/ba[2][0] ), 
        .Y(\Multi1/adder2 [0]) );
  XNOR2X1 \Multi1/cla2/U14  ( .A(\Multi1/adder1 [2]), .B(\Multi1/ba[2][1] ), 
        .Y(n335) );
  XOR2X1 \Multi1/cla2/U12  ( .A(n335), .B(n334), .Y(\Multi1/adder2 [1]) );
  OAI21X1 \Multi1/cla2/U10  ( .A(n334), .B(n335), .C(n215), .Y(n331) );
  XOR2X1 \Multi1/cla2/U9  ( .A(\Multi1/adder1 [3]), .B(\Multi1/ba[2][2] ), .Y(
        n332) );
  XOR2X1 \Multi1/cla2/U8  ( .A(n331), .B(n332), .Y(\Multi1/adder2 [2]) );
  XNOR2X1 \Multi1/cla2/U7  ( .A(n201), .B(\Multi1/ba[2][3] ), .Y(n329) );
  AOI21X1 \Multi1/cla2/U6  ( .A(n331), .B(n332), .C(n333), .Y(n328) );
  XOR2X1 \Multi1/cla2/U5  ( .A(n329), .B(n255), .Y(\Multi1/adder2 [3]) );
  OAI21X1 \Multi1/cla2/U3  ( .A(n255), .B(n329), .C(n168), .Y(\Multi1/cout2 )
         );
  OAI21X1 \Accum1/cla2/cla1/U3  ( .A(n206), .B(n326), .C(n123), .Y(
        \Accum1/cla2/cout1 ) );
  XOR2X1 \Accum1/cla2/cla1/U5  ( .A(n326), .B(n206), .Y(\Accum1/cla2_dat [3])
         );
  AOI21X1 \Accum1/cla2/cla1/U6  ( .A(n324), .B(n323), .C(n322), .Y(n327) );
  XNOR2X1 \Accum1/cla2/cla1/U7  ( .A(n232), .B(n260), .Y(n326) );
  XOR2X1 \Accum1/cla2/cla1/U8  ( .A(n324), .B(n323), .Y(\Accum1/cla2_dat [2])
         );
  XOR2X1 \Accum1/cla2/cla1/U9  ( .A(n237), .B(n258), .Y(n323) );
  OAI21X1 \Accum1/cla2/cla1/U10  ( .A(n321), .B(n320), .C(n148), .Y(n324) );
  XOR2X1 \Accum1/cla2/cla1/U12  ( .A(n320), .B(n321), .Y(\Accum1/cla2_dat [1])
         );
  XNOR2X1 \Accum1/cla2/cla1/U14  ( .A(n231), .B(n259), .Y(n320) );
  XOR2X1 \Accum1/cla2/cla1/U16  ( .A(n238), .B(n207), .Y(\Accum1/cla2_dat [0])
         );
  OAI21X1 \Accum1/cla2/cla2/U3  ( .A(n204), .B(n316), .C(n121), .Y(
        \Accum1/cla2_cout ) );
  XOR2X1 \Accum1/cla2/cla2/U5  ( .A(n316), .B(n204), .Y(\Accum1/cla2_dat [7])
         );
  AOI21X1 \Accum1/cla2/cla2/U6  ( .A(n314), .B(n313), .C(n312), .Y(n317) );
  XNOR2X1 \Accum1/cla2/cla2/U7  ( .A(n234), .B(n262), .Y(n316) );
  XOR2X1 \Accum1/cla2/cla2/U8  ( .A(n314), .B(n313), .Y(\Accum1/cla2_dat [6])
         );
  XOR2X1 \Accum1/cla2/cla2/U9  ( .A(n235), .B(n256), .Y(n313) );
  OAI21X1 \Accum1/cla2/cla2/U10  ( .A(n184), .B(n310), .C(n146), .Y(n314) );
  XOR2X1 \Accum1/cla2/cla2/U12  ( .A(n310), .B(n184), .Y(\Accum1/cla2_dat [5])
         );
  AOI21X1 \Accum1/cla2/cla2/U13  ( .A(n308), .B(\Accum1/cla2/cout1 ), .C(n307), 
        .Y(n311) );
  XNOR2X1 \Accum1/cla2/cla2/U14  ( .A(n233), .B(n261), .Y(n310) );
  XOR2X1 \Accum1/cla2/cla2/U15  ( .A(\Accum1/cla2/cout1 ), .B(n308), .Y(
        \Accum1/cla2_dat [4]) );
  XOR2X1 \Accum1/cla2/cla2/U16  ( .A(n236), .B(n257), .Y(n308) );
  OR2X1 U2 ( .A(n271), .B(n239), .Y(n284) );
  AND2X1 U3 ( .A(n235), .B(n256), .Y(n312) );
  AND2X1 U4 ( .A(n228), .B(n263), .Y(n363) );
  AND2X1 U5 ( .A(n236), .B(n257), .Y(n307) );
  AND2X1 U6 ( .A(n229), .B(n264), .Y(n368) );
  AND2X1 U7 ( .A(n237), .B(n258), .Y(n322) );
  AND2X1 U8 ( .A(n230), .B(n265), .Y(n353) );
  AND2X1 U9 ( .A(n238), .B(n207), .Y(n318) );
  AND2X1 U10 ( .A(n185), .B(n266), .Y(n357) );
  AND2X1 U11 ( .A(n272), .B(n186), .Y(\fifo/n133 ) );
  OR2X1 U12 ( .A(n124), .B(n49), .Y(Acc[7]) );
  OR2X1 U13 ( .A(n111), .B(n50), .Y(Acc[6]) );
  OR2X1 U14 ( .A(n100), .B(n51), .Y(Acc[5]) );
  OR2X1 U15 ( .A(n89), .B(n52), .Y(Acc[4]) );
  OR2X1 U16 ( .A(n45), .B(n53), .Y(Acc[3]) );
  OR2X1 U17 ( .A(n46), .B(n54), .Y(Acc[2]) );
  OR2X1 U18 ( .A(n47), .B(n55), .Y(Acc[1]) );
  OR2X1 U19 ( .A(n48), .B(n56), .Y(Acc[0]) );
  AND2X1 U20 ( .A(n155), .B(n181), .Y(\fifo/rd_ptr_gray [1]) );
  OR2X1 U21 ( .A(\Accum1/n12 ), .B(n251), .Y(n285) );
  BUFX2 U22 ( .A(\Multi1/n4 ), .Y(n2) );
  BUFX2 U23 ( .A(\Multi1/n5 ), .Y(n3) );
  BUFX2 U24 ( .A(\Multi1/n6 ), .Y(n4) );
  BUFX2 U25 ( .A(\Multi1/n7 ), .Y(n5) );
  BUFX2 U26 ( .A(\Multi1/n8 ), .Y(n6) );
  BUFX2 U27 ( .A(\Multi1/n9 ), .Y(n7) );
  BUFX2 U28 ( .A(\Accum1/n1 ), .Y(n8) );
  BUFX2 U29 ( .A(\Accum1/n4 ), .Y(n9) );
  BUFX2 U30 ( .A(\Accum1/n5 ), .Y(n10) );
  BUFX2 U31 ( .A(\Accum1/n6 ), .Y(n11) );
  BUFX2 U32 ( .A(\Accum1/n7 ), .Y(n12) );
  BUFX2 U33 ( .A(\Accum1/n8 ), .Y(n13) );
  BUFX2 U34 ( .A(\Accum1/n9 ), .Y(n14) );
  BUFX2 U35 ( .A(\Accum1/n10 ), .Y(n15) );
  BUFX2 U36 ( .A(n390), .Y(n16) );
  BUFX2 U37 ( .A(\fifo/rd_ptr_wff [0]), .Y(n17) );
  BUFX2 U38 ( .A(\fifo/wr_ptr_rff [0]), .Y(n18) );
  BUFX2 U39 ( .A(\fifo/wr_ptr_rff [1]), .Y(n19) );
  BUFX2 U40 ( .A(\fifo/wr_ptr_rff [3]), .Y(n20) );
  BUFX2 U41 ( .A(\fifo/wr_ptr_rff [2]), .Y(n21) );
  BUFX2 U42 ( .A(\fifo/rd_ptr_wff [1]), .Y(n22) );
  BUFX2 U43 ( .A(\fifo/rd_ptr_wff [3]), .Y(n23) );
  BUFX2 U44 ( .A(\fifo/rd_ptr_wff [2]), .Y(n24) );
  AND2X1 U45 ( .A(n44), .B(n43), .Y(\Multi1/n12 ) );
  INVX1 U46 ( .A(\Multi1/n12 ), .Y(n25) );
  BUFX2 U47 ( .A(\fifo/n99 ), .Y(n26) );
  AND2X1 U48 ( .A(Acc[0]), .B(n222), .Y(\Accum1/n20 ) );
  INVX1 U49 ( .A(\Accum1/n20 ), .Y(n27) );
  AND2X1 U50 ( .A(Acc[1]), .B(n222), .Y(\Accum1/n27 ) );
  INVX1 U51 ( .A(\Accum1/n27 ), .Y(n28) );
  AND2X1 U52 ( .A(Acc[2]), .B(n222), .Y(\Accum1/n34 ) );
  INVX1 U53 ( .A(\Accum1/n34 ), .Y(n29) );
  AND2X1 U54 ( .A(Acc[3]), .B(n222), .Y(\Accum1/n41 ) );
  INVX1 U55 ( .A(\Accum1/n41 ), .Y(n30) );
  AND2X1 U56 ( .A(Acc[4]), .B(n222), .Y(\Accum1/n48 ) );
  INVX1 U57 ( .A(\Accum1/n48 ), .Y(n31) );
  AND2X1 U58 ( .A(Acc[5]), .B(n222), .Y(\Accum1/n55 ) );
  INVX1 U59 ( .A(\Accum1/n55 ), .Y(n32) );
  AND2X1 U60 ( .A(Acc[6]), .B(n222), .Y(\Accum1/n62 ) );
  INVX1 U61 ( .A(\Accum1/n62 ), .Y(n33) );
  AND2X1 U62 ( .A(Acc[7]), .B(n222), .Y(\Accum1/n69 ) );
  INVX1 U63 ( .A(\Accum1/n69 ), .Y(n34) );
  AND2X1 U64 ( .A(\fifo/data[7][0] ), .B(n288), .Y(\fifo/n112 ) );
  INVX1 U65 ( .A(\fifo/n112 ), .Y(n35) );
  AND2X1 U66 ( .A(n290), .B(n275), .Y(\fifo/n132 ) );
  INVX1 U67 ( .A(\fifo/n132 ), .Y(n36) );
  AND2X1 U68 ( .A(\fifo/n135 ), .B(n276), .Y(\fifo/n142 ) );
  INVX1 U69 ( .A(\fifo/n142 ), .Y(n37) );
  AND2X1 U70 ( .A(\fifo/data[3][1] ), .B(n291), .Y(\fifo/n151 ) );
  INVX1 U71 ( .A(\fifo/n151 ), .Y(n38) );
  AND2X1 U72 ( .A(n292), .B(n275), .Y(\fifo/n161 ) );
  INVX1 U73 ( .A(\fifo/n161 ), .Y(n39) );
  AND2X1 U74 ( .A(n293), .B(n276), .Y(\fifo/n169 ) );
  INVX1 U75 ( .A(\fifo/n169 ), .Y(n40) );
  AND2X1 U76 ( .A(n293), .B(n275), .Y(\fifo/n170 ) );
  INVX1 U77 ( .A(\fifo/n170 ), .Y(n41) );
  AND2X1 U78 ( .A(n294), .B(n275), .Y(\fifo/n180 ) );
  INVX1 U79 ( .A(\fifo/n180 ), .Y(n42) );
  BUFX2 U80 ( .A(\Multi1/n2 ), .Y(n43) );
  AND2X1 U81 ( .A(Wfull), .B(n275), .Y(\Multi1/n1 ) );
  INVX1 U82 ( .A(\Multi1/n1 ), .Y(n44) );
  BUFX2 U83 ( .A(\fifo/n207 ), .Y(n45) );
  BUFX2 U84 ( .A(\fifo/n213 ), .Y(n46) );
  BUFX2 U85 ( .A(\fifo/n219 ), .Y(n47) );
  BUFX2 U86 ( .A(\fifo/n225 ), .Y(n48) );
  BUFX2 U87 ( .A(\fifo/n183 ), .Y(n49) );
  BUFX2 U88 ( .A(\fifo/n190 ), .Y(n50) );
  BUFX2 U89 ( .A(\fifo/n196 ), .Y(n51) );
  BUFX2 U90 ( .A(\fifo/n202 ), .Y(n52) );
  BUFX2 U91 ( .A(\fifo/n208 ), .Y(n53) );
  BUFX2 U92 ( .A(\fifo/n214 ), .Y(n54) );
  BUFX2 U93 ( .A(\fifo/n220 ), .Y(n55) );
  BUFX2 U94 ( .A(\fifo/n226 ), .Y(n56) );
  BUFX2 U95 ( .A(\fifo/n185 ), .Y(n57) );
  BUFX2 U96 ( .A(\fifo/n192 ), .Y(n58) );
  BUFX2 U97 ( .A(\fifo/n198 ), .Y(n59) );
  BUFX2 U98 ( .A(\fifo/n204 ), .Y(n60) );
  BUFX2 U99 ( .A(\fifo/n210 ), .Y(n61) );
  BUFX2 U100 ( .A(\fifo/n212 ), .Y(n62) );
  BUFX2 U101 ( .A(\fifo/n216 ), .Y(n63) );
  BUFX2 U102 ( .A(\fifo/n218 ), .Y(n64) );
  BUFX2 U103 ( .A(\fifo/n222 ), .Y(n65) );
  BUFX2 U104 ( .A(\fifo/n224 ), .Y(n66) );
  BUFX2 U105 ( .A(\fifo/n228 ), .Y(n67) );
  BUFX2 U106 ( .A(\fifo/n230 ), .Y(n68) );
  BUFX2 U107 ( .A(\fifo/n184 ), .Y(n69) );
  BUFX2 U108 ( .A(\fifo/n191 ), .Y(n70) );
  BUFX2 U109 ( .A(\fifo/n197 ), .Y(n71) );
  BUFX2 U110 ( .A(\fifo/n203 ), .Y(n72) );
  BUFX2 U111 ( .A(\fifo/n209 ), .Y(n73) );
  BUFX2 U112 ( .A(\fifo/n211 ), .Y(n74) );
  BUFX2 U113 ( .A(\fifo/n215 ), .Y(n75) );
  BUFX2 U114 ( .A(\fifo/n217 ), .Y(n76) );
  BUFX2 U115 ( .A(\fifo/n221 ), .Y(n77) );
  BUFX2 U116 ( .A(\fifo/n223 ), .Y(n78) );
  BUFX2 U117 ( .A(\fifo/n227 ), .Y(n79) );
  BUFX2 U118 ( .A(\fifo/n229 ), .Y(n80) );
  AND2X1 U119 ( .A(n286), .B(\fifo/n79 ), .Y(\fifo/n134 ) );
  INVX1 U120 ( .A(\fifo/n134 ), .Y(n81) );
  BUFX2 U121 ( .A(\fifo/n123 ), .Y(n82) );
  AND2X1 U122 ( .A(n294), .B(n282), .Y(\fifo/n173 ) );
  INVX1 U123 ( .A(\fifo/n173 ), .Y(n83) );
  AND2X1 U124 ( .A(n289), .B(n275), .Y(\fifo/n122 ) );
  INVX1 U125 ( .A(\fifo/n122 ), .Y(n84) );
  AND2X1 U126 ( .A(n293), .B(n277), .Y(\fifo/n168 ) );
  INVX1 U127 ( .A(\fifo/n168 ), .Y(n85) );
  AND2X1 U128 ( .A(\fifo/data[3][0] ), .B(n291), .Y(\fifo/n152 ) );
  INVX1 U129 ( .A(\fifo/n152 ), .Y(n86) );
  AND2X1 U130 ( .A(\fifo/data[7][1] ), .B(n288), .Y(\fifo/n111 ) );
  INVX1 U131 ( .A(\fifo/n111 ), .Y(n87) );
  AND2X1 U132 ( .A(n290), .B(n276), .Y(\fifo/n131 ) );
  INVX1 U133 ( .A(\fifo/n131 ), .Y(n88) );
  BUFX2 U134 ( .A(\fifo/n201 ), .Y(n89) );
  BUFX2 U135 ( .A(\fifo/n205 ), .Y(n90) );
  BUFX2 U136 ( .A(\fifo/n206 ), .Y(n91) );
  AND2X1 U137 ( .A(n294), .B(n281), .Y(\fifo/n174 ) );
  INVX1 U138 ( .A(\fifo/n174 ), .Y(n92) );
  AND2X1 U139 ( .A(n292), .B(n282), .Y(\fifo/n154 ) );
  INVX1 U140 ( .A(\fifo/n154 ), .Y(n93) );
  AND2X1 U141 ( .A(\fifo/n135 ), .B(n275), .Y(\fifo/n143 ) );
  INVX1 U142 ( .A(\fifo/n143 ), .Y(n94) );
  AND2X1 U143 ( .A(n289), .B(n276), .Y(\fifo/n121 ) );
  INVX1 U144 ( .A(\fifo/n121 ), .Y(n95) );
  AND2X1 U145 ( .A(n293), .B(n278), .Y(\fifo/n167 ) );
  INVX1 U146 ( .A(\fifo/n167 ), .Y(n96) );
  AND2X1 U147 ( .A(\fifo/data[3][3] ), .B(n291), .Y(\fifo/n149 ) );
  INVX1 U148 ( .A(\fifo/n149 ), .Y(n97) );
  AND2X1 U149 ( .A(\fifo/data[7][2] ), .B(n288), .Y(\fifo/n110 ) );
  INVX1 U150 ( .A(\fifo/n110 ), .Y(n98) );
  AND2X1 U151 ( .A(n290), .B(n277), .Y(\fifo/n130 ) );
  INVX1 U152 ( .A(\fifo/n130 ), .Y(n99) );
  BUFX2 U153 ( .A(\fifo/n195 ), .Y(n100) );
  BUFX2 U154 ( .A(\fifo/n199 ), .Y(n101) );
  BUFX2 U155 ( .A(\fifo/n200 ), .Y(n102) );
  AND2X1 U156 ( .A(n294), .B(n276), .Y(\fifo/n179 ) );
  INVX1 U157 ( .A(\fifo/n179 ), .Y(n103) );
  AND2X1 U158 ( .A(n292), .B(n279), .Y(\fifo/n157 ) );
  INVX1 U159 ( .A(\fifo/n157 ), .Y(n104) );
  AND2X1 U160 ( .A(\fifo/n135 ), .B(n282), .Y(\fifo/n136 ) );
  INVX1 U161 ( .A(\fifo/n136 ), .Y(n105) );
  AND2X1 U162 ( .A(n289), .B(n277), .Y(\fifo/n120 ) );
  INVX1 U163 ( .A(\fifo/n120 ), .Y(n106) );
  AND2X1 U164 ( .A(n293), .B(n280), .Y(\fifo/n165 ) );
  INVX1 U165 ( .A(\fifo/n165 ), .Y(n107) );
  AND2X1 U166 ( .A(\fifo/data[3][2] ), .B(n291), .Y(\fifo/n150 ) );
  INVX1 U167 ( .A(\fifo/n150 ), .Y(n108) );
  AND2X1 U168 ( .A(\fifo/data[7][3] ), .B(n288), .Y(\fifo/n109 ) );
  INVX1 U169 ( .A(\fifo/n109 ), .Y(n109) );
  AND2X1 U170 ( .A(n290), .B(n278), .Y(\fifo/n129 ) );
  INVX1 U171 ( .A(\fifo/n129 ), .Y(n110) );
  BUFX2 U172 ( .A(\fifo/n189 ), .Y(n111) );
  BUFX2 U173 ( .A(\fifo/n193 ), .Y(n112) );
  BUFX2 U174 ( .A(\fifo/n194 ), .Y(n113) );
  AND2X1 U175 ( .A(n294), .B(n280), .Y(\fifo/n175 ) );
  INVX1 U176 ( .A(\fifo/n175 ), .Y(n114) );
  AND2X1 U177 ( .A(n292), .B(n281), .Y(\fifo/n155 ) );
  INVX1 U178 ( .A(\fifo/n155 ), .Y(n115) );
  AND2X1 U179 ( .A(\fifo/n135 ), .B(n277), .Y(\fifo/n141 ) );
  INVX1 U180 ( .A(\fifo/n141 ), .Y(n116) );
  AND2X1 U181 ( .A(n289), .B(n278), .Y(\fifo/n119 ) );
  INVX1 U182 ( .A(\fifo/n119 ), .Y(n117) );
  AND2X1 U183 ( .A(\fifo/data[3][5] ), .B(n291), .Y(\fifo/n147 ) );
  INVX1 U184 ( .A(\fifo/n147 ), .Y(n118) );
  AND2X1 U185 ( .A(\fifo/data[7][4] ), .B(n288), .Y(\fifo/n108 ) );
  INVX1 U186 ( .A(\fifo/n108 ), .Y(n119) );
  AND2X1 U187 ( .A(n290), .B(n279), .Y(\fifo/n128 ) );
  INVX1 U188 ( .A(\fifo/n128 ), .Y(n120) );
  AND2X1 U189 ( .A(n234), .B(n262), .Y(n315) );
  INVX1 U190 ( .A(n315), .Y(n121) );
  AND2X1 U191 ( .A(n225), .B(n268), .Y(n350) );
  INVX1 U192 ( .A(n350), .Y(n122) );
  AND2X1 U193 ( .A(n232), .B(n260), .Y(n325) );
  INVX1 U194 ( .A(n325), .Y(n123) );
  BUFX2 U195 ( .A(\fifo/n182 ), .Y(n124) );
  BUFX2 U196 ( .A(\fifo/n187 ), .Y(n125) );
  BUFX2 U197 ( .A(\fifo/n188 ), .Y(n126) );
  AND2X1 U198 ( .A(\fifo/n78 ), .B(\fifo/n79 ), .Y(\fifo/n171 ) );
  INVX1 U199 ( .A(\fifo/n171 ), .Y(n127) );
  BUFX2 U200 ( .A(\fifo/wr_ptr_r1ff [1]), .Y(n128) );
  AND2X1 U201 ( .A(n292), .B(n276), .Y(\fifo/n160 ) );
  INVX1 U202 ( .A(\fifo/n160 ), .Y(n129) );
  AND2X1 U203 ( .A(\fifo/n135 ), .B(n278), .Y(\fifo/n140 ) );
  INVX1 U204 ( .A(\fifo/n140 ), .Y(n130) );
  AND2X1 U205 ( .A(n289), .B(n281), .Y(\fifo/n116 ) );
  INVX1 U206 ( .A(\fifo/n116 ), .Y(n131) );
  AND2X1 U207 ( .A(n293), .B(n279), .Y(\fifo/n166 ) );
  INVX1 U208 ( .A(\fifo/n166 ), .Y(n132) );
  AND2X1 U209 ( .A(\fifo/data[3][4] ), .B(n291), .Y(\fifo/n148 ) );
  INVX1 U210 ( .A(\fifo/n148 ), .Y(n133) );
  AND2X1 U211 ( .A(\fifo/data[7][5] ), .B(n288), .Y(\fifo/n107 ) );
  INVX1 U212 ( .A(\fifo/n107 ), .Y(n134) );
  AND2X1 U213 ( .A(n290), .B(n280), .Y(\fifo/n127 ) );
  INVX1 U214 ( .A(\fifo/n127 ), .Y(n135) );
  AND2X1 U215 ( .A(n266), .B(n306), .Y(\Accum1/n18 ) );
  INVX1 U216 ( .A(\Accum1/n18 ), .Y(n136) );
  AND2X1 U217 ( .A(n265), .B(n306), .Y(\Accum1/n33 ) );
  INVX1 U218 ( .A(\Accum1/n33 ), .Y(n137) );
  AND2X1 U219 ( .A(n264), .B(n306), .Y(\Accum1/n47 ) );
  INVX1 U220 ( .A(\Accum1/n47 ), .Y(n138) );
  AND2X1 U221 ( .A(n263), .B(n306), .Y(\Accum1/n61 ) );
  INVX1 U222 ( .A(\Accum1/n61 ), .Y(n139) );
  AND2X1 U223 ( .A(n270), .B(n306), .Y(\Accum1/n68 ) );
  INVX1 U224 ( .A(\Accum1/n68 ), .Y(n140) );
  BUFX2 U225 ( .A(\Multi1/n10 ), .Y(n141) );
  AND2X1 U226 ( .A(\Multi1/cout2 ), .B(\Multi1/ba[3][3] ), .Y(n340) );
  INVX1 U227 ( .A(n340), .Y(n142) );
  AND2X1 U228 ( .A(\Accum1/cla1_dat [1]), .B(\Accum1/cla2_dat [1]), .Y(n377)
         );
  INVX1 U229 ( .A(n377), .Y(n143) );
  AND2X1 U230 ( .A(\Accum1/cla1_dat [5]), .B(\Accum1/cla2_dat [5]), .Y(n387)
         );
  INVX1 U231 ( .A(n387), .Y(n144) );
  AND2X1 U232 ( .A(n226), .B(n269), .Y(n366) );
  INVX1 U233 ( .A(n366), .Y(n145) );
  AND2X1 U234 ( .A(n233), .B(n261), .Y(n309) );
  INVX1 U235 ( .A(n309), .Y(n146) );
  AND2X1 U236 ( .A(n224), .B(n267), .Y(n356) );
  INVX1 U237 ( .A(n356), .Y(n147) );
  AND2X1 U238 ( .A(n231), .B(n259), .Y(n319) );
  INVX1 U239 ( .A(n319), .Y(n148) );
  AND2X1 U240 ( .A(n258), .B(n306), .Y(\Accum1/n29 ) );
  INVX1 U241 ( .A(\Accum1/n29 ), .Y(n149) );
  AND2X1 U242 ( .A(n257), .B(n306), .Y(\Accum1/n43 ) );
  INVX1 U243 ( .A(\Accum1/n43 ), .Y(n150) );
  AND2X1 U244 ( .A(n256), .B(n306), .Y(\Accum1/n57 ) );
  INVX1 U245 ( .A(\Accum1/n57 ), .Y(n151) );
  BUFX2 U246 ( .A(\fifo/rd_ptr_w1ff [1]), .Y(n152) );
  BUFX2 U247 ( .A(\fifo/wr_ptr_r1ff [3]), .Y(n153) );
  AND2X1 U248 ( .A(n296), .B(\fifo/n100 ), .Y(\fifo/n97 ) );
  INVX1 U249 ( .A(\fifo/n97 ), .Y(n154) );
  AND2X1 U250 ( .A(n239), .B(\fifo/n86 ), .Y(\fifo/n231 ) );
  INVX1 U251 ( .A(\fifo/n231 ), .Y(n155) );
  BUFX2 U252 ( .A(\fifo/wr_ptr [1]), .Y(n156) );
  AND2X1 U253 ( .A(n294), .B(n278), .Y(\fifo/n177 ) );
  INVX1 U254 ( .A(\fifo/n177 ), .Y(n157) );
  AND2X1 U255 ( .A(n292), .B(n277), .Y(\fifo/n159 ) );
  INVX1 U256 ( .A(\fifo/n159 ), .Y(n158) );
  AND2X1 U257 ( .A(\fifo/n135 ), .B(n280), .Y(\fifo/n138 ) );
  INVX1 U258 ( .A(\fifo/n138 ), .Y(n159) );
  AND2X1 U259 ( .A(n289), .B(n279), .Y(\fifo/n118 ) );
  INVX1 U260 ( .A(\fifo/n118 ), .Y(n160) );
  AND2X1 U261 ( .A(n293), .B(n282), .Y(\fifo/n163 ) );
  INVX1 U262 ( .A(\fifo/n163 ), .Y(n161) );
  AND2X1 U263 ( .A(\fifo/data[3][7] ), .B(n291), .Y(\fifo/n145 ) );
  INVX1 U264 ( .A(\fifo/n145 ), .Y(n162) );
  AND2X1 U265 ( .A(\fifo/data[7][6] ), .B(n288), .Y(\fifo/n106 ) );
  INVX1 U266 ( .A(\fifo/n106 ), .Y(n163) );
  AND2X1 U267 ( .A(n290), .B(n281), .Y(\fifo/n126 ) );
  INVX1 U268 ( .A(\fifo/n126 ), .Y(n164) );
  AND2X1 U269 ( .A(n267), .B(n306), .Y(\Accum1/n26 ) );
  INVX1 U270 ( .A(\Accum1/n26 ), .Y(n165) );
  AND2X1 U271 ( .A(n268), .B(n306), .Y(\Accum1/n40 ) );
  INVX1 U272 ( .A(\Accum1/n40 ), .Y(n166) );
  AND2X1 U273 ( .A(n269), .B(n306), .Y(\Accum1/n54 ) );
  INVX1 U274 ( .A(\Accum1/n54 ), .Y(n167) );
  AND2X1 U275 ( .A(n201), .B(\Multi1/ba[2][3] ), .Y(n330) );
  INVX1 U276 ( .A(n330), .Y(n168) );
  AND2X1 U277 ( .A(n227), .B(n270), .Y(n360) );
  INVX1 U278 ( .A(n360), .Y(n169) );
  AND2X1 U279 ( .A(\Accum1/cla1_dat [3]), .B(\Accum1/cla2_dat [3]), .Y(n371)
         );
  INVX1 U280 ( .A(n371), .Y(n170) );
  AND2X1 U281 ( .A(\Multi1/ba[0][2] ), .B(\Multi1/ba[1][1] ), .Y(
        \Multi1/cla1/n9 ) );
  INVX1 U282 ( .A(\Multi1/cla1/n9 ), .Y(n171) );
  AND2X1 U283 ( .A(\Accum1/cla1_dat [7]), .B(\Accum1/cla2_dat [7]), .Y(n381)
         );
  INVX1 U284 ( .A(n381), .Y(n172) );
  AND2X1 U285 ( .A(n207), .B(n306), .Y(\Accum1/n14 ) );
  INVX1 U286 ( .A(\Accum1/n14 ), .Y(n173) );
  AND2X1 U287 ( .A(n259), .B(n306), .Y(\Accum1/n22 ) );
  INVX1 U288 ( .A(\Accum1/n22 ), .Y(n174) );
  AND2X1 U289 ( .A(n237), .B(n306), .Y(\Accum1/n31 ) );
  INVX1 U290 ( .A(\Accum1/n31 ), .Y(n175) );
  AND2X1 U291 ( .A(n260), .B(n306), .Y(\Accum1/n36 ) );
  INVX1 U292 ( .A(\Accum1/n36 ), .Y(n176) );
  AND2X1 U293 ( .A(n261), .B(n306), .Y(\Accum1/n50 ) );
  INVX1 U294 ( .A(\Accum1/n50 ), .Y(n177) );
  AND2X1 U295 ( .A(n235), .B(n306), .Y(\Accum1/n59 ) );
  INVX1 U296 ( .A(\Accum1/n59 ), .Y(n178) );
  AND2X1 U297 ( .A(n262), .B(n306), .Y(\Accum1/n64 ) );
  INVX1 U298 ( .A(\Accum1/n64 ), .Y(n179) );
  AND2X1 U299 ( .A(n208), .B(n286), .Y(\fifo/n102 ) );
  INVX1 U300 ( .A(\fifo/n102 ), .Y(n180) );
  AND2X1 U301 ( .A(n271), .B(\fifo/n84 ), .Y(\fifo/n232 ) );
  INVX1 U302 ( .A(\fifo/n232 ), .Y(n181) );
  AND2X1 U303 ( .A(n287), .B(n222), .Y(\fifo/n100 ) );
  INVX1 U304 ( .A(\fifo/n100 ), .Y(n182) );
  BUFX2 U305 ( .A(n364), .Y(n183) );
  BUFX2 U306 ( .A(n311), .Y(n184) );
  BUFX2 U307 ( .A(\Accum1/hold[0][0] ), .Y(n185) );
  BUFX2 U308 ( .A(\fifo/n181 ), .Y(n186) );
  AND2X1 U309 ( .A(n294), .B(n277), .Y(\fifo/n178 ) );
  INVX1 U310 ( .A(\fifo/n178 ), .Y(n187) );
  AND2X1 U311 ( .A(n292), .B(n278), .Y(\fifo/n158 ) );
  INVX1 U312 ( .A(\fifo/n158 ), .Y(n188) );
  AND2X1 U313 ( .A(\fifo/n135 ), .B(n279), .Y(\fifo/n139 ) );
  INVX1 U314 ( .A(\fifo/n139 ), .Y(n189) );
  AND2X1 U315 ( .A(n289), .B(n280), .Y(\fifo/n117 ) );
  INVX1 U316 ( .A(\fifo/n117 ), .Y(n190) );
  AND2X1 U317 ( .A(n293), .B(n281), .Y(\fifo/n164 ) );
  INVX1 U318 ( .A(\fifo/n164 ), .Y(n191) );
  AND2X1 U319 ( .A(n290), .B(n282), .Y(\fifo/n125 ) );
  INVX1 U320 ( .A(\fifo/n125 ), .Y(n192) );
  AND2X1 U321 ( .A(\Multi1/adder2 [2]), .B(\Multi1/ba[3][1] ), .Y(n346) );
  INVX1 U322 ( .A(n346), .Y(n193) );
  AND2X1 U323 ( .A(n238), .B(n306), .Y(\Accum1/n16 ) );
  INVX1 U324 ( .A(\Accum1/n16 ), .Y(n194) );
  AND2X1 U325 ( .A(n231), .B(n306), .Y(\Accum1/n24 ) );
  INVX1 U326 ( .A(\Accum1/n24 ), .Y(n195) );
  AND2X1 U327 ( .A(n232), .B(n306), .Y(\Accum1/n38 ) );
  INVX1 U328 ( .A(\Accum1/n38 ), .Y(n196) );
  AND2X1 U329 ( .A(n236), .B(n306), .Y(\Accum1/n45 ) );
  INVX1 U330 ( .A(\Accum1/n45 ), .Y(n197) );
  AND2X1 U331 ( .A(n233), .B(n306), .Y(\Accum1/n52 ) );
  INVX1 U332 ( .A(\Accum1/n52 ), .Y(n198) );
  AND2X1 U333 ( .A(n234), .B(n306), .Y(\Accum1/n66 ) );
  INVX1 U334 ( .A(\Accum1/n66 ), .Y(n199) );
  OR2X1 U335 ( .A(\fifo/n86 ), .B(\fifo/n84 ), .Y(\fifo/n98 ) );
  INVX1 U336 ( .A(\fifo/n98 ), .Y(n200) );
  OR2X1 U337 ( .A(n219), .B(\Multi1/cla1/n2 ), .Y(\Multi1/cout1 ) );
  INVX1 U338 ( .A(\Multi1/cout1 ), .Y(n201) );
  INVX1 U339 ( .A(\fifo/rd_ptr_gray [1]), .Y(n202) );
  BUFX2 U340 ( .A(n358), .Y(n203) );
  BUFX2 U341 ( .A(n317), .Y(n204) );
  BUFX2 U342 ( .A(n348), .Y(n205) );
  BUFX2 U343 ( .A(n327), .Y(n206) );
  BUFX2 U344 ( .A(\Accum1/hold[3][0] ), .Y(n207) );
  OR2X1 U345 ( .A(n240), .B(\fifo/n79 ), .Y(\fifo/n103 ) );
  INVX1 U346 ( .A(\fifo/n103 ), .Y(n208) );
  AND2X1 U347 ( .A(n294), .B(n279), .Y(\fifo/n176 ) );
  INVX1 U348 ( .A(\fifo/n176 ), .Y(n209) );
  AND2X1 U349 ( .A(n292), .B(n280), .Y(\fifo/n156 ) );
  INVX1 U350 ( .A(\fifo/n156 ), .Y(n210) );
  AND2X1 U351 ( .A(\fifo/n135 ), .B(n281), .Y(\fifo/n137 ) );
  INVX1 U352 ( .A(\fifo/n137 ), .Y(n211) );
  AND2X1 U353 ( .A(n289), .B(n282), .Y(\fifo/n115 ) );
  INVX1 U354 ( .A(\fifo/n115 ), .Y(n212) );
  AND2X1 U355 ( .A(\fifo/data[3][6] ), .B(n291), .Y(\fifo/n146 ) );
  INVX1 U356 ( .A(\fifo/n146 ), .Y(n213) );
  AND2X1 U357 ( .A(\fifo/data[7][7] ), .B(n288), .Y(\fifo/n105 ) );
  INVX1 U358 ( .A(\fifo/n105 ), .Y(n214) );
  AND2X1 U359 ( .A(\Multi1/adder1 [2]), .B(\Multi1/ba[2][1] ), .Y(n336) );
  INVX1 U360 ( .A(n336), .Y(n215) );
  BUFX2 U361 ( .A(\fifo/rd_ptr_w1ff [3]), .Y(n216) );
  BUFX2 U362 ( .A(n399), .Y(AverageOut[1]) );
  BUFX2 U363 ( .A(n395), .Y(AverageOut[5]) );
  BUFX2 U364 ( .A(\Multi1/cla1/n1 ), .Y(n219) );
  BUFX2 U365 ( .A(n338), .Y(n220) );
  BUFX2 U366 ( .A(n385), .Y(n221) );
  BUFX2 U367 ( .A(\fifo/n101 ), .Y(n222) );
  OR2X1 U368 ( .A(\fifo/n241 ), .B(\fifo/n242 ), .Y(\fifo/n240 ) );
  INVX1 U369 ( .A(\fifo/n240 ), .Y(n223) );
  BUFX2 U370 ( .A(\Accum1/hold[0][1] ), .Y(n224) );
  BUFX2 U371 ( .A(\Accum1/hold[0][3] ), .Y(n225) );
  BUFX2 U372 ( .A(\Accum1/hold[0][5] ), .Y(n226) );
  BUFX2 U373 ( .A(\Accum1/hold[0][7] ), .Y(n227) );
  BUFX2 U374 ( .A(\Accum1/hold[0][6] ), .Y(n228) );
  BUFX2 U375 ( .A(\Accum1/hold[0][4] ), .Y(n229) );
  BUFX2 U376 ( .A(\Accum1/hold[0][2] ), .Y(n230) );
  BUFX2 U377 ( .A(\Accum1/hold[2][1] ), .Y(n231) );
  BUFX2 U378 ( .A(\Accum1/hold[2][3] ), .Y(n232) );
  BUFX2 U379 ( .A(\Accum1/hold[2][5] ), .Y(n233) );
  BUFX2 U380 ( .A(\Accum1/hold[2][7] ), .Y(n234) );
  BUFX2 U381 ( .A(\Accum1/hold[2][6] ), .Y(n235) );
  BUFX2 U382 ( .A(\Accum1/hold[2][4] ), .Y(n236) );
  BUFX2 U383 ( .A(\Accum1/hold[2][2] ), .Y(n237) );
  BUFX2 U384 ( .A(\Accum1/hold[2][0] ), .Y(n238) );
  BUFX2 U385 ( .A(\fifo/rd_ptr [2]), .Y(n239) );
  INVX1 U386 ( .A(\fifo/n133 ), .Y(n240) );
  BUFX2 U387 ( .A(\fifo/rd_ptr_w1ff [2]), .Y(n241) );
  BUFX2 U388 ( .A(\fifo/wr_ptr_r1ff [2]), .Y(n242) );
  BUFX2 U389 ( .A(\fifo/wr_ptr_r1ff [0]), .Y(n243) );
  BUFX2 U390 ( .A(\fifo/rd_ptr_w1ff [0]), .Y(n244) );
  BUFX2 U391 ( .A(n400), .Y(AverageOut[0]) );
  BUFX2 U392 ( .A(n398), .Y(AverageOut[2]) );
  BUFX2 U393 ( .A(n397), .Y(AverageOut[3]) );
  BUFX2 U394 ( .A(n396), .Y(AverageOut[4]) );
  BUFX2 U395 ( .A(n394), .Y(AverageOut[6]) );
  BUFX2 U396 ( .A(n393), .Y(AverageOut[7]) );
  BUFX2 U397 ( .A(\Accum1/counter [1]), .Y(n251) );
  BUFX2 U398 ( .A(\Accum1/counter [0]), .Y(n252) );
  BUFX2 U399 ( .A(n369), .Y(n253) );
  BUFX2 U400 ( .A(n379), .Y(n254) );
  BUFX2 U401 ( .A(n328), .Y(n255) );
  BUFX2 U402 ( .A(\Accum1/hold[3][6] ), .Y(n256) );
  BUFX2 U403 ( .A(\Accum1/hold[3][4] ), .Y(n257) );
  BUFX2 U404 ( .A(\Accum1/hold[3][2] ), .Y(n258) );
  BUFX2 U405 ( .A(\Accum1/hold[3][1] ), .Y(n259) );
  BUFX2 U406 ( .A(\Accum1/hold[3][3] ), .Y(n260) );
  BUFX2 U407 ( .A(\Accum1/hold[3][5] ), .Y(n261) );
  BUFX2 U408 ( .A(\Accum1/hold[3][7] ), .Y(n262) );
  BUFX2 U409 ( .A(\Accum1/hold[1][6] ), .Y(n263) );
  BUFX2 U410 ( .A(\Accum1/hold[1][4] ), .Y(n264) );
  BUFX2 U411 ( .A(\Accum1/hold[1][2] ), .Y(n265) );
  BUFX2 U412 ( .A(\Accum1/hold[1][0] ), .Y(n266) );
  BUFX2 U413 ( .A(\Accum1/hold[1][1] ), .Y(n267) );
  BUFX2 U414 ( .A(\Accum1/hold[1][3] ), .Y(n268) );
  BUFX2 U415 ( .A(\Accum1/hold[1][5] ), .Y(n269) );
  BUFX2 U416 ( .A(\Accum1/hold[1][7] ), .Y(n270) );
  BUFX2 U417 ( .A(\fifo/rd_ptr [1]), .Y(n271) );
  BUFX2 U418 ( .A(\fifo/wr_ptr [0]), .Y(n272) );
  BUFX2 U419 ( .A(\fifo/rd_ptr [3]), .Y(n273) );
  BUFX2 U420 ( .A(\fifo/wr_ptr [3]), .Y(n274) );
  BUFX2 U421 ( .A(Mul[0]), .Y(n275) );
  BUFX2 U422 ( .A(Mul[1]), .Y(n276) );
  BUFX2 U423 ( .A(Mul[2]), .Y(n277) );
  BUFX2 U424 ( .A(Mul[3]), .Y(n278) );
  BUFX2 U425 ( .A(Mul[4]), .Y(n279) );
  BUFX2 U426 ( .A(Mul[5]), .Y(n280) );
  BUFX2 U427 ( .A(Mul[6]), .Y(n281) );
  BUFX2 U428 ( .A(Mul[7]), .Y(n282) );
  INVX1 U429 ( .A(n222), .Y(n306) );
  AND2X1 U430 ( .A(\Accum1/cla1_dat [4]), .B(\Accum1/cla2_dat [4]), .Y(n389)
         );
  AND2X1 U431 ( .A(\Accum1/cla1_dat [6]), .B(\Accum1/cla2_dat [6]), .Y(n384)
         );
  AND2X1 U432 ( .A(\Accum1/cla1_dat [2]), .B(\Accum1/cla2_dat [2]), .Y(n374)
         );
  BUFX2 U433 ( .A(n200), .Y(n296) );
  BUFX2 U434 ( .A(n200), .Y(n295) );
  BUFX2 U435 ( .A(\fifo/n144 ), .Y(n291) );
  INVX1 U436 ( .A(n301), .Y(n303) );
  INVX1 U437 ( .A(n301), .Y(n302) );
  INVX1 U438 ( .A(n301), .Y(n298) );
  INVX1 U439 ( .A(Reset), .Y(n299) );
  INVX1 U440 ( .A(n305), .Y(n300) );
  INVX1 U441 ( .A(Reset), .Y(n304) );
  INVX1 U442 ( .A(n378), .Y(n375) );
  INVX1 U443 ( .A(n287), .Y(\fifo/n87 ) );
  AND2X1 U444 ( .A(\Accum1/cla1_cout ), .B(\Accum1/cla2_cout ), .Y(n392) );
  AND2X1 U445 ( .A(\Multi1/adder1 [3]), .B(\Multi1/ba[2][2] ), .Y(n333) );
  AND2X1 U446 ( .A(\Multi1/adder2 [3]), .B(\Multi1/ba[3][2] ), .Y(n343) );
  AND2X1 U447 ( .A(\Multi1/ba[0][3] ), .B(\Multi1/ba[1][2] ), .Y(
        \Multi1/cla1/n6 ) );
  INVX1 U448 ( .A(n337), .Y(n334) );
  AND2X1 U449 ( .A(\Multi1/adder1 [1]), .B(\Multi1/ba[2][0] ), .Y(n337) );
  INVX1 U450 ( .A(n347), .Y(n344) );
  AND2X1 U451 ( .A(\Multi1/adder2 [1]), .B(\Multi1/ba[3][0] ), .Y(n347) );
  INVX1 U452 ( .A(\Multi1/cla1/n11 ), .Y(\Multi1/cla1/n7 ) );
  AND2X1 U453 ( .A(\Multi1/ba[0][1] ), .B(\Multi1/ba[1][0] ), .Y(
        \Multi1/cla1/n11 ) );
  BUFX2 U454 ( .A(\fifo/n114 ), .Y(n289) );
  BUFX2 U455 ( .A(\fifo/n153 ), .Y(n292) );
  BUFX2 U456 ( .A(\fifo/n124 ), .Y(n290) );
  BUFX2 U457 ( .A(\fifo/n162 ), .Y(n293) );
  OR2X1 U458 ( .A(n81), .B(n82), .Y(n283) );
  INVX1 U459 ( .A(n283), .Y(\fifo/n135 ) );
  BUFX2 U460 ( .A(\fifo/n104 ), .Y(n288) );
  INVX1 U461 ( .A(n186), .Y(Wfull) );
  INVX1 U462 ( .A(n286), .Y(\fifo/n78 ) );
  INVX1 U463 ( .A(n301), .Y(n297) );
  INVX1 U464 ( .A(n304), .Y(n301) );
  INVX1 U465 ( .A(n304), .Y(n305) );
  BUFX2 U466 ( .A(\fifo/rd_ptr [0]), .Y(n287) );
  INVX1 U467 ( .A(n271), .Y(\fifo/n86 ) );
  INVX1 U468 ( .A(n239), .Y(\fifo/n84 ) );
  INVX1 U469 ( .A(n156), .Y(\fifo/n79 ) );
  BUFX2 U470 ( .A(\fifo/wr_ptr [2]), .Y(n286) );
  INVX1 U471 ( .A(n284), .Y(\fifo/n186 ) );
  XNOR2X1 U472 ( .A(n222), .B(\fifo/n87 ), .Y(\fifo/n246 ) );
  INVX1 U473 ( .A(n285), .Y(\Accum1/n2 ) );
  AND2X1 U474 ( .A(\Accum1/cla1_dat [0]), .B(\Accum1/cla2_dat [0]), .Y(n378)
         );
  INVX1 U475 ( .A(n357), .Y(n354) );
  INVX1 U476 ( .A(n318), .Y(n321) );
  INVX1 U477 ( .A(n16), .Y(\Accum1/cla3_dat [9]) );
  INVX1 U478 ( .A(\Multi1/ba[1][3] ), .Y(\Multi1/cla1/n2 ) );
  AND2X1 U479 ( .A(\fifo/n236 ), .B(\fifo/n237 ), .Y(\fifo/n235 ) );
  INVX1 U480 ( .A(n272), .Y(\fifo/n80 ) );
  BUFX2 U481 ( .A(\fifo/n172 ), .Y(n294) );
  XNOR2X1 U482 ( .A(\fifo/n78 ), .B(n208), .Y(\fifo/n312 ) );
  INVX1 U483 ( .A(\fifo/data[4][7] ), .Y(\fifo/n45 ) );
  INVX1 U484 ( .A(\fifo/data[4][6] ), .Y(\fifo/n46 ) );
  INVX1 U485 ( .A(\fifo/data[4][5] ), .Y(\fifo/n47 ) );
  INVX1 U486 ( .A(\fifo/data[4][4] ), .Y(\fifo/n48 ) );
  INVX1 U487 ( .A(\fifo/data[4][3] ), .Y(\fifo/n49 ) );
  INVX1 U488 ( .A(\fifo/data[4][2] ), .Y(\fifo/n50 ) );
  INVX1 U489 ( .A(\fifo/data[4][1] ), .Y(\fifo/n51 ) );
  INVX1 U490 ( .A(\fifo/data[4][0] ), .Y(\fifo/n52 ) );
  INVX1 U491 ( .A(\fifo/data[6][7] ), .Y(\fifo/n29 ) );
  INVX1 U492 ( .A(\fifo/data[6][6] ), .Y(\fifo/n30 ) );
  INVX1 U493 ( .A(\fifo/data[6][5] ), .Y(\fifo/n31 ) );
  INVX1 U494 ( .A(\fifo/data[6][4] ), .Y(\fifo/n32 ) );
  INVX1 U495 ( .A(\fifo/data[6][3] ), .Y(\fifo/n33 ) );
  INVX1 U496 ( .A(\fifo/data[6][2] ), .Y(\fifo/n34 ) );
  INVX1 U497 ( .A(\fifo/data[6][1] ), .Y(\fifo/n35 ) );
  INVX1 U498 ( .A(\fifo/data[6][0] ), .Y(\fifo/n36 ) );
  INVX1 U499 ( .A(\fifo/data[2][7] ), .Y(\fifo/n53 ) );
  INVX1 U500 ( .A(\fifo/data[2][6] ), .Y(\fifo/n54 ) );
  INVX1 U501 ( .A(\fifo/data[2][5] ), .Y(\fifo/n55 ) );
  INVX1 U502 ( .A(\fifo/data[2][4] ), .Y(\fifo/n56 ) );
  INVX1 U503 ( .A(\fifo/data[2][3] ), .Y(\fifo/n57 ) );
  INVX1 U504 ( .A(\fifo/data[2][2] ), .Y(\fifo/n58 ) );
  INVX1 U505 ( .A(\fifo/data[2][1] ), .Y(\fifo/n59 ) );
  INVX1 U506 ( .A(\fifo/data[2][0] ), .Y(\fifo/n60 ) );
  INVX1 U507 ( .A(\fifo/data[0][7] ), .Y(\fifo/n69 ) );
  INVX1 U508 ( .A(\fifo/data[0][6] ), .Y(\fifo/n70 ) );
  INVX1 U509 ( .A(\fifo/data[0][5] ), .Y(\fifo/n71 ) );
  INVX1 U510 ( .A(\fifo/data[0][4] ), .Y(\fifo/n72 ) );
  INVX1 U511 ( .A(\fifo/data[0][3] ), .Y(\fifo/n73 ) );
  INVX1 U512 ( .A(\fifo/data[0][2] ), .Y(\fifo/n74 ) );
  INVX1 U513 ( .A(\fifo/data[0][1] ), .Y(\fifo/n75 ) );
  INVX1 U514 ( .A(\fifo/data[0][0] ), .Y(\fifo/n76 ) );
  INVX1 U515 ( .A(\fifo/data[5][7] ), .Y(\fifo/n37 ) );
  INVX1 U516 ( .A(\fifo/data[5][6] ), .Y(\fifo/n38 ) );
  INVX1 U517 ( .A(\fifo/data[5][5] ), .Y(\fifo/n39 ) );
  INVX1 U518 ( .A(\fifo/data[5][4] ), .Y(\fifo/n40 ) );
  INVX1 U519 ( .A(\fifo/data[5][3] ), .Y(\fifo/n41 ) );
  INVX1 U520 ( .A(\fifo/data[5][2] ), .Y(\fifo/n42 ) );
  INVX1 U521 ( .A(\fifo/data[5][1] ), .Y(\fifo/n43 ) );
  INVX1 U522 ( .A(\fifo/data[5][0] ), .Y(\fifo/n44 ) );
  INVX1 U523 ( .A(\fifo/data[1][7] ), .Y(\fifo/n61 ) );
  INVX1 U524 ( .A(\fifo/data[1][6] ), .Y(\fifo/n62 ) );
  INVX1 U525 ( .A(\fifo/data[1][5] ), .Y(\fifo/n63 ) );
  INVX1 U526 ( .A(\fifo/data[1][4] ), .Y(\fifo/n64 ) );
  INVX1 U527 ( .A(\fifo/data[1][3] ), .Y(\fifo/n65 ) );
  INVX1 U528 ( .A(\fifo/data[1][2] ), .Y(\fifo/n66 ) );
  INVX1 U529 ( .A(\fifo/data[1][1] ), .Y(\fifo/n67 ) );
  INVX1 U530 ( .A(\fifo/data[1][0] ), .Y(\fifo/n68 ) );
  INVX1 U531 ( .A(n282), .Y(\fifo/n89 ) );
  INVX1 U532 ( .A(n281), .Y(\fifo/n90 ) );
  INVX1 U533 ( .A(n280), .Y(\fifo/n91 ) );
  INVX1 U534 ( .A(n279), .Y(\fifo/n92 ) );
  INVX1 U535 ( .A(n278), .Y(\fifo/n93 ) );
  INVX1 U536 ( .A(n277), .Y(\fifo/n94 ) );
  INVX1 U537 ( .A(n276), .Y(\fifo/n95 ) );
  INVX1 U538 ( .A(n275), .Y(\fifo/n96 ) );
endmodule

