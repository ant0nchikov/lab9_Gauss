object Form1: TForm1
  Left = 342
  Top = 128
  Width = 749
  Height = 519
  Caption = #1052#1077#1090#1086#1076#1099' '#1088#1077#1096#1077#1085#1080#1103' '#1057#1051#1040#1059' \ ant0nchikov.pro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClick = FormClick
  PixelsPerInch = 96
  TextHeight = 20
  object Isxodnaya: TLabel
    Left = 13
    Top = 5
    Width = 157
    Height = 20
    Caption = #1048#1089#1093#1086#1076#1085#1072#1103' '#1084#1072#1090#1088#1080#1094#1072' '#1040
    Visible = False
  end
  object Vektor: TLabel
    Left = 13
    Top = 192
    Width = 70
    Height = 20
    Caption = #1042#1077#1082#1090#1086#1088' '#1042
    Visible = False
  end
  object Razmernost: TLabel
    Left = 232
    Top = 5
    Width = 169
    Height = 20
    AutoSize = False
    Caption = #1056#1072#1079#1084#1077#1088#1086#1089#1090#1100' '#1084#1072#1090#1088#1080#1094#1099
    Visible = False
    WordWrap = True
  end
  object Metod: TLabel
    Left = 240
    Top = 90
    Width = 147
    Height = 20
    Caption = #1052#1077#1090#1086#1076' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103
    Visible = False
  end
  object Label1: TLabel
    Left = 128
    Top = 392
    Width = 492
    Height = 75
    Caption = 
      #1059#1073#1077#1076#1080#1090#1077#1083#1100#1085#1072#1103' '#1087#1088#1086#1089#1100#1073#1072'! '#1053#1077' '#1082#1086#1087#1080#1088#1091#1081#1090#1077' '#1090#1091#1087#1086' '#1082#1086#1076', '#1087#1086#1087#1099#1090#1072#1081#1090#1077#1089#1100' '#1093#1086#1090#1103' '#1073#1099 +
      ' '#1088#1072#1079#1086#1073#1088#1072#1090#1100#1089#1103' '#1089' '#1087#1086#1084#1086#1097#1100#1102' '#1086#1090#1083#1072#1076#1095#1080#1082#1072' '#1082#1072#1082' '#1086#1085' '#1088#1072#1073#1086#1090#1072#1077#1090'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object SG1: TStringGrid
    Left = 13
    Top = 30
    Width = 204
    Height = 155
    ColCount = 2
    DefaultColWidth = 25
    DefaultRowHeight = 25
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
    TabOrder = 0
    Visible = False
    OnKeyPress = SG1KeyPress
  end
  object Sg2: TStringGrid
    Left = 13
    Top = 216
    Width = 204
    Height = 153
    ColCount = 1
    DefaultColWidth = 25
    DefaultRowHeight = 25
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
    TabOrder = 1
    Visible = False
    OnKeyPress = Sg2KeyPress
  end
  object Edit: TEdit
    Left = 238
    Top = 43
    Width = 131
    Height = 28
    TabOrder = 2
    Text = '0'
    Visible = False
    OnKeyPress = EditKeyPress
  end
  object UpDown: TUpDown
    Left = 369
    Top = 43
    Width = 16
    Height = 28
    Associate = Edit
    TabOrder = 3
    Visible = False
  end
  object Count: TButton
    Left = 240
    Top = 194
    Width = 153
    Height = 31
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 4
    OnClick = CountClick
  end
  object Close: TBitBtn
    Left = 240
    Top = 336
    Width = 153
    Height = 33
    TabOrder = 5
    Kind = bkClose
  end
  object ComboBox: TComboBox
    Left = 240
    Top = 115
    Width = 153
    Height = 28
    Style = csDropDownList
    ItemHeight = 20
    TabOrder = 6
    Visible = False
    Items.Strings = (
      #1041#1083#1086#1095#1085#1099#1081' '#1084#1077#1090#1086#1076
      #1052#1077#1090#1086#1076' '#1043#1072#1091#1089#1089#1072)
  end
  object Vvod: TButton
    Left = 242
    Top = 155
    Width = 151
    Height = 30
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 7
    OnClick = VvodClick
  end
  object Zapis: TButton
    Left = 242
    Top = 240
    Width = 151
    Height = 33
    Caption = #1047#1072#1087#1080#1089#1100' '#1074' '#1092#1072#1081#1083
    TabOrder = 8
    OnClick = ZapisClick
  end
  object Chtenie: TButton
    Left = 242
    Top = 286
    Width = 151
    Height = 35
    Caption = #1063#1090#1077#1085#1080#1077' '#1080#1079' '#1092#1072#1081#1083#1072
    TabOrder = 9
    OnClick = ChtenieClick
  end
  object PageControl: TPageControl
    Left = 406
    Top = 8
    Width = 307
    Height = 361
    ActivePage = TabSheet2
    MultiLine = True
    TabOrder = 10
    Visible = False
    object TabSheet1: TTabSheet
      Caption = #1041#1083#1086#1095#1085#1099#1081' '#1084#1077#1090#1086#1076
      object Sg3: TStringGrid
        Left = 8
        Top = 8
        Width = 281
        Height = 281
        ColCount = 1
        DefaultColWidth = 25
        DefaultRowHeight = 25
        FixedCols = 0
        RowCount = 2
        FixedRows = 0
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1052#1077#1090#1086#1076' '#1043#1072#1091#1089#1089#1072
      ImageIndex = 1
      object SG4: TStringGrid
        Left = 8
        Top = 8
        Width = 281
        Height = 281
        ColCount = 1
        DefaultColWidth = 25
        DefaultRowHeight = 25
        FixedCols = 0
        RowCount = 2
        FixedRows = 0
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1088#1086#1074#1077#1088#1082#1072
      ImageIndex = 2
      object SG5: TStringGrid
        Left = 8
        Top = 8
        Width = 281
        Height = 281
        ColCount = 1
        DefaultColWidth = 25
        DefaultRowHeight = 25
        FixedCols = 0
        RowCount = 2
        FixedRows = 0
        TabOrder = 0
      end
    end
  end
  object OpenDialog: TOpenDialog
    Left = 136
    Top = 184
  end
  object SaveDialog: TSaveDialog
    Left = 104
    Top = 184
  end
end
