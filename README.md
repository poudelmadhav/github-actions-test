# Repository dispatch in GithubActions

Here are four workflow files `dispatch.yml`, `test.yml`, `release.yml` and `sync.yml`.

- `dispatch.yml` — triggered on repository dispatch or on workflow complete for `test.yml` in `main` branch
- `release.yml` — triggered when a PR from a `release/` or `hotfix/` branch is merged into `main`. Uses the shared workflow `poudelmadhav/github-workflows@v3` to create a release.
- `sync.yml` — triggered on the same merge event as `release.yml`. Uses the shared workflow `poudelmadhav/github-workflows/.github/workflows/sync-main-to-develop.yml@v3` to sync `main` back to `develop`.
