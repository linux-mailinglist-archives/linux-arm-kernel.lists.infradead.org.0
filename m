Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147C9B3396
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 04:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PpSH8CujDp2MfBY55E72qoBLOIhedY6Xh3lGFDR9zCo=; b=mgkBMb3EWWNdnKiVrGZqGzwAW6
	8miHht6jm2fpelK4wFzQSPwnDhNicMpsErjUF99a1v7ITZg/M8z07+aRwVDv4kJ2Eak1RHfMdUGRf
	Uj/EOCjoO70jRivSkeRSCOdkI+6MnMaKH3jOc8lZusSfyb5tZeaZQwi2zwrxRgcU+9ut/tsQhPWkV
	3SGwZsOHXPzIeqq1rE8BQmOHyeZL4kcabFIJX6qrCzYcR8Eg+KijYkItCGVOyNBp0K6bo91F5uJAi
	HmoFZkNmlcPTy+VB4cWiepeEZ5aUYrsaN1MQ/AV0QwbRpisKpzsBOjpq1f37L7qw+A2QJzszwGdnC
	VKkwud8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9hAL-00051Q-MW; Mon, 16 Sep 2019 02:55:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9h9x-0004mv-9v
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 02:54:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CB10F200513;
 Mon, 16 Sep 2019 04:54:35 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7239C20089C;
 Mon, 16 Sep 2019 04:54:17 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8BCD2402A8;
 Mon, 16 Sep 2019 10:53:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, dmitry.torokhov@gmail.com,
 aisheng.dong@nxp.com, ulf.hansson@linaro.org, fugang.duan@nxp.com,
 peng.fan@nxp.com, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 olof@lixom.net, mripard@kernel.org, arnd@arndb.de,
 jagan@amarulasolutions.com, dinguyen@kernel.org,
 bjorn.andersson@linaro.org, marcin.juszkiewicz@linaro.org,
 andriy.shevchenko@linux.intel.com, yuehaibing@huawei.com,
 cw00.choi@samsung.com, enric.balletbo@collabora.com,
 m.felsch@pengutronix.de, ping.bai@nxp.com, ronald@innovation.ch,
 stefan@agner.ch, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Subject: [PATCH V4 2/5] input: keyboard: imx_sc: Add i.MX system controller
 key support
Date: Mon, 16 Sep 2019 10:52:50 +0800
Message-Id: <1568602373-14164-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568602373-14164-1-git-send-email-Anson.Huang@nxp.com>
References: <1568602373-14164-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_195437_718579_C5AABD89 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
inside, the system controller is in charge of controlling power,
clock and scu key etc..

Adds i.MX system controller key driver support, Linux kernel has
to communicate with system controller via MU (message unit) IPC
to get scu key's status.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V3:
	- switch the debounce and repeat interval time for delay work schdule;
	- add .remove to handle group irq and notify etc..
---
 drivers/input/keyboard/Kconfig      |   7 ++
 drivers/input/keyboard/Makefile     |   1 +
 drivers/input/keyboard/imx_sc_key.c | 190 ++++++++++++++++++++++++++++++++++++
 3 files changed, 198 insertions(+)
 create mode 100644 drivers/input/keyboard/imx_sc_key.c

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 8911bc2..00f8428 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -469,6 +469,13 @@ config KEYBOARD_IMX
 	  To compile this driver as a module, choose M here: the
 	  module will be called imx_keypad.
 
+config KEYBOARD_IMX_SC_KEY
+	tristate "IMX SCU Key Driver"
+	depends on IMX_SCU
+	help
+	  This is the system controller key driver for NXP i.MX SoCs with
+	  system controller inside.
+
 config KEYBOARD_NEWTON
 	tristate "Newton keyboard"
 	select SERIO
diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
index 9510325..f5b1752 100644
--- a/drivers/input/keyboard/Makefile
+++ b/drivers/input/keyboard/Makefile
@@ -29,6 +29,7 @@ obj-$(CONFIG_KEYBOARD_HIL)		+= hil_kbd.o
 obj-$(CONFIG_KEYBOARD_HIL_OLD)		+= hilkbd.o
 obj-$(CONFIG_KEYBOARD_IPAQ_MICRO)	+= ipaq-micro-keys.o
 obj-$(CONFIG_KEYBOARD_IMX)		+= imx_keypad.o
+obj-$(CONFIG_KEYBOARD_IMX_SC_KEY)	+= imx_sc_key.o
 obj-$(CONFIG_KEYBOARD_HP6XX)		+= jornada680_kbd.o
 obj-$(CONFIG_KEYBOARD_HP7XX)		+= jornada720_kbd.o
 obj-$(CONFIG_KEYBOARD_LKKBD)		+= lkkbd.o
