# Käytetään virallista Python 3 -kuvaa
FROM python:3.9-slim

# Työhakemisto
WORKDIR /app

# Kopioi vaatimuksetiedosto ja asenna riippuvuudet
COPY requirements.txt .

# Asenna Flask
RUN pip install --no-cache-dir -r requirements.txt

# Kopioi sovellus
COPY app.py .

# Altistetaan portti
EXPOSE 5000

# Suorita sovellus
CMD ["python", "app.py"]
