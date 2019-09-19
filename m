Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0756FB8183
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPJfISV1CbxBM3AIAfoH/QtZBV6IL+uFmHioT2DlnTo=; b=vB2D+mlRa5PC31
	ENNAZBNbS6Gi+94Sgudz0ofRspXYWTLzE8a2g5BQGVMsWmAluZmQhoCssBl9d3D7i8Xnn0Vo4ffyg
	waIaV+hZJTZjULvRCicbmeg73EnHlOf0Xdy/rmB49qwh1W+jn1IhB8peytbTgj6vPK5vYLfN/r6UL
	OmheOVgHdbQwGuzjvU2PFSyIwSwqyvsVftLpb2t+PQEGDH9FNjxpHzYsLXJ37bJMJKsn5GNE4ER+t
	hdT4KRouYDvexUk4MR9+xUZQQC6hwFYmBxqORVcwLE2cQbVFMJErQMH3oRUWE06/PncdrPyM89/xx
	4OdLhSUaiZL1y7cygP6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Gp-0006Dj-MS; Thu, 19 Sep 2019 19:39:15 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB29o-0001u7-6n; Thu, 19 Sep 2019 19:32:01 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 008C7240006;
 Thu, 19 Sep 2019 19:31:55 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 05/40] mtd: rawnand: Create a new enumeration to describe
 properly ECC types
Date: Thu, 19 Sep 2019 21:31:05 +0200
Message-Id: <20190919193141.7865-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123200_542663_FB718C5B 
X-CRM114-Status: GOOD (  10.89  )
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

Now that the misleading mix between ECC engine type and OOB placement
has been addressed, add a new enumeration to properly define ECC types
(also called provider or mode).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c |  7 +++++++
 include/linux/mtd/rawnand.h      | 16 ++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 9a05ebfc44d1..00a261284aad 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4842,6 +4842,13 @@ static const char * const nand_ecc_modes[] = {
 	[NAND_ECC_ON_DIE]	= "on-die",
 };
 
+static const char * const nand_ecc_engine_providers[] = {
+	[NAND_NO_ECC_ENGINE] = "none",
+	[NAND_SOFT_ECC_ENGINE] = "soft",
+	[NAND_HW_ECC_ENGINE] = "hw",
+	[NAND_ON_DIE_ECC_ENGINE] = "on-die",
+};
+
 static const char * const nand_ecc_engine_oob_placement[] = {
 	[NAND_ECC_SYNDROME_OOB_PLACEMENT] = "hw_syndrome",
 	[NAND_ECC_OOB_FIRST_PLACEMENT] = "hw_oob_first",
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 1b462fb2ab77..23feab162bc2 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -93,6 +93,22 @@ enum nand_ecc_mode {
 	NAND_ECC_ON_DIE,
 };
 
+/**
+ * enum nand_ecc_engine_type - NAND ECC engine type/provider
+ * @NAND_INVALID_ECC_ENGINE: Invalid value
+ * @NAND_NO_ECC_ENGINE: No ECC correction
+ * @NAND_SOFT_ECC_ENGINE: Software ECC correction
+ * @NAND_HW_ECC_ENGINE: Hardware (controller side) ECC correction
+ * @NAND_ON_DIE_ECC_ENGINE: Hardware (chip side) ECC correction
+ */
+enum nand_ecc_engine_type {
+	NAND_INVALID_ECC_ENGINE,
+	NAND_NO_ECC_ENGINE,
+	NAND_SOFT_ECC_ENGINE,
+	NAND_HW_ECC_ENGINE,
+	NAND_ON_DIE_ECC_ENGINE,
+};
+
 /**
  * enum nand_ecc_engine_oob_placement - NAND ECC engine OOB placement
  * @NAND_ECC_DEFAULT_OOB_PLACEMENT: Standard layout, or not specified
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
