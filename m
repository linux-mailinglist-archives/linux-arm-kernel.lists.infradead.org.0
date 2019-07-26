Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D96176153
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sK3uczsdFGeltmT7rbbnbdwB6tFQtturlywE1tDAAdE=; b=gp5
	jv15hBOd5JEzToUtR5XrL9D2mNrRGOxPC+MMU/B81e9JNCjEQptEU8Rg88dEKdfav7L/00zlw5g+d
	wz5+pev0OECg3H1sIWs8sajA31kzJOcRe9teysex/gMZOy8lV2UtG/+zMFNYhCeum1D9OhqBZlD71
	iPbkmks62rHcIljG3AM6kNUb/d6GWDPWltBlNwKNZER6CL/zZVkFbvbRnOQ3YvnRdvQdfj8jY2tlf
	kls0+J2g8dKMoZEVPt0MMB6Ty3471mFzXcTBemOE7d90f6E2dWpkH/PbT1bSvJzSxx2oJbVvDnveC
	9EagOSqgnQKBO8LI0N4RuvRVxAf4KzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvxb-0000ay-6I; Fri, 26 Jul 2019 08:52:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvx7-0000QC-2j
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 08:51:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D69E81A0966;
 Fri, 26 Jul 2019 10:51:45 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 222B41A0976;
 Fri, 26 Jul 2019 10:51:42 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8BDA7402A9;
 Fri, 26 Jul 2019 16:51:37 +0800 (SGT)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: jassisinghbrar@gmail.com,
	o.rempel@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [RFC] mailbox: imx: Add support for i.MX v1 messaging unit
Date: Fri, 26 Jul 2019 16:29:36 +0800
Message-Id: <1564129776-19574-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_015149_466812_89E42CC3 
X-CRM114-Status: GOOD (  10.98  )
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
Cc: Richard Zhu <hongxing.zhu@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a version1.0 MU on i.MX7ULP platform.
One new version ID register is added, and the offset is 0.
TRn registers are defined at the offset 0x20 ~ 0x2C.
RRn registers are defined at the offset 0x40 ~ 0x4C.
SR/CR registers are defined at 0x60/0x64.
Extend this driver to support it.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 45 +++++++++++++++++++++++++++++++++----------
 1 file changed, 35 insertions(+), 10 deletions(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 25be8bb..eb55bbe 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -12,10 +12,14 @@
 #include <linux/of_device.h>
 #include <linux/slab.h>
 
+#define MU_VER_ID_V1		0x0100
+
 /* Transmit Register */
 #define IMX_MU_xTRn(x)		(0x00 + 4 * (x))
+#define IMX_MU_xTRn_V1(x)	(0x20 + 4 * (x))
 /* Receive Register */
 #define IMX_MU_xRRn(x)		(0x10 + 4 * (x))
+#define IMX_MU_xRRn_V1(x)	(0x40 + 4 * (x))
 /* Status Register */
 #define IMX_MU_xSR		0x20
 #define IMX_MU_xSR_GIPn(x)	BIT(28 + (3 - (x)))
@@ -25,6 +29,7 @@
 
 /* Control Register */
 #define IMX_MU_xCR		0x24
+#define IMX_MU_xSCR_V1_OFFSET	0x40
 /* General Purpose Interrupt Enable */
 #define IMX_MU_xCR_GIEn(x)	BIT(28 + (3 - (x)))
 /* Receive Interrupt Enable */
@@ -63,6 +68,7 @@ struct imx_mu_priv {
 	struct imx_mu_con_priv  con_priv[IMX_MU_CHANS];
 	struct clk		*clk;
 	int			irq;
+	int			version;
 
 	bool			side_b;
 };
@@ -85,13 +91,16 @@ static u32 imx_mu_read(struct imx_mu_priv *priv, u32 offs)
 static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
 {
 	unsigned long flags;
-	u32 val;
+	u32 val, offset;
+
+	offset = unlikely(priv->version == MU_VER_ID_V1) ?
+			IMX_MU_xSCR_V1_OFFSET : 0;
 
 	spin_lock_irqsave(&priv->xcr_lock, flags);
-	val = imx_mu_read(priv, IMX_MU_xCR);
+	val = imx_mu_read(priv, IMX_MU_xCR + offset);
 	val &= ~clr;
 	val |= set;
-	imx_mu_write(priv, val, IMX_MU_xCR);
+	imx_mu_write(priv, val, IMX_MU_xCR + offset);
 	spin_unlock_irqrestore(&priv->xcr_lock, flags);
 
 	return val;
@@ -109,10 +118,13 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
 	struct mbox_chan *chan = p;
 	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 	struct imx_mu_con_priv *cp = chan->con_priv;
-	u32 val, ctrl, dat;
+	u32 val, ctrl, dat, offset;
+
+	offset = unlikely(priv->version == MU_VER_ID_V1) ?
+			IMX_MU_xSCR_V1_OFFSET : 0;
 
-	ctrl = imx_mu_read(priv, IMX_MU_xCR);
-	val = imx_mu_read(priv, IMX_MU_xSR);
+	ctrl = imx_mu_read(priv, IMX_MU_xCR + offset);
+	val = imx_mu_read(priv, IMX_MU_xSR + offset);
 
 	switch (cp->type) {
 	case IMX_MU_TYPE_TX:
@@ -138,10 +150,14 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
 		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
 		mbox_chan_txdone(chan, 0);
 	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
-		dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
+		if (unlikely(priv->version == MU_VER_ID_V1))
+			dat = imx_mu_read(priv, IMX_MU_xRRn_V1(cp->idx));
+		else
+			dat = imx_mu_read(priv, IMX_MU_xRRn(cp->idx));
 		mbox_chan_received_data(chan, (void *)&dat);
 	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
-		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), IMX_MU_xSR);
+		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx),
+				IMX_MU_xSR + offset);
 		mbox_chan_received_data(chan, NULL);
 	} else {
 		dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
@@ -159,7 +175,10 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
 
 	switch (cp->type) {
 	case IMX_MU_TYPE_TX:
-		imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
+		if (unlikely(priv->version == MU_VER_ID_V1))
+			imx_mu_write(priv, *arg, IMX_MU_xTRn_V1(cp->idx));
+		else
+			imx_mu_write(priv, *arg, IMX_MU_xTRn(cp->idx));
 		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
 		break;
 	case IMX_MU_TYPE_TXDB:
@@ -253,11 +272,17 @@ static struct mbox_chan * imx_mu_xlate(struct mbox_controller *mbox,
 
 static void imx_mu_init_generic(struct imx_mu_priv *priv)
 {
+	u32 offset;
+
 	if (priv->side_b)
 		return;
 
+	priv->version = imx_mu_read(priv, 0) >> 16;
+	offset = unlikely(priv->version == MU_VER_ID_V1) ?
+			IMX_MU_xSCR_V1_OFFSET : 0;
+
 	/* Set default MU configuration */
-	imx_mu_write(priv, 0, IMX_MU_xCR);
+	imx_mu_write(priv, 0, IMX_MU_xCR + offset);
 }
 
 static int imx_mu_probe(struct platform_device *pdev)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
