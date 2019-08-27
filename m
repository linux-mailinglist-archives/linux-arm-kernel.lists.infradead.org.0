Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62939E7FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1S8zUINhHIqeJiAp3IZfdK3+giaKXZqVIlspqiGQuhY=; b=tZIBtX0mQrRQSN
	mj9exJ2ziGd/NS4fdcO2jWEgpUnSOUC9E7ieXLmcVTMaK2kAT9J828xECmiz4FKKI+szyLnHz/K5n
	F6nbJNZdekY25rAIUvOLmB+oAQ1QZbAPTdfXEIG9yJmB74JruE0pUb9r+Q7myNdxlKQcIhT4fSswO
	qSyrXSLEMHmQWLh5BpNej/HF0iX4ZszJvcgte/KWCZWupLj5qpobVmMrdWVCWcuvMdwPTLYB2KaTl
	e8R4B3hhilBSSK0/UrG016+tfGnuqqAG0Y+o4FC3vAUShvWR4FEHVeMFy/5WbQBnsLbkoYsTKYxX4
	ifsQxRCiqexE71+ty+XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aeJ-0001uj-40; Tue, 27 Aug 2019 12:32:35 +0000
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2adb-0001T5-A6
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:31:54 +0000
Received: from erd987.prtnl (erd987.prtnl [192.168.237.3])
 by sparta (Postfix) with ESMTP id 8D94844A009E;
 Tue, 27 Aug 2019 14:33:46 +0200 (CEST)
From: Robin van der Gracht <robin@protonic.nl>
To: Robin Gong <yibin.gong@nxp.com>
Subject: [PATCH v2 1/2] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Date: Tue, 27 Aug 2019 14:32:15 +0200
Message-Id: <20190827123216.32728-1-robin@protonic.nl>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_053151_900201_385E6A02 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>,
 Robin van der Gracht <robin@protonic.nl>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 Adam Ford <aford173@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The first generation i.MX6 processors does not send an interrupt when the
power key is pressed. It sends a power down request interrupt if the key is
released before a hard shutdown (5 second press). This should allow
software to bring down the SoC safely.

For this driver to work as a regular power key with the older SoCs, we need
to send a keypress AND release when we get the power down request irq.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 .../devicetree/bindings/crypto/fsl-sec4.txt   | 16 ++++--
 drivers/input/keyboard/Kconfig                |  2 +-
 drivers/input/keyboard/snvs_pwrkey.c          | 52 ++++++++++++++++---
 3 files changed, 57 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/fsl-sec4.txt b/Documentation/devicetree/bindings/crypto/fsl-sec4.txt
index 2fe245ca816a..e4fbb9797082 100644
--- a/Documentation/devicetree/bindings/crypto/fsl-sec4.txt
+++ b/Documentation/devicetree/bindings/crypto/fsl-sec4.txt
@@ -420,14 +420,22 @@ EXAMPLE
 =====================================================================
 System ON/OFF key driver
 
-  The snvs-pwrkey is designed to enable POWER key function which controlled
-  by SNVS ONOFF, the driver can report the status of POWER key and wakeup
-  system if pressed after system suspend.
+  The snvs-pwrkey is designed to enable POWER key function which is controlled
+  by SNVS ONOFF. It can wakeup the system if pressed after system suspend.
+
+  There are two generations of SVNS pwrkey hardware. The first generation is
+  included in i.MX6 Solo, DualLite and Quad processors. The second generation
+  is included in i.MX6 SoloX and newer SoCs.
+
+  Second generation SNVS can detect and report the status of POWER key, but the
+  first generation can only detect a key release and so emits an instantaneous
+  press and release event when the key is released.
 
   - compatible:
       Usage: required
       Value type: <string>
-      Definition: Mush include "fsl,sec-v4.0-pwrkey".
+      Definition: Must include "fsl,sec-v4.0-pwrkey" for i.MX6 SoloX and newer
+	   or "fsl,imx6qdl-snvs-pwrkey" for older SoCs.
 
   - interrupts:
       Usage: required
diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 7c4f19dab34f..937e58da5ce1 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -436,7 +436,7 @@ config KEYBOARD_SNVS_PWRKEY
 	depends on OF
 	help
 	  This is the snvs powerkey driver for the Freescale i.MX application
