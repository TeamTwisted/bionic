/*
 * Copyright 2015, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <private/bionic_asm.h>

ENTRY(fabsf)
   vmov    s15, r0
   vabs.f32        s0, s15
   vmov    r0, s0
   bx      lr
END(fabsf)

ENTRY(fabs)
   vmov    d16, r0, r1
   vabs.f64        d0, d16
   vmov    r0, r1, d0
   bx      lr
END(fabs)
