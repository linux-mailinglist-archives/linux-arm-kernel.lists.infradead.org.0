Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD95CB8175
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZtkPPgEAGFAFk9vZyPhcP+/D4W6RUnODZcAWFBzvdM=; b=oXd50CUvVXoB/9
	UHQGyO2c+aZkLwbvwphH2thwY1RjLZwUKYFj66pL04cLu4szLTztTzoO6Txgj187ukQgB7XHUcQM2
	S3tZdBYW5bQaFl2t09LM/KI9QIUUjufvA4IuvAMbU61GVVrWee0F9DYjutEI9YNfb6rZZY8Bszvgf
	KQLTD86UMDK9HCKYqcjOEwkieAKBG9UBQ3ExDEnQYb1ojcL9cB5pe5fk13431Nssnw/zGuvOzfNii
	MsiLoV9qtEiFHtR2HdtZ6CplCKFiZBb8dgeIQGjb6ZlLKGFsbcKsh2+EfcY/4Xq4QFMz+KBRNLpv9
	rHHQMGylVCE0ZhQsFSzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2DR-0003az-3T; Thu, 19 Sep 2019 19:35:45 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB29j-0001pq-Ds; Thu, 19 Sep 2019 19:31:56 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EEFDF240004;
 Thu, 19 Sep 2019 19:31:51 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 03/40] mtd: rawnand: Create a new enumeration to describe
 OOB placement
Date: Thu, 19 Sep 2019 21:31:03 +0200
Message-Id: <20190919193141.7865-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123155_646593_98B3F470 
X-CRM114-Status: GOOD (  11.02  )
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

There is currently a confusion between the ECC type/mode/provider
(eg. hardware, software, on-die or none) and the in-bad/out-of-band
layout which is only described for hardware engines (OOB first,
syndrome).

Create a new enumeration to describe this placement.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c |  5 +++++
 include/linux/mtd/rawnand.h      | 12 ++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index e6c483ec191a..74e9289e931c 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4842,6 +4842,11 @@ static const char * const nand_ecc_modes[] = {
 	[NAND_ECC_ON_DIE]	= "on-die",
 };
 
+static const char * const nand_ecc_engine_oob_placement[] = {
+	[NAND_ECC_SYNDROME_OOB_PLACEMENT] = "hw_syndrome",
+	[NAND_ECC_OOB_FIRST_PLACEMENT] = "hw_oob_first",
+};
+
 static int of_get_nand_ecc_mode(struct device_node *np)
 {
 	const char *pm;
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index ccdc0c314acc..89f964816f2c 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -93,6 +93,18 @@ enum nand_ecc_mode {
 	NAND_ECC_ON_DIE,
 };
 
+/**
+ * enum nand_ecc_engine_oob_placement - NAND ECC engine OOB placement
+ * @NAND_ECC_DEFAULT_OOB_PLACEMENT: Standard layout, or not specified
+ * @NAND_ECC_SYNDROME_OOB_PLACEMENT: Syndrome layout (interlaced)
+ * @NAND_ECC_OOB_FIRST_PLACEMENT: Free OOB bytes first
+ */
+enum nand_ecc_engine_oob_placement {
+	NAND_ECC_DEFAULT_OOB_PLACEMENT,
+	NAND_ECC_SYNDROME_OOB_PLACEMENT,
+	NAND_ECC_OOB_FIRST_PLACEMENT,
+};
+
 enum nand_ecc_algo {
 	NAND_ECC_UNKNOWN,
 	NAND_ECC_HAMMING,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
