unit IM.Roster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids,
  HGM.Controls.VirtualTable, IM.Classes, HGM.Button, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormRosterList = class(TForm)
    TableExRoster: TTableEx;
    PanelTop: TPanel;
    Label1: TLabel;
    PanelTopSearch: TPanel;
    PanelSearch: TPanel;
    EditSearch: TEdit;
    ButtonFlatSearchClear: TButtonFlat;
    ButtonFlat1: TButtonFlat;
    Shape1: TShape;
    PanelBottom: TPanel;
    Shape2: TShape;
    ButtonFlatOK: TButtonFlat;
    ButtonFlatCancel: TButtonFlat;
    procedure TableExRosterDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableExRosterItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure EditSearchChange(Sender: TObject);
    procedure ButtonFlatOKClick(Sender: TObject);
    procedure ButtonFlatCancelClick(Sender: TObject);
  private
    FRosterList: TRosterList;
    procedure SetRosterList(const Value: TRosterList);
  public
    property RosterList: TRosterList read FRosterList write SetRosterList;
    class function Execute(Roster: TRosterList; var Index: Integer): Boolean;
  end;

var
  FormRosterList: TFormRosterList;

implementation

uses
  IM.Main, HGM.Common.Utils;

{$R *.dfm}

procedure TFormRosterList.ButtonFlatCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRosterList.ButtonFlatOKClick(Sender: TObject);
begin
  if FRosterList.CheckedCount < 1 then Exit;
  ModalResult := mrOK;
end;

procedure TFormRosterList.EditSearchChange(Sender: TObject);
begin
  ButtonFlatSearchClear.Visible := EditSearch.Text <> '';
end;

class function TFormRosterList.Execute(Roster: TRosterList; var Index: Integer): Boolean;
begin
  with TFormRosterList.Create(nil) do
  begin
    //Prepare
    RosterList := Roster;
    RosterList.AddTable(TableExRoster);
    RosterList.UnCheckAll;
    RosterList.UpdateTable;
    TableExRoster.UpdateMaxColumn;
    //Show
    Result := ShowModal = mrOk;
    //Apply
    Index := TableExRoster.ItemIndex;
    RosterList.UnAssignTable(TableExRoster);
    //Final
    Free;
  end;
end;

procedure TFormRosterList.SetRosterList(const Value: TRosterList);
begin
  FRosterList := Value;
end;

procedure TFormRosterList.TableExRosterDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if not FRosterList.IndexIn(ARow) then
    Exit;
  with TableExRoster.Canvas do
  begin
    case ACol of
      0:
        begin
          Rect.Inflate(-4, -4);
          if Assigned(FRosterList[ARow].Avatar) then
            Draw(Rect.Left, Rect.Top, FRosterList[ARow].Avatar);
          if FRosterList.Checked[ARow] then
            FormMain.ImageList16.Draw(TableExRoster.Canvas, Rect.Right - 15, Rect.Bottom - 15, 0, True)
          else
            FormMain.ImageList16.Draw(TableExRoster.Canvas, Rect.Right - 15, Rect.Bottom - 15, 1, True);
        end;
      1:
        begin
          Font.Name := 'Segoe UI';
          Font.Color := clWhite;
          if FRosterList[ARow].Name.IsEmpty then
            TextOut(Rect.Left, Rect.Top + 3, FRosterList[ARow].JID)
          else
            TextOut(Rect.Left, Rect.Top + 3, FRosterList[ARow].Name);
          Font.Color := $00CFCFCF;
          if FRosterList[ARow].LastMessage.Unread then
          begin
            TextOut(Rect.Left, Rect.Top + 22, FRosterList[ARow].LastMessage.Body);
            FormMain.ImageListStatuses.Draw(TableExRoster.Canvas, Rect.Right - 20, Rect.Top + 2, 7, True);
          end
          else
          begin
            TextOut(Rect.Left, Rect.Top + 22, FRosterList[ARow].GetDisplayStatus);
          end;
        end;
    end;
  end;
end;

procedure TFormRosterList.TableExRosterItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  FRosterList.Checked[Index] := not FRosterList.Checked[Index];
  TableExRoster.ItemIndex := -1;
end;

end.

