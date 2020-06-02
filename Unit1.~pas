unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, Menus;

type
  TForm1 = class(TForm)
    Isxodnaya: TLabel;
    SG1: TStringGrid;
    Vektor: TLabel;
    Sg2: TStringGrid;
    Razmernost: TLabel;
    Edit: TEdit;
    UpDown: TUpDown;
    Count: TButton;
    Close: TBitBtn;
    ComboBox: TComboBox;
    Metod: TLabel;
    Vvod: TButton;
    Zapis: TButton;
    Chtenie: TButton;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Sg3: TStringGrid;
    SG4: TStringGrid;
    SG5: TStringGrid;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    Label1: TLabel;
    procedure Float(var Key: Char);
    procedure Float2(var Key: Char);
    procedure FormClick(Sender: TObject);
    procedure VvodClick(Sender: TObject);
    procedure CountClick(Sender: TObject);
    procedure SG1KeyPress(Sender: TObject; var Key: Char);
    procedure Sg2KeyPress(Sender: TObject; var Key: Char);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure ZapisClick(Sender: TObject);
    procedure ChtenieClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

type
  mas = array of array of real;
  vekt = array of real;

var
  a,x,g,z,f: mas;
  b,e,c,u:vekt;

procedure Tform1.Float(var Key: Char);
var allow:string;i:integer;ok:boolean;
begin
  allow:='1234567890-,'+#8;
  ok:=false;
  for i:=1 to length(allow)do
  if key=allow[i]then ok:=true;
  if not ok then key:=#0;
end;

procedure Tform1.Float2(var Key: Char);
var allow:string;i:integer;ok:boolean;
begin
  allow:='1234567890'+#8;
  ok:=false;
  for i:=1 to length(allow)do
  if key=allow[i]then ok:=true;
  if not ok then key:=#0;
end;

procedure TForm1.FormClick(Sender: TObject);
begin
SG1.Visible:=true;
SG2.Visible:=true;
Isxodnaya.Visible:=true;
Vektor.Visible:=true;
Metod.Visible:=true;
Combobox.Visible:=true;
SG1.ColCount:=strtoint(Edit.Text);
SG2.RowCount:=strtoint(Edit.Text);
SG1.RowCount:=strtoint(Edit.Text);
end;

procedure TForm1.VvodClick(Sender: TObject);
begin
Razmernost.Visible:=true;
Edit.Visible:=true;
UpDown.Visible:=true;
end;

