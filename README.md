# Wesley Family Prayer Board

A small family prayer board for Wesley family prayer time. Cloned from
[Boys-prayer-board](https://github.com/samsanwes/Boys-prayer-board), which was
itself cloned from
[big-family-prayer-board](https://github.com/samsanwes/big-family-prayer-board).

- `index.html` — add a request, open / copy this week's prayer list.
- `manage.html` — reorder, edit, mark answered, remove, back up (no passcode).
- `board.js` — shared code for both pages.
- `supabase/wesleys_prayer_board_wp.sql` — run once in the Supabase SQL
  editor. Creates the `prayers_wp` table with open read/write rules.

No build step. Deployed on Vercel as a static site.
