#!/bin/bash
echo "grep summary" > summary.csv

declare -a csdaccount=("tbang" "cfchanal" "cwchanbf" "hychanbi" "khpchan" "klchanax" "kcjchanab" "kychanbx" "pwchanaf" "wschanaq" "ysschanaa" "ycchanau" "fychau" "kyecheung" "wychong" "chchowag" "cwchuac" "chdaiaa" "zfengae" "lhfongaa" "ycfungad" "vganesh" "slheungaa" "tkhoad" "wyhoaj" "pjholt" "jhyunaa" "simran" "syjungaa" "hgkim" "hdkim" "whkwanaa" "ytlamak" "cyleeaq" "wlleeag" "ysleead" "kcleungaq" "khleungat" "pcli" "xliucf" "yyloae" "jhlow" "chmakac" "mkbmakpolo" "vmisra" "kimong" "tsngaa" "cfpoon" "bprintz" "usharmaaa" "cttaiaa" "sctangac" "slto" "hytsangai" "wltsangaa" "chtseae" "cywanaf" "khwanac" "ycwanab" "clwongan" "cywongbr" "khwongbf" "wlwongag" "ymwongaj" "cwyan" "kcyuenac" "dzhantayeva")

declare -a name=("BANG_Taehoon" "CHAN_Cheuk_Fung" "CHAN_Chi_Wa" "CHAN_Ho_Yin" "CHAN_Ka_Hei_Philson" "CHAN_Ki_Leong" "CHAN_Kwong_Chung_Joshua" "CHAN_Kwong_Yin" "CHAN_Pok_Wah" "CHAN_Wai_Sing" "CHAN_Yee_San_Samuel" "CHAN_Yiu_Chung" "CHAU_Fung_Ying" "CHEUNG_Kwan_Yeung_Ernest" "CHONG_Wai_Yeung" "CHOW_Chun_Hin" "CHU_Chung_Wing" "DAI_Chi_Hang" "FENG_Zihan" "FONG_Lam_Hang" "FUNG_Yuk_Cheung" "GANESH_Vaishnavi" "HEUNG_Shui_Leung" "HO_Tsz_Kiu" "HO_Wing_Yin" "HOLT_Peter_Joseph" "HYUN_Jeongseok" "IMRAN_Shayan" "JUNG_Sang_Yeop" "KIM_Hyun_Gyu" "KIM_Hyunrae_David" "KWAN_Wai_Ho" "LAM_Yun_Tin" "LEE_Chun_Yin" "LEE_Wai_Lam" "LEE_Yuk_Shan" "LEUNG_Ka_Chung" "LEUNG_Kwan_Ho" "LI_Pui_Ching" "LIU_Xuyang" "LO_Yau_Yu" "LOW_Jin_Hui" "MAK_Ching_Hang" "MAKPOLO_Marleeka_Keyala_Brodie" "MISRA_Vinamra" "MONG_Kin_Ip" "NG_Tik_Sang" "POON_Chun_Fung" "PRINTZ_Benedict" "SHARMA_Uday" "TAI_Ching_Tai" "TANG_Shing_Chun" "TO_Sin_Lam" "TSANG_Ho_Ying" "TSANG_Wai_Lap" "TSE_Chi_Hin" "WAN_Cheuk_Yiu" "WAN_Ka_Hung" "WAN_Yi_Ching" "WONG_Chi_Leung" "WONG_Chiu_Yu" "WONG_Kwan_Ho" "WONG_Wai_Lun" "WONG_Yuk_Ming" "YAN_Chiu_Wai" "YUEN_Kin_Chung" "ZHANTAYEVA_Damilya")

for i in `seq 0 66`
do
	f=./lab_5/${name[$i]}_${csdaccount[$i]}
	succ=`grep -Eo '([0-9]) tests successful' ${f}/result.txt | grep -oE '[0-9]+'`
	fail=`grep -Eo '([0-9]) tests failed' ${f}/result.txt | grep -oE '[0-9]+'`
	echo $f, $succ, $fail >> summary.csv
done

	# find ${f} -name Bus.java 
	# find ${f} -name BusCompany.java