(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    661066,      15203]
NotebookOptionsPosition[    660933,      15188]
NotebookOutlinePosition[    661274,      15203]
CellTagsIndexPosition[    661231,      15200]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[StyleBox["Tool for exploring the relation between diagnostic \
accuracy and measurement uncertainty",
 FontSize->24]], "Title",
 Editable->False,
 Evaluatable->False,
 CellChangeTimes->{{3.779939682019757*^9, 3.7799397638024316`*^9}, {
  3.7865363228492603`*^9, 
  3.786536325564995*^9}},ExpressionUUID->"731cb0ca-38ae-48b8-9f31-\
28c369c8c28c"],

Cell[TextData[{
 "Theodora Chatzimichail, MD  \n",
 StyleBox["tc@hcsl.com", "Affiliation"],
 "\nAristides T. Hatjimihail, MD, PhD\n",
 StyleBox[" ath@hcsl.com\n ", "Affiliation"]
}], "Author",
 Editable->False,
 CellChangeTimes->{
  3.779939770766173*^9, {3.7799398045208244`*^9, 3.7799398637488203`*^9}, {
   3.780026882968507*^9, 3.7800269771474247`*^9}, 
   3.7804577481605635`*^9},ExpressionUUID->"eb26a9af-d7ea-4197-814c-\
4a97fd112c75"],

Cell["\<\
Hellenic Complex Systems Laboratory, Kostis Palamas 21, 66131 Drama, Greece.
\
\>", "Affiliation",
 Editable->False,
 CellChangeTimes->{{3.779939871863575*^9, 3.77994000946682*^9}, {
   3.7799400566027045`*^9, 3.7799400570186176`*^9}, 
   3.780026865496773*^9},ExpressionUUID->"29bf9113-0378-4a8c-a104-\
144b267e81c3"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"tsens", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", "/", "2"}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{"1", "+", 
     RowBox[{"Erf", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
    ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"tspec", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", "/", "2"}], ")"}], " ", 
   RowBox[{"Erfc", "[", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\[Sqrt]", "2"}], " ", 
       RowBox[{"\[Sqrt]", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["u", "2"], "+", 
          SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
    "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"ttp", "[", 
    RowBox[{
    "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}], " ", "pd"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ttn", "[", 
    RowBox[{
    "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", 
    RowBox[{"Erfc", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Sqrt]", "2"}], " ", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}], 
    RowBox[{"(", 
     RowBox[{"1", "-", "pd"}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"tfp", "[", 
    RowBox[{
    "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", "2"}], ")"}], " ", 
       RowBox[{"Erfc", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
        "]"}]}]}], ")"}], 
    RowBox[{"(", 
     RowBox[{"1", "-", "pd"}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"tfn", "[", 
    RowBox[{
    "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"1", "-", 
      RowBox[{"(", 
       RowBox[{"Erf", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}], 
       ")"}]}], ")"}], "pd"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"toda", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", "/", "2"}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{"pd", "+", 
     RowBox[{"pd", " ", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
      RowBox[{"Erfc", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
       "]"}]}]}], ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"tppv", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{"pd", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"Erf", "[", 
       FractionBox[
        RowBox[{
         RowBox[{"-", "t"}], "+", "\[Mu]D"}], 
        RowBox[{
         SqrtBox["2"], " ", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]D", "2"]}]]}]], "]"}]}], ")"}], "/", 
    RowBox[{"(", 
     RowBox[{"2", "-", 
      RowBox[{"pd", " ", 
       RowBox[{"Erfc", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]D"}], 
         RowBox[{
          SqrtBox["2"], " ", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}]]}]], "]"}]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
       RowBox[{"Erfc", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]H"}], 
         RowBox[{
          SqrtBox["2"], " ", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]H", "2"]}]]}]], "]"}]}]}], 
     ")"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"tnpv", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{"1", "/", 
   RowBox[{"(", 
    RowBox[{"1", "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"pd", " ", 
        RowBox[{"Erfc", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"\[Sqrt]", "2"}], " ", 
            RowBox[{"\[Sqrt]", 
             RowBox[{"(", 
              RowBox[{
               SuperscriptBox["u", "2"], "+", 
               SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], 
         "]"}]}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
        RowBox[{"Erfc", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"\[Sqrt]", "2"}], " ", 
            RowBox[{"\[Sqrt]", 
             RowBox[{"(", 
              RowBox[{
               SuperscriptBox["u", "2"], "+", 
               SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
         "]"}]}], ")"}]}]}], ")"}]}]}], "\n", 
 RowBox[{
  RowBox[{"tdor", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "2"}], "+", 
       RowBox[{"Erfc", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}],
       ")"}], " ", 
     RowBox[{"Erfc", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
    ")"}], "/", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Erfc", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}], 
     " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "2"}], "+", 
       RowBox[{"Erfc", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}],
       ")"}]}], ")"}]}]}], "\n", 
 RowBox[{
  RowBox[{"tplr", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", "+", 
     RowBox[{"Erf", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
    ")"}], "/", 
   RowBox[{"(", 
    RowBox[{"1", "+", 
     RowBox[{"Erf", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
    ")"}]}]}], "\n", 
 RowBox[{
  RowBox[{"tnlr", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"Erfc", "[", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\[Sqrt]", "2"}], " ", 
       RowBox[{"\[Sqrt]", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["u", "2"], "+", 
          SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}], "/", 
   RowBox[{"Erfc", "[", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\[Sqrt]", "2"}], " ", 
       RowBox[{"\[Sqrt]", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["u", "2"], "+", 
          SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
    "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"tyi", "[", 
    RowBox[{
    "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "1"}], "+", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}], 
      "+", 
      RowBox[{"Erfc", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ted", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", "/", "2"}], ")"}], " ", 
   RowBox[{"\[Sqrt]", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"1", "+", 
         RowBox[{"Erf", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"\[Sqrt]", "2"}], " ", 
             RowBox[{"\[Sqrt]", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox["u", "2"], "+", 
                SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
          "]"}]}], ")"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{"Erfc", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}], 
       "2"]}], ")"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"tcz", "[", 
    RowBox[{
    "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "4"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}], " ", 
    RowBox[{"Erfc", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Sqrt]", "2"}], " ", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ttr", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u_", ",", 
    RowBox[{"{", 
     RowBox[{"rt_", ",", "rtp_", ",", "rtn_", ",", "rfp_", ",", "rfn_"}], 
     "}"}]}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", "/", "2"}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{"rfp", "+", "rt"}], ")"}]}], "+", 
     RowBox[{"pd", " ", 
      RowBox[{"(", 
       RowBox[{"rfn", "-", 
        RowBox[{"2", " ", "rfp"}], "+", "rtp"}], ")"}]}], "+", 
     RowBox[{"pd", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "rfn"}], "+", "rtp"}], ")"}], " ", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]D"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"rfp", "-", "rtn"}], ")"}], " ", 
      RowBox[{"Erfc", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "t"}], "+", "\[Mu]H"}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
       "]"}]}]}], ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"sens", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
           RowBox[{"InverseErfc", "[", 
            RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"spec", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", 
    RowBox[{"Erfc", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
         RowBox[{"InverseErfc", "[", 
          RowBox[{"2", "-", 
           RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Sqrt]", "2"}], " ", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"tp", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"sn", " ", "pd"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"tn", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"(", 
      RowBox[{"1", "/", "2"}], ")"}]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
    RowBox[{"Erfc", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
         RowBox[{"InverseErfc", "[", 
          RowBox[{"2", "-", 
           RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Sqrt]", "2"}], " ", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"fp", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "2"}], "+", 
      RowBox[{"Erfc", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
           RowBox[{"InverseErfc", "[", 
            RowBox[{"2", "-", 
             RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"fn", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "-", "sn"}], ")"}], "pd"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"oda", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"pd", " ", "sn"}], "-", 
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
     RowBox[{"Erfc", "[", 
      FractionBox[
       RowBox[{
        RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
        RowBox[{
         SqrtBox["2"], " ", 
         SqrtBox[
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]D", "2"]}]], " ", 
         RowBox[{"InverseErfc", "[", 
          RowBox[{"2", "-", 
           RowBox[{"2", " ", "sn"}]}], "]"}]}]}], 
       RowBox[{
        SqrtBox["2"], " ", 
        SqrtBox[
         RowBox[{
          SuperscriptBox["u", "2"], "+", 
          SuperscriptBox["\[Sigma]H", "2"]}]]}]], "]"}]}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ppv", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"2", " ", "pd", " ", "sn"}], ")"}], "/", 
    RowBox[{"(", 
     RowBox[{"2", "+", 
      RowBox[{"2", " ", "pd", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "+", "sn"}], ")"}]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
       RowBox[{"Erfc", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
           RowBox[{
            RowBox[{"\[Sqrt]", "2"}], " ", 
            RowBox[{"\[Sqrt]", 
             RowBox[{"(", 
              RowBox[{
               SuperscriptBox["u", "2"], "+", 
               SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
            RowBox[{"InverseErfc", "[", 
             RowBox[{"2", "-", 
              RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
        "]"}]}]}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"npv", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"1", "/", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"2", " ", "pd", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "sn"}], ")"}]}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
         RowBox[{"Erfc", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
             RowBox[{
              RowBox[{"\[Sqrt]", "2"}], " ", 
              RowBox[{"\[Sqrt]", 
               RowBox[{"(", 
                RowBox[{
                 SuperscriptBox["u", "2"], "+", 
                 SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
              RowBox[{"InverseErfc", "[", 
               RowBox[{"2", "-", 
                RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"\[Sqrt]", "2"}], " ", 
             RowBox[{"\[Sqrt]", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox["u", "2"], "+", 
                SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
          "]"}]}], ")"}]}]}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"cnpv", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"1", "-", 
    RowBox[{"1", "/", 
     RowBox[{"(", 
      RowBox[{"1", "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"2", " ", "pd", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "sn"}], ")"}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
          RowBox[{"Erfc", "[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
              RowBox[{
               RowBox[{"\[Sqrt]", "2"}], " ", 
               RowBox[{"\[Sqrt]", 
                RowBox[{"(", 
                 RowBox[{
                  SuperscriptBox["u", "2"], "+", 
                  SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
               RowBox[{"InverseErfc", "[", 
                RowBox[{"2", "-", 
                 RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"\[Sqrt]", "2"}], " ", 
              RowBox[{"\[Sqrt]", 
               RowBox[{"(", 
                RowBox[{
                 SuperscriptBox["u", "2"], "+", 
                 SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
           "]"}]}], ")"}]}]}], ")"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"dor", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "+", "sn"}], ")"}]}], ")"}], "sn", " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"2", "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "2"}], "+", 
         RowBox[{"Erfc", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
             RowBox[{
              RowBox[{"\[Sqrt]", "2"}], " ", 
              RowBox[{"\[Sqrt]", 
               RowBox[{"(", 
                RowBox[{
                 SuperscriptBox["u", "2"], "+", 
                 SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
              RowBox[{"InverseErfc", "[", 
               RowBox[{"2", "-", 
                RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"\[Sqrt]", "2"}], " ", 
             RowBox[{"\[Sqrt]", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox["u", "2"], "+", 
                SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
          "]"}]}], ")"}]}]}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"plr", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"2", " ", "sn"}], ")"}], "/", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
           RowBox[{"InverseErfc", "[", 
            RowBox[{"2", "-", 
             RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"nlr", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"-", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "sn"}], ")"}]}], ")"}], "/", 
      RowBox[{"Erfc", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
           RowBox[{"InverseErfc", "[", 
            RowBox[{"2", "-", 
             RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"yi", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"-", "1"}], "+", "sn", "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "/", "2"}], ")"}], " ", 
     RowBox[{"Erfc", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
          RowBox[{"InverseErfc", "[", 
           RowBox[{"2", "-", 
            RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
      "]"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ed", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"\[Sqrt]", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "+", "sn"}], ")"}], "2"], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", "4"}], ")"}], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{"Erf", "[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
              RowBox[{
               RowBox[{"\[Sqrt]", "2"}], " ", 
               RowBox[{"\[Sqrt]", 
                RowBox[{"(", 
                 RowBox[{
                  SuperscriptBox["u", "2"], "+", 
                  SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
               RowBox[{"InverseErfc", "[", 
                RowBox[{"2", "-", 
                 RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"\[Sqrt]", "2"}], " ", 
              RowBox[{"\[Sqrt]", 
               RowBox[{"(", 
                RowBox[{
                 SuperscriptBox["u", "2"], "+", 
                 SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
           "]"}]}], ")"}], "2"]}]}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"cz", "[", 
    RowBox[{
    "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", "sn", " ", 
    RowBox[{"Erfc", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
         RowBox[{"InverseErfc", "[", 
          RowBox[{"2", "-", 
           RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Sqrt]", "2"}], " ", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"tr", "[", 
   RowBox[{
   "sn_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
    "\[Sigma]H_", ",", "pd_", ",", "u_", ",", 
    RowBox[{"{", 
     RowBox[{"rt_", ",", "rtp_", ",", "rtn_", ",", "rfp_", ",", "rfn_"}], 
     "}"}]}], "]"}], ":=", 
  RowBox[{"rfp", "+", "rt", "+", 
   RowBox[{"pd", " ", 
    RowBox[{"(", 
     RowBox[{"rfn", "-", "rfp", "-", 
      RowBox[{"rfn", " ", "sn"}], "+", 
      RowBox[{"rtp", " ", "sn"}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"rfp", "-", "rtn"}], ")"}], " ", 
    RowBox[{"Erfc", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H", "+", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}], " ", 
         RowBox[{"InverseErfc", "[", 
          RowBox[{"2", "-", 
           RowBox[{"2", " ", "sn"}]}], "]"}]}]}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Sqrt]", "2"}], " ", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
     "]"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"htp", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", "pd", " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
           RowBox[{"InverseErfc", "[", 
            RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"htn", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"sp", 
    RowBox[{"(", 
     RowBox[{"1", "-", "pd"}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hfp", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "-", "sp"}], ")"}], 
    RowBox[{"(", 
     RowBox[{"1", "-", "pd"}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hfn", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", "pd", " ", 
    RowBox[{"Erfc", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
         RowBox[{"InverseErfc", "[", 
          RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Sqrt]", "2"}], " ", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hoda", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", "pd"}], ")"}], " ", "sp"}], "+", 
    RowBox[{
     FractionBox["1", "2"], " ", "pd", " ", 
     RowBox[{"(", 
      RowBox[{"1", "+", 
       RowBox[{"Erf", "[", 
        FractionBox[
         RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
          RowBox[{
           SqrtBox["2"], " ", 
           SqrtBox[
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}]], " ", 
           RowBox[{"InverseErfc", "[", 
            RowBox[{"2", " ", "sp"}], "]"}]}]}], 
         RowBox[{
          SqrtBox["2"], " ", 
          SqrtBox[
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}]]}]], "]"}]}], ")"}]}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hppv", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"1", "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "+", "sp"}], ")"}]}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "2"}], "-", 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", "sp"}], "+", 
       RowBox[{"pd", " ", 
        RowBox[{"Erfc", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
            RowBox[{
             RowBox[{"\[Sqrt]", "2"}], " ", 
             RowBox[{"\[Sqrt]", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox["u", "2"], "+", 
                SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
             RowBox[{"InverseErfc", "[", 
              RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"\[Sqrt]", "2"}], " ", 
            RowBox[{"\[Sqrt]", 
             RowBox[{"(", 
              RowBox[{
               SuperscriptBox["u", "2"], "+", 
               SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], 
         "]"}]}]}], ")"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hnpv", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", "sp"}], ")"}], "/", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", "sp"}], "-", 
      RowBox[{"pd", " ", 
       RowBox[{"Erfc", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
           RowBox[{
            RowBox[{"\[Sqrt]", "2"}], " ", 
            RowBox[{"\[Sqrt]", 
             RowBox[{"(", 
              RowBox[{
               SuperscriptBox["u", "2"], "+", 
               SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
            RowBox[{"InverseErfc", "[", 
             RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], 
        "]"}]}]}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hdor", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "+", "sp"}], ")"}]}], ")"}], "sp", " ", 
    RowBox[{"(", 
     RowBox[{"1", "-", 
      RowBox[{"2", "/", 
       RowBox[{"Erfc", "[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
           RowBox[{
            RowBox[{"\[Sqrt]", "2"}], " ", 
            RowBox[{"\[Sqrt]", 
             RowBox[{"(", 
              RowBox[{
               SuperscriptBox["u", "2"], "+", 
               SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
            RowBox[{"InverseErfc", "[", 
             RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], 
        "]"}]}]}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hplr", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "2"}], "+", 
      RowBox[{"Erfc", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
           RowBox[{"InverseErfc", "[", 
            RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}], "/", 
    RowBox[{"(", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "+", "sp"}], ")"}]}], ")"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hnlr", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", 
      RowBox[{"(", 
       RowBox[{"2", " ", "sp"}], ")"}]}], ")"}], 
    RowBox[{"Erfc", "[", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
         RowBox[{"InverseErfc", "[", 
          RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\[Sqrt]", "2"}], " ", 
        RowBox[{"\[Sqrt]", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["u", "2"], "+", 
           SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"hyi", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"sp", "-", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "/", "2"}], ")"}], " ", 
     RowBox[{"Erfc", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
          RowBox[{"InverseErfc", "[", 
           RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], 
      "]"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hed", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{"\[Sqrt]", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "+", "sp"}], ")"}], "2"], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "/", "4"}], ")"}], " ", 
       SuperscriptBox[
        RowBox[{"Erfc", "[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
            RowBox[{
             RowBox[{"\[Sqrt]", "2"}], " ", 
             RowBox[{"\[Sqrt]", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox["u", "2"], "+", 
                SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
             RowBox[{"InverseErfc", "[", 
              RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"\[Sqrt]", "2"}], " ", 
            RowBox[{"\[Sqrt]", 
             RowBox[{"(", 
              RowBox[{
               SuperscriptBox["u", "2"], "+", 
               SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}], 
        "2"]}]}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"hcz", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"1", "/", "2"}], ")"}], " ", "sp", " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"Erf", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
          RowBox[{
           RowBox[{"\[Sqrt]", "2"}], " ", 
           RowBox[{"\[Sqrt]", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox["u", "2"], "+", 
              SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
           RowBox[{"InverseErfc", "[", 
            RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
     ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"htr", "[", 
    RowBox[{
    "sp_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_", ",", 
     RowBox[{"{", 
      RowBox[{"rt_", ",", "rtp_", ",", "rtn_", ",", "rfp_", ",", "rfn_"}], 
      "}"}]}], "]"}], ":=", 
   RowBox[{"rfp", "-", 
    RowBox[{"pd", " ", "rfp"}], "+", "rt", "+", 
    RowBox[{"pd", " ", "rtp"}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "1"}], "+", "pd"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{"rfp", "-", "rtn"}], ")"}], " ", "sp"}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "/", "2"}], ")"}], " ", "pd", " ", 
     RowBox[{"(", 
      RowBox[{"rfn", "-", "rtp"}], ")"}], " ", 
     RowBox[{"Erfc", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
          RowBox[{"InverseErfc", "[", 
           RowBox[{"2", " ", "sp"}], "]"}]}]}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], 
      "]"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"roc", "[", 
   RowBox[{
   "x_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "u_"}], "]"}], ":=", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", "/", "2"}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{"1", "+", 
     RowBox[{"Erf", "[", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"\[Mu]D", "-", "\[Mu]H", "+", 
         RowBox[{
          RowBox[{"\[Sqrt]", "2"}], " ", 
          RowBox[{"\[Sqrt]", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["u", "2"], "+", 
             SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}], " ", 
          RowBox[{"InverseErfc", "[", 
           RowBox[{"2", "-", 
            RowBox[{"2", " ", "x"}]}], "]"}]}]}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[Sqrt]", "2"}], " ", 
         RowBox[{"\[Sqrt]", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["u", "2"], "+", 
            SuperscriptBox["\[Sigma]D", "2"]}], ")"}]}]}], ")"}]}], "]"}]}], 
    ")"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"auc", "[", 
   RowBox[{
   "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
    "u_"}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"1", "/", "2"}], ")"}], " ", 
   RowBox[{"Erfc", "[", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "\[Mu]D"}], "+", "\[Mu]H"}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\[Sqrt]", "2"}], " ", 
       RowBox[{"\[Sqrt]", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["u", "2"]}], "+", 
          SuperscriptBox["\[Sigma]D", "2"], "+", 
          SuperscriptBox["\[Sigma]H", "2"]}], ")"}]}]}], ")"}]}], 
    "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"tsd", "[", 
    RowBox[{
    "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
     "\[Sigma]H_", ",", "pd_", ",", "u_"}], "]"}], ":=", 
   RowBox[{
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"1", "-", 
       RowBox[{"tsens", "[", 
        RowBox[{
        "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H",
          ",", "pd", ",", "u"}], "]"}]}], ")"}], "2"], "+", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"1", "-", 
       RowBox[{"tspec", "[", 
        RowBox[{
        "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H",
          ",", "pd", ",", "u"}], "]"}]}], ")"}], "2"]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"min", "[", 
    RowBox[{"f_", ",", 
     RowBox[{"{", 
      RowBox[{
      "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
       "pd_", ",", "u_", ",", "l___List"}], "}"}]}], "]"}], ":=", 
   RowBox[{"z", "/.", 
    RowBox[{
     RowBox[{"NMinimize", "[", 
      RowBox[{
       RowBox[{"f", "@@", 
        RowBox[{"{", 
         RowBox[{
         "z", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
          "\[Sigma]H", ",", "pd", ",", "u", ",", "l"}], "}"}]}], ",", "z"}], 
      "]"}], "[", 
     RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"max", "[", 
    RowBox[{"f_", ",", 
     RowBox[{"{", 
      RowBox[{
      "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
       "pd_", ",", "u_", ",", "l___List"}], "}"}]}], "]"}], ":=", 
   RowBox[{"z", "/.", 
    RowBox[{
     RowBox[{"NMaximize", "[", 
      RowBox[{
       RowBox[{"f", "@@", 
        RowBox[{"{", 
         RowBox[{
         "z", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
          "\[Sigma]H", ",", "pd", ",", "u", ",", "l"}], "}"}]}], ",", "z", 
       ",", 
       RowBox[{"MaxIterations", "\[Rule]", "10000"}]}], "]"}], "[", 
     RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"damr", "[", 
   RowBox[{
   "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
    "pd_", ",", "u1_", ",", "u2_"}], "]"}], ":=", "\[IndentingNewLine]", 
  RowBox[{"Text", "@", 
   RowBox[{"Grid", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"Transpose", "[", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"\"\<\>\"", ",", "\"\<AUC\>\"", ",", "\"\<AOC\>\""}], "}"}],
          ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<first test\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"auc", "[", 
                RowBox[{
                "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
                 ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"1.0", "-", 
              RowBox[{"Re", "[", 
               RowBox[{"N", "@", 
                RowBox[{"auc", "[", 
                 RowBox[{
                 "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
                  ",", "u1"}], "]"}]}], "]"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<second test\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"auc", "[", 
                RowBox[{
                "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
                 ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"1.0", "-", 
              RowBox[{"Re", "[", 
               RowBox[{"N", "@", 
                RowBox[{"auc", "[", 
                 RowBox[{
                 "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
                  ",", "u2"}], "]"}]}], "]"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{"\"\<relative difference\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"auc", "[", 
                   RowBox[{
                   "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1"}], "]"}]}], "]"}], "-", 
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"auc", "[", 
                   RowBox[{
                   "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u2"}], "]"}]}], "]"}]}], ")"}], "/", 
              RowBox[{"Re", "[", 
               RowBox[{"N", "@", 
                RowBox[{"auc", "[", 
                 RowBox[{
                 "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
                  ",", "u1"}], "]"}]}], "]"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"auc", "[", 
                   RowBox[{
                   "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u2"}], "]"}]}], "]"}], "-", 
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"auc", "[", 
                   RowBox[{
                   "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1"}], "]"}]}], "]"}]}], ")"}], "/", 
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"auc", "[", 
                   RowBox[{
                   "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1"}], "]"}]}], "]"}]}], ")"}]}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}]}], "}"}], 
       "]"}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Frame", "\[Rule]", "All"}], ",", " ", 
     RowBox[{"FrameStyle", "\[Rule]", "Gray"}], ",", 
     RowBox[{"Spacings", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0.5", ",", "1"}], "}"}]}], ",", 
     RowBox[{"ItemSize", "\[Rule]", "Automatic"}]}], 
    "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"dam1", "[", 
   RowBox[{
   "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_",
     ",", "pd_", ",", "u1_", ",", "u2_", ",", 
    RowBox[{"{", 
     RowBox[{"rt_", ",", "rtp_", ",", "rtn_", ",", "rfp_", ",", "rfn_"}], 
     "}"}]}], "]"}], ":=", "\[IndentingNewLine]", 
  RowBox[{"Text", "@", 
   RowBox[{"Grid", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"Transpose", "[", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{
            "\"\<calculation of diagnostic accuracy measures\>\"", ",", 
             "Bold"}], "]"}], ",", 
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"\"\<diagnostic threshold: \>\"", "<>", 
              RowBox[{"ToString", "[", 
               RowBox[{"N", "[", 
                RowBox[{"t", ",", "2"}], "]"}], "]"}]}], ",", "Red"}], "]"}], 
           ",", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<diagnostic accuracy measures\>\"", ",", "Bold"}], 
            "]"}], ",", "\"\<sensitivity\>\"", ",", "\"\<specificity\>\"", 
           ",", "\"\<overall diagnostic accuracy\>\"", ",", 
           "\"\<positive predictive value\>\"", ",", " ", 
           "\"\<negative predictive value\>\"", ",", " ", 
           "\"\<diagnostic odds ratio\>\"", ",", " ", 
           "\"\<likelihood ratio for a positive result\>\"", ",", 
           "\"\<likelihood ratio for a negative result\>\"", ",", 
           "\"\<Euclidean distance\>\"", ",", "\"\<Youden's index\>\"", ",", 
           "\"\<concordance probability\>\"", ",", "\"\<risk\>\""}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
          "SpanFromLeft", ",", "SpanFromLeft", ",", "SpanFromLeft", ",", 
           "\"\<Se\>\"", ",", "\"\<Sp\>\"", ",", "\"\<ODA\>\"", ",", 
           "\"\<PPV\>\"", ",", " ", "\"\<NPV\>\"", ",", " ", "\"\<DOR\>\"", 
           ",", " ", "\"\<LR+\>\"", ",", "\"\<LR-\>\"", ",", "\"\<ED\>\"", 
           ",", "\"\<J\>\"", ",", "\"\<CZ\>\"", ",", "\"\<R\>\""}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
          "SpanFromLeft", ",", "\[IndentingNewLine]", "SpanFromLeft", ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<first test\>\"", ",", "Bold"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tsens", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tspec", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"toda", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tppv", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tnpv", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tdor", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tplr", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tnlr", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tyi", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"ted", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tcz", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"ttr", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                  "}"}]}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"{", 
          RowBox[{
          "SpanFromLeft", ",", "\[IndentingNewLine]", "SpanFromLeft", ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<second test\>\"", ",", "Bold"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tsens", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tspec", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"toda", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tppv", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tnpv", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tdor", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tplr", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tnlr", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tyi", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"ted", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"tcz", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"ttr", "[", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                  "}"}]}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
          "SpanFromLeft", ",", "\[IndentingNewLine]", "SpanFromLeft", ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<relative difference\>\"", ",", "Bold"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tsens", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tspec", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"toda", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tppv", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tnpv", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tdor", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tplr", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tnlr", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tyi", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"ted", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"tcz", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"NumberForm", "[", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"N", "@", 
               RowBox[{"rdeltaf", "[", 
                RowBox[{"ttr", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                   RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}]}], 
        "\[IndentingNewLine]", "}"}], "]"}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Frame", "\[Rule]", "All"}], ",", " ", 
     RowBox[{"FrameStyle", "\[Rule]", 
      RowBox[{"Blend", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"Blue", ",", "Cyan"}], "}"}], ",", "0.35"}], "]"}]}], ",", 
     RowBox[{"Spacings", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"1", ",", "1"}], "}"}]}], ",", 
     RowBox[{"ItemSize", "\[Rule]", "Automatic"}]}], 
    "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"dam2", "[", 
   RowBox[{"m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
      "pd_", ",", "u1_", ",", "u2_", ",", 
      RowBox[{"{", 
       RowBox[{"rt_", ",", "rtp_", ",", "rtn_", ",", "rfp_", ",", "rfn_"}], 
       "}"}]}], "}"}]}], "]"}], ":=", 
  RowBox[{"Block", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"t1", ",", "t2"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"t1", "=", 
      RowBox[{"Switch", "[", 
       RowBox[{"m", ",", "j", ",", 
        RowBox[{"max", "[", 
         RowBox[{"tyi", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u1"}], "}"}]}], "]"}], ",", "ed", ",", 
        RowBox[{"min", "[", 
         RowBox[{"ted", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u1"}], "}"}]}], "]"}], ",", "cz", ",", 
        RowBox[{"max", "[", 
         RowBox[{"tcz", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u1"}], "}"}]}], "]"}], ",", "r", ",", 
        RowBox[{"min", "[", 
         RowBox[{"ttr", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u1", ",", 
            RowBox[{"{", 
             RowBox[{"rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
             "}"}]}], "}"}]}], "]"}]}], "]"}]}], ";", 
     RowBox[{"t2", "=", 
      RowBox[{"Switch", "[", 
       RowBox[{"m", ",", "j", ",", 
        RowBox[{"max", "[", 
         RowBox[{"tyi", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u2"}], "}"}]}], "]"}], ",", "ed", ",", 
        RowBox[{"min", "[", 
         RowBox[{"ted", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u2"}], "}"}]}], "]"}], ",", "cz", ",", 
        RowBox[{"max", "[", 
         RowBox[{"tcz", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u2"}], "}"}]}], "]"}], ",", "r", ",", 
        RowBox[{"min", "[", 
         RowBox[{"ttr", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u2", ",", 
            RowBox[{"{", 
             RowBox[{"rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
             "}"}]}], "}"}]}], "]"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Text", "@", 
      RowBox[{"Grid", "[", 
       RowBox[{
        RowBox[{"Quiet", "[", 
         RowBox[{"Transpose", "[", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"tl", "[", "m", "]"}], ",", "\"\<\>\"", ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<diagnostic threshold\>\"", ",", "Red"}], "]"}], 
              ",", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<diagnostic accuracy measures\>\"", ",", "Bold"}], 
               "]"}], ",", "\"\<sensitivity\>\"", ",", "\"\<specificity\>\"", 
              ",", "\"\<overall diagnostic accuracy\>\"", ",", 
              "\"\<positive predictive value\>\"", ",", " ", 
              "\"\<negative predictive value\>\"", ",", " ", 
              "\"\<diagnostic odds ratio\>\"", ",", " ", 
              "\"\<likelihood ratio for a positive result\>\"", ",", 
              "\"\<likelihood ratio for a negative result\>\"", ",", 
              "\"\<Euclidean distance\>\"", ",", "\"\<Youden's index\>\"", 
              ",", "\"\<concordance probability\>\"", ",", "\"\<risk\>\""}], 
             "}"}], ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
             "SpanFromLeft", ",", "SpanFromLeft", ",", "SpanFromLeft", ",", 
              "SpanFromLeft", ",", "\"\<Se\>\"", ",", "\"\<Sp\>\"", ",", 
              "\"\<ODA\>\"", ",", "\"\<PPV\>\"", ",", " ", "\"\<NPV\>\"", ",",
               " ", "\"\<DOR\>\"", ",", " ", "\"\<LR+\>\"", ",", 
              "\"\<LR-\>\"", ",", "\"\<ED\>\"", ",", "\"\<J\>\"", ",", 
              "\"\<CZ\>\"", ",", "\"\<R\>\""}], "}"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"SpanFromLeft", ",", "\[IndentingNewLine]", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<first test\>\"", ",", "Bold"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"NumberForm", "[", 
                 RowBox[{
                  RowBox[{"N", "[", "t1", "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", "Red"}], 
               "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tsens", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tspec", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"toda", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tppv", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tnpv", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tdor", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tplr", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tnlr", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tyi", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"ted", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tcz", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"ttr", "[", 
                   RowBox[{
                   "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"SpanFromLeft", ",", "\[IndentingNewLine]", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<second test\>\"", ",", "Bold"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"NumberForm", "[", 
                 RowBox[{
                  RowBox[{"N", "[", "t2", "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", "Red"}], 
               "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tsens", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tspec", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"toda", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tppv", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tnpv", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tdor", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tplr", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tnlr", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tyi", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"ted", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"tcz", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{"Re", "[", 
                 RowBox[{"N", "@", 
                  RowBox[{"ttr", "[", 
                   RowBox[{
                   "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "]"}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{"SpanFromLeft", ",", "\[IndentingNewLine]", 
              RowBox[{"Style", "[", 
               RowBox[{"\"\<relative difference\>\"", ",", "Bold"}], "]"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"NumberForm", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"N", "[", "t1", "]"}], "-", 
                    RowBox[{"N", "[", "t2", "]"}]}], ")"}], "/", 
                   RowBox[{"N", "[", "t1", "]"}]}], ",", 
                  RowBox[{"{", 
                   RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", "Red"}], 
               "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tsens", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tsens", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tsens", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tspec", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tspec", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tspec", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"toda", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"toda", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"toda", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tppv", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tppv", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tppv", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tnpv", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tnpv", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tnpv", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tdor", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tdor", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tdor", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tplr", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tplr", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tplr", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tnlr", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tnlr", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tnlr", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tyi", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tyi", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tyi", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"ted", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"ted", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"ted", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tcz", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"tcz", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}]}], "]"}]}], 
                  ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"tcz", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}]}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"NumberForm", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"ttr", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "]"}]}], "]"}], "-", 
                   RowBox[{"Re", "[", 
                    RowBox[{"N", "@", 
                    RowBox[{"ttr", "[", 
                    RowBox[{
                    "t2", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "]"}]}], "]"}]}], ")"}], "/", 
                 RowBox[{"Re", "[", 
                  RowBox[{"N", "@", 
                   RowBox[{"ttr", "[", 
                    RowBox[{
                    "t1", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",",
                     "\[Sigma]H", ",", "pd", ",", "u1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "]"}]}], "]"}]}], ",", 
                RowBox[{"{", 
                 RowBox[{"8", ",", "3"}], "}"}]}], "]"}]}], "}"}]}], "}"}], 
          "]"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Frame", "\[Rule]", "All"}], ",", " ", 
        RowBox[{"FrameStyle", "\[Rule]", 
         RowBox[{"Blend", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"Blue", ",", "Cyan"}], "}"}], ",", "0.35"}], "]"}]}], ",", 
        RowBox[{"Spacings", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"1", ",", "1"}], "}"}]}], ",", 
        RowBox[{"ItemSize", "\[Rule]", "Automatic"}]}], "]"}]}]}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"txt", "[", 
   RowBox[{"f_", ",", "m_"}], "]"}], ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{"f", ",", "vf", ",", 
    RowBox[{"Switch", "[", 
     RowBox[{
     "m", ",", "sns", ",", "\"\<Se\>\"", ",", "spc", ",", "\"\<Sp\>\"", ",", 
      "csens", ",", "\"\<CSens\>\"", ",", "cspec", ",", "\"\<CSpec\>\"", ",", 
      "oda", ",", "\"\<ODA\>\"", ",", "ppv", ",", "\"\<PPV\>\"", ",", "npv", 
      ",", "\"\<NPV\>\"", ",", "dor", ",", "\"\<DOR\>\"", ",", "plr", ",", 
      "\"\<LR+\>\"", ",", "nlr", ",", "\"\<LR-\>\"", ",", "yi", ",", 
      "\"\<J\>\"", ",", "ed", ",", "\"\<ED\>\"", ",", "cz", ",", "\"\<CZ\>\"",
       ",", "tr", ",", "\"\<R\>\""}], "]"}], ",", "deltaf", ",", 
    RowBox[{"Switch", "[", 
     RowBox[{
     "m", ",", "sns", ",", "\"\<\[DifferenceDelta]Se\>\"", ",", "spc", ",", 
      "\"\<\[DifferenceDelta]Sp\>\"", ",", "oda", ",", 
      "\"\<\[DifferenceDelta]ODA\>\"", ",", "ppv", ",", 
      "\"\<\[DifferenceDelta]PPV\>\"", ",", "npv", ",", 
      "\"\<\[DifferenceDelta]NPV\>\"", ",", "dor", ",", 
      "\"\<\[DifferenceDelta]DOR\>\"", ",", "plr", ",", 
      "\"\<\[DifferenceDelta]LR+\>\"", ",", "nlr", ",", 
      "\"\<\[DifferenceDelta]LR-\>\"", ",", "yi", ",", 
      "\"\<\[DifferenceDelta]J\>\"", ",", "ed", ",", 
      "\"\<\[DifferenceDelta]ED\>\"", ",", "cz", ",", 
      "\"\<\[DifferenceDelta]CZ\>\"", ",", "tr", ",", 
      "\"\<\[DifferenceDelta]R\>\""}], "]"}], ",", " ", "rdeltaf", ",", 
    RowBox[{"Switch", "[", 
     RowBox[{
     "m", ",", "sns", ",", "\"\<\[DifferenceDelta]r(Se)\>\"", ",", "spc", 
      ",", "\"\<\[DifferenceDelta]r(Sp)\>\"", ",", "oda", ",", 
      "\"\<\[DifferenceDelta]r(ODA)\>\"", ",", "ppv", ",", 
      "\"\<\[DifferenceDelta]r(PPV)\>\"", ",", "npv", ",", 
      "\"\<\[DifferenceDelta]r(NPV)\>\"", ",", "dor", ",", 
      "\"\<\[DifferenceDelta]r(DOR)\>\"", ",", "plr", ",", 
      "\"\<\[DifferenceDelta]r(LR+)\>\"", ",", "nlr", ",", 
      "\"\<\[DifferenceDelta]r(LR-)\>\"", ",", "yi", ",", 
      "\"\<\[DifferenceDelta]r(J)\>\"", ",", "ed", ",", 
      "\"\<\[DifferenceDelta]r(ED)\>\"", ",", "cz", ",", 
      "\"\<\[DifferenceDelta]r(CZ)\>\"", ",", "tr", ",", 
      "\"\<\[DifferenceDelta]r(R)\>\""}], "]"}], ",", " ", "df", ",", 
    RowBox[{"Switch", "[", 
     RowBox[{
     "m", ",", "sns", ",", "\"\<\[PartialD](Se)/\[PartialD]u\>\"", ",", "spc",
       ",", "\"\<\[PartialD](Sp)/\[PartialD]u\>\"", ",", "oda", ",", 
      "\"\<\[PartialD](ODA)/\[PartialD]u\>\"", ",", "ppv", ",", 
      "\"\<\[PartialD](PPV)/\[PartialD]u\>\"", ",", "npv", ",", 
      "\"\<\[PartialD](NPV)/\[PartialD]u\>\"", ",", "dor", ",", 
      "\"\<\[PartialD](DOR)/\[PartialD]u\>\"", ",", "plr", ",", 
      "\"\<\[PartialD](LR+)/\[PartialD]u\>\"", ",", "nlr", ",", 
      "\"\<\[PartialD](LR-)/\[PartialD]u\>\"", ",", "yi", ",", 
      "\"\<\[PartialD](J)/\[PartialD]u\>\"", ",", "ed", ",", 
      "\"\<\[PartialD](ED)/\[PartialD]u\>\"", ",", "cz", ",", 
      "\"\<\[PartialD](CZ)/\[PartialD]u\>\"", ",", "tr", ",", 
      "\"\<\[PartialD](R)/\[PartialD]u\>\""}], "]"}], ",", "rf", ",", 
    RowBox[{"Switch", "[", 
     RowBox[{
     "m", ",", "sns", ",", "\"\<Se ratio\>\"", ",", "spc", ",", 
      "\"\<Sp ratio\>\"", ",", "oda", ",", "\"\<ODA ratio\>\"", ",", "ppv", 
      ",", "\"\<PPV ratio\>\"", ",", "npv", ",", "\"\<NPV ratio\>\"", ",", 
      "dor", ",", "\"\<DOR ratio\>\"", ",", "plr", ",", "\"\<LR+ ratio\>\"", 
      ",", "nlr", ",", "\"\<LR- ratio\>\"", ",", "yi", ",", "\"\<J ratio\>\"",
       ",", "ed", ",", "\"\<ED ratio\>\"", ",", "cz", ",", "\"\<CZ ratio\>\"",
       ",", "tr", ",", "\"\<R ratio\>\""}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"txt", "[", "s_", "]"}], ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{
   "s", ",", "sns", ",", "\"\<Se\>\"", ",", "spc", ",", "\"\<Sp\>\"", ",", 
    "thr", ",", "\"\<d\>\""}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ltxt", "[", "s_", "]"}], ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{
   "s", ",", "sns", ",", "\"\<sensitivity (Se)\>\"", ",", "spc", ",", 
    "\"\<specificity (Sp)\>\"", ",", "thr", ",", 
    "\"\<diagnostic threshold (d)\>\""}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"pl", "[", 
   RowBox[{"f_", ",", "m_"}], "]"}], ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{"f", ",", "deltaf", ",", 
    RowBox[{"\"\<(\>\"", " ", "<>", 
     RowBox[{"txt", "[", 
      RowBox[{"vf", ",", "m"}], "]"}], "<>", "\"\< of the first test - \>\"", 
     "<>", 
     RowBox[{"txt", "[", 
      RowBox[{"vf", ",", "m"}], "]"}], " ", "<>", 
     "\"\< of the second test)\>\""}], ",", "rdeltaf", ",", 
    RowBox[{"\"\<(\>\"", " ", "<>", 
     RowBox[{"txt", "[", 
      RowBox[{"vf", ",", "m"}], "]"}], "<>", "\"\< of the first test - \>\"", 
     "<>", 
     RowBox[{"txt", "[", 
      RowBox[{"vf", ",", "m"}], "]"}], " ", "<>", 
     "\"\< of the second test) / (\>\"", " ", "<>", 
     RowBox[{"txt", "[", 
      RowBox[{"vf", ",", "m"}], "]"}], "<>", "\"\< of the first test)\>\""}], 
    ",", "rf", ",", 
    RowBox[{"\"\<(\>\"", " ", "<>", 
     RowBox[{"txt", "[", 
      RowBox[{"vf", ",", "m"}], "]"}], "<>", "\"\< of the first test / \>\"", 
     "<>", 
     RowBox[{"txt", "[", 
      RowBox[{"vf", ",", "m"}], "]"}], " ", "<>", 
     "\"\< of the second test)\>\""}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{"tl", "[", "m_", "]"}], ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{"m", ",", "j", ",", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<maximizing Youden's index J optimization\>\"", ",", "Bold"}], "]"}],
     ",", "ed", ",", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<minimimizing Euclidean distance (ED) optimization\>\"", ",", 
      "Bold"}], "]"}], ",", "cz", ",", 
    RowBox[{"Style", "[", 
     RowBox[{
     "\"\<maximizing concordance probability (CZ) optimization\>\"", ",", 
      "Bold"}], "]"}], ",", "r", ",", 
    RowBox[{"Style", "[", 
     RowBox[{"\"\<minimizing risk optimization\>\"", ",", "Bold"}], "]"}]}], 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"mf", "[", 
   RowBox[{"ma_", ",", "mb_"}], "]"}], ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{"mb", ",", "sns", ",", 
    RowBox[{"Switch", "[", 
     RowBox[{
     "ma", ",", "oda", ",", "oda", ",", "ppv", ",", "ppv", ",", "npv", ",", 
      "npv", ",", "dor", ",", "dor", ",", "plr", ",", "plr", ",", "nlr", ",", 
      "nlr", ",", "yi", ",", "yi", ",", "ed", ",", "ed", ",", "cz", ",", "cz",
       ",", "tr", ",", "tr"}], "]"}], ",", "spc", ",", 
    RowBox[{"Switch", "[", 
     RowBox[{
     "ma", ",", "oda", ",", "hoda", ",", "ppv", ",", "hppv", ",", "npv", ",", 
      "hnpv", ",", "dor", ",", "hdor", ",", "plr", ",", "hplr", ",", "nlr", 
      ",", "hnlr", ",", "yi", ",", "hyi", ",", "ed", ",", "hed", ",", "cz", 
      ",", "hcz", ",", "tr", ",", "htr"}], "]"}], ",", "thr", ",", 
    RowBox[{"Switch", "[", 
     RowBox[{
     "ma", ",", "sns", ",", "tsens", ",", "spc", ",", "tspec", ",", "oda", 
      ",", "toda", ",", "ppv", ",", "tppv", ",", "npv", ",", "tnpv", ",", 
      "dor", ",", "tdor", ",", "plr", ",", "tplr", ",", "nlr", ",", "tnlr", 
      ",", "yi", ",", "tyi", ",", "ed", ",", "ted", ",", "cz", ",", "tcz", 
      ",", "tr", ",", "ttr"}], "]"}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"vf", "[", 
   RowBox[{"m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "x_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
      "\[Sigma]H_", ",", "pd_", ",", "u_", ",", "l___List"}], "}"}]}], "]"}], 
  ":=", 
  RowBox[{"m", "@@", 
   RowBox[{"{", 
    RowBox[{
    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
     ",", "pd", ",", "u", ",", "l"}], "}"}]}]}], "\n", 
 RowBox[{
  RowBox[{"deltaf", "[", 
   RowBox[{"m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "x_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
      "\[Sigma]H_", ",", "pd_", ",", "u1_", ",", "u2_", ",", "l___List"}], 
     "}"}]}], "]"}], ":=", 
  RowBox[{
   RowBox[{"m", "@@", 
    RowBox[{"{", 
     RowBox[{
     "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
      ",", "pd", ",", "u1", ",", "l"}], "}"}]}], "-", 
   RowBox[{"m", "@@", 
    RowBox[{"{", 
     RowBox[{
     "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
      ",", "pd", ",", "u2", ",", "l"}], "}"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"rdeltaf", "[", 
   RowBox[{"m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "x_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
      "\[Sigma]H_", ",", "pd_", ",", "u1_", ",", "u2_", ",", "l___List"}], 
     "}"}]}], "]"}], ":=", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"m", "@@", 
      RowBox[{"{", 
       RowBox[{
       "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
        ",", "pd", ",", "u1", ",", "l"}], "}"}]}], "-", 
     RowBox[{"m", "@@", 
      RowBox[{"{", 
       RowBox[{
       "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
        ",", "pd", ",", "u2", ",", "l"}], "}"}]}]}], ")"}], "/", 
   RowBox[{"m", "@@", 
    RowBox[{"{", 
     RowBox[{
     "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
      ",", "pd", ",", "u1", ",", "l"}], "}"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"df", "[", 
   RowBox[{"m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "x_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
      "\[Sigma]H_", ",", "pd_", ",", "uu_", ",", "l___List"}], "}"}]}], "]"}],
   ":=", 
  RowBox[{
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"m", "[", 
      RowBox[{
      "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
       ",", "pd", ",", "u", ",", "l"}], "]"}], ",", "u"}], "]"}], "/.", 
   RowBox[{"{", 
    RowBox[{"u", "\[Rule]", "uu"}], "}"}]}]}], "\n", 
 RowBox[{
  RowBox[{"rf", "[", 
   RowBox[{"m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "x_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
      "\[Sigma]H_", ",", "pd_", ",", "u1_", ",", "u2_", ",", "l___List"}], 
     "}"}]}], "]"}], ":=", 
  RowBox[{
   RowBox[{"m", "@@", 
    RowBox[{"{", 
     RowBox[{
     "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
      ",", "pd", ",", "u1", ",", "l"}], "}"}]}], "/", 
   RowBox[{"m", "@@", 
    RowBox[{"{", 
     RowBox[{
     "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
      ",", "pd", ",", "u2", ",", "l"}], "}"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"pro", "[", "pr_", "]"}], ":=", 
   RowBox[{"Switch", "[", 
    RowBox[{"pr", ",", "True", ",", 
     RowBox[{
      RowBox[{"SetOptions", "[", 
       RowBox[{"Plot", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Full"}]}], "]"}], ";", 
      RowBox[{"SetOptions", "[", 
       RowBox[{"Plot3D", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Full"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"SetOptions", "[", 
       RowBox[{"ContourPlot", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Full"}]}], "]"}], ";", 
      RowBox[{"SetOptions", "[", 
       RowBox[{"ParametricPlot", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Full"}]}], "]"}], ";", 
      RowBox[{"SetOptions", "[", 
       RowBox[{"ParametricPlot3D", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Full"}]}], "]"}]}], ",", "False", 
     ",", 
     RowBox[{
      RowBox[{"SetOptions", "[", 
       RowBox[{"Plot", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Automatic"}]}], "]"}], ";", 
      RowBox[{"SetOptions", "[", 
       RowBox[{"Plot3D", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Automatic"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"SetOptions", "[", 
       RowBox[{"ContourPlot", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Automatic"}]}], "]"}], ";", 
      RowBox[{"SetOptions", "[", 
       RowBox[{"ParametricPlot", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Automatic"}]}], "]"}], ";", 
      RowBox[{"SetOptions", "[", 
       RowBox[{"ParametricPlot3D", ",", 
        RowBox[{"PlotRange", "\[Rule]", "Automatic"}]}], "]"}]}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"pp1", "[", 
   RowBox[{"ma_", ",", "mb_", ",", 
    RowBox[{"{", 
     RowBox[{
     "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
      "pd_", ",", "u1_", ",", "u2_", ",", "l__List"}], "}"}]}], "]"}], ":=", 
  RowBox[{"Text", "@", 
   RowBox[{"Labeled", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"ParametricPlot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Switch", "[", 
             RowBox[{"mb", ",", "tr", ",", 
              RowBox[{"tr", "@@", 
               RowBox[{"{", 
                RowBox[{
                "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1", ",", "l"}], "}"}]}], ",", 
              "_", ",", 
              RowBox[{"mb", "@@", 
               RowBox[{"{", 
                RowBox[{
                "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "}"}]}]}], "]"}], ",", 
            RowBox[{"Switch", "[", 
             RowBox[{"ma", ",", "tr", ",", 
              RowBox[{"tr", "@@", 
               RowBox[{"{", 
                RowBox[{
                "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1", ",", "l"}], "}"}]}], ",", 
              "_", ",", 
              RowBox[{"ma", "@@", 
               RowBox[{"{", 
                RowBox[{
                "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u1"}], "}"}]}]}], "]"}]}], 
           "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Switch", "[", 
             RowBox[{"mb", ",", "tr", ",", 
              RowBox[{"tr", "@@", 
               RowBox[{"{", 
                RowBox[{
                "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2", ",", "l"}], "}"}]}], ",", 
              "_", ",", 
              RowBox[{"mb", "@@", 
               RowBox[{"{", 
                RowBox[{
                "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "}"}]}]}], "]"}], ",", 
            RowBox[{"Switch", "[", 
             RowBox[{"ma", ",", "tr", ",", 
              RowBox[{"tr", "@@", 
               RowBox[{"{", 
                RowBox[{
                "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2", ",", "l"}], "}"}]}], ",", 
              "_", ",", 
              RowBox[{"ma", "@@", 
               RowBox[{"{", 
                RowBox[{
                "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "pd", ",", "u2"}], "}"}]}]}], "]"}]}], 
           "}"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0.001", ",", "0.999"}], "}"}], ",", 
        RowBox[{"Exclusions", "\[Rule]", "\"\<Singularities\>\""}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"txt", "[", 
            RowBox[{"vf", ",", "mb"}], "]"}], ",", 
           RowBox[{"txt", "[", 
            RowBox[{"vf", ",", "ma"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"ColorData", "[", 
            RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}], ",", 
           " ", 
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotLegends", "->", 
         RowBox[{"Placed", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\"\<first test\>\"", ",", " ", "\"\<second test\>\""}], 
            "}"}], ",", "Top"}], "]"}]}], ",", " ", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], "]"}], ",", " ", 
     RowBox[{
      RowBox[{"txt", "[", 
       RowBox[{"vf", ",", "ma"}], "]"}], "<>", "\"\< versus \>\"", "<>", " ", 
      RowBox[{"txt", "[", 
       RowBox[{"vf", ",", "mb"}], "]"}], "<>", "\"\< curve\>\""}], ",", 
     "Top"}], "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"pp2", "[", 
   RowBox[{"f_", ",", "m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
      "pd_", ",", "u1_", ",", "u2_", ",", "l___List"}], "}"}]}], "]"}], ":=", 
  RowBox[{"Text", "@", 
   RowBox[{"Labeled", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"ParametricPlot3D", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x", ",", 
            RowBox[{"spec", "[", 
             RowBox[{
             "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
              "\[Sigma]H", ",", "pd", ",", "u1"}], "]"}], ",", 
            RowBox[{"Switch", "[", 
             RowBox[{"m", ",", "tr", ",", 
              RowBox[{"f", "@@", 
               RowBox[{"{", 
                RowBox[{"tr", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1", ",", "l"}], "}"}]}], 
                "}"}]}], ",", "_", ",", 
              RowBox[{"f", "@@", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"mf", "[", 
                  RowBox[{"m", ",", "sns"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u1"}], "}"}]}], "}"}]}]}], 
             "]"}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", 
            RowBox[{"spec", "[", 
             RowBox[{
             "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
              "\[Sigma]H", ",", "pd", ",", "u2"}], "]"}], ",", 
            RowBox[{"Switch", "[", 
             RowBox[{"m", ",", "tr", ",", 
              RowBox[{"f", "@@", 
               RowBox[{"{", 
                RowBox[{"tr", ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u2", ",", "l"}], "}"}]}], 
                "}"}]}], ",", "_", ",", 
              RowBox[{"f", "@@", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"mf", "[", 
                  RowBox[{"m", ",", "sns"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{
                  "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                   "\[Sigma]H", ",", "pd", ",", "u2"}], "}"}]}], "}"}]}]}], 
             "]"}]}], "}"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0.001", ",", "0.999"}], "}"}], ",", 
        RowBox[{"Exclusions", "\[Rule]", "\"\<Singularities\>\""}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"BoxRatios", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"1", ",", "1", ",", "1"}], "}"}]}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<Se\>\"", ",", "\"\<Sp\>\"", ",", 
           RowBox[{"txt", "[", 
            RowBox[{"f", ",", "m"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"ColorData", "[", 
            RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}], ",", 
           " ", 
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotLegends", "->", 
         RowBox[{"Placed", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\"\<first test\>\"", ",", " ", "\"\<second test\>\""}], 
            "}"}], ",", "Top"}], "]"}]}], ",", " ", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], "]"}], ",", " ", 
     RowBox[{
      RowBox[{"txt", "[", 
       RowBox[{"f", ",", "m"}], "]"}], "<>", 
      "\"\< versus sensitivity (Se) and specificity (Sp) curve\>\""}], ",", 
     "Top"}], "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p1", "[", 
   RowBox[{"f_", ",", "m_", ",", "s_", ",", 
    RowBox[{"{", 
     RowBox[{
     "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
      "pd_", ",", "u1_", ",", "u2_", ",", "l___List"}], "}"}]}], "]"}], ":=", 
  RowBox[{"Text", "@", 
   RowBox[{"Labeled", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"f", "@@", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"mf", "[", 
            RowBox[{"m", ",", "s"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
            "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
             "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", "l"}], 
            "}"}]}], "}"}]}], ",", 
        RowBox[{"Switch", "[", 
         RowBox[{"s", ",", "thr", ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", 
            RowBox[{"Min", "[", 
             RowBox[{
              RowBox[{"\[Mu]D", "-", 
               RowBox[{"3.5", "\[Sigma]D"}]}], ",", 
              RowBox[{"\[Mu]H", "-", 
               RowBox[{"3.5", "\[Sigma]H"}]}]}], "]"}], ",", " ", 
            RowBox[{"Max", "[", 
             RowBox[{
              RowBox[{"\[Mu]D", "+", 
               RowBox[{"3.5", "\[Sigma]D"}]}], ",", 
              RowBox[{"\[Mu]H", "+", 
               RowBox[{"3.5", "\[Sigma]H"}]}]}], "]"}]}], "}"}], ",", "_", 
          ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", "0.001", ",", "0.999"}], "}"}]}], "]"}], ",", 
        RowBox[{"Exclusions", "\[Rule]", "\"\<Singularities\>\""}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"txt", "[", "s", "]"}], ",", 
           RowBox[{"txt", "[", 
            RowBox[{"f", ",", "m"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"ColorData", "[", 
            RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}], ",", 
           " ", 
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], " ", ",", 
        RowBox[{"PlotLegends", "\[Rule]", 
         RowBox[{"Placed", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"pl", "[", 
             RowBox[{"f", ",", "m"}], "]"}], "}"}], ",", "Top"}], "]"}]}], 
        ",", " ", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], "]"}], ",", 
     RowBox[{
      RowBox[{"txt", "[", 
       RowBox[{"f", ",", "m"}], "]"}], "<>", "\"\< versus \>\"", "<>", 
      RowBox[{"ltxt", "[", "s", "]"}], "<>", "\"\< curve\>\""}], ",", "Top"}],
     "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p2", "[", 
   RowBox[{"f_", ",", "m_", ",", "s_", ",", 
    RowBox[{"{", 
     RowBox[{
     "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", "\[Sigma]H_", ",", 
      "pd_", ",", "u1_", ",", "u2_", ",", "l___List"}], "}"}]}], "]"}], ":=", 
  RowBox[{"Text", "@", 
   RowBox[{"Labeled", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"f", "@@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"mf", "[", 
              RowBox[{"m", ",", "s"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
              "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
               "\[Sigma]H", ",", "pd", ",", "u1", ",", "l"}], "}"}]}], 
            "}"}]}], ",", 
          RowBox[{"f", "@@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"mf", "[", 
              RowBox[{"m", ",", "s"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
              "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
               "\[Sigma]H", ",", "pd", ",", "u2", ",", "l"}], "}"}]}], 
            "}"}]}]}], "}"}], ",", 
        RowBox[{"Switch", "[", 
         RowBox[{"s", ",", "thr", ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", 
            RowBox[{"Min", "[", 
             RowBox[{
              RowBox[{"\[Mu]D", "-", 
               RowBox[{"3.5", "\[Sigma]D"}]}], ",", 
              RowBox[{"\[Mu]H", "-", 
               RowBox[{"3.5", "\[Sigma]H"}]}]}], "]"}], ",", " ", 
            RowBox[{"Max", "[", 
             RowBox[{
              RowBox[{"\[Mu]D", "+", 
               RowBox[{"3.5", "\[Sigma]D"}]}], ",", 
              RowBox[{"\[Mu]H", "+", 
               RowBox[{"3.5", "\[Sigma]H"}]}]}], "]"}]}], "}"}], ",", "_", 
          ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", "0.001", ",", "0.999"}], "}"}]}], "]"}], ",", 
        RowBox[{"Exclusions", "\[Rule]", "\"\<Singularities\>\""}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"txt", "[", "s", "]"}], ",", 
           RowBox[{"txt", "[", 
            RowBox[{"f", ",", "m"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"ColorData", "[", 
            RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}], ",", 
           " ", 
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], " ", ",", 
        RowBox[{"PlotLegends", "\[Rule]", 
         RowBox[{"Placed", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\"\<first test\>\"", ",", " ", "\"\<second test\>\""}], 
            "}"}], ",", "Top"}], "]"}]}], ",", " ", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], "]"}], ",", 
     RowBox[{
      RowBox[{"txt", "[", 
       RowBox[{"f", ",", "m"}], "]"}], "<>", "\"\< versus \>\"", "<>", 
      RowBox[{"ltxt", "[", "s", "]"}], "<>", "\"\< curve\>\""}], ",", "Top"}],
     "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ppd1", "[", 
   RowBox[{"f_", ",", "m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
      "\[Sigma]H_", ",", "u1_", ",", "u2_", ",", "l___List"}], "}"}]}], "]"}],
   ":=", 
  RowBox[{"Text", "@", 
   RowBox[{"Labeled", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"Switch", "[", 
         RowBox[{"m", ",", "tr", ",", 
          RowBox[{"f", "@@", 
           RowBox[{"{", 
            RowBox[{"ttr", ",", 
             RowBox[{"{", 
              RowBox[{
              "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
               "\[Sigma]H", ",", "x", ",", "u1", ",", "u2", ",", "l"}], 
              "}"}]}], "}"}]}], ",", "_", ",", 
          RowBox[{"f", "@@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"mf", "[", 
              RowBox[{"m", ",", "thr"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
              "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
               "\[Sigma]H", ",", "x", ",", "u1", ",", "u2"}], "}"}]}], 
            "}"}]}]}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0.00000001", ",", "0.99999999"}], "}"}], ",", 
        RowBox[{"Exclusions", "\[Rule]", "\"\<Singularities\>\""}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<v\>\"", ",", 
           RowBox[{"txt", "[", 
            RowBox[{"f", ",", "m"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"ColorData", "[", 
            RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}], ",", 
           " ", 
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], " ", ",", 
        RowBox[{"PlotLegends", "\[Rule]", 
         RowBox[{"Placed", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"pl", "[", 
             RowBox[{"f", ",", "m"}], "]"}], "}"}], ",", "Top"}], "]"}]}], 
        ",", " ", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], "]"}], ",", 
     RowBox[{
      RowBox[{"txt", "[", 
       RowBox[{"f", ",", "m"}], "]"}], "<>", "\"\< versus \>\"", "<>", 
      "\"\<prevalence (v)\>\"", "<>", "\"\< curve\>\""}], ",", "Top"}], 
    "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ppd2", "[", 
   RowBox[{"f_", ",", "m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
      "\[Sigma]H_", ",", "u1_", ",", "u2_", ",", "l___List"}], "}"}]}], "]"}],
   ":=", 
  RowBox[{"Text", "@", 
   RowBox[{"Labeled", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Switch", "[", 
           RowBox[{"m", ",", "tr", ",", 
            RowBox[{"f", "@@", 
             RowBox[{"{", 
              RowBox[{"ttr", ",", 
               RowBox[{"{", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "x", ",", "u1", ",", "l"}], "}"}]}], 
              "}"}]}], ",", "_", ",", 
            RowBox[{"f", "@@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"mf", "[", 
                RowBox[{"m", ",", "thr"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "x", ",", "u1"}], "}"}]}], "}"}]}]}], 
           "]"}], ",", 
          RowBox[{"Switch", "[", 
           RowBox[{"m", ",", "tr", ",", 
            RowBox[{"f", "@@", 
             RowBox[{"{", 
              RowBox[{"ttr", ",", 
               RowBox[{"{", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "x", ",", "u2", ",", "l"}], "}"}]}], 
              "}"}]}], ",", "_", ",", 
            RowBox[{"f", "@@", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"mf", "[", 
                RowBox[{"m", ",", "thr"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{
                "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                 "\[Sigma]H", ",", "x", ",", "u2"}], "}"}]}], "}"}]}]}], 
           "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0.00000001", ",", "0.99999999"}], "}"}], ",", 
        RowBox[{"Exclusions", "\[Rule]", "\"\<Singularities\>\""}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<v\>\"", ",", 
           RowBox[{"txt", "[", 
            RowBox[{"vf", ",", "m"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"ColorData", "[", 
            RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}], ",", 
           " ", 
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], " ", ",", 
        RowBox[{"PlotLegends", "\[Rule]", 
         RowBox[{"Placed", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\"\<first test\>\"", ",", " ", "\"\<second test\>\""}], 
            "}"}], ",", "Top"}], "]"}]}], ",", " ", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], "]"}], ",", 
     RowBox[{
      RowBox[{"txt", "[", 
       RowBox[{"vf", ",", "m"}], "]"}], "<>", "\"\< versus \>\"", "<>", 
      "\"\<prevalence (v) curve\>\""}], ",", "Top"}], 
    "]"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"pum", "[", 
   RowBox[{"m_", ",", 
    RowBox[{"{", 
     RowBox[{
     "t_", ",", "\[Mu]D_", ",", "\[Mu]H_", ",", "\[Sigma]D_", ",", 
      "\[Sigma]H_", ",", "pd_", ",", "l___List"}], "}"}]}], "]"}], ":=", 
  RowBox[{"Text", "@", 
   RowBox[{"Labeled", "[", 
    RowBox[{
     RowBox[{"Quiet", "[", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"Switch", "[", 
         RowBox[{"m", ",", "tr", ",", 
          RowBox[{"vf", "@@", 
           RowBox[{"{", 
            RowBox[{"ttr", ",", 
             RowBox[{"{", 
              RowBox[{
              "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
               "\[Sigma]H", ",", "pd", ",", "x", ",", "l"}], "}"}]}], "}"}]}],
           ",", "_", ",", 
          RowBox[{"vf", "@@", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"mf", "[", 
              RowBox[{"m", ",", "thr"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{
              "t", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
               "\[Sigma]H", ",", "pd", ",", "x"}], "}"}]}], "}"}]}]}], "]"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", "0", ",", 
          RowBox[{"Max", "[", 
           RowBox[{"\[Sigma]D", ",", "\[Sigma]H"}], "]"}]}], "}"}], ",", 
        RowBox[{"Exclusions", "\[Rule]", "\"\<Singularities\>\""}], ",", 
        RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<u\>\"", ",", 
           RowBox[{"txt", "[", 
            RowBox[{"vf", ",", "m"}], "]"}]}], "}"}]}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"ColorData", "[", 
            RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}], ",", 
           " ", 
           RowBox[{"RGBColor", "[", 
            RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], " ", ",", 
        " ", 
        RowBox[{"ImageSize", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], "]"}], ",", 
     RowBox[{
      RowBox[{"txt", "[", 
       RowBox[{"vf", ",", "m"}], "]"}], "<>", 
      "\"\< versus standard measurement uncertainty (u) curve\>\""}], ",", 
     "Top"}], "]"}]}]}]}], "Input",
 Editable->False,
 CellOpen->False,
 InitializationCell->True,
 CellChangeTimes->{{3.785999104463036*^9, 3.7859991768490934`*^9}, {
   3.7859992085182667`*^9, 3.7859992553777523`*^9}, {3.786330887519555*^9, 
   3.7863309158170557`*^9}, {3.7863309484362717`*^9, 
   3.7863309830648155`*^9}, {3.786331064340767*^9, 3.786331205371955*^9}, {
   3.7863315336019917`*^9, 3.786331536560069*^9}, 3.7863315676164303`*^9, {
   3.786331663811243*^9, 3.786331706634637*^9}, {3.7863317517522783`*^9, 
   3.7863317546794815`*^9}, {3.7863317895047193`*^9, 3.78633182760751*^9}, {
   3.7863318974858055`*^9, 3.786331926724553*^9}, {3.7863319886916237`*^9, 
   3.7863319955498247`*^9}, {3.786332068560058*^9, 3.786332070451582*^9}, 
   3.7863321328177247`*^9, {3.786332171921389*^9, 3.78633218447431*^9}, {
   3.786332222707994*^9, 3.786332440434511*^9}, {3.786332495917285*^9, 
   3.786332514825452*^9}, {3.7863325590295973`*^9, 3.7863326838097663`*^9}, {
   3.786332716902234*^9, 3.7863327478723955`*^9}, {3.786332822159889*^9, 
   3.7863328989005723`*^9}, {3.7863330529716206`*^9, 
   3.7863330592645493`*^9}, {3.786333121975546*^9, 3.7863331392170887`*^9}, {
   3.786334076066203*^9, 3.7863340891690474`*^9}, {3.7863341300108595`*^9, 
   3.786334174448306*^9}, {3.786334228668041*^9, 3.7863342502819824`*^9}, 
   3.7863343499319515`*^9, 3.7864932094005303`*^9, {3.7864935021364145`*^9, 
   3.786493516548094*^9}, {3.7865087980159335`*^9, 3.78650893802925*^9}, {
   3.7865091834186597`*^9, 3.786509277584091*^9}, {3.7865102653481617`*^9, 
   3.7865103840188036`*^9}, {3.7865572982886553`*^9, 3.7865573209777412`*^9}},
 CellLabel->
  "In[226]:=",ExpressionUUID->"47190465-b063-4f9a-8c53-10879fe2a4e2"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"TabView", "[", 
  RowBox[{
   RowBox[{"{", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"\"\<ROC curves\>\"", "->", 
      RowBox[{"Manipulate", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"pro", "[", "pr", "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"Switch", "[", 
          RowBox[{"f", ",", "rf", ",", 
           RowBox[{"Column", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Text", "@", 
                RowBox[{"Labeled", "[", 
                 RowBox[{
                  RowBox[{"Plot", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"roc", "[", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1"}], "]"}], ",", 
                    RowBox[{"roc", "[", " ", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u2"}], "]"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
                    RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
                    RowBox[{"AxesLabel", "\[Rule]", 
                    RowBox[{"{", 
                    RowBox[{"\"\<1-Sp\>\"", ",", "\"\<Se\>\""}], "}"}]}], ",", 
                    RowBox[{"AxesOrigin", "\[Rule]", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}], ",", 
                    RowBox[{"PlotStyle", "\[Rule]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"ColorData", "[", 
                    RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}],
                     ",", " ", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], 
                    " ", ",", 
                    RowBox[{"PlotLegends", "\[Rule]", 
                    RowBox[{"Placed", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "\"\<first test\>\"", ",", " ", "\"\<second test\>\""}], 
                    "}"}], ",", "Top"}], "]"}]}], ",", 
                    RowBox[{"ImageSize", "\[Rule]", 
                    RowBox[{"{", 
                    RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], ",", 
                  "\"\<ROC curves\>\"", ",", "Top"}], "]"}]}], ",", 
               RowBox[{"damr", "[", 
                RowBox[{
                "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
                 ",", "pd", ",", "u1", ",", "u2"}], "]"}]}], "}"}], ",", 
             "Center"}], "]"}], ",", "prf", ",", 
           RowBox[{"Text", "@", 
            RowBox[{"Labeled", "[", 
             RowBox[{
              RowBox[{"Quiet", "[", 
               RowBox[{"ParametricPlot", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"cnpv", "@@", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "}"}]}], ",", 
                    RowBox[{"ppv", "@@", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1"}], "}"}]}]}], "}"}], 
                   ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"cnpv", "@@", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "}"}]}], ",", 
                    RowBox[{"ppv", "@@", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u2"}], "}"}]}]}], "}"}]}], 
                  "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"x", ",", "0", ",", "1"}], "}"}], ",", 
                 RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
                 RowBox[{"AxesOrigin", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "1"}], "}"}]}], ",", 
                 RowBox[{"PlotPoints", "\[Rule]", "100"}], ",", " ", 
                 RowBox[{"MaxRecursion", "\[Rule]", "100"}], ",", 
                 RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", 
                 RowBox[{"AxesLabel", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{"\"\<1-NPV\>\"", ",", "\"\<PPV\>\""}], "}"}]}], 
                 ",", 
                 RowBox[{"PlotStyle", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"ColorData", "[", 
                    RowBox[{"\"\<HTML\>\"", ",", "\"\<SlateBlue\>\""}], "]"}],
                     ",", " ", 
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"1", ",", ".47", ",", "0"}], "]"}]}], "}"}]}], 
                 ",", 
                 RowBox[{"PlotLegends", "->", 
                  RowBox[{"Placed", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "\"\<first test\>\"", ",", " ", "\"\<second test\>\""}], 
                    "}"}], ",", "Top"}], "]"}]}], ",", " ", 
                 RowBox[{"ImageSize", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{"400", ",", "400"}], "}"}]}]}], "]"}], "]"}], ",", 
              " ", "\"\<PROC curves\>\"", ",", "Top"}], "]"}]}]}], "]"}]}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"f", ",", "rf", ",", "\"\<plot\>\""}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"rf", "\[Rule]", "\"\<ROC curves\>\""}], ",", 
            RowBox[{"prf", "\[Rule]", "\"\<PROC curves\>\""}]}], "}"}], ",", 
          RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"pr", ",", "True", ",", "\"\<plot range\>\""}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"True", "->", "\"\<full\>\""}], ",", 
            RowBox[{"False", "\[Rule]", "\"\<partial\>\""}]}], "}"}], ",", 
          RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
        "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<prevalence of disease\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"pd", ",", "0.067", ",", "\"\<v\>\""}], "}"}], ",", 
          "0.00000001", ",", ".99", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",", "0",
           ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}],
            "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], ",", 
          "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
           "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}], 
           "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<standard measurement uncertainty\>\"", ",", "Bold"}], 
         "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"u1", ",", "0.023", ",", "\"\<first test\>\""}], "}"}], 
          ",", "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"u2", ",", "0.23", ",", "\"\<second test\>\""}], "}"}], 
          ",", "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
        RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
        RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"\"\<DAM plots\>\"", "->", "\[IndentingNewLine]", 
      RowBox[{"TabView", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"\"\<DAM vs uncertainty\>\"", "->", 
           RowBox[{"Manipulate", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"pro", "[", "pr", "]"}], ";", 
              RowBox[{"Switch", "[", 
               RowBox[{"m", ",", "tr", ",", 
                RowBox[{"pum", "[", 
                 RowBox[{"tr", ",", 
                  RowBox[{"{", 
                   RowBox[{
                   "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "_", ",", 
                "\[IndentingNewLine]", 
                RowBox[{"pum", "[", 
                 RowBox[{"m", ",", 
                  RowBox[{"{", 
                   RowBox[{
                   "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}]}], "]"}]}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"m", ",", "dor", ",", "\"\<plot\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"sns", "\[Rule]", "\"\<sensitivity Se\>\""}], ",", 
                 RowBox[{"spc", "->", "\"\<specificity Sp\>\""}], ",", 
                 RowBox[{
                 "oda", "->", "\"\<overall diagnostic accuracy (ODA)\>\""}], 
                 ",", 
                 RowBox[{
                 "ppv", "\[Rule]", 
                  "\"\<positive predictive value (PPV)\>\""}], ",", 
                 RowBox[{
                 "npv", "\[Rule]", 
                  "\"\<negative predictive value (NPV)\>\""}], ",", 
                 RowBox[{
                 "dor", "\[Rule]", "\"\<diagnostic odds ratio (DOR)\>\""}], 
                 ",", 
                 RowBox[{
                 "plr", "\[Rule]", 
                  "\"\<likelihood ratio for a positive result (LR+)\>\""}], 
                 ",", 
                 RowBox[{
                 "nlr", "\[Rule]", " ", 
                  "\"\<likelihood ratio for a negative result (LR-)\>\""}], 
                 ",", 
                 RowBox[{"yi", "\[Rule]", "\"\<Youden's index J\>\""}], ",", 
                 RowBox[{"ed", "\[Rule]", "\"\<Euclidean distance (ED)\>\""}],
                  ",", 
                 RowBox[{"cz", "\[Rule]", "\"\<concordance product CZ\>\""}], 
                 ",", 
                 RowBox[{"tr", "->", "\"\<risk (R)\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pr", ",", "False", ",", "\"\<plot range\>\""}], 
                "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"True", "->", "\"\<full\>\""}], ",", 
                 RowBox[{"False", "\[Rule]", "\"\<partial\>\""}]}], "}"}], 
               ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<prevalence of disease\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pd", ",", "0.067", ",", "\"\<v\>\""}], "}"}], ",", 
               "0.00000001", ",", ".99", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",",
                "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}], 
                "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], 
               ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}],
                 "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<diagnostic threshold\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x", ",", "2.26", ",", "\"\<d\>\""}], "}"}], ",", 
               RowBox[{
                RowBox[{"-", "5"}], 
                RowBox[{"Max", "[", 
                 RowBox[{"\[Sigma]D", ",", "\[Sigma]H"}], "]"}], 
                RowBox[{"Max", "[", 
                 RowBox[{"\[Mu]D", ",", "\[Mu]H"}], "]"}]}], ",", 
               RowBox[{
                RowBox[{"Max", "[", 
                 RowBox[{"\[Mu]D", ",", "\[Mu]H"}], "]"}], "+", 
                RowBox[{"5", 
                 RowBox[{"Max", "[", 
                  RowBox[{"\[Sigma]D", ",", "\[Sigma]H"}], "]"}]}]}], ",", 
               ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"OpenerView", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<expected loss\>\"", ",", "Bold"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Column", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"rt", ",", "1", ",", "\"\<testing\>\""}], "}"}], 
                    ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtp", ",", "0", ",", "\"\<true positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtn", ",", "0", ",", "\"\<true negative result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfp", ",", "76", ",", "\"\<false positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfn", ",", "100", ",", "\"\<false negative result\>\""}],
                     "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}]}], "}"}], ",", 
                  RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]}], "}"}],
               "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
             RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
             RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"\"\<DAM vs Se or Sp\>\"", "->", 
           RowBox[{"Manipulate", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"pro", "[", "pr", "]"}], ";", "\[IndentingNewLine]", 
              RowBox[{"Switch", "[", 
               RowBox[{"m", ",", "tr", ",", 
                RowBox[{"Switch", "[", 
                 RowBox[{"f", ",", "vf", ",", 
                  RowBox[{"p2", "[", 
                   RowBox[{"vf", ",", "tr", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "df", ",", 
                  RowBox[{"p2", "[", 
                   RowBox[{"df", ",", "tr", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "deltaf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"deltaf", ",", "tr", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "rdeltaf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"rdeltaf", ",", "tr", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "rf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"rf", ",", "tr", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}]}], "]"}], ",", "_", ",", 
                RowBox[{"Switch", "[", 
                 RowBox[{"f", ",", "vf", ",", 
                  RowBox[{"p2", "[", 
                   RowBox[{"vf", ",", "m", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "df", ",", 
                  RowBox[{"p2", "[", 
                   RowBox[{"df", ",", "m", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "deltaf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"deltaf", ",", "m", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "rdeltaf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"rdeltaf", ",", "m", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "rf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"rf", ",", "m", ",", "s", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}]}], "]"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"f", ",", "vf", ",", "\"\<type\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"vf", "\[Rule]", "\"\<measures\>\""}], ",", 
                 RowBox[{"df", "\[Rule]", "\"\<derivatives\>\""}], ",", 
                 RowBox[{"deltaf", "\[Rule]", "\"\<difference\>\""}], ",", 
                 RowBox[{
                 "rdeltaf", "\[Rule]", "\"\<relative difference\>\""}], ",", 
                 " ", 
                 RowBox[{"rf", "\[Rule]", "\"\<ratio\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"m", ",", "dor", ",", "\"\<plot\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                 "oda", "->", "\"\<overall diagnostic accuracy (ODA)\>\""}], 
                 ",", 
                 RowBox[{
                 "ppv", "\[Rule]", 
                  "\"\<positive predictive value (PPV)\>\""}], ",", 
                 RowBox[{
                 "npv", "\[Rule]", 
                  "\"\<negative predictive value (NPV)\>\""}], ",", 
                 RowBox[{
                 "dor", "\[Rule]", "\"\<diagnostic odds ratio (DOR)\>\""}], 
                 ",", 
                 RowBox[{
                 "plr", "\[Rule]", 
                  "\"\<likelihood ratio for a positive result (LR+)\>\""}], 
                 ",", 
                 RowBox[{
                 "nlr", "\[Rule]", " ", 
                  "\"\<likelihood ratio for a negative result (LR-)\>\""}], 
                 ",", 
                 RowBox[{"yi", "\[Rule]", "\"\<Youden's index J\>\""}], ",", 
                 RowBox[{"ed", "\[Rule]", "\"\<Euclidean distance (ED)\>\""}],
                  ",", 
                 RowBox[{
                 "cz", "\[Rule]", "\"\<concordance probability (CZ)\>\""}], 
                 ",", 
                 RowBox[{"tr", "->", "\"\<risk (R)\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"s", ",", "spc", ",", "\"\<versus\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"sns", "\[Rule]", "\"\<sensitivity\>\""}], ",", 
                 RowBox[{"spc", "\[Rule]", "\"\<specificity\>\""}]}], "}"}], 
               ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pr", ",", "False", ",", "\"\<plot range\>\""}], 
                "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"True", "->", "\"\<full\>\""}], ",", 
                 RowBox[{"False", "\[Rule]", "\"\<partial\>\""}]}], "}"}], 
               ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<prevalence of disease\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pd", ",", "0.067", ",", "\"\<v\>\""}], "}"}], ",", 
               "0.00000001", ",", ".99", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",",
                "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}], 
                "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], 
               ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}],
                 "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{
              "\"\<standard measurement uncertainty\>\"", ",", "Bold"}], 
              "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u1", ",", "0.023", ",", "\"\<first test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u2", ",", "0.23", ",", "\"\<second test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"OpenerView", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<expected loss\>\"", ",", "Bold"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Column", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"rt", ",", "1", ",", "\"\<testing\>\""}], "}"}], 
                    ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtp", ",", "0", ",", "\"\<true positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtn", ",", "0", ",", "\"\<true negative result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfp", ",", "76", ",", "\"\<false positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfn", ",", "100", ",", "\"\<false negative result\>\""}],
                     "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}]}], "}"}], ",", 
                  RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]}], "}"}],
               "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
             RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
             RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"\"\<DAM vs Se and Sp\>\"", "->", 
           RowBox[{"Manipulate", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"pro", "[", "pr", "]"}], ";", 
              RowBox[{"Switch", "[", 
               RowBox[{"m", ",", "tr", ",", 
                RowBox[{"Switch", "[", 
                 RowBox[{"f", ",", "vf", ",", 
                  RowBox[{"pp2", "[", 
                   RowBox[{"vf", ",", "tr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "df", ",", 
                  RowBox[{"pp2", "[", 
                   RowBox[{"df", ",", "tr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}]}], "]"}], ",", "_", ",", 
                RowBox[{"Switch", "[", 
                 RowBox[{"f", ",", "vf", ",", 
                  RowBox[{"pp2", "[", 
                   RowBox[{"vf", ",", "m", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "df", ",", 
                  RowBox[{"pp2", "[", 
                   RowBox[{"df", ",", "m", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}]}], "]"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"f", ",", "vf", ",", "\"\<type\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"vf", "\[Rule]", "\"\<measures\>\""}], ",", 
                 RowBox[{"df", "\[Rule]", "\"\<derivatives\>\""}]}], "}"}], 
               ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"m", ",", "plr", ",", "\"\<plot\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                 "oda", "->", "\"\<overall diagnostic accuracy (ODA)\>\""}], 
                 ",", 
                 RowBox[{
                 "ppv", "\[Rule]", 
                  "\"\<positive predictive value (PPV)\>\""}], ",", 
                 RowBox[{
                 "npv", "\[Rule]", 
                  "\"\<negative predictive value (NPV)\>\""}], ",", 
                 RowBox[{
                 "dor", "\[Rule]", "\"\<diagnostic odds ratio (DOR)\>\""}], 
                 ",", 
                 RowBox[{
                 "plr", "\[Rule]", 
                  "\"\<likelihood ratio for a positive result (LR+)\>\""}], 
                 ",", 
                 RowBox[{
                 "nlr", "\[Rule]", " ", 
                  "\"\<likelihood ratio for a negative result (LR-)\>\""}], 
                 ",", 
                 RowBox[{"yi", "\[Rule]", "\"\<Youden's index J\>\""}], ",", 
                 RowBox[{"ed", "\[Rule]", "\"\<Euclidean distance (ED)\>\""}],
                  ",", 
                 RowBox[{
                 "cz", "\[Rule]", "\"\<concordance probability (CZ)\>\""}], 
                 ",", 
                 RowBox[{"tr", "->", "\"\<risk (R)\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pr", ",", "False", ",", "\"\<plot range\>\""}], 
                "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"True", "->", "\"\<full\>\""}], ",", 
                 RowBox[{"False", "\[Rule]", "\"\<partial\>\""}]}], "}"}], 
               ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<prevalence of disease\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pd", ",", "0.067", ",", "\"\<v\>\""}], "}"}], ",", 
               "0.00000001", ",", ".99", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",",
                "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}], 
                "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], 
               ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}],
                 "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{
              "\"\<standard measurement uncertainty\>\"", ",", "Bold"}], 
              "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u1", ",", "0.023", ",", "\"\<first test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u2", ",", "0.23", ",", "\"\<second test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"OpenerView", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<expected loss\>\"", ",", "Bold"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Column", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"rt", ",", "1", ",", "\"\<testing\>\""}], "}"}], 
                    ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtp", ",", "0", ",", "\"\<true positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtn", ",", "0", ",", "\"\<true negative result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfp", ",", "76", ",", "\"\<false positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfn", ",", "100", ",", "\"\<false negative result\>\""}],
                     "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}]}], "}"}], ",", 
                  RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]}], "}"}],
               "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
             RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
             RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"\"\<DAM vs threshold\>\"", "->", 
           RowBox[{"Manipulate", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"pro", "[", "pr", "]"}], ";", "\[IndentingNewLine]", 
              RowBox[{"Switch", "[", 
               RowBox[{"m", ",", "tr", ",", 
                RowBox[{"Switch", "[", 
                 RowBox[{"f", ",", "vf", ",", 
                  RowBox[{"p2", "[", 
                   RowBox[{"vf", ",", "tr", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "df", ",", 
                  RowBox[{"p2", "[", 
                   RowBox[{"df", ",", "tr", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "deltaf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"deltaf", ",", "tr", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "rdeltaf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"rdeltaf", ",", "tr", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "rf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"rf", ",", "tr", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}]}], "]"}], ",", "_", ",", 
                RowBox[{"Switch", "[", 
                 RowBox[{"f", ",", "vf", ",", 
                  RowBox[{"p2", "[", 
                   RowBox[{"vf", ",", "m", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "df", ",", 
                  RowBox[{"p2", "[", 
                   RowBox[{"df", ",", "m", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "deltaf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"deltaf", ",", "m", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "rdeltaf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"rdeltaf", ",", "m", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}], ",", "rf", ",", " ", 
                  RowBox[{"p1", "[", 
                   RowBox[{"rf", ",", "m", ",", "thr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2"}], "}"}]}], 
                   "]"}]}], "]"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"f", ",", "rf", ",", "\"\<type\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"vf", "\[Rule]", "\"\<measures\>\""}], ",", 
                 RowBox[{"df", "\[Rule]", "\"\<derivatives\>\""}], ",", 
                 RowBox[{"deltaf", "\[Rule]", "\"\<difference\>\""}], ",", 
                 RowBox[{
                 "rdeltaf", "\[Rule]", "\"\<relative difference\>\""}], ",", 
                 " ", 
                 RowBox[{"rf", "\[Rule]", "\"\<ratio\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"m", ",", "tr", ",", "\"\<plot\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"sns", "\[Rule]", "\"\<sensitivity\>\""}], ",", 
                 RowBox[{"spc", "\[Rule]", "\"\<specificity\>\""}], ",", 
                 RowBox[{
                 "oda", "->", "\"\<overall diagnostic accuracy (ODA)\>\""}], 
                 ",", 
                 RowBox[{
                 "ppv", "\[Rule]", 
                  "\"\<positive predictive value (PPV)\>\""}], ",", 
                 RowBox[{
                 "npv", "\[Rule]", 
                  "\"\<negative predictive value (NPV)\>\""}], ",", 
                 RowBox[{
                 "dor", "\[Rule]", "\"\<diagnostic odds ratio (DOR)\>\""}], 
                 ",", 
                 RowBox[{
                 "plr", "\[Rule]", 
                  "\"\<likelihood ratio for a positive result (LR+)\>\""}], 
                 ",", 
                 RowBox[{
                 "nlr", "\[Rule]", " ", 
                  "\"\<likelihood ratio for a negative result (LR-)\>\""}], 
                 ",", 
                 RowBox[{"yi", "\[Rule]", "\"\<Youden's index J\>\""}], ",", 
                 RowBox[{"ed", "\[Rule]", "\"\<Euclidean distance (ED)\>\""}],
                  ",", 
                 RowBox[{
                 "cz", "\[Rule]", "\"\<concordance probability (CZ)\>\""}], 
                 ",", 
                 RowBox[{"tr", "->", "\"\<risk (R)\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pr", ",", "False", ",", "\"\<plot range\>\""}], 
                "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"True", "->", "\"\<full\>\""}], ",", 
                 RowBox[{"False", "\[Rule]", "\"\<partial\>\""}]}], "}"}], 
               ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<prevalence of disease\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pd", ",", "0.067", ",", "\"\<v\>\""}], "}"}], ",", 
               "0.00000001", ",", ".99", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",",
                "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}], 
                "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], 
               ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}],
                 "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{
              "\"\<standard measurement uncertainty\>\"", ",", "Bold"}], 
              "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u1", ",", "0.023", ",", "\"\<first test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u2", ",", "0.23", ",", "\"\<second test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"OpenerView", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<expected loss\>\"", ",", "Bold"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Column", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"rt", ",", "1", ",", "\"\<testing\>\""}], "}"}], 
                    ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtp", ",", "0", ",", "\"\<true positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtn", ",", "0", ",", "\"\<true negative result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfp", ",", "76", ",", "\"\<false positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfn", ",", "100", ",", "\"\<false negative result\>\""}],
                     "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}]}], "}"}], ",", 
                  RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]}], "}"}],
               "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
             RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
             RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"\"\<DAM vs prevalence\>\"", "->", 
           RowBox[{"Manipulate", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"pro", "[", "pr", "]"}], ";", "\[IndentingNewLine]", 
              RowBox[{"Switch", "[", 
               RowBox[{"m", ",", "tr", ",", 
                RowBox[{"Switch", "[", 
                 RowBox[{"f", ",", "vf", ",", 
                  RowBox[{"ppd2", "[", 
                   RowBox[{"vf", ",", "tr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "df", ",", 
                  RowBox[{"ppd2", "[", 
                   RowBox[{"df", ",", "tr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "deltaf", ",", " ", 
                  RowBox[{"ppd1", "[", 
                   RowBox[{"deltaf", ",", "tr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "rdeltaf", ",", " ", 
                  RowBox[{"ppd1", "[", 
                   RowBox[{"rdeltaf", ",", "tr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}], ",", "rf", ",", " ", 
                  RowBox[{"ppd1", "[", 
                   RowBox[{"rf", ",", "tr", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                    "}"}]}], "}"}]}], "]"}]}], "]"}], ",", "_", ",", 
                RowBox[{"Switch", "[", 
                 RowBox[{"f", ",", "vf", ",", 
                  RowBox[{"ppd2", "[", 
                   RowBox[{"vf", ",", "m", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2"}], "}"}]}], "]"}], ",", 
                  "df", ",", 
                  RowBox[{"ppd2", "[", 
                   RowBox[{"df", ",", "m", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2"}], "}"}]}], "]"}], ",", 
                  "deltaf", ",", " ", 
                  RowBox[{"ppd1", "[", 
                   RowBox[{"deltaf", ",", "m", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2"}], "}"}]}], "]"}], ",", 
                  "rdeltaf", ",", " ", 
                  RowBox[{"ppd1", "[", 
                   RowBox[{"rdeltaf", ",", "m", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2"}], "}"}]}], "]"}], ",", 
                  "rf", ",", " ", 
                  RowBox[{"ppd1", "[", 
                   RowBox[{"rf", ",", "m", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
                    "\[Sigma]H", ",", "u1", ",", "u2"}], "}"}]}], "]"}]}], 
                 "]"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"f", ",", "rf", ",", "\"\<type\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"vf", "\[Rule]", "\"\<measures\>\""}], ",", 
                 RowBox[{"df", "\[Rule]", "\"\<derivatives\>\""}], ",", 
                 RowBox[{"deltaf", "\[Rule]", "\"\<difference\>\""}], ",", 
                 RowBox[{
                 "rdeltaf", "\[Rule]", "\"\<relative difference\>\""}], ",", 
                 " ", 
                 RowBox[{"rf", "\[Rule]", "\"\<ratio\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"m", ",", "npv", ",", "\"\<plot\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                 "oda", "->", "\"\<overall diagnostic accuracy (ODA)\>\""}], 
                 ",", 
                 RowBox[{
                 "ppv", "\[Rule]", 
                  "\"\<positive predictive value (PPV)\>\""}], ",", 
                 RowBox[{
                 "npv", "\[Rule]", 
                  "\"\<negative predictive value (NPV)\>\""}], ",", 
                 RowBox[{"tr", "->", "\"\<risk (R)\>\""}]}], "}"}], ",", 
               RowBox[{"ControlType", "\[Rule]", "PopupMenu"}], ",", " ", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pr", ",", "True", ",", "\"\<plot range\>\""}], "}"}],
                ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"True", "->", "\"\<full\>\""}], ",", 
                 RowBox[{"False", "\[Rule]", "\"\<partial\>\""}]}], "}"}], 
               ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",",
                "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}], 
                "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], 
               ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}],
                 "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<diagnostic threshold\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x", ",", "2.26", ",", "\"\<d\>\""}], "}"}], ",", 
               RowBox[{
                RowBox[{"-", "5"}], 
                RowBox[{"Max", "[", 
                 RowBox[{"\[Sigma]D", ",", "\[Sigma]H"}], "]"}], 
                RowBox[{"Max", "[", 
                 RowBox[{"\[Mu]D", ",", "\[Mu]H"}], "]"}]}], ",", 
               RowBox[{
                RowBox[{"Max", "[", 
                 RowBox[{"\[Mu]D", ",", "\[Mu]H"}], "]"}], "+", 
                RowBox[{"5", 
                 RowBox[{"Max", "[", 
                  RowBox[{"\[Sigma]D", ",", "\[Sigma]H"}], "]"}]}]}], ",", 
               ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{
              "\"\<standard measurement uncertainty\>\"", ",", "Bold"}], 
              "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u1", ",", "0.023", ",", "\"\<first test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u2", ",", "0.23", ",", "\"\<second test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"OpenerView", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<expected loss\>\"", ",", "Bold"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Column", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"rt", ",", "1", ",", "\"\<testing\>\""}], "}"}], 
                    ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtp", ",", "0", ",", "\"\<true positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtn", ",", "0", ",", "\"\<true negative result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfp", ",", "76", ",", "\"\<false positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfn", ",", "100", ",", "\"\<false negative result\>\""}],
                     "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}]}], "}"}], ",", 
                  RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]}], "}"}],
               "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
             RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
             RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]}], ",", 
          RowBox[{"\"\<DAM relations\>\"", "->", 
           RowBox[{"Manipulate", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"pro", "[", "pr", "]"}], ";", "\[IndentingNewLine]", 
              RowBox[{"pp1", "[", 
               RowBox[{"ma", ",", "mb", ",", 
                RowBox[{"{", 
                 RowBox[{
                 "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", 
                  ",", "pd", ",", "u1", ",", "u2", ",", 
                  RowBox[{"{", 
                   RowBox[{
                   "rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
                   "}"}]}], "}"}]}], "]"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"ma", ",", "ppv", ",", "\"\<plot\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                 "oda", "->", "\"\<overall diagnostic accuracy (ODA)\>\""}], 
                 ",", 
                 RowBox[{
                 "ppv", "\[Rule]", 
                  "\"\<positive predictive value (PPV)\>\""}], ",", 
                 RowBox[{
                 "npv", "\[Rule]", 
                  "\"\<negative predictive value (NPV)\>\""}], ",", 
                 RowBox[{
                 "dor", "\[Rule]", "\"\<diagnostic odds ratio (DOR)\>\""}], 
                 ",", 
                 RowBox[{
                 "plr", "\[Rule]", 
                  "\"\<likelihood ratio for a positive result (LR+)\>\""}], 
                 ",", 
                 RowBox[{
                 "nlr", "\[Rule]", " ", 
                  "\"\<likelihood ratio for a negative result (LR-)\>\""}], 
                 ",", 
                 RowBox[{"yi", "\[Rule]", "\"\<Youden's index J\>\""}], ",", 
                 RowBox[{"ed", "\[Rule]", "\"\<Euclidean distance (ED)\>\""}],
                  ",", 
                 RowBox[{
                 "cz", "\[Rule]", "\"\<concordance probability (CZ)\>\""}], 
                 ",", 
                 RowBox[{"tr", "->", "\"\<risk (R)\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"mb", ",", "npv", ",", "\"\<versus\>\""}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                 "oda", "->", "\"\<overall diagnostic accuracy (ODA)\>\""}], 
                 ",", 
                 RowBox[{
                 "ppv", "\[Rule]", 
                  "\"\<positive predictive value (PPV)\>\""}], ",", 
                 RowBox[{
                 "npv", "\[Rule]", 
                  "\"\<negative predictive value (NPV)\>\""}], ",", 
                 RowBox[{
                 "dor", "\[Rule]", "\"\<diagnostic odds ratio (DOR)\>\""}], 
                 ",", 
                 RowBox[{
                 "plr", "\[Rule]", 
                  "\"\<likelihood ratio for a positive result (LR+)\>\""}], 
                 ",", 
                 RowBox[{
                 "nlr", "\[Rule]", " ", 
                  "\"\<likelihood ratio for a negative result (LR-)\>\""}], 
                 ",", 
                 RowBox[{"yi", "\[Rule]", "\"\<Youden's index J\>\""}], ",", 
                 RowBox[{"ed", "\[Rule]", "\"\<Euclidean distance (ED)\>\""}],
                  ",", 
                 RowBox[{
                 "cz", "\[Rule]", "\"\<concordance probability (CZ)\>\""}], 
                 ",", 
                 RowBox[{"tr", "->", "\"\<risk (R)\>\""}]}], "}"}], ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pr", ",", "False", ",", "\"\<plot range\>\""}], 
                "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"True", "->", "\"\<full\>\""}], ",", 
                 RowBox[{"False", "\[Rule]", "\"\<partial\>\""}]}], "}"}], 
               ",", 
               RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "}"}], ",", 
             "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<prevalence of disease\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"pd", ",", "0.067", ",", "\"\<v\>\""}], "}"}], ",", 
               "0.00000001", ",", ".99", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",",
                "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}], 
                "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], 
               ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}],
                 "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Style", "[", 
              RowBox[{
              "\"\<standard measurement uncertainty\>\"", ",", "Bold"}], 
              "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u1", ",", "0.023", ",", "\"\<first test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"u2", ",", "0.23", ",", "\"\<second test\>\""}], 
                "}"}], ",", "0", ",", "6", ",", ".01", ",", 
               RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
               RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], 
             ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"OpenerView", "[", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"\"\<expected loss\>\"", ",", "Bold"}], "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Column", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"rt", ",", "1", ",", "\"\<testing\>\""}], "}"}], 
                    ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtp", ",", "0", ",", "\"\<true positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rtn", ",", "0", ",", "\"\<true negative result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfp", ",", "76", ",", "\"\<false positive result\>\""}], 
                    "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Control", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    "rfn", ",", "100", ",", "\"\<false negative result\>\""}],
                     "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                    RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                    RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                    "}"}], "]"}]}], "}"}], ",", 
                  RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]}], "}"}],
               "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
             "\[IndentingNewLine]", 
             RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
             RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
             RowBox[{"ControlPlacement", "\[Rule]", "Left"}]}], "]"}]}]}], 
         "\[IndentingNewLine]", "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"ImageSize", "\[Rule]", "All"}]}], "\[IndentingNewLine]", 
       "]"}]}], ",", "\[IndentingNewLine]", 
     RowBox[{"\"\<DAM calculator\>\"", "->", 
      RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"dam1", "[", 
         RowBox[{
         "x", ",", "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", 
          "\[Sigma]H", ",", "pd", ",", "u1", ",", "u2", ",", 
          RowBox[{"{", 
           RowBox[{"rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
           "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<prevalence of disease\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"pd", ",", "0.067", ",", "\"\<v\>\""}], "}"}], ",", 
          "0.00000001", ",", ".99", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",", "0",
           ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}],
            "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], ",", 
          "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
           "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}], 
           "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<diagnostic threshold\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x", ",", "2.26", ",", "\"\<d\>\""}], "}"}], ",", 
          RowBox[{"Min", "[", 
           RowBox[{
            RowBox[{"\[Mu]D", "-", 
             RowBox[{"3", "\[Sigma]D"}]}], ",", 
            RowBox[{"\[Mu]H", "-", 
             RowBox[{"3", "\[Sigma]H"}]}]}], "]"}], ",", 
          RowBox[{"Max", "[", 
           RowBox[{
            RowBox[{"\[Mu]D", "+", 
             RowBox[{"3", "\[Sigma]D"}]}], ",", 
            RowBox[{"\[Mu]H", "+", 
             RowBox[{"3", "\[Sigma]H"}]}]}], "]"}], ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<standard measurement uncertainty\>\"", ",", "Bold"}], 
         "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"u1", ",", "0.023", ",", "\"\<first test\>\""}], "}"}], 
          ",", "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"u2", ",", "0.23", ",", "\"\<second test\>\""}], "}"}], 
          ",", "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"OpenerView", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<expected loss\>\"", ",", "Bold"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Column", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"rt", ",", "1", ",", "\"\<testing\>\""}], "}"}], 
                  ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "rtp", ",", "0", ",", "\"\<true positive result\>\""}], 
                   "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "rtn", ",", "0", ",", "\"\<true negative result\>\""}], 
                   "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "rfp", ",", "76", ",", "\"\<false positive result\>\""}], 
                   "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "rfn", ",", "100", ",", "\"\<false negative result\>\""}], 
                   "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}]}], "}"}], ",", 
             RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]}], "}"}], 
         "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
        RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
        RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", " ", 
        RowBox[{"Alignment", "\[Rule]", "Top"}]}], "]"}]}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"\"\<optimal DAM calculator\>\"", "->", 
      RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"dam2", "[", 
         RowBox[{"m", ",", 
          RowBox[{"{", 
           RowBox[{
           "\[Mu]D", ",", "\[Mu]H", ",", "\[Sigma]D", ",", "\[Sigma]H", ",", 
            "pd", ",", "u1", ",", "u2", ",", 
            RowBox[{"{", 
             RowBox[{"rt", ",", "rtp", ",", "rtn", ",", "rfp", ",", "rfn"}], 
             "}"}]}], "}"}]}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"m", ",", "r", ",", "\"\<optimal measure\>\""}], "}"}], 
          ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"j", "->", " ", "\"\<maximum Youden's index J\>\""}], ",", 
            RowBox[{
            "ed", "\[Rule]", "\"\<minimum Euclidean distance (ED)\>\""}], ",", 
            RowBox[{
            "cz", "\[Rule]", "\"\<maximum concordance probability (CZ)\>\""}],
             ",", 
            RowBox[{"r", "\[Rule]", "\"\<minimum risk (R)\>\""}]}], "}"}], 
          ",", 
          RowBox[{"ControlType", "\[Rule]", "PopupMenu"}], ",", 
          RowBox[{"ControlPlacement", "\[Rule]", "Top"}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<prevalence of disease\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"pd", ",", "0.067", ",", "\"\<v\>\""}], "}"}], ",", 
          "0.00000001", ",", ".99", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<nondiseased population\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Mu]H", ",", "0", ",", "\"\<mean\>\""}], "}"}], ",", "0",
           ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Sigma]H", ",", "1", ",", "\"\<standard deviation\>\""}],
            "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<diseased population\>\"", ",", "Bold"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"\[Mu]D", ",", "2.99", ",", "\"\<mean\>\""}], "}"}], ",", 
          "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
           "\[Sigma]D", ",", "0.75", ",", "\"\<standard deviation\>\""}], 
           "}"}], ",", "0.01", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"Style", "[", 
         RowBox[{"\"\<standard measurement uncertainty\>\"", ",", "Bold"}], 
         "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"u1", ",", "0.023", ",", "\"\<first test\>\""}], "}"}], 
          ",", "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"u2", ",", "0.23", ",", "\"\<second test\>\""}], "}"}], 
          ",", "0", ",", "6", ",", ".01", ",", 
          RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
          RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
        "\[IndentingNewLine]", "Delimiter", ",", "\[IndentingNewLine]", 
        RowBox[{"OpenerView", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<expected loss\>\"", ",", "Bold"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Column", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"rt", ",", "1", ",", "\"\<testing\>\""}], "}"}], 
                  ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "rtp", ",", "0", ",", "\"\<true positive result\>\""}], 
                   "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "rtn", ",", "0", ",", "\"\<true negative result\>\""}], 
                   "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "rfp", ",", "76", ",", "\"\<false positive result\>\""}], 
                   "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Control", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "rfn", ",", "100", ",", "\"\<false negative result\>\""}], 
                   "}"}], ",", "0", ",", "1000", ",", ".01", ",", 
                  RowBox[{"ImageSize", "\[Rule]", "Tiny"}], ",", 
                  RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], 
                 "}"}], "]"}]}], "}"}], ",", 
             RowBox[{"Alignment", "\[Rule]", "Right"}]}], "]"}]}], "}"}], 
         "]"}], ",", "\[IndentingNewLine]", "Delimiter", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
        RowBox[{"ContinuousAction", "\[Rule]", "False"}], ",", 
        RowBox[{"TrackedSymbols", "\[Rule]", "True"}], ",", 
        RowBox[{"ControlPlacement", "\[Rule]", "Left"}], ",", 
        RowBox[{"Alignment", "\[Rule]", "Top"}]}], "]"}]}]}], "}"}], ",", 
   "\[IndentingNewLine]", " ", 
   RowBox[{"ImageSize", "\[Rule]", "Automatic"}]}], "\[IndentingNewLine]", 
  "]"}]], "Input",
 Editable->False,
 CellOpen->False,
 InitializationCell->True,
 CellChangeTimes->{{3.7859992777297583`*^9, 3.785999302165043*^9}, 
   3.7859993443009005`*^9, {3.785999493150648*^9, 3.785999493700471*^9}, {
   3.785999677285038*^9, 3.7859996776121416`*^9}, {3.78599972765471*^9, 
   3.785999727899057*^9}, {3.786263719248585*^9, 3.786263719358303*^9}, {
   3.7863313454040594`*^9, 3.7863314028599033`*^9}, {3.7863314676452117`*^9, 
   3.78633147717187*^9}, 3.7863334380606146`*^9, 3.786333488544013*^9, {
   3.786333544604725*^9, 3.786333575027809*^9}, {3.7863336835479293`*^9, 
   3.786333690667099*^9}, {3.786333904219014*^9, 3.7863339110981693`*^9}, 
   3.786335377761732*^9, {3.7863354860224657`*^9, 3.7863355135428333`*^9}, 
   3.786335916126876*^9, {3.786493386008211*^9, 3.7864933882303553`*^9}, {
   3.7864936202941585`*^9, 3.7864936229172773`*^9}, {3.78649400864621*^9, 
   3.7864940448587303`*^9}, {3.7865573740034494`*^9, 3.786557375757288*^9}},
 CellLabel->
  "In[300]:=",ExpressionUUID->"101cd957-340d-431e-91ec-e5cb76a39831"],

