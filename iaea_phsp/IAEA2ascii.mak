# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

!IF "$(CFG)" == ""
CFG=IAEA2ascii - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to IAEA2ascii - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "IAEA2ascii - Win32 Release" && "$(CFG)" !=\
 "IAEA2ascii - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "IAEA2ascii.mak" CFG="IAEA2ascii - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "IAEA2ascii - Win32 Release" (based on\
 "Win32 (x86) Console Application")
!MESSAGE "IAEA2ascii - Win32 Debug" (based on\
 "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
RSC=rc.exe
F90=fl32.exe
CPP=cl.exe

!IF  "$(CFG)" == "IAEA2ascii - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\IAEA2ascii.exe"

CLEAN : 
	-@erase "$(INTDIR)\IAEA2ascii.obj"
	-@erase "$(INTDIR)\iaea_header.obj"
	-@erase "$(INTDIR)\iaea_phsp.obj"
	-@erase "$(INTDIR)\iaea_record.obj"
	-@erase "$(INTDIR)\utilities.obj"
	-@erase "$(OUTDIR)\IAEA2ascii.exe"

# ADD BASE F90 /Ox /c /nologo
# ADD F90 /Ox /c /nologo
F90_PROJ=/Ox /c /nologo 
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /YX /c
CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE"\
 /Fp"IAEA2ascii.pch" /YX /c 
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/IAEA2ascii.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:console /incremental:no\
 /pdb:"$(OUTDIR)/IAEA2ascii.pdb" /machine:I386 /out:"$(OUTDIR)/IAEA2ascii.exe" 
LINK32_OBJS= \
	"$(INTDIR)\IAEA2ascii.obj" \
	"$(INTDIR)\iaea_header.obj" \
	"$(INTDIR)\iaea_phsp.obj" \
	"$(INTDIR)\iaea_record.obj" \
	"$(INTDIR)\utilities.obj"

"$(OUTDIR)\IAEA2ascii.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "IAEA2ascii - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\IAEA2ascii.exe"

CLEAN : 
	-@erase "$(INTDIR)\IAEA2ascii.obj"
	-@erase "$(INTDIR)\iaea_header.obj"
	-@erase "$(INTDIR)\iaea_phsp.obj"
	-@erase "$(INTDIR)\iaea_record.obj"
	-@erase "$(INTDIR)\utilities.obj"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(OUTDIR)\IAEA2ascii.exe"
	-@erase "$(OUTDIR)\IAEA2ascii.ilk"
	-@erase "$(OUTDIR)\IAEA2ascii.pdb"

# ADD BASE F90 /Zi /c /nologo
# ADD F90 /Zi /c /nologo
F90_PROJ=/Zi /c /nologo /Fd"IAEA2ascii.pdb" 
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /YX /c
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE"\
 /Fp"IAEA2ascii.pch" /YX /c 
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/IAEA2ascii.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib /nologo /subsystem:console /incremental:yes\
 /pdb:"$(OUTDIR)/IAEA2ascii.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/IAEA2ascii.exe" 
LINK32_OBJS= \
	"$(INTDIR)\IAEA2ascii.obj" \
	"$(INTDIR)\iaea_header.obj" \
	"$(INTDIR)\iaea_phsp.obj" \
	"$(INTDIR)\iaea_record.obj" \
	"$(INTDIR)\utilities.obj"

"$(OUTDIR)\IAEA2ascii.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.for.obj:
   $(F90) $(F90_PROJ) $<  

.f.obj:
   $(F90) $(F90_PROJ) $<  

.f90.obj:
   $(F90) $(F90_PROJ) $<  

.c.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx.obj:
   $(CPP) $(CPP_PROJ) $<  

.c.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "IAEA2ascii - Win32 Release"
# Name "IAEA2ascii - Win32 Debug"

!IF  "$(CFG)" == "IAEA2ascii - Win32 Release"

!ELSEIF  "$(CFG)" == "IAEA2ascii - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\IAEA2ascii.cpp
DEP_CPP_IAEA2=\
	".\iaea_config.h"\
	".\iaea_phsp.h"\
	".\utilities.h"\
	

"$(INTDIR)\IAEA2ascii.obj" : $(SOURCE) $(DEP_CPP_IAEA2) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\iaea_header.cpp
DEP_CPP_IAEA_=\
	".\iaea_config.h"\
	".\iaea_header.h"\
	".\iaea_record.h"\
	".\utilities.h"\
	

"$(INTDIR)\iaea_header.obj" : $(SOURCE) $(DEP_CPP_IAEA_) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\iaea_phsp.cpp
DEP_CPP_IAEA_P=\
	".\iaea_config.h"\
	".\iaea_header.h"\
	".\iaea_phsp.h"\
	".\iaea_record.h"\
	".\utilities.h"\
	{$(INCLUDE)}"\sys\stat.h"\
	{$(INCLUDE)}"\sys\types.h"\
	

"$(INTDIR)\iaea_phsp.obj" : $(SOURCE) $(DEP_CPP_IAEA_P) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\iaea_record.cpp
DEP_CPP_IAEA_R=\
	".\iaea_config.h"\
	".\iaea_record.h"\
	".\utilities.h"\
	

"$(INTDIR)\iaea_record.obj" : $(SOURCE) $(DEP_CPP_IAEA_R) "$(INTDIR)"


# End Source File
################################################################################
# Begin Source File

SOURCE=.\utilities.cpp
DEP_CPP_UTILI=\
	".\utilities.h"\
	

"$(INTDIR)\utilities.obj" : $(SOURCE) $(DEP_CPP_UTILI) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################
