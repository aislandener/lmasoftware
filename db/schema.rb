# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151028232048) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome",       limit: 30
    t.string   "cnpj",       limit: 15
    t.string   "endereco"
    t.string   "bairro",     limit: 30
    t.string   "cidade",     limit: 30
    t.string   "uf",         limit: 2
    t.string   "pais",       limit: 20
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "contas_pagars", force: :cascade do |t|
    t.string   "dataEmissao",   limit: 25
    t.float    "valor"
    t.string   "vencimento",    limit: 25
    t.float    "juros"
    t.float    "multa"
    t.integer  "Fornecedor_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "contas_pagars", ["Fornecedor_id"], name: "index_contas_pagars_on_Fornecedor_id"

  create_table "contas_recebers", force: :cascade do |t|
    t.string   "dataEmissao", limit: 25
    t.float    "valor"
    t.string   "vencimento",  limit: 25
    t.float    "juros"
    t.float    "multa"
    t.integer  "Cliente_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "contas_recebers", ["Cliente_id"], name: "index_contas_recebers_on_Cliente_id"

  create_table "fornecedors", force: :cascade do |t|
    t.string   "nome",       limit: 30
    t.string   "cnpj",       limit: 15
    t.string   "endereco"
    t.string   "bairro",     limit: 30
    t.string   "cidade",     limit: 30
    t.string   "uf",         limit: 2
    t.string   "pais",       limit: 20
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "telefone_clientes", force: :cascade do |t|
    t.integer  "ddd"
    t.string   "telefone",   limit: 9
    t.integer  "Cliente_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "telefone_clientes", ["Cliente_id"], name: "index_telefone_clientes_on_Cliente_id"

  create_table "telefone_fornecedors", force: :cascade do |t|
    t.integer  "ddd"
    t.string   "telefone",      limit: 9
    t.integer  "Fornecedor_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "telefone_fornecedors", ["Fornecedor_id"], name: "index_telefone_fornecedors_on_Fornecedor_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "primeiroNome"
    t.string   "sobrenome"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "usuarios_roles", id: false, force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "role_id"
  end

  add_index "usuarios_roles", ["usuario_id", "role_id"], name: "index_usuarios_roles_on_usuario_id_and_role_id"

end
