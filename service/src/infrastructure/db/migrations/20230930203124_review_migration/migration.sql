-- CreateTable
CREATE TABLE "reviews" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "textId" INTEGER NOT NULL,
    "rating" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_ProductToreviews" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,
    CONSTRAINT "_ProductToreviews_A_fkey" FOREIGN KEY ("A") REFERENCES "Product" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "_ProductToreviews_B_fkey" FOREIGN KEY ("B") REFERENCES "reviews" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "_ProductToreviews_AB_unique" ON "_ProductToreviews"("A", "B");

-- CreateIndex
CREATE INDEX "_ProductToreviews_B_index" ON "_ProductToreviews"("B");
