# GitHub Actions workflow templates

Manually copied starting points for common test, package-build, and GitHub
Pages workflows.

| Workflow | Intended project |
| --- | --- |
| [Pytest](pytest-workflow.yml) | Python project with tests and a `requirements.txt` file |
| [Test package build](test-package-build.yml) | Installable Python package with project metadata |
| [Deploy Jekyll Pages](deploy-jekyll-pages.yml) | Jekyll site deployed through GitHub Pages |

## Before copying

1. Copy one workflow into `.github/workflows/` in the destination repository.
2. Replace every `REPLACE_WITH_...` value.
3. Match branch names and runtime versions to the destination project.
4. Remove services such as Codecov when they are not used.
5. Confirm that repository secrets and GitHub Pages settings are configured.
6. Review the complete workflow diff before enabling it.

The Python matrices are examples. They should match the versions declared in
`pyproject.toml`, package metadata, or the project's support policy. The
package workflow expects the project to install successfully with
`python -m pip install -e .`. Adapt the dependency step when test requirements
are provided through an extra or a dedicated requirements file.

The Jekyll workflow builds pull requests but deploys only pushes to `main` or
manual runs. Change `main` if the destination repository uses a different
default branch.

## Security and maintenance

Actions are pinned to full commit SHAs with release versions recorded in
comments. This prevents an existing workflow reference from changing without
a repository update. Review new releases before updating a pin and configure
Dependabot for the `github-actions` ecosystem after copying a workflow.

The test workflows grant only read access to repository contents. The Pages
workflow grants `pages: write` and `id-token: write` only to its deployment
job.

See GitHub's guidance for
[secure use of GitHub Actions](https://docs.github.com/en/actions/security-for-github-actions/security-guides/security-hardening-for-github-actions)
and
[dependency caching](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-python#caching-dependencies).
