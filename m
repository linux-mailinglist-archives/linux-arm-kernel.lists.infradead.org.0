Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FC31EBE36
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBifUw6T0xEeuZlZUeXHC+fR5sQvXVQjqNsOVk/nMoQ=; b=dtd0dqPTADt0UT
	T10xDtA+IDZOkzxixRzFrd67CCPKH4s4l4qKHkhii3z3fTQDcZE221x2NOg6/J4TOCpjQjEd8/0rh
	DSrDXYBMnAOniOicZV68FbgvNbjbN10CFcw6HNVyz7D0UO0m6waVcNHMLYcz1TVeurVzYM676CONg
	28y20oN7sFgIssEHXGcURjVMk96L4enB6GHS8JjwZxfqyi4u30u5Ru7+9NudLkbca+7MMKUIzwt9b
	+dekXjKNZOONTGvILn5ZyQDmEM3Zde+KzqUI3Cj7DDEDBnaQqLzXSWQSwTk3RTTbG3rYeUQ5j8DLL
	PEIup6BXuRRTUEsGlJTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7zT-0003Oa-2G; Tue, 02 Jun 2020 14:34:07 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7x4-00019j-2d; Tue, 02 Jun 2020 14:31:40 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1F2AFC0002;
 Tue,  2 Jun 2020 14:31:34 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v9 5/9] mtd: nand: Convert generic NAND bits to use the ECC
 framework
Date: Tue,  2 Jun 2020 16:31:20 +0200
Message-Id: <20200602143124.29553-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200602143124.29553-1-miquel.raynal@bootlin.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_073138_404137_678C376D 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Su <juliensu@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Embed a generic NAND ECC high-level object in the nand_device
structure to carry all the ECC engine configuration/data.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c |  4 +++-
 include/linux/mtd/nand.h         | 12 ++++++------
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index e8e22d79f422..ed0f642be993 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5984,7 +5984,9 @@ static int nand_scan_tail(struct nand_chip *chip)
 	/* ECC sanity check: warn if it's too weak */
 	if (!nand_ecc_strength_good(chip))
 		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
-			mtd->name, chip->ecc.strength, chip->ecc.size,
+			mtd->name,
+			nanddev_get_ecc_conf(&chip->base)->strength,
+			nanddev_get_ecc_conf(&chip->base)->step_size,
 			nanddev_get_ecc_requirements(&chip->base)->strength,
 			nanddev_get_ecc_requirements(&chip->base)->step_size);
 
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 0b89da54bef2..668c99c4aaa7 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -290,7 +290,7 @@ struct nand_ecc {
  * struct nand_device - NAND device
  * @mtd: MTD instance attached to the NAND device
  * @memorg: memory layout
- * @eccreq: ECC requirements
+ * @ecc: NAND ECC object attached to the NAND device
  * @rowconv: position to row address converter
  * @bbt: bad block table info
  * @ops: NAND operations attached to the NAND device
@@ -298,8 +298,8 @@ struct nand_ecc {
  * Generic NAND object. Specialized NAND layers (raw NAND, SPI NAND, OneNAND)
  * should declare their own NAND object embedding a nand_device struct (that's
  * how inheritance is done).
- * struct_nand_device->memorg and struct_nand_device->eccreq should be filled
- * at device detection time to reflect the NAND device
+ * struct_nand_device->memorg and struct_nand_device->ecc.requirements should
+ * be filled at device detection time to reflect the NAND device
  * capabilities/requirements. Once this is done nanddev_init() can be called.
  * It will take care of converting NAND information into MTD ones, which means
  * the specialized NAND layers should never manually tweak
@@ -308,7 +308,7 @@ struct nand_ecc {
 struct nand_device {
 	struct mtd_info mtd;
 	struct nand_memory_organization memorg;
-	struct nand_ecc_props eccreq;
+	struct nand_ecc ecc;
 	struct nand_row_converter rowconv;
 	struct nand_bbt bbt;
 	const struct nand_ops *ops;
@@ -519,7 +519,7 @@ nanddev_get_memorg(struct nand_device *nand)
 static inline const struct nand_ecc_props *
 nanddev_get_ecc_conf(struct nand_device *nand)
 {
-	return &nand->eccreq;
+	return &nand->ecc.ctx.conf;
 }
 
 /**
@@ -530,7 +530,7 @@ nanddev_get_ecc_conf(struct nand_device *nand)
 static inline const struct nand_ecc_props *
 nanddev_get_ecc_requirements(struct nand_device *nand)
 {
-	return &nand->eccreq;
+	return &nand->ecc.requirements;
 }
 
 int nanddev_init(struct nand_device *nand, const struct nand_ops *ops,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
