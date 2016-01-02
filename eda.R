library(ggplot2)
library(dplyr)


setwd('C:/Users/mecha_000/Desktop/DataScience/Python/DataVisualizations/project')

loans <- read.csv(file = 'prosperLoanData.csv', sep = ',', quote = "\"'")
loans$ListingCreationDate <- as.Date(loans$ListingCreationDate)
loans$ListingCreationYear <- as.numeric(format(loans$ListingCreationDate, "%Y"))


loanQuery <- subset(loans, MemberKey == "1F3E3376408759268057EDA")

loans.summary_by_year <-
  loans %>%
  group_by(ListingCreationYear) %>%
  summarise(mean_loanOriginalAmount = mean(as.numeric(LoanOriginalAmount)),
            median_loanOriginalAmount = median(as.numeric(LoanOriginalAmount)),
            sum_loanOriginalAmount = sum(as.numeric(LoanOriginalAmount)),
            
            mean_amountDelinquent = mean(as.numeric(AmountDelinquent)),
            median_amountDelinquent = median(as.numeric(AmountDelinquent)),
            sum_amountDelinquent = sum(as.numeric(AmountDelinquent)),
            
            mean_investors = mean(as.numeric(Investors)),
            median_investors = median(as.numeric(Investors)),
            sum_investors = sum(as.numeric(Investors)),
            
            mean_prosperScore = mean(as.numeric(ProsperScore)),
            median_prosperScore = median(as.numeric(ProsperScore)),
            sum_prosperScore = sum(as.numeric(ProsperScore)),
            
            mean_estimatedLoss = mean(as.numeric(EstimatedLoss)),
            median_estimatedLoss = median(as.numeric(EstimatedLoss)),
            sum_estimatedLoss = sum(as.numeric(EstimatedLoss)),
            
            mean_estimatedReturn = mean(as.numeric(EstimatedReturn)),
            median_estimatedReturn = median(as.numeric(EstimatedReturn)),
            sum_estimatedReturn = sum(as.numeric(EstimatedReturn)),
            
            mean_statedMonthlyIncome = mean(as.numeric(StatedMonthlyIncome)),
            median_statedMonthlyIncome = median(as.numeric(StatedMonthlyIncome)),
            sum_statedMonthlyIncome = sum(as.numeric(StatedMonthlyIncome)),
            
            mean_creditScoreRangeLower = mean(as.numeric(CreditScoreRangeLower)),
            median_creditScoreRangeLower = median(as.numeric(CreditScoreRangeLower)),
            sum_creditScoreRangeLower = sum(as.numeric(CreditScoreRangeLower)),
            
            mean_monthlyLoanPayment = mean(as.numeric(MonthlyLoanPayment)),
            median_monthlyLoanPayment = median(as.numeric(MonthlyLoanPayment)),
            sum_monthlyLoanPayment = sum(as.numeric(MonthlyLoanPayment)),
            
            mean_borrowerAPR = mean(as.numeric(BorrowerAPR)),
            median_borrowerAPR = median(as.numeric(BorrowerAPR)),
            sum_borrowerAPR = sum(as.numeric(BorrowerAPR)),
            
            mean_borrowerRate = mean(as.numeric(BorrowerRate)),
            median_borrowerRate = median(as.numeric(BorrowerRate)),
            sum_borrowerRate = sum(as.numeric(BorrowerRate)),
            
            mean_debtToIncomeRatio = mean(as.numeric(DebtToIncomeRatio)),
            median_debtToIncomeRatio = median(as.numeric(DebtToIncomeRatio)),
            sum_debtToIncomeRatio = sum(as.numeric(DebtToIncomeRatio)),
            
            mean_term = mean(as.numeric(Term)),
            median_term = median(as.numeric(Term)),
            sum_term = sum(as.numeric(Term)),
            
            count = n()) %>%
  arrange(ListingCreationYear)