Cell[BoxData[
 TabViewBox[{{1,"\<\"ROC curves\"\>"->
  TagBox[
   StyleBox[
    DynamicModuleBox[{$CellContext`f$$ = $CellContext`rf, $CellContext`pd$$ = 
     0.067, $CellContext`pr$$ = True, $CellContext`u1$$ = 
     0.023, $CellContext`u2$$ = 0.23, $CellContext`\[Mu]D$$ = 
     2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
     0.75, $CellContext`\[Sigma]H$$ = 1, Typeset`show$$ = True, 
     Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
     Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
     "\"untitled\"", Typeset`specs$$ = {{{
        Hold[$CellContext`f$$], $CellContext`rf, "plot"}, {$CellContext`rf -> 
        "ROC curves", $CellContext`prf -> "PROC curves"}}, {{
        Hold[$CellContext`pr$$], True, "plot range"}, {
       True -> "full", False -> "partial"}}, {
       Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
       Hold[
        Style["prevalence of disease", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`pd$$], 0.067, "v"}, 1.*^-8, 0.99}, {
       Hold[
        Style["nondiseased population", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
        Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
       0.01}, {
       Hold[
        Style["diseased population", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
        Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6, 
       0.01}, {
       Hold[
        Style["standard measurement uncertainty", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`u1$$], 0.023, "first test"}, 0, 6, 0.01}, {{
        Hold[$CellContext`u2$$], 0.23, "second test"}, 0, 6, 0.01}}, 
     Typeset`size$$ = {600., {398., 407.}}, Typeset`update$$ = 0, 
     Typeset`initDone$$, Typeset`skipInitDone$$ = 
     False, $CellContext`f$27011$$ = False, $CellContext`pr$27012$$ = 
     False, $CellContext`pd$27013$$ = 0, $CellContext`\[Mu]H$27014$$ = 
     0, $CellContext`\[Sigma]H$27015$$ = 0, $CellContext`\[Mu]D$27016$$ = 
     0, $CellContext`\[Sigma]D$27017$$ = 0, $CellContext`u1$27018$$ = 
     0, $CellContext`u2$27019$$ = 0}, 
     DynamicBox[Manipulate`ManipulateBoxes[
      1, StandardForm, 
       "Variables" :> {$CellContext`f$$ = $CellContext`rf, $CellContext`pd$$ = 
         0.067, $CellContext`pr$$ = True, $CellContext`u1$$ = 
         0.023, $CellContext`u2$$ = 0.23, $CellContext`\[Mu]D$$ = 
         2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
         0.75, $CellContext`\[Sigma]H$$ = 1}, "ControllerVariables" :> {
         Hold[$CellContext`f$$, $CellContext`f$27011$$, False], 
         Hold[$CellContext`pr$$, $CellContext`pr$27012$$, False], 
         Hold[$CellContext`pd$$, $CellContext`pd$27013$$, 0], 
         Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27014$$, 0], 
         Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27015$$, 0], 
         Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27016$$, 0], 
         Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27017$$, 0], 
         Hold[$CellContext`u1$$, $CellContext`u1$27018$$, 0], 
         Hold[$CellContext`u2$$, $CellContext`u2$27019$$, 0]}, 
       "OtherVariables" :> {
        Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
         Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
         Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
         Typeset`initDone$$, Typeset`skipInitDone$$}, 
       "Body" :> ($CellContext`pro[$CellContext`pr$$]; 
        Switch[$CellContext`f$$, $CellContext`rf, 
          Column[{
            Text[
             Labeled[
              Plot[{
                $CellContext`roc[$CellContext`x, $CellContext`\[Mu]D$$, \
$CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, \
$CellContext`u1$$], 
                $CellContext`roc[$CellContext`x, $CellContext`\[Mu]D$$, \
$CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, \
$CellContext`u2$$]}, {$CellContext`x, 0, 1}, AspectRatio -> 1, 
               AxesLabel -> {"1-Sp", "Se"}, AxesOrigin -> {0, 1}, PlotStyle -> {
                 ColorData["HTML", "SlateBlue"], 
                 RGBColor[1, 0.47, 0]}, PlotLegends -> 
               Placed[{"first test", "second test"}, Top], 
               ImageSize -> {400, 400}], "ROC curves", Top]], 
            $CellContext`damr[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$]}, Center], $CellContext`prf, 
          Text[
           Labeled[
            Quiet[
             ParametricPlot[{{
                
                Apply[$CellContext`cnpv, {$CellContext`x, \
$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, \
$CellContext`\[Sigma]H$$, $CellContext`pd$$, $CellContext`u1$$}], 
                
                Apply[$CellContext`ppv, {$CellContext`x, \
$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, \
$CellContext`\[Sigma]H$$, $CellContext`pd$$, $CellContext`u1$$}]}, {
                
                Apply[$CellContext`cnpv, {$CellContext`x, \
$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, \
$CellContext`\[Sigma]H$$, $CellContext`pd$$, $CellContext`u2$$}], 
                
                Apply[$CellContext`ppv, {$CellContext`x, \
$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, \
$CellContext`\[Sigma]H$$, $CellContext`pd$$, $CellContext`u2$$}]}}, \
{$CellContext`x, 0, 1}, AspectRatio -> 1, AxesOrigin -> {0, 1}, PlotPoints -> 
              100, MaxRecursion -> 100, AspectRatio -> 1, 
              AxesLabel -> {"1-NPV", "PPV"}, PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> 
              Placed[{"first test", "second test"}, Top], 
              ImageSize -> {400, 400}]], "PROC curves", Top]]]), 
       "Specifications" :> {{{$CellContext`f$$, $CellContext`rf, 
           "plot"}, {$CellContext`rf -> "ROC curves", $CellContext`prf -> 
           "PROC curves"}, ControlPlacement -> 
          Left}, {{$CellContext`pr$$, True, "plot range"}, {
          True -> "full", False -> "partial"}, ControlPlacement -> Left}, "", 
         Style[
         "prevalence of disease", Bold], {{$CellContext`pd$$, 0.067, "v"}, 
          1.*^-8, 0.99, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style[
         "nondiseased population", Bold], {{$CellContext`\[Mu]H$$, 0, "mean"},
           0, 6, 0.01, ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
          0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style[
         "diseased population", Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"},
           0, 6, 0.01, ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, "standard deviation"},
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style["standard measurement uncertainty", Bold], 
         Delimiter, {{$CellContext`u1$$, 0.023, "first test"}, 0, 6, 0.01, 
          ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`u2$$, 0.23, "second test"}, 0, 6, 0.01, 
          ImageSize -> Tiny, Appearance -> "Labeled"}, Delimiter}, 
       "Options" :> {TrackedSymbols -> True, ControlPlacement -> Left}, 
       "DefaultOptions" :> {}],
      ImageSizeCache->{1036., {443., 452.}},
      SingleEvaluation->True],
     Deinitialization:>None,
     DynamicModuleValues:>{},
     Initialization:>({$CellContext`pro[
          Pattern[$CellContext`pr, 
           Blank[]]] := 
        Switch[$CellContext`pr, True, SetOptions[Plot, PlotRange -> Full]; 
          SetOptions[Plot3D, PlotRange -> Full]; 
          SetOptions[ContourPlot, PlotRange -> Full]; 
          SetOptions[ParametricPlot, PlotRange -> Full]; 
          SetOptions[ParametricPlot3D, PlotRange -> Full], False, 
          SetOptions[Plot, PlotRange -> Automatic]; 
          SetOptions[Plot3D, PlotRange -> Automatic]; 
          SetOptions[ContourPlot, PlotRange -> Automatic]; 
          SetOptions[ParametricPlot, PlotRange -> Automatic]; 
          SetOptions[
           ParametricPlot3D, PlotRange -> Automatic]], $CellContext`rf[
          Pattern[$CellContext`m, 
           Blank[]], {
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u1, 
            Blank[]], 
           Pattern[$CellContext`u2, 
            Blank[]], 
           Pattern[$CellContext`l, 
            BlankNullSequence[List]]}] := 
        Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}]/
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`roc[
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) (1 + 
          Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 - 2 $CellContext`x])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`damr[
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u1, 
           Blank[]], 
          Pattern[$CellContext`u2, 
           Blank[]]] := Text[
          Grid[
           Quiet[
            Transpose[{{"", "AUC", "AOC"}, {"first test", 
               NumberForm[
                Re[
                 N[
                  $CellContext`auc[$CellContext`\[Mu]D, $CellContext`\[Mu]H, \
$CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`u1]]], {8, 3}], 
               NumberForm[1. - Re[
                 N[
                  $CellContext`auc[$CellContext`\[Mu]D, $CellContext`\[Mu]H, \
$CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`u1]]], {8, 
                3}]}, {"second test", 
               NumberForm[
                Re[
                 N[
                  $CellContext`auc[$CellContext`\[Mu]D, $CellContext`\[Mu]H, \
$CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`u2]]], {8, 3}], 
               NumberForm[1. - Re[
                 N[
                  $CellContext`auc[$CellContext`\[Mu]D, $CellContext`\[Mu]H, \
$CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`u2]]], {8, 
                3}]}, {"relative difference", 
               NumberForm[(Re[
                   N[
                    $CellContext`auc[$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`u1]]] - Re[
                  N[
                   $CellContext`auc[$CellContext`\[Mu]D, $CellContext`\[Mu]H, \
$CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`u2]]])/Re[
                 N[
                  $CellContext`auc[$CellContext`\[Mu]D, $CellContext`\[Mu]H, \
$CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`u1]]], {8, 3}], 
               NumberForm[(Re[
                   N[
                    $CellContext`auc[$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`u2]]] - Re[
                  N[
                   $CellContext`auc[$CellContext`\[Mu]D, $CellContext`\[Mu]H, \
$CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`u1]]])/(1 - Re[
                 N[
                  $CellContext`auc[$CellContext`\[Mu]D, $CellContext`\[Mu]H, \
$CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`u1]]]), {8, 
                3}]}}]], Frame -> All, FrameStyle -> Gray, 
           Spacings -> {0.5, 1}, ItemSize -> Automatic]], $CellContext`auc[
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) 
         Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[2 $CellContext`u^2 + $CellContext`\[Sigma]D^2 + $CellContext`\
