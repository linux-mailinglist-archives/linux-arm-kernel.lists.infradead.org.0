Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F271ED5D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sYsiwFymCd/fpgZ8YIB1k4N0Mqi0PiUufWnbbBw4Q1M=; b=XdNaw3QO1FUM5V
	/PqluV/2ir5po97GlG2K3fVhg0REaWTSOxwjIpx1oOE+iDxnf65t/iPp66+4UpFFYyX0WRPhsNZAC
	CBwsvxeq+pDj6GG7VYzaSu0BJBxG0Yw1+vQ34D+HjMmBQDC46lNXMADy5OvNlqYhPORKW4heHusHp
	qVnyXAjjlcxnGEuHKvUTcOW+seSDXq/UoliALjVklqM1HxLj3vIHW2EON/VtL60lSkw48MfyIBqKB
	rdKJaRN60aJ8j5EzJgxqzlGC8nUhTuqSfjCe1q3h/1HH+JSRo0uXMlMobqjnTzo1Txhjp/vuG+8Hs
	MKDcJi20jNROQbVQ0LMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXph-000252-1f; Wed, 03 Jun 2020 18:09:45 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXey-0005Sx-JR; Wed, 03 Jun 2020 17:58:46 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 57D8C240005;
 Wed,  3 Jun 2020 17:58:37 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v10 18/20] mtd: rawnand: Use the ECC framework
 nand_ecc_is_strong_enough() helper
Date: Wed,  3 Jun 2020 19:57:57 +0200
Message-Id: <20200603175759.19948-19-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603175759.19948-1-miquel.raynal@bootlin.com>
References: <20200603175759.19948-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_105840_791616_41C45354 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Julien Su <juliensu@mxic.com.tw>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Plus, the new helper has a more "english" name.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 39 +-------------------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index d3e1fc944179..c69d60f791d0 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5471,43 +5471,6 @@ int nand_ecc_choose_conf(struct nand_chip *chip,
 }
 EXPORT_SYMBOL_GPL(nand_ecc_choose_conf);
 
-/*
- * Check if the chip configuration meet the datasheet requirements.
-
- * If our configuration corrects A bits per B bytes and the minimum
- * required correction level is X bits per Y bytes, then we must ensure
- * both of the following are true:
- *
- * (1) A / B >= X / Y
- * (2) A >= X
- *
- * Requirement (1) ensures we can correct for the required bitflip density.
- * Requirement (2) ensures we can correct even when all bitflips are clumped
- * in the same sector.
- */
-static bool nand_ecc_strength_good(struct nand_chip *chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct nand_ecc_ctrl *ecc = &chip->ecc;
-	const struct nand_ecc_props *requirements =
-		nanddev_get_ecc_requirements(&chip->base);
-	int corr, ds_corr;
-
-	if (ecc->size == 0 || requirements->step_size == 0)
-		/* Not enough information */
-		return true;
-
-	/*
-	 * We get the number of corrected bits per page to compare
-	 * the correction density.
-	 */
-	corr = (mtd->writesize * ecc->strength) / ecc->size;
-	ds_corr = (mtd->writesize * requirements->strength) /
-		  requirements->step_size;
-
-	return corr >= ds_corr && ecc->strength >= requirements->strength;
-}
-
 static int rawnand_erase(struct nand_device *nand, const struct nand_pos *pos)
 {
 	struct nand_chip *chip = container_of(nand, struct nand_chip,
@@ -5790,7 +5753,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 	mtd->oobavail = ret;
 
 	/* ECC sanity check: warn if it's too weak */
-	if (!nand_ecc_strength_good(chip))
+	if (!nand_ecc_is_strong_enough(&chip->base))
 		pr_warn("WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\n",
 			mtd->name, chip->ecc.strength, chip->ecc.size,
 			nanddev_get_ecc_requirements(&chip->base)->strength,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
