# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_15_040408) do

  create_table "bonus_allowances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "allowance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "child_allowances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.integer "age_im"
    t.integer "age_max"
    t.integer "allowance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_child_allowances_on_group_id"
  end

  create_table "cooperative_fees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "worker_id", null: false
    t.integer "installment"
    t.integer "gross"
    t.text "detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["worker_id"], name: "index_cooperative_fees_on_worker_id"
  end

  create_table "cooperative_payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "worker_id", null: false
    t.integer "amount"
    t.datetime "date_paid"
    t.datetime "date_due"
    t.string "recipient"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["worker_id"], name: "index_cooperative_payments_on_worker_id"
  end

  create_table "expert_salaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "expert_id", null: false
    t.integer "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["expert_id"], name: "index_expert_salaries_on_expert_id"
  end

  create_table "group_salaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.integer "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_group_salaries_on_group_id"
  end

  create_table "groups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insurance_fees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "worker_id", null: false
    t.integer "installment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["worker_id"], name: "index_insurance_fees_on_worker_id"
  end

  create_table "insurance_payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "worker_id", null: false
    t.integer "amount"
    t.datetime "date_paid"
    t.datetime "date_due"
    t.string "recipient"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["worker_id"], name: "index_insurance_payments_on_worker_id"
  end

  create_table "operational_allowances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.integer "food"
    t.integer "transport"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_operational_allowances_on_group_id"
  end

  create_table "overtime_allowances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.integer "index"
    t.integer "allowance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_overtime_allowances_on_group_id"
  end

  create_table "overtime_works", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "worker_id", null: false
    t.date "date"
    t.datetime "time_in"
    t.datetime "time_out"
    t.integer "index"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["worker_id"], name: "index_overtime_works_on_worker_id"
  end

  create_table "presences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "worker_id", null: false
    t.date "date"
    t.datetime "time_in"
    t.datetime "time_out"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["worker_id"], name: "index_presences_on_worker_id"
  end

  create_table "project_bonuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.integer "amount"
    t.datetime "paid_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_bonuses_on_project_id"
  end

  create_table "project_workers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "supervisor_id", null: false
    t.bigint "worker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_workers_on_project_id"
    t.index ["supervisor_id"], name: "index_project_workers_on_supervisor_id"
    t.index ["worker_id"], name: "index_project_workers_on_worker_id"
  end

  create_table "projects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "detail"
    t.datetime "date_start"
    t.datetime "date_end"
    t.decimal "latitiude", precision: 32, scale: 16
    t.decimal "longitude", precision: 32, scale: 16
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "role_allowances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.integer "allowance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_role_allowances_on_role_id"
  end

  create_table "role_salaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.integer "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_role_salaries_on_role_id"
  end

  create_table "role_workers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "worker_id", null: false
    t.bigint "role_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_role_workers_on_group_id"
    t.index ["role_id"], name: "index_role_workers_on_role_id"
    t.index ["worker_id"], name: "index_role_workers_on_worker_id"
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spouse_allowances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "group_id", null: false
    t.integer "allowance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_spouse_allowances_on_group_id"
  end

  create_table "staff_children", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "worker_id", null: false
    t.string "name"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["worker_id"], name: "index_staff_children_on_worker_id"
  end

  create_table "staff_salary_payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "staff_id", null: false
    t.integer "amount"
    t.datetime "date_paid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["staff_id"], name: "index_staff_salary_payments_on_staff_id"
  end

  create_table "workers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "child_allowances", "groups"
  add_foreign_key "cooperative_fees", "workers"
  add_foreign_key "cooperative_payments", "workers"
  add_foreign_key "expert_salaries", "workers", column: "expert_id"
  add_foreign_key "group_salaries", "groups"
  add_foreign_key "insurance_fees", "workers"
  add_foreign_key "insurance_payments", "workers"
  add_foreign_key "operational_allowances", "groups"
  add_foreign_key "overtime_allowances", "groups"
  add_foreign_key "overtime_works", "workers"
  add_foreign_key "presences", "workers"
  add_foreign_key "project_bonuses", "projects"
  add_foreign_key "project_workers", "projects"
  add_foreign_key "project_workers", "workers"
  add_foreign_key "project_workers", "workers", column: "supervisor_id"
  add_foreign_key "role_allowances", "roles"
  add_foreign_key "role_salaries", "roles"
  add_foreign_key "role_workers", "groups"
  add_foreign_key "role_workers", "roles"
  add_foreign_key "role_workers", "workers"
  add_foreign_key "spouse_allowances", "groups"
  add_foreign_key "staff_children", "workers"
  add_foreign_key "staff_salary_payments", "workers", column: "staff_id"
end
