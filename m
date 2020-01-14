Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440E413A97B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:39:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=229MuB8pUo+XU2MD6KIpGxU7kWRDpV1pyynV9Xo+C94=; b=jjE+oj6XkMsKnS
	XW3Dlw6FoSXhE7+ECBH5KWBRrYaPlWmBoK85QZ7rs9vrJ2l/homVQm/ymd/OhEHEyiDK1i3Ypf6L5
	KnprEVI3bWbEDDZDBQqjXBxFxQI+xmcN91lz1D5ZljpgBrWLTnxtEqX5h6bZHPgbngIepG09kluDn
	3hf5MfdBhM9PI3FOrxOIjCHzi0wMH3jS4TkgID5zPGhFa4xg3Aoqr3ON5SMKomWBegdz8uLbqg0EI
	L0CzWr4lde+7ltsMBIswgfOaS+5RoIqydfexYvAG6n8hXLiOv9EaixAWOS3bbAP+zdUseG/JSX2+T
	Awn/criUWRCuwQ8WHdew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLTb-0002Rk-Um; Tue, 14 Jan 2020 12:39:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLTO-0002Qo-FB; Tue, 14 Jan 2020 12:39:11 +0000
X-UUID: 9168a724a12d4e0f9d97c3ebbaefb8ff-20200114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=bnFecRJX7Aa4q5ksT7zK8kTGrThsp/iwgnapcyNcxAE=; 
 b=YFzbfz09rS9+IXVwUguIcTKgtAeXE+gVcCaDoEMKDyoJCnvSJJYyIE+gmMOhpYyK0hic+nOjD+iqb7GJYbylQQwW/SOKfETlEQo69sJIhHVOkSCJMxF+jsB7VTg7zDFIZNz9RG7/wtmM63MOZiIh34xBE+VwvBpFhDzg2Yq0P28=;
X-UUID: 9168a724a12d4e0f9d97c3ebbaefb8ff-20200114
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1123245876; Tue, 14 Jan 2020 04:39:04 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 04:29:48 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS32DR.mediatek.inc (172.27.6.104) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 20:28:04 +0800
Received: from localhost.localdomain (10.15.43.140) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 20:29:44 +0800
From: fengping.yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marco Felsch <m.felsch@pengutronix.de>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH V3 2/2] drivers: input: keyboard: add mtk keypad driver
Date: Tue, 14 Jan 2020 20:27:41 +0800
Message-ID: <20200114122738.103344-3-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200114122738.103344-1-fengping.yu@mediatek.com>
References: <20200114122738.103344-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2C1AE87E0845F6354DDCF9DBECAB361CE7C439E6664B7BE32F23C13A4E1B70052000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_043906_519430_B2B17956 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 "fengping.yu" <fengping.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>

Add matrix keypad driver for MTK SoC.

---
 arch/arm64/configs/defconfig     |   1 +
 drivers/input/keyboard/Kconfig   |   8 +
 drivers/input/keyboard/Makefile  |   1 +
 drivers/input/keyboard/mtk-kpd.c | 280 +++++++++++++++++++++++++++++++
 4 files changed, 290 insertions(+)
 create mode 100644 drivers/input/keyboard/mtk-kpd.c

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39eab08..62bed77ec127 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -315,6 +315,7 @@ CONFIG_KEYBOARD_ADC=m
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_SNVS_PWRKEY=m
 CONFIG_KEYBOARD_CROS_EC=y
+CONFIG_KEYBOARD_MTK=y
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m
 CONFIG_INPUT_MISC=y
diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 8911bc2ec42a..01747a97536b 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -775,4 +775,12 @@ config KEYBOARD_MTK_PMIC
 	  To compile this driver as a module, choose M here: the
 	  module will be called pmic-keys.
 
+config KEYBOARD_MTK
+	tristate "MediaTek Keypad Support"
+	help
+	  Say Y here if you want to use the keypad.
+	  If unuse, say N.
+	  To compile this driver as a module, choose M here: the
+	  module will be called mtk-kpd.
+
 endif
diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
index 9510325c0c5d..daa654bcce6e 100644
--- a/drivers/input/keyboard/Makefile
+++ b/drivers/input/keyboard/Makefile
@@ -41,6 +41,7 @@ obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
 obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
 obj-$(CONFIG_KEYBOARD_MCS)		+= mcs_touchkey.o
 obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o
+obj-$(CONFIG_KEYBOARD_MTK) 		+= mtk-kpd.o
 obj-$(CONFIG_KEYBOARD_MTK_PMIC) 	+= mtk-pmic-keys.o
 obj-$(CONFIG_KEYBOARD_NEWTON)		+= newtonkbd.o
 obj-$(CONFIG_KEYBOARD_NOMADIK)		+= nomadik-ske-keypad.o
