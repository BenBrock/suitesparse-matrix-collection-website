# frozen_string_literal: true

# Be sure to restart your server when you modify this file.
#
# This file contains migration options to ease your Rails 5.0 upgrade.
#
# Once upgraded flip defaults one by one to migrate to the new default.
#
# Read the Rails 5.0 release notes for more info on each option.
#
# Two of the original four opt-outs have been dropped now that the app runs
# with `config.load_defaults 8.1`:
#
#   * `ActiveSupport.to_time_preserves_timezone = false` had to go: Rails 8.1
#     deprecates the setting and 8.2 removes it. Nothing in this app calls
#     `to_time`, so the framework default applies with no behaviour change.
#   * `active_record.belongs_to_required_by_default = false` was dropped as
#     dead weight; no model declares a `belongs_to`.
#
# The two below are still opt-outs on purpose. Both change how real requests
# to `POST /submit` are validated, and controller specs bypass forgery
# protection, so the suite cannot prove the change is safe. Enabling them is
# worthwhile (they have been the Rails default since 5.0 and are the stronger
# setting) but it deserves its own change, verified against the deployed app.

# Enable per-form CSRF tokens. Previous versions had false.
Rails.application.config.action_controller.per_form_csrf_tokens = false

# Enable origin-checking CSRF mitigation. Previous versions had false.
Rails.application.config.action_controller.forgery_protection_origin_check = false
