Rake.application['generate:authorizations:seed'].invoke
Rake.application['generate:locations:seed'].invoke
Rake.application['generate:schools:seed'].invoke
Rake.application['generate:ministries:seed'].invoke
Rake.application['generate:users:super'].invoke if Rails.env.development?
