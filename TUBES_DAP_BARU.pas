program tubes;
uses crt;

const
	nmax = 100;

type pegawai = record
	id_pegawai, usia_pegawai, gaji_pegawai : integer;
	nama_pegawai, jabatan_pegawai : string;
	end;
	larik_pegawai = array[1..nmax] of pegawai; 

var
	pgw : larik_pegawai;	
	j : integer;	


procedure urutGajiSelectionDescending(var pgw : larik_pegawai; n : integer);
var
	pass,idxmax,i : integer;
	tmp : pegawai; 

begin
	pass:=1;
	while (pass <= n-1) do
	begin
	 	idxmax:=pass;
	 	i:=idxmax+1;
	 	while (i <= n) do
	 	begin
	 	 		if (pgw[i].gaji_pegawai > pgw[idxmax].gaji_pegawai) then
	 	 		begin
	 	 		 	idxmax:=i;
	 	 		end; 
	 	 		{end if}
	 	i:=i+1;
	 	end;
	 	{end while}
	end;
	{end while}
	tmp:=pgw[idxmax];
	pgw[idxmax]:=pgw[pass];
	pgw[pass]:=tmp;
	pass:=pass+1;
end; 

procedure urutGajiSelectionAscending(var pgw : larik_pegawai; n : integer);
var
	pass,idxmax,i : integer;
	tmp : pegawai; 

begin
	pass:=1;
	while (pass <= n-1) do
	begin
	 	idxmax:=pass;
	 	i:=idxmax+1;
	 	while (i <= n) do
	 	begin
	 	 		if (pgw[i].gaji_pegawai < pgw[idxmax].gaji_pegawai) then
	 	 		begin
	 	 		 	idxmax:=i;
	 	 		end; 
	 	 		{end if}
	 	i:=i+1;
	 	end;
	 	{end while}
	end;
	{end while}
	tmp:=pgw[idxmax];
	pgw[idxmax]:=pgw[pass];
	pgw[pass]:=tmp;
	pass:=pass+1;
end; 

procedure urutUsiaInsertionDescending(var pgw : larik_pegawai; n : integer);
var
	pass,i : integer;
	tmp : pegawai;

begin
pass:=1;
	while (pass <= j-1) do
	begin
	 	i:=pass+1;
	 	tmp:=pgw[i];
	 	while ((i > 1) and (tmp.usia_pegawai > pgw[j-1].usia_pegawai)) do
	 	begin
	 	 		if (pgw[i].gaji_pegawai > pgw[idxmax].gaji_pegawai) then
	 	 		begin
	 	 		 	idxmax:=i;
	 	 		end; 
	 	 		{end if}
	 	i:=i+1;
	 	end;
	 	{end while}
	end;
	{end while}
	tmp:=pgw[idxmax];
	pgw[idxmax]:=pgw[pass];
	pgw[pass]:=tmp;
	pass:=pass+1;
end;

procedure urutUsiaInsertionAscending(var pgw : larik_pegawai; n : integer);
var
	pass,i : integer;
	tmp : pegawai;

begin
pass:=1;
	while (pass <= j-1) do
	begin
	 	i:=pass+1;
	 	tmp:=pgw[i];
	 	while ((i > 1) and (tmp.usia_pegawai < pgw[j-1].usia_pegawai)) do
	 	begin
	 	 		if (pgw[i].gaji_pegawai > pgw[idxmax].gaji_pegawai) then
	 	 		begin
	 	 		 	idxmax:=i;
	 	 		end; 
	 	 		{end if}
	 	i:=i+1;
	 	end;
	 	{end while}
	end;
	{end while}
	tmp:=pgw[idxmax];
	pgw[idxmax]:=pgw[pass];
	pgw[pass]:=tmp;
	pass:=pass+1;
end;

procedure MenuInsertion();
var
	pilih : char;
	
begin
	repeat
		writeln('|**************************************************|');
		writeln('|        PILIH DATA PEGAWAI BERDASARKAN USIA       |');
		writeln('|       1. ASCENDING                               |');
		writeln('|       2. DESCENDING                              |');
		writeln('|**************************************************|');
		writeln;
		write('Pilih Nomor yang Anda Inginkan : ');
		readln(pilih);
		if (pilih = '1') then
		 urutUsiaInsertionAscending;
	   else
	    if (pilih = '2') then
	     urutUsiaInsertionDescending;	
	until (pilih='1') or (pilih='2');
end;

procedure MenuSelection();
var
	pilih : char;
	
