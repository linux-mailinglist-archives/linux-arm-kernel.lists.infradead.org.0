Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 881AA2AF1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 09:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9XtBWsjyRk36qqOo+XF1kSPfYa06hT/jUEcUEm91jc=; b=AmEBlAH7fq7z0d
	qrW0CzwHMRHVVz7rWj/M2KxdBeWFp59bXeNcZjG/XICrTfNEqQGkFEReReg9rpHyeXw8qW3MMep6Q
	RfohnKwi05Z425PTDnNfCYHnxBvWpY4oTWnU7RXKiZdBDp2m+GxaSthNUnXb2OoK6Zo9pcturiXK8
	fxqVI7cdrRtZ0MpzDXyR1qww4TpSlS2YGqlyNscce87/rSShgcwcs9nn+IpSR7aRVRmCmvl9CsT35
	lydsMouveMzOHlDszKY43TrpCa/YwOQelZk99nBeAWSfptdNHisgiC3ZYo00m1w+wKv8Ia7qJ9PPQ
	fwXDF8vC9dtCTqOUasVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9eC-0003fT-K7; Mon, 27 May 2019 07:02:16 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9dd-0003BP-Sl
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 07:01:43 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A55FF200ACF;
 Mon, 27 May 2019 09:01:40 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3B79F200ADE;
 Mon, 27 May 2019 09:01:33 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 817B1402B5;
 Mon, 27 May 2019 15:01:24 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, wim@linux-watchdog.org,
 linux@roeck-us.net, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 aisheng.dong@nxp.com, ulf.hansson@linaro.org, peng.fan@nxp.com,
 daniel.baluta@nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 RESEND 3/3] watchdog: imx_sc: Add pretimeout support
Date: Mon, 27 May 2019 15:03:17 +0800
Message-Id: <20190527070317.16904-3-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527070317.16904-1-Anson.Huang@nxp.com>
References: <20190527070317.16904-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_000142_205121_EE6D3EC3 
X-CRM114-Status: GOOD (  14.59  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX system controller watchdog can support pretimeout IRQ
via general SCU MU IRQ, it depends on IMX_SCU and driver MUST
be probed after SCU IPC ready, then enable corresponding SCU
IRQ group and register SCU IRQ notifier, when watchdog pretimeout
IRQ fires, SCU MU IRQ will be handled and watchdog pretimeout
notifier will be called to handle the event.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---
No change, just rebase the patch to top of linux-next.
---
 drivers/watchdog/Kconfig      |   1 +
 drivers/watchdog/imx_sc_wdt.c | 116 +++++++++++++++++++++++++++++++++++-------
 2 files changed, 98 insertions(+), 19 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index ffe7545..975e573 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -717,6 +717,7 @@ config IMX2_WDT
 config IMX_SC_WDT
 	tristate "IMX SC Watchdog"
 	depends on HAVE_ARM_SMCCC
+	depends on IMX_SCU
 	select WATCHDOG_CORE
 	help
 	  This is the driver for the system controller watchdog
diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
index 49848b6..6ecc03f 100644
--- a/drivers/watchdog/imx_sc_wdt.c
+++ b/drivers/watchdog/imx_sc_wdt.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/arm-smccc.h>
+#include <linux/firmware/imx/sci.h>
 #include <linux/io.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -33,11 +34,19 @@
 
 #define SC_TIMER_WDOG_ACTION_PARTITION	0
 
+#define SC_IRQ_WDOG			1
+#define SC_IRQ_GROUP_WDOG		1
+
 static bool nowayout = WATCHDOG_NOWAYOUT;
 module_param(nowayout, bool, 0000);
 MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
 		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
 
+struct imx_sc_wdt_device {
+	struct watchdog_device wdd;
+	struct notifier_block wdt_notifier;
+};
+
 static int imx_sc_wdt_ping(struct watchdog_device *wdog)
 {
 	struct arm_smccc_res res;
@@ -85,24 +94,66 @@ static int imx_sc_wdt_set_timeout(struct watchdog_device *wdog,
 	return res.a0 ? -EACCES : 0;
 }
 
+static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
+				     unsigned int pretimeout)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_SET_PRETIME_WDOG,
+		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
+	if (res.a0)
+		return -EACCES;
+
+	wdog->pretimeout = pretimeout;
+
+	return 0;
+}
+
+static int imx_sc_wdt_notify(struct notifier_block *nb,
+			     unsigned long event, void *group)
+{
+	struct imx_sc_wdt_device *imx_sc_wdd =
+				 container_of(nb,
+					      struct imx_sc_wdt_device,
+					      wdt_notifier);
+
+	if (event & SC_IRQ_WDOG &&
+	    *(u8 *)group == SC_IRQ_GROUP_WDOG)
+		watchdog_notify_pretimeout(&imx_sc_wdd->wdd);
+
+	return 0;
+}
+
+static void imx_sc_wdt_action(void *data)
+{
+	struct notifier_block *wdt_notifier = data;
+
+	imx_scu_irq_unregister_notifier(wdt_notifier);
+	imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
+				 SC_IRQ_WDOG,
+				 false);
+}
+
 static const struct watchdog_ops imx_sc_wdt_ops = {
 	.owner = THIS_MODULE,
 	.start = imx_sc_wdt_start,
 	.stop  = imx_sc_wdt_stop,
 	.ping  = imx_sc_wdt_ping,
 	.set_timeout = imx_sc_wdt_set_timeout,
+	.set_pretimeout = imx_sc_wdt_set_pretimeout,
 };
 
