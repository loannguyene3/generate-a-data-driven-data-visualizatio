# Configuration file for data-driven data visualization tracker

# Data source configuration
data_source:
  type: csv
  file_path: 'data/sales_data.csv'

# Data visualization configuration
visualization:
  type: line_chart
  title: 'Sales Trend Over Time'
  x_axis:
    label: 'Month'
    format: '%b %Y'
  y_axis:
    label: 'Sales Amount'
    format: '$%.2f'
  colors:
    - '#3498db'
    - '#f1c40f'
    - '#2ecc71'

# Tracker configuration
tracker:
  type: trend
  metric: 'sales_amount'
  threshold: 10
  alert_message: 'Sales have increased by {{threshold}}% in the last quarter!'

# Output configuration
output:
  type: html
  file_path: 'output/sales_trend.html'

# Data processing configuration
processing:
  - filter: sales_amount > 0
  - group_by: month
  - aggregate: sum
  - sort_by: month

# Optional: add custom styles to the visualization
styles:
  - '.chart-title { font-size: 24px; color: #333; }'
  - '.axis-label { font-size: 16px; color: #666; }'