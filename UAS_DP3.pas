uses crt;

label 
1;

type 
    rec_nasabah = record
    nama : string;
    umur : integer;
    ttl  : string;
    alamat: string;
    pekerjaan : string;
end;

const
max = 100;

var
pilih,jlh,a,n,i,opsi2 : integer;
nasabah : array [1..max] of rec_nasabah;
opsi : char;


procedure data_diri(a : integer); // menu 2 no 4
var
i : integer;
begin
    clrscr;
    for i := 1 to a do 
    begin
        writeln('NAMA      : ',nasabah[i].nama);
        writeln('UMUR      : ',nasabah[i].umur);
        writeln('TTL       : ',nasabah[i].ttl);
        writeln('ALAMAT    : ',nasabah[i].alamat);
        writeln('PEKERJAAN : ',nasabah[i].pekerjaan);

        writeln;
    end;
    
end;

begin
    clrscr;

    1 :
    clrscr;

    writeln('=========== SELAMAT DATANG ============  ');
    writeln('=======================================  ');
    writeln('|| KODE ||         DAFTAR ISI        ||');
    writeln('=======================================');
    writeln('||   1  || Pencatatan Nasabah        ||');
    writeln('||   2  || Data dan Kalkutor Kredit  ||');
    writeln('||   3  || Exit                      ||');
    writeln('=======================================');
    write(' SILAHKAN INPUT KODE ISI : ');
    readln(opsi2);

    a := 1;
        
    clrscr;

    case opsi2 of 

    1: // MENU NO 1
    begin 

        write('Input banyak nasabah : '); readln(n);
        writeln;

        for i := a to n do 
        begin
            jlh := jlh + 1;

            writeln('DATA NASABAH KE ',i);
            write('NAMA      : '); readln(nasabah[jlh].nama);
            write('UMUR      : '); readln(nasabah[jlh].umur);
            write('TTL       : '); readln(nasabah[jlh].ttl);
            write('ALAMAT    : '); readln(nasabah[jlh].alamat);
            write('PEKERJAAN : '); readln(nasabah[jlh].pekerjaan);
            writeln;
        end;

    a := n;

    end;


    2: // MENU NO 2
    begin
    

        repeat 
                clrscr;
                writeln('=======================================');
                writeln('|| KODE ||         DAFTAR ISI        ||');
                writeln('=======================================');
                writeln('||  1   || KREDIT PEMILIKAN RUMAH    ||');
                writeln('||  2   || KREDIT OTOMOTIF           ||');
                writeln('||  3   || KREDIT PINJAMAN UMUM      ||');
                writeln('||  4   || DATA NASABAH              ||');
                writeln('||  5   || BACK                      ||');
                writeln('=======================================');
                writeln('|| SILAHKAN INPUT KODE ISI :         ||'); 
                writeln('=======================================');

                gotoXY (32,10) ; readln(pilih);
                
                clrscr;

                case pilih of
              
                4:
                data_diri(jlh);
                5:
                break;
                else
                writeln('SILAHKAN INPUT DAFTAR DENGAN BENAR (1-5) !');
                end;

                writeln;
                writeln('APAKAH ANDA INGIN KELUAR DARI MENU INI (Y/N) ? '); readln(opsi);
                opsi := upcase(opsi);
        
        until (opsi = 'Y');

        end;
    
    3 : 
    begin
    writeln('Terima Kasih Sudah Menggunakan Program Ini');
    halt;
    end;
    
    else
    writeln('SILAHKAN INPUT DAFTAR DENGAN BENAR (1-2)');
    readln;
    end;

    goto 1;
end.