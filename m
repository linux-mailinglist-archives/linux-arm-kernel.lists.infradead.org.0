Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA73F1D45F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 08:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlVUtp5q9QqoQQDSR9HBQuYFdBBSUlD1xSunAIjgLb8=; b=HnPoN4FIUdErx5
	AUWBjVNW9EdzMc8d81cLfoflwMGaFAXFcB9TLSSmfQniugeO26aUsWdW+RG1+wyKx+FbjqR+f8Xdc
	JE96lsasWSI26S2PyZxTriNUGswgtIl6F+E6cNhvzSiA2HvV+FfvCn8MQ0dwlEWul4Uyzp0sgb1qL
	cuKEZWCopxOMgU1CMbu4/w9tCbhtZAKjEHdU/M1+ZYlg1kWF0MKu0Sg+cklh4SlS/qrT8pQizZ66m
	uHYYv6zg2Y0omYkYr3cSNpNVtG8LDSBOLYEdZ6mn4ipfdGnB+cMUQ89dlFpStErgeQxxTM9E+u7UK
	NmbsvMxh9taWZnIUhD1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZTvX-00047K-Cp; Fri, 15 May 2020 06:34:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZTvL-00045h-Bl; Fri, 15 May 2020 06:34:27 +0000
X-UUID: f48defab152e46f2a5b6e15cde1d1f9e-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=xQvbHhAIaYB+goKeDLas2BsxRfw8S1N+nFr5k9UxkBg=; 
 b=RmJy22eF+JSxB7D3gH8wlzCo2iygCExnxkKCcM/45htCnespsSCtcpNu6LHq4AoJwizA5kZYOQtNqqMaI9mqJw58DQjnAyIGc/T2Q0oP2T8eqdxFIJC7o301y61qMVUYi/c6K1OSr9OFZDECLMp8Br8FhfAHulbcE/bBCeBsEtw=;
X-UUID: f48defab152e46f2a5b6e15cde1d1f9e-20200514
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1861978551; Thu, 14 May 2020 22:34:27 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 23:24:16 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 15 May 2020 14:24:11 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 15 May 2020 14:24:10 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Yingjoe Chen <yingjoe.chen@mediatek.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v8 2/3] drivers: input: keyboard: Add mtk keypad driver
Date: Fri, 15 May 2020 14:20:08 +0800
Message-ID: <20200515062007.28346-3-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200515062007.28346-1-fengping.yu@mediatek.com>
References: <20200515062007.28346-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F03092574DAF48B69ADFECB08A6F133FB079D43CBEFDEFE9F7C93E77953F12EE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_233423_418081_198A9E09 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "fengping.yu" <fengping.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

This adds matrix keypad support for Mediatek SoCs.

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 drivers/input/keyboard/Kconfig   |   9 ++
 drivers/input/keyboard/Makefile  |   1 +
 drivers/input/keyboard/mtk-kpd.c | 231 +++++++++++++++++++++++++++++++
 3 files changed, 241 insertions(+)
 create mode 100644 drivers/input/keyboard/mtk-kpd.c

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 28de965a08d5..2b42015e6923 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -782,6 +782,15 @@ config KEYBOARD_BCM
 	  To compile this driver as a module, choose M here: the
 	  module will be called bcm-keypad.
 
+config KEYBOARD_MTK_KPD
+	tristate "MediaTek Keypad Support"
+	depends on OF && HAVE_CLK
+	help
+	  Say Y here if you want to use the keypad on MediaTek SoCs.
+	  If unsure, say N.
+	  To compile this driver as a module, choose M here: the
+	  module will be called mtk-kpd.
+
 config KEYBOARD_MTK_PMIC
 	tristate "MediaTek PMIC keys support"
 	depends on MFD_MT6397
diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
index 1d689fdd5c00..6c9d852c377e 100644
--- a/drivers/input/keyboard/Makefile
+++ b/drivers/input/keyboard/Makefile
@@ -43,6 +43,7 @@ obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
 obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
 obj-$(CONFIG_KEYBOARD_MCS)		+= mcs_touchkey.o
 obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o
