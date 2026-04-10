# LaTeX Resume Docker Setup

This Docker Compose setup automatically compiles your LaTeX resume document into a PDF file.

## Usage

### Quick Start

1. **Build and run the container:**
```bash
docker compose up
```

This command will:
- Build the Docker image
- Compile your `resume_EN.tex` file into `resume_EN.pdf`
- Generate the PDF in the root directory

### Additional Commands

**Rebuild from scratch (ignore cache):**
```bash
docker compose up --build
```

**Run in the background:**
```bash
docker compose up -d
```

**View logs:**
```bash
docker compose logs -f
```

**Stop the container:**
```bash
docker compose down
```

**Remove images and containers:**
```bash
docker compose down -v --rmi all
```

## Generated Files

After compilation, you'll find in the root directory:
- `resume_EN.pdf` - Your compiled resume document
- `resume_EN.log` - LaTeX compilation log (for debugging)
- `resume_EN.aux` - LaTeX auxiliary file

## Project Structure

```
.
├── .gitignore
├── .dockerignore
├── README.md
├── docker-compose.yml
├── Dockerfile
├── resume_EN.pdf          (generated)
├── src/
│   ├── resume_EN.tex      (main resume document)
│   └── resume.cls         (LaTeX class file)
└── docs/
    └── README_DOCKER.md   (this file)
```

## Notes

- The compilation runs twice to ensure all references are correctly resolved
- The `resume.cls` file must be in the same directory as `resume_EN.tex`
- The PDF file is generated in the root directory for easy access
- The Docker image uses `texlive` which includes most common LaTeX packages

## Troubleshooting

If you encounter errors:

1. **Missing packages:** The container has `texlive:latest` installed, which includes most common packages
2. **Check logs:** Run `docker compose logs` to see compilation errors
3. **Clean rebuild:** Use `docker compose down -v --rmi all` followed by `docker compose up --build`

## Requirements

- Docker and Docker Compose installed on your system
