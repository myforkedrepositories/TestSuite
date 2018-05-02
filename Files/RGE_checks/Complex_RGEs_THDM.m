(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Input::Initialization:: *)
<<sarah4/SARAH.m


(* ::Input::Initialization:: *)
Start["THDM-CPV"]


(* ::Input::Initialization:: *)
CalcRGEs[TwoLoop->False]


(* ::Input::Initialization:: *)
betas=Expand[BetaLijkl /. trace->Times /.Adj[x_]->x/. epsD->0 /. epsE->0 /. epsU->LT /. g1->Sqrt[5/3]gp /.g2->g /. Ye->0 /. Yd->0 /.Yu->0 //. {Lambda1->L1,Lambda2->L2,Lambda3->L3,Lambda4->L4,Lambda5->L5,Lambda6->L6,Lambda7->L7,conj[L6]->L6c,conj[L5]->L5c,conj[L7]->L7c} /. {L6->L6c,L6c->L6,L7c->L7,L7->L7c}/.L1->1/2 L1 /.L2->1/2 L2];


(* ::Input::Initialization:: *)
outRGEs=OpenWrite["THDM_RGEs_debug.txt"];


(* ::Input::Initialization:: *)
D1=12 L1^2+4 L3^2 + 4 L3 L4 + 2L4^2 + 2 L5 L5c + 24 L6 L6c + 3/4 (3 g^4 + gp^4 + 2 g^2 gp^2) -3 L1 (3g^2 + gp^2-4 LT^2)-12 LT^4;
D2=12 L2^2+4L3^2 + 4L3 L4 + 2 L4^2 + 2 L5 L5c + 24 L7 L7c + 3/4(3 g^4 + gp^4 + 2 g^2 gp^2) -3 L2 (3g^2 + gp^2);
D3=(L1+L2)(6 L3 + 2L4)+4L3^2+2 L4^2 + 2 L5 L5c + 4(L6 L6c + L7 L7c)+8 L6 L7c + 8 L6c L7 +3/4(3 g^4 + gp^4 - 2 g^2 gp^2) - 3 L3 (3g^2 +gp^2-2 LT^2);
D4=2(L1+L2)L4 + 8 L3 L4 + 4 L4^2 + 8 L5 L5c + 10(L6 L6c + L7 L7c) + 2 L6 L7c + 2 L6c L7 + 3 g^2 gp^2 - 3 L4 (3 g^2 + gp^2 - 2 LT^2);
D5=(2 L1 + 2 L2 + 8 L3 + 12 L4)L5 + 10 (L6^2+L7^2) + 4 L6 L7 - 3 L5 (3g^2+gp^2 - 2 LT^2);
D6=(12 L1 + 6 L3 + 8 L4)L6 + (6 L3 + 4 L4) L7 + 10 L5 L6c + 2 L5 L7c - 3 L6(3 g^2+gp^2 - 3LT^2);
D7=(12 L2 + 6 L3 + 8 L4) L7 + (6 L3 + 4L4) L6 + 10 L5 L7c + 2L5 L6c - 3 L7(3 g^2+gp^2 - LT^2);


(* ::Input::Initialization:: *)
If[Expand[2 betas[[4,2]]]-Expand[D1]===0,
WriteString[outRGEs,"Lambda1 correct \n"];,
WriteString[outRGEs,"Lambda1 error \n"];
];

If[Expand[2 betas[[7,2]]]-Expand[D2]===0,
WriteString[outRGEs,"Lambda2 correct \n"];,
WriteString[outRGEs,"Lambda2 error \n"];
];

If[Expand[betas[[6,2]]]-Expand[D3]===0,
WriteString[outRGEs,"Lambda3 correct \n"];,
WriteString[outRGEs,"Lambda3 error \n"];
];

If[Expand[betas[[5,2]]]-Expand[D4]===0,
WriteString[outRGEs,"Lambda4 correct \n"];,
WriteString[outRGEs,"Lambda4 error \n"];
];

If[Expand[betas[[2,2]]]-Expand[D5]===0,
WriteString[outRGEs,"Lambda5 correct \n"];,
WriteString[outRGEs,"Lambda5 error \n"];
];

If[((conj[betas[[1,2]]] /. {conj[L5c]->L5,conj[L6c]->L6,conj[L7c]->L7,conj[L5]->L5c,conj[L6]->L6c,conj[L7]->L7c}/. conj[x_]->x)-Expand[D6])===0,
WriteString[outRGEs,"Lambda6 correct \n"];,
WriteString[outRGEs,"Lambda6 error \n"];
];

If[((conj[betas[[3,2]]] /. {conj[L5c]->L5,conj[L6c]->L6,conj[L7c]->L7,conj[L5]->L5c,conj[L6]->L6c,conj[L7]->L7c}/. conj[x_]->x)-Expand[D7])===0,
WriteString[outRGEs,"Lambda7 correct \n"];,
WriteString[outRGEs,"Lambda7 error \n"];
];


(* ::Input::Initialization:: *)
Dm12=-6 (L6 m1+L7 m2)+(2 L3+4 L4)m12 + 6 L5 m12c;
Dm1=6 L1 m1 + (4L3 + 2L4)m2-6 m12 L6c - 6m12c L6;
Dm2=(4L3+2 L4)m1+6 L2 m2-6 m12 L7c - 6 m12c L7;


(* ::Input::Initialization:: *)
betasM=Expand[BetaBij /. trace->Times /.Adj[x_]->x/. epsD->0 /. epsE->0 /. epsU->LT 0 /. g1->Sqrt[5/3]gp 0/.g2->g  0/. Ye->0 /. Yd->0 /.Yu->0 //. {Lambda1->L1,Lambda2->L2,Lambda3->L3,Lambda4->L4,Lambda5->L5,Lambda6->L6,Lambda7->L7,conj[L6]->L6c,conj[L5]->L5c,conj[L7]->L7c,M222->m2,M112->m1,M12->m12 , conj[m12]->m12c} /. {L6->L6c,L6c->L6,L7c->L7,L7->L7c,m12->m12c,m12c->m12}/.L1->1/2 L1 /.L2->1/2 L2]


(* ::Input::Initialization:: *)
If[Expand[(conj[betasM[[1,2]]]-Dm12/. {conj[L5c]->L5,conj[L6c]->L6,conj[L7c]->L7,conj[L5]->L5c,conj[L6]->L6c,conj[L7]->L7c,conj[m12c]->m12,conj[m12]->m12c}/. conj[x_]->x) ]===0,
WriteString[outRGEs,"M12 correct \n"];,
WriteString[outRGEs,"M12 error \n"];
];

If[Expand[betasM[[2,2]]-Dm1]===0,
WriteString[outRGEs,"M1 correct \n"];,
WriteString[outRGEs,"M1 error \n"];
];

If[Expand[betasM[[3,2]]-Dm2]===0,
WriteString[outRGEs,"M2 correct \n"];,
WriteString[outRGEs,"M2 error \n"];
];


(* ::Input::Initialization:: *)
Close[outRGEs];