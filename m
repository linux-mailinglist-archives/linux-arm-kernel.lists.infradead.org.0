Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3D91B51CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 03:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAq0B+jEg+7V+T6lU/mwBHTLacYEosKxejtvRGJce4U=; b=VuLAC0lb0IPupe
	4j1D+Hztm9T1r4DQJKnDuTEkrsZYDP1BKo9pUve3OWh7Q761rvszRyNmNSQ+IPQwZg9ub5OLWENYB
	K1zTQYUOWpL/3MQ73VoSiyQwxDvwCCrylCn1thuUJXijNPSxdXEJDlS0H6JazfV86FJ4XyliVYT1z
	P4lEQSGwvvHDytTNofrg3rzRV+qAl3CCGfOY+HbmVRqOXiNZ2K4hI1f3dKSamyQQK0udnddZHdrXs
	aN5FJ1vf5bi5S4UUdWA2DmuHo1bwlk1GE8zEi2MVN/CvHjNdYhMtp32c0wQOnODXwpxfDJDhe8eLo
	9pDzBQKHJNJpLr8qAsZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQcR-0002Sj-CU; Thu, 23 Apr 2020 01:25:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQcD-0002Qm-Tz; Thu, 23 Apr 2020 01:25:23 +0000
X-UUID: 52c70b1c8471417b985201fdea334932-20200422
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=sOSXX3FrzUybmU0NDLcnzD+eWH8tMTQH3Ha16qg7XDw=; 
 b=EMu0x3798v7guOMOwtz5eDMnoH/v/z6u5aKwBI3vlj3j9m0U5ou9vITJRvrf14lnrClW6Gj3uxQDqYLP1wBxMTzvnz3CW/3h046tVu6Pq3SeR8e2fOBhGmgYta7Y6Vh2/EibpxktDKUi3Opvn7qeMcyfhi4Eiph4Hv+QrlrAJrw=;
X-UUID: 52c70b1c8471417b985201fdea334932-20200422
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1000614812; Wed, 22 Apr 2020 17:25:10 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 22 Apr 2020 18:25:15 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 23 Apr 2020 09:25:10 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 23 Apr 2020 09:25:14 +0800
From: Fengping yu <fengping.yu@mediatek.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Marco Felsch <m.felsch@pengutronix.de>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: [PATCH v5 3/3] drivers: input: keyboard: add mtk keypad driver
Date: Thu, 23 Apr 2020 09:20:02 +0800
Message-ID: <20200423011958.30521-4-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200423011958.30521-1-fengping.yu@mediatek.com>
References: <20200423011958.30521-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_182521_976755_4C3A84C6 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 "fengping.yu" <fengping.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 drivers/input/keyboard/Kconfig   |   9 ++
 drivers/input/keyboard/Makefile  |   1 +
 drivers/input/keyboard/mtk-kpd.c | 242 +++++++++++++++++++++++++++++++
 3 files changed, 252 insertions(+)
 create mode 100644 drivers/input/keyboard/mtk-kpd.c

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 4706ff09f0e8..4a387d8683b1 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -772,6 +772,15 @@ config KEYBOARD_BCM
 	  To compile this driver as a module, choose M here: the
 	  module will be called bcm-keypad.
 
+config KEYBOARD_MTK_KPD
+	tristate "MediaTek Keypad Support"
+	help
+	  Say Y here if you want to use the keypad.
+	  If unuse, say N.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called mtk-kpd.
+
 config KEYBOARD_MTK_PMIC
 	tristate "MediaTek PMIC keys support"
 	depends on MFD_MT6397
diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
index f5b17524adf2..63324d3e36c5 100644
--- a/drivers/input/keyboard/Makefile
+++ b/drivers/input/keyboard/Makefile
@@ -42,6 +42,7 @@ obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
 obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
 obj-$(CONFIG_KEYBOARD_MCS)		+= mcs_touchkey.o
 obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o
+obj-$(CONFIG_KEYBOARD_MTK_KPD)		+= mtk-kpd.o
 obj-$(CONFIG_KEYBOARD_MTK_PMIC) 	+= mtk-pmic-keys.o
 obj-$(CONFIG_KEYBOARD_NEWTON)		+= newtonkbd.o
 obj-$(CONFIG_KEYBOARD_NOMADIK)		+= nomadik-ske-keypad.o
