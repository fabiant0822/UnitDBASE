unit dbUnit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle,
  FireDAC.Phys.OracleDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, Vcl.StdCtrls,
  Vcl.AppEvnts, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.DBScope, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ExtDlgs, Vcl.StdActns, Vcl.ExtActns,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTable1: TFDTable;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    FDMoniRemoteClientLink1: TFDMoniRemoteClientLink;
    Label1: TLabel;
    FDTable2: TFDTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    FDQuery1: TFDQuery;
    DataSource3: TDataSource;
    idEdit: TEdit;
    Label2: TLabel;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    nameEdit: TEdit;
    addrEdit: TEdit;
    phEdit: TEdit;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ActionManager1: TActionManager;
    Panel1: TPanel;
    Memo1: TMemo;
    selectBtn2: TButton;
    DBGrid3: TDBGrid;
    openBtn: TButton;
    FileOpen1: TFileOpen;
    Image1: TImage;
    DialogOpenPicture2: TOpenPicture;
    OpenDialog1: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    LinkControlToPropertyCaption: TLinkControlToProperty;
    addBtn: TButton;
    procedure selectBtn2Click(Sender: TObject);
    procedure openBtnClick(Sender: TObject);
   // procedure addBtnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//procedure TForm1.addBtnClick(Sender: TObject);
//var
//  BlobStream: tStream;
//  Surf: TBitmapSurface;
//begin
//  if Image1 <> nil then
//  begin
//    Surf := TBitmapSurface.Create;
//    Surf.Assign(Image1.Bitmap);
//    BlobStream := TMemoryStream.Create;
//    if not TBitmapCodecManager.SaveToStream(BlobStream, Surf, '.jpg') then
//      raise EBitmapSavingFailed.Create('No');
//    BlobStream.Position := 0;
//    FDTable1.ParamByName('FLAG').LoadFromStream(BlobStream, ftBlob);
//    FDTable1.ExecSQL;
//    Surf.Free;
//  end;
//end;

procedure TForm1.openBtnClick(Sender: TObject);
begin
  OpenDialog1.Execute;
  Image1.Picture.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.selectBtn2Click(Sender: TObject);
begin
  FDQuery1.Close;
  FDQuery1.SQL.Text := memo1.Text;
  FDQuery1.Open;
end;

end.