-static const struct watchdog_info imx_sc_wdt_info = {
+static struct watchdog_info imx_sc_wdt_info = {
 	.identity	= "i.MX SC watchdog timer",
 	.options	= WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING |
-			  WDIOF_MAGICCLOSE | WDIOF_PRETIMEOUT,
+			  WDIOF_MAGICCLOSE,
 };
 
 static int imx_sc_wdt_probe(struct platform_device *pdev)
 {
+	struct imx_sc_wdt_device *imx_sc_wdd;
+	struct watchdog_device *wdog;
 	struct device *dev = &pdev->dev;
-	struct watchdog_device *imx_sc_wdd;
 	int ret;
 
 	imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd), GFP_KERNEL);
@@ -111,42 +162,69 @@ static int imx_sc_wdt_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, imx_sc_wdd);
 
-	imx_sc_wdd->info = &imx_sc_wdt_info;
-	imx_sc_wdd->ops = &imx_sc_wdt_ops;
-	imx_sc_wdd->min_timeout = 1;
-	imx_sc_wdd->max_timeout = MAX_TIMEOUT;
-	imx_sc_wdd->parent = dev;
-	imx_sc_wdd->timeout = DEFAULT_TIMEOUT;
+	wdog = &imx_sc_wdd->wdd;
+	wdog->info = &imx_sc_wdt_info;
+	wdog->ops = &imx_sc_wdt_ops;
+	wdog->min_timeout = 1;
+	wdog->max_timeout = MAX_TIMEOUT;
+	wdog->parent = dev;
+	wdog->timeout = DEFAULT_TIMEOUT;
 
-	watchdog_init_timeout(imx_sc_wdd, 0, dev);
-	watchdog_stop_on_reboot(imx_sc_wdd);
-	watchdog_stop_on_unregister(imx_sc_wdd);
+	watchdog_init_timeout(wdog, 0, dev);
+	watchdog_stop_on_reboot(wdog);
+	watchdog_stop_on_unregister(wdog);
 
-	ret = devm_watchdog_register_device(dev, imx_sc_wdd);
+	ret = devm_watchdog_register_device(dev, wdog);
 	if (ret) {
 		dev_err(dev, "Failed to register watchdog device\n");
 		return ret;
 	}
 
+	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
+				       SC_IRQ_WDOG,
+				       true);
+	if (ret) {
+		dev_warn(dev, "Enable irq failed, pretimeout NOT supported\n");
+		return 0;
+	}
+
+	imx_sc_wdd->wdt_notifier.notifier_call = imx_sc_wdt_notify;
+	ret = imx_scu_irq_register_notifier(&imx_sc_wdd->wdt_notifier);
+	if (ret) {
+		imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
+					 SC_IRQ_WDOG,
+					 false);
+		dev_warn(dev,
+			 "Register irq notifier failed, pretimeout NOT supported\n");
+		return 0;
+	}
+
+	ret = devm_add_action_or_reset(dev, imx_sc_wdt_action,
+				       &imx_sc_wdd->wdt_notifier);
+	if (!ret)
+		imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
+	else
+		dev_warn(dev, "Add action failed, pretimeout NOT supported\n");
+
 	return 0;
 }
 
 static int __maybe_unused imx_sc_wdt_suspend(struct device *dev)
 {
-	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
+	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
 
-	if (watchdog_active(imx_sc_wdd))
-		imx_sc_wdt_stop(imx_sc_wdd);
+	if (watchdog_active(&imx_sc_wdd->wdd))
+		imx_sc_wdt_stop(&imx_sc_wdd->wdd);
 
 	return 0;
 }
 
 static int __maybe_unused imx_sc_wdt_resume(struct device *dev)
 {
-	struct watchdog_device *imx_sc_wdd = dev_get_drvdata(dev);
+	struct imx_sc_wdt_device *imx_sc_wdd = dev_get_drvdata(dev);
 
-	if (watchdog_active(imx_sc_wdd))
-		imx_sc_wdt_start(imx_sc_wdd);
+	if (watchdog_active(&imx_sc_wdd->wdd))
+		imx_sc_wdt_start(&imx_sc_wdd->wdd);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
