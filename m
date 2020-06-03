Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8611ED5C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 20:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRm3UmtJ0d5IDixw8tVgesEBnm8yy9/SLPbBGgfvymE=; b=VdEyE9J91T8JDt
	pLWWVmbLSvr1xHI2PLFjwV7v6SC8c+KoGZX6l8dCkJ/9Qtxq+nLNmGlc7FIUr2TIi0Lfnrbwcedl/
	M89zPogVUpWifkkJcfXuI5bFFSNjeQQYvUf2Wp/EyeAm26QyVXoL2Hq08pXeLh1cuC/4MFFOa11Yh
	0T+mYcbdolKPo3VRR9sAsHnuTTQNaRblP2jijDBlgr6V8lkl2/TFDa0uEAFi1iTBH9MCUgZ9cpLo7
	AcxUVA8WsUzZ/NS9HSyJ/rpdzq4zDFsOdmAT3OkN1CMpdLxF12Hd2p2EYDLTEJ2o4wJf4tFk50NmR
	OXWH8fqs3JryPvVSA65g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXly-0007TH-OU; Wed, 03 Jun 2020 18:05:54 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXeo-0005LW-M1; Wed, 03 Jun 2020 17:58:32 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 6CFAE240007;
 Wed,  3 Jun 2020 17:58:26 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v10 12/20] mtd: spinand: Use nanddev_get_ecc_conf() when
 relevant
Date: Wed,  3 Jun 2020 19:57:51 +0200
Message-Id: <20200603175759.19948-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603175759.19948-1-miquel.raynal@bootlin.com>
References: <20200603175759.19948-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_105830_876588_6D4A56BD 
X-CRM114-Status: GOOD (  11.88  )
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

Instead of accessing ->strength/step_size directly.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/spi/core.c     | 6 +++---
 drivers/mtd/nand/spi/macronix.c | 7 ++++---
 drivers/mtd/nand/spi/toshiba.c  | 6 +++---
 3 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 6f6ec8aa143d..56019de28a90 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -419,7 +419,7 @@ static int spinand_check_ecc_status(struct spinand_device *spinand, u8 status)
 		 * fixed, so let's return the maximum possible value so that
 		 * wear-leveling layers move the data immediately.
 		 */
-		return nand->eccreq.strength;
+		return nanddev_get_ecc_conf(nand)->strength;
 
 	case STATUS_ECC_UNCOR_ERROR:
 		return -EBADMSG;
@@ -1091,8 +1091,8 @@ static int spinand_init(struct spinand_device *spinand)
 	mtd->oobavail = ret;
 
 	/* Propagate ECC information to mtd_info */
-	mtd->ecc_strength = nand->eccreq.strength;
-	mtd->ecc_step_size = nand->eccreq.step_size;
+	mtd->ecc_strength = nanddev_get_ecc_conf(nand)->strength;
+	mtd->ecc_step_size = nanddev_get_ecc_conf(nand)->step_size;
 
 	return 0;
 
diff --git a/drivers/mtd/nand/spi/macronix.c b/drivers/mtd/nand/spi/macronix.c
index 0f900f3aa21a..9ff8debd5994 100644
--- a/drivers/mtd/nand/spi/macronix.c
+++ b/drivers/mtd/nand/spi/macronix.c
@@ -84,10 +84,11 @@ static int mx35lf1ge4ab_ecc_get_status(struct spinand_device *spinand,
 		 * data around if it's not necessary.
 		 */
 		if (mx35lf1ge4ab_get_eccsr(spinand, &eccsr))
-			return nand->eccreq.strength;
+			return nanddev_get_ecc_conf(nand)->strength;
 
-		if (WARN_ON(eccsr > nand->eccreq.strength || !eccsr))
-			return nand->eccreq.strength;
+		if (WARN_ON(eccsr > nanddev_get_ecc_conf(nand)->strength ||
+			    !eccsr))
+			return nanddev_get_ecc_conf(nand)->strength;
 
 		return eccsr;
 
diff --git a/drivers/mtd/nand/spi/toshiba.c b/drivers/mtd/nand/spi/toshiba.c
index bc801d83343e..21fde2875674 100644
--- a/drivers/mtd/nand/spi/toshiba.c
+++ b/drivers/mtd/nand/spi/toshiba.c
@@ -90,12 +90,12 @@ static int tx58cxgxsxraix_ecc_get_status(struct spinand_device *spinand,
 		 * data around if it's not necessary.
 		 */
 		if (spi_mem_exec_op(spinand->spimem, &op))
-			return nand->eccreq.strength;
+			return nanddev_get_ecc_conf(nand)->strength;
 
 		mbf >>= 4;
 
-		if (WARN_ON(mbf > nand->eccreq.strength || !mbf))
-			return nand->eccreq.strength;
+		if (WARN_ON(mbf > nanddev_get_ecc_conf(nand)->strength || !mbf))
+			return nanddev_get_ecc_conf(nand)->strength;
 
 		return mbf;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