diff --git a/drivers/input/keyboard/mtk-kpd.c b/drivers/input/keyboard/mtk-kpd.c
new file mode 100644
index 000000000000..7f8f091b2734
--- /dev/null
+++ b/drivers/input/keyboard/mtk-kpd.c
@@ -0,0 +1,242 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ * Author Terry Chang <terry.chang@mediatek.com>
+ */
+#include <linux/clk.h>
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
+
+#define KPD_NAME	"mtk-kpd"
+
+#define KP_MEM		0x0004
+#define KP_DEBOUNCE	0x0018
+
+#define KPD_DEBOUNCE_MASK	GENMASK(13, 0)
+#define KPD_DEBOUNCE_MAX	256000
+#define KPD_NUM_MEMS	5
+#define KPD_NUM_BITS	136	/* 4 * 32 + 8 MEM5 only use 8 BITS */
+#define BITS_TO_U32(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(u32))
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
+	DECLARE_BITMAP(keymap_state, KPD_NUM_BITS);
+};
+
+static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
+{
+	/* use _nosync to avoid deadlock */
+	struct mtk_keypad *keypad = dev_id;
+	unsigned short *keycode = keypad->input_dev->keycode;
+	DECLARE_BITMAP(new_state, KPD_NUM_BITS);
+	DECLARE_BITMAP(change, KPD_NUM_BITS);
+	int bit_nr;
+	int pressed;
+	unsigned short code;
+
+	memcpy_fromio(new_state, keypad->base + KP_MEM, KPD_NUM_MEMS);
+
+	bitmap_xor(change, new_state, keypad->keymap_state, KPD_NUM_BITS);
+
+	for_each_set_bit(bit_nr, change, KPD_NUM_BITS) {
+		pressed = test_bit(bit_nr, new_state) == 0U;
+		dev_dbg(&keypad->input_dev->dev, "%s",
+			pressed ? "pressed" : "released");
+
+	/* per 32bit register only use low 16bit as keypad mem register */
+		code = keycode[bit_nr - 16 * (BITS_TO_U32(bit_nr) - 1)];
+
+		input_report_key(keypad->input_dev, code, pressed);
+		input_sync(keypad->input_dev);
+
+		dev_dbg(&keypad->input_dev->dev,
+			"report Linux keycode = %d\n", code);
+	}
+
+	bitmap_copy(keypad->keymap_state, new_state, KPD_NUM_BITS);
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
+		dev_err(dev, "Failed to parse keypad params\n");
+		return ret;
+	}
+
+	ret = device_property_read_u32(dev, "mediatek,debounce-us",
+				   &keypad->key_debounce);
+	if (ret) {
+		dev_err(dev, "Failed to read mediatek debounce time\n");
+		return ret;
+	}
+
+	if (keypad->key_debounce > KPD_DEBOUNCE_MAX) {
+		dev_err(dev, "Debounce time exceeds the maximum allowed time 256ms\n");
+		return -EINVAL;
+	}
+
+	keypad->wakeup = device_property_read_bool(node, "wakeup-source");
+
+	dev_dbg(dev, "n_row=%d n_col=%d debounce=%d\n",
+		keypad->n_rows, keypad->n_cols,
+		keypad->key_debounce);
+
+	return 0;
+}
+
+static int kpd_pdrv_probe(struct platform_device *pdev)
+{
+	struct mtk_keypad *keypad;
+	struct pinctrl *keypad_pinctrl;
+	struct pinctrl_state *kpd_default;
+	int ret;
+
+	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
+	if (!keypad)
+		return -ENOMEM;
+
+	bitmap_fill(keypad->keymap_state, KPD_NUM_BITS);
+
+	keypad->input_dev = devm_input_allocate_device(&pdev->dev);
+	if (!keypad->input_dev) {
+		dev_err(&pdev->dev, "Failed to allocate input dev\n");
+		return -ENOMEM;
+	}
+
+	keypad->input_dev->name = KPD_NAME;
+	keypad->input_dev->id.bustype = BUS_HOST;
+
+	ret = kpd_get_dts_info(keypad);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to get dts info\n");
+		return ret;
+	}
+
+	ret = matrix_keypad_build_keymap(NULL, NULL,
+					keypad->n_rows,
+					keypad->n_cols,
+					NULL,
+					keypad->input_dev);
+
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to build keymap\n");
+		return ret;
+	}
+
+	input_set_drvdata(keypad->input_dev, keypad);
+
+	keypad->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(keypad->base)) {
+		dev_err(&pdev->dev, "Failed to get resource and iomap keypad\n");
+		return PTR_ERR(keypad->base);
+	}
+
+	if (keypad->key_debounce > KPD_DEBOUNCE_MAX) {
+		dev_err(&pdev->dev, "Invalid debounce time value.\n");
+		return -EINVAL;
+	}
+
+	writew(keypad->key_debounce * 32 / 1000 & KPD_DEBOUNCE_MASK,
+		keypad->base + KP_DEBOUNCE);
+
+	keypad->clk = devm_clk_get(&pdev->dev, "kpd");
+	if (IS_ERR(keypad->clk)) {
+		return PTR_ERR(keypad->clk);
+	}
+
+	ret = clk_prepare_enable(keypad->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "cannot prepare/enable keypad clock\n");
+		return ret;
+	}
+
+	keypad_pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (IS_ERR(keypad_pinctrl)) {
+		ret = PTR_ERR(keypad_pinctrl);
+		goto disable_kpd_clk;
+	}
+
+	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
+	if (IS_ERR(kpd_default)) {
+		dev_err(&pdev->dev, "No default pinctrl state\n");
+		ret = PTR_ERR(kpd_default);
+		goto disable_kpd_clk;
+	}
+
+	pinctrl_select_state(keypad_pinctrl, kpd_default);
+
+	keypad->irqnr = platform_get_irq(pdev, 0);
+	if (keypad->irqnr < 0) {
+		dev_err(&pdev->dev, "Failed to get irq\n");
+		ret = -keypad->irqnr;
+		goto disable_kpd_clk;
+	}
+
+	ret = devm_request_irq(&pdev->dev, keypad->irqnr,
+				kpd_irq_handler, 0,
+				KPD_NAME, keypad);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to request IRQ#%d:%d\n",
+						keypad->irqnr, ret);
+		goto disable_kpd_clk;
+	}
+
+	ret = input_register_device(keypad->input_dev);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register device\n");
+		goto disable_kpd_clk;
+	}
+
+	device_init_wakeup(&pdev->dev, keypad->wakeup);
+
+	platform_set_drvdata(pdev, keypad);
+
+	return 0;
+
+disable_kpd_clk:
+	clk_disable_unprepare(keypad->clk);
+	return ret;
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
