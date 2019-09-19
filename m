Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6FDB81AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfTM1tArWCBvKEYLQlATncjJHdt8L/FOnkvIFrYjsyQ=; b=REelSMrMAFsrX4
	SmvF9aE36w3q5Etlm73erGj6g5BcMJLBMLkQoXxlqm5HgR+CDq4FVlbdNh4E60hgjicpmom9Ru27q
	zVlEoxgA1t7o3dijFDL3iQToyodLHWlX5rrNIEovvGjoPwVZ1Ept4pZiIdvLJmQlj2FQ5lcRMqDWZ
	ZNdGDb/sdOFEGkWy2P7B1lNmHHx0DCIeAlm2PfQxoWtTzLT44V0vFBqO8Cf0RGNzzyRr95yZcobZJ
	GZu9zK4ZisqPX6YTzad4jpAgJkDyo1kpq2ECxE4qloZ/UtjVgStqV7WT/uBeii7ZXON+ZX9ru4QW+
	/Fd4LWLdGR0vx0QahTRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2PF-0007Zk-Mk; Thu, 19 Sep 2019 19:47:58 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2AI-0002Nt-Ty; Thu, 19 Sep 2019 19:32:33 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id E5951240005;
 Thu, 19 Sep 2019 19:32:26 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 20/40] mtd: rawnand: Get rid of chip->ecc.priv
Date: Thu, 19 Sep 2019 21:31:20 +0200
Message-Id: <20190919193141.7865-21-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123231_433154_855C0B88 
X-CRM114-Status: GOOD (  17.36  )
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
 Paul Cercueil <paul@crapouillou.net>, Chen-Yu Tsai <wens@csie.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