-	  processors that are newer than i.MX6 SX.
+	  processors.
 
 	  To compile this driver as a module, choose M here; the
 	  module will be called snvs_pwrkey.
diff --git a/drivers/input/keyboard/snvs_pwrkey.c b/drivers/input/keyboard/snvs_pwrkey.c
index 5342d8d45f81..d71c44733103 100644
--- a/drivers/input/keyboard/snvs_pwrkey.c
+++ b/drivers/input/keyboard/snvs_pwrkey.c
@@ -29,6 +29,11 @@
 #define DEBOUNCE_TIME 30
 #define REPEAT_INTERVAL 60
 
+enum imx_snvs_hwtype {
+	IMX6SX_SNVS,	/* i.MX6 SoloX and newer */
+	IMX6QDL_SNVS,	/* i.MX6 Solo, DualLite and Quad */
+};
+
 struct pwrkey_drv_data {
 	struct regmap *snvs;
 	int irq;
@@ -37,14 +42,41 @@ struct pwrkey_drv_data {
 	int wakeup;
 	struct timer_list check_timer;
 	struct input_dev *input;
+	enum imx_snvs_hwtype hwtype;
 };
 
+static const struct of_device_id imx_snvs_pwrkey_ids[] = {
+	{
+		.compatible = "fsl,sec-v4.0-pwrkey",
+		.data = (const void *)IMX6SX_SNVS,
+	},
+	{
+		.compatible = "fsl,imx6qdl-snvs-pwrkey",
+		.data = (const void *)IMX6QDL_SNVS,
+	},
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, imx_snvs_pwrkey_ids);
+
 static void imx_imx_snvs_check_for_events(struct timer_list *t)
 {
 	struct pwrkey_drv_data *pdata = from_timer(pdata, t, check_timer);
 	struct input_dev *input = pdata->input;
 	u32 state;
 
+	if (pdata->hwtype == IMX6QDL_SNVS) {
+		/*
+		 * The first generation i.MX6 SoCs only sends an interrupt on
+		 * button release. To mimic power-key usage, we'll prepend a
+		 * press event.
+		 */
+		input_report_key(input, pdata->keycode, 1);
+		input_report_key(input, pdata->keycode, 0);
+		input_sync(input);
+		pm_relax(input->dev.parent);
+		return;
+	}
+
 	regmap_read(pdata->snvs, SNVS_HPSR_REG, &state);
 	state = state & SNVS_HPSR_BTN ? 1 : 0;
 
@@ -67,13 +99,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void *dev_id)
 {
 	struct platform_device *pdev = dev_id;
 	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
+	unsigned long expire = jiffies;
 	u32 lp_status;
 
 	pm_wakeup_event(pdata->input->dev.parent, 0);
 
 	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
-	if (lp_status & SNVS_LPSR_SPO)
-		mod_timer(&pdata->check_timer, jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
+	if (lp_status & SNVS_LPSR_SPO) {
+		if (pdata->hwtype == IMX6SX_SNVS)
+			expire += msecs_to_jiffies(DEBOUNCE_TIME);
+		mod_timer(&pdata->check_timer, expire);
+	}
 
 	/* clear SPO status */
 	regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);
@@ -93,6 +129,7 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
 	struct pwrkey_drv_data *pdata = NULL;
 	struct input_dev *input = NULL;
 	struct device_node *np;
+	const struct of_device_id *match;
 	int error;
 
 	/* Get SNVS register Page */
@@ -100,6 +137,10 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
 	if (!np)
 		return -ENODEV;
 
+	match = of_match_node(imx_snvs_pwrkey_ids, np);
+	if (!match)
+		return -ENODEV;
+
 	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 	if (!pdata)
 		return -ENOMEM;
@@ -115,6 +156,7 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
 		dev_warn(&pdev->dev, "KEY_POWER without setting in dts\n");
 	}
 
+	pdata->hwtype = (enum imx_snvs_hwtype)match->data;
 	pdata->wakeup = of_property_read_bool(np, "wakeup-source");
 
 	pdata->irq = platform_get_irq(pdev, 0);
@@ -175,12 +217,6 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id imx_snvs_pwrkey_ids[] = {
-	{ .compatible = "fsl,sec-v4.0-pwrkey" },
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, imx_snvs_pwrkey_ids);
-
 static struct platform_driver imx_snvs_pwrkey_driver = {
 	.driver = {
 		.name = "snvs_pwrkey",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
