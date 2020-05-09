Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811471CBC6A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 04:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9/G1Ofg0x8F8kqFblB+Pq6OKSl+zFJCKyIBk1mLpFM=; b=ea8Yqq8f23hHLg
	KRA9cRxCRwlOFXD8GNbTj3lT6JvZUaNucIKnP3pB6pNsM+Q8AlG4WDLbasY6ZHPuwOVRV6+uIERvL
	iCIIhKIjQ3y55DrgbBH29x6Cyw+KGdPebJUujIAiQWiSq3Eg5cwUc26GYHTtHdFXuLfx1Oz4CAfBq
	ZtgrVL2ZytZ4aSObHqhc1BexXHj9TiUk07wos7Cm1dGaw+tdnSKTcsWEmKHtrOyv4I9cpXN7ME7cG
	snas4bBKbNp3q4UL0QmW3WisEWmIVlOvrKVb/n5kKp1B5Kmsfk0AFN6wEdqzr/yOJj6pSgGtLLYy7
	0rJbt11vOz8v1qAz5a0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXF6Q-00027d-L4; Sat, 09 May 2020 02:20:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXF5w-0000HP-PZ; Sat, 09 May 2020 02:20:07 +0000
X-UUID: e8eec0de03a843ac8f38c68eb3278e60-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=81xNTuoRWHQ1E+Co+6xQL3nZR4fkw6v75tZFfgWakrM=; 
 b=Vz+kHNaYTQjYWmHI0DxDyThW21MQ+UxOEddIbfobzU/tGAvWwsD+LzvhJH7ikCMY55tqiudoGy3TJLMdYMxzcteiBsoWJneApRDavAkN+LyYSg9m50nu16RCO9qcIklz7Mx84t4pcu+8pwrsBNOO2saOpqivV4XYkf92U2FdzBU=;
X-UUID: e8eec0de03a843ac8f38c68eb3278e60-20200508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <fengping.yu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1409651018; Fri, 08 May 2020 18:19:56 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 19:10:19 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 10:10:19 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 9 May 2020 10:10:06 +0800
From: Fengping Yu <fengping.yu@mediatek.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Yingjoe Chen <yingjoe.chen@mediatek.com>
Subject: [PATCH v6 2/3] drivers: input: keyboard: Add mtk keypad driver
Date: Sat, 9 May 2020 10:05:01 +0800
Message-ID: <20200509020458.8359-3-fengping.yu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200509020458.8359-1-fengping.yu@mediatek.com>
References: <20200509020458.8359-1-fengping.yu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_192004_894699_9E6C750B 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "fengping.yu" <fengping.yu@mediatek.com>

This adds matrix keypad support for Mediatek SoCs.

Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
---
 drivers/input/keyboard/Kconfig   |   5 +-
 drivers/input/keyboard/mtk-kpd.c | 151 ++++++++++++++-----------------
 2 files changed, 69 insertions(+), 87 deletions(-)

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index 4a387d8683b1..4ed9eff681f1 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -774,9 +774,10 @@ config KEYBOARD_BCM
 
 config KEYBOARD_MTK_KPD
 	tristate "MediaTek Keypad Support"
+	depends on OF && HAVE_CLK
 	help
-	  Say Y here if you want to use the keypad.
-	  If unuse, say N.
+	  Say Y here if you want to use the keypad on MediaTek SoCs.
+	  If unsure, say N.
 
 	  To compile this driver as a module, choose M here: the
 	  module will be called mtk-kpd.
diff --git a/drivers/input/keyboard/mtk-kpd.c b/drivers/input/keyboard/mtk-kpd.c
index 7f8f091b2734..a538f89d6696 100644
--- a/drivers/input/keyboard/mtk-kpd.c
+++ b/drivers/input/keyboard/mtk-kpd.c
@@ -4,16 +4,14 @@
  * Author Terry Chang <terry.chang@mediatek.com>
  */
 #include <linux/clk.h>
-#include <linux/gpio.h>
-#include <linux/init.h>
 #include <linux/input/matrix_keypad.h>
 #include <linux/interrupt.h>
-#include <linux/io.h>
 #include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
+#include <linux/property.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/bitops.h>
 
 #define KPD_NAME	"mtk-kpd"
 
@@ -21,26 +19,30 @@
 #define KP_DEBOUNCE	0x0018
 
 #define KPD_DEBOUNCE_MASK	GENMASK(13, 0)
-#define KPD_DEBOUNCE_MAX	256000
+#define KPD_DEBOUNCE_MAX_US	256000 /*256ms */
 #define KPD_NUM_MEMS	5
 #define KPD_NUM_BITS	136	/* 4 * 32 + 8 MEM5 only use 8 BITS */