nand_ecc_ctrl embeds a private pointer which only has a meaning in the
sunxi driver. This structure will soon be deprecated, but as this
field is actually not needed, let's just drop it.

Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/sunxi_nand.c | 31 ++++++++++++++++---------------
 include/linux/mtd/rawnand.h       |  2 --
 2 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index ae67b48fd4a6..9b43f8a9dc00 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -182,6 +182,7 @@ struct sunxi_nand_hw_ecc {
  *
  * @node: used to store NAND chips into a list
  * @nand: base NAND chip structure
+ * @ecc: ECC controller structure
  * @clk_rate: clk_rate required for this NAND chip
  * @timing_cfg: TIMING_CFG register value for this NAND chip
  * @timing_ctl: TIMING_CTL register value for this NAND chip
@@ -191,6 +192,7 @@ struct sunxi_nand_hw_ecc {
 struct sunxi_nand_chip {
 	struct list_head node;
 	struct nand_chip nand;
+	struct sunxi_nand_hw_ecc *ecc;
 	unsigned long clk_rate;
 	u32 timing_cfg;
 	u32 timing_ctl;
@@ -676,15 +678,15 @@ static void sunxi_nfc_randomizer_read_buf(struct nand_chip *nand, uint8_t *buf,
 
 static void sunxi_nfc_hw_ecc_enable(struct nand_chip *nand)
 {
+	struct sunxi_nand_chip *sunxi_nand = to_sunxi_nand(nand);
 	struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
-	struct sunxi_nand_hw_ecc *data = nand->ecc.priv;
 	u32 ecc_ctl;
 
 	ecc_ctl = readl(nfc->regs + NFC_REG_ECC_CTL);
 	ecc_ctl &= ~(NFC_ECC_MODE_MSK | NFC_ECC_PIPELINE |
 		     NFC_ECC_BLOCK_SIZE_MSK);
-	ecc_ctl |= NFC_ECC_EN | NFC_ECC_MODE(data->mode) | NFC_ECC_EXCEPTION |
-		   NFC_ECC_PIPELINE;
+	ecc_ctl |= NFC_ECC_EN | NFC_ECC_MODE(sunxi_nand->ecc->mode) |
+		   NFC_ECC_EXCEPTION | NFC_ECC_PIPELINE;
 
 	if (nand->ecc.size == 512)
 		ecc_ctl |= NFC_ECC_BLOCK_512;
@@ -1597,9 +1599,9 @@ static const struct mtd_ooblayout_ops sunxi_nand_ooblayout_ops = {
 	.free = sunxi_nand_ooblayout_free,
 };
 
-static void sunxi_nand_hw_ecc_ctrl_cleanup(struct nand_ecc_ctrl *ecc)
+static void sunxi_nand_hw_ecc_ctrl_cleanup(struct sunxi_nand_chip *sunxi_nand)
 {
-	kfree(ecc->priv);
+	kfree(sunxi_nand->ecc);
 }
 
 static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
@@ -1607,10 +1609,10 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 				       struct device_node *np)
 {
 	static const u8 strengths[] = { 16, 24, 28, 32, 40, 48, 56, 60, 64 };
+	struct sunxi_nand_chip *sunxi_nand = to_sunxi_nand(nand);
 	struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 	struct mtd_info *mtd = nand_to_mtd(nand);
 	struct nand_device *nanddev = mtd_to_nanddev(mtd);
-	struct sunxi_nand_hw_ecc *data;
 	int nsectors;
 	int ret;
 	int i;
@@ -1647,8 +1649,8 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 	if (ecc->size != 512 && ecc->size != 1024)
 		return -EINVAL;
 
-	data = kzalloc(sizeof(*data), GFP_KERNEL);
-	if (!data)
+	sunxi_nand->ecc = kzalloc(sizeof(*sunxi_nand->ecc), GFP_KERNEL);
+	if (!sunxi_nand->ecc)
 		return -ENOMEM;
 
 	/* Prefer 1k ECC chunk over 512 ones */
@@ -1675,7 +1677,7 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 		goto err;
 	}
 
-	data->mode = i;
+	sunxi_nand->ecc->mode = i;
 
 	/* HW ECC always request ECC bytes for 1024 bytes blocks */
 	ecc->bytes = DIV_ROUND_UP(ecc->strength * fls(8 * 1024), 8);
@@ -1693,7 +1695,6 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 	ecc->read_oob = sunxi_nfc_hw_ecc_read_oob;
 	ecc->write_oob = sunxi_nfc_hw_ecc_write_oob;
 	mtd_set_ooblayout(mtd, &sunxi_nand_ooblayout_ops);
-	ecc->priv = data;
 
 	if (nfc->dmac) {
 		ecc->read_page = sunxi_nfc_hw_ecc_read_page_dma;
@@ -1714,16 +1715,16 @@ static int sunxi_nand_hw_ecc_ctrl_init(struct nand_chip *nand,
 	return 0;
 
 err:
-	kfree(data);
+	kfree(sunxi_nand->ecc);
 
 	return ret;
 }
 
-static void sunxi_nand_ecc_cleanup(struct nand_ecc_ctrl *ecc)
+static void sunxi_nand_ecc_cleanup(struct sunxi_nand_chip *sunxi_nand)
 {
-	switch (ecc->mode) {
+	switch (sunxi_nand->ecc->mode) {
 	case NAND_HW_ECC_ENGINE:
-		sunxi_nand_hw_ecc_ctrl_cleanup(ecc);
+		sunxi_nand_hw_ecc_ctrl_cleanup(sunxi_nand);
 		break;
 	case NAND_NO_ECC_ENGINE:
 	default:
@@ -2046,7 +2047,7 @@ static void sunxi_nand_chips_cleanup(struct sunxi_nfc *nfc)
 					      struct sunxi_nand_chip,
 					      node);
 		nand_release(&sunxi_nand->nand);
-		sunxi_nand_ecc_cleanup(&sunxi_nand->nand.ecc);
+		sunxi_nand_ecc_cleanup(sunxi_nand);
 		list_del(&sunxi_nand->node);
 	}
 }
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 0fb95f83e161..b15015b7be3c 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -291,7 +291,6 @@ static const struct nand_ecc_caps __name = {			\
  * @prepad:	padding information for syndrome based ECC generators
  * @postpad:	padding information for syndrome based ECC generators
  * @options:	ECC specific options (see NAND_ECC_XXX flags defined above)
- * @priv:	pointer to private ECC control data
  * @calc_buf:	buffer for calculated ECC, size is oobsize.
  * @code_buf:	buffer for ECC read from flash, size is oobsize.
  * @hwctl:	function to control hardware ECC generator. Must only
@@ -344,7 +343,6 @@ struct nand_ecc_ctrl {
 	int prepad;
 	int postpad;
 	unsigned int options;
-	void *priv;
 	u8 *calc_buf;
 	u8 *code_buf;
 	void (*hwctl)(struct nand_chip *chip, int mode);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
