Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B001D37F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1VQ8iSY1kFOgQmArfoRen29uNKVcWCXENXGK6Dx2jE=; b=YrjwZve3sejmmU
	XPTitERuYXHfu/23GBgTVehblP5BnW0BvaYWwc4AatJjWsEDE9wDacx/N2oPJrK0QdJ/aJlbiZY4t
	iOjv/zxbP2P8OTQuGQ+Iva+G2HgBjklsbM2mIHeEttRL02OQ+gQNl8ztHgRFsc8B0n2kTzcedStuS
	/caARaZshoKZ+Ahxm2rhTlKTElsXb0U3KOn8r4BAVNZQz24uqru7DGMbM0YdqLzViYwpIDkKczmIy
	jeAyN21W6/JXa799pgddZCWgpLI5Pygrvpz3Mg8IHPtkRVruAbB5jZNgljlC8JU4+ulEcchvC/D9v
	YaXbdf1UmpPnWR2ELSVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHZw-0005LT-IJ; Thu, 14 May 2020 17:23:28 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHTx-0005Ax-3v; Thu, 14 May 2020 17:17:18 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id D4A05240003;
 Thu, 14 May 2020 17:17:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Subject: [PATCH v5 10/21] mtd: rawnand: Create a helper to retrieve the ECC
 placement
Date: Thu, 14 May 2020 19:16:40 +0200
Message-Id: <20200514171651.24851-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514171651.24851-1-miquel.raynal@bootlin.com>
References: <20200514171651.24851-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101717_289850_B83BFBD4 
X-CRM114-Status: GOOD (  10.61  )
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use it from nand_dt_init() to initialize the ECC structure.

This allows the deprecation of the hw_syndrome ECC mode.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 7e5a86fa38ee..f69a3336bc17 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5002,6 +5002,34 @@ static int of_get_nand_ecc_mode(struct device_node *np)
 	return -ENODEV;
 }
 
+enum nand_ecc_placement of_get_nand_ecc_placement(struct device_node *np)
+{
+	enum nand_ecc_placement placement;
+	const char *pm;
+	int err;
+
+	err = of_property_read_string(np, "nand-ecc-placement", &pm);
+	if (!err) {
+		for (placement = NAND_ECC_PLACEMENT_INTERLEAVED;
+		     placement < ARRAY_SIZE(nand_ecc_placement); placement++) {
+			if (!strcasecmp(pm, nand_ecc_placement[placement]))
+				return placement;
+		}
+	}
+
+	/*
+	 * For backward compatibility we support few obsoleted values that don't
+	 * have their mappings into the nand_ecc_placement enum anymore.
+	 */
+	err = of_property_read_string(np, "nand-ecc-mode", &pm);
+	if (!err) {
+		if (!strcasecmp(pm, "hw_syndrome"))
+			return NAND_ECC_PLACEMENT_INTERLEAVED;
+	}
+
+	return NAND_ECC_PLACEMENT_FREE;
+}
+
 static const char * const nand_ecc_algos[] = {
 	[NAND_ECC_HAMMING]	= "hamming",
 	[NAND_ECC_BCH]		= "bch",
@@ -5098,6 +5126,7 @@ static int nand_dt_init(struct nand_chip *chip)
 
 	ecc_mode = of_get_nand_ecc_mode(dn);
 	ecc_algo = of_get_nand_ecc_algo(dn);
+	chip->ecc.placement = of_get_nand_ecc_placement(dn);
 	ecc_strength = of_get_nand_ecc_strength(dn);
 	ecc_step = of_get_nand_ecc_step_size(dn);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
