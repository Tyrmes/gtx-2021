~Version ---------------------------------------------------
VERS. 2.0 : CWLS log ASCII Standard -VERSION 2.0
WRAP.  NO : ONE LINE PER DEPTH STEP
~Well ------------------------------------------------------
STRT.M                             300.0 : START DEPTH
STOP.M                            1750.0 : STOP DEPTH
STEP.M                          50.00000 : STEP LENGTH
NULL.                            -999.25 : NULL VALUE
COMP. CANADIAN NATURAL RESOURCES LIMITED : COMPANY
WELL.       ELAN ET AL NIPISI 12-30-78-7 : WELL
FLD .                                    : FIELD
LOC .                                    : LOCATION
CTRY.                             CANADA : COUNTRY
SRVC.                       Schlumberger : SERVICE COMPANY
DATE.                        15-Dec-1984 : LOGDATE
PROV.                            Alberta : PROVINCE
UWI .                   100123007807W500 : UNIQUE WELL ID
SLAT.WGS84                 55.7908782959 : SURFACE LATITUDE
SLON.WGS84               -115.0836334229 : SURFACE LONGITUDE
~Curve Information -----------------------------------------
DEPT    .M                                                         : DEPTH METERS
CALDED  .MM                                                        : CALIPER FROM DENSITY LOG
CALWS   .MM                                                        : CALIPER [CALDED]
CONDWS  .MMHO                                                      : CONDUCTIVITY [1000/DRESWS]
DCORWS  .KG/M3                                                     : DENSITY CORRECTION [DRHOED]
DENWS   .KG/M3                                                     : BULK DENSITY [M=2650 F=1000] [CALCULATED FROM DPHISSED]
DPHISSED.V/V                                                       : DENSITY POROSITY [M=2650 F=1000] FROM DENSITY LOG
DPOLSWS .V/V :   DENSITY POROSITY LIMESTONE [CALCULATED FROM DENWS : M=2710, F=1000]
DRESWS  .OHMM                                                      : DEEP RESISTIVITY [ILDED]
DRHOED  .KG/M3                                                     : DENSITY CORRECTION FROM DENSITY LOG
GRDED   .GAPI                                                      : GAMMA RAY FROM DENSITY LOG
GRWS    .GAPI                                                      : GAMMA RAY [GRDED] CSG @ 202M
ILDED   .OHMM                                                      : INDUCTION LOG DEEP RESISTIVITY
ILMED   .OHMM                                                      : INDUCTION LOG MEDIUM RESISTIVITY
MRESWS  .OHMM                                                      : MEDIUM RESISTIVITY [ILMED]
NPHISSED.V/V                                                       : NEUTRON POROSITY SANDSTONE FROM DENSITY LOG
NPOLSWS .V/V                                                       : NEUTRON POROSITY LIMESTONE [SEE OTHER INFORMATION FOR ALGORITHM USED]
PEFED   .B/E                                                       : PHOTOELECTRIC FACTOR FROM DENSITY LOG
PEFWS   .B/E                                                       : PHOTOELECTRIC FACTOR [PEFED]
RHOBED  .KG/M3                                                     : BULK DENSITY [M=2650 F=1000] FROM DENSITY LOG
SFLUED  .OHMM                                                      : SPHERICALLY FOCUSED LOG RESISTIVITY
SPRED   .MV                                                        : SPONTANEOUS POTENTIAL FROM RESISTIVITY LOG
SPWS    .MV                                                        : SPONTANEOUS POTENTIAL [BASELINE 0 MV] [SPRED]
SRESWS  .OHMM                                                      : SHALLOW RESISTIVITY [SFLUED]
~Params ----------------------------------------------------
PD  .                         GL : PERMANENT DATUM
EPD .M                    663.32 : ELEVATION PERMANENT DATUM
LMF .                         KB : LOG MEASURED FROM
DAPD.M                       4.4 : FEET ABOVE PERMANENT DATUM
DMF .                         KB : DRILLING MEASURED FROM
EKB .M                    667.72 : KELLY BUSHING
EGL .M                    663.32 : GROUND LEVEL
DATE.                   12/15/84 : RUN DATE
RUN .                          1 : RUN NUMBER
DD  .M                    1764.0 : DEPTH DRILLER
DL  .M                    1764.5 : DEPTH LOGGER
BLI .M                      1763 : BOTTOM LOG INTERVAL
TLI .M                       202 : TOP LOG INTERVAL
CS  .MM                      219 : CASING SIZE
CBD .M                      2025 : CASING BOTTOM DRILLER
CBL .M                       202 : CASING BOTTOM LOGGER
BS  .MM                      200 : BIT SIZE
BSD .M                      1764 : BIT SIZE AT DEPTH
DFT .                   GEL CHEM : DRILLING FLUID TYPE
DFD .                       1120 : DRILLING FLUID DENSITY
DFV .                         74 : DRILLING FLUID VISCOSITY
DFPH.                       10.5 : DRILLING FLUID PH
DFL .                        7.8 : DRILLING FLUID LOSS
MSS .                   FLOWLINE : MUD SAMPLE SOURCE
RMS .OHMM                   1.04 : RESISTIVITY MUD SAMPLE
MST .C                        22 : MUD SAMPLE TEMPERATURE
RMF .OHMM                  0.684 : RESISTIVITY MUD FILTRATE SAMPLE
MFST.C                      14.4 : MUD FILTRATE SAMPLE TEMPERATURE
RMC .OHMM                  0.387 : RESISTIVITY MUD CAKE
MCST.C                        42 : MUD CAKE SAMPLE TEMPERATURE
MFSS.                       MEAS : MUD FILTRATE SAMPLE SOURCE
MCSS.                       MEAS : MUD CAKE SAMPLE SOURCE
RMB .OHMM                  0.713 : RESISTIVITY MUD AT BHT
TCS .HRS                    1230 : TIME CIRCULATED STOPPED
TLAB.HRS                    1730 : TIME LOGGER AT BOTTOM
LUN .                       8110 : LOGGING UNIT NUMBER
LUL .                        EDM : LOGGING UNIT LOCATION
ENGI.                    CORNISH : RECORDING ENGINEER
WITN.                    MCGRATH : WITNESSED BY
CLNT.                    A2DTECH : CLIENT CODE
ORIG. 6.5"/100M 16.5"/100M PRINT : ORIGIN OF DATA
UWI .           100123007807W500 : UNIQUE WELL ID
DICO.     A2D Technologies, Inc. : DIGITIZING COMPANY
~Other -----------------------------------------------------
1. NPHISSED CONVERTED TO LIMESTONE MATRIX (NPOLSWS) USING FOLLOWING PARMS IN POWER LOG: INPUT CURVE: NPHISSED. OUTPUT CURVE: NPOLSWS. LOGGING CO. SWS. TOOL TYPE: CNL(NPHI). INPUT MATRIX: QUARTZ. OUTPUT MATRIX: LIMESTONE. RUN OVER ENTIRE WELL.
~ASCII -----------------------------------------------------
  300.00000  368.93730  368.93730  324.58050    3.69660 1971.19010    0.41140    0.43210    3.08090    3.69660  113.63830  113.63830    3.08090    2.86750    2.86750    0.62870    0.58880    2.41060    2.41060 2018.33540    4.05030  -80.60280  -11.78540    4.05030
  350.00000  343.09910  343.09910  240.64490   29.38110 2031.58000    0.37480    0.39670    4.15550   29.38110   96.07360   96.07360    4.15550    3.62740    3.62740    0.53160    0.49170    1.72970    1.72970 2040.06320    3.83900  -83.95380   -6.82840    3.83900
  400.00000  234.60900  234.60900  161.75210    5.24940 2269.34500    0.23070    0.25770    6.18230    5.24940   89.47160   89.47160    6.18230    7.54980    7.54980    0.37980    0.33310    2.24140    2.24140 2270.74390    8.52160 -102.46490  -34.11210    8.52160
  450.00000  242.63250  242.63250  111.76930    2.25920 2110.45000    0.32700    0.35060    8.94700    2.25920   57.97060   57.97060    8.94700   10.70350   10.70350    0.44600    0.40570    2.15200    2.15200 2124.50070   11.74010  -65.43580  -14.90710   11.74010
  500.00000  263.94240  263.94240  159.61440    7.75440 2101.37500    0.33250    0.35590    6.26510    7.75440   71.47290   71.47290    6.26510    7.02920    7.02920    0.41560    0.37200    2.08120    2.08120 2099.71800    7.63470 -104.72980  -37.36180    7.63470
  550.00000  270.41840  270.41840   91.78100    6.68020 2367.02490    0.17150    0.20060   10.89550    6.68020   70.51490   70.51490   10.89550   12.39050   12.39050    0.35650    0.30810    2.98410    2.98410 2362.15890    9.27350  -87.24390   -9.66420    9.27350
  600.00000  270.24380  270.24380   60.78810   -4.41910 2399.36500    0.15190    0.18170   16.45060   -4.41910   39.85480   39.85480   16.45060   13.89870   13.89870    0.14080    0.09600    2.67780    2.67780 2317.87940   22.10130  -76.94280  -12.55350   22.10130
  650.00000  297.91170  297.91170   92.49840   -5.04860 2551.65990    0.05960    0.09260   10.81100   -5.04860   30.00930   30.00930   10.81100    9.67280    9.67280    0.24940    0.19680    3.95840    3.95840 2552.12890   12.61290 -100.29700  -31.62920   12.61290
  700.00000  283.47800  283.47800  225.81520    7.84970 1996.93010    0.39580    0.41700    4.42840    7.84970   35.47820   35.47820    4.42840    4.18580    4.18580    0.34960    0.30070    2.12640    2.12640 1945.01860    4.65930 -101.82960  -27.11160    4.65930
  750.00000  236.04230  236.04230   50.45820   -8.40700 2618.98000    0.01880    0.05320   19.81840   -8.40700   23.40850   23.40850   19.81840   18.87550   18.87550    0.12160    0.07990    4.94650    4.94650 2616.28030   22.70830 -103.29130  -17.15110   22.70830
  800.00000  250.74800  250.74800   82.97520  -21.32710 2601.49000    0.02940    0.06350   12.05180  -21.32710   32.82270   32.82270   12.05180   11.14020   11.14020    0.12620    0.08380    4.13810    4.13810 2596.76730   15.23050 -108.42280  -10.86040   15.23050
  850.00000  258.62630  258.62630   37.05900   20.98550 2577.23510    0.04410    0.07760   26.98400   20.98550   15.98310   15.98310   26.98400   33.99300   33.99300    0.10180    0.06360    4.97480    4.97480 2573.34300   76.50290 -167.65330  -72.93900   76.50290
  900.00000  256.28940  256.28940   43.46410   20.84240 2558.91990    0.05520    0.08840   23.00750   20.84240   15.70950   15.70950   23.00750   36.21220   36.21220    0.11480    0.07430    4.06490    4.06490 2562.39140  123.18930 -183.05740  -93.82890  123.18930
  950.00000  237.31940  237.31940   22.21220   -8.66810 2469.98510    0.10910    0.14040   45.02030   -8.66810   15.77770   15.77770   45.02030   79.70900   79.70900    0.14800    0.10210    4.49240    4.49240 2473.90010  122.60580 -150.67450  -66.93170  122.60580
 1000.00000  238.51040  238.51040    3.09420   -5.14700 2710.38990   -0.03660   -0.00020  323.18280   -5.14700   11.49140   11.49140  323.18280  268.50230  268.50230    0.02360    0.00080    5.65840    5.65840 2714.05350  350.26170 -128.18770  -49.93070  350.26170
 1050.00000  233.57020  233.57020   28.30700   12.91260 2584.82500    0.03950    0.07320   35.32690   12.91260   10.75730   10.75730   35.32690   41.62440   41.62440    0.11450    0.07400    4.79030    4.79030 2583.94820  119.05180 -118.65180  -45.88060  119.05180
 1100.00000  238.42090  238.42090   41.14140   37.35030 2688.44510   -0.02330    0.01260   24.30640   37.35030   17.97780   17.97780   24.30640   36.29710   36.29710    0.17150    0.12300    2.86040    2.86040 2688.60910   84.84540 -117.95030  -50.66480   84.84540
 1150.00000  216.30070  216.30070   29.90580  120.36950 2661.38500   -0.00690    0.02840   33.43830  120.36950   37.15100   37.15100   33.43830   48.61820   48.61820    0.21080    0.15930    2.94410    2.94410 2667.36600   83.80570  -99.02840  -37.22870   83.80570
 1200.00000  218.25460  218.25460   35.04850  -11.88030 2688.61010   -0.02340    0.01250   28.53190  -11.88030   33.14660   33.14660   28.53190   29.35560   29.35560    0.10820    0.06880    3.72340    3.72340 2685.98710   31.23930  -80.41190  -24.09790   31.23930
 1250.00000  386.95340  386.95340  317.37970  143.01470 2080.91500    0.34490    0.36790    3.15080  143.01470   81.32700   81.32700    3.15080    3.04770    3.04770    0.39440    0.34890    2.34750    2.34750 2079.26590    3.37250  -61.79740  -10.25620    3.37250
 1300.00000  285.28320  285.28320  215.95940  110.33800 2283.36990    0.22220    0.24950    4.63050  110.33800   75.97280   75.97280    4.63050    4.03480    4.03480    0.23800    0.18550    2.49740    2.49740 2282.50630    5.95740  -62.36540   -8.82440    5.95740
 1350.00000  285.58670  285.58670  124.23130   -6.30180 2648.67990    0.00080    0.03590    8.04950   -6.30180   59.94040   59.94040    8.04950    7.89720    7.89720    0.25180    0.19920    4.41220    4.41220 2652.80640    8.57460  -72.37060  -10.34660    8.57460
 1400.00000  245.84190  245.84190   46.25330  -11.65240 2675.40990   -0.01540    0.02020   21.62010  -11.65240   25.57780   25.57780   21.62010   20.67920   20.67920    0.08020    0.04590    5.21360    5.21360 2682.05540   26.70660  -96.55740  -51.38060   26.70660
 1450.00000  280.61740  280.61740  213.38800   82.82460 2219.18510    0.26110    0.28700    4.68630   82.82460   55.17500   55.17500    4.68630    4.37800    4.37800    0.26630    0.21380    2.67040    2.67040 2231.87260    5.45540  -44.68780  -12.43980    5.45540
 1500.00000  317.96100  317.96100  283.12570  156.97500 2272.14990    0.22900    0.25610    3.53200  156.97500   74.41100   74.41100    3.53200    3.36250    3.36250    0.36460    0.31670    2.11880    2.11880 2220.67700    4.16090  -76.32870  -31.21150    4.16090
 1550.00000  315.86600  315.86600  323.46760   34.91680 1867.24000    0.47440    0.49280    3.09150   34.91680   73.15230   73.15230    3.09150    2.87170    2.87170    0.46370    0.42380    2.17460    2.17460 1874.27150    3.07950  -66.35100  -26.24890    3.07950
 1600.00000  210.65550  210.65550   39.89400  -13.03050 2692.40500   -0.02570    0.01030   25.06640  -13.03050   47.77030   47.77030   25.06640   26.50010   26.50010    0.07150    0.03890    4.91080    4.91080 2693.33330   45.68980  -40.45980  -18.53770   45.68980
 1650.00000  210.44520  210.44520  111.05310   -6.81240 2677.06010   -0.01640    0.01930    9.00470   -6.81240   58.54720   58.54720    9.00470    9.42960    9.42960    0.19760    0.14700    3.72720    3.72720 2679.56370   11.28280  -28.05180  -17.52570   11.28280
 1700.00000  198.80320  198.80320   28.08670  -11.10140 2625.41500    0.01490    0.04950   35.60410  -11.10140   18.06200   18.06200   35.60410   41.63730   41.63730    0.10130    0.06320    5.27760    5.27760 2623.13920   80.62220  -41.77390  -40.20410   80.62220
 1750.00000  197.58670  197.58670  208.09060   44.33280 2653.79490   -0.00230    0.03290    4.80560   44.33280   63.61760   63.61760    4.80560    5.57870    5.57870    0.30310    0.25180    3.84100    3.84100 2642.97780    7.66800  -12.20890  -19.33260    7.66800
