# Repository dispatch in GithubActions

Here are four workflow files `dispatch.yml`, `test.yml`, `release.yml` and `sync.yml`.

- `dispatch.yml` — triggered on repository dispatch or on workflow complete for `test.yml` in `main` branch
- `release.yml` — triggered when a PR from a `release/` or `hotfix/` branch is merged into `main`. Calls the reusable workflow `poudelmadhav/github-workflows/.github/workflows/create-release.yml@v4` to create a release.
- `sync.yml` — triggered on the same merge event as `release.yml`. Calls the reusable workflow `poudelmadhav/github-workflows/.github/workflows/sync-main-to-develop.yml@v4` to sync `main` back to `develop`.

