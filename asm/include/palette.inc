#include <nitro/fs/overlay.h>
#pragma once
.public PaletteData_Init
.public PaletteData_Free
.public PaletteData_AllocBuffers
.public PaletteData_FreeBuffers
.public PaletteData_LoadPalette
.public PaletteData_LoadFromNarc
.public PaletteData_LoadNarc
.public sub_02003220
.public sub_02003284
.public sub_020032A4
.public PaletteData_CopyPalette
.public PaletteData_GetUnfadedBuf
.public PaletteData_GetFadedBuf
.public sub_02003370
.public sub_02003474
.public sub_0200374C
.public sub_0200398C
.public sub_02003B44
.public sub_02003B50
.public sub_02003B74
.public sub_02003BA8
.public sub_02003D5C
.public sub_02003DBC
.public sub_02003DE8
.public sub_02003E5C
.public sub_02003EA4
.public sub_02003F04
.public TintPalette_CustomTone
.public sub_02003FC8
.public sub_020040AC
.public GfGfxLoader_GetPlttData
.public GfGfxLoader_GetPlttDataFromOpenNarc
.public CreateSysTask
.public DestroySysTask
.public AllocFromHeap
.public FreeToHeap
.public FreeToHeapExplicit
.public GF_AssertFail
.public sub_02026E84
.public sub_02026E94
.public sub_02026EA4
.public sub_02026EAC
.public GX_LoadBGPltt
.public GXS_LoadBGPltt
.public GX_LoadOBJPltt
.public GXS_LoadOBJPltt
.public GX_BeginLoadBGExtPltt
.public GX_LoadBGExtPltt
.public GX_EndLoadBGExtPltt
.public GX_BeginLoadOBJExtPltt
.public GX_LoadOBJExtPltt
.public GX_EndLoadOBJExtPltt
.public GXS_BeginLoadBGExtPltt
.public GXS_LoadBGExtPltt
.public GXS_EndLoadBGExtPltt
.public GXS_BeginLoadOBJExtPltt
.public GXS_LoadOBJExtPltt
.public GXS_EndLoadOBJExtPltt
.public DC_FlushRange
.public MIi_CpuClear16
.public MIi_CpuCopy16
.public MIi_CpuCopyFast
.public MI_CpuFill8
.public abs
.public memset
.public _s32_div_f