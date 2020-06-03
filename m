Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70E11EC8C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 07:27:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BiD2a2BgLEiY8vAiKMhNB8zPD/92CYzAeY5JYb7MbdE=; b=XkAHvAafsfHzrMVKpp4IkCQsNz
	8p3dsEz7Le0/3JMK8GLarzg++p1lrxhstbeVylg7vdvCwuhPy7+XUnUY7Q5P1vwUx0xAbpnxz1hIX
	dYA1Mis0uB96SJCcE7ojggcCbiIzMERe9KClZrD4SrCXpY0H9NyrvCHMjH8dU2EoXppjl4RfJ2yCS
	S2ejCaxO3hKTngxr20HdXXc0B6l7QK/hJWxNSL8g5NTooFYQx+vYPnIFb238yD3Tq8AlbEvJ4XMuo
	7QnJtpOkMDutHefQ9g+p+e8AHhRiSBIGyM6hyRobjwmunAOmAy/JuOkAejuzXEKNTslD/A5ASdxSq
	5eOhGMjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgLvf-0005cM-Hg; Wed, 03 Jun 2020 05:27:07 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgLun-0004wO-3v
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 05:26:15 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D0DE8200D8A;
 Wed,  3 Jun 2020 07:26:11 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6CABF200D42;
 Wed,  3 Jun 2020 07:26:08 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D2E4640299;
 Wed,  3 Jun 2020 13:26:03 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: jassisinghbrar@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] mailbox: imx: Add runtime PM callback to handle MU clocks
Date: Wed,  3 Jun 2020 13:15:43 +0800
Message-Id: <1591161344-12885-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591161344-12885-1-git-send-email-Anson.Huang@nxp.com>
References: <1591161344-12885-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_222613_437330_B37822E9 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some of i.MX8M SoCs have MU clock, they need to be managed in runtime
to make sure the MU clock can be off in runtime, add runtime PM callback
to handle MU clock.

And on i.MX8MP, the MU clock is combined with power domain and runtime
PM is enabled for the clock driver, during noirq suspend/resume phase,
runtime PM is disabled by device suspend, but the MU context save/restore
needs to enable MU clock for register access, calling clock prepare/enable
will trigger runtime resume failure and lead to system suspend failed.

Actually, the MU context save/restore is ONLY necessary for SCU IPC MU,
other MUs especially on i.MX8MP platforms which have MU clock assigned,
they need to runtime request/free mailbox channel in the consumer driver,
so no need to save/restore MU context for them, hence it can avoid this
issue, so the MU context save/restore is ONLY applied to i.MX platforms
MU instance without clock present.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 32 +++++++++++++++++++++++++++++---
 1 file changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index da90a8e..080b608 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -536,10 +536,13 @@ static int imx_mu_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto disable_runtime_pm;
 
+	clk_disable_unprepare(priv->clk);
+
 	return 0;
 
 disable_runtime_pm:
 	pm_runtime_disable(dev);
+	clk_disable_unprepare(priv->clk);
 	return ret;
 }
 
@@ -547,7 +550,6 @@ static int imx_mu_remove(struct platform_device *pdev)
 {
 	struct imx_mu_priv *priv = platform_get_drvdata(pdev);
 
-	clk_disable_unprepare(priv->clk);
 	pm_runtime_disable(priv->dev);
 
 	return 0;
@@ -595,7 +597,8 @@ static int imx_mu_suspend_noirq(struct device *dev)
 {
 	struct imx_mu_priv *priv = dev_get_drvdata(dev);
 
-	priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
+	if (!priv->clk)
+		priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
 
 	return 0;
 }
@@ -612,15 +615,38 @@ static int imx_mu_resume_noirq(struct device *dev)
 	 * send failed, may lead to system freeze. This issue
 	 * is observed by testing freeze mode suspend.
 	 */
-	if (!imx_mu_read(priv, priv->dcfg->xCR))
+	if (!imx_mu_read(priv, priv->dcfg->xCR) && !priv->clk)
 		imx_mu_write(priv, priv->xcr, priv->dcfg->xCR);
 
 	return 0;
 }
 
+static int imx_mu_runtime_suspend(struct device *dev)
+{
+	struct imx_mu_priv *priv = dev_get_drvdata(dev);
+
+	clk_disable_unprepare(priv->clk);
+
+	return 0;
+}
+
+static int imx_mu_runtime_resume(struct device *dev)
+{
+	struct imx_mu_priv *priv = dev_get_drvdata(dev);
+	int ret;
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret)
+		dev_err(dev, "failed to enable clock\n");
+
+	return ret;
+}
+
 static const struct dev_pm_ops imx_mu_pm_ops = {
 	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_mu_suspend_noirq,
 				      imx_mu_resume_noirq)
+	SET_RUNTIME_PM_OPS(imx_mu_runtime_suspend,
+			   imx_mu_runtime_resume, NULL)
 };
 
 static struct platform_driver imx_mu_driver = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