\[Sigma]H^2])], $CellContext`cnpv[
          Pattern[$CellContext`sn, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := 
        1 - 1/(1 + ((
            2 $CellContext`pd) (-1 + $CellContext`sn))/((-1 + $CellContext`pd)
            Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`ppv[
          Pattern[$CellContext`sn, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := ((2 $CellContext`pd) $CellContext`sn)/(
         2 + (2 $CellContext`pd) (-1 + $CellContext`sn) + (-1 + \
$CellContext`pd) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])}; 
      Typeset`initDone$$ = True),
     SynchronousInitialization->True,
     UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
     UnsavedVariables:>{Typeset`initDone$$},
     UntrackedVariables:>{Typeset`size$$}], "Manipulate",
    Deployed->True,
    StripOnInput->False],
   Manipulate`InterpretManipulate[1]]}, {2,"\<\"DAM plots\"\>"->
  TabViewBox[{{1,"\<\"DAM vs uncertainty\"\>"->
   TagBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`m$$ = $CellContext`dor, $CellContext`pd$$ \
= 0.067, $CellContext`pr$$ = False, $CellContext`rfn$$ = 
      100, $CellContext`rfp$$ = 76, $CellContext`rt$$ = 
      1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 0, $CellContext`x$$ = 
      2.26, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
      0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1, 
      Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
      Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ =
       1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`m$$], $CellContext`dor, "plot"}, {$CellContext`sns -> 
         "sensitivity Se", $CellContext`spc -> 
         "specificity Sp", $CellContext`oda -> 
         "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
         "positive predictive value (PPV)", $CellContext`npv -> 
         "negative predictive value (NPV)", $CellContext`dor -> 
         "diagnostic odds ratio (DOR)", $CellContext`plr -> 
         "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
         "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
         "Youden's index J", $CellContext`ed -> 
         "Euclidean distance (ED)", $CellContext`cz -> 
         "concordance product CZ", $CellContext`tr -> "risk (R)"}}, {{
         Hold[$CellContext`pr$$], False, "plot range"}, {
        True -> "full", False -> "partial"}}, {
        Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
        Hold[
         Style["prevalence of disease", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`pd$$], 0.067, "v"}, 1.*^-8, 0.99}, {
        Hold[
         Style["nondiseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
        0.01}, {
        Hold[
         Style["diseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6,
         0.01}, {
        Hold[
         Style["diagnostic threshold", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`x$$], 2.26, "d"}, 
        Dynamic[((-5) Max[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$])
           Max[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$]], 
        Dynamic[
        Max[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$] + 
         5 Max[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$]], 0.01}, {{
         Hold[$CellContext`rt$$], 1, "testing"}, 0, 1000, 0.01}, {{
         Hold[$CellContext`rtp$$], 0, "true positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rtn$$], 0, "true negative result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfp$$], 76, "false positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfn$$], 100, "false negative result"}, 0, 1000, 
        0.01}, {
        Hold[
         OpenerView[{
           Style["expected loss", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2], 
             Manipulate`Place[3], 
             Manipulate`Place[4], 
             Manipulate`Place[5]}, Alignment -> Right]}]], 
        Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
      600., {296., 335.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
      Typeset`skipInitDone$$ = False, $CellContext`m$27053$$ = 
      False, $CellContext`pr$27054$$ = False, $CellContext`pd$27055$$ = 
      0, $CellContext`\[Mu]H$27056$$ = 0, $CellContext`\[Sigma]H$27057$$ = 
      0, $CellContext`\[Mu]D$27058$$ = 0, $CellContext`\[Sigma]D$27059$$ = 
      0, $CellContext`x$27060$$ = 0, $CellContext`rt$27061$$ = 
      0, $CellContext`rtp$27062$$ = 0, $CellContext`rtn$27063$$ = 
      0, $CellContext`rfp$27064$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       2, StandardForm, 
        "Variables" :> {$CellContext`m$$ = $CellContext`dor, \
$CellContext`pd$$ = 0.067, $CellContext`pr$$ = False, $CellContext`rfn$$ = 
          100, $CellContext`rfp$$ = 76, $CellContext`rt$$ = 
          1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 0, $CellContext`x$$ = 
          2.26, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
          0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1}, 
        "ControllerVariables" :> {
          Hold[$CellContext`m$$, $CellContext`m$27053$$, False], 
          Hold[$CellContext`pr$$, $CellContext`pr$27054$$, False], 
          Hold[$CellContext`pd$$, $CellContext`pd$27055$$, 0], 
          Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27056$$, 0], 
          Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27057$$, 0], 
          Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27058$$, 0], 
          Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27059$$, 0], 
          Hold[$CellContext`x$$, $CellContext`x$27060$$, 0], 
          Hold[$CellContext`rt$$, $CellContext`rt$27061$$, 0], 
          Hold[$CellContext`rtp$$, $CellContext`rtp$27062$$, 0], 
          Hold[$CellContext`rtn$$, $CellContext`rtn$27063$$, 0], 
          Hold[$CellContext`rfp$$, $CellContext`rfp$27064$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`pro[$CellContext`pr$$]; 
         Switch[$CellContext`m$$, $CellContext`tr, 
           $CellContext`pum[$CellContext`tr, {$CellContext`x$$, $CellContext`\
\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, $CellContext`\
\[Sigma]H$$, $CellContext`pd$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], 
           Blank[], 
           $CellContext`pum[$CellContext`m$$, {$CellContext`x$$, \
$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, \
$CellContext`\[Sigma]H$$, $CellContext`pd$$, {$CellContext`rt$$, \
$CellContext`rtp$$, $CellContext`rtn$$, $CellContext`rfp$$, \
$CellContext`rfn$$}}]]), 
        "Specifications" :> {{{$CellContext`m$$, $CellContext`dor, 
            "plot"}, {$CellContext`sns -> "sensitivity Se", $CellContext`spc -> 
            "specificity Sp", $CellContext`oda -> 
            "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
            "positive predictive value (PPV)", $CellContext`npv -> 
            "negative predictive value (NPV)", $CellContext`dor -> 
            "diagnostic odds ratio (DOR)", $CellContext`plr -> 
            "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
            "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
            "Youden's index J", $CellContext`ed -> 
            "Euclidean distance (ED)", $CellContext`cz -> 
            "concordance product CZ", $CellContext`tr -> "risk (R)"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`pr$$, False, "plot range"}, {
           True -> "full", False -> "partial"}, ControlPlacement -> Left}, "", 
          Style[
          "prevalence of disease", Bold], {{$CellContext`pd$$, 0.067, "v"}, 
           1.*^-8, 0.99, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "nondiseased population", 
           Bold], {{$CellContext`\[Mu]H$$, 0, "mean"}, 0, 6, 0.01, ImageSize -> 
           Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "diseased population", 
           Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, 
            "standard deviation"}, 0.01, 6, 0.01, ImageSize -> Tiny, 
           Appearance -> "Labeled"}, Delimiter, 
          Style["diagnostic threshold", Bold], {{$CellContext`x$$, 2.26, "d"}, 
           
           Dynamic[((-5) 
             Max[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$]) 
            Max[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$]], 
           Dynamic[
           Max[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$] + 
            5 Max[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$]], 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, {{$CellContext`rt$$, 1, "testing"}, 0, 1000, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           1}, {{$CellContext`rtp$$, 0, "true positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           2}, {{$CellContext`rtn$$, 0, "true negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           3}, {{$CellContext`rfp$$, 76, "false positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           4}, {{$CellContext`rfn$$, 100, "false negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           5}, 
          OpenerView[{
            Style["expected loss", Bold], 
            Column[{
              Manipulate`Place[1], 
              Manipulate`Place[2], 
              Manipulate`Place[3], 
              Manipulate`Place[4], 
              Manipulate`Place[5]}, Alignment -> Right]}], Delimiter}, 
        "Options" :> {TrackedSymbols -> True, ControlPlacement -> Left}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{1190., {356., 365.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`pro[
           Pattern[$CellContext`pr, 
            Blank[]]] := 
         Switch[$CellContext`pr, True, SetOptions[Plot, PlotRange -> Full]; 
           SetOptions[Plot3D, PlotRange -> Full]; 
           SetOptions[ContourPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot3D, PlotRange -> Full], False, 
           SetOptions[Plot, PlotRange -> Automatic]; 
           SetOptions[Plot3D, PlotRange -> Automatic]; 
           SetOptions[ContourPlot, PlotRange -> Automatic]; 
           SetOptions[ParametricPlot, PlotRange -> Automatic]; 
           SetOptions[
            ParametricPlot3D, PlotRange -> Automatic]], $CellContext`tr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp + $CellContext`rt + \
$CellContext`pd ($CellContext`rfn - $CellContext`rfp - $CellContext`rfn \
$CellContext`sn + $CellContext`rtp $CellContext`sn) + (((1/
              2) (-1 + $CellContext`pd)) ($CellContext`rfp - \
$CellContext`rtn)) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`pum[
           Pattern[$CellContext`m$, 
            Blank[]], {
            Pattern[$CellContext`t$, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D$, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H$, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D$, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H$, 
             Blank[]], 
            Pattern[$CellContext`pd$, 
             Blank[]], 
            Pattern[$CellContext`l$, 
             BlankNullSequence[List]]}] := Text[
           Labeled[
            Quiet[
             Plot[
              Switch[$CellContext`m$, $CellContext`tr, 
               
               Apply[$CellContext`vf, {$CellContext`ttr, {$CellContext`t$, \
$CellContext`\[Mu]D$, $CellContext`\[Mu]H$, $CellContext`\[Sigma]D$, \
$CellContext`\[Sigma]H$, $CellContext`pd$, $CellContext`x$$, \
$CellContext`l$}}], 
               Blank[], 
               Apply[$CellContext`vf, {
                 $CellContext`mf[$CellContext`m$, $CellContext`thr], \
{$CellContext`t$, $CellContext`\[Mu]D$, $CellContext`\[Mu]H$, $CellContext`\
\[Sigma]D$, $CellContext`\[Sigma]H$, $CellContext`pd$, $CellContext`x$$}}]], \
{$CellContext`x$$, 0, 
               Max[$CellContext`\[Sigma]D$, $CellContext`\[Sigma]H$]}, 
              Exclusions -> "Singularities", AspectRatio -> 1, 
              AxesLabel -> {"u", 
                $CellContext`txt[$CellContext`vf, $CellContext`m$]}, 
              PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`vf, $CellContext`m$], 
             " versus standard measurement uncertainty (u) curve"], 
            Top]], $CellContext`vf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u, $CellContext`l}], $CellContext`ttr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             Blank[]]}] := (1/2) (
           2 ($CellContext`rfp + $CellContext`rt) + $CellContext`pd \
($CellContext`rfn - 
             2 $CellContext`rfp + $CellContext`rtp) + ($CellContext`pd \
(-$CellContext`rfn + $CellContext`rtp)) 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`mf[
           Pattern[$CellContext`ma, 
            Blank[]], 
           Pattern[$CellContext`mb, 
            Blank[]]] := Switch[$CellContext`mb, $CellContext`sns, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`oda, \
$CellContext`ppv, $CellContext`ppv, $CellContext`npv, $CellContext`npv, \
$CellContext`dor, $CellContext`dor, $CellContext`plr, $CellContext`plr, \
$CellContext`nlr, $CellContext`nlr, $CellContext`yi, $CellContext`yi, \
$CellContext`ed, $CellContext`ed, $CellContext`cz, $CellContext`cz, \
$CellContext`tr, $CellContext`tr], $CellContext`spc, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`hoda, \
$CellContext`ppv, $CellContext`hppv, $CellContext`npv, $CellContext`hnpv, \
$CellContext`dor, $CellContext`hdor, $CellContext`plr, $CellContext`hplr, \
$CellContext`nlr, $CellContext`hnlr, $CellContext`yi, $CellContext`hyi, \
$CellContext`ed, $CellContext`hed, $CellContext`cz, $CellContext`hcz, \
$CellContext`tr, $CellContext`htr], $CellContext`thr, 
           
           Switch[$CellContext`ma, $CellContext`sns, $CellContext`tsens, \
$CellContext`spc, $CellContext`tspec, $CellContext`oda, $CellContext`toda, \
$CellContext`ppv, $CellContext`tppv, $CellContext`npv, $CellContext`tnpv, \
$CellContext`dor, $CellContext`tdor, $CellContext`plr, $CellContext`tplr, \
$CellContext`nlr, $CellContext`tnlr, $CellContext`yi, $CellContext`tyi, \
$CellContext`ed, $CellContext`ted, $CellContext`cz, $CellContext`tcz, \
$CellContext`tr, $CellContext`ttr]], $CellContext`oda[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd $CellContext`sn - ((1/
            2) (-1 + $CellContext`pd)) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ppv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 $CellContext`pd) $CellContext`sn)/(
          2 + (2 $CellContext`pd) (-1 + $CellContext`sn) + (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`npv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 + ((
             2 $CellContext`pd) (-1 + $CellContext`sn))/((-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`dor[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sn)) $CellContext`sn) (1 + 
           2/(-2 + Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                 Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`plr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (2 $CellContext`sn)/(1 + 
          Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`nlr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -((2 (-1 + $CellContext`sn))/
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`yi[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -1 + $CellContext`sn + (1/2) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ed[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sn)^2 + (1/
             4) (1 + Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                   Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                  InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2], \
$CellContext`cz[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sn) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`hoda[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (
            1 - $CellContext`pd) $CellContext`sp + ((1/2) $CellContext`pd) (1 + 
            Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hppv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1 + ((2 (-1 + $CellContext`pd)) (-1 + $CellContext`sp))/(-2 - (
            2 (-1 + $CellContext`pd)) $CellContext`sp + $CellContext`pd 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hnpv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 (-1 + $CellContext`pd)) $CellContext`sp)/((
            2 (-1 + $CellContext`pd)) $CellContext`sp - $CellContext`pd 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hdor[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sp)) $CellContext`sp) (1 - 2/
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hplr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (-2 + 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
          2 (-1 + $CellContext`sp)), $CellContext`hnlr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/(2 $CellContext`sp)) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hyi[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`sp - (1/2) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hed[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sp)^2 + (1/4) 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                  Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                 InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`hcz[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sp) (1 + 
           Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`htr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp - $CellContext`pd \
$CellContext`rfp + $CellContext`rt + $CellContext`pd $CellContext`rtp + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) $CellContext`sp + (((
              1/2) $CellContext`pd) ($CellContext`rfn - $CellContext`rtp)) 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`tsens[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`tspec[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`toda[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/
           2) ($CellContext`pd + $CellContext`pd 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] - (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tppv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd ((1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
           2 - $CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + (-1 + \
$CellContext`pd) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tnpv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 - ($CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/((-1 + \
$CellContext`pd) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tdor[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((-2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])/(
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] (-2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tplr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tnlr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]/
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`tyi[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (-1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`ted[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Sqrt[(1 + Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`tcz[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/4) (1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`txt[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`vf, 
           
           Switch[$CellContext`m, $CellContext`sns, "Se", $CellContext`spc, 
            "Sp", $CellContext`csens, "CSens", $CellContext`cspec, 
            "CSpec", $CellContext`oda, "ODA", $CellContext`ppv, 
            "PPV", $CellContext`npv, "NPV", $CellContext`dor, 
            "DOR", $CellContext`plr, "LR+", $CellContext`nlr, 
            "LR-", $CellContext`yi, "J", $CellContext`ed, 
            "ED", $CellContext`cz, "CZ", $CellContext`tr, 
            "R"], $CellContext`deltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]Se", $CellContext`spc, 
            "\[DifferenceDelta]Sp", $CellContext`oda, 
            "\[DifferenceDelta]ODA", $CellContext`ppv, 
            "\[DifferenceDelta]PPV", $CellContext`npv, 
            "\[DifferenceDelta]NPV", $CellContext`dor, 
            "\[DifferenceDelta]DOR", $CellContext`plr, 
            "\[DifferenceDelta]LR+", $CellContext`nlr, 
            "\[DifferenceDelta]LR-", $CellContext`yi, 
            "\[DifferenceDelta]J", $CellContext`ed, 
            "\[DifferenceDelta]ED", $CellContext`cz, 
            "\[DifferenceDelta]CZ", $CellContext`tr, 
            "\[DifferenceDelta]R"], $CellContext`rdeltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]r(Se)", $CellContext`spc, 
            "\[DifferenceDelta]r(Sp)", $CellContext`oda, 
            "\[DifferenceDelta]r(ODA)", $CellContext`ppv, 
            "\[DifferenceDelta]r(PPV)", $CellContext`npv, 
            "\[DifferenceDelta]r(NPV)", $CellContext`dor, 
            "\[DifferenceDelta]r(DOR)", $CellContext`plr, 
            "\[DifferenceDelta]r(LR+)", $CellContext`nlr, 
            "\[DifferenceDelta]r(LR-)", $CellContext`yi, 
            "\[DifferenceDelta]r(J)", $CellContext`ed, 
            "\[DifferenceDelta]r(ED)", $CellContext`cz, 
            "\[DifferenceDelta]r(CZ)", $CellContext`tr, 
            "\[DifferenceDelta]r(R)"], $CellContext`df, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[PartialD](Se)/\[PartialD]u", $CellContext`spc, 
            "\[PartialD](Sp)/\[PartialD]u", $CellContext`oda, 
            "\[PartialD](ODA)/\[PartialD]u", $CellContext`ppv, 
            "\[PartialD](PPV)/\[PartialD]u", $CellContext`npv, 
            "\[PartialD](NPV)/\[PartialD]u", $CellContext`dor, 
            "\[PartialD](DOR)/\[PartialD]u", $CellContext`plr, 
            "\[PartialD](LR+)/\[PartialD]u", $CellContext`nlr, 
            "\[PartialD](LR-)/\[PartialD]u", $CellContext`yi, 
            "\[PartialD](J)/\[PartialD]u", $CellContext`ed, 
            "\[PartialD](ED)/\[PartialD]u", $CellContext`cz, 
            "\[PartialD](CZ)/\[PartialD]u", $CellContext`tr, 
            "\[PartialD](R)/\[PartialD]u"], $CellContext`rf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "Se ratio", $CellContext`spc, "Sp ratio", $CellContext`oda, 
            "ODA ratio", $CellContext`ppv, "PPV ratio", $CellContext`npv, 
            "NPV ratio", $CellContext`dor, "DOR ratio", $CellContext`plr, 
            "LR+ ratio", $CellContext`nlr, "LR- ratio", $CellContext`yi, 
            "J ratio", $CellContext`ed, "ED ratio", $CellContext`cz, 
            "CZ ratio", $CellContext`tr, "R ratio"]], $CellContext`txt[
           Pattern[$CellContext`s, 
            Blank[]]] := 
         Switch[$CellContext`s, $CellContext`sns, "Se", $CellContext`spc, 
           "Sp", $CellContext`thr, "d"], $CellContext`deltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`rdeltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := (
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}])/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}], $CellContext`df[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`uu, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := ReplaceAll[
           D[
            $CellContext`m[$CellContext`x, $CellContext`\[Mu]D, $CellContext`\
\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, \
$CellContext`u, $CellContext`l], $CellContext`u], {$CellContext`u -> \
$CellContext`uu}], $CellContext`rf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}]/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}]}; 
       Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    Manipulate`InterpretManipulate[1]]}, {2,"\<\"DAM vs Se or Sp\"\>"->
   TagBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`f$$ = $CellContext`vf, $CellContext`m$$ = \
