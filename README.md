## Menu Optimization and Customer Preference Insights using SQL
## Table of Contents 📚

- Executive Summary
- Business Problem
- Business Questions
- Data collected from SQL data mining
- Insights
- Recommendations

## Overview 📖

Conducted exploratory analysis and data cleaning to understand menu items are doing well/not well and what the top customers seem to like the best, which is very important to understand before starting marketing campaigns to increase sales. Used SQL to summarize trends; discovered that the dishes with the highest purchase potential are dishes from the Italian category. Created a report with an insights and recommendations section so that the restaurant can make better use of marketing and sales campaigns, and also boost sales in other categories.

## Introduction and Situation 📝🔎

World Cafe is a restaurant that has diverse menu offerings and serves generous portions. The Taste of the World Cafe debuted a new menu at the start of the year. After switching the menu, they don’t know which menu items are doing well or not well and what the top customers seem to like the best, which is very important to understand before starting marketing campaigns to increase sales.

## Strategy 🎯

- Exploratory Data Analysis in SQL to understand:
What is on the new menu; Get an idea of the data that’s been collected this year; Understand how customers are reacting to the new menu
- Transcribe the data so that the World Cafe owner, sales manager and marketing team understand what the data is telling them about the new menu
- Generate insights from the data
- Suggest improvements

## Business Questions ⚖️

- Which categories are the most and least popular, and how does this impact our menu and pricing strategy?
- What are the top highest spend orders, and what insights can we gain from them to enhance our pricing and promotional strategies?
- What is the average price of dishes within each category, and how does this influence customer choices and profitability?
- How many orders were made within a specific date range, and what does this tell us about customer behavior and peak periods?

## Data collected from SQL data mining 📑

The SQL queries performed to uncover these general insights can be found **[here](https://github.com/dianacoffman/World-Cafe-Operations-Analysis/blob/main/SQL_World%20Cafe%20Operations%20Analysis.sql)**.

## Insights💡

- Italian Food Category Leads Sales: The Italian food category is currently our top performer, generating the highest sales among all menu categories. This suggests strong customer preference and demand.
- Decline in Mexican Dishes: Orders for Mexican dishes are noticeably lower compared to other categories, indicating a potential shift in customer preferences or dissatisfaction.
- Order Volume Overview: We observe an average of approximately 60 sales per day over the three-month period from January 1, 2023, to March 31, 2023. This provides a baseline for our daily sales performance.
- Top and Bottom Sellers: The Hamburger, from the American category, is the most frequently ordered item with 622 orders. In contrast, the Chicken Tacos from the Mexican category are the least ordered, with only 123 orders.

## Recommendations 🛠️

- Pricing Strategy Adjustment: Align the pricing of other categories closer to the Italian dishes' range ($14-$19) to enhance profitability. Consider increasing prices on lower-margin items like Edamame to balance margins.
- Marketing Focus: Invest in marketing campaigns that emphasize Italian dishes due to their popularity and higher average price. Highlighting these items could boost overall sales.
- Promotional Strategies: Implement promotions or special discount days for underperforming categories, such as Mexican food, to increase their visibility and appeal. Monitor the impact of these promotions and consider removing low-performing items if necessary.
- Analyze High-Spend Orders: Review the details of high-spend orders, especially those that include multiple Italian dishes. Use these insights to refine your pricing strategies and offer tailored promotions for high-value customers.
