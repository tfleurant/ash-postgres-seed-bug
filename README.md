# Example

An example app for a bug with Ash.Seed and ash_postgresql 1.3.25

## Reproduction

```bash
docker compose up -d
mix ash_postgres.create
mix ash_postgres.migrate
mix run priv/repo/seeds.exs
```

It was working in 1.3.24