procedure TForm1.CountClick(Sender: TObject);
var
m,i,j,cc,l,k: integer;
pr1,pr2,zero:boolean;
y,sum,g,r :real;
s :string;
begin
pr1:=true; // Начало проверки - заполнены ли StringGrid'ы
pr2:=true;
for i:=1 to SG1.RowCount-1 do
for j:=1 to SG1.ColCount-1 do
if SG1.Cells[i,j]='' then
pr1:=false;
for i:=1 to SG2.ColCount-1 do
if SG2.Cells[1,i]='' then
pr2:=false;
if (pr1=false) or (pr2=false) then
MessageDlg('Заполните весь SG',mtError,[mbOk],0) // Конец
else
begin  // Если да, то получаем размерность матрицы
  m:=strtoint(Edit.Text);
  PageControl.Visible:=true;

  SetLength(a,m,m); //установка значений
  Setlength(x,m,m);
  Setlength(f,m,m);
  Setlength(z,m,m);
  Setlength(b,m);
  Setlength(e,m);
  Setlength(c,m);
  Setlength(u,m);


  for i:=0 to m-1 do // заполнение ветора а из StringGrid1
  for j:=0 to m-1 do
  a[i,j]:=strtofloat(SG1.Cells[j,i]);
  for i:=0 to m-1 do   // заполнение ветора b из StringGrid2
  b[i]:=strtofloat(SG2.Cells[0,i]);

  if Combobox.ItemIndex=-1 then // метод решения
  MessageDlg('Выберите метод решения',mtError,[mbOk],0)

  else if Combobox.ItemIndex=0 then  // Блочный метод начало
  begin
    PageControl.ActivePage:=TabSheet1;
    SG5.RowCount:=strtoint(Edit.Text);
    SG3.RowCount:=strtoint(Edit.Text);
    SG4.ColCount:=2;
    SG4.RowCount:=2;
    SG4.Cells[1,1]:='';

    zero:=false;
        for i:=0 to m-1 do   // Копирование вектора а в x
          for j:=0 to m-1 do
            x[i,j]:=a[i,j];
        i:=0;
        cc:=0;
        if zero=false then for l:=1 to m-1 do       // Нахождение определителя, начало
        begin
          if x[i,i]=0 then
            for j:=i+1 to m-1 do
              begin
              if x[j,i]<>0 then
                for k:=0 to m-1 do
                begin
                  y:=x[i,k];
                  x[i,k]:=x[j,k];
                  x[j,k]:=y;
                end;
                inc(cc);
                break;
              end;
          if zero=false then for j:=i+1 to m-1 do
            begin
              y:=-(x[j,i]/x[i,i]);
              for k:=i to m-1 do
                x[j,k]:=x[j,k]+x[i,k]*y;
              zero:=true;
              for k:=i+1 to m-1 do
                if x[j,k]<>0 then
                  zero:=false;
            end;
          inc(i);
        end;
        if zero=true then
          y:=0
        else
          begin
            y:=1;
            for i:=0 to m-1 do
              y:=y*x[i,i];
            if odd(cc) then
              y:=-y;
          end;  // Конец

    if y=0 then // Если определитель равен 0, то невозможно решить
    MessageDlg('Невозможно решить такую СЛАУ блочным методом',mtError,[mbOk],0)
    else begin  //Если не равен, то запускаем блочный метод (метод обратной матрицы)
      for i:=0 to m-1 do
      for j:=0 to m-1 do
      f[i,j]:=a[i,j];   // Копирование а в f
      for k:=0 to m-1 do
        begin
        for i:=0 to m-1 do // начало обратной матрицы
        for j:=0 to m-1 do
          begin
          if ((i<>k) and (j<>k)) then
          z[i,j]:=f[i,j]-f[k,j]*f[i,k]/f[k,k];
          if ((i=k) and (j<>k)) then
          z[i,j]:=f[k,j]/f[k,k];
          if ((i<>k) and (j=k)) then
          z[i,j]:=-f[i,k]/f[k,k];
          if ((i=k) and (j=k)) then
          z[i,j]:=1/f[k,k];
          end;
        for i:=0 to m-1 do // Копирование Z в F
        for j:=0 to m-1 do
        f[i,j]:=z[i,j];
        end;

    for i:=0 to m-1 do  // Нахождение алг дополнений и умножение обратного определителя на обратную матрицу
      begin
        e[i]:=0;
        for j:=0 to m-1 do
          begin
            r:=f[i,j]*b[j];
         e[i]:=r+e[i];
          end;
      end;

    for i:=0 to m-1 do  // Вывод результатов
      for j:=0 to m-1 do
        SG3.Cells[j,i]:=floattostr(e[i]);

    for i:=0 to m-1 do // Начало проверки. (для полной картины пример - 3x-12=0 <=> x = 12/3 = 4 <=> проверка 4*3-12=0 -> ДА!)
    for j:=0 to m-1 do
    begin
    sum:=0;
    for k:=0 to m-1 do sum:=sum+a[i,k]*e[k];
    c[i]:=sum;
    end;
    for i:=0 to m-1 do
    for j:=0 to m-1 do
    SG5.Cells[1,i+1]:=floattostr(c[i]); // вывод значений полученных при проверке
  end;
  end
  else begin
    PageControl.ActivePage:=TabSheet2;
    SG5.RowCount:=strtoint(Edit.Text);
    SG4.RowCount:=strtoint(Edit.Text);
    SG3.ColCount:=1;
    SG3.RowCount:=m;
    SG3.Cells[1,1]:='';

     zero:=false;         // Определитель. Дубль 2 для второго метода
        for i:=0 to m-1 do
          for j:=0 to m-1 do
            x[i,j]:=a[i,j];
        i:=0;
        cc:=0;
        if zero=false then for l:=1 to m-1 do
        begin
          if x[i,i]=0 then
            for j:=i+1 to m-1 do
              begin
              if x[j,i]<>0 then
                for k:=0 to m-1 do
                begin
                  y:=x[i,k];
                  x[i,k]:=x[j,k];
                  x[j,k]:=y;
                end;
                inc(cc);
                break;
              end;
          if zero=false then for j:=i+1 to m-1 do
            begin
              y:=-(x[j,i]/x[i,i]);
              for k:=i to m-1 do
                x[j,k]:=x[j,k]+x[i,k]*y;
              zero:=true;
              for k:=i+1 to m-1 do
                if x[j,k]<>0 then
                  zero:=false;
            end;
          inc(i);
        end;
        if zero=true then
          y:=0
        else
          begin
            y:=1;
            for i:=0 to m-1 do
              y:=y*x[i,i];
            if odd(cc) then
              y:=-y;
          end;

    if y=0 then
    MessageDlg('Невозможно решить такую СЛАУ методом Гаусса',mtError,[mbOk],0)
    else begin
    for i:=0 to m-1 do  // Копия a в z
      for j:=0 to m-1 do
        z[i,j]:=a[i,j];
    for i:=0 to m-1 do  // копия b в с
      c[i]:=b[i];
    for k:=0 to m-1 do { прямой ход Гаусса }
      begin
        for j:=k+1 to m-1 do
          begin
            r:=z[j,k]/z[k,k];
            for i:=k to m-1 do
              z[j,i]:=z[j,i]-r*z[k,i];
            c[j]:=c[j]-r*c[k];
          end;
      end;
    for k:=m-1 downto 0 do { обратный ход Гаусса }
      begin
        r:=0;
        for j:=k+1 to m-1 do
          begin
            g:=z[k,j]*e[j];
            r:=r+g;
          end;
        e[k]:=(c[k]-r)/z[k,k];
      end;

    for i:=0 to m-1 do
      for j:=0 to m-1 do
        SG4.Cells[j,i]:=floattostr(e[i]); // вывод результатов

    for i:=0 to m-1 do         // Проверка. Описана выше
      for j:=0 to m-1 do
        begin
          sum:=0;
          for k:=0 to m-1 do
            sum:=sum+a[i,k]*e[k];
          u[i]:=sum;
        end;
    for i:=0 to m-1 do
      for j:=0 to m-1 do
        SG5.Cells[j,i]:=floattostr(u[i]);
