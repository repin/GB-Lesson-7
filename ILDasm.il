
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern Newtonsoft.Json
{
  .publickeytoken = (30 AD 4F E6 B2 A6 AE ED )                         // 0.O.....
  .ver 13:0:0:0
}
.assembly ConsoleApp1
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- Следующий настраиваемый атрибут добавлен автоматически, не следует отменять преобразование в комментарий -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0B 43 6F 6E 73 6F 6C 65 41 70 70 31 00 00 ) // ...ConsoleApp1..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0B 43 6F 6E 73 6F 6C 65 41 70 70 31 00 00 ) // ...ConsoleApp1..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  20 32 30 32 31 00 00 )                            //  2021..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 66 36 32 35 37 34 37 63 2D 66 31 36 35   // ..$f625747c-f165
                                                                                                  2D 34 35 37 32 2D 61 65 34 39 2D 30 63 61 62 63   // -4572-ae49-0cabc
                                                                                                  38 31 32 63 30 65 39 00 00 )                      // 812c0e9..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 37 2E 32 01   // ,Version=v4.7.2.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 37 2E 32 )          // amework 4.7.2
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module ConsoleApp1.exe
// MVID: {51A667C4-04AB-4219-A5D3-D47DC3304B8A}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00020003    //  ILONLY 32BITPREFERRED
// Image base: 0x07110000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit myfirstapplication.Program
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Размер кода:       118 (0x76)
    .maxstack  2
    .locals init ([0] class myfirstapplication.ToDo toDo,
             [1] bool V_1,
             [2] string json,
             [3] string resume,
             [4] bool V_4,
             [5] string jsonOut,
             [6] bool V_6)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  newobj     instance void myfirstapplication.ToDo::.ctor()
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  callvirt   instance bool myfirstapplication.ToDo::get_fileExist()
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  brfalse.s  IL_0026

    IL_0012:  nop
    IL_0013:  ldstr      "ToDo.json"
    IL_0018:  call       string [mscorlib]System.IO.File::ReadAllText(string)
    IL_001d:  stloc.2
    IL_001e:  ldloc.2
    IL_001f:  call       !!0 [Newtonsoft.Json]Newtonsoft.Json.JsonConvert::DeserializeObject<class myfirstapplication.ToDo>(string)
    IL_0024:  stloc.0
    IL_0025:  nop
    IL_0026:  ldloc.0
    IL_0027:  callvirt   instance void myfirstapplication.ToDo::Hello()
    IL_002c:  nop
    IL_002d:  br.s       IL_006f

    IL_002f:  nop
    IL_0030:  ldloc.0
    IL_0031:  call       string [mscorlib]System.Console::ReadLine()
    IL_0036:  callvirt   instance string myfirstapplication.ToDo::Command(string)
    IL_003b:  stloc.3
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance bool myfirstapplication.ToDo::get_exit()
    IL_0042:  stloc.s    V_4
    IL_0044:  ldloc.s    V_4
    IL_0046:  brfalse.s  IL_006e

    IL_0048:  nop
    IL_0049:  ldloc.0
    IL_004a:  call       string [Newtonsoft.Json]Newtonsoft.Json.JsonConvert::SerializeObject(object)
    IL_004f:  stloc.s    jsonOut
    IL_0051:  ldstr      "ToDo.json"
    IL_0056:  ldloc.s    jsonOut
    IL_0058:  call       void [mscorlib]System.IO.File::WriteAllText(string,
                                                                     string)
    IL_005d:  nop
    IL_005e:  ldloc.s    jsonOut
    IL_0060:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0065:  nop
    IL_0066:  call       string [mscorlib]System.Console::ReadLine()
    IL_006b:  pop
    IL_006c:  br.s       IL_0074

    IL_006e:  nop
    IL_006f:  ldc.i4.1
    IL_0070:  stloc.s    V_6
    IL_0072:  br.s       IL_002f

    IL_0074:  nop
    IL_0075:  ret
  } // end of method Program::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

} // end of class myfirstapplication.Program