loans.summary_by_year_and_occupation <-
  loans %>%
  group_by(ListingCreationYear, Occupation) %>%
  summarise(mean_loanOriginalAmount = mean(as.numeric(LoanOriginalAmount)),
            median_loanOriginalAmount = median(as.numeric(LoanOriginalAmount)),
            sum_loanOriginalAmount = sum(as.numeric(LoanOriginalAmount)),
            
            mean_amountDelinquent = mean(as.numeric(AmountDelinquent)),
            median_amountDelinquent = median(as.numeric(AmountDelinquent)),
            sum_amountDelinquent = sum(as.numeric(AmountDelinquent)),
            
            mean_investors = mean(as.numeric(Investors)),
            median_investors = median(as.numeric(Investors)),
            sum_investors = sum(as.numeric(Investors)),
            
            mean_prosperScore = mean(as.numeric(ProsperScore)),
            median_prosperScore = median(as.numeric(ProsperScore)),
            sum_prosperScore = sum(as.numeric(ProsperScore)),
            
            mean_estimatedLoss = mean(as.numeric(EstimatedLoss)),
            median_estimatedLoss = median(as.numeric(EstimatedLoss)),
            sum_estimatedLoss = sum(as.numeric(EstimatedLoss)),
            
            mean_estimatedReturn = mean(as.numeric(EstimatedReturn)),
            median_estimatedReturn = median(as.numeric(EstimatedReturn)),
            sum_estimatedReturn = sum(as.numeric(EstimatedReturn)),
            
            mean_statedMonthlyIncome = mean(as.numeric(StatedMonthlyIncome)),
            median_statedMonthlyIncome = median(as.numeric(StatedMonthlyIncome)),
            sum_statedMonthlyIncome = sum(as.numeric(StatedMonthlyIncome)),
            
            mean_creditScoreRangeLower = mean(as.numeric(CreditScoreRangeLower)),
            median_creditScoreRangeLower = median(as.numeric(CreditScoreRangeLower)),
            sum_creditScoreRangeLower = sum(as.numeric(CreditScoreRangeLower)),
            
            mean_monthlyLoanPayment = mean(as.numeric(MonthlyLoanPayment)),
            median_monthlyLoanPayment = median(as.numeric(MonthlyLoanPayment)),
            sum_monthlyLoanPayment = sum(as.numeric(MonthlyLoanPayment)),
            
            mean_borrowerAPR = mean(as.numeric(BorrowerAPR)),
            median_borrowerAPR = median(as.numeric(BorrowerAPR)),
            sum_borrowerAPR = sum(as.numeric(BorrowerAPR)),
            
            mean_borrowerRate = mean(as.numeric(BorrowerRate)),
            median_borrowerRate = median(as.numeric(BorrowerRate)),
            sum_borrowerRate = sum(as.numeric(BorrowerRate)),
            
            mean_debtToIncomeRatio = mean(as.numeric(DebtToIncomeRatio)),
            median_debtToIncomeRatio = median(as.numeric(DebtToIncomeRatio)),
            sum_debtToIncomeRatio = sum(as.numeric(DebtToIncomeRatio)),
            
            mean_term = mean(as.numeric(Term)),
            median_term = median(as.numeric(Term)),
            sum_term = sum(as.numeric(Term)),
            
            count = n()) %>%
  arrange(ListingCreationYear, Occupation)


write.csv(loans.summary_by_year, file="prosperLoanData_SummaryByYear.csv")
write.csv(loans.summary_by_year_and_occupation, file="prosperLoanData_SummaryByYearAndOccupation.csv")

summary(loans)

# Histogram of loans by amount.
qplot(data = loans, x = LoanOriginalAmount, binwidth = 500)

# Histogram of loans by date.
qplot(data = loans, x = ListingCreationDate)

# Histogram of loans by delinquent amount.
qplot(data = loans, x = AmountDelinquent, binwidth = 500)

# Histogram of loans by occupations
qplot(data = loans, x = Occupation)

# Histogram of loans by state
qplot(data = loans, x = BorrowerState)

# Histogram of loans by income range
qplot(data = loans, x = IncomeRange)

# Histogram of loans by number of investors
qplot(data = loans, x = Investors, binwidth = 10)

# Histogram of loans by lower credit score
qplot(data = loans, x = CreditScoreRangeLower, binwidth = 10)

# Histogram of loans by upper credit score
qplot(data = loans, x = CreditScoreRangeUpper, binwidth = 10)

# Histogram of loans by prosper risk score
qplot(data = loans, x = ProsperScore, binwidth = 1)

# Histogram of loans by estimated loss
qplot(data = loans, x = EstimatedLoss, binwidth = .01)

