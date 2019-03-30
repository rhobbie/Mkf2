cd fort2
CopyCards Page1Line3_F.cbn REC000.cbn
CopyCards Page2Line3_A.cbn REC001.cbn
CopyCards Page6Line6_A.cbn REC003.cbn
CopyCards Page14Line7_A.cbn REC005.cbn
CopyCards Page18Line11_A.cbn REC007.cbn
RemoveTransfercard Page20Line11_AT.cbn REC009.cbn
RemoveTransfercard Page21Line9_AT.cbn REC010.cbn
RemoveTransfercard Page22Line5_AT.cbn REC012.cbn
RemoveTransfercard Page30Line9_AT.cbn REC013.cbn
CopyCards Page32Line14_A.cbn+Page36Line1_A.cbn REC014.cbn
CopyCards Page58Line52_A.cbn REC015.cbn
CopyCards Page62Line12_A.cbn REC019.cbn
CopyCards Page95Line45_A.cbn REC018.cbn
CopyCards Page110Line2_A.cbn REC017.cbn
CopyCards Page123Line37_A.cbn REC016.cbn
CopyCards Page143Line11_A.cbn REC020.cbn
CopyCards Page181Line9_A.cbn REC022.cbn
CopyCards Page190Line37_A.cbn REC024.cbn
CopyCards Page202Line13_A.cbn REC021.cbn
CopyCards Page207Line2_A.cbn REC026.cbn
CopyCards Page221Line42_A.cbn REC027.cbn
CopyCards Page240Line20_A.cbn REC034.cbn
CopyCards Page258Line27_A.cbn REC032.cbn
CopyCards Page269Line18_A.cbn REC030.cbn
CopyCards Page277Line49_A.cbn REC029.cbn
CopyCards Page279Line33_A.cbn REC036.cbn
CopyCards Page282Line44_A.cbn REC037.cbn
CopyCards Page285Line4_A.cbn REC039.cbn
CopyCards Page287Line28_A.cbn REC041.cbn
CopyCards Page296Line21_A.cbn REC043.cbn
CopyCards Page301Line16_A.cbn+Page301Line19_A.cbn+Page301Line21_A.cbn REC045.cbn
CopyCards Page312Line25_A.cbn REC047.cbn
CopyCards Page314Line54_A.cbn REC051.cbn
CopyCards Page345Line54_A.cbn REC049.cbn
CopyCards Page371Line5_A.cbn REC053.cbn
RemoveTransfercard Page373Line2_AT.cbn REC055.cbn
RemoveTransfercard Page376Line10_AT.cbn REC056.cbn
RemoveTransfercard Page400Line11_A.cbn+Page424Line53_T.cbn REC058.cbn
RemoveTransfercard Page426Line9_A.cbn+Page438Line24_AT.cbn REC060.cbn
CopyCards Page441Line12_A.cbn REC062.cbn
CopyCards Page455Line21_A.cbn REC064.cbn
CopyCards Page466Line38_A.cbn REC065.cbn
CopyCards Page468Line32_A.cbn REC067.cbn
CopyCards Page474Line4_A.cbn REC069.cbn
CopyCards Page475Line54_A.cbn REC071.cbn
CopyCards Page478Line17_A.cbn REC073.cbn
CopyCards Page492Line29_A.cbn+Page542Line35_A.cbn REC075.cbn
CopyCards Page544Line22_A.cbn REC076.cbn
CopyCards Page546Line10_A.cbn REC078.cbn
CopyCards Page546Line44_A.cbn REC080.cbn
CopyCards Page547Line24_A.cbn REC082.cbn
CopyCards Page548Line4_A.cbn REC084.cbn
CopyCards Page551Line31_A.cbn REC086.cbn
CopyCards Page554Line50_A.cbn REC088.cbn
RemoveTransfercard Page583Line21_AT.cbn REC090.cbn
CopyCards Page591Line7_A.cbn+Page591Line17_A.cbn REC092.cbn
CopyCards Page606Line7_A.cbn+Page608Line3_A.cbn REC094.cbn
CopyCards Page610Line8_A.cbn+Page612Line31_A.cbn REC096.cbn
CopyCards Page616Line18_A.cbn REC098.cbn
RemoveTransfercard Page620Line11_AT.cbn REC100.cbn
RemoveTransfercard Page623Line8_AT.cbn REC101.cbn
RemoveTransfercard Page626Line8_AT.cbn REC103.cbn
RemoveTransfercard Page633Line7_AT.cbn REC105.cbn
RemoveTransfercard Page637Line7_AT.cbn REC107.cbn
CopyCards Page641Line10_A.cbn REC109.cbn
CopyCards Page645Line8_A.cbn REC110.cbn
CopyCards Page651Line12_A.cbn REC111.cbn
RemoveTransfercard Page652Line9_A.cbn+Page652Line23_A.cbn+Page654Line40_AT.cbn REC112.cbn
CopyCards Page658Line6_A.cbn REC113.cbn
CopyCards Page664Line14_A.cbn+Page673Line18_A.cbn REC115.cbn 
CopyCards Page679Line15_A.cbn+Page683Line2_A.cbn+Page705Line15_A.cbn+Page707Line16_A.cbn REC014A.cbn
CopyCards Page740Line48_A.cbn+Page754Line54_A.cbn+Page768Line30_A.cbn REC016A.cbn
CopyCards Page791Line29_A.cbn+Page841Line35_A.cbn REC075A.cbn 
CopyCards Page846Line50_A.cbn REC076A.cbn
CopyCards Page848Line38_A.cbn REC078A.cbn
CopyCards Page849Line18_A.cbn REC080A.cbn
CopyCards Page849Line52_A.cbn REC082A.cbn
CopyCards Page850Line32_A.cbn REC084A.cbn
CopyCards Page854Line5_A.cbn REC086A.cbn
CopyCards Page857Line24_A.cbn REC088A.cbn

rem build record 73A from record 73 using the instructions from fortran listing page 439
SplitDeck REC073.cbn 1 Card1.cbn  tmp1.cbn
SplitDeck tmp1.cbn 1 Card2.cbn tmp2.cbn
SplitDeck tmp2.cbn 15 Card3_17.cbn tmp1.cbn
SplitDeck tmp1.cbn 1 Card18.cbn Card19_end.cbn
PatchCard 1LD=03140 Card2.cbn
PatchCard 4RA=01037 Card18.cbn
CopyCards Card1.cbn+Card2.cbn+Card3_17.cbn+Card18.cbn+Card19_end.cbn REC073A.cbn
del Card*.cbn tmp*.cbn

cd ..
