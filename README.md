# Janus - The Financial Forecasting Tool 📈🔮

Welcome to **Janus**, an open-source tool designed to help investors analyze financial data and forecast trends with ease! Inspired by the Roman god of beginnings and transitions, **Janus** empowers you to dive into financial analysis with cutting-edge technologies like **Python**, **Docker**, **Delta Lake**, and **PostgreSQL**.

> "Just like the two faces of Janus look into the past and future, this tool helps you analyze past trends and predict future financial outcomes."

## 🚀 Features

✨ **Financial Data Collection**: Import financial data from Yahoo Finance using `yfinance`  
⚙️ **Data Lake Architecture**: Use a **multi-layered data lake** structure:
- **🟤 Bronze**: Raw financial data in Delta Lake format
- **⚪ Silver**: Cleaned and standardized data
- **🟡 Gold**: Aggregated data stored in PostgreSQL

💻 **Docker-ized Environment**: Run everything in containers with **Docker** and **Docker Compose**  
🔐 **PostgreSQL Integration**: Store your final, aggregated data in a PostgreSQL database for easy access  
🔧 **Environment Flexibility**: Switch between different environments (dev, prod) with a single command

## 🔧 Technologies Used

- **Python 3.9** 🐍  
- **Delta Lake** 🔥  
- **PostgreSQL** 🗃️  
- **Docker** 🐳  
- **Docker Compose** 📜  
- **yfinance** 📊  
- **Polars** (Coming soon! 🚀)

## 🏁 Getting Started

### Prerequisites

Before you begin, make sure you have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/janus.git
   cd janus
   ```

2. Create the required directories:
   ```bash
   bash create_directories.sh
   ```

3. Build and run the Docker containers for the **development** environment:
   ```bash
   ./run.sh dev up
   ```

4. Access the application on [localhost:5000](http://localhost:5000).

### Configuration

Configure your **PostgreSQL credentials** and other environment variables by editing the `.env` file in the `config/db/` directory.

## 📂 Project Structure

Here's the structure of the project with all the important components:

```
.
├── config
│   ├── app
│   │   └── config.yml        # Application configuration
│   └── db
│       └── .env              # Database environment variables
├── data
│   ├── bronze                # Raw financial data (Delta Lake)
│   ├── gold                  # Aggregated data (PostgreSQL)
│   └── silver                # Cleaned and standardized data (Delta Lake)
├── docker
│   ├── base
│   │   └── docker-compose.yml # Base Docker Compose configuration
│   ├── dev
│   │   └── docker-compose.dev.yml  # Development environment Docker Compose
│   └── prod
│       └── docker-compose.prod.yml  # Production environment Docker Compose
├── docs
│   └── backlog               # Project backlog and notes
├── README.md                 # This file!
├── requirements.txt          # Python dependencies
├── run.sh                    # Script to manage Docker environments
└── src
    ├── scripts
    │   ├── ingestion.py      # Script to ingest data
    │   ├── to_gold.py        # Script to process data into Gold layer
    │   └── to_silver.py      # Script to process data into Silver layer
    └── utils
        └── utils.py          # Utility functions
```

## 💡 How to Use

1. **Data Collection**: Use the `src/scripts/ingestion.py` script to download financial data from Yahoo Finance.
2. **Data Processing**: Clean and standardize your data using the `to_silver.py` script. Store it in the **Silver** Delta Lake layer.
3. **Data Aggregation**: Aggregate your data and store it in the **Gold** Delta Lake layer, or directly into PostgreSQL using the `to_gold.py` script.
4. **Run the App**: Once your data is ready, run the application using Docker and explore your financial analysis.

## 🌍 Contributing

We welcome contributions! Whether it's a bug fix, a new feature, or improvements to the docs, feel free to fork the repo, open an issue, or submit a pull request.

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📢 Badges

[![Build Status](https://img.shields.io/github/workflow/status/yourusername/janus/CI)](https://github.com/yourusername/janus/actions)  
[![License](https://img.shields.io/github/license/yourusername/janus)](https://github.com/yourusername/janus/blob/main/LICENSE)  
[![Version](https://img.shields.io/github/tag/yourusername/janus.svg)](https://github.com/yourusername/janus/releases)

---

Thank you for using **Janus**! 🎉 Let's forecast the future and invest wisely! 📊🔮