# Histogram of loans by estimated return
qplot(data = loans, x = EstimatedReturn, binwidth = .01)

# Histogram of loans by amount per state
qplot(data = loans, x = LoanOriginalAmount, binwidth = 1000) +
  facet_wrap( ~ BorrowerState) +
  labs(title = "Distribution of loan amounts per state",
       x = "Loan amount", y = "Number of loans")

# Histogram of loans by amount per occupation
qplot(data = loans, x = LoanOriginalAmount, binwidth = 1000) +
  facet_wrap( ~ Occupation) +
  labs(title = "Distribution of loan amounts per occupation",
       x = "Loan amount", y = "Number of loans")


# Box plot of loan amounts and income ranges
ggplot(
  aes(x = IncomeRange, y = LoanOriginalAmount),
  data = loans) +
  geom_boxplot() +
  labs(
    title = "Income to loan amount",
    x = "Income", y = "Loan amount")

# Box plot of loan amounts and occupations.
ggplot(
  aes(x = Occupation, y = LoanOriginalAmount),
  data = loans) +
  geom_boxplot() +
  labs(
    title = "Income to loan amount",
    x = "Income", y = "Loan amount")

# Box plot of loan amounts and state
ggplot(
  aes(x = BorrowerState, y = LoanOriginalAmount),
  data = loans) +
  geom_boxplot() +
  labs(
    title = "Income to loan amount",
    x = "Income", y = "Loan amount")


###


# Scatter plot of monthly payments and loan amounts, colored by estimated return,
ggplot(
  aes(x = MonthlyLoanPayment, y = LoanOriginalAmount),
  data = subset(loans, )
) +
  geom_point(aes(color = EstimatedReturn)) +
  labs(
    title = "Monthly payment to loan amount",
    x = "Monthly payment", y = "Loan amount")

# Scatter plot of monthly payments and loan amounts, colored by estimated return,
# and faceted by Prosper's risk score
ggplot(
  aes(x = MonthlyLoanPayment, y = LoanOriginalAmount),
    data = subset(loans, )
  ) +
  geom_point(aes(color = EstimatedReturn)) +
  facet_wrap(~ ProsperScore) +
  labs(
    title = "Monthly payment to loan amount",
    x = "Monthly payment", y = "Loan amount")

# Scatter plot of monthly payments and loan amounts, colored by estimated return,
# and faceted by Occupation
ggplot(
  aes(x = MonthlyLoanPayment, y = LoanOriginalAmount),
  data = subset(loans, )
) +
  geom_point(aes(color = EstimatedReturn)) +
  facet_wrap(~ Occupation) +
  labs(
    title = "Monthly payment to loan amount",
    x = "Monthly payment", y = "Loan amount")

# Scatter plot of monthly payments and loan amounts, colored by estimated return,
# and faceted by state
ggplot(
  aes(x = MonthlyLoanPayment, y = LoanOriginalAmount),
    data = subset(loans, )
  ) +
  geom_point(aes(color = EstimatedReturn)) +
  facet_wrap(~ BorrowerState) +
  labs(
    title = "Monthly payment to loan amount",
    x = "Monthly payment", y = "Loan amount")

# Scatter plot of monthly payments and loan amounts, colored by estimated return,
# and faceted by income range
ggplot(
  aes(x = MonthlyLoanPayment, y = LoanOriginalAmount),
  data = subset(loans, )
) +
  geom_point(aes(color = EstimatedReturn)) +
  facet_wrap(~ IncomeRange) +
  labs(
    title = "Monthly payment to loan amount",
    x = "Monthly payment", y = "Loan amount")


###


# Scatterplot of estimated loss to estimated return, colored by loan amount,
ggplot(
  aes(x = EstimatedLoss, y = EstimatedReturn),
  data = loans) +
  geom_point(aes(color = LoanOriginalAmount)) +
  labs(
    title = "Estimated loss to return",
    x = "Estimated loss", y = "Estimated return")

# Scatterplot of estimated loss to estimated return, colored by loan amount,
# and faceted by occupation
ggplot(
  aes(x = EstimatedLoss, y = EstimatedReturn),
  data = loans) +
  geom_point(aes(color = LoanOriginalAmount)) +
  facet_wrap( ~ Occupation) +
  labs(
    title = "Estimated loss to return",
    x = "Estimated loss", y = "Estimated return")


