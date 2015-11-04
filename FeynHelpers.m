(* Wolfram Language package *)

$FeynHelpersVersion::usage=
"$FVProjectionVersion is the string that represents the version of FVProjection";

$FeynHelpersDirectory::usage=
"$FVProjectionDirectory is the string that represents the full path to the FVProjection \
directory";

Begin["`Package`"]
End[]

Begin["`FeynHelpers`Private`"];

$FeynHelpersVersion="0.1.0";

$FeynHelpersDirectory =
ToFileName[{$FeynCalcDirectory, "AddOns", "FeynHelpers"}];

(* Load the intefaces *)
BeginPackage["FeynCalc`"];
FCDeclareHeader/@FileNames[{"*.m"},ToFileName[{$FeynHelpersDirectory,"Interfaces"}]];
Get/@FileNames[{"*.m"},ToFileName[{$FeynHelpersDirectory,"Interfaces"}]];
EndPackage[]


(* Print startup message *)
If[ Global`$FeynCalcStartupMessages =!= False,
	Print[Style["FeynHelpers ", "Text", Bold], Style[$FeynHelpersVersion <> " loaded.", "Text"]]
];

End[]

