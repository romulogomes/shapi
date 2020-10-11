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

ActiveRecord::Schema.define(version: 2020_10_11_201804) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empregados", force: :cascade do |t|
    t.string "nome"
    t.string "data_de_nascimento"
    t.string "cpf"
    t.string "banco"
    t.string "agencia"
    t.string "conta"
    t.string "senha"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "salario", precision: 20, scale: 2
    t.bigint "empresa_id"
    t.index ["empresa_id"], name: "index_empregados_on_empresa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "nome"
    t.decimal "taxa", precision: 20, scale: 2
    t.boolean "ativa", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "solicitacoes", force: :cascade do |t|
    t.bigint "empregado_id", null: false
    t.decimal "valor"
    t.string "data_da_solicitacao"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "mes_ano"
    t.bigint "empresa_id"
    t.decimal "taxa", precision: 20, scale: 2
    t.index ["empregado_id"], name: "index_solicitacoes_on_empregado_id"
    t.index ["empresa_id"], name: "index_solicitacoes_on_empresa_id"
  end

  add_foreign_key "empregados", "empresas"
  add_foreign_key "solicitacoes", "empregados"
  add_foreign_key "solicitacoes", "empresas"
end
