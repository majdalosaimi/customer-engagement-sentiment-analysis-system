# E-Commerce Marketing Performance & Customer Sentiment Analysis

## 1. Executive Summary

### The Business Problem
The company faced declining conversion rates (bottoming at 4.3% in May) and shrinking social media reach in H2, despite stable product ratings (3.7/5.0). Marketing spend was inefficiently distributed due to a lack of visibility into customer drop-offs and sentiment-driven satisfaction gaps.

### The Solution
Engineered an **End-to-End Analytics Pipeline** that cleans raw transactional data via MySQL, performs Natural Language Processing (NLP) on customer feedback using Python, and visualizes actionable metrics across an interactive 4-page Power BI executive dashboard.

### A Few Next Steps
- Reallocate ad spend toward high-converting seasonal categories (e.g., Ski Boots & Kayaks).
- Establish a closed-loop customer recovery program targeting the "Mixed Sentiment" segment.
- Implement automated ETL data validation to streamline monthly pipeline updates.

### The Number Impact
- Identified a **+8.3% recovery potential** in conversion rate (rebounding from 5.0% to 10.2% by Q4).
- Uncovered a **15.37% Click-Through Rate (CTR)**, proving high-intent engagement despite lower overall traffic.
- Classified **357+ customer reviews** via NLP, isolating actionable growth opportunities within the target 4.0/5.0 rating threshold.

![Dashboard Overview](screenshots/overview-dashboard.png)
![Dashboard Overview](screenshots/conversion-details-dashboard.png)
![Dashboard Overview](screenshots/social-media-details-dashboard.png)
![Dashboard Overview](screenshots/customer-reviews-details-dashboard.png)

---

## 2. Business Problem

The marketing department lacked a unified data infrastructure to monitor conversion funnels, campaign effectiveness, and post-purchase customer feedback. Siloed transactional databases and unstructured review text obscured critical insights into why conversion rates fluctuated drastically throughout the year and why customer engagement deteriorated in the second half.

![Business Problem & Funnel Analysis](https://dummyimage.com/800x400/0f172a/ffffff&text=Data+Silos+%E2%86%92+Funnel+Bottlenecks+%26+Sentiment+Gaps)
*Figure 1: Conceptual mapping of siloed data streams leading to conversion drop-offs and unaddressed customer feedback.*

---

## 3. Methodology

- **Data Cleaning & Standardization (SQL / MySQL):** Merged multi-source datasets, resolved missing values, and built optimized **SQL Views** to serve as a reliable, single source of truth for downstream consumption.
- **Natural Language Processing & Feature Engineering (Python):** Integrated `SQLAlchemy` with `NLTK (VADER)` to quantify unstructured customer sentiment, creating hybrid features (`Sentiment Category` & `Sentiment Range`) that pair text polarity with numerical ratings.
- **Relational Data Modeling (Power BI & DAX):** Designed a robust **Star Schema** with a dedicated DAX Calendar dimension, enabling precise time-intelligence and multi-dimensional funnel filtering.
- **Interactive Executive Dashboards (Power BI):** Developed a 4-page UI/UX-optimized dashboard (*Overview, Conversion Details, Social Media Details, Customer Reviews Details*) to facilitate rapid, data-driven executive decision-making.

![End-to-End Data Pipeline Architecture](https://dummyimage.com/800x350/1e3a8a/ffffff&text=MySQL+(Clean+Views)+%E2%86%92+Python+NLP+(VADER)+%E2%86%92+Power+BI+(Star+Schema))
*Figure 2: Architecture of the End-to-End Analytics Pipeline.*

---

## 4. Skills

- **Data Engineering & Querying:** SQL, MySQL, Data Sanitization, Schema Standardization, Views Creation, ETL Concepts.
- **Advanced Analytics & Machine Learning (NLP):** Python, `Pandas`, `NLTK (VADER)`, Sentiment Analysis, Feature Engineering, `SQLAlchemy`.
- **Data Modeling & Visualization:** Power BI, DAX, Star Schema Modeling, Time Intelligence, UI/UX Dashboard Design, Interactive Filtering.
- **Business Intelligence & Strategy:** Funnel Analysis, Conversion Rate Optimization (CRO), Customer Experience (CX) Analytics, Executive Storytelling.

---

## 5. Results & Business Recommendation

### Key Results
1. **Conversion Dynamics:** High seasonal variance identified; January peaked at **18.5%** (driven by Ski Boots at 150% conversion), while May dropped to a low of **4.3%**.
2. **Engagement vs. Traffic:** While social views declined in H2, the **15.37% CTR** indicated a highly qualified remaining audience. Blog posts generated the highest consistent views compared to video and social channels.
3. **Customer Feedback Gap:** The average rating of **3.7** fell short of the corporate **4.0 target**. NLP sentiment modeling revealed that "Mixed" reviews contained low-hanging fruit issues (e.g., shipping delays vs. product quality) that can be easily resolved.

### Business Recommendations
- **Capitalize on Seasonal Peaks:** Shift performance marketing budgets to high-converting product lines (Kayaks, Ski Boots, Baseball Gloves) ahead of their historical demand peaks.
- **Pivot Content Strategy:** Double down on long-form Blog content for lead generation while introducing stronger CTAs in Video/Social formats to arrest the H2 engagement decline.
- **Target "Mixed" Sentiment Segment:** Launch an automated follow-up process for customers leaving 2–3 star reviews to resolve minor friction points and convert them into brand advocates.

---

## 6. Next Steps

- [ ] **Automate Pipeline Execution:** Convert the Python Jupyter Notebook into an orchestrated Python script running scheduled ETL tasks via Apache Airflow or Prefect.
- [ ] **Advanced NLP Modeling:** Train a fine-tuned Transformer-based model (e.g., RoBERTa/BERT) for deeper aspect-based sentiment analysis (ABSA) on specific product features.
- [ ] **A/B Testing Integration:** Partner with the growth marketing team to set up A/B tests on landing pages based on funnel drop-off points identified in the Conversion Details dashboard.