# Scatterplot of estimated loss to estimated return, colored by loan amount,
# and faceted by state
ggplot(
  aes(x = EstimatedLoss, y = EstimatedReturn),
  data = loans) +
  geom_point(aes(color = LoanOriginalAmount)) +
  facet_wrap( ~ BorrowerState) +
  labs(
    title = "Estimated loss to return",
    x = "Estimated loss", y = "Estimated return")

# Scatterplot of estimated loss to estimated return, colored by loan amount,
# and faceted by income range
ggplot(
  aes(x = EstimatedLoss, y = EstimatedReturn),
  data = loans) +
  geom_point(aes(color = LoanOriginalAmount)) +
  facet_wrap( ~ IncomeRange) +
  labs(
    title = "Estimated loss to return",
    x = "Estimated loss", y = "Estimated return")

# Scatterplot of estimated loss to estimated return, colored by loan amount,
# and faceted by prosper risk score
ggplot(
  aes(x = EstimatedLoss, y = EstimatedReturn),
  data = loans) +
  geom_point(aes(color = LoanOriginalAmount)) +
  facet_wrap( ~ ProsperScore) +
  labs(
    title = "Estimated loss to return",
    x = "Estimated loss", y = "Estimated return")



###


# Scatterplot of credit score to loan amount, colored by number of investors,
ggplot(
  aes(x = CreditScoreRangeLower, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  labs(
    title = "Credit score to loan amount",
    x = "Credit score", y = "Loan amount")

# Scatterplot of credit score to loan amount, colored by number of investors,
# and faceted by state
ggplot(
  aes(x = CreditScoreRangeLower, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  facet_wrap( ~ BorrowerState) +
  labs(
    title = "Credit score to loan amount",
    x = "Credit score", y = "Loan amount")

# Scatterplot of credit score to loan amount, colored by number of investors,
# and faceted by occupation
ggplot(
  aes(x = CreditScoreRangeLower, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  facet_wrap( ~ Occupation) +
  labs(
    title = "Credit score to loan amount",
    x = "Credit score", y = "Loan amount")

# Scatterplot of credit score to loan amount, colored by number of investors,
# and faceted by income range
ggplot(
  aes(x = CreditScoreRangeLower, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  facet_wrap( ~ IncomeRange) +
  labs(
    title = "Credit score to loan amount",
    x = "Credit score", y = "Loan amount")

# Scatterplot of credit score to loan amount, colored by number of investors,
# and faceted by prosper risk score
ggplot(
  aes(x = CreditScoreRangeLower, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  facet_wrap( ~ ProsperScore) +
  labs(
    title = "Credit score to loan amount",
    x = "Credit score", y = "Loan amount")


###

# Scatterplot of loan amounts per date, colored by number of investors,
ggplot(
  aes(x = ListingCreationDate, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  labs(
    title = "Loan amounts by date",
    x = "Date", y = "Loan amount")

# Scatterplot of loan amounts per date, colored by number of investors,
# and faceted by prosper risk score
ggplot(
  aes(x = ListingCreationDate, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  facet_wrap( ~ ProsperScore) +
  labs(
    title = "Loan amounts by date",
    x = "Date", y = "Loan amount")


# Scatterplot of loan amounts per date, colored by number of investors,
# and faceted by income range
ggplot(
  aes(x = ListingCreationDate, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  facet_wrap( ~ IncomeRange) +
  labs(
    title = "Loan amounts by date",
    x = "Date", y = "Loan amount")

# Scatterplot of loan amounts per date, colored by number of investors,
# and faceted by occupation
ggplot(
  aes(x = ListingCreationDate, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  facet_wrap( ~ Occupation) +
  labs(
    title = "Loan amounts by date",
    x = "Date", y = "Loan amount")

# Scatterplot of loan amounts per date, colored by number of investors,
# and faceted by state
ggplot(
  aes(x = ListingCreationDate, y = LoanOriginalAmount),
  data = loans) +
  geom_point(aes(color = Investors)) +
  facet_wrap( ~ BorrowerState) +
  labs(
    title = "Loan amounts by date",
    x = "Date", y = "Loan amount")



###


# Scatterplot of loan amounts to delinquent amounts, colored by estimated return,
ggplot(
  aes(x = LoanOriginalAmount, y = AmountDelinquent),
  data = loans) +
  geom_point(aes(color = EstimatedReturn)) +
  labs(
    title = "Loan amounts compared to delinquent amounts",
    x = "Loan amount", y = "Delinquent amount")


# Scatterplot of loan amounts to delinquent amounts, colored by estimated return,
# and faceted by state
ggplot(
  aes(x = LoanOriginalAmount, y = AmountDelinquent),
  data = loans) +
  geom_point(aes(color = EstimatedReturn)) +
  facet_wrap( ~ BorrowerState) +
  labs(
    title = "Loan amounts compared to delinquent amounts",
    x = "Loan amount", y = "Delinquent amount")


# Scatterplot of loan amounts to delinquent amounts, colored by estimated return,
# and faceted by occupation
ggplot(
  aes(x = LoanOriginalAmount, y = AmountDelinquent),
  data = loans) +
  geom_point(aes(color = EstimatedReturn)) +
  facet_wrap( ~ Occupation) +
  labs(
    title = "Loan amounts compared to delinquent amounts",
    x = "Loan amount", y = "Delinquent amount")


# Scatterplot of loan amounts to delinquent amounts, colored by estimated return,
# and faceted by prosper risk score
ggplot(
  aes(x = LoanOriginalAmount, y = AmountDelinquent),
  data = loans) +
  geom_point(aes(color = EstimatedReturn)) +
  facet_wrap( ~ ProsperScore) +
  labs(
    title = "Loan amounts compared to delinquent amounts",
    x = "Loan amount", y = "Delinquent amount")


# Scatterplot of loan amounts to delinquent amounts, colored by estimated return,
# and faceted by income range.
ggplot(
  aes(x = LoanOriginalAmount, y = AmountDelinquent),
  data = loans) +
  geom_point(aes(color = EstimatedReturn)) +
  facet_wrap( ~ IncomeRange) +
  labs(
    title = "Loan amounts compared to delinquent amounts",
    x = "Loan amount", y = "Delinquent amount")


###

# Line graph of average loan amounts by year
ggplot(
  aes(x = ListingCreationYear, y = mean_loanOriginalAmount),
  data = loans.summary_by_year) +
  geom_line() +
  geom_point(aes(size = count)) +
  labs(
    title = "Average loan amounts by year",
    x = "Year", y = "Average loan amount") +
  scale_size(name = "Number of loans")

# Line graph of average amount delinquent by year
ggplot(
  aes(x = ListingCreationYear, y = mean_amountDelinquent),
  data = loans.summary_by_year) +
  geom_line() +
  geom_point(aes(size = count)) +
  labs(
    title = "Average amount delinquent by year",
    x = "Year", y = "Average delinquent amount") +
  scale_size(name = "Number of loans")

# Line graph of average number of investors by year
ggplot(
  aes(x = ListingCreationYear, y = mean_investors),
  data = loans.summary_by_year) +
  geom_line() +
  geom_point(aes(size = count)) +
  labs(
    title = "Average number of investors by year",
    x = "Year", y = "Average number of investors") +
  scale_size(name = "Number of loans")


# Line graph of average prosper score by year
ggplot(
  aes(x = ListingCreationYear, y = mean_prosperScore),
  data = loans.summary_by_year) +
  geom_line() +
  geom_point(aes(size = count)) +
  labs(
    title = "Average Prosper score by year",
    x = "Year", y = "Average prosper score") +
  scale_size(name = "Number of loans")

# Line graph of average estimated lost by year
ggplot(
  aes(x = ListingCreationYear, y = mean_estimatedLoss),
  data = loans.summary_by_year) +
  geom_line() +
  geom_point(aes(size = count)) +
  labs(
    title = "Average estimated loss by year",
    x = "Year", y = "Average estimated loss") +
  scale_size(name = "Number of loans")

# Line graph of average estimated return by year
ggplot(
  aes(x = ListingCreationYear, y = mean_estimatedReturn),
  data = loans.summary_by_year) +
  geom_line() +
  geom_point(aes(size = count)) +
  labs(
    title = "Average estimated loss by year",
    x = "Year", y = "Average estimated return") +
  scale_size(name = "Number of loans")
