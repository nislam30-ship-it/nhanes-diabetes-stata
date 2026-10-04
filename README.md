# Factors Associated with Diabetes Among Adults in the NHANES Sample

## Question
Which demographic and lifestyle factors—specifically age, BMI, physical activity, smoking status, and gender—are associated with diabetes among adults in the NHANES sample?

## Data
NHANES 2009–2012 data from the NHANES R package, 7,481 adults aged 18+.
Analysis in Stata.

## Method
We estimated a multivariable logistic regression model to evaluate the association between diabetes status and age, BMI, physical activity, lifetime smoking, and gender. Missing data were handled using complete-case analysis, dropping 311 participants with missing values on key variables to yield a final sample of 7,170 adults.

## Results
In a sample of 7,170 adults from the NHANES dataset, older age, higher BMI, physical inactivity, and male gender were significantly associated with diabetes, whereas lifetime smoking status was not (OR 1.12, 95% CI 0.95–1.33, p = 0.172). Holding all other variables constant, each additional year of age was associated with 6.0% higher odds of diabetes (OR 1.06, 95% CI 1.05–1.07, p < 0.001), and each 1-unit increase in BMI was associated with 10.2% higher odds (OR 1.10, 95% CI 1.09–1.11, p < 0.001). Conversely, physically active adults had 20.1% lower odds of diabetes than inactive adults (OR 0.80, 95% CI 0.67–0.95, p = 0.011), while females had 33.1% lower odds than males (OR 0.67, 95% CI 0.57–0.79, p < 0.001). Overall, the set of predictors significantly improved model fit over an intercept-only baseline (LR chi^2(5) = 807.88, p < 0.0001, Pseudo R^2 = 0.1709).

## Limitations
Because the data is cross-sectional, causality cannot be established. Physical activity and smoking status were self-reported, and 311 adults (4.2% of the sample) were excluded due to missing data. Additionally, because no survey weights were applied to adjust for NHANES' complex sampling design, these results describe this specific NHANES sample and may not generalize exactly to the overall US population.

## Files
- README.md: project overview and summary of findings
- nhanes_diabetes_analysis.do: full Stata code
- results.rtf: regression results table