unit Unit_utils;

interface

uses System.SysUtils;

function byteToWord(byte1, byte2: byte): word;
function byteToReal(byte1, byte2, byte3, byte4: byte): single;
function ConvertArrByteToStr(arr: array of byte; len: integer): string;

implementation

function byteToWord(byte1, byte2: byte): word;
// �������������� 2 ���� � �����
var
  bytesNum: array [0 .. 1] of byte;
begin
  bytesNum[0] := byte1;
  bytesNum[1] := byte2;
  result := word(bytesNum);
end;

function byteToReal(byte1, byte2, byte3, byte4: byte): single;
// �������������� 4 ���� � ������������ �����
var
  bytesFloat: array [0 .. 3] of byte;
begin
  bytesFloat[0] := byte1;
  bytesFloat[1] := byte2;
  bytesFloat[2] := byte3;
  bytesFloat[3] := byte4;
  result := single(bytesFloat);
end;

function ConvertArrByteToStr(arr: array of byte; len: integer): string;
// ������� �������������� ������� ���� � ������
var
  i: integer;
  s: string;
begin
  s := '';
  for i := 0 to len - 1 do
    s := s + inttohex(arr[i], 2) + ' ';
  delete(s, length(s), 1);
  result := s;
end;

end.