diff --git a/drivers/input/keyboard/mtk-kpd.c b/drivers/input/keyboard/mtk-kpd.c
new file mode 100644
index 000000000000..e36461c9dd89
--- /dev/null
+++ b/drivers/input/keyboard/mtk-kpd.c
@@ -0,0 +1,280 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ * Author Terry Chang <terry.chang@mediatek.com>
+ */
+#include <linux/clk.h>
+#include <linux/fs.h>
+#include <linux/gpio.h>
+#include <linux/init.h>
+#include <linux/input/matrix_keypad.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/pinctrl/consumer.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define KPD_NAME	"mtk-kpd"
+
+#define KP_STA				0x0000
+#define KP_MEM1				0x0004
+#define KP_MEM2				0x0008
+#define KP_MEM3				0x000c
+#define KP_MEM4				0x0010
+#define KP_MEM5				0x0014
+#define KP_DEBOUNCE			0x0018
+#define KP_SEL				0x0020
+#define KP_EN				0x0024
+
+#define KP_COL0_SEL		BIT(10)
+#define KP_COL1_SEL		BIT(11)
+#define KP_COL2_SEL		BIT(12)
+
+#define KPD_DEBOUNCE_MASK	GENMASK_ULL(13, 0)
+
+#define KPD_NUM_MEMS	5
+#define KPD_MEM5_BITS	8
+#define KPD_NUM_KEYS	72	/* 4 * 16 + KPD_MEM5_BITS */
+
+struct mtk_keypad {
+	struct input_dev *input_dev;
+	struct clk *clk;
+	void __iomem *base;
+	unsigned int irqnr;
+	bool wakeup;
+	u32 key_debounce;
+	u32 n_rows;
+	u32 n_cols;
+	u32 keymap_state[KPD_NUM_MEMS];
+};
+
+static void kpd_get_keymap_state(void __iomem *kp_base, u32 state[])
+{
+	memset_io(state, 0xff, KPD_NUM_MEMS);
+	memcpy_fromio(state, kp_base, KPD_NUM_MEMS);
+}
+
+static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
+{
+	/* use _nosync to avoid deadlock */
+	struct mtk_keypad *keypad = dev_id;
+	unsigned short *keycode = keypad->input_dev->keycode;
+	u32 new_state[KPD_NUM_MEMS], mask;
+	unsigned long change = 0;
+	int bit_nr;
+	int pressed;
+	u32 row_shift = get_count_order(keypad->n_cols);
+	unsigned short code;
+	int i;
+
+	disable_irq_nosync(keypad->irqnr);
+
+	kpd_get_keymap_state(keypad->base, new_state);
+
+	for (i = 0; i < KPD_NUM_MEMS; i++) {
+		change = new_state[i] ^ keypad->keymap_state[i];
+		if (!change)
+			continue;
+
+		for_each_set_bit(bit_nr, &change, 32) {
+			mask = 1 << bit_nr;
+			pressed = (new_state[i] & mask) == 0U;
+			dev_dbg(&keypad->input_dev->dev,
+				"%s", pressed ? "pressed" : "released");
+
+			code = keycode[MATRIX_SCAN_CODE(i, bit_nr, row_shift)];
+
+			input_report_key(keypad->input_dev, code, pressed);
+			input_sync(keypad->input_dev);
+
+			dev_dbg(&keypad->input_dev->dev,
+				"report Linux keycode = %d\n", code);
+		}
+	}
+
+	memcpy(keypad->keymap_state, new_state, sizeof(new_state));
+
+	enable_irq(keypad->irqnr);
+
+	return IRQ_HANDLED;
+}
+
+static int kpd_get_dts_info(struct mtk_keypad *keypad)
+{
+	int ret;
+	struct device *dev = keypad->input_dev->dev.parent;
+	struct device_node *node = dev->of_node;
+
+	ret = matrix_keypad_parse_properties(dev, &keypad->n_rows,
+					     &keypad->n_cols);
+
+	if (ret) {
+		dev_err(dev, "failed to parse keypad params.\n");
+		return ret;
+	}
+
+	ret = of_property_read_u32(node, "mediatek,debounce-us",
+				   &keypad->key_debounce);
+	if (ret) {
+		pr_debug("read mediatek,debounce-us error.\n");
+		return ret;
+	}
+
+	keypad->wakeup = of_property_read_bool(node, "wakeup-source");
+
+	dev_dbg(dev, "n_row=%d n_col=%d debounce=%d.\n",
+		keypad->n_rows, keypad->n_cols,
+		keypad->key_debounce);
+
+	return 0;
+}
+
+static int kpd_gpio_init(struct device *dev)
+{
+	struct pinctrl *keypad_pinctrl;
+	struct pinctrl_state *kpd_default;
+
+	keypad_pinctrl = devm_pinctrl_get(dev);
+	if (IS_ERR(keypad_pinctrl)) {
+		dev_err(dev, "Cannot find keypad_pinctrl!\n");
+
+		return PTR_ERR(keypad_pinctrl);
+	}
+
+	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
+	if (IS_ERR(kpd_default)) {
+		dev_err(dev, "Cannot find ecall_state!\n");
+
+		return PTR_ERR(kpd_default);
+	}
+
+	return pinctrl_select_state(keypad_pinctrl, kpd_default);
+}
+
+static int kpd_pdrv_probe(struct platform_device *pdev)
+{
+	struct mtk_keypad *keypad;
+	struct resource *res;
+	int err;
+
+	if (!pdev->dev.of_node) {
+		dev_err(&pdev->dev, "No device tree data present.\n");
+		return -EINVAL;
+	}
+
+	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
+	if (!keypad)
+		return -ENOMEM;
+
+	memset(keypad->keymap_state, 0xff, sizeof(keypad->keymap_state));
+
+	keypad->input_dev = devm_input_allocate_device(&pdev->dev);
+	if (!keypad->input_dev) {
+		dev_err(&pdev->dev, "input allocate device fail.\n");
+		return -ENOMEM;
+	}
+
+	keypad->input_dev->name = KPD_NAME;
+	keypad->input_dev->id.bustype = BUS_HOST;
+	keypad->input_dev->dev.parent = &pdev->dev;
+
+	err = kpd_get_dts_info(keypad);
+	if (err) {
+		dev_err(&pdev->dev, "get dts info failed.\n");
+		return err;
+	}
+
+	err = matrix_keypad_build_keymap(NULL, NULL,
+					keypad->n_rows,
+					keypad->n_cols,
+					NULL,
+					keypad->input_dev);
+
+	if (err) {
+		dev_err(&pdev->dev, "build keymap failed.\n");
+		return err;
+	}
+
+	input_set_drvdata(keypad->input_dev, keypad);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(&pdev->dev, "get IO memory resource failed.\n");
+		return -ENODEV;
+	}
+
+	keypad->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(keypad->base)) {
+		dev_err(&pdev->dev, "KP iomap failed\n");
+		return PTR_ERR(keypad->base);
+	}
+
+	writew((keypad->key_debounce * 32 / 1000 & KPD_DEBOUNCE_MASK),
+		keypad->base + KP_DEBOUNCE);
+
+	keypad->clk = devm_clk_get(&pdev->dev, "kpd");
+	if (IS_ERR(keypad->clk)) {
+		dev_err(&pdev->dev, "get kpd-clk fail.\n");
+		return PTR_ERR(keypad->clk);
+	}
+
+	err = clk_prepare_enable(keypad->clk);
+	if (err) {
+		dev_err(&pdev->dev, "kpd-clk prepare enable failed.\n");
+		return err;
+	}
+
+	err = kpd_gpio_init(&pdev->dev);
+	if (err) {
+		dev_err(&pdev->dev, "gpio init failed\n");
+		return err;
+	}
+
+	keypad->irqnr = platform_get_irq(pdev, 0);
+	if (!keypad->irqnr) {
+		dev_err(&pdev->dev, "KP get irqnr failed\n");
+		return -EINVAL;
+	}
+
+	err = devm_request_irq(&pdev->dev, keypad->irqnr,
+				kpd_irq_handler, 0,
+				KPD_NAME, keypad);
+	if (err) {
+		dev_err(&pdev->dev, "register IRQ failed.\n");
+		return err;
+	}
+
+	err = input_register_device(keypad->input_dev);
+	if (err) {
+		dev_err(&pdev->dev, "register input device failed.\n");
+		return err;
+	}
+
+	device_init_wakeup(&pdev->dev, keypad->wakeup);
+
+	platform_set_drvdata(pdev, keypad);
+
+	return 0;
+}
+
+static const struct of_device_id kpd_of_match[] = {
+	{.compatible = "mediatek,kp"},
+	{}
+};
+
+static struct platform_driver kpd_pdrv = {
+	.probe = kpd_pdrv_probe,
+	.driver = {
+		   .name = KPD_NAME,
+		   .of_match_table = kpd_of_match,
+	},
+};
+
+module_platform_driver(kpd_pdrv);
+
+MODULE_AUTHOR("Mediatek Corporation");
+MODULE_DESCRIPTION("MTK Keypad (KPD) Driver");
+MODULE_LICENSE("GPL");
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
