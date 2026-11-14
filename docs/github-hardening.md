# GitHub security controls

Date: 2026-11-14

This record documents the approved credential-theft/CI-injection hardening. It is not evidence that an account was compromised. Changes preserve the existing application runtime.

## Verified server changes

- Default branch: unprotected → PR required, administrator enforcement, linear history, conversation resolution, force-push/deletion blocked. Zero required approvals preserves the single-owner workflow; this provides traceability, not independent review. Verified with GET branch protection.

## Workflow changes and verification

External actions use full commit SHAs. Read access is explicit at workflow level; checkout credentials are not persisted in build/test jobs. Existing publication jobs retain only their required exceptions. Tags were resolved through the upstream GitHub API; a SHA prevents tag movement but does not make arbitrary repository code trustworthy.

Validation: actionlint 1.7.12, exit 0. Shellcheck and pyflakes were not run. Application builds/tests were not run for changes limited to workflow permissions/action references. Production was not exercised.

- `.github/workflows/star-history.yml`
- `.github/workflows/security.yml`
- `.github/workflows/docs.yml`
- `.github/workflows/codeql.yml`
- `.github/workflows/ci.yml`

Existing action SHAs and the disabled upstream marketing workflow are retained. A pre-existing YAML colon parsing error in that disabled job was fixed using a block scalar. The intentional if: false warning is the only ignored actionlint diagnostic. Scorecard OIDC remains scoped to its original job; no cloud role was identified or configured.

## Limits and rollback

Write credentials, administrator access and production integrations still require independent review. Re-enable Actions only after reviewing every branch and documenting a need for CI. Restore previous controls only through an approved change; revert code through a PR, never a history rewrite.

[Central policy and audit record](https://github.com/notolac/home-lab/blob/main/_shared/orquestacion/github-hardening.md).
