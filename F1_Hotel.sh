#!/bin/bash

: '
This is a project that made by author Rizki Roihan Soeharto and author
Laode Muhamad Firdaus for fulfilling requirements of Project 10 at
CEP CCIT-FTUI 

https://github.com/racrbmr
https://github.com/laode308

F1 Hotel

## all project resources and source code can be accessed
## in author`s github.   
'

## All variables
## Ini hanya info variable-variable yang dipakai di applikasi ini.
: '
trans_id=$RANDOM
date=$(date)
numeric='^[0-9]+$'
exit='[Xx]'
'
## variable-variable untuk warna
## reference https://www.youtube.com/watch?v=N8pdAvIwj28

bold=`echo -en "\e[1m"`
underline=`echo -en "\e[4m"`
dim=`echo -en "\e[2m"`
strickthrough=`echo -en "\e[9m"`
blink=`echo -en "\e[5m"`
reverse=`echo -en "\e[7m"`
hidden=`echo -en "\e[8m"`
normal=`echo -en "\e[0m"`
black=`echo -en "\e[30m"`
red=`echo -en "\e[31m"`
green=`echo -en "\e[32m"`
orange=`echo -en "\e[33m"`
blue=`echo -en "\e[34m"`
purple=`echo -en "\e[35m"`
aqua=`echo -en "\e[36m"`
gray=`echo -en "\e[37m"`
darkgray=`echo -en "\e[90m"`
lightred=`echo -en "\e[91m"`
lightgreen=`echo -en "\e[92m"`
lightyellow=`echo -en "\e[93m"`
lightblue=`echo -en "\e[94m"`
lightpurple=`echo -en "\e[95m"`
lightaqua=`echo -en "\e[96m"`
white=`echo -en "\e[97m"`
default=`echo -en "\e[39m"`
BLACK=`echo -en "\e[40m"`
RED=`echo -en "\e[41m"`
GREEN=`echo -en "\e[42m"`
ORANGE=`echo -en "\e[43m"`
BLUE=`echo -en "\e[44m"`
PURPLE=`echo -en "\e[45m"`
AQUA=`echo -en "\e[46m"`
GRAY=`echo -en "\e[47m"`
DARKGRAY=`echo -en "\e[100m"`
LIGHTRED=`echo -en "\e[101m"`
LIGHTGREEN=`echo -en "\e[102m"`
LIGHTYELLOW=`echo -en "\e[103m"`
LIGHTBLUE=`echo -en "\e[104m"`
LIGHTPURPLE=`echo -en "\e[105m"`
LIGHTAQUA=`echo -en "\e[106m"`
WHITE=`echo -en "\e[107m"`
DEFAULT=`echo -en "\e[49m"`


rooms() {
    clear
    echo ""
    echo "  <><><><><><><><><><><><><>"
    echo "  <>                      <>"
    echo "  <>     F1 Services      <>"
    echo "  <>                      <>"
    echo "  <> - Deluxe Room        <>"
    echo "  <> - Executive Room     <>"
    echo "  <> - Royal Suite Room   <>"
    echo "  <> - Back               <>"
    echo "  <><><><><><><><><><><><><>"
    echo ""
    echo "  Select Room: "
    echo ""

    select number in "Deluxe" "Executive" "Royal" "Back"; do
        case $number in
            "Deluxe" )
                clear
                Deluxe ;;

            "Executive" )
                clear
                Executive ;;

            "Royal" )
                clear
                Royal ;;

            "Back" )
                main ;;

            * )  ## menangkap semua kondisi diluar pilihan yang tersedia (seperti else di if statement)
                echo ""
                echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                sleep 2
                clear
                rooms ;;
        esac
    done
}


