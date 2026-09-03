# Wesley's Prayer Board

A small family prayer board for Wesley's prayer time. Cloned from
[Boys-prayer-board](https://github.com/samsanwes/Boys-prayer-board), which was
itself cloned from
[big-family-prayer-board](https://github.com/samsanwes/big-family-prayer-board).

- `index.html` — the whole site: add a request, manage the board (reorder,
  edit, mark answered, remove, backup) and open / copy the prayer list.
  There is no passcode and no admin page.
- `supabase/wesleys_prayer_board_wp.sql` — run once in the Supabase SQL
  editor. Creates the `prayers_wp` table with open read/write rules.

No build step. Deployed on Vercel as a static site.
