# GitHub Actions Workflow Templates

This folder contains reusable GitHub Actions workflow templates for CI/CD.

## Templates

### Test Package Build

**[test-package-build.yml](test-package-build.yml)** - A workflow template for testing and building Python packages with multiple Python versions, test coverage, and Codecov integration.

#### Customization

Before using this template, replace the following placeholders:

- `<package_name>` - Replace with your package name (used in coverage reporting)
- `<username>` - Replace with your GitHub username or organization
- `<repository_name>` - Replace with your repository name

#### Optional Customizations

- **Python versions**: Update the `python-version` matrix to include/exclude versions as needed
- **Branches**: Modify the `branches` array to match your default branch name (if not `main`)
- **Test command**: Adjust the pytest command if your test structure differs
- **Codecov settings**: Modify Codecov flags, name, or other settings as needed
- **Dependencies**: Update build dependencies or add additional installation steps

### Pytest Tests

**[pytest-workflow.yml](pytest-workflow.yml)** - A lightweight workflow template for running pytest tests with coverage on multiple Python versions. Ideal for applications or libraries that don't require package building.

#### Customization

Before using this template, replace the following placeholders:

- `<coverage_target>` - Replace with your module/package name for coverage reporting (e.g., `app`, `src`, `mypackage`)

#### Optional Customizations

- **Python versions**: Update the `python-version` matrix to include/exclude versions as needed
- **Branches**: Modify the `branches` array to match your branch names (default includes `main`, `master`, `updates`)
- **Test command**: Adjust the pytest command if your test structure differs
- **Codecov settings**: Modify Codecov flags, name, or other settings as needed
- **Dependencies**: Add additional installation steps if needed (e.g., `pip install pytest-cov`)

### Deploy Jekyll to GitHub Pages

**[deploy-jekyll-pages.yml](deploy-jekyll-pages.yml)** - A workflow template for building and deploying Jekyll sites to GitHub Pages with dependencies preinstalled.

#### Customization

Before using this template, replace the following placeholders:

- `<default_branch>` - Replace with your default branch name (e.g., `main`, `master`)

#### Optional Customizations

- **Source/Destination paths**: Modify the `source` and `destination` paths in the Jekyll build step if your Jekyll site structure differs
- **Concurrency settings**: Adjust the concurrency group name or cancellation behavior if needed
- **Permissions**: Modify permissions if your repository requires different access levels

## Usage

1. Copy the workflow file to `.github/workflows/` in your repository
2. Rename it as needed (e.g., `ci.yml`, `test.yml`)
3. Replace all placeholders with your project-specific values
4. Customize as needed for your project requirements
