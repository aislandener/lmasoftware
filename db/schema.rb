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

ActiveRecord::Schema.define(version: 20150923005746) do

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

end
