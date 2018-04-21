      DIMENSION X(100), Y(100), SUM(21), V(11), A(11), B(11,12)
      READ 3, M, N
  3   FORMAT (I2,I3)
      READ 4,(X(I),Y(I),I=1,N)
  4   FORMAT (4E14.7)
      LS = 2*M + 1
      LB = M + 2
      LV = M + 1
      DO 5 J = 2, LS
  5   SUM(J) = 0.0
      SUM(1) = N
      DO 6 J = 1, LV
  6   V(J) = 0.0
      DO 16 I = 1, N
      P=1.0
      V(1) = V(1) + Y(I)
      DO 13 J = 2, LV
      P = X(I)*P
      SUM(J) = SUM(J) + P
 13   V(J) = V(J) + Y(I)*P
      DO 16 J=LB, LS   
      P = X(I)*P
 16   SUM(J) = SUM(J) + P
 17   DO 20 I = 1, LV
      DO 20 K = 1, LV
      J = K + I
 20   B(K,I) = SUM(J-1)
      DO 22 K = 1, LV
 22   B(K,LB) = V(K)
 23   DO 31 L = 1, LV
      DIVB = B(L,L)
      DO 26 J = L, LB
 26   B(L,J) = B(L,J)/DIVB
      I1 = L + 1
      IF(I1-LB) 28, 33, 33
 28   DO 31 I = I1, LV
      FMULTB = B(I,L)
      DO 31 J = L, LB
 31   B(I, J) = B(I, J) - B(L, J)*FMULTB
 33   A(LV) = B(LV, LB)
      I = LV
 35   SIGMA = 0.0
      DO 37 J=I, LV
 37   SIGMA = SIGMA + B(I-1,J)*A(J)
      I = I-1
      A(I) = B(I,LB) - SIGMA
 40   IF(I-1) 41,41,35
 41   PRINT 42, (A(I),I=1, LV)
 42   FORMAT (5E15.6)
 43   STOP