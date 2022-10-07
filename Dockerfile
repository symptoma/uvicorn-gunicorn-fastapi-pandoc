FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Install pandoc for generating the PDF report
RUN apt-get update && apt-get install -y pandoc

# Install wkhtmltopdf 0.12.5 (with patched qt) and it's dependencies
# See https://gist.github.com/Rajeshr34/2e9b2438ff142e51c729b4b9b772680a
RUN apt-get install -y \
    build-essential \
    fontconfig \
    git-core \
    libfontenc1 \
    libssl-dev \
    libxrender-dev \
    libx11-dev \
    libxext-dev \
    libfontconfig1-dev \
    libfreetype6-dev \
    openssl \
    xfonts-75dpi \
    xfonts-base \
    xfonts-encodings \
    xfonts-utils \
	&& wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb \
	&& dpkg -i wkhtmltox_0.12.5-1.buster_amd64.deb \
	&& apt --fix-broken install
RUN rm -rf /var/lib/apt/lists/*
