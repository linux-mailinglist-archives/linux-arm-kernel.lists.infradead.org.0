Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAABD2AD33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 05:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WivRgEGozuDX4W0dG76lkbxgxEGDdOh4jK5pyFKMhY=; b=Hx5KsjpbmgR9+x
	C3QzgR8AzG2N2E3r/jVjX5DwP+XFd7WFaLegRxvg8WeSH2rCEzjDj+1Me+6PsYjli8Q8oS46RtrFT
	CkwXDAllrA2IZuQJoaO7GD9F8PKtWL/lJlPLxR+gzCFRbyJaxwjGF/WVqAd8j7z292SUHxL+o5FZV
	7y7O1JhnXJQah7PeTlQR1nXXqQFNhTbZsGP4mizXkD0xYfz4GehVJ2/4GAkX74Lz4TvUZBW2SPP/8
	BhfG16kp6qdaZa4xpGC1HZy13h8gFfPvUz7w7b4QGuUaWO/fv6FdRjKMhDmOL+UrP8z6ypJMoJJeW
	Kn9rGLfCt9DewiFHFXzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV5xV-00031R-90; Mon, 27 May 2019 03:05:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV5wJ-0000Z5-WD
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 03:04:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C00BE20023A;
 Mon, 27 May 2019 05:04:42 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 477A9200A47;
 Mon, 27 May 2019 05:04:37 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 757F9402FF;
 Mon, 27 May 2019 11:04:30 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH v3 5/8] usb: chipidea: imx: add imx7ulp support
Date: Mon, 27 May 2019 11:06:13 +0800
Message-Id: <20190527030616.44397-6-peter.chen@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527030616.44397-1-peter.chen@nxp.com>
References: <20190527030616.44397-1-peter.chen@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_200444_993651_4F18C346 
X-CRM114-Status: GOOD (  14.36  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 Peter Chen <peter.chen@nxp.com>, linux-usb@vger.kernel.org,
 chunfeng.yun@mediatek.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In this commit, we add CI_HDRC_PMQOS to avoid system entering idle,
at imx7ulp, if the system enters idle, the DMA will stop, so the USB
transfer can't work at this case.

Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 drivers/usb/chipidea/ci_hdrc_imx.c | 28 +++++++++++++++++++++++++++-
 drivers/usb/chipidea/usbmisc_imx.c |  4 ++++
 include/linux/usb/chipidea.h       |  1 +
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/chipidea/ci_hdrc_imx.c b/drivers/usb/chipidea/ci_hdrc_imx.c
index ceec8d5985d4..a76708501236 100644
--- a/drivers/usb/chipidea/ci_hdrc_imx.c
+++ b/drivers/usb/chipidea/ci_hdrc_imx.c
@@ -13,6 +13,7 @@
 #include <linux/usb/of.h>
 #include <linux/clk.h>
 #include <linux/pinctrl/consumer.h>
+#include <linux/pm_qos.h>
 
 #include "ci.h"
 #include "ci_hdrc_imx.h"
@@ -63,6 +64,11 @@ static const struct ci_hdrc_imx_platform_flag imx7d_usb_data = {
 	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM,
 };
 
+static const struct ci_hdrc_imx_platform_flag imx7ulp_usb_data = {
+	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM |
+		CI_HDRC_PMQOS,
+};
+
 static const struct of_device_id ci_hdrc_imx_dt_ids[] = {
 	{ .compatible = "fsl,imx23-usb", .data = &imx23_usb_data},
 	{ .compatible = "fsl,imx28-usb", .data = &imx28_usb_data},
@@ -72,6 +78,7 @@ static const struct of_device_id ci_hdrc_imx_dt_ids[] = {
 	{ .compatible = "fsl,imx6sx-usb", .data = &imx6sx_usb_data},
 	{ .compatible = "fsl,imx6ul-usb", .data = &imx6ul_usb_data},
 	{ .compatible = "fsl,imx7d-usb", .data = &imx7d_usb_data},
+	{ .compatible = "fsl,imx7ulp-usb", .data = &imx7ulp_usb_data},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, ci_hdrc_imx_dt_ids);
@@ -93,6 +100,8 @@ struct ci_hdrc_imx_data {
 	struct clk *clk_ahb;
 	struct clk *clk_per;
 	/* --------------------------------- */
+	struct pm_qos_request pm_qos_req;
+	const struct ci_hdrc_imx_platform_flag *plat_data;
 };
 
 /* Common functions shared by usbmisc drivers */
@@ -309,6 +318,8 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
+	data->plat_data = imx_platform_flag;
+	pdata.flags |= imx_platform_flag->flags;
 	platform_set_drvdata(pdev, data);
 	data->usbmisc_data = usbmisc_get_init_data(dev);
 	if (IS_ERR(data->usbmisc_data))
@@ -369,6 +380,11 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 			}
 		}
 	}
