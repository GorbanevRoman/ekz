/*
  Warnings:

  - You are about to drop the `cosmetic` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "cosmetic";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "CostAccounting" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "department" TEXT NOT NULL,
    "nomenclature" TEXT NOT NULL,
    "date" DATETIME NOT NULL,
    "price" INTEGER NOT NULL,
    "type" TEXT NOT NULL
);
