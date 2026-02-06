/*
  Warnings:

  - You are about to drop the `Bid` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `JOB` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_AttachmentToJOB` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `educations` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `hires` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `portfolios` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `skills` table. If the table is not empty, all the data it contains will be lost.

*/
-- AlterEnum
ALTER TYPE "UserType" ADD VALUE 'MAID';

-- DropForeignKey
ALTER TABLE "Bid" DROP CONSTRAINT "Bid_jobId_fkey";

-- DropForeignKey
ALTER TABLE "Bid" DROP CONSTRAINT "Bid_user_id_fkey";

-- DropForeignKey
ALTER TABLE "JOB" DROP CONSTRAINT "JOB_user_id_fkey";

-- DropForeignKey
ALTER TABLE "_AttachmentToJOB" DROP CONSTRAINT "_AttachmentToJOB_A_fkey";

-- DropForeignKey
ALTER TABLE "_AttachmentToJOB" DROP CONSTRAINT "_AttachmentToJOB_B_fkey";

-- DropForeignKey
ALTER TABLE "attachments" DROP CONSTRAINT "attachments_hire_id_fkey";

-- DropForeignKey
ALTER TABLE "educations" DROP CONSTRAINT "educations_user_id_fkey";

-- DropForeignKey
ALTER TABLE "hires" DROP CONSTRAINT "hires_user_id_fkey";

-- DropForeignKey
ALTER TABLE "portfolios" DROP CONSTRAINT "portfolios_user_id_fkey";

-- DropForeignKey
ALTER TABLE "skills" DROP CONSTRAINT "skills_user_id_fkey";

-- DropTable
DROP TABLE "Bid";

-- DropTable
DROP TABLE "JOB";

-- DropTable
DROP TABLE "_AttachmentToJOB";

-- DropTable
DROP TABLE "educations";

-- DropTable
DROP TABLE "hires";

-- DropTable
DROP TABLE "portfolios";

-- DropTable
DROP TABLE "skills";

-- DropEnum
DROP TYPE "ContentLength";

-- DropEnum
DROP TYPE "JobCategory";

-- DropEnum
DROP TYPE "JobStatus";

-- DropEnum
DROP TYPE "Platform";

-- DropEnum
DROP TYPE "SoftwarePreference";

-- DropEnum
DROP TYPE "VideoCategory";
