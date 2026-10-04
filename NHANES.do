
 
clear all

 
set more off

 
 
 

 
capture log close

 
log using "nhanes_diabetes.smcl", replace

 
 
 
import delimited "nhanes.csv", clear

 
keep if age >= 18


 
 

label define yesno_label 0 "No" 1 "Yes"

 
label define gender_label 0 "male" 1 "female"

 
 
 
encode diabetes,   generate(diabetes1)   label(yesno_label) noextend


encode physactive, generate(physactive1) label(yesno_label) noextend

 
encode smoke100,   generate(smoke100_1)  label(yesno_label) noextend

 
encode gender,     generate(gender1)     label(gender_label) noextend

 
 
 
tab diabetes1,   missing

tab physactive1, missing

tab smoke100_1,  missing
tab gender1,     missing
misstable summarize diabetes1 age bmi physactive1 smoke100_1 gender1
logistic diabetes1 age bmi i.physactive1 i.smoke100_1 i.gender1

display "Adults included in model: " e(N)
capture ssc install estout
esttab using "results.rtf", eform ci label replace
log close

