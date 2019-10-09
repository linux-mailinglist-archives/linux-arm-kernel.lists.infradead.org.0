Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ACBD094F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z2D3JVKuDV4uhXdSI1UwamRnfzgFv3P+0855OTgUZAA=; b=eSJpO8Cy4PflE8v3PHNdckqAEi
	j7jTnTKW8mjaiTL8D1x6+x6XPTafMJTkielTOKFmbtJ8fuQ8mUlhWpWcPBwao8pXctKvwUAGgpyOH
	0ZkL9+xytaUFWvXxsiof+fo9VtXhbDJpe26TrR5zC+Bhux+qq/NaZJTSUzR1Fm3rqHIaW/X/q+2Aj
	wC4sEDMJMyan+xyJ7gMsDj0EqidE+GpZBuH8XYst6EPQng06wdOtzY5rT5xrcbiUcR0wJ7akISaP4
	dTLJX/+GA9ayCX0LulsrzAp7oAOhFoDkjlCznNYi80pgYgK2dRS6JbAmcHzYkCArApyHxooxsRjio
	hT93Hqrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI73t-0003DE-O4; Wed, 09 Oct 2019 08:11:09 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI72d-0001A1-Hy
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:09:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 099F71A0385;
 Wed,  9 Oct 2019 10:09:50 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C44341A0382;
 Wed,  9 Oct 2019 10:09:45 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8E3884031C;
 Wed,  9 Oct 2019 16:09:35 +0800 (SGT)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: jassisinghbrar@gmail.com, o.rempel@pengutronix.de, daniel.baluta@nxp.com,
 aisheng.dong@nxp.com
