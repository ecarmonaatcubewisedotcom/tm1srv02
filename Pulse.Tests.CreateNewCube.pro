601,100
602,"Pulse.Tests.CreateNewCube"
562,"NULL"
586,
585,
564,
565,"c22aKoq`PujmOSOsuTD_[CxZXIPx1zH1yJ1dCFL7YTNVHHW3u1o;mi;7<140@\5Amic3NbF3cBSClqXDpw_dDu0^qU>:lXll8^f0QKlmRXQph@n<MST7iRD[v\eYT9B;ACDYf3s<^Gz1?cuFzSl8BXg@PN4BBa=l<Qn<v::5a`9McnsGp=GepCd0KOGzwOead8ouG`E:"
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
560,0
561,0
590,0
637,0
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,16

#****Begin: Generated Statements***
#****End: Generated Statements****

cCubeName = 'NewLedger';

If(CubeExists(cCubeName)=1);
  CubeDestroy(cCubeName);
ENDIF;

ExecuteProcess('Bedrock.Cube.Clone',
   'pSourceCube', 'General Ledger',
   'pTargetCube', cCubeName);
  


573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,3

#****Begin: Generated Statements***
#****End: Generated Statements****
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
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
