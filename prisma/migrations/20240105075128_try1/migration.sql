-- CreateTable
CREATE TABLE "cosmetic" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "department" TEXT NOT NULL,
    "nomenclature" TEXT NOT NULL,
    "date" DATETIME NOT NULL,
    "price" INTEGER NOT NULL,
    "type" TEXT NOT NULL
);