Subject: [PATCH v6 4/4] mailbox: imx: add support for imx v1 mu
Date: Wed,  9 Oct 2019 16:07:21 +0800
Message-Id: <1570608441-29651-5-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
References: <1570608441-29651-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010951_972394_FFBA3B0B 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a version 1.0 MU on i.MX7ULP platform.
One new version ID register is added, and it's offset is 0.
TRn registers are defined at the offset 0x20 ~ 0x2C.
RRn registers are defined at the offset 0x40 ~ 0x4C.
SR/CR registers are defined at 0x60/0x64.
Extend this driver to support it.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 55 ++++++++++++++++++++++++++++++-------------
 1 file changed, 38 insertions(+), 17 deletions(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index afe625e..2cdcdc5 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -12,19 +12,11 @@
 #include <linux/of_device.h>
 #include <linux/slab.h>
 
-/* Transmit Register */
-#define IMX_MU_xTRn(x)		(0x00 + 4 * (x))
-/* Receive Register */
-#define IMX_MU_xRRn(x)		(0x10 + 4 * (x))
-/* Status Register */
-#define IMX_MU_xSR		0x20
 #define IMX_MU_xSR_GIPn(x)	BIT(28 + (3 - (x)))
 #define IMX_MU_xSR_RFn(x)	BIT(24 + (3 - (x)))
 #define IMX_MU_xSR_TEn(x)	BIT(20 + (3 - (x)))
 #define IMX_MU_xSR_BRDIP	BIT(9)
 
-/* Control Register */
-#define IMX_MU_xCR		0x24
 /* General Purpose Interrupt Enable */
 #define IMX_MU_xCR_GIEn(x)	BIT(28 + (3 - (x)))
 /* Receive Interrupt Enable */
@@ -44,6 +36,13 @@ enum imx_mu_chan_type {
 	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
 };
 
+struct imx_mu_dcfg {
+	u32	xTR[4];		/* Transmit Registers */
+	u32	xRR[4];		/* Receive Registers */
+	u32	xSR;		/* Status Register */
+	u32	xCR;		/* Control Register */
+};
+
 struct imx_mu_con_priv {
 	unsigned int		idx;
 	char			irq_desc[IMX_MU_CHAN_NAME_SIZE];
@@ -61,12 +60,27 @@ struct imx_mu_priv {
 	struct mbox_chan	mbox_chans[IMX_MU_CHANS];
 
 	struct imx_mu_con_priv  con_priv[IMX_MU_CHANS];
+	const struct imx_mu_dcfg	*dcfg;
 	struct clk		*clk;
 	int			irq;
 
 	bool			side_b;
 };
 
+static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
+	.xTR	= {0x0, 0x4, 0x8, 0xc},
+	.xRR	= {0x10, 0x14, 0x18, 0x1c},
+	.xSR	= 0x20,
+	.xCR	= 0x24,
+};
+
+static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
+	.xTR	= {0x20, 0x24, 0x28, 0x2c},
+	.xRR	= {0x40, 0x44, 0x48, 0x4c},
+	.xSR	= 0x60,
+	.xCR	= 0x64,
+};
+
 static struct imx_mu_priv *to_imx_mu_priv(struct mbox_controller *mbox)
 {
 	return container_of(mbox, struct imx_mu_priv, mbox);
@@ -88,10 +102,10 @@ static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
 	u32 val;
 
 	spin_lock_irqsave(&priv->xcr_lock, flags);
-	val = imx_mu_read(priv, IMX_MU_xCR);
+	val = imx_mu_read(priv, priv->dcfg->xCR);
 	val &= ~clr;
 	val |= set;
-	imx_mu_write(priv, val, IMX_MU_xCR);
+	imx_mu_write(priv, val, priv->dcfg->xCR);
 	spin_unlock_irqrestore(&priv->xcr_lock, flags);
 
 	return val;
@@ -111,8 +125,8 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
 	struct imx_mu_con_priv *cp = chan->con_priv;
 	u32 val, ctrl, dat;
 
-	ctrl = imx_mu_read(priv, IMX_MU_xCR);
-	val = imx_mu_read(priv, IMX_MU_xSR);
+	ctrl = imx_mu_read(priv, priv->dcfg->xCR);
+	val = imx_mu_read(priv, priv->dcfg->xSR);
 
 	switch (cp->type) {
 	case IMX_MU_TYPE_TX:
@@ -138,10 +152,10 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
 		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
 		mbox_chan_txdone(chan, 0);
 	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
-		dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
+		dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
 		mbox_chan_received_data(chan, (void *)&dat);
 	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
-		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), IMX_MU_xSR);
+		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR);
 		mbox_chan_received_data(chan, NULL);
 	} else {
 		dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
@@ -159,7 +173,7 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
 
 	switch (cp->type) {
 	case IMX_MU_TYPE_TX:
-		imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
+		imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
 		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
 		break;
 	case IMX_MU_TYPE_TXDB:
@@ -270,7 +284,7 @@ static void imx_mu_init_generic(struct imx_mu_priv *priv)
 		return;
 
 	/* Set default MU configuration */
-	imx_mu_write(priv, 0, IMX_MU_xCR);
+	imx_mu_write(priv, 0, priv->dcfg->xCR);
 }
 
 static int imx_mu_probe(struct platform_device *pdev)
@@ -278,6 +292,7 @@ static int imx_mu_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct imx_mu_priv *priv;
+	const struct imx_mu_dcfg *dcfg;
 	unsigned int i;
 	int ret;
 
@@ -295,6 +310,11 @@ static int imx_mu_probe(struct platform_device *pdev)
 	if (priv->irq < 0)
 		return priv->irq;
 
+	dcfg = of_device_get_match_data(dev);
+	if (!dcfg)
+		return -EINVAL;
+	priv->dcfg = dcfg;
+
 	priv->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(priv->clk)) {
 		if (PTR_ERR(priv->clk) != -ENOENT)
@@ -348,7 +368,8 @@ static int imx_mu_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id imx_mu_dt_ids[] = {
-	{ .compatible = "fsl,imx6sx-mu" },
+	{ .compatible = "fsl,imx7ulp-mu", .data = &imx_mu_cfg_imx7ulp },
+	{ .compatible = "fsl,imx6sx-mu", .data = &imx_mu_cfg_imx6sx },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
