Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A517217567A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ShT4ruOwn7LcDc7UTbW2PsLrg89w3N6+mV1LAjQrAOE=; b=HWF
	420u6BDVFI7sEGIXG5TzhPe8Mz4Q33boANzaKZoAC+ww3+qsq/qAmR/comH7xm/CXi1Nq8mQh3h+B
	GKEkqWfPmW42R20LZn/09+tgsJlZJOKLR5E19ZyzZZjcpVbUd/dX0VADydqCiKmbjbdIspKlAqcRq
	JwutsxNRl36+m7y78are6RfJkggEKYy3AjBpSdKOBMtS2w88RFPmD3f3rDxh19JzjMUssE9TEn0I9
	FUVoVJRSHaBC/8uJQFG4O3vYmVJXHmtQSAZeaqPkqlNY5ugFrMZAZ1PGYow+HfGUtQllJzqPQ6t2J
	Uid1DnO0/E9sVAWpjGbg2CJsJmVCbSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gwL-0001k9-6X; Mon, 02 Mar 2020 09:00:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gwE-0001jb-SF
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 09:00:36 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D8DF3200F3E;
 Mon,  2 Mar 2020 10:00:32 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3462E20017C;
 Mon,  2 Mar 2020 10:00:27 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9A08C402A7;
 Mon,  2 Mar 2020 17:00:20 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3] thermal: imx_thermal: Use __maybe_unused instead of
 CONFIG_PM_SLEEP
Date: Mon,  2 Mar 2020 16:54:26 +0800
Message-Id: <1583139266-23615-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_010035_182113_6065D2E4 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use __maybe_unused for power management related functions instead
of #if CONFIG_PM_SLEEP to simplify the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- drop the reviewed-by tag.
---
 drivers/thermal/imx_thermal.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index bb6754a..e75dda5 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -878,8 +878,7 @@ static int imx_thermal_remove(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int imx_thermal_suspend(struct device *dev)
+static int __maybe_unused imx_thermal_suspend(struct device *dev)
 {
 	struct imx_thermal_data *data = dev_get_drvdata(dev);
 	struct regmap *map = data->tempmon;
@@ -900,7 +899,7 @@ static int imx_thermal_suspend(struct device *dev)
 	return 0;
 }
 
-static int imx_thermal_resume(struct device *dev)
+static int __maybe_unused imx_thermal_resume(struct device *dev)
 {
 	struct imx_thermal_data *data = dev_get_drvdata(dev);
 	struct regmap *map = data->tempmon;
@@ -918,7 +917,6 @@ static int imx_thermal_resume(struct device *dev)
 
 	return 0;
 }
-#endif
 
 static SIMPLE_DEV_PM_OPS(imx_thermal_pm_ops,
 			 imx_thermal_suspend, imx_thermal_resume);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
