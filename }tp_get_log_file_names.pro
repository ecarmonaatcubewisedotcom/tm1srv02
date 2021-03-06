﻿601,100
602,"}tp_get_log_file_names"
562,"NULL"
586,
585,
564,
565,"m6wXV`x6xAvvma2TH42nlSC9AI``k82ARF^XM=<cd]]l1;xznpDztG7_W?7vYbX1]M[y1OTUPotisEorvFX3gi:xKY;jyO2Q0Yn8p[SG5G:hlL2FXPOxw7jE^aSyNgRGGDIfchO0Q5ykr0Cn\VngfcN>E9:ZsBQybwmuk@izkutbFfws13;KF6\UETBhlV1udRM;EtuT"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,
568,""""
570,
571,
569,0
592,0
599,1000
560,3
pExecutionId
pProcess
pControl
561,3
2
2
2
590,3
pExecutionId,"None"
pProcess,"None"
pControl,"N"
637,3
pExecutionId,
pProcess,
pControl,
577,0
578,0
579,0
580,0
581,0
582,0
572,56


#################################################################
## IBM Confidential
##
## OCO Source Materials
##
## BI and PM: pmpsvc
##
## (C) Copyright IBM Corp. 2008, 2009, 2010
##
## The source code for this program is not published or otherwise
## divested of its trade secrets, irrespective of what has been
## deposited with the U.S. Copyright Office.
#################################################################



cControlPrefix = '';
If (pControl @= 'Y');
cControlPrefix = '}';
EndIf;

StringGlobalVariable('gPrologLog');
StringGlobalVariable('gEpilogLog');
StringGlobalVariable('gDataLog');
StringGlobalVariable('gMetadataLog');

vLogPrefix = pProcess;
If (SUBST(vLogPrefix, 1, 1) @= '}');
vLogPrefix = SUBST(vLogPrefix, 2, (LONG(vLogPrefix) - 1));
EndIf;

#*** Check tp_config dimension
cConfigDim = cControlPrefix | 'tp_config';

If (DimensionExists(cConfigDim) = 1);

cLogDirectory = ATTRS(cConfigDim, 'Log Directory', 'String Value');
If (cLogDirectory @<> '' & SUBST(cLogDirectory, (LONG(cLogDirectory) - 1), 1) @<> '\');
cLogDirectory = cLogDirectory | '\';
EndIf;
gPrologLog = cLogDirectory | vLogPrefix | '_' | pExecutionId | '_prolog.log';
gEpilogLog = cLogDirectory | vLogPrefix | '_' | pExecutionId | '_epilog.log';
gDataLog = cLogDirectory | vLogPrefix | '_' | pExecutionId | '_data.log';
gMetadataLog = cLogDirectory | vLogPrefix | '_' | pExecutionId | '_metadata.log';

Else;

gPrologLog = vLogPrefix | '_' | pExecutionId | '_prolog.log';
gEpilogLog = vLogPrefix | '_' | pExecutionId | '_epilog.log';
gDataLog = vLogPrefix | '_' | pExecutionId | '_data.log';
gMetadataLog = vLogPrefix | '_' | pExecutionId | '_metadata.log';

EndIf;

573,1

574,1

575,1

576,
930,0
638,1
804,0
1217,0
900,
901,
902,
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