-#define BITS_TO_U32(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(u32))
 
 struct mtk_keypad {
+	struct regmap *regmap;
 	struct input_dev *input_dev;
 	struct clk *clk;
 	void __iomem *base;
-	unsigned int irqnr;
 	bool wakeup;
-	u32 key_debounce;
 	u32 n_rows;
 	u32 n_cols;
 	DECLARE_BITMAP(keymap_state, KPD_NUM_BITS);
 };
 
+static const struct regmap_config keypad_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = sizeof(u32),
+	.max_register = 0x0024,
+};
+
 static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
 {
-	/* use _nosync to avoid deadlock */
 	struct mtk_keypad *keypad = dev_id;
 	unsigned short *keycode = keypad->input_dev->keycode;
 	DECLARE_BITMAP(new_state, KPD_NUM_BITS);
@@ -49,16 +51,17 @@ static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
 	int pressed;
 	unsigned short code;
 
-	memcpy_fromio(new_state, keypad->base + KP_MEM, KPD_NUM_MEMS);
+	regmap_raw_read(keypad->regmap, KP_MEM, new_state, KPD_NUM_MEMS);
 
 	bitmap_xor(change, new_state, keypad->keymap_state, KPD_NUM_BITS);
 
 	for_each_set_bit(bit_nr, change, KPD_NUM_BITS) {
-		pressed = test_bit(bit_nr, new_state) == 0U;
+		/* 1: not pressed, 0: pressed */
+		pressed = !test_bit(bit_nr, new_state);
 		dev_dbg(&keypad->input_dev->dev, "%s",
 			pressed ? "pressed" : "released");
 
-	/* per 32bit register only use low 16bit as keypad mem register */
+		/* 32bit register only use low 16bit as keypad mem register */
 		code = keycode[bit_nr - 16 * (BITS_TO_U32(bit_nr) - 1)];
 
 		input_report_key(keypad->input_dev, code, pressed);
@@ -73,51 +76,29 @@ static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static int kpd_get_dts_info(struct mtk_keypad *keypad)
-{
-	int ret;
-	struct device *dev = keypad->input_dev->dev.parent;
-	struct device_node *node = dev->of_node;
-
-	ret = matrix_keypad_parse_properties(dev, &keypad->n_rows,
-					     &keypad->n_cols);
-
-	if (ret) {
-		dev_err(dev, "Failed to parse keypad params\n");
-		return ret;
-	}
-
-	ret = device_property_read_u32(dev, "mediatek,debounce-us",
-				   &keypad->key_debounce);
-	if (ret) {
-		dev_err(dev, "Failed to read mediatek debounce time\n");
-		return ret;
-	}
-
-	if (keypad->key_debounce > KPD_DEBOUNCE_MAX) {
-		dev_err(dev, "Debounce time exceeds the maximum allowed time 256ms\n");
-		return -EINVAL;
-	}
-
-	keypad->wakeup = device_property_read_bool(node, "wakeup-source");
-
-	dev_dbg(dev, "n_row=%d n_col=%d debounce=%d\n",
-		keypad->n_rows, keypad->n_cols,
-		keypad->key_debounce);
-
-	return 0;
-}
-
 static int kpd_pdrv_probe(struct platform_device *pdev)
 {
 	struct mtk_keypad *keypad;
 	struct pinctrl *keypad_pinctrl;
 	struct pinctrl_state *kpd_default;
+	unsigned int irqnr;
+	u32 debounce;
 	int ret;
 
 	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
 	if (!keypad)
 		return -ENOMEM;
+	keypad->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(keypad->base))
+		return PTR_ERR(keypad->base);
+
+	keypad->regmap = devm_regmap_init_mmio_clk(&pdev->dev, NULL,
+				keypad->base, &keypad_regmap_cfg);
+	if (IS_ERR(keypad->regmap)) {
+		dev_err(&pdev->dev,
+			"regmap init failed:%ld\n", PTR_ERR(keypad->regmap));
+		return PTR_ERR(keypad->regmap);
+	}
 
 	bitmap_fill(keypad->keymap_state, KPD_NUM_BITS);
 
@@ -130,18 +111,35 @@ static int kpd_pdrv_probe(struct platform_device *pdev)
 	keypad->input_dev->name = KPD_NAME;
 	keypad->input_dev->id.bustype = BUS_HOST;
 
-	ret = kpd_get_dts_info(keypad);
+	ret = matrix_keypad_parse_properties(&pdev->dev, &keypad->n_rows,
+					     &keypad->n_cols);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to parse keypad params\n");
+		return ret;
+	}
+
+	ret = device_property_read_u32(&pdev->dev, "mediatek,debounce-us",
+					&debounce);
 	if (ret) {
-		dev_err(&pdev->dev, "Failed to get dts info\n");
+		dev_err(&pdev->dev, "Failed to read mediatek debounce time\n");
 		return ret;
 	}
 
+	if (debounce > KPD_DEBOUNCE_MAX_US) {
+		dev_err(&pdev->dev, "Debounce time exceeds the maximum allowed time 256ms\n");
+		return -EINVAL;
+	}
+
+	keypad->wakeup = device_property_read_bool(&pdev->dev, "wakeup-source");
+
+	dev_dbg(&pdev->dev, "n_row=%d n_col=%d debounce=%d\n",
+		keypad->n_rows, keypad->n_cols, debounce);
+
 	ret = matrix_keypad_build_keymap(NULL, NULL,
 					keypad->n_rows,
 					keypad->n_cols,
 					NULL,
 					keypad->input_dev);
-
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to build keymap\n");
 		return ret;
@@ -149,19 +147,8 @@ static int kpd_pdrv_probe(struct platform_device *pdev)
 
 	input_set_drvdata(keypad->input_dev, keypad);
 
-	keypad->base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(keypad->base)) {
-		dev_err(&pdev->dev, "Failed to get resource and iomap keypad\n");
-		return PTR_ERR(keypad->base);
-	}
-
-	if (keypad->key_debounce > KPD_DEBOUNCE_MAX) {
-		dev_err(&pdev->dev, "Invalid debounce time value.\n");
-		return -EINVAL;
-	}
-
-	writew(keypad->key_debounce * 32 / 1000 & KPD_DEBOUNCE_MASK,
-		keypad->base + KP_DEBOUNCE);
+	regmap_write(keypad->regmap, KP_DEBOUNCE,
+			debounce * 32 / 1000 & KPD_DEBOUNCE_MASK);
 
 	keypad->clk = devm_clk_get(&pdev->dev, "kpd");
 	if (IS_ERR(keypad->clk)) {
@@ -174,57 +161,52 @@ static int kpd_pdrv_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	devm_add_action_or_reset(&pdev->dev,
+				(void (*)(void *))clk_disable_unprepare,
+				keypad->clk);
+
 	keypad_pinctrl = devm_pinctrl_get(&pdev->dev);
 	if (IS_ERR(keypad_pinctrl)) {
-		ret = PTR_ERR(keypad_pinctrl);
-		goto disable_kpd_clk;
+		return PTR_ERR(keypad_pinctrl);
 	}
 
 	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
 	if (IS_ERR(kpd_default)) {
 		dev_err(&pdev->dev, "No default pinctrl state\n");
-		ret = PTR_ERR(kpd_default);
-		goto disable_kpd_clk;
+		return PTR_ERR(kpd_default);
 	}
 
 	pinctrl_select_state(keypad_pinctrl, kpd_default);
 
-	keypad->irqnr = platform_get_irq(pdev, 0);
-	if (keypad->irqnr < 0) {
+	irqnr = platform_get_irq(pdev, 0);
+	if (irqnr < 0) {
 		dev_err(&pdev->dev, "Failed to get irq\n");
-		ret = -keypad->irqnr;
-		goto disable_kpd_clk;
+		return -irqnr;
 	}
 
-	ret = devm_request_irq(&pdev->dev, keypad->irqnr,
-				kpd_irq_handler, 0,
+	ret = devm_request_threaded_irq(&pdev->dev, irqnr,
+				NULL, kpd_irq_handler, 0,
 				KPD_NAME, keypad);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to request IRQ#%d:%d\n",
-						keypad->irqnr, ret);
-		goto disable_kpd_clk;
+						irqnr, ret);
+		return ret;
 	}
 
 	ret = input_register_device(keypad->input_dev);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to register device\n");
-		goto disable_kpd_clk;
+		return ret;
 	}
 
 	device_init_wakeup(&pdev->dev, keypad->wakeup);
 
-	platform_set_drvdata(pdev, keypad);
-
 	return 0;
-
-disable_kpd_clk:
-	clk_disable_unprepare(keypad->clk);
-	return ret;
 }
 
 static const struct of_device_id kpd_of_match[] = {
 	{.compatible = "mediatek,kp"},
-	{}
+	{/*sentinel*/}
 };
 
 static struct platform_driver kpd_pdrv = {
@@ -234,7 +216,6 @@ static struct platform_driver kpd_pdrv = {
 		   .of_match_table = kpd_of_match,
 	},
 };
-
 module_platform_driver(kpd_pdrv);
 
 MODULE_AUTHOR("Mediatek Corporation");
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
