# ☕ Coffee Shop Sales Analysis

### End-to-End Data Analytics Project

An analysis of **six months of coffee shop sales data (January–June)** to identify revenue trends, customer purchasing behavior, product performance, store performance, and peak sales periods.

**Workflow:** `Python → PostgreSQL → Power BI → Business Insights`

---

## 📂 Dataset

The dataset contains transaction-level coffee shop sales data from **January to June**, including information about:

* Transactions
* Products
* Quantity & pricing
* Store locations
* Date & time

**Key fields:** `transaction_id` · `transaction_date` · `transaction_qty` · `store_location` · `product_category` · `product_type` · `unit_price` · `hour` · `timeslot`

---

## 🛠️ Tools Used

| Tool              | Purpose                       |
| ----------------- | ----------------------------- |
| 🐍 **Python**     | Data inspection & preparation |
| 🐘 **PostgreSQL** | SQL analysis                  |
| 📊 **Power BI**   | Dashboard & visualization     |
| 📐 **DAX**        | KPI calculations              |
| 🐙 **GitHub**     | Documentation                 |

---

## 🔄 Workflow

```text
Raw Data
   ↓
Python — Data Preparation
   ↓
PostgreSQL — SQL Analysis
   ↓
Power BI — Dashboard
   ↓
Insights & Recommendations
```

---

# 📊 Dashboard

> **Interactive Power BI dashboard showcasing sales performance, trends, product analysis, store performance, and customer purchasing patterns.**



![Coffee Shop Sales Dashboard](images/dashboard.png)

---

# 📈 Key Performance Indicators

| KPI                        |     Result |
| -------------------------- | ---------: |
| 💰 Total Revenue           |      **698.81k** |
| 🧾 Total Transactions      |      **149k** |
| 📦 Total Quantity Sold     |      **214k** |
| 💵 Average Order Value     | **~$4.70** |
| 🛒 Average Items per Order |  **~1.45** |

---

# 🔍 Key Insights

### 💰 Revenue Growth

* **February** was the lowest-revenue month at approximately **$76.15K**.
* **June** was the highest-revenue month at approximately **$166.4K**.
* Revenue showed a strong upward trend throughout the period.

### 📈 Transaction Growth

* Transactions increased from approximately **17K in January** to **35K in June**.
* Revenue growth was therefore largely driven by increasing transaction volume.

### ☕ Product Performance

* **Coffee** was the largest revenue contributor at approximately **39%**.
* **Tea** contributed approximately **28%**.
* **Bakery** contributed approximately **11%**.
* **Packaged Chocolate** contributed less than **2%**.

### ⏰ Peak Sales

* **Morning** was the strongest-performing timeslot.
* **8 AM–10 AM** was the busiest period.
* Evening was the weakest-performing timeslot.

### 🏪 Store Performance

* Revenue was relatively balanced across the **three store locations**.
* No single location showed significant dominance.

---

# 💡 Business Recommendations

Based on the analysis:

* **Optimize morning operations** around the 8–10 AM peak.
* **Strengthen coffee sales** through premium products and coffee + bakery bundles.
* **Review low-performing categories** for pricing, demand, and promotional opportunities.
* **Monitor store-level KPIs** to maintain balanced performance.
* Focus on **transaction growth, repeat purchases, and customer retention** since AOV remained relatively stable.

---

# 🎯 Conclusion

The analysis shows that the coffee shop experienced **strong revenue and transaction growth from January to June**, with growth primarily driven by higher transaction volume.

**Coffee remained the core revenue driver, while morning hours represented the strongest sales opportunity.**

The project demonstrates an end-to-end approach to turning raw sales data into **actionable business insights using Python, SQL, and Power BI**.
