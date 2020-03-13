Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A9118412C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 08:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DG5qBzYnITWqC/v4hhSuzk9zYZRvXeVfqR86ULb3hGM=; b=YIv
	ccExndaHo0dH2w25W4SmFU+nN0rU3u6VvtA9zbvhtTSQBhftjuwnWlczqm6mt9gMRLRO8JKMHlpHJ
	YYmJzRZurqgJH3jsLnAaxh28CcGWStsos7lQZhlT0LSInVQJz17glQOOS2SGFMuzXWYcaCFmoIbrP
	dXPTT5oqUT0srCm6Nso2Pyxuwwycof0eWhoBpx4D3y9B6KTokTZboSV/XE1hx5fHsQJaSE6DMHO/F
	dUplvignWo/bmmPZwszCy4PmT2nHFKmSrSBA8j5jFVwOQu359Howptqs4cvUwQQ755ewUAwGdgXeh
	3EDza19AU393qTQPRc8dDH95CwgBiFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCeOO-0008G1-S2; Fri, 13 Mar 2020 07:06:00 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCeOH-0008FC-DL
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 07:05:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A2ED1A1282;
 Fri, 13 Mar 2020 08:05:48 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4B7461A132F;
 Fri, 13 Mar 2020 08:05:43 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 340FF40245;
 Fri, 13 Mar 2020 15:05:37 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: dmitry.torokhov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, robh@kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] input: keyboard: imx_sc_key: Use devm_add_action_or_reset()
 to handle all cleanups
Date: Fri, 13 Mar 2020 14:59:11 +0800
Message-Id: <1584082751-17047-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_000553_590025_852823AE 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Use devm_add_action_or_reset() to handle all cleanups of failure in
.probe and .remove, then .remove callback can be dropped.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/input/keyboard/imx_sc_key.c | 33 +++++++++++++++------------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/input/keyboard/imx_sc_key.c b/drivers/input/keyboard/imx_sc_key.c
index 2672fd4..eab5dfb 100644
--- a/drivers/input/keyboard/imx_sc_key.c
+++ b/drivers/input/keyboard/imx_sc_key.c
@@ -96,6 +96,15 @@ static void imx_sc_check_for_events(struct work_struct *work)
 				      msecs_to_jiffies(REPEAT_INTERVAL));
 }
 
+static void imx_sc_key_action(void *data)
+{
+	struct imx_key_drv_data *priv = data;
+
+	imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, false);
+	imx_scu_irq_unregister_notifier(&priv->key_notifier);
+	cancel_delayed_work_sync(&priv->check_work);
+}
+
 static int imx_sc_key_probe(struct platform_device *pdev)
 {
 	struct imx_key_drv_data *priv;
@@ -146,27 +155,16 @@ static int imx_sc_key_probe(struct platform_device *pdev)
 		return error;
 	}
 
+	error = devm_add_action_or_reset(&pdev->dev, imx_sc_key_action, &priv);
+	if (error)
+		return error;
+
 	priv->key_notifier.notifier_call = imx_sc_key_notify;
 	error = imx_scu_irq_register_notifier(&priv->key_notifier);
-	if (error) {
-		imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON,
-					 false);
+	if (error)
 		dev_err(&pdev->dev, "failed to register scu notifier\n");
-		return error;
-	}
-
-	return 0;
-}
-
-static int imx_sc_key_remove(struct platform_device *pdev)
-{
-	struct imx_key_drv_data *priv = platform_get_drvdata(pdev);
-
-	imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, false);
-	imx_scu_irq_unregister_notifier(&priv->key_notifier);
-	cancel_delayed_work_sync(&priv->check_work);
 
-	return 0;
+	return error;
 }
 
 static const struct of_device_id imx_sc_key_ids[] = {
@@ -181,7 +179,6 @@ static struct platform_driver imx_sc_key_driver = {
 		.of_match_table = imx_sc_key_ids,
 	},
 	.probe = imx_sc_key_probe,
-	.remove = imx_sc_key_remove,
 };
 module_platform_driver(imx_sc_key_driver);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
