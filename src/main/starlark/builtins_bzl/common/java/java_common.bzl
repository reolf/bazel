# Copyright 2023 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

""" Utilities for Java compilation support in Starlark. """

_java_common_internal = _builtins.internal.java_common_internal_do_not_use

def target_kind(target, dereference_aliases = False):
    """ Get the rule class string for a target

    Args:
        target: (Target)
        dereference_aliases: (bool) resolve the actual target rule class if an
            alias

    Returns:
        (str) The rule class string of the target
    """
    return _java_common_internal.target_kind(
        target,
        dereference_aliases = dereference_aliases,
    )

def get_build_info(ctx, is_stamping_enabled):
    """ Get the artifacts representing the workspace status for this build

    Args:
        ctx: (RuleContext) The rule context
        is_stamping_enabled: (bool) If stamping is enabled

    Returns
        ([File]) The build info artifacts
    """
    return _java_common_internal.get_build_info(ctx, is_stamping_enabled)

java_common = _java_common_internal