+obj-$(CONFIG_KEYBOARD_MTK_KPD)		+= mtk-kpd.o
 obj-$(CONFIG_KEYBOARD_MTK_PMIC) 	+= mtk-pmic-keys.o
 obj-$(CONFIG_KEYBOARD_NEWTON)		+= newtonkbd.o
 obj-$(CONFIG_KEYBOARD_NOMADIK)		+= nomadik-ske-keypad.o
diff --git a/drivers/input/keyboard/mtk-kpd.c b/drivers/input/keyboard/mtk-kpd.c
new file mode 100644
index 000000000000..66c70c475ee2
--- /dev/null
+++ b/drivers/input/keyboard/mtk-kpd.c
@@ -0,0 +1,231 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ * Author Terry Chang <terry.chang@mediatek.com>
+ */
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <linux/input/matrix_keypad.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/property.h>
+#include <linux/pinctrl/consumer.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define MTK_KPD_NAME			"mtk-kpd"
+#define MTK_KPD_MEM			0x0004
+#define MTK_KPD_DEBOUNCE		0x0018
+#define MTK_KPD_DEBOUNCE_MASK		GENMASK(13, 0)
+#define MTK_KPD_DEBOUNCE_MAX_US		256000 /*256ms */
+#define MTK_KPD_NUM_MEMS		5
+#define MTK_KPD_NUM_BITS		136	/* 4*32+8 MEM5 only use 8 BITS */
+
+struct mtk_keypad {
+	struct regmap *regmap;
+	struct input_dev *input_dev;
+	struct clk *clk;
+	void __iomem *base;
+	bool wakeup;
+	u32 n_rows;
+	u32 n_cols;
+	DECLARE_BITMAP(keymap_state, MTK_KPD_NUM_BITS);
+};
+
+static const struct regmap_config keypad_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = sizeof(u32),
+	.max_register = 36,
+};
+
+static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
+{
+	struct mtk_keypad *keypad = dev_id;
+	unsigned short *keycode = keypad->input_dev->keycode;
+	DECLARE_BITMAP(new_state, MTK_KPD_NUM_BITS);
+	DECLARE_BITMAP(change, MTK_KPD_NUM_BITS);
+	int bit_nr;
+	int pressed;
+	unsigned short code;
+
+	regmap_raw_read(keypad->regmap, MTK_KPD_MEM, new_state, MTK_KPD_NUM_MEMS);
+
+	bitmap_xor(change, new_state, keypad->keymap_state, MTK_KPD_NUM_BITS);
+
+	for_each_set_bit(bit_nr, change, MTK_KPD_NUM_BITS) {
+		/* 1: not pressed, 0: pressed */
+		pressed = !test_bit(bit_nr, new_state);
+		dev_dbg(&keypad->input_dev->dev, "%s",
+			pressed ? "pressed" : "released");
+
+		/* 32bit register only use low 16bit as keypad mem register */
+		code = keycode[bit_nr - 16 * (BITS_TO_U32(bit_nr) - 1)];
+
+		input_report_key(keypad->input_dev, code, pressed);
+		input_sync(keypad->input_dev);
+
+		dev_dbg(&keypad->input_dev->dev,
+			"report Linux keycode = %d\n", code);
+	}
+
+	bitmap_copy(keypad->keymap_state, new_state, MTK_KPD_NUM_BITS);
+
+	return IRQ_HANDLED;
+}
+
+static int kpd_probe_clock(struct platform_device *pdev, struct clk *clk)
+{
+	int ret;
+
+	clk = devm_clk_get(&pdev->dev, "kpd");
+	if (IS_ERR(clk))
+		return clk;
+
+	ret = clk_prepare_enable(clk);
+	if (ret) {
+		dev_err(&pdev->dev, "cannot prepare/enable keypad clock\n");
+		return ret;
+	}
+
+	ret = devm_add_action_or_reset(&pdev->dev,
+					(void (*)(void *))clk_disable_unprepare,
+					clk);
+
+	return ret;
+}
+
+static int kpd_pdrv_probe(struct platform_device *pdev)
+{
+	struct mtk_keypad *keypad;
+	struct pinctrl *keypad_pinctrl;
+	struct pinctrl_state *kpd_default;
+	unsigned int irqnr;
+	u32 debounce;
+	int ret;
+
+	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
+	if (!keypad)
+		return -ENOMEM;
+
+	keypad->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(keypad->base))
+		return PTR_ERR(keypad->base);
+
+	keypad->regmap = devm_regmap_init_mmio(&pdev->dev,
+						keypad->base,
+						&keypad_regmap_cfg);
+	if (IS_ERR(keypad->regmap)) {
+		dev_err(&pdev->dev,
+			"regmap init failed:%ld\n", PTR_ERR(keypad->regmap));
+		return PTR_ERR(keypad->regmap);
+	}
+
+	bitmap_fill(keypad->keymap_state, MTK_KPD_NUM_BITS);
+
+	keypad->input_dev = devm_input_allocate_device(&pdev->dev);
+	if (!keypad->input_dev) {
+		dev_err(&pdev->dev, "Failed to allocate input dev\n");
+		return -ENOMEM;
+	}
+
+	keypad->input_dev->name = MTK_KPD_NAME;
+	keypad->input_dev->id.bustype = BUS_HOST;
+
+	ret = matrix_keypad_parse_properties(&pdev->dev, &keypad->n_rows,
+					     &keypad->n_cols);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to parse keypad params\n");
+		return ret;
+	}
+
+	if (device_property_read_u32(&pdev->dev, "mediatek,debounce-us",
+					&debounce))
+		debounce = 16000;
+
+	if (debounce > MTK_KPD_DEBOUNCE_MAX_US) {
+		dev_err(&pdev->dev, "Debounce time exceeds the maximum allowed time 256ms\n");
+		return -EINVAL;
+	}
+
+	keypad->wakeup = device_property_read_bool(&pdev->dev, "wakeup-source");
+
+	dev_dbg(&pdev->dev, "n_row=%d n_col=%d debounce=%d\n",
+		keypad->n_rows, keypad->n_cols, debounce);
+
+	ret = matrix_keypad_build_keymap(NULL, NULL,
+					keypad->n_rows,
+					keypad->n_cols,
+					NULL,
+					keypad->input_dev);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to build keymap\n");
+		return ret;
+	}
+
+	input_set_drvdata(keypad->input_dev, keypad);
+
+	regmap_write(keypad->regmap, KP_DEBOUNCE,
+		     debounce * 32 / 1000 & MTK_KPD_DEBOUNCE_MASK);
+
+	if (kpd_probe_clock(pdev, keypad->clk)) {
+		dev_err(&pdev->dev, "Failed to enable clock\n");
+		return ret;
+	}
+
+	keypad_pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (IS_ERR(keypad_pinctrl))
+		return PTR_ERR(keypad_pinctrl);
+
+	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
+	if (IS_ERR(kpd_default)) {
+		dev_err(&pdev->dev, "No default pinctrl state\n");
+		return PTR_ERR(kpd_default);
+	}
+
+	pinctrl_select_state(keypad_pinctrl, kpd_default);
+
+	irqnr = platform_get_irq(pdev, 0);
+	if (irqnr < 0) {
+		dev_err(&pdev->dev, "Failed to get irq\n");
+		return -irqnr;
+	}
+
+	ret = devm_request_threaded_irq(&pdev->dev, irqnr,
+				NULL, kpd_irq_handler, 0,
+				MTK_KPD_NAME, keypad);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to request IRQ#%d:%d\n",
+						irqnr, ret);
+		return ret;
+	}
+
+	ret = input_register_device(keypad->input_dev);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register device\n");
+		return ret;
+	}
+
+	device_init_wakeup(&pdev->dev, keypad->wakeup);
+
+	return 0;
+}
+
+static const struct of_device_id kpd_of_match[] = {
+	{.compatible = "mediatek, mt6779-keypad"},
+	{.compatible = "mediatek,kp"},
+	{/*sentinel*/}
+};
+
+static struct platform_driver kpd_pdrv = {
+	.probe = kpd_pdrv_probe,
+	.driver = {
+		   .name = MTK_KPD_NAME,
+		   .of_match_table = kpd_of_match,
+	},
+};
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
