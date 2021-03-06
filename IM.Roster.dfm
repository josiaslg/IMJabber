object FormRosterList: TFormRosterList
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1080#1089#1086#1082' '#1082#1086#1085#1090#1072#1082#1090#1086#1074
  ClientHeight = 479
  ClientWidth = 327
  Color = 2826519
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 82
    Width = 327
    Height = 1
    Align = alTop
    Brush.Color = 2169104
    Pen.Color = 2169104
    ExplicitWidth = 364
  end
  object Shape2: TShape
    Left = 0
    Top = 428
    Width = 327
    Height = 1
    Align = alBottom
    Brush.Color = 2169104
    Pen.Color = 2169104
    ExplicitTop = 90
    ExplicitWidth = 277
  end
  object TableExRoster: TTableEx
    Left = 0
    Top = 83
    Width = 327
    Height = 345
    Align = alClient
    BorderStyle = bsNone
    Color = 2826519
    DefaultRowHeight = 48
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI Emoji'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnDrawCellData = TableExRosterDrawCellData
    ItemIndex = -1
    OnItemClick = TableExRosterItemClick
    Columns = <
      item
        Width = 48
        MinWidth = 48
      end
      item
        Width = 279
        MinWidth = 200
      end>
    DefaultDataDrawing = False
    ShowScrollBar = False
    CanNoSelect = False
    VisibleEdit = False
    ItemCount = 1
    LineColor = 2826519
    LineColorXor = 2826519
    LineHotColor = 3549984
    LineSelColor = 3549984
    FontHotLine.Charset = DEFAULT_CHARSET
    FontHotLine.Color = clWhite
    FontHotLine.Height = -13
    FontHotLine.Name = 'Segoe UI Emoji'
    FontHotLine.Style = []
    FontLine.Charset = DEFAULT_CHARSET
    FontLine.Color = clWhite
    FontLine.Height = -13
    FontLine.Name = 'Segoe UI Emoji'
    FontLine.Style = []
    FontSelLine.Charset = DEFAULT_CHARSET
    FontSelLine.Color = clWhite
    FontSelLine.Height = -13
    FontSelLine.Name = 'Segoe UI Emoji'
    FontSelLine.Style = []
    ShowColumns = False
    ColumnsFont.Charset = DEFAULT_CHARSET
    ColumnsFont.Color = 2631720
    ColumnsFont.Height = -11
    ColumnsFont.Name = 'Tahoma'
    ColumnsFont.Style = []
    MouseRightClickTooClick = True
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 2826519
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 313
    object Label1: TLabel
      AlignWithMargins = True
      Left = 15
      Top = 3
      Width = 297
      Height = 35
      Margins.Left = 15
      Margins.Right = 15
      Align = alClient
      Caption = #1055#1088#1080#1075#1083#1072#1089#1080#1090#1100' '#1091#1095#1072#1089#1090#1085#1080#1082#1086#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 178
      ExplicitHeight = 21
    end
  end
  object PanelTopSearch: TPanel
    Left = 0
    Top = 41
    Width = 327
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 2826519
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 313
    object PanelSearch: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 6
      Width = 307
      Height = 29
      Margins.Left = 10
      Margins.Top = 6
      Margins.Right = 10
      Margins.Bottom = 6
      Align = alClient
      Alignment = taLeftJustify
      AutoSize = True
      BevelOuter = bvNone
      Color = 2826519
      ParentBackground = False
      TabOrder = 0
      TabStop = True
      ExplicitWidth = 293
      object EditSearch: TEdit
        AlignWithMargins = True
        Left = 34
        Top = 0
        Width = 239
        Height = 29
        Margins.Left = 5
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alClient
        BevelInner = bvSpace
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BevelWidth = 2
        BorderStyle = bsNone
        Color = 2826519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = #1055#1086#1080#1089#1082
        OnChange = EditSearchChange
        ExplicitWidth = 225
      end
      object ButtonFlatSearchClear: TButtonFlat
        Left = 278
        Top = 0
        Width = 29
        Height = 29
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alRight
        Caption = ''
        ColorNormal = 2826519
        ColorOver = 2826519
        ColorPressed = 2826519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 2
        ImageIndex = 5
        Images = FormMain.ImageListNormal
        ImagesOver = FormMain.ImageListOver
        Transparent = True
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
        Visible = False
        ExplicitLeft = 264
      end
      object ButtonFlat1: TButtonFlat
        Left = 0
        Top = 0
        Width = 29
        Height = 29
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alLeft
        Caption = ''
        ColorNormal = 2826519
        ColorOver = 2826519
        ColorPressed = 2826519
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWindowText
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWindowText
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 2
        ImageIndex = 9
        Images = FormMain.ImageListNormal
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 2
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 429
    Width = 327
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = 2826519
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 476
    ExplicitWidth = 313
    object ButtonFlatOK: TButtonFlat
      AlignWithMargins = True
      Left = 227
      Top = 8
      Width = 96
      Height = 34
      Cursor = crDefault
      Margins.Left = 4
      Margins.Top = 8
      Margins.Right = 4
      Margins.Bottom = 8
      Align = alRight
      Caption = #1044#1054#1041#1040#1042#1048#1058#1068
      ColorNormal = 2760985
      ColorOver = 3680799
      ColorPressed = 4403489
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15905386
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = 15905386
      FontOver.Height = -13
      FontOver.Name = 'Segoe UI Semibold'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = 15905386
      FontDown.Height = -13
      FontDown.Name = 'Segoe UI Semibold'
      FontDown.Style = []
      IgnorBounds = True
      OnClick = ButtonFlatOKClick
      RoundRectParam = 0
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 0
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      ExplicitLeft = 213
    end
    object ButtonFlatCancel: TButtonFlat
      AlignWithMargins = True
      Left = 139
      Top = 8
      Width = 80
      Height = 34
      Cursor = crDefault
      Margins.Left = 4
      Margins.Top = 8
      Margins.Right = 4
      Margins.Bottom = 8
      Align = alRight
      Caption = #1054#1058#1052#1045#1053#1040
      ColorNormal = 2760985
      ColorOver = 3680799
      ColorPressed = 4403489
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15905386
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = 15905386
      FontOver.Height = -13
      FontOver.Name = 'Segoe UI Semibold'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = 15905386
      FontDown.Height = -13
      FontDown.Name = 'Segoe UI Semibold'
      FontDown.Style = []
      IgnorBounds = True
      OnClick = ButtonFlatCancelClick
      RoundRectParam = 0
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 1
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      ExplicitLeft = 125
    end
  end
end
