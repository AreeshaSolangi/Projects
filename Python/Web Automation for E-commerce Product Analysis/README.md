# Web Automation for E-commerce Product Analysis

This project demonstrates automated data extraction from Amazon to analyze product information, focusing on Maybelline cosmetics. Using Python and Selenium, the script collects product details like title, price, rating, reviews, availability, and seller information across multiple pages.

Check out the full [Jupyter Notebook with the script](https://github.com/AreeshaSolangi/Projects/blob/main/Python/Web%20Automation%20for%20E-commerce%20Product%20Analysis/Amazon%20Web%20Scraping.ipynb) for the complete implementation.

## Features

- Automatically navigates through multiple Amazon search result pages.
- Extracts product links and details such as:
  - Title
  - Price
  - Rating
  - Reviews
  - Availability
  - Number of sellers
- Handles missing data gracefully.
- Outputs results into a structured **Pandas DataFrame** for further analysis.

## Technologies Used

- Python 3.x
- Selenium WebDriver
- Pandas
- ChromeDriver

## How It Works

1. **Pagination Loop**: The script iterates through search result pages to gather all product links.
2. **Product Extraction**: For each product, it collects relevant details by visiting the product page.
3. **Data Storage**: All collected data is stored in a Pandas DataFrame for analysis or export to CSV.