Deluxe() {
    echo ""
    echo "                  xxxxxxx > Deluxe Room < xxxxxxx"
    echo "                  xx                           xx"
    echo "                  xx - Size 40 m2              xx"
    echo "                  xx - Bed 2 Adult 1 Children  xx"
    echo "                  xx - Electronic Door Locks   xx"
    echo "                  xx - Coffe/Tea Maker         xx"
    echo "                  xx - Bathtub                 xx"
    echo "                  xx - Cable TV                xx"
    echo "                  xx - Internet Wifi           xx"
    echo "                  xx                           xx"
    echo "                  xxx  > 750.000 IDR/night <  xxx"
    echo ""
    echo ""
    echo "  Press ${red}ENTER${normal} to Return"
    read
    rooms 
}

Executive() {
    echo ""
    echo "               xxxxxxxx > Executive Room < xxxxxxxx"
    echo "               xx                                xx"
    echo "               xx - Size 46 m2                   xx"
    echo "               xx - Bed 2 Adult 1 Children       xx"
    echo "               xx - Electronic Door Locks        xx"
    echo "               xx - Coffe/Tea Maker              xx"
    echo "               xx - Telephone                    xx"
    echo "               xx - International Direct Dialing xx"
    echo "               xx - Bathtub                      xx"
    echo "               xx - Bathrobes                    xx"
    echo "               xx - Working Desk                 xx"
    echo "               xx - Cable TV                     xx"
    echo "               xx - Internet Wifi                xx"
    echo "               xx                                xx"
    echo "               xxxxx > 1.100.000 IDR/night <  xxxxx"
    echo ""
    echo ""
    echo "  Press ${red}ENTER${normal} to Return"
    read
    rooms
}

Royal() {
    echo ""
    echo "              xxxxxxxx > Royal Suite Room < xxxxxxxx"
    echo "              xx                                  xx"
    echo "              xx - Size 72 m2                     xx"
    echo "              xx - 2 Bedroom                      xx"
    echo "              xx - Bed 2 Adult 1 Children         xx"
    echo "              xx - Electronic Door Locks          xx"
    echo "              xx - Coffe/Tea Maker                xx"
    echo "              xx - Telephone                      xx"
    echo "              xx - International Direct Dialing   xx"
    echo "              xx - Bathtub                        xx"
    echo "              xx - Bathrobes                      xx"
    echo "              xx - Working Desk                   xx"
    echo "              xx - Cable TV                       xx"
    echo "              xx - Internet Wifi                  xx"
    echo "              xx - In-Room SafeDeposit Box        xx"
    echo "              xx - Hairdryer                      xx"
    echo "              xx - Spare Pillows                  xx"
    echo "              xx - Smoke Detectors in Room        xx"
    echo "              xx - Balcony                        xx"
    echo "              xx - Mini Bar                       xx"
    echo "              xx                                  xx"
    echo "              xxxxxx > 2.250.000 IDR/night <  xxxxxx"
    echo ""
    echo ""
    echo "  Press ${red}ENTER${normal} to Return"
    read
    rooms
}

