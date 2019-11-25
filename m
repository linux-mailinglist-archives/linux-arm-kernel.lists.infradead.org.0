Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8F21091B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 17:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j0LGo5T6tKNlvATya76VByJiqSwwSglZ1dlngzIrr4w=; b=CPLiV1SqNZuDmd
	+NZcIns5dxLA1dr6DzyJy5CPLqP2IeJJzfyKdW3QNoNLgwCwuktYWQS1QEM37cWwNZvdsOzUKf7Bf
	/ATCLVkxP77676I8Wuo0K8w2DptYCskm7cSe5Qy0fVj9cEDGnbHvLhTQZ25R1Opa8pEDV3IrSE0QP
	72KTzEQDRRBRx5WU4h0ccVoiZ7qlXjZYq5YJLb5gbPz3YxgtZ9ke69O5bVf5aYSwbW8f7bkwmXb4h
	6PmTp0oAlk3b2BgWoXE1vLejKui3CX0TeYnXQbd2UfjqrH3pD1XfxSFvFNAcdNRe9o77wYtpplIAA
	Kpl8IqnJRDo7MipGd+5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZH5d-0008Fu-As; Mon, 25 Nov 2019 16:19:53 +0000
Received: from d57e315a.static.ziggozakelijk.nl ([213.126.49.90]
 helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZH5U-0008FZ-L0
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 16:19:46 +0000
Received: from erd987.prtnl (erd987.prtnl [192.168.237.3])
 by sparta (Postfix) with ESMTP id A6E5944A00C3;
 Mon, 25 Nov 2019 17:13:45 +0100 (CET)
From: Robin van der Gracht <robin@protonic.nl>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: [PATCH v4] input: keyboard: snvs_pwrkey: Send key events for i.MX6 S,
 DL and Q
Date: Mon, 25 Nov 2019 17:12:10 +0100
Message-Id: <20191125161210.8275-1-robin@protonic.nl>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_081944_990413_A5B0C0D8 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Robin van der Gracht <robin@protonic.nl>, Adam Ford <aford173@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 RobinGong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
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

Changes v3 -> v4:
 * The key release irq handler is now emitting the press and release
   events directly, instead of the debounce timer handler.

 drivers/input/keyboard/Kconfig       |  2 +-
 drivers/input/keyboard/snvs_pwrkey.c | 28 +++++++++++++++++++++++++---
 2 files changed, 26 insertions(+), 4 deletions(-)

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
index 5342d8d45f81..4888e137cc5d 100644
--- a/drivers/input/keyboard/snvs_pwrkey.c
+++ b/drivers/input/keyboard/snvs_pwrkey.c
@@ -19,6 +19,7 @@
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
 
+#define SNVS_HPVIDR1_REG 0xF8
 #define SNVS_LPSR_REG	0x4C	/* LP Status Register */
 #define SNVS_LPCR_REG	0x38	/* LP Control Register */
 #define SNVS_HPSR_REG	0x14
@@ -37,6 +38,7 @@ struct pwrkey_drv_data {
 	int wakeup;
 	struct timer_list check_timer;
 	struct input_dev *input;
+	u8 minor_rev;
 };
 
 static void imx_imx_snvs_check_for_events(struct timer_list *t)
@@ -67,13 +69,29 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void *dev_id)
 {
 	struct platform_device *pdev = dev_id;
 	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
+	struct input_dev *input = pdata->input;
 	u32 lp_status;
 
-	pm_wakeup_event(pdata->input->dev.parent, 0);
+	pm_wakeup_event(input->dev.parent, 0);
 
 	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
-	if (lp_status & SNVS_LPSR_SPO)
-		mod_timer(&pdata->check_timer, jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
+	if (lp_status & SNVS_LPSR_SPO) {
+		if (pdata->minor_rev == 0) {
+			/*
+			 * The first generation i.MX6 SoCs only sends an
+			 * interrupt on button release. To mimic power-key
+			 * usage, we'll prepend a press event.
+			 */
+			input_report_key(input, pdata->keycode, 1);
+			input_sync(input);
+			input_report_key(input, pdata->keycode, 0);
+			input_sync(input);
+			pm_relax(input->dev.parent);
+		} else {
+			mod_timer(&pdata->check_timer,
+			          jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
+		}
+	}
 
 	/* clear SPO status */
 	regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);
@@ -94,6 +112,7 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
 	struct input_dev *input = NULL;
 	struct device_node *np;
 	int error;
+	u32 vid;
 
 	/* Get SNVS register Page */
 	np = pdev->dev.of_node;
@@ -123,6 +142,9 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	regmap_read(pdata->snvs, SNVS_HPVIDR1_REG, &vid);
+	pdata->minor_rev = vid & 0xff;
+
 	regmap_update_bits(pdata->snvs, SNVS_LPCR_REG, SNVS_LPCR_DEP_EN, SNVS_LPCR_DEP_EN);
 
 	/* clear the unexpected interrupt before driver ready */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