+
+	if (pdata.flags & CI_HDRC_PMQOS)
+		pm_qos_add_request(&data->pm_qos_req,
+			PM_QOS_CPU_DMA_LATENCY, 0);
+
 	ret = imx_get_clks(dev);
 	if (ret)
 		goto disable_hsic_regulator;
@@ -396,7 +412,6 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 		usb_phy_init(pdata.usb_phy);
 	}
 
-	pdata.flags |= imx_platform_flag->flags;
 	if (pdata.flags & CI_HDRC_SUPPORTS_RUNTIME_PM)
 		data->supports_runtime_pm = true;
 
@@ -439,6 +454,8 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 disable_hsic_regulator:
 	if (data->hsic_pad_regulator)
 		ret = regulator_disable(data->hsic_pad_regulator);
+	if (pdata.flags & CI_HDRC_PMQOS)
+		pm_qos_remove_request(&data->pm_qos_req);
 	return ret;
 }
 
@@ -455,6 +472,8 @@ static int ci_hdrc_imx_remove(struct platform_device *pdev)
 	if (data->override_phy_control)
 		usb_phy_shutdown(data->phy);
 	imx_disable_unprepare_clks(&pdev->dev);
+	if (data->plat_data->flags & CI_HDRC_PMQOS)
+		pm_qos_remove_request(&data->pm_qos_req);
 	if (data->hsic_pad_regulator)
 		regulator_disable(data->hsic_pad_regulator);
 
@@ -480,6 +499,9 @@ static int __maybe_unused imx_controller_suspend(struct device *dev)
 	}
 
 	imx_disable_unprepare_clks(dev);
+	if (data->plat_data->flags & CI_HDRC_PMQOS)
+		pm_qos_remove_request(&data->pm_qos_req);
+
 	data->in_lpm = true;
 
 	return 0;
@@ -497,6 +519,10 @@ static int __maybe_unused imx_controller_resume(struct device *dev)
 		return 0;
 	}
 
+	if (data->plat_data->flags & CI_HDRC_PMQOS)
+		pm_qos_add_request(&data->pm_qos_req,
+			PM_QOS_CPU_DMA_LATENCY, 0);
+
 	ret = imx_prepare_enable_clks(dev);
 	if (ret)
 		return ret;
diff --git a/drivers/usb/chipidea/usbmisc_imx.c b/drivers/usb/chipidea/usbmisc_imx.c
index d8b67e150b12..b7a5727d0c8a 100644
--- a/drivers/usb/chipidea/usbmisc_imx.c
+++ b/drivers/usb/chipidea/usbmisc_imx.c
@@ -763,6 +763,10 @@ static const struct of_device_id usbmisc_imx_dt_ids[] = {
 		.compatible = "fsl,imx7d-usbmisc",
 		.data = &imx7d_usbmisc_ops,
 	},
+	{
+		.compatible = "fsl,imx7ulp-usbmisc",
+		.data = &imx7d_usbmisc_ops,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, usbmisc_imx_dt_ids);
diff --git a/include/linux/usb/chipidea.h b/include/linux/usb/chipidea.h
index 911e05af671e..edd89b7c8f18 100644
--- a/include/linux/usb/chipidea.h
+++ b/include/linux/usb/chipidea.h
@@ -61,6 +61,7 @@ struct ci_hdrc_platform_data {
 #define CI_HDRC_OVERRIDE_PHY_CONTROL	BIT(12) /* Glue layer manages phy */
 #define CI_HDRC_REQUIRES_ALIGNED_DMA	BIT(13)
 #define CI_HDRC_IMX_IS_HSIC		BIT(14)
+#define CI_HDRC_PMQOS			BIT(15)
 	enum usb_dr_mode	dr_mode;
 #define CI_HDRC_CONTROLLER_RESET_EVENT		0
 #define CI_HDRC_CONTROLLER_STOPPED_EVENT	1
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