book_a_room() {
    clear
    echo ""
    echo "       F1 HOTEL RESERVATION"
    echo "        INPUT DATA BOOKING"
    echo ""
    read -p "Name : " name
    clear

    echo ""
    echo "       F1 HOTEL RESERVATION"
    echo "        INPUT DATA BOOKING"
    echo ""
    read -p "NIK/KTP Number : " ktp
    clear

    echo ""
    echo "       F1 HOTEL RESERVATION"
    echo "        INPUT DATA BOOKING"
    echo ""
    read -p "Check-in Date (dd/mm/yy) : " cid
    read -p "Check-out Date (dd/mm/yy) : " cod
    clear

    echo ""
    echo "          F1 HOTEL RESERVATION"
    echo "          INPUT DATA BOOKING"
    echo ""
    echo "              Choose Room"
    echo ""
    echo "     - Deluxe Room (750.000 IDR/night)"
    echo "     - Executive Room (1.100.000 IDR/night)"
    echo "     - Royal Suite Room (2.250.000 IDR/night)"
    echo ""
    echo "Choose: "
    select s_room in "Deluxe" "Executive" "Royal Suite"; do
        case $s_room in
            "Deluxe" )
                echo ""
                echo "Selected Room: ${bold}${aqua}Deluxe Room${normal}"
                echo ""
                room="Deluxe Room";
                price=750000;
                original_price=750000;
                break ;;           
            "Executive" )
                echo ""
                echo "Selected Room: ${bold}${aqua}Executive Room${normal}"
                echo ""
                room="Executive Room";
                price=1100000;
                original_price=1100000;
                break ;;
            "Royal Suite" )
                echo ""
                echo "Selected Room: ${bold}${aqua}Royal Suite Room${normal}"
                echo ""
                room="Royal Suite Room";
                price=2250000;
                original_price=2250000;
                break ;;
            * )  
                echo ""
                echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                sleep 2
                clear
                book_a_room ;;
        esac
    done

    read -p "For How Many Night? : " night

    clear

    echo ""
    echo "          F1 HOTEL RESERVATION"
    echo "          INPUT DATA BOOKING"
    echo ""
    echo "  Payment Methods"
    echo "  - Cash"
    echo "  - ATM Transfer"
    echo "  - M-Banking"
    echo "  - OVO"
    echo ""
    echo "Choose Payment Method: "
    echo ""

    select m_p in "Cash" "ATM" "M-Banking" "OVO"; do
        case $m_p in
            "Cash" )
                echo ""
                echo "Method: ${bold}${aqua}Cash${normal}"
                echo ""
                method="Cash"
                break ;;           
            "ATM" )
                echo ""
                echo "Method: ${bold}${aqua}ATM Transfer${normal}"
                echo ""
                method="ATM Transfer"
                break ;;
            "M-Banking" )
                echo ""     
                echo "Method: ${bold}${aqua}M-Banking${normal}"
                echo ""
                method="M-Banking"
                break ;;
            "OVO" )
                echo ""
                echo "Method: ${bold}${aqua}OVO${normal}"
                echo ""
                method="OVO"
                break ;;
            * )  
                echo ""
                echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                sleep 2
                clear
                book_a_room ;;
        esac
    done

    ## mennginput variable berisi daftar-daftar kode diskon dan besar diskon  dari file lain.
    ## dalam kasus ini discount_code.txt
    ## reference : https://www.daveeddy.com/2010/09/20/import-source-files-in-bash/
    source discount_code.txt

    echo "Do You Have a DISCOUNT CODE?"
    select disc in "Yes" "No"; do
        case $disc in
            "Yes" )
                read -p "Input DISCOUNT CODE: " disc_code
                ## variable-variable berisi kode diskon dan besar diskon dipanggil menggunakan ${percent_10[0]}
                ## dikarenakan variablenya merupakan array, dan  disini dicontohkan [0]
                ## yang berarti memanggil elemen array ke-1, kenapa ditulisnya 0?
                ## karena array mulai dari 0
                ## reference: https://opensource.com/article/18/5/you-dont-know-bash-intro-bash-arrays
                if [[ $disc_code =~ ${percent_10[0]} ]] ;
                then
                    echo ""  
                    echo "YOU GOT ${percent_10[1]} DISCOUNT WITH ${percent_10[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        ## mengkalikan harga asli dengan diskon 10%, jika 20% = * ${percent_20[2]} / 100. dst.
                        d=$(( price * ${percent_10[2]} / 100 ))
                        ## dan mengurangi harga asli dengan hasil perkalian
                        price=$(( price - $d ))
                        apply_disc="${percent_10[1]} (CODE: ${percent_10[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]]
                    then
                        ## tidak merubah harga aslinya karena tidak jadi menggunakan kode diskon
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi
                elif [[ $disc_code =~ ${percent_6_69[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_6_69[1]} DISCOUNT WITH ${percent_6_69[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_6_69[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_6_69[1]} (CODE: ${percent_6_69[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi
                elif [[ $disc_code =~ ${percent_3_99[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_3_99[1]} DISCOUNT WITH ${percent_3_99[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_3_99[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_3_99[1]} (CODE: ${percent_3_99[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi
                elif [[ $disc_code =~ ${percent_6_16[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_6_16[1]} DISCOUNT WITH ${percent_6_16[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_6_16[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_6_16[1]} (CODE: ${percent_6_16[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi
                elif [[ $disc_code =~ ${percent_30[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_30[1]} DISCOUNT WITH ${percent_30[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_30[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_30[1]} (CODE: ${percent_30[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi
                elif [[ $disc_code =~ ${percent_80[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_80[1]} DISCOUNT WITH ${percent_80[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_80[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_80[1]} (CODE: ${percent_80[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi
                elif [[ $disc_code =~ ${percent_50[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_50[1]} DISCOUNT WITH ${percent_50[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_50[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_50[1]} (CODE: ${percent_50[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi  
                elif [[ $disc_code =~ ${percent_3_33[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_3_33[1]} DISCOUNT WITH ${percent_3_33[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_3_33[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_3_33[1]} (CODE: ${percent_3_33[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi
                elif [[ $disc_code =~ ${percent_5_25[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_5_25[1]} DISCOUNT WITH ${percent_5_25[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_5_25[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_5_25[1]} (CODE: ${percent_5_25[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi
                elif [[ $disc_code =~ ${percent_5_75[0]} ]] ;
                then
                    echo ""
                    echo "YOU GOT ${percent_5_75[1]} DISCOUNT WITH ${percent_5_75[0]} CODE"
                    echo ""
                    read -p "Continue With Discount [Y/N]?: " continue_discount
                    if [[ $continue_discount == "Y" ]] ;
                    then
                        d=$(( price * ${percent_5_75[2]} / 100 ))
                        price=$(( price - $d ))
                        apply_disc="${percent_5_75[1]} (CODE: ${percent_5_75[0]})"
                        echo ""
                        echo "  APPLYING CODE..."
                        sleep 1
                        break
                    elif [[ $continue_discount == "N" ]] ;
                    then
                        price=$price
                        apply_disc="-"
                        echo ""
                        echo "  Loading..."
                        break
                    else
                        echo ""
                        echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                        sleep 2
                        book_a_room
                    fi                      
                else
                    echo ""
                    echo "  ${red}INVALID${normal} DISCOUNT CODE"
                    sleep 2
                    book_a_room
                fi ;;
            "No" )
                apply_disc="-"
                echo ""
                echo "  Loading..."
                break ;;
            * )
                echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                sleep 2
                clear
                book_a_room ;;
        esac
    done

    sleep 3
    
    clear

    echo ""
    echo "         F1 HOTEL RESERVATION"
    echo "         INPUT DATA BOOKING"
    echo ""
    echo "  NAME                 : ${orange}$name${normal}"
    echo "  NIK/KTP Number       : ${orange}$ktp${normal}"
    echo "  CHECK-IN             : ${orange}$cid${normal}"
    echo "  CHECK-OUT            : ${orange}$cod${normal}"
    echo "  ROOM TYPE            : ${orange}$room${normal}"
    echo "  DURATION             : ${orange}$night${normal} Night(s)"
    echo "  NORMAL PRICE         : ${red}${bold}$(( original_price * night ))${normal} IDR"
    echo "  DISCOUNT             : ${lightgreen}$apply_disc${normal}"
    echo "  TOTAL PRICE          : ${red}${bold}$(( price * night ))${normal} IDR"
    echo "  PAYMENT METHOD       : ${orange}$method${normal}"
    echo ""
    echo ""
    echo "Proceed Reservation?"



    ## Menyimpan Pseudorandom $RANDOM ke Variable
    ## referrence : https://www.youtube.com/watch?v=DS0VQAC-gak
    trans_id=$RANDOM
    date=$(date)

    ## Menyimpan input customer ke dalam file untuk bukti transaksi/pemesanan.

    select save in "Yes" "No"; do
        case $save in
            "Yes" )
                echo "" >> transactions/$trans_id.txt
                echo "                       F1 HOTEL - INDONESIA" >> transactions/$trans_id.txt
                echo "" >> transactions/$trans_id.txt
                echo "  Jl. Tata Krama Timur Blok A. F1 Hotel Tower, JAKARTA - INDONESIA" >> transactions/$trans_id.txt
                echo "" >> transactions/$trans_id.txt
                echo "  -- F1 Hotel Customer Transaction Receipt --" >> transactions/$trans_id.txt
                echo "" >> transactions/$trans_id.txt
                echo "  NAME                 : $name" >> transactions/$trans_id.txt
                echo "  NIK/KTP Number       : $ktp" >> transactions/$trans_id.txt
                echo "  CHECK-IN             : $cid" >> transactions/$trans_id.txt
                echo "  CHECK-OUT            : $cod" >> transactions/$trans_id.txt
                echo "  ROOM TYPE            : $room" >> transactions/$trans_id.txt
                echo "  DURATION             : $night NIGHT(S)" >> transactions/$trans_id.txt
                echo "  NORMAL PRICE         : $(( original_price * night )) IDR" >> transactions/$trans_id.txt
                echo "  DISCOUNT             : ${lightgreen}$apply_disc${normal}" >> transactions/$trans_id.txt
                echo "  TOTAL PRICE          : $(( price * night )) IDR" >> transactions/$trans_id.txt
                echo "  PAYMENT METHOD       : $method" >> transactions/$trans_id.txt
                echo "" >> transactions/$trans_id.txt
                echo "  Book Date            : ${bold}${orange}$date${normal}" >> transactions/$trans_id.txt
                echo "  Transaction ID       : ${bold}${red}$trans_id${normal}" >> transactions/$trans_id.txt
                echo "  ======================================================" >> transactions/$trans_id.txt

                echo "" >> transactions/trans_id_list.txt
                echo "          !! WARNING !! CONFIDENTIAL !!" >> transactions/trans_id_list.txt
                echo "" >> transactions/trans_id_list.txt
                echo "-- F1 Hotel Customer Transaction Lists --" >> transactions/trans_id_list.txt
                echo "" >> transactions/trans_id_list.txt
                echo "Format :  NAME > TRANSACTION ID > DATE" >> transactions/trans_id_list.txt
                echo "" >> transactions/trans_id_list.txt
                echo "$name > $trans_id > $date" >> transactions/trans_id_list.txt
                echo "==================================================" >> transactions/trans_id_list.txt
                break ;;

            "No" )
                clear
                echo ""
                echo "  Loading Main Menu."
                sleep 0.3
                clear
                echo ""
                echo "  Loading Main Menu.."
                sleep 0.3
                clear
                echo ""
                echo "  Loading Main Menu..."
                sleep 0.3
                clear
                echo ""
                echo "  Loading Main Menu..."
                sleep 1
                clear
                main ;;

            * )  
                echo ""
                echo "  ${red}WRONG INPUT${normal}, Please Book Again."
                sleep 2.5
                book_a_room ;;
        esac
    done    


    clear
    echo ""
    echo "                Thank You For Choosing F1 Hotel"
    sleep 1
    echo ""
    echo "                      Making Receipt...."
    sleep 2
    clear
    echo ""
    echo "                     F1 HOTEL RESERVATION"
    echo "                    RECEIPT OF TRANSACTION"
    echo ""
    echo "              NAME                 : $name"
    echo "              NIK/KTP Number       : $ktp"
    echo "              CHECK-IN             : $cid"
    echo "              CHECK-OUT            : $cod"
    echo "              ROOM TYPE            : $room"
    echo "              DURATION             : $night NIGHT(S)"
    echo "              NORMAL PRICE         : $(( original_price * night )) IDR"
    echo "              DISCOUNT             : ${lightgreen}$apply_disc${normal}"
    echo "              PRICE TOTAL          : $(( price * night )) IDR"
    echo "              PAYMENT METHOD       : $method"
    echo ""
    echo "              Book Date            : ${bold}${orange}$date${normal}"
    echo "              Transaction ID       : ${bold}${red}$trans_id${normal}"
    echo ""
    echo ""
    echo ""
    echo "  Please Take Note On ${bold}${red}TRANSACTION ID${normal} For Cancel Reservation"
    echo ""
    echo "  Press ${red}ENTER${normal} to Continue"
    read

    clear
    echo ""
    echo "         Thank You For Making Reservation With F1 Hotel"
    echo ""
    echo "                      We Serve The Best"
    sleep 2
    echo ""
    echo ""
    echo ""
    echo "."
    sleep 1
    echo "."
    sleep 1
    echo "."
    clear
    echo "       xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    echo "       xxxxx          xxxxxxxx    xxxxx x\                   / x xxxxx"
    echo "       xxxxx    xxxxxxxxxxxx      xxxxx x   F1 HOTEL RESORT    x xxxxx"
    echo "       xxxxx    xxxxxxxxxxxxxx    xxxxx x/                   \ x xxxxx"
    echo "       xxxxx          xxxxxxxx    xxxxx xxxxxxxxxxxxxxxxxxxxxxxx xxxxx"
    echo "       xxxxx    xxxxxxxxxxxxxx    xxxxx x                      x xxxxx"
    echo "       xxxxx    xxxxxxxxxxxxxx    xxxxx x  >  BEST OF HOTEL <  x xxxxx"
    echo "       xxxxx    xxxxxxxxxxxxxx    xxxxx x        RESORT        x xxxxx"
    echo "       xxxxx    xxxxxxxxxxxx        xxx x        ^^^^^^        x xxxxx"
    echo "       xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    echo "       ---------------------------------------------------------------"
    sleep 0.8
    clear
    main
}

cancel() {
    clear
    echo ""
    echo "  Loading."
    sleep 0.1
    clear
    echo ""
    echo "  Loading.."
    sleep 0.1
    clear
    echo ""
    echo "  Loading..."
    sleep 0.1
    clear
    echo ""
    echo "  Loading...."
    sleep 0.3
    clear

    echo ""
    echo "  === If You Want To Go Back To Main Menu Press '${red}X${normal}' ==="
    echo ""
    read -p "   Please Input ${bold}${red}TRANSACTION ID${normal} You Want To Cancel: " cancel


    ## numeric untuk memverifikasi jika yang diinput adalah angka atau yang lainnya
    numeric='^[0-9]+$'

    ## var exit untuk menerima input baik lowercase atau uppercase dari 'x'
    exit='[Xx]'

    if [[ $cancel =~ $exit ]] ;
    then
        main
    else
        echo ""
    fi

    if ! [[ $cancel =~ $numeric ]] ;
    then
        clear
        echo ""
        echo "  Please Input ${bold}${red}Transaction ID${normal} ${underline}${red}CORRECTLY${normal}"
        sleep 3
        cancel
    else
        echo ""
    fi

    if [[ -f transactions/$cancel.txt ]] ;
    then
        clear
        echo ""
        echo "  Searching Transaction ID."
        sleep 0.2
        clear
        echo ""
        echo "  Searching Transaction ID.."
        sleep 0.4
        clear
        echo ""
        echo "  Searching Transaction ID..."
        sleep 1
        clear
        echo ""
        echo "  Searching Transaction ID...."
        sleep 2
        clear
        echo ""
        echo "  Searching Transaction ID....."
        sleep 0.2
        clear
        echo ""
        echo "Transaction ID: ${bold}${red}$cancel${normal}"
        echo ""
        cat transactions/$cancel.txt   
    else
        clear
        echo ""
        echo "  Searching Transaction ID."
        sleep 0.2
        clear
        echo ""
        echo "  Searching Transaction ID.."
        sleep 0.4
        clear
        echo ""
        echo "  Searching Transaction ID..."
        sleep 1
        clear
        echo ""
        echo "  Searching Transaction ID...."
        sleep 2
        clear
        echo ""
        echo "  Searching Transaction ID....."
        sleep 0.2
        clear
        echo ""
        echo "  No ${bold}${red}Transaction ID${normal} Found, PLEASE TRY AGAIN."
        sleep 4
        clear
        cancel
    fi

    echo ""
    echo "Are You Sure Want To Cancel Reservation?"
    select sure in "Sure" "Nope"; do
        case $sure in
            "Sure" ) 
                clear ;
                echo ""
                echo "  Canceling Reservation."
                sleep 0.4
                clear
                echo ""
                echo "  Canceling Reservation.."
                sleep 0.2
                clear
                echo ""
                echo "  Canceling Reservation..."
                sleep 0.5
                clear
                echo ""
                echo "  Canceling Reservation...."
                sleep 1
                clear
                rm transactions/$cancel.txt
                echo ""
                echo "  RESERVATION HAS BEEN ${red}CANCELED${normal} SUCCESSFULLY"
                sleep 2.5
                main ;;           
            "Nope" )
                clear ;
                echo ""
                echo "  Loading Main Menu."
                sleep 0.3
                clear
                echo ""
                echo "  Loading Main Menu."
                sleep 0.3
                clear
                echo ""
                echo "  Loading Main Menu."
                sleep 0.3
                clear
                echo ""
                echo "  Loading Main Menu."
                sleep 1
                clear
                main ;;
        esac
    done
}


main() {
    clear
    echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    echo "xxxxx          xxxxxxxx    xxxxx x\                   / x xxxxx"
    echo "xxxxx    xxxxxxxxxxxx      xxxxx x   F1 HOTEL RESORT    x xxxxx"
    echo "xxxxx    xxxxxxxxxxxxxx    xxxxx x/                   \ x xxxxx"
    echo "xxxxx          xxxxxxxx    xxxxx xxxxxxxxxxxxxxxxxxxxxxxx xxxxx"
    echo "xxxxx    xxxxxxxxxxxxxx    xxxxx x                      x xxxxx"
    echo "xxxxx    xxxxxxxxxxxxxx    xxxxx x  >  BEST OF HOTEL <  x xxxxx"
    echo "xxxxx    xxxxxxxxxxxxxx    xxxxx x        RESORT        x xxxxx"
    echo "xxxxx    xxxxxxxxxxxx        xxx x        ^^^^^^        x xxxxx"
    echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    echo "---------------------------------------------------------------"
    echo "                                                               "
    echo "                     - Rooms  - Book A Room                    "
    echo ""
    echo "                      - Cancel Reservation                     "
    echo ""
    echo "                            - Exit                             "
    echo "                                                               "
    echo "---------------------------------------------------------------"
    echo "CHOOSE: "
    echo ""

    select choose in "Rooms" "Book A Room" "Cancel Reservation" "Exit"; do
        case $choose in
            "Rooms" )
                rooms ;;
            "Book A Room" )
                book_a_room ;;
            "Cancel Reservation" )
                cancel ;;
            "Exit" )
                clear
                echo ""
                echo ""
                echo ""
                echo "                  exiting."
                sleep 0.2
                clear
                echo ""
                echo ""
                echo ""
                echo "                  exiting.."
                sleep 0.5
                clear
                echo ""
                echo ""
                echo ""
                echo "                  exiting..."
                sleep 0.15
                clear
                echo ""
                echo ""
                echo ""
                echo "                  exiting...."
                sleep 0.25
                clear
                exit ;;
            * )
                echo ""
                echo "  ${red}WRONG INPUT${normal}, PLEASE TRY AGAIN."
                sleep 2
                clear
                main ;;
        esac
    done
}

function greet() {
    clear
    echo ""
    echo ""
    echo ""
    echo "                        -= F1 HOTEL - INDONESIA =-"
    echo ""
    echo "      Jl. Tata Krama Timur Blok A. F1 Hotel Tower, JAKARTA - INDONESIA"
    sleep 3
    clear
    echo ""
    echo ""
    echo ""
    echo "                      Loading."
    sleep 0.3
    clear
    echo ""
    echo ""
    echo ""
    echo "                      Loading.."
    sleep 0.6
    clear
    echo ""
    echo ""
    echo ""
    echo "                      Loading..."
    sleep 0.3
    clear
    echo ""
    echo ""
    echo ""
    echo "                      Loading...."
    sleep 1
    clear
    main
}

while true;
do
    greet
done