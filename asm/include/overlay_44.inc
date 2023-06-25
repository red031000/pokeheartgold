#include <nitro/fs/overlay.h>
#pragma once
.public ListMenuInit
.public ListMenu_ProcessInput
.public DestroyListMenu
.public CreateYesNoMenu
.public Std_CreateYesNoMenu
.public Handle2dMenuInput_DeleteOnFinish
.public Clear2dMenuWindowAndDelete
.public TextFlags_SetCanABSpeedUpPrint
.public sub_02002B50
.public sub_02002B8C
.public FontID_Alloc
.public FontID_Release
.public FontID_String_GetWidth
.public LoadFontPal1
.public FontID_String_GetCenterAlignmentX
.public sub_02003DE8
.public GF_GetCurrentPlayingBGM
.public sub_02004AD8
.public sub_02004EC4
.public GF_SndHandleSetInitialVolume
.public sub_02005448
.public GF_GetVolumeBySeqNo
.public GF_SetVolumeBySeqNo
.public GF_SndStartFadeInBGM
.public GF_SndStartFadeOutBGM
.public PlaySE
.public UnloadOverlayByID
.public HandleLoadOverlay
.public OverlayManager_CreateAndGetData
.public OverlayManager_GetData
.public OverlayManager_FreeData
.public OverlayManager_GetArgs
.public NARC_New
.public NARC_Delete
.public GfGfxLoader_LoadCharDataFromOpenNarc
.public GfGfxLoader_LoadScrnDataFromOpenNarc
.public GfGfxLoader_GXLoadPalFromOpenNarc
.public GfGfxLoader_GetCharDataFromOpenNarc
.public GfGfxLoader_GetScrnDataFromOpenNarc
.public GfGfxLoader_GetPlttDataFromOpenNarc
.public CreateSpriteResourcesHeader
.public G2dRenderer_Init
.public G2dRenderer_SetSubSurfaceCoords
.public sub_02009FE8
.public sub_0200A080
.public Create2DGfxResObjMan
.public Destroy2DGfxResObjMan
.public AddCharResObjFromOpenNarc
.public AddPlttResObjFromOpenNarc
.public AddCellOrAnimResObjFromOpenNarc
.public sub_0200A740
.public DestroySingle2DGfxResObj
.public sub_0200ADA4
.public sub_0200AE18
.public sub_0200AEB0
.public sub_0200B00C
.public sub_0200B0A8
.public sub_0200B0F8
.public OamManager_Create
.public OamManager_ApplyAndResetBuffers
.public OamManager_Free
.public sub_0200B2E0
.public sub_0200B2E8
.public NewMsgDataFromNarc
.public DestroyMsgData
.public ReadMsgDataIntoString
.public GetSpeciesName
.public MessageFormat_New
.public MessageFormat_Delete
.public BufferPlayersName
.public BufferIntegerAsString
.public BufferWiFiPlazaActivityName
.public BufferMonthNameAbbr
.public StringExpandPlaceholders
.public sub_0200E33C
.public DestroySysTask
.public LoadUserFrameGfx1
.public DrawFrameAndWindow1
.public sub_0200E5D4
.public LoadUserFrameGfx2
.public DrawFrameAndWindow2
.public ClearFrameAndWindow2
.public WaitingIcon_New
.public sub_0200F450
.public sub_0200F478
.public BeginNormalPaletteFade
.public IsPaletteFadeFinished
.public SetMasterBrightnessNeutral
.public sub_0200FBF4
.public sub_02013534
.public sub_020135AC
.public sub_020136B4
.public sub_020137C0
.public sub_02013910
.public sub_02013938
.public sub_02013948
.public sub_02013950
.public sub_020139C8
.public IsNighttime
.public ListMenuItems_New
.public ListMenuItems_Delete
.public ListMenuItems_AppendFromMsgData
.public ListMenuItems_AddItem
.public sub_0201660C
.public sub_02016624
.public sub_020166FC
.public sub_020168F4
.public sub_020169F4
.public Main_SetVBlankIntrCB
.public HBlankInterruptDisable
.public SetKeyRepeatTimers
.public CreateHeap
.public DestroyHeap
.public FreeToHeap
.public BgConfig_Alloc
.public SetBothScreensModesAndDisable
.public InitBgFromTemplate
.public FreeBgTilemapBuffer
.public SetBgPriority
.public BgSetPosTextAndCommit
.public BG_LoadScreenTilemapData
.public BG_ClearCharDataRange
.public BG_SetMaskColor
.public CopyToBgTilemapRect
.public FillBgTilemapRect
.public BgTilemapRectChangePalette
.public BgClearTilemapBufferAndCommit
.public InitWindow
.public WindowIsInUse
.public AddWindowParameterized
.public AddTextWindowTopLeftCorner
.public RemoveWindow
.public ScheduleWindowCopyToVram
.public ClearWindowTilemapAndScheduleTransfer
.public FillWindowPixelBuffer
.public BlitBitmapRectToWindow
.public FillWindowPixelRect
.public SetWindowPaletteNum
.public BgConfig_HandleScheduledScrollAndTransferOps
.public ScheduleBgTilemapBufferTransfer
.public GF_SinDegNoWrap
.public MTRandom
.public TextPrinterCheckActive
.public sub_020200A0
.public AddTextPrinterParameterized
.public AddTextPrinterParameterized2
.public GF_CreateVramTransferManager
.public GF_DestroyVramTransferManager
.public GF_CreateNewVramTransferTask
.public GF_RunVramTransferTasks
.public sub_02021148
.public sub_02021238
.public sub_020215C0
.public sub_0202168C
.public sub_020216C8
.public sub_02021AC8
.public sub_02021B5C
.public sub_02022588
.public sub_02022608
.public sub_02022638
.public GX_SetBanks
.public GX_DisableEngineALayers
.public GX_EngineAToggleLayers
.public GX_DisableEngineBLayers
.public GX_EngineBToggleLayers
.public GX_SwapDisplay
.public sub_02024504
.public sub_0202457C
.public CreateSprite
.public Sprite_Delete
.public sub_020247D4
.public Set2dSpriteVisibleFlag
.public Set2dSpriteAnimActiveFlag
.public Set2dSpriteAnimSeqNo
.public sub_020249A8
.public sub_020249B0
.public sub_020249D4
.public sub_020249F8
.public sub_02024ADC
.public System_GetTouchNew
.public GF_AssertFail
.public String_New
.public String_Delete
.public CopyU16ArrayToString
.public sub_02026C44
.public sub_02026CAC
.public sub_02026CC4
.public SaveArray_Get
.public Save_ClearStatusFlags
.public Save_PrepareForAsyncWrite
.public Save_WriteFileAsync
.public Save_PlayerData_GetProfileAddr
.public Save_PlayerData_GetOptionsAddr
.public PlayerProfile_New
.public Save_Profile_PlayerName_Set
.public PlayerProfile_GetPlayerName_NewString
.public PlayerProfile_GetTrainerID_VisibleHalf
.public PlayerProfile_GetTrainerGender
.public PlayerProfile_GetAvatar
.public PlayerProfile_GetVersion
.public PlayerProfile_GetLanguage
.public Pokedex_GetNatDexFlag
.public Save_Pokedex_Get
.public Options_GetTextFrameDelay
.public Options_GetFrame
.public sub_0202C03C
.public sub_0202C08C
.public sub_0202C090
.public sub_0202C190
.public sub_0202C254
.public sub_0202C298
.public sub_0202C2F8
.public sub_0202C318
.public sub_0202C46C
.public sub_0202C4B0
.public sub_0202C6F4
.public sub_0202CA44
.public sub_0202CA8C
.public sub_0202CA90
.public sub_0203107C
.public sub_020310BC
.public sub_02031188
.public sub_02031710
.public sub_02034354
.public sub_020343E4
.public sub_02034420
.public sub_02034434
.public sub_02034638
.public sub_020346D4
.public sub_020346E8
.public sub_02034714
.public sub_02034730
.public sub_02034750
.public sub_0203476C
.public sub_02034780
.public sub_020347A0
.public sub_02034818
.public sub_02034870
.public sub_02034DB8
.public sub_02037030
.public sub_020373B4
.public sub_02037454
.public sub_0203769C
.public sub_02037824
.public sub_02037880
.public sub_020378E4
.public sub_020379A0
.public sub_02037AC0
.public sub_02037B38
.public sub_02037BEC
.public sub_02037C0C
.public sub_02037C44
.public sub_02037D78
.public sub_02039080
.public sub_020390C4
.public sub_02039264
.public sub_02039274
.public sub_020392A0
.public sub_020392D8
.public sub_02039330
.public sub_02039358
.public sub_02039378
.public sub_020393B4
.public sub_020393C8
.public sub_020396FC
.public sub_020398C8
.public sub_020398D4
.public sub_02039998
.public sub_02039AF8
.public sub_02039B18
.public sub_02039B58
.public sub_02039B7C
.public sub_02039E9C
.public sub_02039FD8
.public sub_0203A1C4
.public sub_0203A880
.public Save_VarsFlags_Get
.public Save_VarsFlags_FlypointFlagAction
.public GetMonData
.public GetPartyCount
.public GetPartyMonByIndex
.public SaveArray_PlayerParty_Get
.public sub_02078D24
.public LoadDwcOverlay
.public UnloadDwcOverlay
.public sub_020971F8
.public sub_02097214
.public DWC_CheckHasProfile
.public DWC_CheckValidConsole
.public NNS_G2dInitOamManagerModule
.public GX_LoadBGPltt
.public GXS_LoadBGPltt
.public DC_FlushRange
.public MIi_CpuCopy16
.public MI_CpuFill8
.public memcpy
.public memset
.public memcmp
.public _ll_mul
.public _s32_div_f
.public _u32_div_f
.public gSystem
.public ov00_021E5CA0
.public ov00_021E5CBC
.public ov00_021E69A8
.public ov00_021E6A4C
.public ov00_021E6A70
.public ov00_021E6CCC
.public ov00_021E6D60
.public ov00_021E6D68
.public ov00_021E6EBC
.public ov00_021E7078
.public ov00_021E7080
.public ov00_021E709C
.public ov00_021E70B8
.public ov00_021E70F4
.public ov00_021E7130
.public ov00_021E714C
.public ov00_021E7220
.public ov00_021E7314
.public ov00_021E7328
.public ov00_021EDB1C
.public ov42_02227EE0
.public ov42_02227F28
.public ov42_02227F40
.public ov42_02227F44
.public ov42_02227F48
.public ov42_02227FDC
.public ov42_02228010
.public ov42_02228050
.public ov42_02228068
.public ov42_0222807C
.public ov42_022280B8
.public ov42_02228100
.public ov42_02228188
.public ov42_02228270
.public ov42_022282A4
.public ov42_022282DC
.public ov42_022283BC
.public ov42_02228C80
.public ov42_02228EDC
.public ov42_02228F24
.public ov42_02228F94
.public ov42_02228FE0
.public ov42_02229010
.public ov42_0222901C
.public ov42_02229028
.public ov42_0222903C
.public ov42_022290C4
.public ov42_022290DC
.public ov42_0222919C
.public ov42_022291A0
.public ov42_022291AC
.public ov42_022291B8
.public ov42_022291D8
.public ov42_022291F4
.public ov42_02229200
.public ov42_0222920C
.public ov42_02229218
.public ov42_02229258
.public ov42_02229358
.public ov42_02229394
.public ov42_022293B8
.public ov42_0222940C
.public ov42_02229420
.public ov42_02229A40
.public ov42_02229A78
.public ov42_02229A8C
.public ov42_02229AC8
.public ov44_0222A4B4
.public ov44_0222A60C
.public ov44_0222A758
.public ov44_02232EA8
.public ov44_02232F64
.public ov44_022330A8
.public ov44_02233100
.public ov44_02233160
.public ov44_0223317C