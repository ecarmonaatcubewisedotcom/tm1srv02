﻿601,100
602,"Bedrock.Dim.Element.Component.Add"
562,"NULL"
586,
585,
564,
565,"dZvmaZ1tkRkIHq<LfXFIoko_`o0z`OmIy0sIJR\gnFR?Eu[nxqcgoxO<\34Ct?@o<:QPz76OEsGjss_tWQ9Pa]>6j4Xj_TytI9HBRVIQRVO`S1o==HfEaFTCdfAicQ\\l74RLmwXyko7F=]heH>j9Zi\IK2AtCIeGW>KaUR1L?]we^;OZ9q;HIm[esEPnESYasr]nJQK"
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
560,5
pDimension
pParent
pElement
pWeight
pDebug
561,5
2
2
2
1
1
590,5
pDimension,""
pParent,""
pElement,""
pWeight,1
pDebug,0
637,5
pDimension,"Dimension Name"
pParent,"Parent Name"
pElement,"Element Name"
pWeight,"Component WeightDebug Mode"
pDebug,"Debug Mode"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,110

#****Begin: Generated Statements***
#****End: Generated Statements****

#####################################################################################
##~~Copyright bedrocktm1.org 2011 www.bedrocktm1.org/how-to-licence.php Ver 3.0.2~~##
#####################################################################################

# This process will add a component to an element.

### Constants ###

cProcess = 'Bedrock.Dim.Element.Component.Add';
cTimeStamp = TimSt( Now, '\Y\m\d\h\i\s' );
sRandomInt = NumberToString( INT( RAND( ) * 1000 ));
cDebugFile = GetProcessErrorFileDirectory | cProcess | '.' | cTimeStamp | '.' | sRandomInt ;


### Initialise Debug ###

If( pDebug >= 1 );

  # Set debug file name
  sDebugFile = cDebugFile | 'Prolog.debug';

  # Log start time
  AsciiOutput( sDebugFile, 'Process Started: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );

  # Log parameters
  AsciiOutput( sDebugFile, 'Parameters: pDimension : ' | pDimension );
  AsciiOutput( sDebugFile, '            pParent    : ' | pParent );
  AsciiOutput( sDebugFile, '            pElement   : ' | pElement );
  AsciiOutput( sDebugFile, '            pWeight    : ' | NumberToString( pWeight) );

EndIf;


### Validate Parameters ###

nErrors = 0;

## Validate dimension
If( Trim( pDimension ) @= '' );
  nErrors = 1;
  sMessage = 'No dimension specified';
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;
If( DimensionExists( pDimension ) = 0 );
  nErrors = 1;
  sMessage = 'Dimension: ' | pDimension | ' does not exist on server.';
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;

## Validate element
If( Trim( pElement ) @= '' );
  nErrors = 1;
  sMessage = 'No element specified';
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;
If( DimIx( pDimension, pElement ) = 0 );
  nErrors = 1;
  sMessage = 'Element: ' | pElement | ' does not exist in dimension: ' | pDimension;
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;

## Validate Parent
If( Trim( pParent ) @= '' );
  nErrors = 1;
  sMessage = 'No parent specified';
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;

If( DimIx( pDimension, pParent) = 0 );
  nErrors = 1;
  sMessage = 'Element: ' | pParent | ' does not exist in dimension: ' | pDimension;
  If( pDebug >= 1 );
    AsciiOutput( sDebugFile, sMessage );
  EndIf;
  ItemReject( sMessage );
EndIf;



sElement = DimensionElementPrincipalName( pDimension, pElement);
### Add the element component to the dimension ###
If( pDebug <= 1 );
 DimensionElementComponentAdd(pDimension, pParent, pElement, pWeight);
EndIf;

If( pDebug >= 1 );
sMessage = 'Component: ' | pElement | ' has bee added to ' | pParent | ' in ' | pDimension | ' dimension.';
  AsciiOutput( sDebugFile, sMessage );
EndIf;

### End Prolog ###
573,4

#****Begin: Generated Statements***
#****End: Generated Statements****

574,4

#****Begin: Generated Statements***
#****End: Generated Statements****

575,35

#****Begin: Generated Statements***
#****End: Generated Statements****

#####################################################################################
##~~Copyright bedrocktm1.org 2011 www.bedrocktm1.org/how-to-licence.php Ver 3.0.2~~##
#####################################################################################


### Initialise Debug ###

If( pDebug >= 1 );

  # Set debug file name
  sDebugFile = cDebugFile | 'Epilog.debug';

  # Log errors
  If( nErrors <> 0 );
    AsciiOutput( sDebugFile, 'Errors Occurred' );
  EndIf;

  # Log finish time
  AsciiOutput( sDebugFile, 'Process Finished: ' | TimSt( Now, '\d-\m-\Y \h:\i:\s' ) );

EndIf;


### If errors occurred terminate process with a major error status ###

If( nErrors <> 0 );
  ProcessQuit;
EndIf;


### End Epilog ###
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,1
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
917,1
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
