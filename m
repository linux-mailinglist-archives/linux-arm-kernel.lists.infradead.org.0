Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E2CA7BA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u53+2Xy1FMK7XJv5zBHA3KMza+6MoMnYRwSQ5QB4SGI=; b=Xo4/4n1em3IY8y
	felFK4YO96BQAeebcjtV6tSvNH/Yo624uXVoHh1CmpSyiraJYswv6DGLY7BUsvmPgIgV1gXWqg6ZJ
	UDQV2VVFKQlosywmM4kj5r8mC0JPqFrvzIEB7miGkLJfEi17CCwx7UFNrIa9Sks7QKjoGYsj9UE6W
	iWZD5nAqAmGn5n9iKqg00h90IINGWM1XG0VXGDZYfrm2+XHPl9JydAIPISKoJ+cB3M1bPpmPjWDmd
	nY9rW7sh4j42j2iLUdxSd5xJ0ynxUCJeLViOqh/7RhBMjK4JqT7yeXo4X5H9B+mAEkRbSXfckWCt+
	tbN0pHwWjXIr3hEqlAsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ohx-0004kt-7h; Wed, 04 Sep 2019 06:23:57 +0000
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Ohi-0004jN-Tt
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:23:44 +0000
Received: from troy.prtnl (troy.prtnl [192.168.224.29])
 by sparta (Postfix) with ESMTP id DF3DC44A0022;
 Wed,  4 Sep 2019 08:25:30 +0200 (CEST)
From: Robin van der Gracht <robin@protonic.nl>
To: robin@protonic.nl
Subject: [PATCH v3] input: keyboard: snvs_pwrkey: Send key events for i.MX6 S,
 DL and Q
Date: Wed,  4 Sep 2019 06:23:29 +0000
Message-Id: <20190904062329.97520-1-robin@protonic.nl>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_232343_319296_BB341107 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Adam Ford <aford173@gmail.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
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

Changes v2 -> v3:
 - Drop alt compatible string for identifying first revision snvs hardware,
   read minor revision from register instead.
 - Drop imx6qdl.dtsi modification and device-tree binding documentation.
 - Add an additional input_sync() to create 2 seperate input reports for press
   and release.

 drivers/input/keyboard/Kconfig       |  2 +-
 drivers/input/keyboard/snvs_pwrkey.c | 28 ++++++++++++++++++++++++++--
 2 files changed, 27 insertions(+), 3 deletions(-)

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
index 5342d8d45f81..828580eee0d2 100644
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
@@ -45,6 +47,20 @@ static void imx_imx_snvs_check_for_events(struct timer_list *t)
 	struct input_dev *input = pdata->input;
 	u32 state;
 
+	if (pdata->minor_rev == 0) {
+		/*
+		 * The first generation i.MX6 SoCs only sends an interrupt on
+		 * button release. To mimic power-key usage, we'll prepend a
+		 * press event.
+		 */
+		input_report_key(input, pdata->keycode, 1);
+		input_sync(input);
+		input_report_key(input, pdata->keycode, 0);
+		input_sync(input);
+		pm_relax(input->dev.parent);
+		return;
+	}
+
 	regmap_read(pdata->snvs, SNVS_HPSR_REG, &state);
 	state = state & SNVS_HPSR_BTN ? 1 : 0;
 
@@ -67,13 +83,17 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void *dev_id)
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
+		if (pdata->minor_rev > 0)
+			expire = jiffies + msecs_to_jiffies(DEBOUNCE_TIME);
+		mod_timer(&pdata->check_timer, expire);
+	}
 
 	/* clear SPO status */
 	regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);
@@ -94,6 +114,7 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
 	struct input_dev *input = NULL;
 	struct device_node *np;
 	int error;
+	u32 vid;
 
 	/* Get SNVS register Page */
 	np = pdev->dev.of_node;
@@ -123,6 +144,9 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
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