end;
  end;
end;
end;

procedure TForm1.SG1KeyPress(Sender: TObject; var Key: Char);
begin
Float(Key);
end;

procedure TForm1.Sg2KeyPress(Sender: TObject; var Key: Char);
begin
Float(Key);
end;

procedure TForm1.EditKeyPress(Sender: TObject; var Key: Char);
begin
Float2(Key);
end;

procedure TForm1.ZapisClick(Sender: TObject); // сохранение в файл
var
h:TextFile;
i,j,cola,colb:integer;
begin
  if SaveDialog.Execute then
  begin
  Form1.click;
  assignfile(h, SaveDialog.FileName);
  rewrite(h);
  write(h, Edit.text+' '+Edit.text);
  writeln(h);
  cola:=strtoint(Edit.text);
  for i:=1 to cola do
    begin
    for j:=1 to cola do
    write(h, SG1.cells[j,i], ' ');
    writeln(h);
    end;
  write(h, Edit.Text);
  writeln(h);
  colb:=strtoint(Edit.text);
  for i:=1 to colb do
    begin
    for j:=1 to colb do
    write(h, SG2.cells[j,i], ' ');
    writeln(h);
    end;
  closefile(h);
  Count.Click;
  end;
end;

procedure TForm1.ChtenieClick(Sender: TObject); // чтение из файла
var
h: TextFile;
n,m,i,j,rowa,rowb,l:integer;
s: string;
begin
  if OpenDialog.Execute then
  begin
  VVod.Click;
  assignfile(h, OpenDialog.Filename);
  reset(h);
  readln(h,n,m);
  Edit.Text:=inttostr(n);
  SG1.RowCount:=n+1;
  SG1.ColCount:=m+1;
  j:=0;
  rowa:=strtoint(Edit.text);
  for i:=1 to rowa do
    begin
    readln(h, s);
    for l:=1 to length(s) do
    if s[l]='.' then
    s[l]:=',';
    for m:=1 to rowa do
    if pos(' ', s)<>0 then
      begin
      n:=pos(' ', s);
      SG1.cells[m, j+1]:=copy(s, 1, n-1);
      delete(s, 1, n);
    end;
    inc(j);
  end;
  readln(h,n);
  SG2.RowCount:=n+1;
  j:=0;
  rowb:=strtoint(Edit.text);
  for i:=1 to rowb do
    begin
    readln(h,s);
    for l:=1 to length(s) do
    if s[l]='.' then
    s[l]:=',';
    for m:=1 to rowb do
    if pos(' ', s)<>0 then
      begin
      n:=pos(' ', s);
      SG2.cells[m, j+1]:=copy(s, 1, n-1);
      delete(s, 1, n);
      end;
    inc(j);
    end;
    readln(h, n);
    Form1.Click;
    Count.Click;
    closefile(h);
  end;
end;

end.
