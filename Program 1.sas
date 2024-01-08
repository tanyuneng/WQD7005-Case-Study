/* Ensure that the sasuser library is correctly assigned */
libname sasuser '/home/u63454056/sasuser.v94';

PROC IMPORT DATAFILE='/home/u63454056/sasuser.v94/edata1.xlsx'
	DBMS=XLSX
	OUT=WORK.df_edata1;
	GETNAMES=YES;
RUN;

/* Step 3: Save the transposed data to the sasuser directory */
data sasuser.df_edata1; /* Ensure the dataset name is valid */
   set work.df_edata1;
run;