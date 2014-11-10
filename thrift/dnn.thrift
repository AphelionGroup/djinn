/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

namespace cpp2 facebook.windtunnel.treadmill.services.dnn

typedef i32 integer

struct Work {
  1: list<double> data,
  2: string op,
  3: integer n_in,
  4: integer c_in,
  5: integer w_in,
  6: integer h_in
}

struct ServerResult {
  1: list<double> data,
  2: integer time_ms
}

struct AppResult {
  1:integer app_time,
  2:integer comm_time,
  3:integer fwd_time,
  4:integer comm_data_size
}

service Dnn {
  ServerResult fwd(1:Work input)
}

service App {
  AppResult asr(),
  AppResult imc(),
  AppResult dig(),
  AppResult face(),
  AppResult pos(),
  AppResult ner(),
  AppResult chk(),
  AppResult srl(),
}
