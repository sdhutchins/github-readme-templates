# GitHub templates

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Reusable starting points for repository documentation, contribution forms, and
GitHub Actions workflows. These files are designed for manual copying and must
be adapted to the destination repository before they are committed.

## Choose a template

| Template | Use it for | Destination |
| --- | --- | --- |
| [Project README](readme-templates/project_readme_temp.md) | A repository overview with setup, usage, testing, and contribution guidance | `README.md` |
| [Folder README](readme-templates/folder_readme_temp.md) | A focused guide for a directory or module | `path/to/folder/README.md` |
| [Bug report](other-templates/1-bug.yml) | Reproducible defect reports | `.github/ISSUE_TEMPLATE/1-bug.yml` |
| [Feature request](other-templates/2-feature-request.yml) | Problem-focused enhancement proposals | `.github/ISSUE_TEMPLATE/2-feature-request.yml` |
| [Question](other-templates/3-question.yml) | Support requests when GitHub Discussions is not used | `.github/ISSUE_TEMPLATE/3-question.yml` |
| [Issue configuration](other-templates/config.yml) | Blank-issue and support-link settings | `.github/ISSUE_TEMPLATE/config.yml` |
| [Pull request](other-templates/pull_request_template.md) | Concise change, validation, and risk reporting | `.github/pull_request_template.md` |
| [Contributing guide](other-templates/CONTRIBUTING.md) | Repository-specific contribution instructions | `CONTRIBUTING.md` |
| [Code of Conduct](other-templates/CODE_OF_CONDUCT.md) | Community expectations and enforcement | `CODE_OF_CONDUCT.md` |

The [workflow templates](workflow-templates/README.md) cover Python testing,
Python package builds, and Jekyll deployment to GitHub Pages.

## Copy and customize

Clone this repository, copy only the files that fit the destination project,
and then replace every `REPLACE_WITH_...` value.

```bash
git clone https://github.com/sdhutchins/github-templates.git
cp github-templates/readme-templates/project_readme_temp.md path/to/project/README.md
```

Before committing a copied template:

- Remove sections that do not apply.
- Replace example commands with commands verified in the destination repository.
- Confirm that links resolve from the copied file's final location.
- Create any labels named by an issue form.
- Match the Python test matrix to the versions declared by the project.
- Add a private Code of Conduct reporting address.
- Review pinned action versions and enable Dependabot for GitHub Actions.

Repository-specific templates should take precedence over these general
starting points. Projects involving research data, legal records, security
reports, or sensitive information usually need additional source and privacy
requirements.

## Automatic GitHub defaults

This repository is a manually copied template library. To distribute default
community health files across an account, create a public repository named
`.github` and place each file in the location required by GitHub.

Selectable organization workflow templates also belong in the public `.github`
repository. Each workflow must have a matching `.properties.json` metadata
file. See GitHub's documentation for
[default community health files](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file)
and
[workflow templates](https://docs.github.com/en/actions/how-tos/reuse-automations/create-workflow-templates).

## License

The templates are provided under the [MIT License](LICENSE). The adapted
Contributor Covenant text in `CODE_OF_CONDUCT.md` retains its stated CC BY-SA
4.0 attribution and license.
