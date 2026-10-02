-- Lift Vault cloud state
-- Run this in Supabase SQL Editor in the SAME project you use for Idea Vault.

create table if not exists public.lift_vault_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  exercises jsonb not null default '[]'::jsonb,
  workouts jsonb not null default '[]'::jsonb,
  tracked jsonb not null default '[]'::jsonb,
  templates jsonb not null default '[]'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.lift_vault_state enable row level security;

drop policy if exists "lift vault select own" on public.lift_vault_state;
drop policy if exists "lift vault insert own" on public.lift_vault_state;
drop policy if exists "lift vault update own" on public.lift_vault_state;
drop policy if exists "lift vault delete own" on public.lift_vault_state;

create policy "lift vault select own"
on public.lift_vault_state
for select
to authenticated
using (auth.uid() is not null and auth.uid() = user_id);

create policy "lift vault insert own"
on public.lift_vault_state
for insert
to authenticated
with check (auth.uid() is not null and auth.uid() = user_id);

create policy "lift vault update own"
on public.lift_vault_state
for update
to authenticated
using (auth.uid() is not null and auth.uid() = user_id)
with check (auth.uid() is not null and auth.uid() = user_id);

create policy "lift vault delete own"
on public.lift_vault_state
for delete
to authenticated
using (auth.uid() is not null and auth.uid() = user_id);

grant select, insert, update, delete
on table public.lift_vault_state
to authenticated;