.class public auto ansi beforefieldinit myfirstapplication.ToDo
       extends [mscorlib]System.Object
{
  .field public string[] title
  .field public string[] isDone
  .field private bool existFile
  .field private bool '<exit>k__BackingField'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance bool 
          get_exit() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool myfirstapplication.ToDo::'<exit>k__BackingField'
    IL_0006:  ret
  } // end of method ToDo::get_exit

  .method public hidebysig specialname instance void 
          set_exit(bool 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Размер кода:       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool myfirstapplication.ToDo::'<exit>k__BackingField'
    IL_0007:  ret
  } // end of method ToDo::set_exit

  .method public hidebysig specialname instance bool 
          get_fileExist() cil managed
  {
    // Размер кода:       12 (0xc)
    .maxstack  1
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool myfirstapplication.ToDo::existFile
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method ToDo::get_fileExist

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Размер кода:       58 (0x3a)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      bool myfirstapplication.ToDo::existFile
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [mscorlib]System.Object::.ctor()
    IL_000d:  nop
    IL_000e:  nop
    IL_000f:  ldarg.0
    IL_0010:  ldc.i4.0
    IL_0011:  call       instance void myfirstapplication.ToDo::set_exit(bool)
    IL_0016:  nop
    IL_0017:  ldstr      "ToDo.json"
    IL_001c:  call       bool [mscorlib]System.IO.File::Exists(string)
    IL_0021:  stloc.0
    IL_0022:  ldloc.0
    IL_0023:  brfalse.s  IL_0030

    IL_0025:  nop
    IL_0026:  ldarg.0
    IL_0027:  ldc.i4.1
    IL_0028:  stfld      bool myfirstapplication.ToDo::existFile
    IL_002d:  nop
    IL_002e:  br.s       IL_0039

    IL_0030:  nop
    IL_0031:  ldarg.0
    IL_0032:  ldc.i4.0
    IL_0033:  stfld      bool myfirstapplication.ToDo::existFile
    IL_0038:  nop
    IL_0039:  ret
  } // end of method ToDo::.ctor

  .method public hidebysig instance void 
          Hello() cil managed
  {
    // Размер кода:       81 (0x51)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (14 04 3E 04 31 04 40 04 4B 04 39 04 20 00 34 04   // ..>.1.@.K.9. .4.
                                    35 04 3D 04 4C 04 2E 00 )                         // 5.=.L...
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      bytearray (12 04 30 04 41 04 20 00 3F 04 40 04 38 04 32 04   // ..0.A. .?.@.8.2.
                                    35 04 42 04 41 04 42 04 32 04 43 04 35 04 42 04   // 5.B.A.B.2.C.5.B.
                                    20 00 3F 04 3B 04 30 04 3D 04 38 04 40 04 3E 04   //  .?.;.0.=.8.@.>.
                                    32 04 49 04 38 04 3A 04 20 00 37 04 30 04 34 04   // 2.I.8.:. .7.0.4.
                                    30 04 47 04 )                                     // 0.G.
    IL_0011:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0016:  nop
    IL_0017:  ldarg.0
    IL_0018:  call       instance bool myfirstapplication.ToDo::get_fileExist()
    IL_001d:  stloc.0
    IL_001e:  ldloc.0
    IL_001f:  brfalse.s  IL_0030

    IL_0021:  nop
    IL_0022:  ldstr      bytearray (12 04 20 00 3F 04 3B 04 30 04 3D 04 38 04 40 04   // .. .?.;.0.=.8.@.
                                    3E 04 32 04 49 04 38 04 3A 04 20 00 3F 04 3E 04   // >.2.I.8.:. .?.>.
                                    34 04 33 04 40 04 43 04 36 04 35 04 3D 04 4B 04   // 4.3.@.C.6.5.=.K.
                                    20 00 42 04 35 04 3A 04 43 04 49 04 38 04 35 04   //  .B.5.:.C.I.8.5.
                                    20 00 37 04 30 04 34 04 30 04 47 04 38 04 )       //  .7.0.4.0.G.8.
    IL_0027:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_002c:  nop
    IL_002d:  nop
    IL_002e:  br.s       IL_003d

    IL_0030:  nop
    IL_0031:  ldstr      bytearray (1D 04 30 04 47 04 3D 04 35 04 3C 04 20 00 3F 04   // ..0.G.=.5.<. .?.
                                    3B 04 30 04 3D 04 38 04 40 04 3E 04 32 04 49 04   // ;.0.=.8.@.>.2.I.
                                    38 04 3A 04 20 00 41 04 20 00 3D 04 43 04 3B 04   // 8.:. .A. .=.C.;.
                                    4F 04 )                                           // O.
    IL_0036:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_003b:  nop
    IL_003c:  nop
    IL_003d:  ldstr      bytearray (14 04 3B 04 4F 04 20 00 3F 04 3E 04 3B 04 43 04   // ..;.O. .?.>.;.C.
                                    47 04 35 04 3D 04 38 04 4F 04 20 00 41 04 3F 04   // G.5.=.8.O. .A.?.
                                    38 04 41 04 3A 04 30 04 20 00 3A 04 3E 04 3C 04   // 8.A.:.0. .:.>.<.
                                    30 04 3D 04 34 04 20 00 32 04 32 04 35 04 34 04   // 0.=.4. .2.2.5.4.
                                    38 04 42 04 35 04 20 00 22 00 48 00 45 00 4C 00   // 8.B.5. .".H.E.L.
                                    50 00 22 00 )                                     // P.".
    IL_0042:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0047:  nop
    IL_0048:  ldarg.0
    IL_0049:  ldc.i4.0
    IL_004a:  call       instance void myfirstapplication.ToDo::set_exit(bool)
    IL_004f:  nop
    IL_0050:  ret
  } // end of method ToDo::Hello

  .method public hidebysig instance string 
          Command(string command) cil managed
  {
    // Размер кода:       186 (0xba)
    .maxstack  2
    .locals init ([0] string V_0,
             [1] string V_1,
             [2] string V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  stloc.1
    IL_0003:  ldloc.1
    IL_0004:  stloc.0
    IL_0005:  ldloc.0
    IL_0006:  ldstr      "HELP"
    IL_000b:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0010:  brtrue.s   IL_0055

    IL_0012:  ldloc.0
    IL_0013:  ldstr      "ADD"
    IL_0018:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_001d:  brtrue.s   IL_0064

    IL_001f:  ldloc.0
    IL_0020:  ldstr      "PRINT"
    IL_0025:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_002a:  brtrue.s   IL_0073

    IL_002c:  ldloc.0
    IL_002d:  ldstr      "DELETE"
    IL_0032:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0037:  brtrue.s   IL_0082

    IL_0039:  ldloc.0
    IL_003a:  ldstr      "CHECK"
    IL_003f:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0044:  brtrue.s   IL_0091

    IL_0046:  ldloc.0
    IL_0047:  ldstr      "EXIT"
    IL_004c:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0051:  brtrue.s   IL_00a0

    IL_0053:  br.s       IL_00b0

    IL_0055:  ldarg.0
    IL_0056:  call       instance void myfirstapplication.ToDo::HelpPrint()
    IL_005b:  nop
    IL_005c:  ldstr      "true"
    IL_0061:  stloc.2
    IL_0062:  br.s       IL_00b8

    IL_0064:  ldarg.0
    IL_0065:  call       instance void myfirstapplication.ToDo::AddTask()
    IL_006a:  nop
    IL_006b:  ldstr      "true"
    IL_0070:  stloc.2
    IL_0071:  br.s       IL_00b8

    IL_0073:  ldarg.0
    IL_0074:  call       instance void myfirstapplication.ToDo::PrintTaskCs()
    IL_0079:  nop
    IL_007a:  ldstr      "true"
    IL_007f:  stloc.2
    IL_0080:  br.s       IL_00b8

    IL_0082:  ldarg.0
    IL_0083:  call       instance void myfirstapplication.ToDo::DeleteTask()
    IL_0088:  nop
    IL_0089:  ldstr      "true"
    IL_008e:  stloc.2
    IL_008f:  br.s       IL_00b8

    IL_0091:  ldarg.0
    IL_0092:  call       instance void myfirstapplication.ToDo::ChekTask()
    IL_0097:  nop
    IL_0098:  ldstr      "true"
    IL_009d:  stloc.2
    IL_009e:  br.s       IL_00b8

    IL_00a0:  ldarg.0
    IL_00a1:  ldc.i4.1
    IL_00a2:  call       instance void myfirstapplication.ToDo::set_exit(bool)
    IL_00a7:  nop
    IL_00a8:  ldstr      "true"
    IL_00ad:  stloc.2
    IL_00ae:  br.s       IL_00b8

    IL_00b0:  ldstr      "true"
    IL_00b5:  stloc.2
    IL_00b6:  br.s       IL_00b8

    IL_00b8:  ldloc.2
    IL_00b9:  ret
  } // end of method ToDo::Command

  .method private hidebysig instance void 
          ChekTask() cil managed
  {
    // Размер кода:       78 (0x4e)
    .maxstack  3
    .locals init ([0] int32 nTask,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (12 04 32 04 35 04 34 04 38 04 42 04 35 04 20 00   // ..2.5.4.8.B.5. .
                                    3D 04 3E 04 3C 04 35 04 40 04 20 00 32 04 4B 04   // =.>.<.5.@. .2.K.
                                    3F 04 3E 04 3B 04 3D 04 35 04 3D 04 3D 04 3E 04   // ?.>.;.=.5.=.=.>.
                                    39 04 20 00 37 04 30 04 34 04 30 04 47 04 38 04 ) // 9. .7.0.4.0.G.8.
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  call       string [mscorlib]System.Console::ReadLine()
    IL_0011:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_0016:  stloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      string[] myfirstapplication.ToDo::isDone
    IL_001d:  ldloc.0
    IL_001e:  ldelem.ref
    IL_001f:  ldstr      "[X]"
    IL_0024:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  brfalse.s  IL_003e

    IL_002d:  nop
    IL_002e:  ldarg.0
    IL_002f:  ldfld      string[] myfirstapplication.ToDo::isDone
    IL_0034:  ldloc.0
    IL_0035:  ldstr      "   "
    IL_003a:  stelem.ref
    IL_003b:  nop
    IL_003c:  br.s       IL_004d

    IL_003e:  nop
    IL_003f:  ldarg.0
    IL_0040:  ldfld      string[] myfirstapplication.ToDo::isDone
    IL_0045:  ldloc.0
    IL_0046:  ldstr      "[X]"
    IL_004b:  stelem.ref
    IL_004c:  nop
    IL_004d:  ret
  } // end of method ToDo::ChekTask

  .method public hidebysig instance void 
          DeleteTask() cil managed
  {
    // Размер кода:       69 (0x45)
    .maxstack  4
    .locals init ([0] int32 nTask)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (23 04 3A 04 30 04 36 04 38 04 42 04 35 04 20 00   // #.:.0.6.8.B.5. .
                                    3D 04 3E 04 3C 04 35 04 40 04 20 00 37 04 30 04   // =.>.<.5.@. .7.0.
                                    34 04 30 04 47 04 38 04 2C 00 20 00 3A 04 3E 04   // 4.0.G.8.,. .:.>.
                                    42 04 3E 04 40 04 43 04 4E 04 20 00 32 04 4B 04   // B.>.@.C.N. .2.K.
                                    20 00 45 04 3E 04 42 04 38 04 42 04 35 04 20 00   //  .E.>.B.8.B.5. .
                                    43 04 34 04 30 04 3B 04 38 04 42 04 4C 04 )       // C.4.0.;.8.B.L.
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  call       string [mscorlib]System.Console::ReadLine()
    IL_0011:  call       int32 [mscorlib]System.Convert::ToInt32(string)
    IL_0016:  stloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldarg.0
    IL_0019:  ldloc.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      string[] myfirstapplication.ToDo::title
    IL_0020:  call       instance string[] myfirstapplication.ToDo::DeletePosMassiveString(int32,
                                                                                           string[])
    IL_0025:  stfld      string[] myfirstapplication.ToDo::title
    IL_002a:  ldarg.0
    IL_002b:  ldarg.0
    IL_002c:  ldloc.0
    IL_002d:  ldarg.0
    IL_002e:  ldfld      string[] myfirstapplication.ToDo::isDone
    IL_0033:  call       instance string[] myfirstapplication.ToDo::DeletePosMassiveString(int32,
                                                                                           string[])
    IL_0038:  stfld      string[] myfirstapplication.ToDo::isDone
    IL_003d:  ldarg.0
    IL_003e:  call       instance void myfirstapplication.ToDo::PrintTaskCs()
    IL_0043:  nop
    IL_0044:  ret
  } // end of method ToDo::DeleteTask

  .method private hidebysig instance string[] 
          DeletePosMassiveString(int32 n,
                                 string[] 'array') cil managed
  {
    // Размер кода:       86 (0x56)
    .maxstack  4
    .locals init ([0] int32 k,
             [1] int32 i,
             [2] int32 o,
             [3] string[] arrayp,
             [4] int32 z,
             [5] bool V_5,
             [6] bool V_6,
             [7] string[] V_7)
    IL_0000:  nop
    IL_0001:  ldarg.2
    IL_0002:  ldlen
    IL_0003:  conv.i4
    IL_0004:  ldc.i4.1
    IL_0005:  sub
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.2
    IL_000b:  ldloc.0
    IL_000c:  newarr     [mscorlib]System.String
    IL_0011:  stloc.3
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.s    z
    IL_0015:  br.s       IL_0040

    IL_0017:  nop
    IL_0018:  ldloc.2
    IL_0019:  ldarg.1
    IL_001a:  ceq
    IL_001c:  stloc.s    V_5
    IL_001e:  ldloc.s    V_5
    IL_0020:  brfalse.s  IL_0029

    IL_0022:  nop
    IL_0023:  ldloc.2
    IL_0024:  ldc.i4.1
    IL_0025:  add
    IL_0026:  stloc.2
    IL_0027:  br.s       IL_003a

    IL_0029:  nop
    IL_002a:  ldloc.3
    IL_002b:  ldloc.1
    IL_002c:  ldarg.2
    IL_002d:  ldloc.2
    IL_002e:  ldelem.ref
    IL_002f:  stelem.ref
    IL_0030:  ldloc.1
    IL_0031:  ldc.i4.1
    IL_0032:  add
    IL_0033:  stloc.1
    IL_0034:  ldloc.2
    IL_0035:  ldc.i4.1
    IL_0036:  add
    IL_0037:  stloc.2
    IL_0038:  nop
    IL_0039:  nop
    IL_003a:  ldloc.s    z
    IL_003c:  ldc.i4.1
    IL_003d:  add
    IL_003e:  stloc.s    z
    IL_0040:  ldloc.s    z
    IL_0042:  ldloc.0
    IL_0043:  cgt
    IL_0045:  ldc.i4.0
    IL_0046:  ceq
    IL_0048:  stloc.s    V_6
    IL_004a:  ldloc.s    V_6
    IL_004c:  brtrue.s   IL_0017

    IL_004e:  ldloc.3
    IL_004f:  stloc.s    V_7
    IL_0051:  br.s       IL_0053

    IL_0053:  ldloc.s    V_7
    IL_0055:  ret
  } // end of method ToDo::DeletePosMassiveString

  .method public hidebysig instance void 
          PrintTaskCs() cil managed
  {
    // Размер кода:       76 (0x4c)
    .maxstack  5
    .locals init ([0] int32 i,
             [1] bool V_1)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (21 04 3F 04 38 04 41 04 3E 04 3A 04 20 00 42 04   // !.?.8.A.>.:. .B.
                                    35 04 3A 04 43 04 49 04 38 04 45 04 20 00 37 04   // 5.:.C.I.8.E. .7.
                                    30 04 34 04 30 04 47 04 3A 00 )                   // 0.4.0.G.:.
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_003c

    IL_0010:  nop
    IL_0011:  ldstr      "{0} {1} {2}"
    IL_0016:  ldloc.0
    IL_0017:  box        [mscorlib]System.Int32
    IL_001c:  ldarg.0
    IL_001d:  ldfld      string[] myfirstapplication.ToDo::isDone
    IL_0022:  ldloc.0
    IL_0023:  ldelem.ref
    IL_0024:  ldarg.0
    IL_0025:  ldfld      string[] myfirstapplication.ToDo::title
    IL_002a:  ldloc.0
    IL_002b:  ldelem.ref
    IL_002c:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object,
                                                                object)
    IL_0031:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0036:  nop
    IL_0037:  nop
    IL_0038:  ldloc.0
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stloc.0
    IL_003c:  ldloc.0
    IL_003d:  ldarg.0
    IL_003e:  ldfld      string[] myfirstapplication.ToDo::title
    IL_0043:  ldlen
    IL_0044:  conv.i4
    IL_0045:  clt
    IL_0047:  stloc.1
    IL_0048:  ldloc.1
    IL_0049:  brtrue.s   IL_0010

    IL_004b:  ret
  } // end of method ToDo::PrintTaskCs

  .method public hidebysig instance void 
          AddTask() cil managed
  {
    // Размер кода:       61 (0x3d)
    .maxstack  4
    .locals init ([0] string inputtxt)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (12 04 32 04 35 04 34 04 38 04 42 04 35 04 20 00   // ..2.5.4.8.B.5. .
                                    37 04 30 04 34 04 30 04 47 04 43 04 2C 00 20 00   // 7.0.4.0.G.C.,. .
                                    3A 04 3E 04 42 04 3E 04 40 04 43 04 4E 04 20 00   // :.>.B.>.@.C.N. .
                                    3D 04 35 04 3E 04 31 04 45 04 3E 04 34 04 38 04   // =.5.>.1.E.>.4.8.
                                    3C 04 3E 04 20 00 34 04 3E 04 31 04 30 04 32 04   // <.>. .4.>.1.0.2.
                                    38 04 42 04 4C 04 3A 00 )                         // 8.B.L.:.
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  call       string [mscorlib]System.Console::ReadLine()
    IL_0011:  stloc.0
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  ldarg.0
    IL_0015:  ldfld      string[] myfirstapplication.ToDo::title
    IL_001a:  ldloc.0
    IL_001b:  call       instance string[] myfirstapplication.ToDo::AddStringInMassive(string[],
                                                                                       string)
    IL_0020:  stfld      string[] myfirstapplication.ToDo::title
    IL_0025:  ldarg.0
    IL_0026:  ldarg.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      string[] myfirstapplication.ToDo::isDone
    IL_002d:  ldstr      "   "
    IL_0032:  call       instance string[] myfirstapplication.ToDo::AddStringInMassive(string[],
                                                                                       string)
    IL_0037:  stfld      string[] myfirstapplication.ToDo::isDone
    IL_003c:  ret
  } // end of method ToDo::AddTask

  .method private hidebysig instance string[] 
          AddStringInMassive(string[] 'array',
                             string txt) cil managed
  {
    // Размер кода:       106 (0x6a)
    .maxstack  4
    .locals init ([0] int32 k,
             [1] string[] arrayp,
             [2] bool V_2,
             [3] string[] V_3,
             [4] int32 i,
             [5] bool V_5,
             [6] bool V_6)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldnull
    IL_0003:  ceq
    IL_0005:  stloc.2
    IL_0006:  ldloc.2
    IL_0007:  brfalse.s  IL_001c

    IL_0009:  nop
    IL_000a:  ldc.i4.0
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.1
    IL_000d:  newarr     [mscorlib]System.String
    IL_0012:  starg.s    'array'
    IL_0014:  ldarg.1
    IL_0015:  ldc.i4.0
    IL_0016:  ldarg.2
    IL_0017:  stelem.ref
    IL_0018:  ldarg.1
    IL_0019:  stloc.3
    IL_001a:  br.s       IL_0068

    IL_001c:  nop
    IL_001d:  ldarg.1
    IL_001e:  ldlen
    IL_001f:  conv.i4
    IL_0020:  stloc.0
    IL_0021:  nop
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.1
    IL_0024:  add
    IL_0025:  newarr     [mscorlib]System.String
    IL_002a:  stloc.1
    IL_002b:  ldc.i4.0
    IL_002c:  stloc.s    i
    IL_002e:  br.s       IL_0056

    IL_0030:  nop
    IL_0031:  ldloc.s    i
    IL_0033:  ldloc.0
    IL_0034:  clt
    IL_0036:  stloc.s    V_5
    IL_0038:  ldloc.s    V_5
    IL_003a:  brfalse.s  IL_0048

    IL_003c:  nop
    IL_003d:  ldloc.1
    IL_003e:  ldloc.s    i
    IL_0040:  ldarg.1
    IL_0041:  ldloc.s    i
    IL_0043:  ldelem.ref
    IL_0044:  stelem.ref
    IL_0045:  nop
    IL_0046:  br.s       IL_004f

    IL_0048:  nop
    IL_0049:  ldloc.1
    IL_004a:  ldloc.s    i
    IL_004c:  ldarg.2
    IL_004d:  stelem.ref
    IL_004e:  nop
    IL_004f:  nop
    IL_0050:  ldloc.s    i
    IL_0052:  ldc.i4.1
    IL_0053:  add
    IL_0054:  stloc.s    i
    IL_0056:  ldloc.s    i
    IL_0058:  ldloc.0
    IL_0059:  cgt
    IL_005b:  ldc.i4.0
    IL_005c:  ceq
    IL_005e:  stloc.s    V_6
    IL_0060:  ldloc.s    V_6
    IL_0062:  brtrue.s   IL_0030

    IL_0064:  ldloc.1
    IL_0065:  stloc.3
    IL_0066:  br.s       IL_0068

    IL_0068:  ldloc.3
    IL_0069:  ret
  } // end of method ToDo::AddStringInMassive

  .method public hidebysig instance void 
          HelpPrint() cil managed
  {
    // Размер кода:       137 (0x89)
    .maxstack  4
    IL_0000:  nop
    IL_0001:  ldc.i4.s   14
    IL_0003:  newarr     [mscorlib]System.String
    IL_0008:  dup
    IL_0009:  ldc.i4.0
    IL_000a:  ldstr      bytearray (21 04 3F 04 40 04 30 04 32 04 3A 04 30 04 20 00   // !.?.@.0.2.:.0. .
                                    3F 04 3E 04 20 00 3A 04 3E 04 3C 04 30 04 3D 04   // ?.>. .:.>.<.0.=.
                                    34 04 30 04 3C 04 20 00 3F 04 3B 04 30 04 3D 04   // 4.0.<. .?.;.0.=.
                                    38 04 40 04 3E 04 32 04 49 04 38 04 3A 04 30 04   // 8.@.>.2.I.8.:.0.
                                    20 00 37 04 30 04 3B 04 30 04 47 04 3A 00 )       //  .7.0.;.0.G.:.
    IL_000f:  stelem.ref
    IL_0010:  dup
    IL_0011:  ldc.i4.1
    IL_0012:  call       string [mscorlib]System.Environment::get_NewLine()
    IL_0017:  stelem.ref
    IL_0018:  dup
    IL_0019:  ldc.i4.2
    IL_001a:  ldstr      bytearray (48 00 45 00 4C 00 50 00 20 00 2D 00 20 00 32 04   // H.E.L.P. .-. .2.
                                    4B 04 32 04 3E 04 34 04 20 00 41 04 3F 04 40 04   // K.2.>.4. .A.?.@.
                                    30 04 32 04 3A 04 38 04 )                         // 0.2.:.8.
    IL_001f:  stelem.ref
    IL_0020:  dup
    IL_0021:  ldc.i4.3
    IL_0022:  call       string [mscorlib]System.Environment::get_NewLine()
    IL_0027:  stelem.ref
    IL_0028:  dup
    IL_0029:  ldc.i4.4
    IL_002a:  ldstr      bytearray (41 00 44 00 44 00 20 00 2D 00 20 00 34 04 3E 04   // A.D.D. .-. .4.>.
                                    31 04 30 04 32 04 3B 04 35 04 3D 04 38 04 35 04   // 1.0.2.;.5.=.8.5.
                                    20 00 37 04 30 04 34 04 30 04 47 04 38 04 )       //  .7.0.4.0.G.8.
    IL_002f:  stelem.ref
    IL_0030:  dup
    IL_0031:  ldc.i4.5
    IL_0032:  call       string [mscorlib]System.Environment::get_NewLine()
    IL_0037:  stelem.ref
    IL_0038:  dup
    IL_0039:  ldc.i4.6
    IL_003a:  ldstr      bytearray (50 00 52 00 49 00 4E 00 54 00 20 00 2D 00 20 00   // P.R.I.N.T. .-. .
                                    32 04 4B 04 32 04 3E 04 34 04 20 00 32 04 41 04   // 2.K.2.>.4. .2.A.
                                    35 04 45 04 20 00 37 04 30 04 34 04 30 04 47 04   // 5.E. .7.0.4.0.G.
                                    20 00 32 04 20 00 3A 04 3E 04 3D 04 41 04 3E 04   //  .2. .:.>.=.A.>.
                                    3B 04 4C 04 20 00 41 04 3E 04 20 00 41 04 42 04   // ;.L. .A.>. .A.B.
                                    30 04 42 04 43 04 41 04 3E 04 3C 04 )             // 0.B.C.A.>.<.
    IL_003f:  stelem.ref
    IL_0040:  dup
    IL_0041:  ldc.i4.7
    IL_0042:  call       string [mscorlib]System.Environment::get_NewLine()
    IL_0047:  stelem.ref
    IL_0048:  dup
    IL_0049:  ldc.i4.8
    IL_004a:  ldstr      bytearray (44 00 45 00 4C 00 45 00 54 00 45 00 20 00 2D 00   // D.E.L.E.T.E. .-.
                                    20 00 43 04 34 04 30 04 3B 04 35 04 3D 04 38 04   //  .C.4.0.;.5.=.8.
                                    35 04 20 00 37 04 30 04 34 04 30 04 47 04 38 04   // 5. .7.0.4.0.G.8.
                                    20 00 38 04 37 04 20 00 41 04 3F 04 38 04 41 04   //  .8.7. .A.?.8.A.
                                    3A 04 30 04 )                                     // :.0.
    IL_004f:  stelem.ref
    IL_0050:  dup
    IL_0051:  ldc.i4.s   9
    IL_0053:  call       string [mscorlib]System.Environment::get_NewLine()
    IL_0058:  stelem.ref
    IL_0059:  dup
    IL_005a:  ldc.i4.s   10
    IL_005c:  ldstr      bytearray (43 00 48 00 45 00 43 00 4B 00 20 00 2D 00 20 00   // C.H.E.C.K. .-. .
                                    23 04 41 04 42 04 30 04 3D 04 3E 04 32 04 38 04   // #.A.B.0.=.>.2.8.
                                    42 04 4C 04 20 00 41 04 42 04 30 04 42 04 43 04   // B.L. .A.B.0.B.C.
                                    41 04 20 00 37 04 30 04 34 04 30 04 47 04 38 04   // A. .7.0.4.0.G.8.
                                    20 00 32 04 4B 04 3F 04 3E 04 3B 04 3D 04 35 04   //  .2.K.?.>.;.=.5.
                                    3D 04 3D 04 4B 04 3C 04 )                         // =.=.K.<.
    IL_0061:  stelem.ref
    IL_0062:  dup
    IL_0063:  ldc.i4.s   11
    IL_0065:  call       string [mscorlib]System.Environment::get_NewLine()
    IL_006a:  stelem.ref
    IL_006b:  dup
    IL_006c:  ldc.i4.s   12
    IL_006e:  ldstr      bytearray (45 00 58 00 49 00 54 00 20 00 2D 00 20 00 32 04   // E.X.I.T. .-. .2.
                                    4B 04 39 04 42 04 38 04 20 00 38 04 37 04 20 00   // K.9.B.8. .8.7. .
                                    3F 04 3B 04 30 04 3D 04 38 04 40 04 3E 04 32 04   // ?.;.0.=.8.@.>.2.
                                    49 04 38 04 3A 04 30 04 20 00 37 04 30 04 34 04   // I.8.:.0. .7.0.4.
                                    30 04 2C 00 20 00 32 04 3D 04 35 04 41 04 35 04   // 0.,. .2.=.5.A.5.
                                    3D 04 3D 04 4B 04 35 04 20 00 37 04 30 04 34 04   // =.=.K.5. .7.0.4.
                                    30 04 47 04 38 04 20 00 31 04 43 04 34 04 43 04   // 0.G.8. .1.C.4.C.
                                    42 04 20 00 41 04 3E 04 45 04 40 04 30 04 3D 04   // B. .A.>.E.@.0.=.
                                    35 04 3D 04 4B 04 20 00 )                         // 5.=.K. .
    IL_0073:  stelem.ref
    IL_0074:  dup
    IL_0075:  ldc.i4.s   13
    IL_0077:  call       string [mscorlib]System.Environment::get_NewLine()
    IL_007c:  stelem.ref
    IL_007d:  call       string [mscorlib]System.String::Concat(string[])
    IL_0082:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0087:  nop
    IL_0088:  ret
  } // end of method ToDo::HelpPrint

  .property instance bool exit()
  {
    .get instance bool myfirstapplication.ToDo::get_exit()
    .set instance void myfirstapplication.ToDo::set_exit(bool)
  } // end of property ToDo::exit
  .property instance bool fileExist()
  {
    .get instance bool myfirstapplication.ToDo::get_fileExist()
  } // end of property ToDo::fileExist
} // end of class myfirstapplication.ToDo


// =============================================================

// *********** ДИЗАССЕМБЛИРОВАНИЕ ЗАВЕРШЕНО ***********************
// ВНИМАНИЕ: создан файл ресурсов Win32 C:\Users\sasha\OneDrive\Documents\IL\ILDasm.res
