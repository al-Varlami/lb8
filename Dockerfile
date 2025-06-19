FROM ubuntu:20.04 

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    gcc g++ cmake make \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m appuser && \
    mkdir -p /app && \
    chown appuser:appuser /app

WORKDIR /app

COPY --chown=appuser:appuser . .

RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release && \
    cmake --build _build

RUN mkdir -p /output && \
    chown appuser:appuser /output

USER appuser

WORKDIR /app/_build/solver_application

ENTRYPOINT ["./solver_app"]