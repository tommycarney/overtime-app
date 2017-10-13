# Overtime application

## key requirement
 company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:rationale
- x User -> Devise
- x AdminUser -> Single table inheritance
- Audit log

## Features
- Approval workflow
- SMS sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for Approval
- Needs to be documented if employee didn't log overtime
- needs to block non-admin and guest users

## UI
- X Bootstrap -. formatting

## Approval workflow
- Add status to post
- Status required
- Status to have default value
- Implement approval stages
- Locking

## todos
- Integrate validations for phone attr in user
