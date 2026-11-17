# VELVET — Intelligent Message Security & Threat Detection System
> *"Not every message deserves your attention."*

[![Python](https://img.shields.io/badge/Python-3.14%20%7C%203.11+-542536?style=flat&logo=python&logoColor=F2EDE5)](https://www.python.org/)
[![FastAPI](https://img.shields.io/badge/FastAPI-2.0.0-21191D?style=flat&logo=fastapi&logoColor=F2EDE5)](https://fastapi.tiangolo.com/)
[![React](https://img.shields.io/badge/React-19.0-783B50?style=flat&logo=react&logoColor=F2EDE5)](https://react.dev/)
[![Scikit-Learn](https://img.shields.io/badge/Scikit--Learn-1.8.0-C9B79C?style=flat&logo=scikitlearn&logoColor=151313)](https://scikit-learn.org/)
[![NLTK](https://img.shields.io/badge/NLTK-3.10.4-B68A91?style=flat&logo=nltk&logoColor=151313)](https://www.nltk.org/)
[![License](https://img.shields.io/badge/License-MIT-3B2A32?style=flat)](#license)

---

## 1. Executive Summary

**VELVET** is an enterprise-grade cybersecurity message intelligence and natural language processing (NLP) system designed to detect, classify, and explain spam, promotional clutter, deceptive phishing campaigns, and suspicious anomalous messages. 

Equipped with a **crisp editorial Light Theme** (with one-click dark mode toggle), **interactive graph charts**, and a built-in **Academic Presentation & Viva Guide**, VELVET is designed to be easily understood, demonstrated, and explained to professors, evaluators, and examiners.

---

## 2. Five Discrete Threat Classifications

VELVET classifies submitted messages into five calibrated taxonomy tiers:

1. **Safe / Legitimate:** Benign workplace, transactional, or interpersonal messages exhibiting regular syntactical cadence.
2. **Spam:** Unsolicited bulk marketing, fake sweepstakes/lottery awards, miracle diets, or telemarketing broadcasts.
3. **Phishing:** High-risk social engineering targeting credentials, banking authentication, OTP codes, or corporate passwords.
4. **Promotional:** Legitimate commercial announcements, seasonal merchant discounts, and loyalty reward perks without hostile payloads.
5. **Suspicious:** Unverified financial transfers, urgent out-of-band wire requests, or anomalous communications warranting secondary verification.

---

## 3. Interactive Visual Charts & Clarifications

The platform features built-in custom interactive SVG graph charts:
- **Category Doughnut Chart:** Interactive proportion slices displaying exact percentages for each threat category with center readout.
- **Threat Trend Line Chart:** Chronological spline area graph visualizing detected threats vs benign messages over time.
- **Hostile Keywords Histogram (Bar Chart):** Frequency bar visualization of recurring trigger tokens with hover tooltips.
- **Brand Impersonation Bar Chart:** Frequency of targeted high-value brands (Chase, PayPal, Netflix, Apple).
- **Risk Severity Stratification:** 4-tier risk bands (Critical, Elevated, Moderate, Low).
- **Interactive Confusion Matrix Grid:** Clickable heat cells that reveal the underlying test partition messages.

---

## 4. Built-in Academic Viva & Presentation Guide

Click the **"🎓 How to Explain This"** button on the top navigation bar from any page to open the presentation guide:
- **Executive Summary:** Plain-English summary of what the current page does.
- **Core Concept:** The underlying AI/ML and NLP theory (TF-IDF, Softmax, Platt scaling, POS tagging, XAI).
- **Verbatim Presentation Talking Points:** Exactly what you can say during your presentation.
- **Common Viva Questions & Model Answers:** Questions examiners ask and how to answer them with confidence.

---

## 5. Machine Learning & NLP Architecture

### Pipeline Transformations
```
Raw Message 
    │
    ▼
[1] Selective Normalization (Whitespace, lowercase, URL/Currency preservation)
    │
    ▼
[2] Word-Level Tokenization (NLTK regex & word_tokenize)
    │
    ▼
[3] Stop-Word Pruning (Filtering functional stopwords while preserving threat markers: 'free', 'urgent', 'no', 'win')
    │
    ▼
[4] Part-of-Speech Tagging (Penn Treebank annotations: Nouns, Urgency Verbs, Superlative Adjectives)
    │
    ▼
[5] Lemmatization & Stemming (WordNet Lemmatizer & Porter Stemmer)
    │
    ▼
[6] TF-IDF Feature Extraction (Unigram & Bigram n-grams, Sublinear TF, 1,262 dimensions)
    │
    ▼
[7] Calibrated Model Inference (Logistic Regression, MultinomialNB, Calibrated Linear SVM)
    │
    ▼
[8] Threat Risk Scoring (0–100 index calibrated against static URL heuristics & linguistic density)
    │
    ▼
[9] Explainable AI (Exact token feature coefficients attributing why the verdict was rendered)
```

### Empirical Model Performance (Test Holdout $N = 300$)

| Algorithm | Multi-Class Accuracy | Precision (Weighted) | Recall (Weighted) | F1-Score (Weighted) | Binary Baseline Accuracy |
| :--- | :---: | :---: | :---: | :---: | :---: |
| **Logistic Regression (Champion)** | **99.33%** | **99.34%** | **99.33%** | **99.33%** | 99.33% |
| **Linear SVM (Calibrated)** | **99.33%** | **99.34%** | **99.33%** | **99.33%** | 99.33% |
| **Multinomial Naive Bayes** | 99.00% | 99.01% | 99.00% | 99.00% | **99.67%** |

---

## 6. Installation & Quick Start

### 1-Click Launch (Windows)
Double-click [`run_all.bat`](file:///C:/Users/Admin/.gemini/antigravity/scratch/velvet/run_all.bat) inside the project folder.

### Manual Launch

**Terminal 1 (Backend):**
```powershell
cd C:\Users\Admin\.gemini\antigravity\scratch\velvet\backend
python -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload
```

**Terminal 2 (Frontend):**
```powershell
cd C:\Users\Admin\.gemini\antigravity\scratch\velvet\frontend
npm run dev
```

Open your browser to:
👉 **`http://localhost:5173`**
