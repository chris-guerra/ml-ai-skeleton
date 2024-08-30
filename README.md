# Book Recommendation System

## Overview

This project is a basic Book Recommendation System that leverages FastAPI for the backend API, Streamlit for the front-end interface, Quadrant for vector-based similarity search, and PostgreSQL for data storage. The system allows users to add books, retrieve recommendations based on user preferences, and visualize reading statistics.

## Project Structure

```plaintext
ml-ai-skeleton/
│
├── app/
│   ├── api/
│   ├── db/
│   ├── services/
│   ├── ml/
│   └── main.py
│
├── docker/
│   ├── Dockerfile
│   ├── Dockerfile.streamlit
│   ├── docker-compose.yml
│   ├── quadrant.Dockerfile
│   └── postgres.Dockerfile
│
├── tests/
│   ├── test_api.py
│   ├── test_ml.py
│   ├── test_db.py
│   └── test_streamlit.py
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── outputs/
│
├── notebooks/
│   └── exploration.ipynb
│
├── config/
│   ├── settings.py
│   ├── logging.conf
│   └── secrets/
│
├── requirements/
│   ├── base.txt
│   ├── api.txt
│   ├── ml.txt
│   ├── streamlit.txt
│   ├── dev.txt
│   └── prod.txt
│
├── .env
├── .gitignore
└── README.md
```

## Getting Started

### Prerequisites
- Python 3.8+
- Docker
- Git

### Installation

1. Clone the repository
git clone https://github.com/yourusername/book-recommendation-system.git
2. Set up environment variables: Create a .env file in the root directory with the necessary environment variables (e.g., database credentials, API keys).
3. Install dependencies: Install the dependencies by combining the relevant requirements files.
4. Run the application: Use Docker Compose to build and run the containers: docker compose up --build -d

## Usage

- FastAPI: Access the API documentation at http://localhost:8000/docs.
- Streamlit: Access the front-end interface at http://localhost:8501.

## Project Features
Add Books: Users can add books to the system through the API.
Book Recommendations: Retrieve book recommendations based on user preferences using the Quadrant vector search.
Visualize Data: The Streamlit app provides visual insights into reading habits and recommendations.

## Testing
Run the tests using the following command:

pytest

## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

Author: Christian Guerra