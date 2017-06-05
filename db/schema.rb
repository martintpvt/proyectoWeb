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

ActiveRecord::Schema.define(version: 20170416234459) do

  create_table "applies", primary_key: ["Id_Entidad", "Id_Impuesto"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "Id_Entidad",  null: false
    t.integer  "Id_Impuesto", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "bills", primary_key: "Id_Factura", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "Id_Entidad",                 null: false
    t.integer  "Id_Cliente",                 null: false
    t.string   "NumeroFactura",              null: false
    t.date     "FechaEmision",               null: false
    t.boolean  "EmitidaRecibida",            null: false
    t.boolean  "IncluyeIva",                 null: false
    t.float    "Descuento",       limit: 24, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "details", primary_key: "Id_Detalle", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "Id_Factura",               null: false
    t.string   "Descripcion",              null: false
    t.float    "ValorUnitario", limit: 24, null: false
    t.integer  "Cantidad",                 null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "entities", primary_key: "Id_Entidad", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "Id_Usuario",     null: false
    t.string   "Identificacion", null: false
    t.string   "Nombre",         null: false
    t.string   "Telefono",       null: false
    t.string   "Direccion",      null: false
    t.string   "Email",          null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "retains", primary_key: ["Id_Factura", "Id_Retencion"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "Id_Factura",                     null: false
    t.integer  "Id_Retencion",                   null: false
    t.float    "PorcentajeRetencion", limit: 24, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "retentions", primary_key: "Id_Retencion", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "NumeroRetencion", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "taxes", primary_key: "Id_Impuesto", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "NombreImpuesto",                null: false
    t.float    "PorcentajeImpuesto", limit: 24, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.string   "lastname"
    t.string   "username"
  end

end