diff --git a/drivers/input/keyboard/imx_sc_key.c b/drivers/input/keyboard/imx_sc_key.c
new file mode 100644
index 0000000..59c68fa
--- /dev/null
+++ b/drivers/input/keyboard/imx_sc_key.c
@@ -0,0 +1,190 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/firmware/imx/sci.h>
+#include <linux/init.h>
+#include <linux/input.h>
+#include <linux/interrupt.h>
+#include <linux/jiffies.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+
+#define DEBOUNCE_TIME	100
+#define REPEAT_INTERVAL	60
+
+#define SC_IRQ_BUTTON		1
+#define SC_IRQ_GROUP_WAKE	3
+#define IMX_SC_MISC_FUNC_GET_BUTTON_STATUS	18
+
+struct imx_key_drv_data {
+	int keycode;
+	bool keystate;  /* 1: pressed, 0: release */
+	bool delay_check;
+	struct delayed_work check_work;
+	struct input_dev *input;
+	struct imx_sc_ipc *key_ipc_handle;
+	struct notifier_block key_notifier;
+};
+
+struct imx_sc_msg_key {
+	struct imx_sc_rpc_msg hdr;
+	u8 state;
+};
+
+static int imx_sc_key_notify(struct notifier_block *nb,
+			     unsigned long event, void *group)
+{
+	struct imx_key_drv_data *priv =
+				 container_of(nb,
+					      struct imx_key_drv_data,
+					      key_notifier);
+
+	if ((event & SC_IRQ_BUTTON) && (*(u8 *)group == SC_IRQ_GROUP_WAKE)
+	    && !priv->delay_check) {
+		priv->delay_check = 1;
+		schedule_delayed_work(&priv->check_work,
+				      msecs_to_jiffies(DEBOUNCE_TIME));
+	}
+
+	return 0;
+}
+
+static void imx_sc_check_for_events(struct work_struct *work)
+{
+	struct imx_key_drv_data *priv =
+				 container_of(work,
+					      struct imx_key_drv_data,
+					      check_work.work);
+	struct input_dev *input = priv->input;
+	struct imx_sc_msg_key msg;
+	struct imx_sc_rpc_msg *hdr = &msg.hdr;
+	bool state;
+	int ret;
+
+	hdr->ver = IMX_SC_RPC_VERSION;
+	hdr->svc = IMX_SC_RPC_SVC_MISC;
+	hdr->func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS;
+	hdr->size = 1;
+
+	ret = imx_scu_call_rpc(priv->key_ipc_handle, &msg, true);
+	if (ret) {
+		dev_err(&input->dev, "read imx sc key failed, ret %d\n", ret);
+		return;
+	}
+
+	state = (bool)msg.state;
+
+	if (!state && !priv->keystate)
+		state = true;
+
+	if (state ^ priv->keystate) {
+		pm_wakeup_event(input->dev.parent, 0);
+		priv->keystate = state;
+		input_event(input, EV_KEY, priv->keycode, state);
+		input_sync(input);
+		if (!state)
+			priv->delay_check = 0;
+		pm_relax(priv->input->dev.parent);
+	}
+
+	if (state)
+		schedule_delayed_work(&priv->check_work,
+				      msecs_to_jiffies(REPEAT_INTERVAL));
+}
+
+static int imx_sc_key_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	static struct imx_key_drv_data *priv;
+	struct input_dev *input;
+	int ret;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	ret = imx_scu_get_handle(&priv->key_ipc_handle);
+	if (ret)
+		return ret;
+
+	if (of_property_read_u32(np, "linux,keycode", &priv->keycode)) {
+		dev_err(&pdev->dev, "missing KEY_POWER in DT\n");
+		return -EINVAL;
+	}
+
+	INIT_DELAYED_WORK(&priv->check_work, imx_sc_check_for_events);
+
+	input = devm_input_allocate_device(&pdev->dev);
+	if (!input) {
+		dev_err(&pdev->dev, "failed to allocate the input device\n");
+		return -ENOMEM;
+	}
+
+	input->name = pdev->name;
+	input->phys = "imx-sc-key/input0";
+	input->id.bustype = BUS_HOST;
+
+	input_set_capability(input, EV_KEY, priv->keycode);
+
+	ret = input_register_device(input);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register input device\n");
+		return ret;
+	}
+
+	priv->input = input;
+	platform_set_drvdata(pdev, priv);
+
+	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, true);
+	if (ret) {
+		dev_warn(&pdev->dev, "enable scu group irq failed\n");
+		return ret;
+	}
+
+	priv->key_notifier.notifier_call = imx_sc_key_notify;
+	ret = imx_scu_irq_register_notifier(&priv->key_notifier);
+	if (ret) {
+		imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, false);
+		dev_warn(&pdev->dev, "register scu notifier failed\n");
+	}
+
+	return ret;
+}
+
+static int imx_sc_key_remove(struct platform_device *pdev)
+{
+	struct imx_key_drv_data *priv = platform_get_drvdata(pdev);
+
+	imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, false);
+	imx_scu_irq_unregister_notifier(&priv->key_notifier);
+	cancel_delayed_work_sync(&priv->check_work);
+
+	return 0;
+}
+
+static const struct of_device_id imx_sc_key_ids[] = {
+	{ .compatible = "fsl,imx-sc-key" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx_sc_key_ids);
+
+static struct platform_driver imx_sc_key_driver = {
+	.driver = {
+		.name = "imx-sc-key",
+		.of_match_table = imx_sc_key_ids,
+	},
+	.probe = imx_sc_key_probe,
+	.remove = imx_sc_key_remove,
+};
+module_platform_driver(imx_sc_key_driver);
+
+MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
+MODULE_DESCRIPTION("i.MX System Controller Key Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
