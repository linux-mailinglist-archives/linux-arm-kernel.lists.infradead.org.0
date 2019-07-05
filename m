Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E42606F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQsifF9keDACfkwtpuenSrXZPf6YDwNs2PkzTyOx2ZU=; b=WkskWoFL6r9o4y
	kpkKxIeGlzXvI7exKx+mhCncqbaIPZPTUCXye5P/UwWNeQvX8L6hLXwRMVYN1dyODwewqjKiY2s8f
	U7kOXzIL6I3gIZUDcCk5Y3ya59Iph55Ozv4X4JIBy6SUhJd/DOnAD7CI7wlqdrGOUOyuJWaLsrdKd
	MiB3qHrJuF8hVvXY3qWsUmfjdFXVjhFcBfY5k+xT8LLyYsZaYr0MlOMcz1E//JAzX3sD56GbN9+X9
	iIKk8A7sOBt3cyAco88IsW1zZ2txx4xmdASnzT9i4xDcEW0+2XwjySw+fzxt0/h9R+v8/D1yW+u7A
	80ulz0BOUiLg/Kqz5rSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOhy-00089Z-Hw; Fri, 05 Jul 2019 13:57:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLDu-0008Oi-4a; Fri, 05 Jul 2019 10:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u7u9KSiZT7rYdTgq+699fVjlAPchp6VXoD1rS6N6fUg=; b=wy6Ly++tAfrb/RROEtuR3Q/Gto
 TEvSNvLK8W+wnHdC3nHP1fykYSGU8qyQgKllcX0QqZ3zGqtCdxN+Q4mSnsTn5RlUZ6iOpbJJrGuXY
 dQ+Y8MjPA5lu2FtDtP58BqQ9IoQCH+yRW5+3IxwAErScB1wBwSp+xppl6EpI7pXQ6lXAP4g6PRGg3
 PLIYP1125VOgokwjZfCv2pvJZUW9UNkHKmJYfmjffwTo2sf6TAxte4hHFHHs8HG04fE4L+Llzjhda
 XilcIg8fTaha2v3yabs0GYez0WVFK9HMpboouUWE9GvFZneUX3/yPvGHAVo4yjipPQF4zluhxYCmf
 YK8os0eA==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjLDe-000144-7d; Fri, 05 Jul 2019 10:13:31 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 318986000D;
 Fri,  5 Jul 2019 10:12:38 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 2/2] mtd: rawnand: sunxi: Add A23/A33 DMA support with extra
 MBUS configuration
Date: Fri,  5 Jul 2019 12:12:32 +0200
Message-Id: <20190705101232.30164-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190705101232.30164-1-miquel.raynal@bootlin.com>
References: <20190705101232.30164-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner NAND controllers can make use of DMA to enhance the I/O
throughput thanks to ECC pipelining. DMA handling with A23/A33 NAND IP
is a bit different than with the older SoCs, hence the introduction of
a new compatible to handle:
* the differences between register offsets,
* the burst length change from 4 to minimum 8,
* manage SRAM accesses through MBUS with extra configuration.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/sunxi_nand.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index e93f39bc2bc5..89773293c64d 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -43,6 +43,7 @@
 #define NFC_REG_RCMD_SET	0x0028
 #define NFC_REG_WCMD_SET	0x002C
 #define NFC_REG_A10_IO_DATA	0x0030
+#define NFC_REG_A23_IO_DATA	0x0300
 #define NFC_REG_ECC_CTL		0x0034
 #define NFC_REG_ECC_ST		0x0038
 #define NFC_REG_DEBUG		0x003C
@@ -50,6 +51,7 @@
 #define NFC_REG_USER_DATA(x)	(0x0050 + ((x) * 4))
 #define NFC_REG_SPARE_AREA	0x00A0
 #define NFC_REG_PAT_ID		0x00A4
+#define NFC_REG_MDMA_CNT	0x00C4
 #define NFC_RAM0_BASE		0x0400
 #define NFC_RAM1_BASE		0x0800
 
@@ -68,6 +70,7 @@
 #define NFC_PAGE_SHIFT(x)	(((x) < 10 ? 0 : (x) - 10) << 8)
 #define NFC_SAM			BIT(12)
 #define NFC_RAM_METHOD		BIT(14)
+#define NFC_DMA_TYPE_NORMAL	BIT(15)
 #define NFC_DEBUG_CTL		BIT(31)
 
 /* define bit use in NFC_ST */
@@ -204,10 +207,13 @@ static inline struct sunxi_nand_chip *to_sunxi_nand(struct nand_chip *nand)
  * NAND Controller capabilities structure: stores NAND controller capabilities
  * for distinction between compatible strings.
  *
+ * @extra_mbus_conf:	Contrary to A10, A10s and A13, accessing internal RAM
+ *			through MBUS on A23/A33 needs extra configuration.
  * @reg_io_data:	I/O data register
  * @dma_maxburst:	DMA maxburst
  */
 struct sunxi_nfc_caps {
+	bool extra_mbus_conf;
 	unsigned int reg_io_data;
 	unsigned int dma_maxburst;
 };
@@ -367,6 +373,9 @@ static int sunxi_nfc_dma_op_prepare(struct sunxi_nfc *nfc, const void *buf,
 	       nfc->regs + NFC_REG_CTL);
 	writel(nchunks, nfc->regs + NFC_REG_SECTOR_NUM);
 	writel(chunksize, nfc->regs + NFC_REG_CNT);
+	if (nfc->caps->extra_mbus_conf)
+		writel(chunksize * nchunks, nfc->regs + NFC_REG_MDMA_CNT);
+
 	dmat = dmaengine_submit(dmad);
 
 	ret = dma_submit_error(dmat);
@@ -2127,6 +2136,11 @@ static int sunxi_nfc_probe(struct platform_device *pdev)
 		dmac_cfg.src_maxburst = nfc->caps->dma_maxburst;
 		dmac_cfg.dst_maxburst = nfc->caps->dma_maxburst;
 		dmaengine_slave_config(nfc->dmac, &dmac_cfg);
+
+		if (nfc->caps->extra_mbus_conf)
+			writel(readl(nfc->regs + NFC_REG_CTL) |
+			       NFC_DMA_TYPE_NORMAL, nfc->regs + NFC_REG_CTL);
+
 	} else {
 		dev_warn(dev, "failed to request rxtx DMA channel\n");
 	}
@@ -2175,11 +2189,21 @@ static const struct sunxi_nfc_caps sunxi_nfc_a10_caps = {
 	.dma_maxburst = 4,
 };
 
+static const struct sunxi_nfc_caps sunxi_nfc_a23_caps = {
+	.extra_mbus_conf = true,
+	.reg_io_data = NFC_REG_A23_IO_DATA,
+	.dma_maxburst = 8,
+};
+
 static const struct of_device_id sunxi_nfc_ids[] = {
 	{
 		.compatible = "allwinner,sun4i-a10-nand",
 		.data = &sunxi_nfc_a10_caps,
 	},
+	{
+		.compatible = "allwinner,sun8i-a23-nand-controller",
+		.data = &sunxi_nfc_a23_caps,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sunxi_nfc_ids);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
