CCOMBIN PROG. TO GENERATE THE COMBINATIONS OF N THINGS TAKEN K AT A TIME      00
      DIMENSION     IA(99),IW(99)                                             01
C NOTE THAT N MAY NOT EXCEED 99 AND K  MUST BE BETWEEN ZERO AND N.            02
10    READ   100,N,K                                                          03
      PRINT               102,N,K                                             04
      DO 20 IJ=1,N                                                            05
20    IW(IJ)=IJ                                                               06
      NPLUS1 = N+1                                                            07
      NPLUSK = N+K                                                            08
      IT = 1                                                                  09
      IA(IT) = 1                                                              10
1     IAT= IA(IT)                                                             11
      NPLIT = N+IT                                                            12
      IW(NPLIT) = IW(IAT)                                                     13
      IF(IT-K)2,3,2                                                           14
2     IA(IT+1)=IA(IT)+1                                                       15
      IF(N-IA(IT+1))5,4,4                                                     16
4     IT=IT+1                                                                 17
      GO TO 1                                                                 18
5     IT=IT-1                                                                 19
      IF(IT)6,7,6                                                             20
6     IA(IT)=IA(IT)+1                                                         21
      IF(N-IA(IT))5,1,1                                                       22
3     PRINT               101,(IW(L),L=NPLUS1,NPLUSK )                        23
      GO TO 6                                                                 24
7     GO TO 10                                                                25
100   FORMAT (I2,I2)                                                          26
101   FORMAT (1H ,13I5)                                                       27
102   FORMAT(31H1LISTED ARE THE COMBINATIONS OF I4,14H  THINGS TAKEN I4,      28
     111H  AT A TIME  //)                                                     29
