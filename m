Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DBF606F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cHMpsyGRsRjvAMrX26QwygvtiCl8HLUkVzMbqaexpio=; b=ff2m0odTPj4Uxc
	6IUiCbILha6R4agNE3Ldl8bnPcITKkyYTTUyzqcO+PgNcVa/cHsGz4EsCi7FZR1hDI1kipQte1bGG
	Z/Kj6t0mJMuno1RqTm6pa1itOhqF0+lhz7R+4V2h/q9fyiTrZ9nmnMq0qZnrP29YbCm5+RUP3ULVK
	uOtptfFVusR+258N6KMUL+SUt9f7RhC0q+Nc7RJSSUgdvCm4gAv741qMqhmKHT4XM9cBpuhmsKM54
	SaQHxyUALbeFBjb+Lr7FvnVa0a4iHzgo5z3N3SjubxctOl9KkKOVCTlWVRpsrm4NyViNmKyLBgQcn
	M7tR/Ux15LPbBq1aO4Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOha-0007gq-55; Fri, 05 Jul 2019 13:56:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLDP-0008O6-5y; Fri, 05 Jul 2019 10:13:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BtYJv8suANd8qcZZCxnAKllh5vnZYHnxPfnKbM451JI=; b=v+3/UuC9jS6HMT1F0ota3oCPQs
 7WMTS0l9S7cSNE5pXTWefp/8oKKVtW/ADgq+m6Xo9f31OvSQfaPeX9qOGVG2g7h2U9Q3c+bSQ4D3t
 EOkUf22ZnBb1iB7M0baSsa3Ru9XPqktAU+Gv+ANhXpIcxePlfdEFOjijXOBeENflGLtina7xqHXO6
 ll80o4AgNeB3MZuHvTuK6Kkf2pVAmeRqp2zNsiAc6xVBK7CWfIXEDJ+zLRvZukC1fSgsSICqzCA/j
 DOe0bRp5oOPbanjwbJJ1IDbUBmEHo5G5hVB3+XLXPsONskR70UA1KYOVR7by+HEsYrrBmKM0Ez8t5
 tJvn957g==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLDH-0002JB-Ne; Fri, 05 Jul 2019 10:13:09 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 35CBB60004;
 Fri,  5 Jul 2019 10:12:34 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 1/2] Revert "mtd: rawnand: sunxi: Add A23/A33 DMA support"
Date: Fri,  5 Jul 2019 12:12:31 +0200
Message-Id: <20190705101232.30164-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_111307_820653_73B8C2B1 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit c49836f05aa15282f7280e06ede3f6f8a6324833.

The commit is wrong and its approach actually does not work. Let's
revert it in order to add the feature with a clean patch.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/sunxi_nand.c | 38 ++-----------------------------
 1 file changed, 2 insertions(+), 36 deletions(-)

diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index b021a5720b42..e93f39bc2bc5 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -43,7 +43,6 @@
 #define NFC_REG_RCMD_SET	0x0028
 #define NFC_REG_WCMD_SET	0x002C
 #define NFC_REG_A10_IO_DATA	0x0030
-#define NFC_REG_A23_IO_DATA	0x0300
 #define NFC_REG_ECC_CTL		0x0034
 #define NFC_REG_ECC_ST		0x0038
 #define NFC_REG_DEBUG		0x003C
@@ -205,14 +204,10 @@ static inline struct sunxi_nand_chip *to_sunxi_nand(struct nand_chip *nand)
  * NAND Controller capabilities structure: stores NAND controller capabilities
  * for distinction between compatible strings.
  *
- * @sram_through_ahb:	On A23, we choose to access the internal RAM through AHB
- *                      instead of MBUS (less configuration). A10, A10s, A13 and
- *                      A20 use the MBUS but no extra configuration is needed.
  * @reg_io_data:	I/O data register
  * @dma_maxburst:	DMA maxburst
  */
 struct sunxi_nfc_caps {
-	bool sram_through_ahb;
 	unsigned int reg_io_data;
 	unsigned int dma_maxburst;
 };
@@ -368,29 +363,10 @@ static int sunxi_nfc_dma_op_prepare(struct sunxi_nfc *nfc, const void *buf,
 		goto err_unmap_buf;
 	}
 
-	/*
-	 * On A23, we suppose the "internal RAM" (p.12 of the NFC user manual)
-	 * refers to the NAND controller's internal SRAM. This memory is mapped
-	 * and so is accessible from the AHB. It seems that it can also be
-	 * accessed by the MBUS. MBUS accesses are mandatory when using the
-	 * internal DMA instead of the external DMA engine.
-	 *
-	 * During DMA I/O operation, either we access this memory from the AHB
-	 * by clearing the NFC_RAM_METHOD bit, or we set the bit and use the
-	 * MBUS. In this case, we should also configure the MBUS DMA length
-	 * NFC_REG_MDMA_CNT(0xC4) to be chunksize * nchunks. NAND I/O over MBUS
-	 * are also limited to 32kiB pages.
-	 */
-	if (nfc->caps->sram_through_ahb)
-		writel(readl(nfc->regs + NFC_REG_CTL) & ~NFC_RAM_METHOD,
-		       nfc->regs + NFC_REG_CTL);
-	else
-		writel(readl(nfc->regs + NFC_REG_CTL) | NFC_RAM_METHOD,
-		       nfc->regs + NFC_REG_CTL);
-
+	writel(readl(nfc->regs + NFC_REG_CTL) | NFC_RAM_METHOD,
+	       nfc->regs + NFC_REG_CTL);
 	writel(nchunks, nfc->regs + NFC_REG_SECTOR_NUM);
 	writel(chunksize, nfc->regs + NFC_REG_CNT);
-
 	dmat = dmaengine_submit(dmad);
 
 	ret = dma_submit_error(dmat);
@@ -2199,21 +2175,11 @@ static const struct sunxi_nfc_caps sunxi_nfc_a10_caps = {
 	.dma_maxburst = 4,
 };
 
-static const struct sunxi_nfc_caps sunxi_nfc_a23_caps = {
-	.sram_through_ahb = true,
-	.reg_io_data = NFC_REG_A23_IO_DATA,
-	.dma_maxburst = 8,
-};
-
 static const struct of_device_id sunxi_nfc_ids[] = {
 	{
 		.compatible = "allwinner,sun4i-a10-nand",
 		.data = &sunxi_nfc_a10_caps,
 	},
-	{
-		.compatible = "allwinner,sun8i-a23-nand-controller",
-		.data = &sunxi_nfc_a23_caps,
-	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sunxi_nfc_ids);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
