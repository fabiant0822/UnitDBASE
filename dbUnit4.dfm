object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 680
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 8
    Width = 219
    Height = 46
    Caption = 'dBase Test '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 706
    Top = 63
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object Label3: TLabel
    Left = 689
    Top = 92
    Width = 32
    Height = 13
    Caption = 'NAME:'
  end
  object Label4: TLabel
    Left = 671
    Top = 117
    Width = 50
    Height = 13
    Caption = 'ADDRESS:'
  end
  object Label5: TLabel
    Left = 683
    Top = 144
    Width = 38
    Height = 13
    Caption = 'PHONE:'
  end
  object Image1: TImage
    Left = 733
    Top = 208
    Width = 233
    Height = 153
    Center = True
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 60
    Width = 631
    Height = 279
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADDRESS'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHONE'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FLAG'
        Width = 120
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 9
    Top = 345
    Width = 630
    Height = 30
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 381
    Width = 631
    Height = 260
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID2'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SZIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATUM'
        Width = 200
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'SZAM'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 8
    Top = 647
    Width = 630
    Height = 30
    DataSource = DataSource2
    TabOrder = 3
  end
  object idEdit: TEdit
    Left = 733
    Top = 60
    Width = 233
    Height = 21
    TabOrder = 4
    Text = '1'
  end
  object nameEdit: TEdit
    Left = 733
    Top = 87
    Width = 233
    Height = 21
    TabOrder = 5
    Text = 'Karcsi'
  end
  object addrEdit: TEdit
    Left = 733
    Top = 114
    Width = 233
    Height = 21
    TabOrder = 6
    Text = 'Urugay'
  end
  object phEdit: TEdit
    Left = 733
    Top = 141
    Width = 233
    Height = 21
    TabOrder = 7
    Text = '36505554141'
  end
  object Panel1: TPanel
    Left = 645
    Top = 381
    Width = 332
    Height = 121
    Caption = 'Panel1'
    TabOrder = 8
    object Memo1: TMemo
      Left = 88
      Top = 8
      Width = 233
      Height = 105
      Lines.Strings = (
        '')
      TabOrder = 0
    end
    object selectBtn2: TButton
      Left = 7
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Select'
      TabOrder = 1
      OnClick = selectBtn2Click
    end
  end
  object DBGrid3: TDBGrid
    Left = 645
    Top = 520
    Width = 332
    Height = 121
    DataSource = DataSource3
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object openBtn: TButton
    Left = 645
    Top = 208
    Width = 82
    Height = 33
    Hint = 'Open Picture'
    Caption = 'Open'
    TabOrder = 10
    OnClick = openBtnClick
  end
  object addBtn: TButton
    Left = 645
    Top = 247
    Width = 82
    Height = 34
    Caption = 'Add'
    TabOrder = 11
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=FDConnection1')
    Connected = True
    Left = 592
    Top = 16
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 544
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 448
    Top = 16
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TABLE1'
    SchemaName = 'FTAMAS'
    TableName = 'TABLE1'
    Left = 360
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 496
    Top = 16
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 400
    Top = 16
  end
  object FDTable2: TFDTable
    Active = True
    IndexFieldNames = 'ID2'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'TABLE2'
    SchemaName = 'FTAMAS'
    TableName = 'TABLE2'
    Left = 768
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = FDTable2
    Left = 728
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from TABLE1'
      'where id = :id')
    Left = 640
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DataSource3: TDataSource
    DataSet = FDQuery1
    Left = 688
    Top = 16
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 316
    Top = 13
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ID'
      Control = idEdit
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NAME'
      Control = nameEdit
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ADDRESS'
      Control = addrEdit
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'PHONE'
      Control = phEdit
      Track = True
    end
    object LinkControlToPropertyCaption: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = Image1
      Track = False
      Component = openBtn
      ComponentProperty = 'Caption'
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDTable1
    ScopeMappings = <>
    Left = 480
    Top = 344
  end
  object ActionManager1: TActionManager
    Left = 808
    Top = 16
    StyleName = 'Platform Default'
    object FileOpen1: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 7
      ShortCut = 16463
    end
    object DialogOpenPicture1: TOpenPicture
      Category = 'Dialog'
      Caption = '&Open Picture...'
      Hint = 'Open Picture'
      ShortCut = 16463
    end
    object DialogOpenPicture2: TOpenPicture
      Category = 'Dialog'
      Caption = '&Open Picture...'
      Hint = 'Open Picture'
      ShortCut = 16463
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 864
    Top = 16
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 920
    Top = 16
  end
end
