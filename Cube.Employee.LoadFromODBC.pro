﻿601,100
562,"ODBC"
586,"AdventureWorksDW 64"
585,"AdventureWorksDW 64"
564,
565,"cgyaZP[=BsnUh]f\q=l1DK^A33z05gB<[nyGb_cD489\Eyn?c1SsE73B7;y6Rk2t1s6]^SF9eCV>a]tvXrTpM85U@exH<1DeL[?0N<H_kE<^pt[ctT^;qyxI6`aaq<[xrCR40\_qJ<>^DQfxHFLY>V2SvPN3YcsSGMGr7JBYOh0n56GSAjNPy<H=IHVUwme09:nf`nMC"
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
566,3
Select DimEmployee.SalesTerritoryKey, DimEmployee.DepartmentName, DimEmployee.EmployeeNationalIDAlternateKey, DimEmployee.BaseRate
From DimEmployee
ORDER BY DimEmployee.DepartmentName,DimEmployee.FirstName
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
577,4
vSalesTerritoryKey
vDepartmentName
vEmployeeKey
vBaseRate
578,4
1
2
2
1
579,4
1
2
3
4
580,4
0
0
0
0
581,4
0
0
0
0
582,4
VarType=33ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=33ColType=827
572,13

#****Begin: Generated Statements***
#****End: Generated Statements****

## This process loads base salaries to the Employee Cube ##

cCube = 'Employee';
cVersion = 'Actual';
cYear = '2012';

cCurrency = 'Local';

CubeClearData(cCube);
573,5

#****Begin: Generated Statements***
#****End: Generated Statements****


574,50

#****Begin: Generated Statements***
#****End: Generated Statements****

#sSalesTerritoryKey = NumberToString(vSalesTerritoryKey);
#sRegion = AttrS('Sales Territory To Region Lookup', sSalesTerritoryKey, 'Region');
sRegion = NumberToString(vSalesTerritoryKey);

#sEmployeeKey = NumberToString(vEmployeeKey);
sEmployeeKey = vEmployeeKey;

# Remove dot from end of product
sString = sEmployeeKey;
nLength = LONG(sString);
sLastCharacter = SUBST(sString, nLength, 1);
If(sLastCharacter @= '.');
  sString = SUBST(sString, 1, nLength - 1);
EndIf;
sEmployeeKey = sString;


# Convert hourly rate to an annual rate
nSalary = vBaseRate * 40 * 52;

#Employee Cube
#Version
#Year
#Period
#Currency
#Regio n
#Department
#Employee
#Employee Measure

# department is a random whole number between 2 and 7
sDepartment = Numbertostring(INT(RAND * 6) + 2);

nMonth = 1;
WHILE(nMonth <=12);
  sMonth = NumberToString(nMonth);
  If (CellIsUpdateable(cCube, cVersion, cYear, sMonth, cCurrency, sRegion, sDepartment, sEmployeeKey, 'FTE') = 1 );
    CellPutN(1, cCube, cVersion, cYear, sMonth, cCurrency, sRegion, sDepartment, sEmployeeKey, 'FTE');
    CellPutN(nSalary, cCube, cVersion, cYear, sMonth, cCurrency, sRegion, sDepartment, sEmployeeKey, 'Base Salary');
  EndIf;
  nMonth = nMonth +1;
END;




575,4

#****Begin: Generated Statements***
#****End: Generated Statements****

576,CubeAction=1511DataAction=1503CubeLogChanges=0
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
