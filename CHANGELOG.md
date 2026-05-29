# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Initial release of `supabase-rails` (formerly `supabase-server`)
- Rack middleware (`Supabase::Rails::Middleware`) and controller concern (`Supabase::Rails::Controller`)
- Per-request `SupabaseContext` with RLS-scoped client, admin client, and JWT-derived user claims
- Auth modes: `:user` (JWT), `:publishable`, `:secret`, `:none`, plus array syntax and named keys
- JWT verification with JWKS caching (inline JSON or remote URL)
- CORS handling with supabase-js-compatible defaults

[Unreleased]: https://github.com/supabase-ruby/supabase-rails/compare/HEAD...HEAD
