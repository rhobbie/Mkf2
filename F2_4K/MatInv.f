C     MATRIX INVERSION ORDER 5
      FREQUENCY  6(2,1,2)
      DIMENSION  A(5,5)
      DO 1  I = 1, 5
      DO 1  J = 1, 5
    1 A(I,J) = 1.0/FLOATF(I+J-1)
      DO 5  K = 1, 5
      D = A(K,K)
      A(K,K) = 1.0
      DO 2  J = 1, 5
    2 A(K,J) = A(K,J)/D
      DO 5  I = 1, 5
    6 IF (I-K) 3,5,3
    3 D = A(I,K)
      A(I,K) = 0.0
      DO 4  J = 1, 5
    4 A(I,J) = A(I,J) - D * A(K,J)
    5 CONTINUE
      DO 246 I = 1,5
      DO 246 J = 1,5
  246 PRINT 247,I, J, A(I,J)
  247 FORMAT (3H A(I2,1H,I2,4H) = F10.1,I1)
           S     T     O     P
  
      