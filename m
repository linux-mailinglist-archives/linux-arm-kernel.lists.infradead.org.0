Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C987A1A6661
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 14:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jcMKQGJxX6Qg0DujL6vkJRti0JOxtfaFYbSUz79JAvE=; b=JVt
	34DgMgXz/hCpR/dIQn3VtVfwH98+sm1Ooss8WfbHQjPGkFdUBSb78JhFmZUci/YWu47WbUS/eKAom
	rBFcIGPLdpm9Z9UCGNikvXFVWT5Dzot2bJrqWHYSshbEQttbx+1Bq1ivogYkvKMolTL8wpRPk83Ec
	sKaT0WGRcKzMBGGjy4uJ7BiUiQVBU05bzVVyuJtNhAw/Rje7pMO4gUl014ilGl+YPvh/IOlnnA5l9
	eXAdFI0XVDbFz+DA2Zsjw+HAQ5h3mBYUCikPbe0qSbzG7s43xpPJ0OC51dtv2BO7fcKCVPL8xF+x9
	53gnB1pI+jrbkaGdKUDqw1X7MLK9p3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNyHY-0001KI-Vi; Mon, 13 Apr 2020 12:33:44 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNyHP-0001Jo-6U
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 12:33:36 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C61851A16F6;
 Mon, 13 Apr 2020 14:33:31 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 528DB1A0020;
 Mon, 13 Apr 2020 14:33:28 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C7814402B4;
 Mon, 13 Apr 2020 20:33:23 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: jassisinghbrar@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] mailbox: imx: Support runtime PM
Date: Mon, 13 Apr 2020 20:25:30 +0800
Message-Id: <1586780730-6117-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_053335_384576_E60B1E92 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some power hungry sub-systems like VPU has its own MUs which also
use mailbox driver, current mailbox driver uses platform driver
model and MU's power will be ON after driver probed and left ON
there, it may cause the whole sub-system can NOT enter lower power
mode, take VPU driver for example, it has runtime PM support, but
due to its MU always ON, the VPU sub-system will be always ON and
consume many power during kernel idle.

To save power in kernel idle, mailbox driver needs to support
runtime PM in order to power off MU when it is unused. However,
the runtime suspend/resume can ONLY be implemented in mailbox's
.shutdown/.startup callback, so its consumer needs to call
mbox_request_channel()/mbox_free_channel() in consumer driver's
runtime PM callback, then the MU's power will be ON/OFF along with
consumer's runtime PM status.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 7906624..97bf0ac 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -12,6 +12,7 @@
 #include <linux/mailbox_controller.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #define IMX_MU_xSR_GIPn(x)	BIT(28 + (3 - (x)))
@@ -287,6 +288,7 @@ static int imx_mu_startup(struct mbox_chan *chan)
 	struct imx_mu_con_priv *cp = chan->con_priv;
 	int ret;
 
+	pm_runtime_get_sync(priv->dev);
 	if (cp->type == IMX_MU_TYPE_TXDB) {
 		/* Tx doorbell don't have ACK support */
 		tasklet_init(&cp->txdb_tasklet, imx_mu_txdb_tasklet,
@@ -323,6 +325,7 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
 
 	if (cp->type == IMX_MU_TYPE_TXDB) {
 		tasklet_kill(&cp->txdb_tasklet);
+		pm_runtime_put_sync(priv->dev);
 		return;
 	}
 
@@ -341,6 +344,7 @@ static void imx_mu_shutdown(struct mbox_chan *chan)
 	}
 
 	free_irq(priv->irq, chan);
+	pm_runtime_put_sync(priv->dev);
 }
 
 static const struct mbox_chan_ops imx_mu_ops = {
@@ -508,7 +512,27 @@ static int imx_mu_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	return devm_mbox_controller_register(dev, &priv->mbox);
+	ret = devm_mbox_controller_register(dev, &priv->mbox);
+	if (ret)
+		return ret;
+
+	pm_runtime_enable(dev);
+
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		pm_runtime_put_noidle(dev);
+		goto disable_runtime_pm;
+	}
+
+	ret = pm_runtime_put_sync(dev);
+	if (ret < 0)
+		goto disable_runtime_pm;
+
+	return 0;
+
+disable_runtime_pm:
+	pm_runtime_disable(dev);
+	return ret;
 }
 
 static int imx_mu_remove(struct platform_device *pdev)
@@ -516,6 +540,7 @@ static int imx_mu_remove(struct platform_device *pdev)
 	struct imx_mu_priv *priv = platform_get_drvdata(pdev);
 
 	clk_disable_unprepare(priv->clk);
+	pm_runtime_disable(priv->dev);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
