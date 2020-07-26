/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

locals {
  business_code = "bu2"
}

module "example_single_project" {
  source = "../../modules/single_project"

  org_id                      = var.org_id
  billing_account             = var.billing_account
  impersonate_service_account = var.terraform_service_account
  environment                 = "nonprod"
  env_code                    = "n"
  skip_gcloud_download        = var.skip_gcloud_download

  folder_id = var.parent_folder

  # Metadata
  project_prefix    = "${local.business_code}-n-sample-single"
  application_name  = "${local.business_code}-sample-single"
  billing_code      = "1234"
  primary_contact   = "example@example.com"
  secondary_contact = "example2@example.com"
  business_code     = local.business_code
}
