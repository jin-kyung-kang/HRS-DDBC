proc format;
  	value gender_fmt 
  	        1='Male' 
  	        2='Female';
   	value race_fmt 
   	        1='White/Caucasian' 
   	        2='Black/African American'
   	        3='Other';
   	value hispanic_fmt
   	        0='Not Hispanic'
   	        1='Hispanic';
   	value bplace_fmt 
   	        1='New England' 
   	        2='Mid Atlantic' 
   	        3='EN Central'
		4='WN Central'
		5='S Atlantic'
		6='ES Central'
		7='WS Central' 
		8='Mountain' 
		9='Pacific'
		10='US/NA Division' 
		11='Not US/inc US terr';
 	value mstat_fmt 
 	        1='Married' 
 	        2='Married,spouse absent' 
 	        3='Partnered'
 	        4='Separated' 
 	        5='Divorced' 
 	        6='Separated/divorced'
		7='Widowed'
		8='Never married';
	value cpl_fmt 
	        0='Not a couple HH' 
	        1='Couple HH';
	value edegrm_fmt
	        0='No degree'
	        1='GED' 
	        2='HS' 
	        3='HS/GED' 
	        4='AA/Lt BA'
		5='BA' 
		6='MA/MBA' 
		7='Law/MD/PhD' 
		8='Other';
	value cohort_fmt 
	        0='Hrs/Ahead ovrlap' 
	        1='Ahead' 
	        2='Coda' 
	        3='Hrs'
		4='WarBabies' 
		5='Early BabyBoomers' 
		6='Mid BabyBoomers' 
		7='Late BabyBoomers';
	value sayret_fmt 
	        0='Not retired' 
	        1='Completely retired'
		2='Partly retired' 
		3='Question irrelevant';
	value retemp_fmt 
	        0='No retire empstat'
	        1='Only retire empstat' 
		2='Retire plus other empstat';
	value work_fmt 
	        0='Not working for pay'
	        1='Working for pay';
	value slfemp_fmt 
	        0='Not self-employed' 
	        1='Self-employed';
	value lbrf_fmt
	        1='Works FT'
	        2='Works PT' 
	        3='Unemployed' 
	        4='Partly retired'
		5='Retired'
		6='Disabled'
		7='Not in LbrF';
run;

%macro sociodemo_fmts;
  format gender gender_fmt. 
         race race_fmt. 
         hispanic hispanic_fmt. 
         bplace bplace_fmt. 
         mstat mstat_fmt.
         cpl cpl_fmt. 
         edegrm edegrm_fmt. 
         cohort cohort_fmt.
         sayret sayret_fmt.
         retemp retemp_fmt.
         work work_fmt.
         slfemp slfemp_fmt.
         lbrf lbrf_fmt.;
%mend sociodemo_fmts;

%macro funcd_fmts;
/* ... */

%mend funcd_fmts;