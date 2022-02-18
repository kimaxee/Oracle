[sql/oracle] 오라클 함수 모음 [펌]
 

 

* 단일 행 함수

-함수가 정의된 SQL문이 실행될 때 각각의 ROW에 대해 수행되며 ROW 당 하나의 결과를 리턴 해줍니다.

-인수로는 상수,변수,표현식들이 사용될 수 있습니다.

-SELECT,WHERE,ORDER BY 절에 사용할 수 있습니다.

 

    구 분    |      함수         |                      내 용

---------------------------------------------------------------------------------------

                 LOWER             모든 문자를 소문자로

                 UPPER              모든 문자를 대문자로

                 INITCAP            첫 글자는 대문자,나머지는 소문자로

                 CANCAT            첫 번째 문자와 두 번째 문자를 연결

                 SUBSTR            문자의 길이를 리턴할 때

                 LENGTH            문자의 길이를 리턴할 때

                 NVL                  널값을 다른 값으로 대체할 때

                 NVL2                조건에 의해 널값을 다른 값으로 대체할 때

                 SUBSTR            특정 문자의 문자열중 필요 부분만 선별하여 사용

    문자       RTRIM               서브 스트림의 정확한 위치와 길이를 요구(오른쪽)

    함수       LTRIM               서브 스트림의 정확한 위치와 길이를 요구(왼쪽)

                 RPAD                문자열을 제외한 공간에 지정한 문자열로 대체(오른쪽)

                 LPAD                문자열을 제외한 공간에 지정한 문자열로 대체(왼쪽)

                 TRANSLATE       첫 문자는 탐색집합의 첫 문자로 대체(2번째도 동일)

                 REPLACE          특정 문자열을 다른 문자열로 대체

                 SOUNDX            같은 단어 또는 유사한 사운드 단어를 음성학적으로

                 LENGTH            문자의 실제 길이를 변환할 때

                 LENGTHB          문자열의 실제 길이를 변환할 때

                 INTSTR             문자열 내의 특정 스트림의 위치

                 NULLIF             조건이 같으면 NULL,다르면 지정된 값을 리턴할 때

                 COALESCE       조건에 따라 여러 가지 값을 리턴할 때

-----------------------------------------------------------------------------------------

 시스템       USER               현재 DB 사용자

   함수        USERID            현재 DB 사용자에게 할당되는 사용자번호

-----------------------------------------------------------------------------------------

 

*문자함수의 예제