$CellContext`dor, $CellContext`pd$$ = 0.067, $CellContext`pr$$ = 
      False, $CellContext`rfn$$ = 100, $CellContext`rfp$$ = 
      76, $CellContext`rt$$ = 1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 
      0, $CellContext`s$$ = $CellContext`spc, $CellContext`u1$$ = 
      0.023, $CellContext`u2$$ = 0.23, $CellContext`\[Mu]D$$ = 
      2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
      0.75, $CellContext`\[Sigma]H$$ = 1, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`f$$], $CellContext`vf, "type"}, {$CellContext`vf -> 
         "measures", $CellContext`df -> "derivatives", $CellContext`deltaf -> 
         "difference", $CellContext`rdeltaf -> 
         "relative difference", $CellContext`rf -> "ratio"}}, {{
         Hold[$CellContext`m$$], $CellContext`dor, "plot"}, {$CellContext`oda -> 
         "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
         "positive predictive value (PPV)", $CellContext`npv -> 
         "negative predictive value (NPV)", $CellContext`dor -> 
         "diagnostic odds ratio (DOR)", $CellContext`plr -> 
         "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
         "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
         "Youden's index J", $CellContext`ed -> 
         "Euclidean distance (ED)", $CellContext`cz -> 
         "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}}, {{
         Hold[$CellContext`s$$], $CellContext`spc, 
         "versus"}, {$CellContext`sns -> "sensitivity", $CellContext`spc -> 
         "specificity"}}, {{
         Hold[$CellContext`pr$$], False, "plot range"}, {
        True -> "full", False -> "partial"}}, {
        Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
        Hold[
         Style["prevalence of disease", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`pd$$], 0.067, "v"}, 1.*^-8, 0.99}, {
        Hold[
         Style["nondiseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
        0.01}, {
        Hold[
         Style["diseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6,
         0.01}, {
        Hold[
         Style["standard measurement uncertainty", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`u1$$], 0.023, "first test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`u2$$], 0.23, "second test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`rt$$], 1, "testing"}, 0, 1000, 0.01}, {{
         Hold[$CellContext`rtp$$], 0, "true positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rtn$$], 0, "true negative result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfp$$], 76, "false positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfn$$], 100, "false negative result"}, 0, 1000, 
        0.01}, {
        Hold[
         OpenerView[{
           Style["expected loss", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2], 
             Manipulate`Place[3], 
             Manipulate`Place[4], 
             Manipulate`Place[5]}, Alignment -> Right]}]], 
        Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
      600., {296., 382.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
      Typeset`skipInitDone$$ = False, $CellContext`f$27105$$ = 
      False, $CellContext`m$27106$$ = False, $CellContext`s$27107$$ = 
      False, $CellContext`pr$27108$$ = False, $CellContext`pd$27109$$ = 
      0, $CellContext`\[Mu]H$27110$$ = 0, $CellContext`\[Sigma]H$27111$$ = 
      0, $CellContext`\[Mu]D$27112$$ = 0, $CellContext`\[Sigma]D$27113$$ = 
      0, $CellContext`u1$27114$$ = 0, $CellContext`u2$27115$$ = 
      0, $CellContext`rt$27116$$ = 0, $CellContext`rtp$27117$$ = 
      0, $CellContext`rtn$27118$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       2, StandardForm, 
        "Variables" :> {$CellContext`f$$ = $CellContext`vf, $CellContext`m$$ = \
$CellContext`dor, $CellContext`pd$$ = 0.067, $CellContext`pr$$ = 
          False, $CellContext`rfn$$ = 100, $CellContext`rfp$$ = 
          76, $CellContext`rt$$ = 1, $CellContext`rtn$$ = 
          0, $CellContext`rtp$$ = 
          0, $CellContext`s$$ = $CellContext`spc, $CellContext`u1$$ = 
          0.023, $CellContext`u2$$ = 0.23, $CellContext`\[Mu]D$$ = 
          2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
          0.75, $CellContext`\[Sigma]H$$ = 1}, "ControllerVariables" :> {
          Hold[$CellContext`f$$, $CellContext`f$27105$$, False], 
          Hold[$CellContext`m$$, $CellContext`m$27106$$, False], 
          Hold[$CellContext`s$$, $CellContext`s$27107$$, False], 
          Hold[$CellContext`pr$$, $CellContext`pr$27108$$, False], 
          Hold[$CellContext`pd$$, $CellContext`pd$27109$$, 0], 
          Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27110$$, 0], 
          Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27111$$, 0], 
          Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27112$$, 0], 
          Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27113$$, 0], 
          Hold[$CellContext`u1$$, $CellContext`u1$27114$$, 0], 
          Hold[$CellContext`u2$$, $CellContext`u2$27115$$, 0], 
          Hold[$CellContext`rt$$, $CellContext`rt$27116$$, 0], 
          Hold[$CellContext`rtp$$, $CellContext`rtp$27117$$, 0], 
          Hold[$CellContext`rtn$$, $CellContext`rtn$27118$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`pro[$CellContext`pr$$]; 
         Switch[$CellContext`m$$, $CellContext`tr, 
           Switch[$CellContext`f$$, $CellContext`vf, 
            $CellContext`p2[$CellContext`vf, $CellContext`tr, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`df, 
            $CellContext`p2[$CellContext`df, $CellContext`tr, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`deltaf, 
            $CellContext`p1[$CellContext`deltaf, $CellContext`tr, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`rdeltaf, 
            $CellContext`p1[$CellContext`rdeltaf, $CellContext`tr, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`rf, 
            $CellContext`p1[$CellContext`rf, $CellContext`tr, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}]], 
           Blank[], 
           Switch[$CellContext`f$$, $CellContext`vf, 
            $CellContext`p2[$CellContext`vf, $CellContext`m$$, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}], $CellContext`df, 
            $CellContext`p2[$CellContext`df, $CellContext`m$$, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}], $CellContext`deltaf, 
            $CellContext`p1[$CellContext`deltaf, $CellContext`m$$, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}], $CellContext`rdeltaf, 
            $CellContext`p1[$CellContext`rdeltaf, $CellContext`m$$, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}], $CellContext`rf, 
            $CellContext`p1[$CellContext`rf, $CellContext`m$$, \
$CellContext`s$$, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}]]]), 
        "Specifications" :> {{{$CellContext`f$$, $CellContext`vf, 
            "type"}, {$CellContext`vf -> "measures", $CellContext`df -> 
            "derivatives", $CellContext`deltaf -> 
            "difference", $CellContext`rdeltaf -> 
            "relative difference", $CellContext`rf -> "ratio"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`m$$, $CellContext`dor, 
            "plot"}, {$CellContext`oda -> 
            "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
            "positive predictive value (PPV)", $CellContext`npv -> 
            "negative predictive value (NPV)", $CellContext`dor -> 
            "diagnostic odds ratio (DOR)", $CellContext`plr -> 
            "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
            "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
            "Youden's index J", $CellContext`ed -> 
            "Euclidean distance (ED)", $CellContext`cz -> 
            "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`s$$, $CellContext`spc, 
            "versus"}, {$CellContext`sns -> "sensitivity", $CellContext`spc -> 
            "specificity"}, ControlPlacement -> 
           Left}, {{$CellContext`pr$$, False, "plot range"}, {
           True -> "full", False -> "partial"}, ControlPlacement -> Left}, "", 
          Style[
          "prevalence of disease", Bold], {{$CellContext`pd$$, 0.067, "v"}, 
           1.*^-8, 0.99, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "nondiseased population", 
           Bold], {{$CellContext`\[Mu]H$$, 0, "mean"}, 0, 6, 0.01, ImageSize -> 
           Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "diseased population", 
           Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, 
            "standard deviation"}, 0.01, 6, 0.01, ImageSize -> Tiny, 
           Appearance -> "Labeled"}, Delimiter, 
          Style["standard measurement uncertainty", Bold], 
          Delimiter, {{$CellContext`u1$$, 0.023, "first test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`u2$$, 0.23, "second test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, {{$CellContext`rt$$, 1, "testing"}, 0, 1000, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           1}, {{$CellContext`rtp$$, 0, "true positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           2}, {{$CellContext`rtn$$, 0, "true negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           3}, {{$CellContext`rfp$$, 76, "false positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           4}, {{$CellContext`rfn$$, 100, "false negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           5}, 
          OpenerView[{
            Style["expected loss", Bold], 
            Column[{
              Manipulate`Place[1], 
              Manipulate`Place[2], 
              Manipulate`Place[3], 
              Manipulate`Place[4], 
              Manipulate`Place[5]}, Alignment -> Right]}], Delimiter}, 
        "Options" :> {TrackedSymbols -> True, ControlPlacement -> Left}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{1282., {380., 389.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`pro[
           Pattern[$CellContext`pr, 
            Blank[]]] := 
         Switch[$CellContext`pr, True, SetOptions[Plot, PlotRange -> Full]; 
           SetOptions[Plot3D, PlotRange -> Full]; 
           SetOptions[ContourPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot3D, PlotRange -> Full], False, 
           SetOptions[Plot, PlotRange -> Automatic]; 
           SetOptions[Plot3D, PlotRange -> Automatic]; 
           SetOptions[ContourPlot, PlotRange -> Automatic]; 
           SetOptions[ParametricPlot, PlotRange -> Automatic]; 
           SetOptions[
            ParametricPlot3D, PlotRange -> Automatic]], $CellContext`tr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp + $CellContext`rt + \
$CellContext`pd ($CellContext`rfn - $CellContext`rfp - $CellContext`rfn \
$CellContext`sn + $CellContext`rtp $CellContext`sn) + (((1/
              2) (-1 + $CellContext`pd)) ($CellContext`rfp - \
$CellContext`rtn)) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`vf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u, $CellContext`l}], $CellContext`p2[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]], 
           Pattern[$CellContext`s, 
            Blank[]], {
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := Text[
           Labeled[
            Quiet[
             Plot[{
               Apply[$CellContext`f, {
                 $CellContext`mf[$CellContext`m, $CellContext`s], \
{$CellContext`x, $CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\
\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`l}}], 
               Apply[$CellContext`f, {
                 $CellContext`mf[$CellContext`m, $CellContext`s], \
{$CellContext`x, $CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\
\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u2, \
$CellContext`l}}]}, 
              Switch[$CellContext`s, $CellContext`thr, {$CellContext`x, 
                
                Min[$CellContext`\[Mu]D - 
                 3.5 $CellContext`\[Sigma]D, $CellContext`\[Mu]H - 
                 3.5 $CellContext`\[Sigma]H], 
                
                Max[$CellContext`\[Mu]D + 
                 3.5 $CellContext`\[Sigma]D, $CellContext`\[Mu]H + 
                 3.5 $CellContext`\[Sigma]H]}, 
               Blank[], {$CellContext`x, 0.001, 0.999}], Exclusions -> 
              "Singularities", AspectRatio -> 1, AxesLabel -> {
                $CellContext`txt[$CellContext`s], 
                $CellContext`txt[$CellContext`f, $CellContext`m]}, PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> 
              Placed[{"first test", "second test"}, Top], 
              ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`f, $CellContext`m], " versus ", 
             $CellContext`ltxt[$CellContext`s], " curve"], 
            Top]], $CellContext`mf[
           Pattern[$CellContext`ma, 
            Blank[]], 
           Pattern[$CellContext`mb, 
            Blank[]]] := Switch[$CellContext`mb, $CellContext`sns, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`oda, \
$CellContext`ppv, $CellContext`ppv, $CellContext`npv, $CellContext`npv, \
$CellContext`dor, $CellContext`dor, $CellContext`plr, $CellContext`plr, \
$CellContext`nlr, $CellContext`nlr, $CellContext`yi, $CellContext`yi, \
$CellContext`ed, $CellContext`ed, $CellContext`cz, $CellContext`cz, \
$CellContext`tr, $CellContext`tr], $CellContext`spc, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`hoda, \
$CellContext`ppv, $CellContext`hppv, $CellContext`npv, $CellContext`hnpv, \
$CellContext`dor, $CellContext`hdor, $CellContext`plr, $CellContext`hplr, \
$CellContext`nlr, $CellContext`hnlr, $CellContext`yi, $CellContext`hyi, \
$CellContext`ed, $CellContext`hed, $CellContext`cz, $CellContext`hcz, \
$CellContext`tr, $CellContext`htr], $CellContext`thr, 
           
           Switch[$CellContext`ma, $CellContext`sns, $CellContext`tsens, \
$CellContext`spc, $CellContext`tspec, $CellContext`oda, $CellContext`toda, \
$CellContext`ppv, $CellContext`tppv, $CellContext`npv, $CellContext`tnpv, \
$CellContext`dor, $CellContext`tdor, $CellContext`plr, $CellContext`tplr, \
$CellContext`nlr, $CellContext`tnlr, $CellContext`yi, $CellContext`tyi, \
$CellContext`ed, $CellContext`ted, $CellContext`cz, $CellContext`tcz, \
$CellContext`tr, $CellContext`ttr]], $CellContext`oda[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd $CellContext`sn - ((1/
            2) (-1 + $CellContext`pd)) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ppv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 $CellContext`pd) $CellContext`sn)/(
          2 + (2 $CellContext`pd) (-1 + $CellContext`sn) + (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`npv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 + ((
             2 $CellContext`pd) (-1 + $CellContext`sn))/((-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`dor[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sn)) $CellContext`sn) (1 + 
           2/(-2 + 
            Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`plr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (2 $CellContext`sn)/(1 + 
          Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`nlr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -((2 (-1 + $CellContext`sn))/
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`yi[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -1 + $CellContext`sn + (1/2) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ed[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sn)^2 + (1/
             4) (1 + Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                   Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                  InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2], \
$CellContext`cz[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sn) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`hoda[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (
            1 - $CellContext`pd) $CellContext`sp + ((1/2) $CellContext`pd) (1 + 
            Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hppv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1 + ((2 (-1 + $CellContext`pd)) (-1 + $CellContext`sp))/(-2 - (
            2 (-1 + $CellContext`pd)) $CellContext`sp + $CellContext`pd 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hnpv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 (-1 + $CellContext`pd)) $CellContext`sp)/((
            2 (-1 + $CellContext`pd)) $CellContext`sp - $CellContext`pd 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hdor[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sp)) $CellContext`sp) (1 - 2/
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hplr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (-2 + 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
          2 (-1 + $CellContext`sp)), $CellContext`hnlr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/(2 $CellContext`sp)) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hyi[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`sp - (1/2) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hed[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sp)^2 + (1/4) 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                  Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                 InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`hcz[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sp) (1 + 
           Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`htr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp - $CellContext`pd \
$CellContext`rfp + $CellContext`rt + $CellContext`pd $CellContext`rtp + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) $CellContext`sp + (((
              1/2) $CellContext`pd) ($CellContext`rfn - $CellContext`rtp)) 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`tsens[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`tspec[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`toda[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/
           2) ($CellContext`pd + $CellContext`pd 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] - (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tppv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd ((1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
           2 - $CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + (-1 + \
$CellContext`pd) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tnpv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 - ($CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/((-1 + \
$CellContext`pd) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tdor[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((-2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])/(
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] (-2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tplr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tnlr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]/
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`tyi[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (-1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`ted[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Sqrt[(1 + 
              Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`tcz[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/4) (1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ttr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             Blank[]]}] := (1/2) (
           2 ($CellContext`rfp + $CellContext`rt) + $CellContext`pd \
($CellContext`rfn - 
             2 $CellContext`rfp + $CellContext`rtp) + ($CellContext`pd \
(-$CellContext`rfn + $CellContext`rtp)) 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`txt[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`vf, 
           
           Switch[$CellContext`m, $CellContext`sns, "Se", $CellContext`spc, 
            "Sp", $CellContext`csens, "CSens", $CellContext`cspec, 
            "CSpec", $CellContext`oda, "ODA", $CellContext`ppv, 
            "PPV", $CellContext`npv, "NPV", $CellContext`dor, 
            "DOR", $CellContext`plr, "LR+", $CellContext`nlr, 
            "LR-", $CellContext`yi, "J", $CellContext`ed, 
            "ED", $CellContext`cz, "CZ", $CellContext`tr, 
            "R"], $CellContext`deltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]Se", $CellContext`spc, 
            "\[DifferenceDelta]Sp", $CellContext`oda, 
            "\[DifferenceDelta]ODA", $CellContext`ppv, 
            "\[DifferenceDelta]PPV", $CellContext`npv, 
            "\[DifferenceDelta]NPV", $CellContext`dor, 
            "\[DifferenceDelta]DOR", $CellContext`plr, 
            "\[DifferenceDelta]LR+", $CellContext`nlr, 
            "\[DifferenceDelta]LR-", $CellContext`yi, 
            "\[DifferenceDelta]J", $CellContext`ed, 
            "\[DifferenceDelta]ED", $CellContext`cz, 
            "\[DifferenceDelta]CZ", $CellContext`tr, 
            "\[DifferenceDelta]R"], $CellContext`rdeltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]r(Se)", $CellContext`spc, 
            "\[DifferenceDelta]r(Sp)", $CellContext`oda, 
            "\[DifferenceDelta]r(ODA)", $CellContext`ppv, 
            "\[DifferenceDelta]r(PPV)", $CellContext`npv, 
            "\[DifferenceDelta]r(NPV)", $CellContext`dor, 
            "\[DifferenceDelta]r(DOR)", $CellContext`plr, 
            "\[DifferenceDelta]r(LR+)", $CellContext`nlr, 
            "\[DifferenceDelta]r(LR-)", $CellContext`yi, 
            "\[DifferenceDelta]r(J)", $CellContext`ed, 
            "\[DifferenceDelta]r(ED)", $CellContext`cz, 
            "\[DifferenceDelta]r(CZ)", $CellContext`tr, 
            "\[DifferenceDelta]r(R)"], $CellContext`df, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[PartialD](Se)/\[PartialD]u", $CellContext`spc, 
            "\[PartialD](Sp)/\[PartialD]u", $CellContext`oda, 
            "\[PartialD](ODA)/\[PartialD]u", $CellContext`ppv, 
            "\[PartialD](PPV)/\[PartialD]u", $CellContext`npv, 
            "\[PartialD](NPV)/\[PartialD]u", $CellContext`dor, 
            "\[PartialD](DOR)/\[PartialD]u", $CellContext`plr, 
            "\[PartialD](LR+)/\[PartialD]u", $CellContext`nlr, 
            "\[PartialD](LR-)/\[PartialD]u", $CellContext`yi, 
            "\[PartialD](J)/\[PartialD]u", $CellContext`ed, 
            "\[PartialD](ED)/\[PartialD]u", $CellContext`cz, 
            "\[PartialD](CZ)/\[PartialD]u", $CellContext`tr, 
            "\[PartialD](R)/\[PartialD]u"], $CellContext`rf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "Se ratio", $CellContext`spc, "Sp ratio", $CellContext`oda, 
            "ODA ratio", $CellContext`ppv, "PPV ratio", $CellContext`npv, 
            "NPV ratio", $CellContext`dor, "DOR ratio", $CellContext`plr, 
            "LR+ ratio", $CellContext`nlr, "LR- ratio", $CellContext`yi, 
            "J ratio", $CellContext`ed, "ED ratio", $CellContext`cz, 
            "CZ ratio", $CellContext`tr, "R ratio"]], $CellContext`txt[
           Pattern[$CellContext`s, 
            Blank[]]] := 
         Switch[$CellContext`s, $CellContext`sns, "Se", $CellContext`spc, 
           "Sp", $CellContext`thr, "d"], $CellContext`deltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`rdeltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := (
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}])/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}], $CellContext`df[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`uu, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := ReplaceAll[
           D[
            $CellContext`m[$CellContext`x, $CellContext`\[Mu]D, $CellContext`\
\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, \
$CellContext`u, $CellContext`l], $CellContext`u], {$CellContext`u -> \
$CellContext`uu}], $CellContext`rf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}]/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`ltxt[
           Pattern[$CellContext`s, 
            Blank[]]] := 
         Switch[$CellContext`s, $CellContext`sns, 
           "sensitivity (Se)", $CellContext`spc, 
           "specificity (Sp)", $CellContext`thr, 
           "diagnostic threshold (d)"], $CellContext`p1[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]], 
           Pattern[$CellContext`s, 
            Blank[]], {
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := Text[
           Labeled[
            Quiet[
             Plot[
              Apply[$CellContext`f, {
                $CellContext`mf[$CellContext`m, $CellContext`s], \
{$CellContext`x, $CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\
\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2, $CellContext`l}}], 
              Switch[$CellContext`s, $CellContext`thr, {$CellContext`x, 
                
                Min[$CellContext`\[Mu]D - 
                 3.5 $CellContext`\[Sigma]D, $CellContext`\[Mu]H - 
                 3.5 $CellContext`\[Sigma]H], 
                
                Max[$CellContext`\[Mu]D + 
                 3.5 $CellContext`\[Sigma]D, $CellContext`\[Mu]H + 
                 3.5 $CellContext`\[Sigma]H]}, 
               Blank[], {$CellContext`x, 0.001, 0.999}], Exclusions -> 
              "Singularities", AspectRatio -> 1, AxesLabel -> {
                $CellContext`txt[$CellContext`s], 
                $CellContext`txt[$CellContext`f, $CellContext`m]}, PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> Placed[{
                 $CellContext`pl[$CellContext`f, $CellContext`m]}, Top], 
              ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`f, $CellContext`m], " versus ", 
             $CellContext`ltxt[$CellContext`s], " curve"], 
            Top]], $CellContext`pl[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`deltaf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test - ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test)"], $CellContext`rdeltaf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test - ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test) / (", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test)"], $CellContext`rf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test / ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test)"]]}; Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    Manipulate`InterpretManipulate[1]]}, {3,"\<\"DAM vs Se and Sp\"\>"->
   TagBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`f$$ = $CellContext`vf, $CellContext`m$$ = \