begin
	repeat
		writeln('|**************************************************|');
		writeln('|        PILIH DATA PEGAWAI BERDASARKAN GAJI       |');
		writeln('|       1. ASCENDING                               |');
		writeln('|       2. DESCENDING                              |');
		writeln('|**************************************************|');
		writeln;
		write('Pilih Nomor yang Anda Inginkan : ');
		readln(pilih);
		if (pilih = '1') then
		 urutGajiSelectionAscending;
	   else
	    if (pilih = '2') then
	     urutGajiSelectionDescending;	
	until (pilih='1') or (pilih='2');
end;



procedure inputPegawai(var pgw : larik_pegawai; var j : integer);
var
	i,n : integer;
	x : pegawai;
begin
	clrscr;
	i:=1;
	writeln('|**********************************|');
	writeln('|  HARAP PERHATIKAN ID PEGAWAI :   |');
	writeln('|  1 : KEPALA CABANG               |');
	writeln('|  2 : WAKIL KEPALA CABANG         |');
	writeln('|  3 : ANGGOTA                     |');
	writeln('|**********************************|');
	writeln;
	write('SILAHKAN MASUKKAN JUMLAH DATA YANG DIINGINKAN : ');
	readln(n);
	while (i <= n) and (i <= nmaks) do
	begin
	 	write('ID Pegawai      : '); readln(x.id_pegawai);
	 	write('Nama Pegawai    : '); readln(x.nama_pegawai);
	 	write('Usia Pegawai    : '); readln(x.usia_pegawai);
	 	write('Jabatan Pegawai : '); readln(x.jabatan_pegawai);
	 	write('Gaji Pegawai    : '); readln(x.gaji_);
	 	 if ((x.id_pegawai = 1) or (x.id_pegawai = 2) or (x.id_pegawai = 3) then
	 	 begin
	 	  	j:=j+1;
	 	  	pgw[j]:=x;
	 	  	Success;
	 	 end
	 	else
	 	 begin
	 	  	Fail;
	 	  end; 
	 	 readln;
	 	 {end if}
	 	i:=i+1;
	end;
	{end while}   

end;

procedure MenuView();
var
	pilih : char;
		
begin
clrscr;
	repeat
		repeat
			writeln('***** SILAHKAN PILIH *****');
			writeln('1. Cek Data Pegawai       ');
			writeln('2. Urut Data Pegawai      ');
			writeln('3. Edit Data Pegawai      ');
			writeln('4. Hapus Data Pegawai     ');
			writeln('0. Kembali                ');
			writeln('**************************');
			writeln;
			writeln('Pilih Nomor : ');
			readln(pilih);
		until (pilih='1') or (pilih='2') or (pilih='3') or (pilih='4') or (pilih='0');
		pilihMenuView(pilih);
	until (pilih='0');
end;

procedure Fail();
begin
clrscr;
	writeln('*********************************');
	writeln('       PROSES INPUT GAGAL        ');
	writeln('*********************************');
end;

procedure Success();
begin
clrscr;
	writeln('*********************************');
	writeln('       PROSES INPUT BERHASIL     ');
	writeln('*********************************');
end;

procedure pilihMenu;(pilih : char);
begin
	case pilih of
		'0' : begin
			
		end;

		'1' : begin
			inputPegawai;
		end;

		'2' : begin
			MenuView;
		end;

	end;
end;

procedure TampilanMenu();
var
	pil : char;

begin
repeat
 repeat	
	begin
		writeln('****** MAIN MENU ******');
		writeln('1. Input Data Pegawai  ');
		writeln('2. Lihat Data Pegawai  ');
		writeln('0. Exit                ');
		writeln('***********************');
		writeln;
		writeln('Pilih Nomor : '); 
		readln(pil);
	end;

 until (pil='1') or (pil='2') or (pil='0');
 pilihMenu(pil);
until (pil='0'); 
	 
end;


procedure TampilanAwal();
begin
clrscr;
	writeln('|************************************************|');
	writeln('|                                                |');
	writeln('|        SELAMAT DATANG DI DATA PEGAWAI          |');
	writeln('|            PT. SELAMAT SENTOSA                 |');
	writeln('|                                                |');
	writeln('|             by Evan Hisyam A                   |');
	writeln('|************************************************|');
	writeln;
	writeln;
	writeln('                 PRESS ANY KEY . . .              ');
	readln;
end;
	


//program utama
begin
	j:=0;
	TampilanAwal;
	TampilanMenu;
end.