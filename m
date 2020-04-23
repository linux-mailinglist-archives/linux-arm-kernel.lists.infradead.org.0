Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C290D1B67CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 01:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ln5FEZO2rd23FV7SoMDHhBmfgd3dAup0pUG5rPXFRO8=; b=VyR
	GrXVmcxSnsnJayri11Riahqr2x2yn5xTbw53s0XW3cKYuvQ19NdQJCTO5L32tvsf2Ao9hOIatemNW
	ZQjgDM6Sf2pKi9oqZV/EvfbCeq3JyFHtz8fvOJFa6VapdMqrP1/bPKNYaGoHMG9OAsTwem9lvdRId
	nhFxdVJspPj6Vmhma+ev0cCn8tnQLyhNYruuB742GP/bGnm+e2uDFms9JxxQ0YKZJIXvQezFnqbV4
	pBvE4u/tvWlPMHtDFaWa7K7i2ADo0nZxHNXRkuNICkzr5F6zk/fWGhIMvjRozjyqAYoB5ltVq65s1
	zrf3DUZs0tArvuAwAN8sbxCYp19q8Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRkyj-0000rU-7l; Thu, 23 Apr 2020 23:09:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRkya-0000fn-1g
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 23:09:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8AB5E20013D;
 Fri, 24 Apr 2020 01:09:45 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 16560200143;
 Fri, 24 Apr 2020 01:09:42 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7513240246;
 Fri, 24 Apr 2020 07:09:37 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: jassisinghbrar@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Date: Fri, 24 Apr 2020 07:01:11 +0800
Message-Id: <1587682871-528-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_160948_229206_A42DB25E 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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

For "mem" mode suspend on i.MX8 SoCs, MU settings could be
lost because its power is off, so save/restore is needed
for MU settings during suspend/resume. However, the restore
can ONLY be done when MU settings are actually lost, for the
scenario of settings NOT lost in "freeze" mode suspend, since
there could be still IPC going on multiple CPUs, restoring the
MU settings could overwrite the TIE by mistake and cause system
freeze, so need to make sure ONLY restore the MU settings when
it is powered off.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 97bf0ac..b53cf63 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -67,6 +67,8 @@ struct imx_mu_priv {
 	struct clk		*clk;
 	int			irq;
 
+	u32 xcr;
+
 	bool			side_b;
 };
 
@@ -583,12 +585,45 @@ static const struct of_device_id imx_mu_dt_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
 
+static int imx_mu_suspend_noirq(struct device *dev)
+{
+	struct imx_mu_priv *priv = dev_get_drvdata(dev);
+
+	priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
+
+	return 0;
+}
+
+static int imx_mu_resume_noirq(struct device *dev)
+{
+	struct imx_mu_priv *priv = dev_get_drvdata(dev);
+
+	/*
+	 * ONLY restore MU when context lost, the TIE could
+	 * be set during noirq resume as there is MU data
+	 * communication going on, and restore the saved
+	 * value will overwrite the TIE and cause MU data
+	 * send failed, may lead to system freeze. This issue
+	 * is observed by testing freeze mode suspend.
+	 */
+	if (!imx_mu_read(priv, priv->dcfg->xCR))
+		imx_mu_write(priv, priv->xcr, priv->dcfg->xCR);
+
+	return 0;
+}
+
+static const struct dev_pm_ops imx_mu_pm_ops = {
+	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_mu_suspend_noirq,
+				      imx_mu_resume_noirq)
+};
+
 static struct platform_driver imx_mu_driver = {
 	.probe		= imx_mu_probe,
 	.remove		= imx_mu_remove,
 	.driver = {
 		.name	= "imx_mu",
 		.of_match_table = imx_mu_dt_ids,
+		.pm = &imx_mu_pm_ops,
 	},
 };
 module_platform_driver(imx_mu_driver);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
