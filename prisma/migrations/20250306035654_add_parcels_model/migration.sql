-- CreateEnum
CREATE TYPE "ParcelStatus" AS ENUM ('PENDING', 'DELIVERED', 'CANCELLED');

-- CreateTable
CREATE TABLE "Parcels" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "weight" DOUBLE PRECISION NOT NULL,
    "status" "ParcelStatus" NOT NULL,
    "deliveryTime" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Parcels_pkey" PRIMARY KEY ("id")
);
