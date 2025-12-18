# Github Templates

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A collection of reusable/boilerplates for GitHub repositories, including README templates, issue templates, and pull request templates.

## Table of Contents

-   [Overview](#overview)
-   [Templates Included](#templates-included)
-   [Usage](#usage)
-   [License](#license)

## Overview

This repository provides ready-to-use templates to help standardize documentation and contribution workflows across GitHub projects. Whether you're starting a new project or improving an existing one, these templates can help you create professional, consistent documentation and streamline issue reporting and pull requests.

## Templates Included

### README Templates

- **[Project README Template](readme-templates/project_readme_temp.md)** - A comprehensive template for project-level README files with sections for background, installation, usage, and more.

- **[Folder README Template](readme-templates/folder_readme_temp.md)** - A template for documenting individual folders or modules within a project, including usage examples and notes.

### Issue Templates

- **[Bug Report](other-templates/1-bug.yml)** - Template for reporting bugs with fields for description, steps to reproduce, expected/actual behavior, and environment details.

- **[Feature Request](other-templates/2-feature-request.yml)** - Template for suggesting new features with fields for problem statement, proposed solution, and alternatives.

- **[Question](other-templates/3-question.yml)** - Simple template for asking questions or requesting help.

### Pull Request Template

- **[Pull Request Template](other-templates/pull_request_template.md)** - A comprehensive PR template with checklists and sections for describing changes, testing, and breaking changes.

### Community Templates

- **[CONTRIBUTING.md](other-templates/CONTRIBUTING.md)** - Guidelines for contributing to the project, including bug reporting, code submission, and workflow examples.

- **[CODE_OF_CONDUCT.md](other-templates/CODE_OF_CONDUCT.md)** - Code of conduct for community interactions and contributions.

### GitHub Actions Workflow Templates

- **[Test Package Build](workflow-templates/test-package-build.yml)** - CI/CD workflow template for testing and building Python packages with multiple Python versions, test coverage, and Codecov integration.

- **[Pytest Tests](workflow-templates/pytest-workflow.yml)** - Lightweight workflow template for running pytest tests with coverage on multiple Python versions. Ideal for applications or libraries that don't require package building.

- **[Deploy Jekyll to GitHub Pages](workflow-templates/deploy-jekyll-pages.yml)** - Workflow template for building and deploying Jekyll sites to GitHub Pages with dependencies preinstalled.

## Usage

### Repository Structure

When setting up templates in your repository, use the following structure:

```
├── README.md                          <- Project README (from readme-templates/)
└── .github/
    ├── CONTRIBUTING.md                 <- Contributing guidelines (from other-templates/)
    ├── CODE_OF_CONDUCT.md              <- Code of conduct (from other-templates/)
    ├── pull_request_template.md        <- PR template (from other-templates/)
    ├── ISSUE_TEMPLATE/
    │   ├── 1-bug.yml                   <- Bug report template (from other-templates/)
    │   ├── 2-feature-request.yml       <- Feature request template (from other-templates/)
    │   └── 3-question.yml              <- Question template (from other-templates/)
    └── workflows/
        ├── test-package-build.yml      <- CI/CD workflow (from workflow-templates/)
        ├── pytest-workflow.yml          <- Pytest test workflow (from workflow-templates/)
        └── deploy-jekyll-pages.yml      <- Jekyll deployment workflow (from workflow-templates/)
```

## License

[MIT](LICENSE)
