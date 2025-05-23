#include <nitro/fs/overlay.h>
#pragma once
.public TextPrinter_SetDownArrowBaseTile
.public TextFlags_SetCanABSpeedUpPrint
.public TextFlags_SetCanTouchSpeedUpPrint
.public TextFlags_SetAlternateDownArrow
.public TextFlags_GetIsTouchSpeedingUpPrint
.public TextFlags_SetFastForwardTouchButtonHitbox
.public TextFlags_UnsetFastForwardTouchButtonHitbox
.public FontID_Alloc
.public FontID_Release
.public FontID_String_GetWidth
.public PaletteData_LoadFromOpenNarc
.public PaletteData_PushTransparentBuffers
.public PaletteData_SetAutoTransparent
.public PaletteData_BlendPalette
.public SndRadio_StartSeq
.public SndRadio_StopSeq
.public SndRadio_CountPlayingSeq
.public GF_GetCurrentPlayingBGM
.public sub_02004EC4
.public PlayBGM
.public StopBGM
.public GF_SndStartFadeOutBGM
.public GF_SndGetFadeTimer
.public PlaySE
.public IsSEPlaying
.public PlayFanfare
.public IsFanfarePlaying
.public UnloadOverlayByID
.public HandleLoadOverlay
.public OverlayManager_CreateAndGetData
.public OverlayManager_GetData
.public OverlayManager_FreeData
.public OverlayManager_GetArgs
.public NARC_New
.public NARC_Delete
.public GfGfxLoader_GetScrnDataFromOpenNarc
.public G2dRenderer_SetSubSurfaceCoords
.public SetBlendBrightness
.public NewMsgDataFromNarc
.public DestroyMsgData
.public ReadMsgDataIntoString
.public NewString_ReadMsgData
.public MessageFormat_New_Custom
.public MessageFormat_Delete
.public BufferString
.public BufferPlayersName
.public BufferSpeciesName
.public BufferBoxMonNickname
.public BufferIntegerAsString
.public BufferItemName
.public BufferLandmarkName
.public BufferTrainerClassName
.public BufferECWord
.public BufferSafariZoneAreaName
.public StringExpandPlaceholders
.public SpriteSystem_GetRenderer
.public thunk_Sprite_Delete
.public SpriteSystem_CreateSpriteFromResourceHeader
.public SpriteManager_FindPlttResourceProxy
.public thunk_Sprite_SetPriority
.public thunk_Sprite_SetDrawPriority
.public Sprite_SetPositionXY
.public Sprite_GetPositionXY
.public SpriteManager_GetSpriteList
.public BeginNormalPaletteFade
.public IsPaletteFadeFinished
.public sub_0200FBDC
.public sub_0200FBF4
.public sub_02013534
.public sub_020135AC
.public sub_020136B4
.public sub_020137C0
.public sub_02013820
.public sub_02013850
.public sub_02013910
.public sub_02013938
.public sub_02013948
.public sub_02013950
.public sub_020139C8
.public sub_020139D0
.public GF_RTC_CopyDateTime
.public GF_RTC_CopyDate
.public GF_RTC_GetTimeOfDayWildParam
.public GF_RTC_GetTimeOfDayByHour
.public GF_RTC_GetTimeOfDayWildParamByHour
.public ListMenuItems_New
.public ListMenuItems_Delete
.public ListMenuItems_AppendFromMsgData
.public TouchscreenListMenuSpawner_Create
.public TouchscreenListMenuSpawner_Destroy
.public TouchscreenListMenu_Create
.public TouchscreenListMenu_CreateWithAlignment
.public TouchscreenListMenu_CreateWithCallback
.public TouchscreenListMenu_WasLastInputTouch
.public TouchscreenListMenu_Destroy
.public TouchscreenListMenu_HandleInput
.public Main_SetVBlankIntrCB
.public HBlankInterruptDisable
.public CreateHeap
.public DestroyHeap
.public AllocFromHeap
.public AllocFromHeapAtEnd
.public FreeToHeap
.public BgConfig_Alloc
.public SetBothScreensModesAndDisable
.public InitBgFromTemplateEx
.public InitBgFromTemplate
.public SetBgControlParam
.public FreeBgTilemapBuffer
.public SetBgPriority
.public ToggleBgLayer
.public BgSetPosTextAndCommit
.public SetBgAffine
.public BgCommitTilemapBufferToVram
.public BG_ClearCharDataRange
.public BG_LoadBlankPltt
.public CopyToBgTilemapRect
.public FillBgTilemapRect
.public BgClearTilemapBufferAndCommit
.public InitWindow
.public AddWindowParameterized
.public AddTextWindowTopLeftCorner
.public RemoveWindow
.public CopyWindowToVram
.public ScheduleWindowCopyToVram
.public ClearWindowTilemapAndCopyToVram
.public ClearWindowTilemapAndScheduleTransfer
.public FillWindowPixelBuffer
.public FillWindowPixelBufferText_AssumeTileSize32
.public FillWindowPixelRect
.public ScrollWindow
.public ScheduleBgTilemapBufferTransfer
.public DoesPixelAtScreenXYMatchPtrVal
.public LCRandom
.public MTRandom
.public TextPrinterCheckActive
.public AddTextPrinterParameterizedWithColor
.public sub_020210BC
.public sub_02021148
.public sub_02021238
.public sub_02021AC8
.public sub_02021B5C
.public GfGfx_DisableEngineAPlanes
.public GfGfx_EngineATogglePlanes
.public GfGfx_DisableEngineBPlanes
.public GfGfx_EngineBTogglePlanes
.public Sprite_SetAffineScale
.public Sprite_SetDrawFlag
.public Sprite_SetAnimActiveFlag
.public Sprite_SetAffineOverwriteMode
.public Sprite_SetAnimCtrlSeq
.public Sprite_ResetAnimCtrlState
.public Sprite_UpdateAnim
.public Sprite_SetAnimationFrame
.public Sprite_SetPriority
.public TouchscreenHitbox_FindRectAtTouchNew
.public TouchscreenHitbox_TouchNewIsIn
.public System_GetTouchHeld
.public System_GetTouchNew
.public TouchscreenHitbox_FindHitboxAtPoint
.public TouchscreenHitbox_PointIsIn
.public GF_AssertFail
.public String_New
.public String_Delete
.public String_SetEmpty
.public String_CountLines
.public String_GetLineN
.public String_RadioAddStatic
.public SaveArray_PCStorage_Get
.public Save_SysInfo_RTC_Get
.public Save_PlayerData_GetProfile
.public Save_PlayerData_GetOptionsAddr
.public Save_PlayerData_GetIGTAddr
.public PlayerProfile_GetTrainerGender
.public PlayerProfile_TestBadgeFlag
.public PlayerProfile_CountBadges
.public Save_Daycare_GetMonX
.public DaycareMon_GetBoxMon
.public Save_Daycare_HasEgg
.public Save_Daycare_Get
.public Pokedex_CountNationalDexOwned
.public Pokedex_CountNationalDexSeen
.public Pokedex_CountJohtoDexOwned
.public Pokedex_CountJohtoDexSeen
.public Pokedex_NationalDexIsComplete
.public Pokedex_JohtoDexIsComplete
.public Pokedex_CountNationalOwned_ExcludeMythical
.public Pokedex_CountJohtoOwned_ExcludeMythical
.public Pokedex_CheckMonCaughtFlag
.public Pokedex_GetNatDexFlag
.public Save_Pokedex_Get
.public Options_GetTextFrameDelay
.public Roamers_GetRand
.public Save_Roamers_Get
.public RoamerSave_OutbreakActive
.public GetRoamerIsActiveByIndex
.public Roamers_GetRoamMonStats
.public GetRoamerData
.public SaveData_GSPlayerMisc_Get
.public SaveData_GetMomsSavingsAddr
.public sub_0202EDF4
.public sub_0202EE70
.public sub_0202EE7C
.public sub_0202EE84
.public sub_0202EE98
.public sub_0202EEA4
.public sub_0202EEA8
.public sub_0202EEAC
.public sub_0202EEB4
.public GSPlayerMisc_FindEmptyGearPhonebookSlot
.public GSPlayerMisc_AllocAndCopyPhonebook
.public GSPlayerMisc_SetPhonebookFromBuffer
.public PhoneRematches_SetSeeking
.public PhoneRematches_IsSeeking
.public PhoneRematches_GiftItemIdSet
.public PhoneRematches_GiftItemIdGet
.public MomSavingsBalanceAction
.public sub_0202F240
.public sub_0202F254
.public sub_0202F274
.public sub_0202F284
.public sub_0202F340
.public sub_0202F3DC
.public sub_0202F400
.public sub_0202F4E8
.public sub_0202F500
.public sub_0202F514
.public sub_0202F53C
.public Save_SafariZone_Get
.public sub_0202F730
.public sub_0202F784
.public Save_ApricornBox_Get
.public ApricornBox_GetKurtQuantity
.public ApricornBox_GetKurtBall
.public MapMatrix_MapData_New
.public MapMatrix_MapData_Free
.public MapHeader_HasWildEncounters
.public MapHeader_GetMapSec
.public MapHeader_GetMomCallIntroParam
.public MapHeader_IsInKanto
.public MapHeader_GetField14_1D
.public MapHeader_GetField14_1E
.public MapHeader_GetField14_1F
.public WildEncounters_ReadFromNarc
.public LocalFieldData_GetMusicIdAddr
.public LocalFieldData_GetPlayer
.public Save_LocalFieldData_Get
.public sub_0203E354
.public Save_VarsFlags_Get
.public Save_VarsFlags_CheckFlagInArray
.public Save_VarsFlags_SetFlagInArray
.public Save_VarsFlags_ClearFlagInArray
.public sub_0205BBD0
.public sub_0205BC78
.public PlayerSaveData_GetState
.public CheckGameClearFlag
.public Save_VarsFlags_MomsSavingsFlagAction
.public Save_VarsFlags_MomsSavingsFlagCheck
.public Save_VarsFlags_CheckBugContestFlag
.public Save_VarsFlags_FlypointFlagAction
.public Save_VarsFlags_IsInRocketTakeover
.public Save_VarsFlags_GetVar4057
.public Save_VarsFlags_SetVar4057
.public Save_VarsFlags_GetBuenasPasswordSet
.public sub_02068F98
.public DaycareMon_CalcLevelGrowth
.public Save_Daycare_CalcCompatibility
.public GetBoxMonData
.public TrainerData_ReadTrData
.public TrainerData_ReadTrPoke
.public PCStorage_GetActiveBox
.public PCStorage_CountEmptySpotsInAllBoxes
.public PCStorage_GetBoxName
.public Bag_HasItem
.public Save_Bag_Get
.public sub_0208820C
.public PhoneBookTrainerGetRematchInfo
.public AllocAndReadPhoneBook
.public FreePhoneBook
.public GetPhoneMessageGmm
.public sub_02095FF8
.public GetSwarmInfoFromRand
.public FX_Div
.public FX_Inv
.public GX_SetGraphicsMode
.public G2x_SetBlendAlpha_
.public G2x_SetBlendBrightness_
.public MI_CpuFill8
.public memset
.public _fadd
.public _ffix
.public _fflt
.public _fsub
.public _s32_div_f
.public _u32_div_f
.public gSystem
.public ov100_021E5900
.public ov100_021E5924
.public ov100_021E59CC
.public ov100_021E5C50
.public ov100_021E5C80
.public ov100_021E5CA4
.public ov100_021E5D3C
.public ov100_021E5DC8
.public ov100_021E5EB4
.public ov100_021E5FDC
.public ov100_021E65F4
.public ov100_021E6914
.public ov100_021E6950
.public ov100_021E6978
.public ov100_021E69C8
.public ov100_021E6A58
.public ov100_021E6E20
.public ov100_021E6E58
.public ov100_021E6E84
.public ov100_021E6EC4
.public ov100_021E6EF4
.public ov100_021E6F34
.public ov100_021E7014
.public ov100_021E70A4
.public ov100_021E7128
.public ov100_021E72F8
.public ov100_021E7334
.public ov100_021E733C
.public ov100_021E73AC
.public ov100_021E73C8
.public ov100_021E7414
.public ov101_021E7740
.public ov101_021E779C
.public ov101_021E7834
.public TownMap_Init
.public TownMap_Main
.public TownMap_Exit
.public ov101_021EE8E8
.public ov101_021EE924
.public ov101_021EE9A4
.public ov101_021EF848
.public ov101_021EF890
.public ov101_021EF940
.public ov101_021F4480
.public ov101_021F44BC
.public ov101_021F452C
