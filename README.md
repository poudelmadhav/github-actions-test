# Repository dispatch in GithubActions

Here are five workflow files `dispatch.yml`, `test.yml`, `release.yml`, `sync.yml`, and `pr-test.yml`.

- `dispatch.yml` — triggered on repository dispatch or on workflow complete for `test.yml` in `main` branch
- `release.yml` — triggered when a PR from a `release/` or `hotfix/` branch is merged into `main`. Calls the reusable workflow `poudelmadhav/github-workflows/.github/workflows/create-release.yml@v6` to create a release.
- `sync.yml` — triggered on the same merge event as `release.yml`. Calls the reusable workflow `poudelmadhav/github-workflows/.github/workflows/sync-main-to-develop.yml@v6` to sync `main` back to `develop`.
- `pr-test.yml` — triggered on any pull request. Calls the reusable workflow `poudelmadhav/github-workflows/.github/workflows/ruby-tests.yml@v5` to run RSpec and RuboCop.

