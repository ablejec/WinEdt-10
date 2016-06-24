// -*- ASCII:EDT -*-
// worklog_open.edt
// (schlicht 20010323)
// ($Revision: 1.10 $)
// (created by worklog_install.edt  \overrightarrow{}
//   on 20. avgust 2014, 00:06)
////////////////////////////////////

IfStr("   "Prompt('Logging is already started.
LetRegNum(9,GetDate(4,"dd");
GetDate(5,"hh");
GetDate(6,"nn");
LetRegNum(8,"LetRegNum(8,"LetStr(9,"
GetDate(2,"yy");
GetDate(3,"mm");

LetRegNum(8,0);
Loop(!"IfNum(      'LetRegNum(9,IfNum("   "LetRegNum(9,0);",>
   "LetRegNum(9,1);");

StartWorking("Worklog...");
IfNum("  !|ReadFile("    OpenOutput("      WrS("    CloseOutput; >
   |,>
  !|IfFileExists("      !"ReadFile('        LetRegNum(8,0);>
        LetRegNum(9,        Loop(!'IfNum(             ''LetRegNum(8,        ReadFile('        OpenOutput('          WrL('---------           WrS('        CloseOutput;>
        OpenOutput('          WrS('0'); >
        CloseOutput;>
       ",>
      !"OpenOutput('          WrL('************************** worklog *****************************');>
          WrL('**************************           WrL('--Opened-------------Closed-------Uptime----------Subject-------');>
          WrL('----------------------------------------------------------------');>
          WrS('        CloseOutput;>
        IfNum('              !'LetRegNum(3,        LetRegNum(8,31);>
        IfNum('        IfNum('        IfNum('        IfNum('        IfNum('        ReadFile('        ReadFile('        LetRegNum(7,        LetRegNum(8,0); >
        Loop(!'IfNum(             ''LetRegNum(8,        LetRegNum(6,0); >
        Loop(!'IfNum(             ''LetRegNum(6,        LetRegNum(4,0); >
        Loop(!'IfNum(             ''LetRegNum(4,        ReadFile('        OpenOutput('          WrL('---------           WrL('****************************************************************');>
          WrL('Total:           WrL('            (approx.         CloseOutput;>
        ReadFile('        OpenOutput('          WrS('          WrL('          WrL('                  -----------------                         ------------');>
        CloseOutput;>
        ReadFile('        OpenOutput('          WrL('          WrL('----------------------------------------------------------------');>
          LetRegNum(2,0);>
          Loop(!'LetRegNum(6,0); LetRegNum(7,0);>
             FindInString(''             IfOK(>
              !''ExtractByIndex(9,||                 LetRegNum(4,0);>
                 Loop(!||>
                    SetOK(1);>
                    FindInString(`                    IfOK(!`>
                        ReplaceInString(``                        ExtractByIndex(8,``                        LetRegNum(7,``                        ExtractByIndex(8, ``                        LetRegNum(7,                        LetRegNum(6,                       `Stop;`);>
                 ||);>
                 LetRegNum(8,0,2);>
                 Loop(!||>
                     IfNum(                       `LetRegNum(8,                 LetRegNum(7,                 WrL(||               ''Stop;'');>
          ');>
        CloseOutput;>
        OpenOutput('          WrS('0'); >
        CloseOutput;>
        OpenOutput('          WrS('0'); >
        CloseOutput;>
      ")>
   |>
);
Assign("wl_status","started");

LetReg(0,""); LetReg(1,""); LetReg(2,""); LetReg(3,""); LetReg(4,"");
LetReg(5,""); LetReg(6,""); LetReg(7,""); LetReg(8,""); LetReg(9,"");

StopWorking;

End;
