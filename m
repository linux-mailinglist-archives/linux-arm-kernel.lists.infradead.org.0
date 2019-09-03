Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20946A5F26
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 04:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LoAn3xv+7E9nJJSBVygYXU0NFICDoDil8OPMZDRwKzg=; b=JRMma9z/jkMN+Zvn1l6CUBfw3k
	mdIXc0vFrwKYEtW1GkM6JiX3cTr5MHknUh1YZYm1wadO8rMkQnG50dx6XqbTPx34wgzXKDY6wLeh/
	yAWco2JYcO1srirsM1fE6T13nogp6K79Vln/Ovpy79HD+2+6qZF+YyUjMiyhJUskx8WoHSVU0FxkT
	jwtBx7oq3zVX73AEEkG4qeTK1SdTeIQLQV7UWh8qROd6jMSfYzvgBDtDIhbRW50T6XOiD9TdDU8vh
	Fl2XiHdU6pN2hR+eqJ+/Vt4TwbKATlBIQF56MioS4DCZ8OH3jMRnTjgA66ag4iZGYmkueOvcxg38D
	bhuna2cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4yDf-0004U3-94; Tue, 03 Sep 2019 02:06:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4yBr-0001gd-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 02:05:05 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6770C1A099C;
 Tue,  3 Sep 2019 04:05:01 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 68CCA1A098B;
 Tue,  3 Sep 2019 04:04:43 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0813C402B7;
 Tue,  3 Sep 2019 10:04:28 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, dmitry.torokhov@gmail.com,
 aisheng.dong@nxp.com, ulf.hansson@linaro.org, fugang.duan@nxp.com,
 peng.fan@nxp.com, daniel.baluta@nxp.com, leonard.crestez@nxp.com,
 mripard@kernel.org, olof@lixom.net, arnd@arndb.de,
 jagan@amarulasolutions.com, bjorn.andersson@linaro.org,
 dinguyen@kernel.org, marcin.juszkiewicz@linaro.org, stefan@agner.ch,
 gregkh@linuxfoundation.org, andriy.shevchenko@linux.intel.com,
 yuehaibing@huawei.com, tglx@linutronix.de, ronald@innovation.ch,
 m.felsch@pengutronix.de, ping.bai@nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Subject: [PATCH V2 2/5] input: keyboard: imx_sc: Add i.MX system controller
 power key support
Date: Tue,  3 Sep 2019 10:03:41 -0400
Message-Id: <1567519424-32271-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_190503_690407_327AAA44 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
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

i.MX8QXP is an ARMv8 SoC which has a Cortex-M4 system controller
inside, the system controller is in charge of controlling power,
clock and power key etc..

Adds i.MX system controller power key driver support, Linux kernel
has to communicate with system controller via MU (message unit) IPC
to get power key's status.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- remove "wakeup-source" property operation, scu power key uses generic scu irq,
	  no need to have this property for device wakeup operation.
---
 drivers/input/keyboard/Kconfig         |   7 ++
 drivers/input/keyboard/Makefile        |   1 +
 drivers/input/keyboard/imx_sc_pwrkey.c | 169 +++++++++++++++++++++++++++++++++
 3 files changed, 177 insertions(+)
 create mode 100644 drivers/input/keyboard/imx_sc_pwrkey.c

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 2e6d288..3aaeb9c 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -469,6 +469,13 @@ config KEYBOARD_IMX
 	  To compile this driver as a module, choose M here: the
 	  module will be called imx_keypad.
 
+config KEYBOARD_IMX_SC_PWRKEY
+	tristate "IMX SCU Power Key Driver"
+	depends on IMX_SCU
+	help
+	  This is the system controller powerkey driver for NXP i.MX SoCs with
+	  system controller inside.
+
 config KEYBOARD_NEWTON
 	tristate "Newton keyboard"
 	select SERIO
diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
index 9510325..9ea5585 100644
--- a/drivers/input/keyboard/Makefile
+++ b/drivers/input/keyboard/Makefile
@@ -29,6 +29,7 @@ obj-$(CONFIG_KEYBOARD_HIL)		+= hil_kbd.o
 obj-$(CONFIG_KEYBOARD_HIL_OLD)		+= hilkbd.o
 obj-$(CONFIG_KEYBOARD_IPAQ_MICRO)	+= ipaq-micro-keys.o
 obj-$(CONFIG_KEYBOARD_IMX)		+= imx_keypad.o
+obj-$(CONFIG_KEYBOARD_IMX_SC_PWRKEY)	+= imx_sc_pwrkey.o
 obj-$(CONFIG_KEYBOARD_HP6XX)		+= jornada680_kbd.o
 obj-$(CONFIG_KEYBOARD_HP7XX)		+= jornada720_kbd.o
 obj-$(CONFIG_KEYBOARD_LKKBD)		+= lkkbd.o
