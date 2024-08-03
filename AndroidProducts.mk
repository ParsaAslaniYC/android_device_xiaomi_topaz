#
# Copyright 2024 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/droidx_topaz.mk \

COMMON_LUNCH_CHOICES := \
    droidx_topaz-trunk_staging-userdebug \
    droidx_topaz-trunk_staging-user \
    droidx_topaz-trunk_staging-eng \
    droidx_topaz-ap2a-userdebug \
    droidx_topaz-ap2a-user \
    droidx_topaz-ap2a-eng \
