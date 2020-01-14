Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8105E13B4BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 22:50:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a6aeev96rzbejD2IMG8Df9GBnUWvrgI2wVIJQBHATNM=; b=mCLiHh3uSOkGdazFmFSEk2CQ8G
	qiP7MgJ8J87Oad9jGpp8sHMJx+PY7j3DtXiUbEjYEcx1AvSF7YDES2lSo3omnoNrP9VLTe9q5t/90
	EeirWmkjRfarBmkUVIjKWq09T0OxYAEnZtKvypUKBWqaxZ3b6sZbXIhrNrQFaR3YlW5WvT3alxlGI
	aHUulaGi8mGL7KrdI6b5npdv/TpYEbuQX/95vlS1Kp/mnAHrCfseanbWuLWauG7yOfrnw3LWXCDg+
	vw49Lu+mUe0Y11kfnDjCE1CQhVAu7kLFyx+YOGGNKBq76Gdi5uE0tTkzZhDCXFXV+5mGvUzy0Gsgt
	IrSUDkeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irU51-00078l-Uo; Tue, 14 Jan 2020 21:50:31 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irU31-0004Kg-J0; Tue, 14 Jan 2020 21:48:29 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3BB9A2004FC;
 Tue, 14 Jan 2020 22:48:26 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 102542000EA;
 Tue, 14 Jan 2020 22:48:20 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 90B72402AF;
 Wed, 15 Jan 2020 05:48:12 +0800 (SGT)
From: Han Xu <han.xu@nxp.com>
To: vkoul@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 esben@geanix.com, boris.brezillon@collabora.com
Subject: [PATCH 5/6] mtd: rawnand: gpmi: refine the runtime pm ops
Date: Wed, 15 Jan 2020 05:44:02 +0800
Message-Id: <1579038243-28550-6-git-send-email-han.xu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
References: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_134827_925430_04678708 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-imx@nxp.com, dmaengine@vger.kernel.org, han.xu@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

several changes for runtime code in gpmi-nand driver

- Always invoke runtime get/put in same function to balance the usage
counter.

- leverage the runtime pm for system pm, move acquire dma to runtime pm
to acquire dma only when needed.

- add pm_runtime_dont_use_autosuspend in err path. If driver failed to
probe before runtime pm timeout, such as NAND not mounted in socket,
runtime suspend won't be called without the change.

Signed-off-by: Han Xu <han.xu@nxp.com>
---
 drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c | 56 +++++++++++-----------
 1 file changed, 29 insertions(+), 27 deletions(-)

diff --git a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
index fcc7325f2a10..73644c96fa9b 100644
--- a/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
+++ b/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c
@@ -183,7 +183,6 @@ static int gpmi_init(struct gpmi_nand_data *this)
 	 */
 	writel(BM_GPMI_CTRL1_DECOUPLE_CS, r->gpmi_regs + HW_GPMI_CTRL1_SET);
 
-	return 0;
 err_out:
 	pm_runtime_mark_last_busy(this->dev);
 	pm_runtime_put_autosuspend(this->dev);
@@ -556,7 +555,6 @@ static int bch_set_geometry(struct gpmi_nand_data *this)
 	/* Set *all* chip selects to use layout 0. */
 	writel(0, r->bch_regs + HW_BCH_LAYOUTSELECT);
 
-	ret = 0;
 err_out:
 	pm_runtime_mark_last_busy(this->dev);
 	pm_runtime_put_autosuspend(this->dev);
@@ -1213,10 +1211,6 @@ static int acquire_resources(struct gpmi_nand_data *this)
 	if (ret)
 		goto exit_regs;
 
-	ret = acquire_dma_channels(this);
-	if (ret)
-		goto exit_regs;
-
 	ret = gpmi_get_clks(this);
 	if (ret)
 		goto exit_clock;
@@ -2656,15 +2650,9 @@ static int gpmi_nand_probe(struct platform_device *pdev)
 	if (ret)
 		goto exit_acquire_resources;
 
-	ret = __gpmi_enable_clk(this, true);
-	if (ret)
-		goto exit_nfc_init;
-
+	pm_runtime_enable(&pdev->dev);
 	pm_runtime_set_autosuspend_delay(&pdev->dev, 500);
 	pm_runtime_use_autosuspend(&pdev->dev);
-	pm_runtime_set_active(&pdev->dev);
-	pm_runtime_enable(&pdev->dev);
-	pm_runtime_get_sync(&pdev->dev);
 
 	ret = gpmi_init(this);
 	if (ret)
@@ -2674,15 +2662,12 @@ static int gpmi_nand_probe(struct platform_device *pdev)
 	if (ret)
 		goto exit_nfc_init;
 
-	pm_runtime_mark_last_busy(&pdev->dev);
-	pm_runtime_put_autosuspend(&pdev->dev);
-
 	dev_info(this->dev, "driver registered.\n");
 
 	return 0;
 
 exit_nfc_init:
-	pm_runtime_put(&pdev->dev);
+	pm_runtime_dont_use_autosuspend(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 	release_resources(this);
 exit_acquire_resources:
@@ -2694,7 +2679,6 @@ static int gpmi_nand_remove(struct platform_device *pdev)
 {
 	struct gpmi_nand_data *this = platform_get_drvdata(pdev);
 
-	pm_runtime_put_sync(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 
 	nand_release(&this->nand);
@@ -2706,10 +2690,11 @@ static int gpmi_nand_remove(struct platform_device *pdev)
 #ifdef CONFIG_PM_SLEEP
 static int gpmi_pm_suspend(struct device *dev)
 {
-	struct gpmi_nand_data *this = dev_get_drvdata(dev);
+	int ret;
 
-	release_dma_channels(this);
-	return 0;
+	ret = pm_runtime_force_suspend(dev);
+
+	return ret;
 }
 
 static int gpmi_pm_resume(struct device *dev)
@@ -2717,9 +2702,11 @@ static int gpmi_pm_resume(struct device *dev)
 	struct gpmi_nand_data *this = dev_get_drvdata(dev);
 	int ret;
 
-	ret = acquire_dma_channels(this);
-	if (ret < 0)
+	ret = pm_runtime_force_resume(dev);
+	if (ret) {
+		dev_err(this->dev, "Error in resume %d\n", ret);
 		return ret;
+	}
 
 	/* re-init the GPMI registers */
 	ret = gpmi_init(this);
@@ -2743,18 +2730,33 @@ static int gpmi_pm_resume(struct device *dev)
 }
 #endif /* CONFIG_PM_SLEEP */
 
-static int __maybe_unused gpmi_runtime_suspend(struct device *dev)
+#define gpmi_enable_clk(x)	__gpmi_enable_clk(x, true)
+#define gpmi_disable_clk(x)	__gpmi_enable_clk(x, false)
+
+static int gpmi_runtime_suspend(struct device *dev)
 {
 	struct gpmi_nand_data *this = dev_get_drvdata(dev);
 
-	return __gpmi_enable_clk(this, false);
+	gpmi_disable_clk(this);
+	release_dma_channels(this);
+
+	return 0;
 }
 
-static int __maybe_unused gpmi_runtime_resume(struct device *dev)
+static int gpmi_runtime_resume(struct device *dev)
 {
 	struct gpmi_nand_data *this = dev_get_drvdata(dev);
+	int ret;
 
-	return __gpmi_enable_clk(this, true);
+	ret = gpmi_enable_clk(this);
+	if (ret)
+		return ret;
+
+	ret = acquire_dma_channels(this);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static const struct dev_pm_ops gpmi_pm_ops = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