diff --git a/drivers/input/keyboard/imx_sc_pwrkey.c b/drivers/input/keyboard/imx_sc_pwrkey.c
new file mode 100644
index 0000000..53aa9a4
--- /dev/null
+++ b/drivers/input/keyboard/imx_sc_pwrkey.c
@@ -0,0 +1,169 @@
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
+struct imx_pwrkey_drv_data {
+	int keycode;
+	bool keystate;  /* 1: pressed, 0: release */
+	bool delay_check;
+	struct delayed_work check_work;
+	struct input_dev *input;
+};
+
+struct imx_sc_msg_pwrkey {
+	struct imx_sc_rpc_msg hdr;
+	u8 state;
+};
+static struct imx_pwrkey_drv_data *pdata;
+static struct imx_sc_ipc *pwrkey_ipc_handle;
+
+static int imx_sc_pwrkey_notify(struct notifier_block *nb,
+				unsigned long event, void *group)
+{
+	if ((event & SC_IRQ_BUTTON) && (*(u8 *)group == SC_IRQ_GROUP_WAKE)
+	    && !pdata->delay_check) {
+		pdata->delay_check = 1;
+		schedule_delayed_work(&pdata->check_work,
+				      msecs_to_jiffies(REPEAT_INTERVAL));
+	}
+
+	return 0;
+}
+
+static void imx_sc_check_for_events(struct work_struct *work)
+{
+	struct input_dev *input = pdata->input;
+	struct imx_sc_msg_pwrkey msg;
+	struct imx_sc_rpc_msg *hdr = &msg.hdr;
+	bool state;
+
+	hdr->ver = IMX_SC_RPC_VERSION;
+	hdr->svc = IMX_SC_RPC_SVC_MISC;
+	hdr->func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS;
+	hdr->size = 1;
+
+	/*
+	 * Current SCU firmware does NOT have return value for
+	 * this API, that means it is always successful.
+	 */
+	imx_scu_call_rpc(pwrkey_ipc_handle, &msg, true);
+	state = msg.state;
+
+	if (!state && !pdata->keystate)
+		state = true;
+
+	if (state ^ pdata->keystate) {
+		pm_wakeup_event(input->dev.parent, 0);
+		pdata->keystate = !!state;
+		input_event(input, EV_KEY, pdata->keycode, !!state);
+		input_sync(input);
+		if (!state)
+			pdata->delay_check = 0;
+		pm_relax(pdata->input->dev.parent);
+	}
+
+	if (state)
+		schedule_delayed_work(&pdata->check_work,
+				      msecs_to_jiffies(DEBOUNCE_TIME));
+}
+
+static struct notifier_block imx_sc_pwrkey_notifier = {
+	.notifier_call = imx_sc_pwrkey_notify,
+};
+
+static int imx_sc_pwrkey_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct input_dev *input;
+	int ret;
+
+	ret = imx_scu_get_handle(&pwrkey_ipc_handle);
+	if (ret)
+		return ret;
+
+	pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
+	if (!pdata)
+		return -ENOMEM;
+
+	if (of_property_read_u32(np, "linux,keycode", &pdata->keycode)) {
+		pdata->keycode = KEY_POWER;
+		dev_warn(&pdev->dev, "KEY_POWER without setting in dts\n");
+	}
+
+	INIT_DELAYED_WORK(&pdata->check_work, imx_sc_check_for_events);
+
+	input = devm_input_allocate_device(&pdev->dev);
+	if (!input) {
+		dev_err(&pdev->dev, "failed to allocate the input device\n");
+		return -ENOMEM;
+	}
+
+	input->name = pdev->name;
+	input->phys = "imx-sc-pwrkey/input0";
+	input->id.bustype = BUS_HOST;
+
+	input_set_capability(input, EV_KEY, pdata->keycode);
+
+	ret = input_register_device(input);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "failed to register input device\n");
+		return ret;
+	}
+
+	pdata->input = input;
+	platform_set_drvdata(pdev, pdata);
+
+	ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, true);
+	if (ret) {
+		dev_warn(&pdev->dev, "enable scu group irq failed\n");
+		return ret;
+	}
+
+	ret = imx_scu_irq_register_notifier(&imx_sc_pwrkey_notifier);
+	if (ret) {
+		imx_scu_irq_group_enable(SC_IRQ_GROUP_WAKE, SC_IRQ_BUTTON, false);
+		dev_warn(&pdev->dev, "register scu notifier failed\n");
+	}
+
+	return ret;
+}
+
+static const struct of_device_id imx_sc_pwrkey_ids[] = {
+	{ .compatible = "fsl,imx-sc-pwrkey" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx_sc_pwrkey_ids);
+
+static struct platform_driver imx_sc_pwrkey_driver = {
+	.driver = {
+		.name = "imx-sc-pwrkey",
+		.of_match_table = imx_sc_pwrkey_ids,
+	},
+	.probe = imx_sc_pwrkey_probe,
+};
+module_platform_driver(imx_sc_pwrkey_driver);
+
+MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
+MODULE_DESCRIPTION("i.MX System Controller Power Key Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