EX) -2개의 문자값을 결합합니다.

      SQL>SELECT CONCAT(CONCAT(ename,  ' is a '),job)

              FROM emp;

 

              CONCAT(CONCAT(ENAME,'ISA

              ---------------------------------

              SMITH is a CLERK

              ALLEN is a SALESMAN

 

     -정의된 문장 단어의 첫 번째 문자를 대문자로 변환

      SOL> SELECT INITCAP( 'the soap') FROM DUAL;

 

               INITCAP(

              -----------

               The Soap

 

     -정의된 문장의 왼쪽 나머지 공간을 지정한 문자로 채웁니다.

       SQL> SELECT LPAD( 'Page 1' , 15 , '*.') FROM DUAL;

 

                LPAD( 'PAGE1',15

               ---------------------

                *.*.*.*.*Page 1

 

    -정의된 문장의 왼쪽부터 지정된 단어가 발견되면 제거합니다.

      SQL> SELECT LTRIM( 'xyxXxyLAST WORD','xy') FROM DUAL;

 

               LTRIM('XYXXX

              -------------------

               XxyLAST WORD

 

    -정의된 문장에서 해당 문자가 발견되면 지정된 문자로 변경합니다.

      SQL> SELECT REPLACE( 'JACK and JUE' , 'J' , 'BL') FROM DUAL;

 

               REPLACE( 'JACKA

              -----------------------

               BLACK and BLUE

 

   -정의된 문자의 오른쪽 나머지 공간을 지정한 문자로 채웁니다.

     SQL> SELECT RPAD(ename, 11 ,'ab' ) FROM emp WHERE ename = 'TURNER' ;

 

              RPAD(ENAME , 11 ,'AB')

             ---------------------------

              TURNERababa

 

    -정의된 문자의 오른쪽부터 지정된 단어가 발견되면 제거합니다.

      SQL> SELECT RTRIM( 'TURNERyxXxy' , 'xy') FROM DUAL ;

 

               RTRIM( 'TU

              -------------

               TURNERyxX

 

    -정의된 문장의 지정된 위치부터 해당 길이 만큼만 추출합니다.

      SQL> SELECT SUBSTR( 'ABCDEFG' , 3 , 2 ) FROM DUAL ;

 

               SU

              -------

               CD

 

     -정의된 문장의 뒤에서부터 지정된 위치의 해당 길이 만큼만 추출합니다.

       SQL> SELECT SUBSTR ( 'ABCDEFG' , -3 , 2 ) FROM DUAL ;

 

                SU

               --------

                EF

 

     -문자 'Q'를 ASCII 코드로 변환합니다.

       SQL> SELECT ASCII ( 'Q' ) FROM DUAL ;

 

                ASCII ( 'Q' )

               ---------------

                       81

 

     -정의된 문장에서 지정된 위치에 존재하는 문자의 위치 값을 찾아 줍니다.

       SQL> SELECT INSTR ( 'CORPORATE FLOOR' , 'OR' ,3 ,2 ) FROM DUAL ;

 

                INSTR ( 'CORPORATEFLOOR' , 'OR' , 3 , 2 )

               ---------------------------------------------

                14

 

    -정의된 문장의 길이를 변환합니다.

      SQL> SELECT LENGTHB ( '가나다라마바사') FROM DUAL ;

               LENGTH( '가나다라마바사' )

              ---------------------------

                               14

 

    -정의된 단어 중에 가장 높은 값을 찾아줍니다.

      SQL> SELECT GREATEST ( 'HARRY' , 'HARIOT' ,'HALORD' ) FROM DUAL ;

 

               GREAT

              ---------

               HARRY

 

    -정의한 컬럼이 NULL이면 지정한 값으로 대체합니다.

      SQL> SELECT NVL (sal , 0 ) , NVL( ename , '*' ) , NVL(hiredate , '01-JAN-02' ) FROM emp ;

               NVL(SAL , 0 )     NVL(ENAME ,          NVL(HIRE

              ------------------------------------------------

                     800                 SMITH                  80/12/17




*시스템 함수

  -현재 어떤 사용자로 데이터 베이스에 접속하였는지 알 수 있습니다.

    SQL> SELECT USER FROM dual ;

 

             USER

            -------

             SCOTT





* 숫자함수/날짜함수

------------------------------------------------------------------------------

   구 분           함 수                                 내 용


 
------------------------------------------------------------------------------

                   ROUND             해당 소수점 자리에서 반올림할 때

                   TRUNC             해당 소수점 자리에서 절삭할 때

                   MOD(m/n)        m을 n으로 나누고 남은 나머지를 리턴할 때

                   ABS                 숫자 값을 절대값으로 바꾼다

                   SIGN                숫자가 양수:+1, 음수:-1, 0:0

 숫자함수      FLOOR             실수값을 정수값으로

                   CEIL                그 수보다 가장 크거나 작은값을 리턴

                   POWER            해당 수에 대한 지수값을 표현

                   LOG                로그값으로 변환

                   SIN                  SIN값

                   COS                COS값

                   TAN                 TAN값

------------------------------------------------------------------------------

                   SYSDATE         현재 시스템 날짜를 보여줄 때

                   ADD_MONTHS   지정한 날짜에 몇 월을 추가한 결과의 월을 계산할 때

                   LAST_DAY        해당 월의 마지막 날짜를 알고자 할 때

 날짜함수      NEW_TIME        해당 표준시로 시간을 변환할 때

                   NEXT_DAY        해당 날짜의 다음 지정한 날짜로 현환할 때

                   NONTH_BETWEEN   지정된 월 간의 월수를 알고자 할 때

------------------------------------------------------------------------------

 

* 숫자함수 예제....

-정의된 값을 절대값으로 변환 합니다

  SQL> SELECT ABS(-15) FROM DUAL ;

           ABS(-15)

         -----------

               15

 

-정의된 값의 올림된 값으로 변환합니다

 SQL> SELECT CEIL(15.7) FROM DUAL ;

       

          CEIL(15.7)

       -------------

              16

 

-정의된 값의 내림된 값으로 변환합니다

 SQL> SELECT FLOOR(15.7) FROM DUAL ;

 

          FLOOR(15.7)

        ---------------

               15

 

-정의된 산술식의 COSINE 값으로 변환합니다

 SQL> SELECT COS(180*3.14/180) FROM DUAL ;

 

          COS(180*3.14/180)

        --------------------

                     -.99999873

 

-정의된 숫자의 지수승값을 계산합니다

 SQL> SELECT EXP(4) FROM DUAL ;

 

          EXP(4)

        ---------

          54.59815

 

-뒤에 정의된 수로 앞에 정의된 수를 나눈 나머지 값을 반환합니다

 SQL> SELECT MOD(11,4) FROM DUAL ;

 

          MOD(11,4)

        ------------

                3

 

-정의된 수를 지정한 자리 수에서 반올림합니다

 SQL> SELECT ROUND(15.193 , 1) FROM DUAL ;

 

          ROUND(15.193 , 1)

        -------------------

                  15.2

 

-정의된 값이 음수이면 -1 , 0 이면 0, 양수이면 1을 리턴합니다

 SQL> SELECT SIGN(-15) FROM DUAL ;

 

          SIGN(-15)

        ------------

               -1

 

-정의된 수를 지정한 자리 수 에서 절삭합니다

 SQL> SELECT TRUNC(15.97 , 1) FROM DUAL ;

 

          TRUNC(15.79 , 1)

         -----------------

                  15.7

 

* 날짜 함수 예제

 

-현재 시스템 날짜를 제공합니다

 SQL> SELECT SYSDATE FROM DUAL ;

 

          SYSDATE

        -----------

          06/11/13

 

-해당 날짜에 지정한 달 수만큼 더합니다

 SQL> SELECT HIREDATE , ADD_MONTHS(HIREDATE , 1)

          FROM EMP WHERE EMPNO = 7782 ;

 

          HIREDATE     ADD_MONT

        --------------------------

          81/06/09         81/07/09

 

-정의된 날짜의 달에서 마지막 일이 몇 일인지 알 수 있습니다

 SQL> SELECT HIREDATE , LAST_DAY(HIREDATE)

          FROM EMP WHERE EMPNO = 7782 ;

 

          HIREDATE     LAST_DAY

       --------------------------

            81/06/09       81/06/30

 

-정의된 두 날짜간의 차이 값을 알 수 있습니다

 SQL> SELECT HIREDATE , MONTHS_BETWEEN(SYSDATE , HIREDATE)

          FROM EMP WHERE EMPNO = 7782 ;

 

          HIREDATE          MONTHS_BETWEEN(SYSDATE , HIREDATE)

        ------------------------------------------------------------


 
           81/06/09                                                     252.930883

 

-정의된 날짜를 녀도 값을 기준으로 반올림 합니다

 SQL > SELECT

           ROUND(TO_DATE(' 27-OCT-98' , 'DD-MON-YY' ) ,

           'YEAT' ) FROM DUAL ;

 

           ROUND(TO

          ------------

              99/01/01





 
변환 함수

---------------------------------------------------------------------------

    구 분           함 수                                내 용


 
---------------------------------------------------------------------------

                   TO_CHAR       숫자,날짜 타입의 Data를 varchar2타입으로 변환

  변환함수     TO_NUMBER   숫자를 포함하는 문자 String을 number 타입으로 변환

                   TO_DATE        문자 String을 날짜 타입으로 변환

---------------------------------------------------------------------------

 

*날짜 형식 요소

---------------------------------------------------------------------------

   형식 요소                                           설 명

---------------------------------------------------------------------------

       MM                달 수(ex : 10)

      MON               월 이름을 3자리 문자로 표현(ex : JAN , FEB , MAR 등)

     MONTH            월 이름(ex : JANUARY,FEBUARY,MARCH 등)

        DD                날짜 (ex : 14)

         D                 주의 일수 (ex : 4)

        DY                요일 이름을 3자리 문자로 표현(ex : SUN , MON , TUE 등)

       DAY               요일 이름(ex : SUNDAY , MONDAY 등)

      YYYY              년도 4자리 수 (ex : 2002)

        YY                년도의 마지막 2자리(ex : 02)

----------------------------------------------------------------------------

 

*시간 형식 요소

----------------------------------------------------------------------------

     형식 요소                                       설 명

----------------------------------------------------------------------------

          9                숫자(ex : 9999 → 1534)

          0                자리 수가 비면 0으로 채워줌 ( ex : 09999 → 01534 )

          $                금액에 $를 표시해줌 (ex : $99999 → $1534 )

          .                 명시한 위치에 소수점을 표시함 (ex : 99999.99 → 1534.00 )

          ,                 명시한 위치에 콤마를 표시함 (ex : 999,999 → 1,534 )

----------------------------------------------------------------------------

 

변환 함수 예제들.....

-현재 날짜가 한 주에서 몇번째 일인지 알 수 있습니다

 SQL> SELECT SYSDATE , TO_CHAR ( SYSDATE , 'D' )

          FROM dual ;

 

         SYSDATE        TO_CHAR

       --------------------------

         02/09/26                5

 

-정의된 날짜의 출력 포맷을 DD-MM-YY로 출력합니다

 SQL> SELECT ename , TO_CHAR(hiredate , 'DD-MM-YY' ) HIREDATE

          FROM emp ;

 

          ENAME          TO_CHAR(hiredate , 'DD-MM-YY' )

         ------------------------------------------------

          SMITH                17         11                90

          ALLY                  20         02                91

          ......................

 

-일자를 출력할 때 0 값을 제거합니다(09 → 9 , 01 → 1)

 SQL> SELECT ename , TO_CHAR (hiredate , 'fmDD-MM-YY' ) HIREDATE

          FROM emp ;

 

          ENAME         TO_CHAR(hiredate , 'fmDD-MM-YY' )

        ---------------------------------------------------

           ....................................

           MARTIN              9           09                   91

           ....................................

 

-문자 100을 숫자값으로 출력합니다

 SQL> SELECT TO_NUMBER ( '100' ) FROM dual ;

 

          TO_NUMBER

         --------------

                 100

 

-현재 시간을 AM , PM 표기법으로 출력합니다

 SQL> SELECT TO_CHAR( SYSDATE , 'AM HH:MI ' )

          FROM dual ;

 

          TO_CHAR(

         -----------

          오전 10 : 10

 

-숫자값을 출력할 때 금액표시를 합니다

 SQL> SELECT TO_CHAR( 12506 , '$9099,999' ) FROM dual ;

 

          TO_CHAR(

         -----------

          $010,234

 

-정의된 날짜를 지정한 포맷으로 출력합니다

 SQL> SELECT TO_DATE( '01-JUL-99' , 'DD-MM-YY' )

          FROM dual ;

 

          TO_DATE(

         -----------

           99/07/01

 

-정의된 시간을 지정한 포맷으로 출력합니다

 SQL> SELECT TO_DATE( '01:30' , 'HH24:MI' ) FROM dual ;

 

          TO_DATE

         ----------

           13:30
 


 단일행함수
* NVL2 ( Colum, Express1, Express2 )

 

-해당 컬럼이 null이면 Express-2 의 값을 , null이 아니면 Express-1의 값을 리턴해 줍니다.

  오라클 이전 버전에서 사용되던 NVL함수는 정의된 컬럼의 값이 null인 경우 지정한 값으로

  대체하는 기능을 가지고 있었습니다. 반대로, NVL2 함수는 정의된 컬럼의 값이 지정한

  값인 경우 null값으로 대체된다.

  NVL2 함수는 해당 컬럼이 null 값이 아니면 Express2의 값을 리턴해 주고 null 값이면

  Express3의 값을 리턴해 주는 기능을 가지고 있습니다.

  SQL> SELECT empno, ename, nv12( comm, comm.*1.1, 0 )

           FROM emp ;

 

    EMPNO    ENAME     COMM     NVL2( COMM, COMM*1.1, 0 )

  ----------------------------------------------------------

      7369       SMITH                                          0

      7499       ALLEN        300                           330

      7521       WARD         500                           550

      7566       JONES                                         0

      ..............................................

->COMM이 null인 경우 null이 아닌 경우




* NULLIF ( Express1, Express2 )

 

-Express-1과 Express-2의 값을 비교하여 그 값이 같으면 null을 리턴하고 다르면 Express-1의

 값을 리턴해 줍니다.

  NULLIF 함수는 Express-1 과 Express-2 의 값을 비교하여 그 값이 같으면 null 값을 리턴하고

  서로 다른 값을 가지고 있으면 Express-1의 값을 리턴해 주는 함수입니다.

  LENGTH(first_name)의 값과 LENGTH(last_name)의 값을 NULLIF 함수로 비교하여 같으면

  null 값을 화면에 출력하고 다르면 LENGTH(first_name)의 값을 화면에 출력합니다.

 

  SQL> SELECT empno, ename, nullif( comm, 0 )

           FROM emp ;

 

     EMPNO     ENAME    COMM     NULLIF( COMM, 0 )

  --------------------------------------------------

       7369        SMITH

       7370        ALLEN        300                300

       7521        WARD         500                500

       7566        JONES

       7654        MARTIN      1400               1400

       .....................................

->COMM이 NULL이므로 NULL, COMM이 NULL이 아니므로 COMM값으로...

 

*COALLESCE 함수

이 함수는 EXPRESS-1의 값이 NULL값이 아니면 EXPRESS-1의 값을 화면에 출력해 주고

NULL 값이면 EXPRESS-2의 값을 EXPRESS-1의 값과 EXPRESS-2의 값모두 NULL이면

EXPRESS-N의 값을 화면에 출력해 주는 함수입니다. 문법에서 정의된 각 컬럼에서 NULL이

아닌 첫 번째 컬럼의 값을 돌려줍니다.

 

SQL> SELECT coalesce( comm,sal ) FROM emp ;

 

      COALESCE( COMM,SAL )

     -------------------------

                   800

                   300

 

SQL> SELECT coalesce ( comm, 100 ) FROM emp ;

 

       COALESCE( COMM,100 )

     -------------------------

                   100

                   300

                   500

->이 문법은 COALESCE([컬럼],[값]) 문법에서 정의된 컬럼이 NULL이면 정의된 값을

더한 결과를 돌려줍니다. 원래 NULL이지만 100을 더한 값이 출력됩니다.

 

*TRIM함수

이 함수는 오라클 8i 버전에서 추가된 함수이며 이전 버전에서 제공되던 LTRIM 함수와

RTRIM 함수를 결합한 형태의 함수입니다. TRIM 함수는 문자값의 왼쪽 또는 오른쪽 부분에

정의한 문자값이 존재하면 그 문자를 절삭시키는 기능을 가지고 있습니다. TRIM 함수는

3가지 종류의 기능을 가지고 있습니다.

 

-먼저,LEADING은 이전의 LTRIM 함수와 동일한 기능을 가지고 있습니다.정의된 컬럼의 값

왼쪽에 해당 문자열이 존재하면 문자값을 절삭시켜서 화면에 출력합니다.

SQL> SELECT ename, TRIM( LEADING 'A' FROM ename ) as TRIM

         FROM emp

         WHERE ename LIKE 'A%' ;

 

        ENAME                  TRIM

      -------------------------

        ALLEN                   LLEN

        ADAMS                  DAMS

 

-TRAILING은 이전의 RTRIM 함수의 기능을 가지고 있으며 컬럼값의 오른쪽에 존재하는 문자값을

절삭해줍니다.

SQL> SELECT ename, TRIM( TRAILING 'N' FROM ename ) as TRIM

         FROM emp

         WHERE ename LIKE '%N' ;

 

        ENAME            TRIM

      ---------------------

        ALLEN             ALLE

        MARTIN           MARTI

 

-BOTH는 왼쪽, 오른쪽에 해당 문자열이 있으면 절삭해 주는 기능을 가지고 있습니다.

SQL> SELECT ename, TRIM( BOTH 'A' FROM ename ) as TRIM

         FROM emp

         WHERE ename LIKE 'A%' ;

 

       ENAME          TRIM

     --------------------

       ALLEN           LLEN

       ADAMS          DAMS

->ENAME 컬럼에서 마지막 문자가 'A'인 값은 발견되지 않았고 첫번째 문자가 'A'인

사원은 ALLEN과 ADAMS

 

 

출처 : lkrox.blogspot.com/2013/02/blog-post.html



출처: https://solbel.tistory.com/1046 [개발자의 끄적끄적]
