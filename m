Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771661205EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:38:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au0logX0rKVPBMjm3MHGMkME8N74S3CVdEb4hYy5tAM=; b=SUAVJ5ShKGpoxp
	mlOnFBtqSmXixLe68nm34cFNS3ORIomxCtAB8Q8x74Xcum1KkmpZxcYFAWvP/z/xhwVBT50JsNZNw
	8X3/Kww5aRJ2xV/TgraJWsA3ntOl++IR+kpxaJ2VGxuMxsuIZZn/hWdJBfntLQMjpKD506kLnjS90
	jtlblplhrc8uEmB880R9D66ZWN1QocIRLVY/oYABD4Waj6F5GI16anl8UqBTorWm8wRBOuS+XHxFj
	yApW3PBoG79v4IjiO93eTVGz39t8x9tjsTWNjglGtWLRA1Ql8cN5JS13OCex8+2PvQSpz1z77Hhjn
	aMuEG+o5Bo9hcvZhzQvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpdY-0004oM-6o; Mon, 16 Dec 2019 12:38:08 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpcQ-0003t0-Km; Mon, 16 Dec 2019 12:37:00 +0000
Received: from localhost.localdomain (10.28.8.19) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Mon, 16 Dec 2019
 20:37:24 +0800
From: Qianggui Song <qianggui.song@amlogic.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2 3/4] irqchip/meson-gpio: Add support for meson a1 SoCs
Date: Mon, 16 Dec 2019 20:36:44 +0800
Message-ID: <20191216123645.10099-4-qianggui.song@amlogic.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216123645.10099-1-qianggui.song@amlogic.com>
References: <20191216123645.10099-1-qianggui.song@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.19]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043658_715084_011D96C3 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Qianggui Song <qianggui.song@amlogic.com>,
 Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The meson a1 Socs have some changes compared with previous
chips. For A113L, it contains 62 pins and can be spied on:

- 62:128 undefined
- 61:50 12 pins on bank A
- 49:37 13 pins on bank F
- 36:20 17 pins on bank X
- 19:13 7  pins on bank B
- 12:0  13 pins on bank P

There are five relative registers for gpio interrupt controller,
details are as below:

- PADCTRL_GPIO_IRQ_CTRL0
  bit[31]:    enable/disable the whole irq lines
  bit[16-23]: both edge trigger
  bit[8-15]:  single edge trigger
  bit[0-7]:   pol trigger

- PADCTRL_GPIO_IRQ_CTRL[X]
  bit[0-6]:   7 bits to choose gpio source for irq line 2*[X] - 2
  bit[16-22]: 7 bits to choose gpio source for irq line 2*[X] - 1
  where X =1,2,3,4

Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
---
 drivers/irqchip/irq-meson-gpio.c | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/irqchip/irq-meson-gpio.c b/drivers/irqchip/irq-meson-gpio.c
index 5a1a59e50bb3..ccc7f823911b 100644
--- a/drivers/irqchip/irq-meson-gpio.c
+++ b/drivers/irqchip/irq-meson-gpio.c
@@ -24,6 +24,9 @@
 #define REG_PIN_47_SEL	0x08
 #define REG_FILTER_SEL	0x0c
 
+/* use for A1 like chips */
+#define REG_PIN_A1_SEL	0x04
+
 /*
  * Note: The S905X3 datasheet reports that BOTH_EDGE is controlled by
  * bits 24 to 31. Tests on the actual HW show that these bits are
@@ -44,6 +47,10 @@ struct meson_gpio_irq_controller;
 static void meson8_gpio_irq_sel_pin(struct meson_gpio_irq_controller *ctl,
 				    unsigned int channel, unsigned long hwirq);
 static void meson_gpio_irq_init_dummy(struct meson_gpio_irq_controller *ctl);
+static void meson_a1_gpio_irq_sel_pin(struct meson_gpio_irq_controller *ctl,
+				      unsigned int channel,
+				      unsigned long hwirq);
+static void meson_a1_gpio_irq_init(struct meson_gpio_irq_controller *ctl);
 
 struct irq_ctl_ops {
 	void (*gpio_irq_sel_pin)(struct meson_gpio_irq_controller *ctl,
@@ -75,6 +82,15 @@ struct meson_gpio_irq_params {
 	.pol_low_offset = 16,					\
 	.pin_sel_mask = 0xff,					\
 
+#define INIT_MESON_A1_COMMON_DATA(irqs)				\
+	INIT_MESON_COMMON(irqs, meson_a1_gpio_irq_init,		\
+			  meson_a1_gpio_irq_sel_pin)		\
+	.support_edge_both = true,				\
+	.edge_both_offset = 16,					\
+	.edge_single_offset = 8,				\
+	.pol_low_offset = 0,					\
+	.pin_sel_mask = 0x7f,					\
+
 static const struct meson_gpio_irq_params meson8_params = {
 	INIT_MESON8_COMMON_DATA(134)
 };
@@ -101,6 +117,10 @@ static const struct meson_gpio_irq_params sm1_params = {
 	.edge_both_offset = 8,
 };
 
+static const struct meson_gpio_irq_params a1_params = {
+	INIT_MESON_A1_COMMON_DATA(62)
+};
+
 static const struct of_device_id meson_irq_gpio_matches[] = {
 	{ .compatible = "amlogic,meson8-gpio-intc", .data = &meson8_params },
 	{ .compatible = "amlogic,meson8b-gpio-intc", .data = &meson8b_params },
@@ -109,6 +129,7 @@ static const struct of_device_id meson_irq_gpio_matches[] = {
 	{ .compatible = "amlogic,meson-axg-gpio-intc", .data = &axg_params },
 	{ .compatible = "amlogic,meson-g12a-gpio-intc", .data = &axg_params },
 	{ .compatible = "amlogic,meson-sm1-gpio-intc", .data = &sm1_params },
+	{ .compatible = "amlogic,meson-a1-gpio-intc", .data = &a1_params },
 	{ }
 };
 
@@ -149,6 +170,27 @@ static void meson8_gpio_irq_sel_pin(struct meson_gpio_irq_controller *ctl,
 				   hwirq << bit_offset);
 }
 
+static void meson_a1_gpio_irq_sel_pin(struct meson_gpio_irq_controller *ctl,
+				      unsigned int channel,
+				      unsigned long hwirq)
+{
+	unsigned int reg_offset;
+	unsigned int bit_offset;
+
+	bit_offset = ((channel % 2) == 0) ? 0 : 16;
+	reg_offset = REG_PIN_A1_SEL + ((channel / 2) << 2);
+
+	meson_gpio_irq_update_bits(ctl, reg_offset,
+				   ctl->params->pin_sel_mask << bit_offset,
+				   hwirq << bit_offset);
+}
+
+/* For a1 or later chips like a1 there is a switch to enable/disable irq */
+static void meson_a1_gpio_irq_init(struct meson_gpio_irq_controller *ctl)
+{
+	meson_gpio_irq_update_bits(ctl, REG_EDGE_POL, BIT(31), BIT(31));
+}
+
 static int
 meson_gpio_irq_request_channel(struct meson_gpio_irq_controller *ctl,
 			       unsigned long  hwirq,
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
