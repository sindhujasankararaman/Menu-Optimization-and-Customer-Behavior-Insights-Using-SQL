## Menu Optimization and Customer Preference Insights using SQL
## Table of Contents 📚

- [Executive Summary](#Executive-Summary)
- [Business Request](#BUSINESS-Request)
- [Strategy](#Strategy)
- [Business Questions](#Business-Questions)
- [Dataset](#Dataset)
- [Insights](#Insights)
- [Recommendations](#Recommendations)

## Executive Summary:

World Cafe launched a new menu earlier this year but lacked data-driven insights into which items were performing well and which were preferred by top customers. To address this, I conducted exploratory data analysis using SQL to clean, summarize, and analyze transaction data, uncovering trends in customer orders and preferences.

The analysis revealed that the Italian food category was the top-performing and most profitable, while Mexican dishes had lower sales and engagement. Key findings included daily sales averages, top-selling items like the Hamburger (622 orders), and low-performing items like Chicken Tacos (123 orders).

Based on these insights, I recommended aligning pricing strategies with high-performing items, emphasizing popular dishes in marketing campaigns, promoting underperforming categories through targeted promotions, and analyzing high-value orders to optimize pricing and upselling opportunities. Implementing these strategies is expected to improve menu performance, increase profitability, and enhance customer satisfaction.

## Business Request:
The World Cafe has recently launched “The Taste of the World Cafe” new menu, but management currently lacks a structured understanding of which items are performing well, which are underperforming, and what top customers prefer. These insights are critical to designing effective marketing campaigns, optimizing pricing and promotions, and increasing overall sales and profitability.

This request seeks a comprehensive analysis to:

Identify high- and low-performing menu items through exploratory data analysis and data cleaning.

Examine trends in customer preferences, with emphasis on top and repeat customers.

Summarize findings and provide actionable recommendations using SQL to guide marketing strategies, promotional initiatives, and menu optimization.

The outcomes of this analysis will enable management to make informed, data-driven decisions that improve customer engagement, boost sales, and enhance menu profitability.

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

## Dataset 📑

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