$CellContext`plr, $CellContext`pd$$ = 0.067, $CellContext`pr$$ = 
      False, $CellContext`rfn$$ = 100, $CellContext`rfp$$ = 
      76, $CellContext`rt$$ = 1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 
      0, $CellContext`u1$$ = 0.023, $CellContext`u2$$ = 
      0.23, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
      0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1, 
      Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
      Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ =
       1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`f$$], $CellContext`vf, "type"}, {$CellContext`vf -> 
         "measures", $CellContext`df -> "derivatives"}}, {{
         Hold[$CellContext`m$$], $CellContext`plr, "plot"}, {$CellContext`oda -> 
         "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
         "positive predictive value (PPV)", $CellContext`npv -> 
         "negative predictive value (NPV)", $CellContext`dor -> 
         "diagnostic odds ratio (DOR)", $CellContext`plr -> 
         "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
         "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
         "Youden's index J", $CellContext`ed -> 
         "Euclidean distance (ED)", $CellContext`cz -> 
         "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}}, {{
         Hold[$CellContext`pr$$], False, "plot range"}, {
        True -> "full", False -> "partial"}}, {
        Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
        Hold[
         Style["prevalence of disease", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`pd$$], 0.067, "v"}, 1.*^-8, 0.99}, {
        Hold[
         Style["nondiseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
        0.01}, {
        Hold[
         Style["diseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6,
         0.01}, {
        Hold[
         Style["standard measurement uncertainty", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`u1$$], 0.023, "first test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`u2$$], 0.23, "second test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`rt$$], 1, "testing"}, 0, 1000, 0.01}, {{
         Hold[$CellContext`rtp$$], 0, "true positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rtn$$], 0, "true negative result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfp$$], 76, "false positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfn$$], 100, "false negative result"}, 0, 1000, 
        0.01}, {
        Hold[
         OpenerView[{
           Style["expected loss", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2], 
             Manipulate`Place[3], 
             Manipulate`Place[4], 
             Manipulate`Place[5]}, Alignment -> Right]}]], 
        Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
      600., {296., 382.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
      Typeset`skipInitDone$$ = False, $CellContext`f$27164$$ = 
      False, $CellContext`m$27165$$ = False, $CellContext`pr$27166$$ = 
      False, $CellContext`pd$27167$$ = 0, $CellContext`\[Mu]H$27168$$ = 
      0, $CellContext`\[Sigma]H$27169$$ = 0, $CellContext`\[Mu]D$27170$$ = 
      0, $CellContext`\[Sigma]D$27171$$ = 0, $CellContext`u1$27172$$ = 
      0, $CellContext`u2$27173$$ = 0, $CellContext`rt$27174$$ = 
      0, $CellContext`rtp$27175$$ = 0, $CellContext`rtn$27176$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       2, StandardForm, 
        "Variables" :> {$CellContext`f$$ = $CellContext`vf, $CellContext`m$$ = \
$CellContext`plr, $CellContext`pd$$ = 0.067, $CellContext`pr$$ = 
          False, $CellContext`rfn$$ = 100, $CellContext`rfp$$ = 
          76, $CellContext`rt$$ = 1, $CellContext`rtn$$ = 
          0, $CellContext`rtp$$ = 0, $CellContext`u1$$ = 
          0.023, $CellContext`u2$$ = 0.23, $CellContext`\[Mu]D$$ = 
          2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
          0.75, $CellContext`\[Sigma]H$$ = 1}, "ControllerVariables" :> {
          Hold[$CellContext`f$$, $CellContext`f$27164$$, False], 
          Hold[$CellContext`m$$, $CellContext`m$27165$$, False], 
          Hold[$CellContext`pr$$, $CellContext`pr$27166$$, False], 
          Hold[$CellContext`pd$$, $CellContext`pd$27167$$, 0], 
          Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27168$$, 0], 
          Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27169$$, 0], 
          Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27170$$, 0], 
          Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27171$$, 0], 
          Hold[$CellContext`u1$$, $CellContext`u1$27172$$, 0], 
          Hold[$CellContext`u2$$, $CellContext`u2$27173$$, 0], 
          Hold[$CellContext`rt$$, $CellContext`rt$27174$$, 0], 
          Hold[$CellContext`rtp$$, $CellContext`rtp$27175$$, 0], 
          Hold[$CellContext`rtn$$, $CellContext`rtn$27176$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`pro[$CellContext`pr$$]; 
         Switch[$CellContext`m$$, $CellContext`tr, 
           Switch[$CellContext`f$$, $CellContext`vf, 
            $CellContext`pp2[$CellContext`vf, $CellContext`tr, {$CellContext`\
\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, $CellContext`\
\[Sigma]H$$, $CellContext`pd$$, $CellContext`u1$$, $CellContext`u2$$, \
{$CellContext`rt$$, $CellContext`rtp$$, $CellContext`rtn$$, \
$CellContext`rfp$$, $CellContext`rfn$$}}], $CellContext`df, 
            $CellContext`pp2[$CellContext`df, $CellContext`tr, {$CellContext`\
\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, $CellContext`\
\[Sigma]H$$, $CellContext`pd$$, $CellContext`u1$$, $CellContext`u2$$, \
{$CellContext`rt$$, $CellContext`rtp$$, $CellContext`rtn$$, \
$CellContext`rfp$$, $CellContext`rfn$$}}]], 
           Blank[], 
           Switch[$CellContext`f$$, $CellContext`vf, 
            $CellContext`pp2[$CellContext`vf, $CellContext`m$$, \
{$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, \
$CellContext`\[Sigma]H$$, $CellContext`pd$$, $CellContext`u1$$, \
$CellContext`u2$$}], $CellContext`df, 
            $CellContext`pp2[$CellContext`df, $CellContext`m$$, \
{$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, \
$CellContext`\[Sigma]H$$, $CellContext`pd$$, $CellContext`u1$$, \
$CellContext`u2$$}]]]), 
        "Specifications" :> {{{$CellContext`f$$, $CellContext`vf, 
            "type"}, {$CellContext`vf -> "measures", $CellContext`df -> 
            "derivatives"}, ControlPlacement -> 
           Left}, {{$CellContext`m$$, $CellContext`plr, 
            "plot"}, {$CellContext`oda -> 
            "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
            "positive predictive value (PPV)", $CellContext`npv -> 
            "negative predictive value (NPV)", $CellContext`dor -> 
            "diagnostic odds ratio (DOR)", $CellContext`plr -> 
            "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
            "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
            "Youden's index J", $CellContext`ed -> 
            "Euclidean distance (ED)", $CellContext`cz -> 
            "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`pr$$, False, "plot range"}, {
           True -> "full", False -> "partial"}, ControlPlacement -> Left}, "", 
          Style[
          "prevalence of disease", Bold], {{$CellContext`pd$$, 0.067, "v"}, 
           1.*^-8, 0.99, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "nondiseased population", 
           Bold], {{$CellContext`\[Mu]H$$, 0, "mean"}, 0, 6, 0.01, ImageSize -> 
           Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "diseased population", 
           Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, 
            "standard deviation"}, 0.01, 6, 0.01, ImageSize -> Tiny, 
           Appearance -> "Labeled"}, Delimiter, 
          Style["standard measurement uncertainty", Bold], 
          Delimiter, {{$CellContext`u1$$, 0.023, "first test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`u2$$, 0.23, "second test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, {{$CellContext`rt$$, 1, "testing"}, 0, 1000, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           1}, {{$CellContext`rtp$$, 0, "true positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           2}, {{$CellContext`rtn$$, 0, "true negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           3}, {{$CellContext`rfp$$, 76, "false positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           4}, {{$CellContext`rfn$$, 100, "false negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           5}, 
          OpenerView[{
            Style["expected loss", Bold], 
            Column[{
              Manipulate`Place[1], 
              Manipulate`Place[2], 
              Manipulate`Place[3], 
              Manipulate`Place[4], 
              Manipulate`Place[5]}, Alignment -> Right]}], Delimiter}, 
        "Options" :> {TrackedSymbols -> True, ControlPlacement -> Left}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{1190., {380., 389.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`pro[
           Pattern[$CellContext`pr, 
            Blank[]]] := 
         Switch[$CellContext`pr, True, SetOptions[Plot, PlotRange -> Full]; 
           SetOptions[Plot3D, PlotRange -> Full]; 
           SetOptions[ContourPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot3D, PlotRange -> Full], False, 
           SetOptions[Plot, PlotRange -> Automatic]; 
           SetOptions[Plot3D, PlotRange -> Automatic]; 
           SetOptions[ContourPlot, PlotRange -> Automatic]; 
           SetOptions[ParametricPlot, PlotRange -> Automatic]; 
           SetOptions[
            ParametricPlot3D, PlotRange -> Automatic]], $CellContext`tr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp + $CellContext`rt + \
$CellContext`pd ($CellContext`rfn - $CellContext`rfp - $CellContext`rfn \
$CellContext`sn + $CellContext`rtp $CellContext`sn) + (((1/
              2) (-1 + $CellContext`pd)) ($CellContext`rfp - \
$CellContext`rtn)) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`vf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u, $CellContext`l}], $CellContext`pp2[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := Text[
           Labeled[
            Quiet[
             ParametricPlot3D[{{$CellContext`x, 
                $CellContext`spec[$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1], 
                Switch[$CellContext`m, $CellContext`tr, 
                 
                 Apply[$CellContext`f, {$CellContext`tr, {$CellContext`x, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, $CellContext`l}}], 
                 Blank[], 
                 Apply[$CellContext`f, {
                   $CellContext`mf[$CellContext`m, $CellContext`sns], \
{$CellContext`x, $CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\
\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1}}]]}, \
{$CellContext`x, 
                $CellContext`spec[$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2], 
                Switch[$CellContext`m, $CellContext`tr, 
                 
                 Apply[$CellContext`f, {$CellContext`tr, {$CellContext`x, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u2, $CellContext`l}}], 
                 Blank[], 
                 Apply[$CellContext`f, {
                   $CellContext`mf[$CellContext`m, $CellContext`sns], \
{$CellContext`x, $CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\
\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u2}}]]}}, \
{$CellContext`x, 0.001, 0.999}, Exclusions -> "Singularities", AspectRatio -> 
              1, BoxRatios -> {1, 1, 1}, AxesLabel -> {"Se", "Sp", 
                $CellContext`txt[$CellContext`f, $CellContext`m]}, PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> 
              Placed[{"first test", "second test"}, Top], 
              ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`f, $CellContext`m], 
             " versus sensitivity (Se) and specificity (Sp) curve"], 
            Top]], $CellContext`spec[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`mf[
           Pattern[$CellContext`ma, 
            Blank[]], 
           Pattern[$CellContext`mb, 
            Blank[]]] := Switch[$CellContext`mb, $CellContext`sns, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`oda, \
$CellContext`ppv, $CellContext`ppv, $CellContext`npv, $CellContext`npv, \
$CellContext`dor, $CellContext`dor, $CellContext`plr, $CellContext`plr, \
$CellContext`nlr, $CellContext`nlr, $CellContext`yi, $CellContext`yi, \
$CellContext`ed, $CellContext`ed, $CellContext`cz, $CellContext`cz, \
$CellContext`tr, $CellContext`tr], $CellContext`spc, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`hoda, \
$CellContext`ppv, $CellContext`hppv, $CellContext`npv, $CellContext`hnpv, \
$CellContext`dor, $CellContext`hdor, $CellContext`plr, $CellContext`hplr, \
$CellContext`nlr, $CellContext`hnlr, $CellContext`yi, $CellContext`hyi, \
$CellContext`ed, $CellContext`hed, $CellContext`cz, $CellContext`hcz, \
$CellContext`tr, $CellContext`htr], $CellContext`thr, 
           
           Switch[$CellContext`ma, $CellContext`sns, $CellContext`tsens, \
$CellContext`spc, $CellContext`tspec, $CellContext`oda, $CellContext`toda, \
$CellContext`ppv, $CellContext`tppv, $CellContext`npv, $CellContext`tnpv, \
$CellContext`dor, $CellContext`tdor, $CellContext`plr, $CellContext`tplr, \
$CellContext`nlr, $CellContext`tnlr, $CellContext`yi, $CellContext`tyi, \
$CellContext`ed, $CellContext`ted, $CellContext`cz, $CellContext`tcz, \
$CellContext`tr, $CellContext`ttr]], $CellContext`oda[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd $CellContext`sn - ((1/
            2) (-1 + $CellContext`pd)) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ppv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 $CellContext`pd) $CellContext`sn)/(
          2 + (2 $CellContext`pd) (-1 + $CellContext`sn) + (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`npv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 + ((
             2 $CellContext`pd) (-1 + $CellContext`sn))/((-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`dor[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sn)) $CellContext`sn) (1 + 
           2/(-2 + Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                 Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`plr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (2 $CellContext`sn)/(1 + 
          Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`nlr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -((2 (-1 + $CellContext`sn))/
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`yi[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -1 + $CellContext`sn + (1/2) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ed[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sn)^2 + (1/
             4) (1 + Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                   Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                  InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2], \
$CellContext`cz[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sn) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`hoda[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (
            1 - $CellContext`pd) $CellContext`sp + ((1/2) $CellContext`pd) (1 + 
            Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hppv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1 + ((2 (-1 + $CellContext`pd)) (-1 + $CellContext`sp))/(-2 - (
            2 (-1 + $CellContext`pd)) $CellContext`sp + $CellContext`pd 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hnpv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 (-1 + $CellContext`pd)) $CellContext`sp)/((
            2 (-1 + $CellContext`pd)) $CellContext`sp - $CellContext`pd 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hdor[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sp)) $CellContext`sp) (1 - 2/
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hplr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (-2 + 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
          2 (-1 + $CellContext`sp)), $CellContext`hnlr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/(2 $CellContext`sp)) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hyi[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`sp - (1/2) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hed[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sp)^2 + (1/4) 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                  Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                 InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`hcz[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sp) (1 + 
           Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`htr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp - $CellContext`pd \
$CellContext`rfp + $CellContext`rt + $CellContext`pd $CellContext`rtp + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) $CellContext`sp + (((
              1/2) $CellContext`pd) ($CellContext`rfn - $CellContext`rtp)) 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`tsens[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`tspec[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`toda[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/
           2) ($CellContext`pd + $CellContext`pd 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] - (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tppv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd ((1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
           2 - $CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + (-1 + \
$CellContext`pd) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tnpv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 - ($CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/((-1 + \
$CellContext`pd) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tdor[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((-2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])/(
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] (-2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tplr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tnlr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]/
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`tyi[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (-1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`ted[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Sqrt[(1 + Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`tcz[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/4) (1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ttr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             Blank[]]}] := (1/2) (
           2 ($CellContext`rfp + $CellContext`rt) + $CellContext`pd \
($CellContext`rfn - 
             2 $CellContext`rfp + $CellContext`rtp) + ($CellContext`pd \
(-$CellContext`rfn + $CellContext`rtp)) 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`txt[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`vf, 
           
           Switch[$CellContext`m, $CellContext`sns, "Se", $CellContext`spc, 
            "Sp", $CellContext`csens, "CSens", $CellContext`cspec, 
            "CSpec", $CellContext`oda, "ODA", $CellContext`ppv, 
            "PPV", $CellContext`npv, "NPV", $CellContext`dor, 
            "DOR", $CellContext`plr, "LR+", $CellContext`nlr, 
            "LR-", $CellContext`yi, "J", $CellContext`ed, 
            "ED", $CellContext`cz, "CZ", $CellContext`tr, 
            "R"], $CellContext`deltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]Se", $CellContext`spc, 
            "\[DifferenceDelta]Sp", $CellContext`oda, 
            "\[DifferenceDelta]ODA", $CellContext`ppv, 
            "\[DifferenceDelta]PPV", $CellContext`npv, 
            "\[DifferenceDelta]NPV", $CellContext`dor, 
            "\[DifferenceDelta]DOR", $CellContext`plr, 
            "\[DifferenceDelta]LR+", $CellContext`nlr, 
            "\[DifferenceDelta]LR-", $CellContext`yi, 
            "\[DifferenceDelta]J", $CellContext`ed, 
            "\[DifferenceDelta]ED", $CellContext`cz, 
            "\[DifferenceDelta]CZ", $CellContext`tr, 
            "\[DifferenceDelta]R"], $CellContext`rdeltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]r(Se)", $CellContext`spc, 
            "\[DifferenceDelta]r(Sp)", $CellContext`oda, 
            "\[DifferenceDelta]r(ODA)", $CellContext`ppv, 
            "\[DifferenceDelta]r(PPV)", $CellContext`npv, 
            "\[DifferenceDelta]r(NPV)", $CellContext`dor, 
            "\[DifferenceDelta]r(DOR)", $CellContext`plr, 
            "\[DifferenceDelta]r(LR+)", $CellContext`nlr, 
            "\[DifferenceDelta]r(LR-)", $CellContext`yi, 
            "\[DifferenceDelta]r(J)", $CellContext`ed, 
            "\[DifferenceDelta]r(ED)", $CellContext`cz, 
            "\[DifferenceDelta]r(CZ)", $CellContext`tr, 
            "\[DifferenceDelta]r(R)"], $CellContext`df, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[PartialD](Se)/\[PartialD]u", $CellContext`spc, 
            "\[PartialD](Sp)/\[PartialD]u", $CellContext`oda, 
            "\[PartialD](ODA)/\[PartialD]u", $CellContext`ppv, 
            "\[PartialD](PPV)/\[PartialD]u", $CellContext`npv, 
            "\[PartialD](NPV)/\[PartialD]u", $CellContext`dor, 
            "\[PartialD](DOR)/\[PartialD]u", $CellContext`plr, 
            "\[PartialD](LR+)/\[PartialD]u", $CellContext`nlr, 
            "\[PartialD](LR-)/\[PartialD]u", $CellContext`yi, 
            "\[PartialD](J)/\[PartialD]u", $CellContext`ed, 
            "\[PartialD](ED)/\[PartialD]u", $CellContext`cz, 
            "\[PartialD](CZ)/\[PartialD]u", $CellContext`tr, 
            "\[PartialD](R)/\[PartialD]u"], $CellContext`rf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "Se ratio", $CellContext`spc, "Sp ratio", $CellContext`oda, 
            "ODA ratio", $CellContext`ppv, "PPV ratio", $CellContext`npv, 
            "NPV ratio", $CellContext`dor, "DOR ratio", $CellContext`plr, 
            "LR+ ratio", $CellContext`nlr, "LR- ratio", $CellContext`yi, 
            "J ratio", $CellContext`ed, "ED ratio", $CellContext`cz, 
            "CZ ratio", $CellContext`tr, "R ratio"]], $CellContext`txt[
           Pattern[$CellContext`s, 
            Blank[]]] := 
         Switch[$CellContext`s, $CellContext`sns, "Se", $CellContext`spc, 
           "Sp", $CellContext`thr, "d"], $CellContext`deltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`rdeltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := (
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}])/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}], $CellContext`df[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`uu, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := ReplaceAll[
           D[
            $CellContext`m[$CellContext`x, $CellContext`\[Mu]D, $CellContext`\
\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, \
$CellContext`u, $CellContext`l], $CellContext`u], {$CellContext`u -> \
$CellContext`uu}], $CellContext`rf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}]/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}]}; 
       Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    Manipulate`InterpretManipulate[1]]}, {4,"\<\"DAM vs threshold\"\>"->
   TagBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`f$$ = $CellContext`rf, $CellContext`m$$ = \
$CellContext`tr, $CellContext`pd$$ = 0.067, $CellContext`pr$$ = 
      False, $CellContext`rfn$$ = 100, $CellContext`rfp$$ = 
      76, $CellContext`rt$$ = 1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 
      0, $CellContext`u1$$ = 0.023, $CellContext`u2$$ = 
      0.23, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
      0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1, 
      Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
      Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ =
       1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`f$$], $CellContext`rf, "type"}, {$CellContext`vf -> 
         "measures", $CellContext`df -> "derivatives", $CellContext`deltaf -> 
         "difference", $CellContext`rdeltaf -> 
         "relative difference", $CellContext`rf -> "ratio"}}, {{
         Hold[$CellContext`m$$], $CellContext`tr, "plot"}, {$CellContext`sns -> 
         "sensitivity", $CellContext`spc -> "specificity", $CellContext`oda -> 
         "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
         "positive predictive value (PPV)", $CellContext`npv -> 
         "negative predictive value (NPV)", $CellContext`dor -> 
         "diagnostic odds ratio (DOR)", $CellContext`plr -> 
         "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
         "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
         "Youden's index J", $CellContext`ed -> 
         "Euclidean distance (ED)", $CellContext`cz -> 
         "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}}, {{
         Hold[$CellContext`pr$$], False, "plot range"}, {
        True -> "full", False -> "partial"}}, {
        Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
        Hold[
         Style["prevalence of disease", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`pd$$], 0.067, "v"}, 1.*^-8, 0.99}, {
        Hold[
         Style["nondiseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
        0.01}, {
        Hold[
         Style["diseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6,
         0.01}, {
        Hold[
         Style["standard measurement uncertainty", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`u1$$], 0.023, "first test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`u2$$], 0.23, "second test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`rt$$], 1, "testing"}, 0, 1000, 0.01}, {{
         Hold[$CellContext`rtp$$], 0, "true positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rtn$$], 0, "true negative result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfp$$], 76, "false positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfn$$], 100, "false negative result"}, 0, 1000, 
        0.01}, {
        Hold[
         OpenerView[{
           Style["expected loss", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2], 
             Manipulate`Place[3], 
             Manipulate`Place[4], 
             Manipulate`Place[5]}, Alignment -> Right]}]], 
        Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
      600., {296., 383.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
      Typeset`skipInitDone$$ = False, $CellContext`f$27220$$ = 
      False, $CellContext`m$27221$$ = False, $CellContext`pr$27222$$ = 
      False, $CellContext`pd$27223$$ = 0, $CellContext`\[Mu]H$27224$$ = 
      0, $CellContext`\[Sigma]H$27225$$ = 0, $CellContext`\[Mu]D$27226$$ = 
      0, $CellContext`\[Sigma]D$27227$$ = 0, $CellContext`u1$27228$$ = 
      0, $CellContext`u2$27229$$ = 0, $CellContext`rt$27230$$ = 
      0, $CellContext`rtp$27231$$ = 0, $CellContext`rtn$27232$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       2, StandardForm, 
        "Variables" :> {$CellContext`f$$ = $CellContext`rf, $CellContext`m$$ = \
$CellContext`tr, $CellContext`pd$$ = 0.067, $CellContext`pr$$ = 
          False, $CellContext`rfn$$ = 100, $CellContext`rfp$$ = 
          76, $CellContext`rt$$ = 1, $CellContext`rtn$$ = 
          0, $CellContext`rtp$$ = 0, $CellContext`u1$$ = 
          0.023, $CellContext`u2$$ = 0.23, $CellContext`\[Mu]D$$ = 
          2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
          0.75, $CellContext`\[Sigma]H$$ = 1}, "ControllerVariables" :> {
          Hold[$CellContext`f$$, $CellContext`f$27220$$, False], 
          Hold[$CellContext`m$$, $CellContext`m$27221$$, False], 
          Hold[$CellContext`pr$$, $CellContext`pr$27222$$, False], 
          Hold[$CellContext`pd$$, $CellContext`pd$27223$$, 0], 
          Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27224$$, 0], 
          Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27225$$, 0], 
          Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27226$$, 0], 
          Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27227$$, 0], 
          Hold[$CellContext`u1$$, $CellContext`u1$27228$$, 0], 
          Hold[$CellContext`u2$$, $CellContext`u2$27229$$, 0], 
          Hold[$CellContext`rt$$, $CellContext`rt$27230$$, 0], 
          Hold[$CellContext`rtp$$, $CellContext`rtp$27231$$, 0], 
          Hold[$CellContext`rtn$$, $CellContext`rtn$27232$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`pro[$CellContext`pr$$]; 
         Switch[$CellContext`m$$, $CellContext`tr, 
           Switch[$CellContext`f$$, $CellContext`vf, 
            $CellContext`p2[$CellContext`vf, $CellContext`tr, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`df, 
            $CellContext`p2[$CellContext`df, $CellContext`tr, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`deltaf, 
            $CellContext`p1[$CellContext`deltaf, $CellContext`tr, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`rdeltaf, 
            $CellContext`p1[$CellContext`rdeltaf, $CellContext`tr, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`rf, 
            $CellContext`p1[$CellContext`rf, $CellContext`tr, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}]], 
           Blank[], 
           Switch[$CellContext`f$$, $CellContext`vf, 
            $CellContext`p2[$CellContext`vf, $CellContext`m$$, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}], $CellContext`df, 
            $CellContext`p2[$CellContext`df, $CellContext`m$$, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}], $CellContext`deltaf, 
            $CellContext`p1[$CellContext`deltaf, $CellContext`m$$, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}], $CellContext`rdeltaf, 
            $CellContext`p1[$CellContext`rdeltaf, $CellContext`m$$, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}], $CellContext`rf, 
            $CellContext`p1[$CellContext`rf, $CellContext`m$$, \
$CellContext`thr, {$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`pd$$, \
$CellContext`u1$$, $CellContext`u2$$}]]]), 
        "Specifications" :> {{{$CellContext`f$$, $CellContext`rf, 
            "type"}, {$CellContext`vf -> "measures", $CellContext`df -> 
            "derivatives", $CellContext`deltaf -> 
            "difference", $CellContext`rdeltaf -> 
            "relative difference", $CellContext`rf -> "ratio"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`m$$, $CellContext`tr, 
            "plot"}, {$CellContext`sns -> "sensitivity", $CellContext`spc -> 
            "specificity", $CellContext`oda -> 
            "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
            "positive predictive value (PPV)", $CellContext`npv -> 
            "negative predictive value (NPV)", $CellContext`dor -> 
            "diagnostic odds ratio (DOR)", $CellContext`plr -> 
            "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
            "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
            "Youden's index J", $CellContext`ed -> 
            "Euclidean distance (ED)", $CellContext`cz -> 
            "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`pr$$, False, "plot range"}, {
           True -> "full", False -> "partial"}, ControlPlacement -> Left}, "", 
          Style[
          "prevalence of disease", Bold], {{$CellContext`pd$$, 0.067, "v"}, 
           1.*^-8, 0.99, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "nondiseased population", 
           Bold], {{$CellContext`\[Mu]H$$, 0, "mean"}, 0, 6, 0.01, ImageSize -> 
           Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "diseased population", 
           Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, 
            "standard deviation"}, 0.01, 6, 0.01, ImageSize -> Tiny, 
           Appearance -> "Labeled"}, Delimiter, 
          Style["standard measurement uncertainty", Bold], 
          Delimiter, {{$CellContext`u1$$, 0.023, "first test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`u2$$, 0.23, "second test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, {{$CellContext`rt$$, 1, "testing"}, 0, 1000, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           1}, {{$CellContext`rtp$$, 0, "true positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           2}, {{$CellContext`rtn$$, 0, "true negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           3}, {{$CellContext`rfp$$, 76, "false positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           4}, {{$CellContext`rfn$$, 100, "false negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           5}, 
          OpenerView[{
            Style["expected loss", Bold], 
            Column[{
              Manipulate`Place[1], 
              Manipulate`Place[2], 
              Manipulate`Place[3], 
              Manipulate`Place[4], 
              Manipulate`Place[5]}, Alignment -> Right]}], Delimiter}, 
        "Options" :> {TrackedSymbols -> True, ControlPlacement -> Left}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{1282., {380., 389.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`pro[
           Pattern[$CellContext`pr, 
            Blank[]]] := 
         Switch[$CellContext`pr, True, SetOptions[Plot, PlotRange -> Full]; 
           SetOptions[Plot3D, PlotRange -> Full]; 
           SetOptions[ContourPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot3D, PlotRange -> Full], False, 
           SetOptions[Plot, PlotRange -> Automatic]; 
           SetOptions[Plot3D, PlotRange -> Automatic]; 
           SetOptions[ContourPlot, PlotRange -> Automatic]; 
           SetOptions[ParametricPlot, PlotRange -> Automatic]; 
           SetOptions[
            ParametricPlot3D, PlotRange -> Automatic]], $CellContext`tr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp + $CellContext`rt + \
$CellContext`pd ($CellContext`rfn - $CellContext`rfp - $CellContext`rfn \
$CellContext`sn + $CellContext`rtp $CellContext`sn) + (((1/
              2) (-1 + $CellContext`pd)) ($CellContext`rfp - \
$CellContext`rtn)) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`vf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u, $CellContext`l}], $CellContext`p2[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]], 
           Pattern[$CellContext`s, 
            Blank[]], {
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := Text[
           Labeled[
            Quiet[
             Plot[{
               Apply[$CellContext`f, {
                 $CellContext`mf[$CellContext`m, $CellContext`s], \
{$CellContext`x, $CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\
\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`l}}], 
               Apply[$CellContext`f, {
                 $CellContext`mf[$CellContext`m, $CellContext`s], \
{$CellContext`x, $CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\
\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u2, \
$CellContext`l}}]}, 
              Switch[$CellContext`s, $CellContext`thr, {$CellContext`x, 
                
                Min[$CellContext`\[Mu]D - 
                 3.5 $CellContext`\[Sigma]D, $CellContext`\[Mu]H - 
                 3.5 $CellContext`\[Sigma]H], 
                
                Max[$CellContext`\[Mu]D + 
                 3.5 $CellContext`\[Sigma]D, $CellContext`\[Mu]H + 
                 3.5 $CellContext`\[Sigma]H]}, 
               Blank[], {$CellContext`x, 0.001, 0.999}], Exclusions -> 
              "Singularities", AspectRatio -> 1, AxesLabel -> {
                $CellContext`txt[$CellContext`s], 
                $CellContext`txt[$CellContext`f, $CellContext`m]}, PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> 
              Placed[{"first test", "second test"}, Top], 
              ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`f, $CellContext`m], " versus ", 
             $CellContext`ltxt[$CellContext`s], " curve"], 
            Top]], $CellContext`mf[
           Pattern[$CellContext`ma, 
            Blank[]], 
           Pattern[$CellContext`mb, 
            Blank[]]] := Switch[$CellContext`mb, $CellContext`sns, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`oda, \
$CellContext`ppv, $CellContext`ppv, $CellContext`npv, $CellContext`npv, \
$CellContext`dor, $CellContext`dor, $CellContext`plr, $CellContext`plr, \
$CellContext`nlr, $CellContext`nlr, $CellContext`yi, $CellContext`yi, \
$CellContext`ed, $CellContext`ed, $CellContext`cz, $CellContext`cz, \
$CellContext`tr, $CellContext`tr], $CellContext`spc, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`hoda, \
$CellContext`ppv, $CellContext`hppv, $CellContext`npv, $CellContext`hnpv, \
$CellContext`dor, $CellContext`hdor, $CellContext`plr, $CellContext`hplr, \
$CellContext`nlr, $CellContext`hnlr, $CellContext`yi, $CellContext`hyi, \
$CellContext`ed, $CellContext`hed, $CellContext`cz, $CellContext`hcz, \
$CellContext`tr, $CellContext`htr], $CellContext`thr, 
           
           Switch[$CellContext`ma, $CellContext`sns, $CellContext`tsens, \
$CellContext`spc, $CellContext`tspec, $CellContext`oda, $CellContext`toda, \
$CellContext`ppv, $CellContext`tppv, $CellContext`npv, $CellContext`tnpv, \
$CellContext`dor, $CellContext`tdor, $CellContext`plr, $CellContext`tplr, \
$CellContext`nlr, $CellContext`tnlr, $CellContext`yi, $CellContext`tyi, \
$CellContext`ed, $CellContext`ted, $CellContext`cz, $CellContext`tcz, \
$CellContext`tr, $CellContext`ttr]], $CellContext`oda[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd $CellContext`sn - ((1/
            2) (-1 + $CellContext`pd)) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ppv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 $CellContext`pd) $CellContext`sn)/(
          2 + (2 $CellContext`pd) (-1 + $CellContext`sn) + (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`npv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 + ((
             2 $CellContext`pd) (-1 + $CellContext`sn))/((-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`dor[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sn)) $CellContext`sn) (1 + 
           2/(-2 + Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                 Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`plr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (2 $CellContext`sn)/(1 + 
          Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`nlr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -((2 (-1 + $CellContext`sn))/
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`yi[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -1 + $CellContext`sn + (1/2) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ed[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sn)^2 + (1/
             4) (1 + 
              Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                   Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                  InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2], \
$CellContext`cz[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sn) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`hoda[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (
            1 - $CellContext`pd) $CellContext`sp + ((1/2) $CellContext`pd) (1 + 
            Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hppv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1 + ((2 (-1 + $CellContext`pd)) (-1 + $CellContext`sp))/(-2 - (
            2 (-1 + $CellContext`pd)) $CellContext`sp + $CellContext`pd 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hnpv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 (-1 + $CellContext`pd)) $CellContext`sp)/((
            2 (-1 + $CellContext`pd)) $CellContext`sp - $CellContext`pd 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hdor[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sp)) $CellContext`sp) (1 - 2/
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hplr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (-2 + 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
          2 (-1 + $CellContext`sp)), $CellContext`hnlr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/(2 $CellContext`sp)) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hyi[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`sp - (1/2) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hed[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sp)^2 + (1/4) 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                  Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                 InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`hcz[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sp) (1 + 
           Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`htr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp - $CellContext`pd \
$CellContext`rfp + $CellContext`rt + $CellContext`pd $CellContext`rtp + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) $CellContext`sp + (((
              1/2) $CellContext`pd) ($CellContext`rfn - $CellContext`rtp)) 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`tsens[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`tspec[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`toda[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/
           2) ($CellContext`pd + $CellContext`pd 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] - (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tppv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd ((1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
           2 - $CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + (-1 + \
$CellContext`pd) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tnpv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 - ($CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/((-1 + \
$CellContext`pd) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tdor[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((-2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])/(
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] (-2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tplr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tnlr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]/
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`tyi[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (-1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`ted[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Sqrt[(1 + Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`tcz[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/4) (1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ttr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             Blank[]]}] := (1/2) (
           2 ($CellContext`rfp + $CellContext`rt) + $CellContext`pd \
($CellContext`rfn - 
             2 $CellContext`rfp + $CellContext`rtp) + ($CellContext`pd \
(-$CellContext`rfn + $CellContext`rtp)) 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`txt[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`vf, 
           
           Switch[$CellContext`m, $CellContext`sns, "Se", $CellContext`spc, 
            "Sp", $CellContext`csens, "CSens", $CellContext`cspec, 
            "CSpec", $CellContext`oda, "ODA", $CellContext`ppv, 
            "PPV", $CellContext`npv, "NPV", $CellContext`dor, 
            "DOR", $CellContext`plr, "LR+", $CellContext`nlr, 
            "LR-", $CellContext`yi, "J", $CellContext`ed, 
            "ED", $CellContext`cz, "CZ", $CellContext`tr, 
            "R"], $CellContext`deltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]Se", $CellContext`spc, 
            "\[DifferenceDelta]Sp", $CellContext`oda, 
            "\[DifferenceDelta]ODA", $CellContext`ppv, 
            "\[DifferenceDelta]PPV", $CellContext`npv, 
            "\[DifferenceDelta]NPV", $CellContext`dor, 
            "\[DifferenceDelta]DOR", $CellContext`plr, 
            "\[DifferenceDelta]LR+", $CellContext`nlr, 
            "\[DifferenceDelta]LR-", $CellContext`yi, 
            "\[DifferenceDelta]J", $CellContext`ed, 
            "\[DifferenceDelta]ED", $CellContext`cz, 
            "\[DifferenceDelta]CZ", $CellContext`tr, 
            "\[DifferenceDelta]R"], $CellContext`rdeltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]r(Se)", $CellContext`spc, 
            "\[DifferenceDelta]r(Sp)", $CellContext`oda, 
            "\[DifferenceDelta]r(ODA)", $CellContext`ppv, 
            "\[DifferenceDelta]r(PPV)", $CellContext`npv, 
            "\[DifferenceDelta]r(NPV)", $CellContext`dor, 
            "\[DifferenceDelta]r(DOR)", $CellContext`plr, 
            "\[DifferenceDelta]r(LR+)", $CellContext`nlr, 
            "\[DifferenceDelta]r(LR-)", $CellContext`yi, 
            "\[DifferenceDelta]r(J)", $CellContext`ed, 
            "\[DifferenceDelta]r(ED)", $CellContext`cz, 
            "\[DifferenceDelta]r(CZ)", $CellContext`tr, 
            "\[DifferenceDelta]r(R)"], $CellContext`df, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[PartialD](Se)/\[PartialD]u", $CellContext`spc, 
            "\[PartialD](Sp)/\[PartialD]u", $CellContext`oda, 
            "\[PartialD](ODA)/\[PartialD]u", $CellContext`ppv, 
            "\[PartialD](PPV)/\[PartialD]u", $CellContext`npv, 
            "\[PartialD](NPV)/\[PartialD]u", $CellContext`dor, 
            "\[PartialD](DOR)/\[PartialD]u", $CellContext`plr, 
            "\[PartialD](LR+)/\[PartialD]u", $CellContext`nlr, 
            "\[PartialD](LR-)/\[PartialD]u", $CellContext`yi, 
            "\[PartialD](J)/\[PartialD]u", $CellContext`ed, 
            "\[PartialD](ED)/\[PartialD]u", $CellContext`cz, 
            "\[PartialD](CZ)/\[PartialD]u", $CellContext`tr, 
            "\[PartialD](R)/\[PartialD]u"], $CellContext`rf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "Se ratio", $CellContext`spc, "Sp ratio", $CellContext`oda, 
            "ODA ratio", $CellContext`ppv, "PPV ratio", $CellContext`npv, 
            "NPV ratio", $CellContext`dor, "DOR ratio", $CellContext`plr, 
            "LR+ ratio", $CellContext`nlr, "LR- ratio", $CellContext`yi, 
            "J ratio", $CellContext`ed, "ED ratio", $CellContext`cz, 
            "CZ ratio", $CellContext`tr, "R ratio"]], $CellContext`txt[
           Pattern[$CellContext`s, 
            Blank[]]] := 
         Switch[$CellContext`s, $CellContext`sns, "Se", $CellContext`spc, 
           "Sp", $CellContext`thr, "d"], $CellContext`deltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`rdeltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := (
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}])/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}], $CellContext`df[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`uu, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := ReplaceAll[
           D[
            $CellContext`m[$CellContext`x, $CellContext`\[Mu]D, $CellContext`\
\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, \
$CellContext`u, $CellContext`l], $CellContext`u], {$CellContext`u -> \
$CellContext`uu}], $CellContext`rf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}]/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`ltxt[
           Pattern[$CellContext`s, 
            Blank[]]] := 
         Switch[$CellContext`s, $CellContext`sns, 
           "sensitivity (Se)", $CellContext`spc, 
           "specificity (Sp)", $CellContext`thr, 
           "diagnostic threshold (d)"], $CellContext`p1[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]], 
           Pattern[$CellContext`s, 
            Blank[]], {
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := Text[
           Labeled[
            Quiet[
             Plot[
              Apply[$CellContext`f, {
                $CellContext`mf[$CellContext`m, $CellContext`s], \
{$CellContext`x, $CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\
\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2, $CellContext`l}}], 
              Switch[$CellContext`s, $CellContext`thr, {$CellContext`x, 
                
                Min[$CellContext`\[Mu]D - 
                 3.5 $CellContext`\[Sigma]D, $CellContext`\[Mu]H - 
                 3.5 $CellContext`\[Sigma]H], 
                
                Max[$CellContext`\[Mu]D + 
                 3.5 $CellContext`\[Sigma]D, $CellContext`\[Mu]H + 
                 3.5 $CellContext`\[Sigma]H]}, 
               Blank[], {$CellContext`x, 0.001, 0.999}], Exclusions -> 
              "Singularities", AspectRatio -> 1, AxesLabel -> {
                $CellContext`txt[$CellContext`s], 
                $CellContext`txt[$CellContext`f, $CellContext`m]}, PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> Placed[{
                 $CellContext`pl[$CellContext`f, $CellContext`m]}, Top], 
              ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`f, $CellContext`m], " versus ", 
             $CellContext`ltxt[$CellContext`s], " curve"], 
            Top]], $CellContext`pl[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`deltaf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test - ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test)"], $CellContext`rdeltaf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test - ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test) / (", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test)"], $CellContext`rf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test / ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test)"]]}; Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    Manipulate`InterpretManipulate[1]]}, {5,"\<\"DAM vs prevalence\"\>"->
   TagBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`f$$ = $CellContext`rf, $CellContext`m$$ = \
