-- =====================================================================
-- Wesley's Prayer Board — Supabase schema
--
-- Run this ONCE in the SQL editor of project irujnmfbefjpztovqwjx.
-- It creates one new table, prayers_wp, and nothing else. It does not
-- touch `prayers` (family board) or `prayers_ws` (Boys board).
--
-- There is no passcode on this board: it is for a small family group,
-- so anyone with the link can add, edit, mark answered and remove.
-- =====================================================================

create table if not exists public.prayers_wp (
  id            uuid primary key default gen_random_uuid(),
  name          text not null,
  text          text not null,
  category      text not null default 'Personal',
  added_by      text,
  answered      boolean not null default false,
  answered_date timestamptz,
  edited        timestamptz,
  created_at    timestamptz not null default now(),
  sort_order    double precision not null default extract(epoch from now())
);

alter table public.prayers_wp enable row level security;

drop policy if exists "prayers_wp public select" on public.prayers_wp;
create policy "prayers_wp public select"
  on public.prayers_wp for select to anon, authenticated using (true);

drop policy if exists "prayers_wp public insert" on public.prayers_wp;
create policy "prayers_wp public insert"
  on public.prayers_wp for insert to anon, authenticated
  with check (length(name) between 1 and 200 and length(text) between 1 and 2000);

drop policy if exists "prayers_wp public update" on public.prayers_wp;
create policy "prayers_wp public update"
  on public.prayers_wp for update to anon, authenticated
  using (true)
  with check (length(name) between 1 and 200 and length(text) between 1 and 2000);

drop policy if exists "prayers_wp public delete" on public.prayers_wp;
create policy "prayers_wp public delete"
  on public.prayers_wp for delete to anon, authenticated using (true);

grant select, insert, update, delete on public.prayers_wp to anon, authenticated;
