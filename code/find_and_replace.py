from talon import Context, actions, ui, Module, app
from typing import Union

is_mac = app.platform == "mac"

ctx = Context()
mod = Module()
mod.tag("find_and_replace", desc="Tag for enabling generic find and replace commands")

@mod.action_class
class Actions:
    def find(text: str):
        """Finds text in current editor"""

    def find_next():
        """Navigates to the next occurrence"""

    def find_previous():
        """Navigates to the previous occurrence"""

    def find_everywhere(text: str):
        """Finds text across project"""

    def find_toggle_match_by_case():
        """Toggles find match by case sensitivity"""

    def find_toggle_match_by_word():
        """Toggles find match by whole words"""

    def find_toggle_match_by_regex():
        """Toggles find match by regex"""

    def replace(text: str):
        """Search and replace for text in the active editor"""

    def replace_everywhere(text: str):
        """Search and replaces for text in the entire project"""

    def replace_confirm():
        """Confirm replace at current position"""

    def replace_confirm_all():
        """Confirm replace all"""

    def select_previous_occurrence(text: str):
        """Selects the previous occurrence of the text, and suppresses any find/replace dialogs."""

    def select_next_occurrence(text: str):
        """Selects the next occurrence of the text, and suppresses any find/replace dialogs."""
    
    def select_next_token():
        """???"""

@ctx.action_class("user")
class user_actions:
    def find(text: str):
        """Triggers find in current editor"""
        if is_mac:
            actions.key("cmd-f")
        else:
            actions.key("ctrl-f")
        print("wtf")

        if text:
            actions.insert(text)

    def select_previous_occurrence(text: str):
        actions.user.find(text)
        actions.sleep("150ms")
        actions.key("shift-enter esc")

    def select_next_occurrence(text: str):
        actions.user.find(text)
        actions.sleep("150ms")
        actions.key("esc")

    def select_next_token():
        actions.edit.find("")
        actions.key("enter")
        actions.key("enter")
        actions.key("esc")