$CellContext`npv, $CellContext`pr$$ = True, $CellContext`rfn$$ = 
      100, $CellContext`rfp$$ = 76, $CellContext`rt$$ = 
      1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 0, $CellContext`u1$$ = 
      0.023, $CellContext`u2$$ = 0.23, $CellContext`x$$ = 
      2.26, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
      0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1, 
      Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
      Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ =
       1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`f$$], $CellContext`rf, "type"}, {$CellContext`vf -> 
         "measures", $CellContext`df -> "derivatives", $CellContext`deltaf -> 
         "difference", $CellContext`rdeltaf -> 
         "relative difference", $CellContext`rf -> "ratio"}}, {{
         Hold[$CellContext`m$$], $CellContext`npv, "plot"}, {$CellContext`oda -> 
         "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
         "positive predictive value (PPV)", $CellContext`npv -> 
         "negative predictive value (NPV)", $CellContext`tr -> "risk (R)"}}, {{
         Hold[$CellContext`pr$$], True, "plot range"}, {
        True -> "full", False -> "partial"}}, {
        Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
        Hold[
         Style["nondiseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
        0.01}, {
        Hold[
         Style["diseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6,
         0.01}, {
        Hold[
         Style["diagnostic threshold", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`x$$], 2.26, "d"}, 
        Dynamic[((-5) Max[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$])
           Max[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$]], 
        Dynamic[
        Max[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$] + 
         5 Max[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$]], 0.01}, {
        Hold[
         Style["standard measurement uncertainty", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`u1$$], 0.023, "first test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`u2$$], 0.23, "second test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`rt$$], 1, "testing"}, 0, 1000, 0.01}, {{
         Hold[$CellContext`rtp$$], 0, "true positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rtn$$], 0, "true negative result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfp$$], 76, "false positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfn$$], 100, "false negative result"}, 0, 1000, 
        0.01}, {
        Hold[
         OpenerView[{
           Style["expected loss", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2], 
             Manipulate`Place[3], 
             Manipulate`Place[4], 
             Manipulate`Place[5]}, Alignment -> Right]}]], 
        Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
      600., {296., 383.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
      Typeset`skipInitDone$$ = False, $CellContext`f$27276$$ = 
      False, $CellContext`m$27277$$ = False, $CellContext`pr$27278$$ = 
      False, $CellContext`\[Mu]H$27279$$ = 0, $CellContext`\[Sigma]H$27280$$ =
       0, $CellContext`\[Mu]D$27281$$ = 0, $CellContext`\[Sigma]D$27282$$ = 
      0, $CellContext`x$27283$$ = 0, $CellContext`u1$27284$$ = 
      0, $CellContext`u2$27285$$ = 0, $CellContext`rt$27286$$ = 
      0, $CellContext`rtp$27287$$ = 0, $CellContext`rtn$27288$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       2, StandardForm, 
        "Variables" :> {$CellContext`f$$ = $CellContext`rf, $CellContext`m$$ = \
$CellContext`npv, $CellContext`pr$$ = True, $CellContext`rfn$$ = 
          100, $CellContext`rfp$$ = 76, $CellContext`rt$$ = 
          1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 
          0, $CellContext`u1$$ = 0.023, $CellContext`u2$$ = 
          0.23, $CellContext`x$$ = 2.26, $CellContext`\[Mu]D$$ = 
          2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
          0.75, $CellContext`\[Sigma]H$$ = 1}, "ControllerVariables" :> {
          Hold[$CellContext`f$$, $CellContext`f$27276$$, False], 
          Hold[$CellContext`m$$, $CellContext`m$27277$$, False], 
          Hold[$CellContext`pr$$, $CellContext`pr$27278$$, False], 
          Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27279$$, 0], 
          Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27280$$, 0], 
          Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27281$$, 0], 
          Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27282$$, 0], 
          Hold[$CellContext`x$$, $CellContext`x$27283$$, 0], 
          Hold[$CellContext`u1$$, $CellContext`u1$27284$$, 0], 
          Hold[$CellContext`u2$$, $CellContext`u2$27285$$, 0], 
          Hold[$CellContext`rt$$, $CellContext`rt$27286$$, 0], 
          Hold[$CellContext`rtp$$, $CellContext`rtp$27287$$, 0], 
          Hold[$CellContext`rtn$$, $CellContext`rtn$27288$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`pro[$CellContext`pr$$]; 
         Switch[$CellContext`m$$, $CellContext`tr, 
           Switch[$CellContext`f$$, $CellContext`vf, 
            $CellContext`ppd2[$CellContext`vf, $CellContext`tr, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`df, 
            $CellContext`ppd2[$CellContext`df, $CellContext`tr, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`deltaf, 
            $CellContext`ppd1[$CellContext`deltaf, $CellContext`tr, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`rdeltaf, 
            $CellContext`ppd1[$CellContext`rdeltaf, $CellContext`tr, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}], \
$CellContext`rf, 
            $CellContext`ppd1[$CellContext`rf, $CellContext`tr, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}]], 
           Blank[], 
           Switch[$CellContext`f$$, $CellContext`vf, 
            $CellContext`ppd2[$CellContext`vf, $CellContext`m$$, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$}], $CellContext`df, 
            $CellContext`ppd2[$CellContext`df, $CellContext`m$$, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$}], $CellContext`deltaf, 
            $CellContext`ppd1[$CellContext`deltaf, $CellContext`m$$, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$}], $CellContext`rdeltaf, 
            $CellContext`ppd1[$CellContext`rdeltaf, $CellContext`m$$, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$}], $CellContext`rf, 
            $CellContext`ppd1[$CellContext`rf, $CellContext`m$$, \
{$CellContext`x$$, $CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, \
$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, $CellContext`u1$$, \
$CellContext`u2$$}]]]), 
        "Specifications" :> {{{$CellContext`f$$, $CellContext`rf, 
            "type"}, {$CellContext`vf -> "measures", $CellContext`df -> 
            "derivatives", $CellContext`deltaf -> 
            "difference", $CellContext`rdeltaf -> 
            "relative difference", $CellContext`rf -> "ratio"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`m$$, $CellContext`npv, 
            "plot"}, {$CellContext`oda -> 
            "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
            "positive predictive value (PPV)", $CellContext`npv -> 
            "negative predictive value (NPV)", $CellContext`tr -> "risk (R)"},
            ControlType -> PopupMenu, ControlPlacement -> 
           Left}, {{$CellContext`pr$$, True, "plot range"}, {
           True -> "full", False -> "partial"}, ControlPlacement -> Left}, "", 
          Style[
          "nondiseased population", 
           Bold], {{$CellContext`\[Mu]H$$, 0, "mean"}, 0, 6, 0.01, ImageSize -> 
           Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "diseased population", 
           Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, 
            "standard deviation"}, 0.01, 6, 0.01, ImageSize -> Tiny, 
           Appearance -> "Labeled"}, Delimiter, 
          Style["diagnostic threshold", Bold], {{$CellContext`x$$, 2.26, "d"}, 
           
           Dynamic[((-5) 
             Max[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$]) 
            Max[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$]], 
           Dynamic[
           Max[$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$] + 
            5 Max[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$]], 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled"}, Delimiter, 
          Style["standard measurement uncertainty", Bold], 
          Delimiter, {{$CellContext`u1$$, 0.023, "first test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`u2$$, 0.23, "second test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, {{$CellContext`rt$$, 1, "testing"}, 0, 1000, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           1}, {{$CellContext`rtp$$, 0, "true positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           2}, {{$CellContext`rtn$$, 0, "true negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           3}, {{$CellContext`rfp$$, 76, "false positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           4}, {{$CellContext`rfn$$, 100, "false negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           5}, 
          OpenerView[{
            Style["expected loss", Bold], 
            Column[{
              Manipulate`Place[1], 
              Manipulate`Place[2], 
              Manipulate`Place[3], 
              Manipulate`Place[4], 
              Manipulate`Place[5]}, Alignment -> Right]}], Delimiter}, 
        "Options" :> {TrackedSymbols -> True, ControlPlacement -> Left}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{1282., {380., 389.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`pro[
           Pattern[$CellContext`pr, 
            Blank[]]] := 
         Switch[$CellContext`pr, True, SetOptions[Plot, PlotRange -> Full]; 
           SetOptions[Plot3D, PlotRange -> Full]; 
           SetOptions[ContourPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot3D, PlotRange -> Full], False, 
           SetOptions[Plot, PlotRange -> Automatic]; 
           SetOptions[Plot3D, PlotRange -> Automatic]; 
           SetOptions[ContourPlot, PlotRange -> Automatic]; 
           SetOptions[ParametricPlot, PlotRange -> Automatic]; 
           SetOptions[
            ParametricPlot3D, PlotRange -> Automatic]], $CellContext`tr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp + $CellContext`rt + \
$CellContext`pd ($CellContext`rfn - $CellContext`rfp - $CellContext`rfn \
$CellContext`sn + $CellContext`rtp $CellContext`sn) + (((1/
              2) (-1 + $CellContext`pd)) ($CellContext`rfp - \
$CellContext`rtn)) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`vf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u, $CellContext`l}], $CellContext`ppd2[
           Pattern[$CellContext`f$, 
            Blank[]], 
           Pattern[$CellContext`m$, 
            Blank[]], {
            Pattern[$CellContext`t$, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D$, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H$, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D$, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H$, 
             Blank[]], 
            Pattern[$CellContext`u1$, 
             Blank[]], 
            Pattern[$CellContext`u2$, 
             Blank[]], 
            Pattern[$CellContext`l$, 
             BlankNullSequence[List]]}] := Text[
           Labeled[
            Quiet[
             Plot[{
               Switch[$CellContext`m$, $CellContext`tr, 
                
                Apply[$CellContext`f$, {$CellContext`ttr, {$CellContext`t$, \
$CellContext`\[Mu]D$, $CellContext`\[Mu]H$, $CellContext`\[Sigma]D$, \
$CellContext`\[Sigma]H$, $CellContext`x$$, $CellContext`u1$, \
$CellContext`l$}}], 
                Blank[], 
                Apply[$CellContext`f$, {
                  $CellContext`mf[$CellContext`m$, $CellContext`thr], \
{$CellContext`t$, $CellContext`\[Mu]D$, $CellContext`\[Mu]H$, $CellContext`\
\[Sigma]D$, $CellContext`\[Sigma]H$, $CellContext`x$$, $CellContext`u1$}}]], 
               Switch[$CellContext`m$, $CellContext`tr, 
                
                Apply[$CellContext`f$, {$CellContext`ttr, {$CellContext`t$, \
$CellContext`\[Mu]D$, $CellContext`\[Mu]H$, $CellContext`\[Sigma]D$, \
$CellContext`\[Sigma]H$, $CellContext`x$$, $CellContext`u2$, \
$CellContext`l$}}], 
                Blank[], 
                Apply[$CellContext`f$, {
                  $CellContext`mf[$CellContext`m$, $CellContext`thr], \
{$CellContext`t$, $CellContext`\[Mu]D$, $CellContext`\[Mu]H$, $CellContext`\
\[Sigma]D$, $CellContext`\[Sigma]H$, $CellContext`x$$, $CellContext`u2$}}]]}, \
{$CellContext`x$$, 1.*^-8, 0.99999999}, Exclusions -> "Singularities", 
              AspectRatio -> 1, AxesLabel -> {"v", 
                $CellContext`txt[$CellContext`vf, $CellContext`m$]}, 
              PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> 
              Placed[{"first test", "second test"}, Top], 
              ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`vf, $CellContext`m$], " versus ", 
             "prevalence (v) curve"], Top]], $CellContext`ttr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             Blank[]]}] := (1/2) (
           2 ($CellContext`rfp + $CellContext`rt) + $CellContext`pd \
($CellContext`rfn - 
             2 $CellContext`rfp + $CellContext`rtp) + ($CellContext`pd \
(-$CellContext`rfn + $CellContext`rtp)) 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`mf[
           Pattern[$CellContext`ma, 
            Blank[]], 
           Pattern[$CellContext`mb, 
            Blank[]]] := Switch[$CellContext`mb, $CellContext`sns, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`oda, \
$CellContext`ppv, $CellContext`ppv, $CellContext`npv, $CellContext`npv, \
$CellContext`dor, $CellContext`dor, $CellContext`plr, $CellContext`plr, \
$CellContext`nlr, $CellContext`nlr, $CellContext`yi, $CellContext`yi, \
$CellContext`ed, $CellContext`ed, $CellContext`cz, $CellContext`cz, \
$CellContext`tr, $CellContext`tr], $CellContext`spc, 
           
           Switch[$CellContext`ma, $CellContext`oda, $CellContext`hoda, \
$CellContext`ppv, $CellContext`hppv, $CellContext`npv, $CellContext`hnpv, \
$CellContext`dor, $CellContext`hdor, $CellContext`plr, $CellContext`hplr, \
$CellContext`nlr, $CellContext`hnlr, $CellContext`yi, $CellContext`hyi, \
$CellContext`ed, $CellContext`hed, $CellContext`cz, $CellContext`hcz, \
$CellContext`tr, $CellContext`htr], $CellContext`thr, 
           
           Switch[$CellContext`ma, $CellContext`sns, $CellContext`tsens, \
$CellContext`spc, $CellContext`tspec, $CellContext`oda, $CellContext`toda, \
$CellContext`ppv, $CellContext`tppv, $CellContext`npv, $CellContext`tnpv, \
$CellContext`dor, $CellContext`tdor, $CellContext`plr, $CellContext`tplr, \
$CellContext`nlr, $CellContext`tnlr, $CellContext`yi, $CellContext`tyi, \
$CellContext`ed, $CellContext`ted, $CellContext`cz, $CellContext`tcz, \
$CellContext`tr, $CellContext`ttr]], $CellContext`oda[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd $CellContext`sn - ((1/
            2) (-1 + $CellContext`pd)) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ppv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 $CellContext`pd) $CellContext`sn)/(
          2 + (2 $CellContext`pd) (-1 + $CellContext`sn) + (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`npv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 + ((
             2 $CellContext`pd) (-1 + $CellContext`sn))/((-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`dor[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sn)) $CellContext`sn) (1 + 
           2/(-2 + Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                 Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`plr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (2 $CellContext`sn)/(1 + 
          Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`nlr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -((2 (-1 + $CellContext`sn))/
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`yi[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -1 + $CellContext`sn + (1/2) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ed[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sn)^2 + (1/
             4) (1 + Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                   Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                  InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2], \
$CellContext`cz[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sn) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`hoda[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (
            1 - $CellContext`pd) $CellContext`sp + ((1/2) $CellContext`pd) (1 + 
            Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hppv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1 + ((2 (-1 + $CellContext`pd)) (-1 + $CellContext`sp))/(-2 - (
            2 (-1 + $CellContext`pd)) $CellContext`sp + $CellContext`pd 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                 Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hnpv[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 (-1 + $CellContext`pd)) $CellContext`sp)/((
            2 (-1 + $CellContext`pd)) $CellContext`sp - $CellContext`pd 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hdor[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sp)) $CellContext`sp) (1 - 2/
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`hplr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (-2 + 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
          2 (-1 + $CellContext`sp)), $CellContext`hnlr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/(2 $CellContext`sp)) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hyi[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`sp - (1/2) 
          Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
              InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`hed[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sp)^2 + (1/4) 
            Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                  Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
                 InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`hcz[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sp) (1 + 
           Erf[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`htr[
           Pattern[$CellContext`sp, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp - $CellContext`pd \
$CellContext`rfp + $CellContext`rt + $CellContext`pd $CellContext`rtp + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) $CellContext`sp + (((
              1/2) $CellContext`pd) ($CellContext`rfn - $CellContext`rtp)) 
           Erfc[($CellContext`\[Mu]D - $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2]) 
               InverseErfc[2 $CellContext`sp])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])], \
$CellContext`tsens[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`tspec[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`toda[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/
           2) ($CellContext`pd + $CellContext`pd 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] - (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tppv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd ((1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
           2 - $CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + (-1 + \
$CellContext`pd) 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tnpv[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 - ($CellContext`pd 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/((-1 + \
$CellContext`pd) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tdor[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((-2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])/(
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] (-2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tplr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tnlr[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]/
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`tyi[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) (-1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`ted[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (1/2) 
          Sqrt[(1 + Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2 + 
            Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`tcz[
           Pattern[$CellContext`t, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/4) (1 + 
            Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`txt[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`vf, 
           
           Switch[$CellContext`m, $CellContext`sns, "Se", $CellContext`spc, 
            "Sp", $CellContext`csens, "CSens", $CellContext`cspec, 
            "CSpec", $CellContext`oda, "ODA", $CellContext`ppv, 
            "PPV", $CellContext`npv, "NPV", $CellContext`dor, 
            "DOR", $CellContext`plr, "LR+", $CellContext`nlr, 
            "LR-", $CellContext`yi, "J", $CellContext`ed, 
            "ED", $CellContext`cz, "CZ", $CellContext`tr, 
            "R"], $CellContext`deltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]Se", $CellContext`spc, 
            "\[DifferenceDelta]Sp", $CellContext`oda, 
            "\[DifferenceDelta]ODA", $CellContext`ppv, 
            "\[DifferenceDelta]PPV", $CellContext`npv, 
            "\[DifferenceDelta]NPV", $CellContext`dor, 
            "\[DifferenceDelta]DOR", $CellContext`plr, 
            "\[DifferenceDelta]LR+", $CellContext`nlr, 
            "\[DifferenceDelta]LR-", $CellContext`yi, 
            "\[DifferenceDelta]J", $CellContext`ed, 
            "\[DifferenceDelta]ED", $CellContext`cz, 
            "\[DifferenceDelta]CZ", $CellContext`tr, 
            "\[DifferenceDelta]R"], $CellContext`rdeltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]r(Se)", $CellContext`spc, 
            "\[DifferenceDelta]r(Sp)", $CellContext`oda, 
            "\[DifferenceDelta]r(ODA)", $CellContext`ppv, 
            "\[DifferenceDelta]r(PPV)", $CellContext`npv, 
            "\[DifferenceDelta]r(NPV)", $CellContext`dor, 
            "\[DifferenceDelta]r(DOR)", $CellContext`plr, 
            "\[DifferenceDelta]r(LR+)", $CellContext`nlr, 
            "\[DifferenceDelta]r(LR-)", $CellContext`yi, 
            "\[DifferenceDelta]r(J)", $CellContext`ed, 
            "\[DifferenceDelta]r(ED)", $CellContext`cz, 
            "\[DifferenceDelta]r(CZ)", $CellContext`tr, 
            "\[DifferenceDelta]r(R)"], $CellContext`df, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[PartialD](Se)/\[PartialD]u", $CellContext`spc, 
            "\[PartialD](Sp)/\[PartialD]u", $CellContext`oda, 
            "\[PartialD](ODA)/\[PartialD]u", $CellContext`ppv, 
            "\[PartialD](PPV)/\[PartialD]u", $CellContext`npv, 
            "\[PartialD](NPV)/\[PartialD]u", $CellContext`dor, 
            "\[PartialD](DOR)/\[PartialD]u", $CellContext`plr, 
            "\[PartialD](LR+)/\[PartialD]u", $CellContext`nlr, 
            "\[PartialD](LR-)/\[PartialD]u", $CellContext`yi, 
            "\[PartialD](J)/\[PartialD]u", $CellContext`ed, 
            "\[PartialD](ED)/\[PartialD]u", $CellContext`cz, 
            "\[PartialD](CZ)/\[PartialD]u", $CellContext`tr, 
            "\[PartialD](R)/\[PartialD]u"], $CellContext`rf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "Se ratio", $CellContext`spc, "Sp ratio", $CellContext`oda, 
            "ODA ratio", $CellContext`ppv, "PPV ratio", $CellContext`npv, 
            "NPV ratio", $CellContext`dor, "DOR ratio", $CellContext`plr, 
            "LR+ ratio", $CellContext`nlr, "LR- ratio", $CellContext`yi, 
            "J ratio", $CellContext`ed, "ED ratio", $CellContext`cz, 
            "CZ ratio", $CellContext`tr, "R ratio"]], $CellContext`txt[
           Pattern[$CellContext`s, 
            Blank[]]] := 
         Switch[$CellContext`s, $CellContext`sns, "Se", $CellContext`spc, 
           "Sp", $CellContext`thr, "d"], $CellContext`deltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`rdeltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := (
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}])/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}], $CellContext`df[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`uu, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := ReplaceAll[
           D[
            $CellContext`m[$CellContext`x, $CellContext`\[Mu]D, $CellContext`\
\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, \
$CellContext`u, $CellContext`l], $CellContext`u], {$CellContext`u -> \
$CellContext`uu}], $CellContext`rf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}]/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`ppd1[
           Pattern[$CellContext`f$, 
            Blank[]], 
           Pattern[$CellContext`m$, 
            Blank[]], {
            Pattern[$CellContext`t$, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D$, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H$, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D$, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H$, 
             Blank[]], 
            Pattern[$CellContext`u1$, 
             Blank[]], 
            Pattern[$CellContext`u2$, 
             Blank[]], 
            Pattern[$CellContext`l$, 
             BlankNullSequence[List]]}] := Text[
           Labeled[
            Quiet[
             Plot[
              Switch[$CellContext`m$, $CellContext`tr, 
               
               Apply[$CellContext`f$, {$CellContext`ttr, {$CellContext`t$, \
$CellContext`\[Mu]D$, $CellContext`\[Mu]H$, $CellContext`\[Sigma]D$, \
$CellContext`\[Sigma]H$, $CellContext`x$$, $CellContext`u1$, \
$CellContext`u2$, $CellContext`l$}}], 
               Blank[], 
               Apply[$CellContext`f$, {
                 $CellContext`mf[$CellContext`m$, $CellContext`thr], \
{$CellContext`t$, $CellContext`\[Mu]D$, $CellContext`\[Mu]H$, $CellContext`\
\[Sigma]D$, $CellContext`\[Sigma]H$, $CellContext`x$$, $CellContext`u1$, \
$CellContext`u2$}}]], {$CellContext`x$$, 1.*^-8, 0.99999999}, Exclusions -> 
              "Singularities", AspectRatio -> 1, AxesLabel -> {"v", 
                $CellContext`txt[$CellContext`f$, $CellContext`m$]}, 
              PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> Placed[{
                 $CellContext`pl[$CellContext`f$, $CellContext`m$]}, Top], 
              ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`f$, $CellContext`m$], " versus ", 
             "prevalence (v)", " curve"], Top]], $CellContext`pl[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`deltaf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test - ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test)"], $CellContext`rdeltaf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test - ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test) / (", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test)"], $CellContext`rf, 
           StringJoin["(", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the first test / ", 
            $CellContext`txt[$CellContext`vf, $CellContext`m], 
            " of the second test)"]]}; Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    Manipulate`InterpretManipulate[1]]}, {6,"\<\"DAM relations\"\>"->
   TagBox[
    StyleBox[
     DynamicModuleBox[{$CellContext`ma$$ = $CellContext`ppv, \
$CellContext`mb$$ = $CellContext`npv, $CellContext`pd$$ = 
      0.067, $CellContext`pr$$ = False, $CellContext`rfn$$ = 
      100, $CellContext`rfp$$ = 76, $CellContext`rt$$ = 
      1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 0, $CellContext`u1$$ = 
      0.023, $CellContext`u2$$ = 0.23, $CellContext`\[Mu]D$$ = 
      2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
      0.75, $CellContext`\[Sigma]H$$ = 1, Typeset`show$$ = True, 
      Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
      Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
      "\"untitled\"", Typeset`specs$$ = {{{
         Hold[$CellContext`ma$$], $CellContext`ppv, 
         "plot"}, {$CellContext`oda -> 
         "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
         "positive predictive value (PPV)", $CellContext`npv -> 
         "negative predictive value (NPV)", $CellContext`dor -> 
         "diagnostic odds ratio (DOR)", $CellContext`plr -> 
         "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
         "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
         "Youden's index J", $CellContext`ed -> 
         "Euclidean distance (ED)", $CellContext`cz -> 
         "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}}, {{
         Hold[$CellContext`mb$$], $CellContext`npv, 
         "versus"}, {$CellContext`oda -> 
         "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
         "positive predictive value (PPV)", $CellContext`npv -> 
         "negative predictive value (NPV)", $CellContext`dor -> 
         "diagnostic odds ratio (DOR)", $CellContext`plr -> 
         "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
         "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
         "Youden's index J", $CellContext`ed -> 
         "Euclidean distance (ED)", $CellContext`cz -> 
         "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}}, {{
         Hold[$CellContext`pr$$], False, "plot range"}, {
        True -> "full", False -> "partial"}}, {
        Hold[""], Manipulate`Dump`ThisIsNotAControl}, {
        Hold[
         Style["prevalence of disease", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`pd$$], 0.067, "v"}, 1.*^-8, 0.99}, {
        Hold[
         Style["nondiseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
        0.01}, {
        Hold[
         Style["diseased population", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
         Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6,
         0.01}, {
        Hold[
         Style["standard measurement uncertainty", Bold]], 
        Manipulate`Dump`ThisIsNotAControl}, {{
         Hold[$CellContext`u1$$], 0.023, "first test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`u2$$], 0.23, "second test"}, 0, 6, 0.01}, {{
         Hold[$CellContext`rt$$], 1, "testing"}, 0, 1000, 0.01}, {{
         Hold[$CellContext`rtp$$], 0, "true positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rtn$$], 0, "true negative result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfp$$], 76, "false positive result"}, 0, 1000, 
        0.01}, {{
         Hold[$CellContext`rfn$$], 100, "false negative result"}, 0, 1000, 
        0.01}, {
        Hold[
         OpenerView[{
           Style["expected loss", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2], 
             Manipulate`Place[3], 
             Manipulate`Place[4], 
             Manipulate`Place[5]}, Alignment -> Right]}]], 
        Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
      600., {296., 380.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
      Typeset`skipInitDone$$ = False, $CellContext`ma$27332$$ = 
      False, $CellContext`mb$27333$$ = False, $CellContext`pr$27334$$ = 
      False, $CellContext`pd$27335$$ = 0, $CellContext`\[Mu]H$27336$$ = 
      0, $CellContext`\[Sigma]H$27337$$ = 0, $CellContext`\[Mu]D$27338$$ = 
      0, $CellContext`\[Sigma]D$27339$$ = 0, $CellContext`u1$27340$$ = 
      0, $CellContext`u2$27341$$ = 0, $CellContext`rt$27342$$ = 
      0, $CellContext`rtp$27343$$ = 0, $CellContext`rtn$27344$$ = 0}, 
      DynamicBox[Manipulate`ManipulateBoxes[
       2, StandardForm, 
        "Variables" :> {$CellContext`ma$$ = $CellContext`ppv, \
$CellContext`mb$$ = $CellContext`npv, $CellContext`pd$$ = 
          0.067, $CellContext`pr$$ = False, $CellContext`rfn$$ = 
          100, $CellContext`rfp$$ = 76, $CellContext`rt$$ = 
          1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 
          0, $CellContext`u1$$ = 0.023, $CellContext`u2$$ = 
          0.23, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
          0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1}, 
        "ControllerVariables" :> {
          Hold[$CellContext`ma$$, $CellContext`ma$27332$$, False], 
          Hold[$CellContext`mb$$, $CellContext`mb$27333$$, False], 
          Hold[$CellContext`pr$$, $CellContext`pr$27334$$, False], 
          Hold[$CellContext`pd$$, $CellContext`pd$27335$$, 0], 
          Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27336$$, 0], 
          Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27337$$, 0], 
          Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27338$$, 0], 
          Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27339$$, 0], 
          Hold[$CellContext`u1$$, $CellContext`u1$27340$$, 0], 
          Hold[$CellContext`u2$$, $CellContext`u2$27341$$, 0], 
          Hold[$CellContext`rt$$, $CellContext`rt$27342$$, 0], 
          Hold[$CellContext`rtp$$, $CellContext`rtp$27343$$, 0], 
          Hold[$CellContext`rtn$$, $CellContext`rtn$27344$$, 0]}, 
        "OtherVariables" :> {
         Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
          Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
          Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
          Typeset`initDone$$, Typeset`skipInitDone$$}, 
        "Body" :> ($CellContext`pro[$CellContext`pr$$]; \
$CellContext`pp1[$CellContext`ma$$, $CellContext`mb$$, \
{$CellContext`\[Mu]D$$, $CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, \
$CellContext`\[Sigma]H$$, $CellContext`pd$$, $CellContext`u1$$, \
$CellContext`u2$$, {$CellContext`rt$$, $CellContext`rtp$$, \
$CellContext`rtn$$, $CellContext`rfp$$, $CellContext`rfn$$}}]), 
        "Specifications" :> {{{$CellContext`ma$$, $CellContext`ppv, 
            "plot"}, {$CellContext`oda -> 
            "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
            "positive predictive value (PPV)", $CellContext`npv -> 
            "negative predictive value (NPV)", $CellContext`dor -> 
            "diagnostic odds ratio (DOR)", $CellContext`plr -> 
            "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
            "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
            "Youden's index J", $CellContext`ed -> 
            "Euclidean distance (ED)", $CellContext`cz -> 
            "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`mb$$, $CellContext`npv, 
            "versus"}, {$CellContext`oda -> 
            "overall diagnostic accuracy (ODA)", $CellContext`ppv -> 
            "positive predictive value (PPV)", $CellContext`npv -> 
            "negative predictive value (NPV)", $CellContext`dor -> 
            "diagnostic odds ratio (DOR)", $CellContext`plr -> 
            "likelihood ratio for a positive result (LR+)", $CellContext`nlr -> 
            "likelihood ratio for a negative result (LR-)", $CellContext`yi -> 
            "Youden's index J", $CellContext`ed -> 
            "Euclidean distance (ED)", $CellContext`cz -> 
            "concordance probability (CZ)", $CellContext`tr -> "risk (R)"}, 
           ControlPlacement -> 
           Left}, {{$CellContext`pr$$, False, "plot range"}, {
           True -> "full", False -> "partial"}, ControlPlacement -> Left}, "", 
          Style[
          "prevalence of disease", Bold], {{$CellContext`pd$$, 0.067, "v"}, 
           1.*^-8, 0.99, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "nondiseased population", 
           Bold], {{$CellContext`\[Mu]H$$, 0, "mean"}, 0, 6, 0.01, ImageSize -> 
           Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, 
          Style[
          "diseased population", 
           Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, 
            "standard deviation"}, 0.01, 6, 0.01, ImageSize -> Tiny, 
           Appearance -> "Labeled"}, Delimiter, 
          Style["standard measurement uncertainty", Bold], 
          Delimiter, {{$CellContext`u1$$, 0.023, "first test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> 
           "Labeled"}, {{$CellContext`u2$$, 0.23, "second test"}, 0, 6, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled"}, 
          Delimiter, {{$CellContext`rt$$, 1, "testing"}, 0, 1000, 0.01, 
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           1}, {{$CellContext`rtp$$, 0, "true positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           2}, {{$CellContext`rtn$$, 0, "true negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           3}, {{$CellContext`rfp$$, 76, "false positive result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           4}, {{$CellContext`rfn$$, 100, "false negative result"}, 0, 1000, 
           0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
           5}, 
          OpenerView[{
            Style["expected loss", Bold], 
            Column[{
              Manipulate`Place[1], 
              Manipulate`Place[2], 
              Manipulate`Place[3], 
              Manipulate`Place[4], 
              Manipulate`Place[5]}, Alignment -> Right]}], Delimiter}, 
        "Options" :> {TrackedSymbols -> True, ControlPlacement -> Left}, 
        "DefaultOptions" :> {}],
       ImageSizeCache->{1190., {379., 388.}},
       SingleEvaluation->True],
      Deinitialization:>None,
      DynamicModuleValues:>{},
      Initialization:>({$CellContext`pro[
           Pattern[$CellContext`pr, 
            Blank[]]] := 
         Switch[$CellContext`pr, True, SetOptions[Plot, PlotRange -> Full]; 
           SetOptions[Plot3D, PlotRange -> Full]; 
           SetOptions[ContourPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot, PlotRange -> Full]; 
           SetOptions[ParametricPlot3D, PlotRange -> Full], False, 
           SetOptions[Plot, PlotRange -> Automatic]; 
           SetOptions[Plot3D, PlotRange -> Automatic]; 
           SetOptions[ContourPlot, PlotRange -> Automatic]; 
           SetOptions[ParametricPlot, PlotRange -> Automatic]; 
           SetOptions[
            ParametricPlot3D, PlotRange -> Automatic]], $CellContext`pp1[
           Pattern[$CellContext`ma, 
            Blank[]], 
           Pattern[$CellContext`mb, 
            Blank[]], {
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankSequence[List]]}] := Text[
           Labeled[
            Quiet[
             ParametricPlot[{{
                Switch[$CellContext`mb, $CellContext`tr, 
                 
                 Apply[$CellContext`tr, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}], 
                 Blank[], 
                 
                 Apply[$CellContext`mb, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1}]], 
                Switch[$CellContext`ma, $CellContext`tr, 
                 
                 Apply[$CellContext`tr, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}], 
                 Blank[], 
                 
                 Apply[$CellContext`ma, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1}]]}, {
                Switch[$CellContext`mb, $CellContext`tr, 
                 
                 Apply[$CellContext`tr, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], 
                 Blank[], 
                 
                 Apply[$CellContext`mb, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2}]], 
                Switch[$CellContext`ma, $CellContext`tr, 
                 
                 Apply[$CellContext`tr, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], 
                 Blank[], 
                 
                 Apply[$CellContext`ma, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2}]]}}, {$CellContext`x, 0.001, 0.999}, 
              Exclusions -> "Singularities", AspectRatio -> 1, AxesLabel -> {
                $CellContext`txt[$CellContext`vf, $CellContext`mb], 
                $CellContext`txt[$CellContext`vf, $CellContext`ma]}, 
              PlotStyle -> {
                ColorData["HTML", "SlateBlue"], 
                RGBColor[1, 0.47, 0]}, PlotLegends -> 
              Placed[{"first test", "second test"}, Top], 
              ImageSize -> {400, 400}]], 
            StringJoin[
             $CellContext`txt[$CellContext`vf, $CellContext`ma], " versus ", 
             $CellContext`txt[$CellContext`vf, $CellContext`mb], " curve"], 
            Top]], $CellContext`tr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             
             Blank[]]}] := $CellContext`rfp + $CellContext`rt + \
$CellContext`pd ($CellContext`rfn - $CellContext`rfp - $CellContext`rfn \
$CellContext`sn + $CellContext`rtp $CellContext`sn) + (((1/
              2) (-1 + $CellContext`pd)) ($CellContext`rfp - \
$CellContext`rtn)) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`txt[
           Pattern[$CellContext`f, 
            Blank[]], 
           Pattern[$CellContext`m, 
            Blank[]]] := Switch[$CellContext`f, $CellContext`vf, 
           
           Switch[$CellContext`m, $CellContext`sns, "Se", $CellContext`spc, 
            "Sp", $CellContext`csens, "CSens", $CellContext`cspec, 
            "CSpec", $CellContext`oda, "ODA", $CellContext`ppv, 
            "PPV", $CellContext`npv, "NPV", $CellContext`dor, 
            "DOR", $CellContext`plr, "LR+", $CellContext`nlr, 
            "LR-", $CellContext`yi, "J", $CellContext`ed, 
            "ED", $CellContext`cz, "CZ", $CellContext`tr, 
            "R"], $CellContext`deltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]Se", $CellContext`spc, 
            "\[DifferenceDelta]Sp", $CellContext`oda, 
            "\[DifferenceDelta]ODA", $CellContext`ppv, 
            "\[DifferenceDelta]PPV", $CellContext`npv, 
            "\[DifferenceDelta]NPV", $CellContext`dor, 
            "\[DifferenceDelta]DOR", $CellContext`plr, 
            "\[DifferenceDelta]LR+", $CellContext`nlr, 
            "\[DifferenceDelta]LR-", $CellContext`yi, 
            "\[DifferenceDelta]J", $CellContext`ed, 
            "\[DifferenceDelta]ED", $CellContext`cz, 
            "\[DifferenceDelta]CZ", $CellContext`tr, 
            "\[DifferenceDelta]R"], $CellContext`rdeltaf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[DifferenceDelta]r(Se)", $CellContext`spc, 
            "\[DifferenceDelta]r(Sp)", $CellContext`oda, 
            "\[DifferenceDelta]r(ODA)", $CellContext`ppv, 
            "\[DifferenceDelta]r(PPV)", $CellContext`npv, 
            "\[DifferenceDelta]r(NPV)", $CellContext`dor, 
            "\[DifferenceDelta]r(DOR)", $CellContext`plr, 
            "\[DifferenceDelta]r(LR+)", $CellContext`nlr, 
            "\[DifferenceDelta]r(LR-)", $CellContext`yi, 
            "\[DifferenceDelta]r(J)", $CellContext`ed, 
            "\[DifferenceDelta]r(ED)", $CellContext`cz, 
            "\[DifferenceDelta]r(CZ)", $CellContext`tr, 
            "\[DifferenceDelta]r(R)"], $CellContext`df, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "\[PartialD](Se)/\[PartialD]u", $CellContext`spc, 
            "\[PartialD](Sp)/\[PartialD]u", $CellContext`oda, 
            "\[PartialD](ODA)/\[PartialD]u", $CellContext`ppv, 
            "\[PartialD](PPV)/\[PartialD]u", $CellContext`npv, 
            "\[PartialD](NPV)/\[PartialD]u", $CellContext`dor, 
            "\[PartialD](DOR)/\[PartialD]u", $CellContext`plr, 
            "\[PartialD](LR+)/\[PartialD]u", $CellContext`nlr, 
            "\[PartialD](LR-)/\[PartialD]u", $CellContext`yi, 
            "\[PartialD](J)/\[PartialD]u", $CellContext`ed, 
            "\[PartialD](ED)/\[PartialD]u", $CellContext`cz, 
            "\[PartialD](CZ)/\[PartialD]u", $CellContext`tr, 
            "\[PartialD](R)/\[PartialD]u"], $CellContext`rf, 
           
           Switch[$CellContext`m, $CellContext`sns, 
            "Se ratio", $CellContext`spc, "Sp ratio", $CellContext`oda, 
            "ODA ratio", $CellContext`ppv, "PPV ratio", $CellContext`npv, 
            "NPV ratio", $CellContext`dor, "DOR ratio", $CellContext`plr, 
            "LR+ ratio", $CellContext`nlr, "LR- ratio", $CellContext`yi, 
            "J ratio", $CellContext`ed, "ED ratio", $CellContext`cz, 
            "CZ ratio", $CellContext`tr, "R ratio"]], $CellContext`txt[
           Pattern[$CellContext`s, 
            Blank[]]] := 
         Switch[$CellContext`s, $CellContext`sns, "Se", $CellContext`spc, 
           "Sp", $CellContext`thr, "d"], $CellContext`vf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u, $CellContext`l}], $CellContext`oda[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := $CellContext`pd $CellContext`sn - ((1/
            2) (-1 + $CellContext`pd)) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ppv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((2 $CellContext`pd) $CellContext`sn)/(
          2 + (
            2 $CellContext`pd) (-1 + $CellContext`sn) + (-1 + $CellContext`pd)
             Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`npv[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         1/(1 + ((
             2 $CellContext`pd) (-1 + $CellContext`sn))/((-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`dor[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/(-1 + $CellContext`sn)) $CellContext`sn) (1 + 
           2/(-2 + Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                 Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`plr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := (2 $CellContext`sn)/(1 + 
          Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`nlr[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -((2 (-1 + $CellContext`sn))/
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`yi[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := -1 + $CellContext`sn + (1/2) 
           Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
               InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ed[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := 
         Sqrt[(-1 + $CellContext`sn)^2 + (1/
             4) (1 + Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                   Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                  InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
                Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2], \
$CellContext`cz[
           Pattern[$CellContext`sn, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]]] := ((1/2) $CellContext`sn) 
          Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
              InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`deltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}], $CellContext`rdeltaf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := (
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
           Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}])/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}], $CellContext`df[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`uu, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := ReplaceAll[
           D[
            $CellContext`m[$CellContext`x, $CellContext`\[Mu]D, $CellContext`\
\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, $CellContext`pd, \
$CellContext`u, $CellContext`l], $CellContext`u], {$CellContext`u -> \
$CellContext`uu}], $CellContext`rf[
           Pattern[$CellContext`m, 
            Blank[]], {
            Pattern[$CellContext`x, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]D, 
             Blank[]], 
            Pattern[$CellContext`\[Mu]H, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]D, 
             Blank[]], 
            Pattern[$CellContext`\[Sigma]H, 
             Blank[]], 
            Pattern[$CellContext`pd, 
             Blank[]], 
            Pattern[$CellContext`u1, 
             Blank[]], 
            Pattern[$CellContext`u2, 
             Blank[]], 
            Pattern[$CellContext`l, 
             BlankNullSequence[List]]}] := 
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}]/
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}]}; 
       Typeset`initDone$$ = True),
      SynchronousInitialization->True,
      UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
      UnsavedVariables:>{Typeset`initDone$$},
      UntrackedVariables:>{Typeset`size$$}], "Manipulate",
     Deployed->True,
     StripOnInput->False],
    Manipulate`InterpretManipulate[1]]}}, 2,
   ImageSize->All]}, {3,"\<\"DAM calculator\"\>"->
  TagBox[
   StyleBox[
    DynamicModuleBox[{$CellContext`pd$$ = 0.067, $CellContext`rfn$$ = 
     100, $CellContext`rfp$$ = 76, $CellContext`rt$$ = 1, $CellContext`rtn$$ =
      0, $CellContext`rtp$$ = 0, $CellContext`u1$$ = 
     0.023, $CellContext`u2$$ = 0.23, $CellContext`x$$ = 
     2.26, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
     0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1, 
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
     Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
     1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
       Hold[
        Style["prevalence of disease", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`pd$$], 0.067, "v"}, 1.*^-8, 0.99}, {
       Hold[
        Style["nondiseased population", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
        Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
       0.01}, {
       Hold[
        Style["diseased population", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
        Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6, 
       0.01}, {
       Hold[
        Style["diagnostic threshold", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`x$$], 2.26, "d"}, 
       Dynamic[
        Min[$CellContext`\[Mu]D$$ - 
         3 $CellContext`\[Sigma]D$$, $CellContext`\[Mu]H$$ - 
         3 $CellContext`\[Sigma]H$$]], 
       Dynamic[
        Max[$CellContext`\[Mu]D$$ + 
         3 $CellContext`\[Sigma]D$$, $CellContext`\[Mu]H$$ + 
         3 $CellContext`\[Sigma]H$$]], 0.01}, {
       Hold[
        Style["standard measurement uncertainty", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`u1$$], 0.023, "first test"}, 0, 6, 0.01}, {{
        Hold[$CellContext`u2$$], 0.23, "second test"}, 0, 6, 0.01}, {{
        Hold[$CellContext`rt$$], 1, "testing"}, 0, 1000, 0.01}, {{
        Hold[$CellContext`rtp$$], 0, "true positive result"}, 0, 1000, 
       0.01}, {{
        Hold[$CellContext`rtn$$], 0, "true negative result"}, 0, 1000, 
       0.01}, {{
        Hold[$CellContext`rfp$$], 76, "false positive result"}, 0, 1000, 
       0.01}, {{
        Hold[$CellContext`rfn$$], 100, "false negative result"}, 0, 1000, 
       0.01}, {
       Hold[
        OpenerView[{
          Style["expected loss", Bold], 
          Column[{
            Manipulate`Place[1], 
            Manipulate`Place[2], 
            Manipulate`Place[3], 
            Manipulate`Place[4], 
            Manipulate`Place[5]}, Alignment -> Right]}]], 
       Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = Automatic, 
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
     False, $CellContext`pd$27388$$ = 0, $CellContext`\[Mu]H$27389$$ = 
     0, $CellContext`\[Sigma]H$27390$$ = 0, $CellContext`\[Mu]D$27391$$ = 
     0, $CellContext`\[Sigma]D$27392$$ = 0, $CellContext`x$27393$$ = 
     0, $CellContext`u1$27394$$ = 0, $CellContext`u2$27395$$ = 
     0, $CellContext`rt$27396$$ = 0, $CellContext`rtp$27397$$ = 0}, 
     DynamicBox[Manipulate`ManipulateBoxes[
      2, StandardForm, 
       "Variables" :> {$CellContext`pd$$ = 0.067, $CellContext`rfn$$ = 
         100, $CellContext`rfp$$ = 76, $CellContext`rt$$ = 
         1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 0, $CellContext`u1$$ = 
         0.023, $CellContext`u2$$ = 0.23, $CellContext`x$$ = 
         2.26, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
         0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1}, 
       "ControllerVariables" :> {
         Hold[$CellContext`pd$$, $CellContext`pd$27388$$, 0], 
         Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27389$$, 0], 
         Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27390$$, 0], 
         Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27391$$, 0], 
         Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27392$$, 0], 
         Hold[$CellContext`x$$, $CellContext`x$27393$$, 0], 
         Hold[$CellContext`u1$$, $CellContext`u1$27394$$, 0], 
         Hold[$CellContext`u2$$, $CellContext`u2$27395$$, 0], 
         Hold[$CellContext`rt$$, $CellContext`rt$27396$$, 0], 
         Hold[$CellContext`rtp$$, $CellContext`rtp$27397$$, 0]}, 
       "OtherVariables" :> {
        Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
         Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
         Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
         Typeset`initDone$$, Typeset`skipInitDone$$}, 
       "Body" :> $CellContext`dam1[$CellContext`x$$, $CellContext`\[Mu]D$$, \
$CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, \
$CellContext`pd$$, $CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, \
$CellContext`rtp$$, $CellContext`rtn$$, $CellContext`rfp$$, \
$CellContext`rfn$$}], "Specifications" :> {
         Style[
         "prevalence of disease", Bold], {{$CellContext`pd$$, 0.067, "v"}, 
          1.*^-8, 0.99, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style[
         "nondiseased population", Bold], {{$CellContext`\[Mu]H$$, 0, "mean"},
           0, 6, 0.01, ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
          0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style[
         "diseased population", Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"},
           0, 6, 0.01, ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, "standard deviation"},
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style["diagnostic threshold", Bold], {{$CellContext`x$$, 2.26, "d"}, 
          Dynamic[
           
           Min[$CellContext`\[Mu]D$$ - 
            3 $CellContext`\[Sigma]D$$, $CellContext`\[Mu]H$$ - 
            3 $CellContext`\[Sigma]H$$]], 
          Dynamic[
           
           Max[$CellContext`\[Mu]D$$ + 
            3 $CellContext`\[Sigma]D$$, $CellContext`\[Mu]H$$ + 
            3 $CellContext`\[Sigma]H$$]], 0.01, ImageSize -> Tiny, Appearance -> 
          "Labeled"}, Delimiter, 
         Style["standard measurement uncertainty", Bold], 
         Delimiter, {{$CellContext`u1$$, 0.023, "first test"}, 0, 6, 0.01, 
          ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`u2$$, 0.23, "second test"}, 0, 6, 0.01, 
          ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, {{$CellContext`rt$$, 1, "testing"}, 0, 1000, 0.01, 
          ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          1}, {{$CellContext`rtp$$, 0, "true positive result"}, 0, 1000, 0.01,
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          2}, {{$CellContext`rtn$$, 0, "true negative result"}, 0, 1000, 0.01,
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          3}, {{$CellContext`rfp$$, 76, "false positive result"}, 0, 1000, 
          0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          4}, {{$CellContext`rfn$$, 100, "false negative result"}, 0, 1000, 
          0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          5}, 
         OpenerView[{
           Style["expected loss", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2], 
             Manipulate`Place[3], 
             Manipulate`Place[4], 
             Manipulate`Place[5]}, Alignment -> Right]}], Delimiter}, 
       "Options" :> {
        TrackedSymbols -> True, ControlPlacement -> Left, Alignment -> Top}, 
       "DefaultOptions" :> {}],
      SingleEvaluation->True],
     Deinitialization:>None,
     DynamicModuleValues:>{},
     Initialization:>({$CellContext`dam1[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u1, 
           Blank[]], 
          Pattern[$CellContext`u2, 
           Blank[]], {
           Pattern[$CellContext`rt, 
            Blank[]], 
           Pattern[$CellContext`rtp, 
            Blank[]], 
           Pattern[$CellContext`rtn, 
            Blank[]], 
           Pattern[$CellContext`rfp, 
            Blank[]], 
           Pattern[$CellContext`rfn, 
            Blank[]]}] := Text[
          Grid[
           Quiet[
            Transpose[{{
               Style["calculation of diagnostic accuracy measures", Bold], 
               Style[
                StringJoin["diagnostic threshold: ", 
                 ToString[
                  N[$CellContext`t, 2]]], Red], 
               Style["diagnostic accuracy measures", Bold], "sensitivity", 
               "specificity", "overall diagnostic accuracy", 
               "positive predictive value", "negative predictive value", 
               "diagnostic odds ratio", 
               "likelihood ratio for a positive result", 
               "likelihood ratio for a negative result", "Euclidean distance",
                "Youden's index", "concordance probability", "risk"}, {
              SpanFromLeft, SpanFromLeft, SpanFromLeft, "Se", "Sp", "ODA", 
               "PPV", "NPV", "DOR", "LR+", "LR-", "ED", "J", "CZ", "R"}, {
              SpanFromLeft, SpanFromLeft, 
               Style["first test", Bold], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tsens[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tspec[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`toda[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tppv[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tnpv[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tdor[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tplr[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tnlr[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tyi[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`ted[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tcz[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`ttr[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}]]], {8, 3}]}, {
              SpanFromLeft, SpanFromLeft, 
               Style["second test", Bold], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tsens[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tspec[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`toda[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tppv[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tnpv[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tdor[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tplr[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tnlr[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tyi[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`ted[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`tcz[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`ttr[$CellContext`t, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}]]], {8, 3}]}, {
              SpanFromLeft, SpanFromLeft, 
               Style["relative difference", Bold], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tsens, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tspec, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`toda, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tppv, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tnpv, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tdor, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tplr, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tnlr, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tyi, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`ted, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`tcz, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, \
$CellContext`u2}]]], {8, 3}], 
               NumberForm[
                Re[
                 N[
                  $CellContext`rdeltaf[$CellContext`ttr, {$CellContext`t, \
$CellContext`\[Mu]D, $CellContext`\[Mu]H, $CellContext`\[Sigma]D, \
$CellContext`\[Sigma]H, $CellContext`pd, $CellContext`u1, $CellContext`u2, \
{$CellContext`rt, $CellContext`rtp, $CellContext`rtn, $CellContext`rfp, \
$CellContext`rfn}}]]], {8, 3}]}}]], Frame -> All, FrameStyle -> 
           Blend[{Blue, Cyan}, 0.35], Spacings -> {1, 1}, ItemSize -> 
           Automatic]], $CellContext`tsens[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) (1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`tspec[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`toda[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/
          2) ($CellContext`pd + $CellContext`pd 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] - (-1 + \
$CellContext`pd) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tppv[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := $CellContext`pd ((1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
          2 - $CellContext`pd 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tnpv[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := 
        1/(1 - ($CellContext`pd 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/((-1 + \
$CellContext`pd) 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tdor[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := ((-2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])/(
         Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] (-2 + 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tplr[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(1 + 
         Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tnlr[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := 
        Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]/
         Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
          Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`tyi[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) (-1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`ted[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) 
         Sqrt[(1 + Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`tcz[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := ((1/4) (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])) 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ttr[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]], {
           Pattern[$CellContext`rt, 
            Blank[]], 
           Pattern[$CellContext`rtp, 
            Blank[]], 
           Pattern[$CellContext`rtn, 
            Blank[]], 
           Pattern[$CellContext`rfp, 
            Blank[]], 
           Pattern[$CellContext`rfn, 
            Blank[]]}] := (1/2) (
          2 ($CellContext`rfp + $CellContext`rt) + $CellContext`pd \
($CellContext`rfn - 
            2 $CellContext`rfp + $CellContext`rtp) + ($CellContext`pd \
(-$CellContext`rfn + $CellContext`rtp)) 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`rdeltaf[
          Pattern[$CellContext`m, 
           Blank[]], {
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u1, 
            Blank[]], 
           Pattern[$CellContext`u2, 
            Blank[]], 
           Pattern[$CellContext`l, 
            BlankNullSequence[List]]}] := (
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}] - 
          Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, $CellContext`l}])/
         Apply[$CellContext`m, {$CellContext`x, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, $CellContext`l}]}; 
      Typeset`initDone$$ = True),
     SynchronousInitialization->True,
     UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
     UnsavedVariables:>{Typeset`initDone$$},
     UntrackedVariables:>{Typeset`size$$}], "Manipulate",
    Deployed->True,
    StripOnInput->False],
   Manipulate`InterpretManipulate[1]]}, {4,"\<\"optimal DAM calculator\"\>"->
  TagBox[
   StyleBox[
    DynamicModuleBox[{$CellContext`m$$ = $CellContext`r, $CellContext`pd$$ = 
     0.067, $CellContext`rfn$$ = 100, $CellContext`rfp$$ = 
     76, $CellContext`rt$$ = 1, $CellContext`rtn$$ = 0, $CellContext`rtp$$ = 
     0, $CellContext`u1$$ = 0.023, $CellContext`u2$$ = 
     0.23, $CellContext`\[Mu]D$$ = 2.99, $CellContext`\[Mu]H$$ = 
     0, $CellContext`\[Sigma]D$$ = 0.75, $CellContext`\[Sigma]H$$ = 1, 
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
     Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
     1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
        Hold[$CellContext`m$$], $CellContext`r, 
        "optimal measure"}, {$CellContext`j -> 
        "maximum Youden's index J", $CellContext`ed -> 
        "minimum Euclidean distance (ED)", $CellContext`cz -> 
        "maximum concordance probability (CZ)", $CellContext`r -> 
        "minimum risk (R)"}}, {
       Hold[
        Style["prevalence of disease", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`pd$$], 0.067, "v"}, 1.*^-8, 0.99}, {
       Hold[
        Style["nondiseased population", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`\[Mu]H$$], 0, "mean"}, 0, 6, 0.01}, {{
        Hold[$CellContext`\[Sigma]H$$], 1, "standard deviation"}, 0.01, 6, 
       0.01}, {
       Hold[
        Style["diseased population", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`\[Mu]D$$], 2.99, "mean"}, 0, 6, 0.01}, {{
        Hold[$CellContext`\[Sigma]D$$], 0.75, "standard deviation"}, 0.01, 6, 
       0.01}, {
       Hold[
        Style["standard measurement uncertainty", Bold]], 
       Manipulate`Dump`ThisIsNotAControl}, {{
        Hold[$CellContext`u1$$], 0.023, "first test"}, 0, 6, 0.01}, {{
        Hold[$CellContext`u2$$], 0.23, "second test"}, 0, 6, 0.01}, {{
        Hold[$CellContext`rt$$], 1, "testing"}, 0, 1000, 0.01}, {{
        Hold[$CellContext`rtp$$], 0, "true positive result"}, 0, 1000, 
       0.01}, {{
        Hold[$CellContext`rtn$$], 0, "true negative result"}, 0, 1000, 
       0.01}, {{
        Hold[$CellContext`rfp$$], 76, "false positive result"}, 0, 1000, 
       0.01}, {{
        Hold[$CellContext`rfn$$], 100, "false negative result"}, 0, 1000, 
       0.01}, {
       Hold[
        OpenerView[{
          Style["expected loss", Bold], 
          Column[{
            Manipulate`Place[1], 
            Manipulate`Place[2], 
            Manipulate`Place[3], 
            Manipulate`Place[4], 
            Manipulate`Place[5]}, Alignment -> Right]}]], 
       Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = Automatic, 
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
     False, $CellContext`m$27436$$ = False, $CellContext`pd$27437$$ = 
     0, $CellContext`\[Mu]H$27438$$ = 0, $CellContext`\[Sigma]H$27439$$ = 
     0, $CellContext`\[Mu]D$27440$$ = 0, $CellContext`\[Sigma]D$27441$$ = 
     0, $CellContext`u1$27442$$ = 0, $CellContext`u2$27443$$ = 
     0, $CellContext`rt$27444$$ = 0, $CellContext`rtp$27445$$ = 
     0, $CellContext`rtn$27446$$ = 0}, 
     DynamicBox[Manipulate`ManipulateBoxes[
      2, StandardForm, 
       "Variables" :> {$CellContext`m$$ = $CellContext`r, $CellContext`pd$$ = 
         0.067, $CellContext`rfn$$ = 100, $CellContext`rfp$$ = 
         76, $CellContext`rt$$ = 1, $CellContext`rtn$$ = 
         0, $CellContext`rtp$$ = 0, $CellContext`u1$$ = 
         0.023, $CellContext`u2$$ = 0.23, $CellContext`\[Mu]D$$ = 
         2.99, $CellContext`\[Mu]H$$ = 0, $CellContext`\[Sigma]D$$ = 
         0.75, $CellContext`\[Sigma]H$$ = 1}, "ControllerVariables" :> {
         Hold[$CellContext`m$$, $CellContext`m$27436$$, False], 
         Hold[$CellContext`pd$$, $CellContext`pd$27437$$, 0], 
         Hold[$CellContext`\[Mu]H$$, $CellContext`\[Mu]H$27438$$, 0], 
         Hold[$CellContext`\[Sigma]H$$, $CellContext`\[Sigma]H$27439$$, 0], 
         Hold[$CellContext`\[Mu]D$$, $CellContext`\[Mu]D$27440$$, 0], 
         Hold[$CellContext`\[Sigma]D$$, $CellContext`\[Sigma]D$27441$$, 0], 
         Hold[$CellContext`u1$$, $CellContext`u1$27442$$, 0], 
         Hold[$CellContext`u2$$, $CellContext`u2$27443$$, 0], 
         Hold[$CellContext`rt$$, $CellContext`rt$27444$$, 0], 
         Hold[$CellContext`rtp$$, $CellContext`rtp$27445$$, 0], 
         Hold[$CellContext`rtn$$, $CellContext`rtn$27446$$, 0]}, 
       "OtherVariables" :> {
        Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
         Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
         Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
         Typeset`initDone$$, Typeset`skipInitDone$$}, 
       "Body" :> $CellContext`dam2[$CellContext`m$$, {$CellContext`\[Mu]D$$, \
$CellContext`\[Mu]H$$, $CellContext`\[Sigma]D$$, $CellContext`\[Sigma]H$$, \
$CellContext`pd$$, $CellContext`u1$$, $CellContext`u2$$, {$CellContext`rt$$, \
$CellContext`rtp$$, $CellContext`rtn$$, $CellContext`rfp$$, \
$CellContext`rfn$$}}], 
       "Specifications" :> {{{$CellContext`m$$, $CellContext`r, 
           "optimal measure"}, {$CellContext`j -> 
           "maximum Youden's index J", $CellContext`ed -> 
           "minimum Euclidean distance (ED)", $CellContext`cz -> 
           "maximum concordance probability (CZ)", $CellContext`r -> 
           "minimum risk (R)"}, ControlType -> PopupMenu, ControlPlacement -> 
          Top}, 
         Style[
         "prevalence of disease", Bold], {{$CellContext`pd$$, 0.067, "v"}, 
          1.*^-8, 0.99, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style[
         "nondiseased population", Bold], {{$CellContext`\[Mu]H$$, 0, "mean"},
           0, 6, 0.01, ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`\[Sigma]H$$, 1, "standard deviation"}, 
          0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style[
         "diseased population", Bold], {{$CellContext`\[Mu]D$$, 2.99, "mean"},
           0, 6, 0.01, ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`\[Sigma]D$$, 0.75, "standard deviation"},
           0.01, 6, 0.01, ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, 
         Style["standard measurement uncertainty", Bold], 
         Delimiter, {{$CellContext`u1$$, 0.023, "first test"}, 0, 6, 0.01, 
          ImageSize -> Tiny, Appearance -> 
          "Labeled"}, {{$CellContext`u2$$, 0.23, "second test"}, 0, 6, 0.01, 
          ImageSize -> Tiny, Appearance -> "Labeled"}, 
         Delimiter, {{$CellContext`rt$$, 1, "testing"}, 0, 1000, 0.01, 
          ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          1}, {{$CellContext`rtp$$, 0, "true positive result"}, 0, 1000, 0.01,
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          2}, {{$CellContext`rtn$$, 0, "true negative result"}, 0, 1000, 0.01,
           ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          3}, {{$CellContext`rfp$$, 76, "false positive result"}, 0, 1000, 
          0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          4}, {{$CellContext`rfn$$, 100, "false negative result"}, 0, 1000, 
          0.01, ImageSize -> Tiny, Appearance -> "Labeled", ControlPlacement -> 
          5}, 
         OpenerView[{
           Style["expected loss", Bold], 
           Column[{
             Manipulate`Place[1], 
             Manipulate`Place[2], 
             Manipulate`Place[3], 
             Manipulate`Place[4], 
             Manipulate`Place[5]}, Alignment -> Right]}], Delimiter}, 
       "Options" :> {
        ContinuousAction -> False, TrackedSymbols -> True, ControlPlacement -> 
         Left, Alignment -> Top}, "DefaultOptions" :> {}],
      SingleEvaluation->True],
     Deinitialization:>None,
     DynamicModuleValues:>{},
     Initialization:>({$CellContext`dam2[
          Pattern[$CellContext`m, 
           Blank[]], {
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u1, 
            Blank[]], 
           Pattern[$CellContext`u2, 
            Blank[]], {
            Pattern[$CellContext`rt, 
             Blank[]], 
            Pattern[$CellContext`rtp, 
             Blank[]], 
            Pattern[$CellContext`rtn, 
             Blank[]], 
            Pattern[$CellContext`rfp, 
             Blank[]], 
            Pattern[$CellContext`rfn, 
             Blank[]]}}] := 
        Block[{$CellContext`t1, $CellContext`t2}, $CellContext`t1 = 
           Switch[$CellContext`m, $CellContext`j, 
             $CellContext`max[$CellContext`tyi, {$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1}], $CellContext`ed, 
             $CellContext`min[$CellContext`ted, {$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1}], $CellContext`cz, 
             $CellContext`max[$CellContext`tcz, {$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1}], $CellContext`r, 
             $CellContext`min[$CellContext`ttr, {$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}}]]; $CellContext`t2 = 
           Switch[$CellContext`m, $CellContext`j, 
             $CellContext`max[$CellContext`tyi, {$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2}], $CellContext`ed, 
             $CellContext`min[$CellContext`ted, {$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2}], $CellContext`cz, 
             $CellContext`max[$CellContext`tcz, {$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2}], $CellContext`r, 
             $CellContext`min[$CellContext`ttr, {$CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}}]]; Text[
            Grid[
             Quiet[
              Transpose[{{
                 $CellContext`tl[$CellContext`m], "", 
                 Style["diagnostic threshold", Red], 
                 Style["diagnostic accuracy measures", Bold], "sensitivity", 
                 "specificity", "overall diagnostic accuracy", 
                 "positive predictive value", "negative predictive value", 
                 "diagnostic odds ratio", 
                 "likelihood ratio for a positive result", 
                 "likelihood ratio for a negative result", 
                 "Euclidean distance", "Youden's index", 
                 "concordance probability", "risk"}, {
                SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, "Se", 
                 "Sp", "ODA", "PPV", "NPV", "DOR", "LR+", "LR-", "ED", "J", 
                 "CZ", "R"}, {SpanFromLeft, 
                 Style["first test", Bold], 
                 Style[
                  NumberForm[
                   N[$CellContext`t1], {8, 3}], Red], "", 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tsens[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tspec[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`toda[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tppv[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tnpv[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tdor[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tplr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tnlr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tyi[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`ted[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tcz[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`ttr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}]]], {8, 3}]}, {
                SpanFromLeft, 
                 Style["second test", Bold], 
                 Style[
                  NumberForm[
                   N[$CellContext`t2], {8, 3}], Red], "", 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tsens[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tspec[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`toda[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tppv[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tnpv[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tdor[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tplr[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tnlr[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tyi[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`ted[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`tcz[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]], {8, 3}], 
                 NumberForm[
                  Re[
                   N[
                    $CellContext`ttr[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}]]], {8, 3}]}, {
                SpanFromLeft, 
                 Style["relative difference", Bold], 
                 Style[
                  
                  NumberForm[(N[$CellContext`t1] - N[$CellContext`t2])/
                   N[$CellContext`t1], {8, 3}], Red], "", 
                 NumberForm[(Re[
                    N[
                    $CellContext`tsens[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tsens[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tsens[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`tspec[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tspec[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tspec[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`toda[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`toda[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`toda[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`tppv[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tppv[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tppv[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`tnpv[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tnpv[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tnpv[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`tdor[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tdor[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tdor[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`tplr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tplr[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tplr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`tnlr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tnlr[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tnlr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`tyi[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tyi[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tyi[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`ted[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`ted[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`ted[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`tcz[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]] - Re[
                    N[
                    $CellContext`tcz[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2]]])/Re[
                   N[
                    $CellContext`tcz[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1]]], {8, 3}], 
                 NumberForm[(Re[
                    N[
                    $CellContext`ttr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}]]] - Re[
                    N[
                    $CellContext`ttr[$CellContext`t2, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u2, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}]]])/Re[
                   N[
                    $CellContext`ttr[$CellContext`t1, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u1, {$CellContext`rt, $CellContext`rtp, \
$CellContext`rtn, $CellContext`rfp, $CellContext`rfn}]]], {8, 3}]}}]], Frame -> 
             All, FrameStyle -> Blend[{Blue, Cyan}, 0.35], Spacings -> {1, 1},
              ItemSize -> Automatic]]], $CellContext`max[
          Pattern[$CellContext`f, 
           Blank[]], {
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], 
           Pattern[$CellContext`l, 
            BlankNullSequence[List]]}] := ReplaceAll[$CellContext`z, 
          Part[
           NMaximize[
            
            Apply[$CellContext`f, {$CellContext`z, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u, $CellContext`l}], $CellContext`z, 
            MaxIterations -> 10000], 2]], $CellContext`tyi[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) (-1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`ed[
          Pattern[$CellContext`sn, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := 
        Sqrt[(-1 + $CellContext`sn)^2 + (1/
            4) (1 + Erf[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (
                  Sqrt[2] Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
                 InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2], \
$CellContext`min[
          Pattern[$CellContext`f, 
           Blank[]], {
           Pattern[$CellContext`\[Mu]D, 
            Blank[]], 
           Pattern[$CellContext`\[Mu]H, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]D, 
            Blank[]], 
           Pattern[$CellContext`\[Sigma]H, 
            Blank[]], 
           Pattern[$CellContext`pd, 
            Blank[]], 
           Pattern[$CellContext`u, 
            Blank[]], 
           Pattern[$CellContext`l, 
            BlankNullSequence[List]]}] := ReplaceAll[$CellContext`z, 
          Part[
           NMinimize[
            
            Apply[$CellContext`f, {$CellContext`z, $CellContext`\[Mu]D, \
$CellContext`\[Mu]H, $CellContext`\[Sigma]D, $CellContext`\[Sigma]H, \
$CellContext`pd, $CellContext`u, $CellContext`l}], $CellContext`z], 
           2]], $CellContext`ted[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) 
         Sqrt[(1 + Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
               Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])^2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]^2], \
$CellContext`cz[
          Pattern[$CellContext`sn, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := ((1/2) $CellContext`sn) 
         Erfc[(-$CellContext`\[Mu]D + $CellContext`\[Mu]H + (Sqrt[2] 
              Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2]) 
             InverseErfc[2 - 2 $CellContext`sn])/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`tcz[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := ((1/4) (1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])) 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`ttr[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]], {
           Pattern[$CellContext`rt, 
            Blank[]], 
           Pattern[$CellContext`rtp, 
            Blank[]], 
           Pattern[$CellContext`rtn, 
            Blank[]], 
           Pattern[$CellContext`rfp, 
            Blank[]], 
           Pattern[$CellContext`rfn, 
            Blank[]]}] := (1/2) (
          2 ($CellContext`rfp + $CellContext`rt) + $CellContext`pd \
($CellContext`rfn - 
            2 $CellContext`rfp + $CellContext`rtp) + ($CellContext`pd \
(-$CellContext`rfn + $CellContext`rtp)) 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + ((-1 + \
$CellContext`pd) ($CellContext`rfp - $CellContext`rtn)) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tl[
          Pattern[$CellContext`m, 
           Blank[]]] := Switch[$CellContext`m, $CellContext`j, 
          Style[
          "maximizing Youden's index J optimization", Bold], $CellContext`ed, 
          Style[
          "minimimizing Euclidean distance (ED) optimization", 
           Bold], $CellContext`cz, 
          Style[
          "maximizing concordance probability (CZ) optimization", 
           Bold], $CellContext`r, 
          Style["minimizing risk optimization", Bold]], $CellContext`tsens[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) (1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]), \
$CellContext`tspec[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/2) 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])], \
$CellContext`toda[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1/
          2) ($CellContext`pd + $CellContext`pd 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] - (-1 + \
$CellContext`pd) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tppv[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := $CellContext`pd ((1 + 
           Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(
          2 - $CellContext`pd 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] + (-1 + \
$CellContext`pd) 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tnpv[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := 
        1/(1 - ($CellContext`pd 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/((-1 + \
$CellContext`pd) 
         Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tdor[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := ((-2 + 
           Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
             Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]) 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])/(
         Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])] (-2 + 
          Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])])), \
$CellContext`tplr[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := (1 + 
          Erf[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
            Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])])/(1 + 
         Erf[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]), \
$CellContext`tnlr[
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]D, 
           Blank[]], 
          Pattern[$CellContext`\[Mu]H, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]D, 
           Blank[]], 
          Pattern[$CellContext`\[Sigma]H, 
           Blank[]], 
          Pattern[$CellContext`pd, 
           Blank[]], 
          Pattern[$CellContext`u, 
           Blank[]]] := 
        Erfc[(-$CellContext`t + $CellContext`\[Mu]D)/(Sqrt[2] 
           Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]D^2])]/
         Erfc[(-$CellContext`t + $CellContext`\[Mu]H)/(Sqrt[2] 
          Sqrt[$CellContext`u^2 + $CellContext`\[Sigma]H^2])]}; 
      Typeset`initDone$$ = True),
     SynchronousInitialization->True,
     UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
     UnsavedVariables:>{Typeset`initDone$$},
     UntrackedVariables:>{Typeset`size$$}], "Manipulate",
    Deployed->True,
    StripOnInput->False],
   Manipulate`InterpretManipulate[1]]}}, 2,
  ImageSize->Automatic]], "Output",
 CellChangeTimes->{
  3.785999379095155*^9, {3.785999559250637*^9, 3.78599958047143*^9}, 
   3.7859997364668665`*^9, 3.7864931610483923`*^9, {3.7865574883778133`*^9, 
   3.7865575239519167`*^9}, 3.7865576234627466`*^9},
 CellLabel->
  "Out[300]=",ExpressionUUID->"472318cb-09f2-4596-9937-4613145e3b00"]
}, Open  ]],

Cell[TextData[StyleBox["This software is distributed under  an Attribution - \
NonCommercial - ShareAlike 4.0 International Creative Commons License.",
 FontSize->10]], "Text",
 Editable->False,
 CellChangeTimes->{{3.779940759467285*^9, 3.779940828530776*^9}, {
  3.7799408844586754`*^9, 
  3.779940885138858*^9}},ExpressionUUID->"9bd287a3-a649-4c87-891e-\
f45e4a64c58b"]
}, Open  ]]
},
WindowSize->{1904, 997},
WindowMargins->{{0, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.0 for Microsoft Windows (64-bit) (April 8, 2019)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 359, 8, 105, "Title",ExpressionUUID->"731cb0ca-38ae-48b8-9f31-28c369c8c28c",
 Evaluatable->False],
Cell[1872, 45, 442, 11, 191, "Author",ExpressionUUID->"eb26a9af-d7ea-4197-814c-4a97fd112c75"],
Cell[2317, 58, 328, 8, 82, "Affiliation",ExpressionUUID->"29bf9113-0378-4a8c-a104-144b267e81c3"],
Cell[2648, 68, 156119, 4107, 28, "Input",ExpressionUUID->"47190465-b063-4f9a-8c53-10879fe2a4e2",
 CellOpen->False,
 InitializationCell->True],
Cell[CellGroupData[{
Cell[158792, 4179, 106714, 2202, 28, "Input",ExpressionUUID->"101cd957-340d-431e-91ec-e5cb76a39831",
 CellOpen->False,
 InitializationCell->True],
Cell[265509, 6383, 395022, 8792, 911, "Output",ExpressionUUID->"472318cb-09f2-4596-9937-4613145e3b00"]
}, Open  ]],
Cell[660546, 15178, 371, 7, 42, "Text",ExpressionUUID->"9bd287a3-a649-4c87-891e-f45e4a64c58b"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature nuT7AufsY896UDws1jXTLzry *)
