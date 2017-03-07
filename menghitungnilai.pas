program Suberlianto_menghitung_nilai_mahasiswa;
uses crt;
varnilai,absen,tm,kuis,uts,uas : integer;

nama,grade,ket : string;

begin
writeln('PROGRAM MENGHITUNG NILAI MAHASISWA');
writeln('==================================');
writeln;
write('Masukan Nama Mahasiswa : ');readln(nama);
writeln('=======================');

writeln;
writeln('Masukan Nilai Mahasiswa');
writeln('=======================');
write('Nilai Absensi          : ');readln(absen);
write('Nilai Tugas Mandiri    : ');readln(tm);
write('Nilai Kuis             : ');readln(kuis);
write('Nilai UTS              : ');readln(uts);
write('Nilai UAS              : ');readln(uas);
nilai := (10*absen + 10*tm + 10*kuis + 20*uts + 50*uas) div 100;

if nilai > 85 then
grade:= 'A'
else
if (nilai > 75) and (nilai < 85) then
grade:= 'B'
else
if (nilai > 65) and (nilai < 75) then
grade:= 'C'
else
if (nilai > 50) and (nilai < 65) then
grade:= 'D'
else
if (nilai > 0) and (nilai < 50) then
grade:= 'E'
else
grade:= 'F';

case nilai of
85..100 : ket:=('LULUS MEMUASKAN');
75..84 : ket:=('LULUS BAIK');
65..74 : ket:=('LULUS CUKUP');
else
ket:=('TIDAK LULUS');
end;
writeln;
writeln('Maka Hasilnya :');
writeln('======================');
writeln('Hasil nilai akhir ' ,nama, ' adalah ' ,nilai);
writeln('Grade yang didapat adalah ' ,grade, ' maka anda dinyatakan ' ,ket);
writeln;
writeln('============SISTEM INFORMASI===========');
writeln('===========PEMROGRAMAN PASCAL===========');
writeln('==========UNIVERSITAS BINADARMA==========');
readln;
end.
