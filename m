Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963E2B8190
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjlzMBNslipOlIkQCOSerL371k0QD1cztEOZySHjgFY=; b=Bh91pdwrxCyggt
	P/cTR5JNE3PgT4sfSITm85ooC5a6T6j2XYaAU2ReIC8DYltZFnCxgw4izJCn/3uYOUibh+DmiZebj
	s7RnC9L8rLKeaWgBj+WnyJe0UnogOOr4MU1PCt+KV+PdqXx50pVQxoVG/B7135Xc7e2i8nl5/PX8o
	7mUqBE1WUkImtqHGLZ/M8NLPJFCSiFamY/Jw8esu10gxrsw8uX7tU2ovlUrDgvc5myBQrw3rdL2yl
	xFx1I+e7/up0r/JsbTrqXsseRKWSOSEUmh0mLCvODuMZzvFbJ6+dMN7HvRulTtnMV7XVUP49np4sL
	olh6W7bf5peASGuT7TBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2IZ-0008Mu-Sr; Thu, 19 Sep 2019 19:41:04 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB29r-0001xU-NZ; Thu, 19 Sep 2019 19:32:07 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 4D79B240003;
 Thu, 19 Sep 2019 19:32:00 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 07/40] mtd: rawnand: Drop the legacy ECC type enumeration
Date: Thu, 19 Sep 2019 21:31:07 +0200
Message-Id: <20190919193141.7865-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123204_023388_5C0A3E9A 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all files have been migrated to use the new enumeration, drop
the old one which is unused.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c |  9 ---------
 include/linux/mtd/rawnand.h      | 13 -------------
 2 files changed, 22 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index ad0b892c2523..c313fe4fc16c 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4833,15 +4833,6 @@ static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
 	return ret;
 }
 
-static const char * const nand_ecc_modes[] = {
-	[NAND_ECC_NONE]		= "none",
-	[NAND_SOFT_ECC_ENGINE]		= "soft",
-	[NAND_ECC_HW]		= "hw",
-	[NAND_ECC_HW_SYNDROME]	= "hw_syndrome",
-	[NAND_ECC_HW_OOB_FIRST]	= "hw_oob_first",
-	[NAND_ECC_ON_DIE]	= "on-die",
-};
-
 static const char * const nand_ecc_engine_providers[] = {
 	[NAND_NO_ECC_ENGINE] = "none",
 	[NAND_SOFT_ECC_ENGINE] = "soft",
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 08964ce8b65f..6c9be596a2d1 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -80,19 +80,6 @@ struct nand_chip;
 
 #define NAND_DATA_IFACE_CHECK_ONLY	-1
 
-/*
- * Constants for ECC_MODES
- */
-enum nand_ecc_mode {
-	NAND_ECC_INVALID,
-	NAND_ECC_NONE,
-	NAND_ECC_SOFT,
-	NAND_ECC_HW,
-	NAND_ECC_HW_SYNDROME,
-	NAND_ECC_HW_OOB_FIRST,
-	NAND_ECC_ON_DIE,
-};
-
 /**
  * enum nand_ecc_engine_type - NAND ECC engine type/provider
  * @NAND_INVALID_ECC_ENGINE: Invalid value
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
