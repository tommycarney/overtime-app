# Overtime application

## key requirement
 company needs documentation that salaried employees did or did not get overtime each week

## Models
- Post -> date:date rationale:rationale
x User -> Devise
x AdminUser -> Single table inheritance

## Features
- Approval workflow
- SMS sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for Approval
- Needs to be documented if employee didn't log overtime

## UI
- Bootstrap -. formatting

## Refactors todos
- Refactor user association integration test in posts_spec
