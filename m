Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE0F1205E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:38:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGNZRl77rxsqrLI1//497FlTd5YFL7s/JrgFNCgKZtY=; b=gqHgq/c4scZ+at
	iImKNTf1RoVCgLBKTA2mrbOmzg4CqVHfWAOxQdN3Z3XStsK0N4cNwOt2ueGhci+KR+OemU6zyCmp5
	Be3UCIvv0XxzX7QVTTN+wHFyRbBk5uIuGPE5DAr8xAzTaheULoGWrQd4O5yOlwKkZNnEBY8vv6uIj
	VcMcJHIAJMoZFGzoZzo/CPHUVOkPqej1Nuci+6bDgpx6jFpvy4rmSLeLbDS4sl+QLVw48ETmNxyFf
	5u7HJZIVWQvc2btgkS1D9KOZ8Jr2sZJdMDUjxOzZIMkDj7wZNAn4G+PAXeOToEfw7Z5NReKdA6ZjR
	7IglZmgiKA8miSzleLbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpdB-0004PF-SK; Mon, 16 Dec 2019 12:37:45 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpcO-0003t0-Eh; Mon, 16 Dec 2019 12:36:58 +0000
Received: from localhost.localdomain (10.28.8.19) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Mon, 16 Dec 2019
 20:37:24 +0800
From: Qianggui Song <qianggui.song@amlogic.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2 2/4] irqchip/meson-gpio: rework meson irqchip driver to
 support meson-A1 SoCs
Date: Mon, 16 Dec 2019 20:36:43 +0800
Message-ID: <20191216123645.10099-3-qianggui.song@amlogic.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216123645.10099-1-qianggui.song@amlogic.com>
References: <20191216123645.10099-1-qianggui.song@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.19]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043656_534361_DAAE8811 
X-CRM114-Status: GOOD (  13.49  )
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

Since Meson-A1 SoCs register layout of gpio interrupt controller has
difference with previous chips, registers to decide irq line and offset
of trigger method are all changed, the current driver should be modified.

Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
---
 drivers/irqchip/irq-meson-gpio.c | 95 +++++++++++++++++++++++---------
 1 file changed, 70 insertions(+), 25 deletions(-)

diff --git a/drivers/irqchip/irq-meson-gpio.c b/drivers/irqchip/irq-meson-gpio.c
index 829084b568fa..5a1a59e50bb3 100644
--- a/drivers/irqchip/irq-meson-gpio.c
+++ b/drivers/irqchip/irq-meson-gpio.c
@@ -30,44 +30,75 @@
  * stuck at 0. Bits 8 to 15 are responsive and have the expected
  * effect.
  */
-#define REG_EDGE_POL_EDGE(x)	BIT(x)
-#define REG_EDGE_POL_LOW(x)	BIT(16 + (x))
-#define REG_BOTH_EDGE(x)	BIT(8 + (x))
-#define REG_EDGE_POL_MASK(x)    (	\
-		REG_EDGE_POL_EDGE(x) |	\
-		REG_EDGE_POL_LOW(x)  |	\
-		REG_BOTH_EDGE(x))
+#define REG_EDGE_POL_EDGE(params, x)	BIT((params)->edge_single_offset + (x))
+#define REG_EDGE_POL_LOW(params, x)	BIT((params)->pol_low_offset + (x))
+#define REG_BOTH_EDGE(params, x)	BIT((params)->edge_both_offset + (x))
+#define REG_EDGE_POL_MASK(params, x)    (	\
+		REG_EDGE_POL_EDGE(params, x) |	\
+		REG_EDGE_POL_LOW(params, x)  |	\
+		REG_BOTH_EDGE(params, x))
 #define REG_PIN_SEL_SHIFT(x)	(((x) % 4) * 8)
 #define REG_FILTER_SEL_SHIFT(x)	((x) * 4)
 
+struct meson_gpio_irq_controller;
+static void meson8_gpio_irq_sel_pin(struct meson_gpio_irq_controller *ctl,
+				    unsigned int channel, unsigned long hwirq);
+static void meson_gpio_irq_init_dummy(struct meson_gpio_irq_controller *ctl);
+
+struct irq_ctl_ops {
+	void (*gpio_irq_sel_pin)(struct meson_gpio_irq_controller *ctl,
+				 unsigned int channel, unsigned long hwirq);
+	void (*gpio_irq_init)(struct meson_gpio_irq_controller *ctl);
+};
+
 struct meson_gpio_irq_params {
 	unsigned int nr_hwirq;
 	bool support_edge_both;
+	unsigned int edge_both_offset;
+	unsigned int edge_single_offset;
+	unsigned int pol_low_offset;
+	unsigned int pin_sel_mask;
+	struct irq_ctl_ops ops;
 };
 
+#define INIT_MESON_COMMON(irqs, init, sel)			\
+	.nr_hwirq = irqs,					\
+	.ops = {						\
+		.gpio_irq_init = init,				\
+		.gpio_irq_sel_pin = sel,			\
+	},
+
+#define INIT_MESON8_COMMON_DATA(irqs)				\
+	INIT_MESON_COMMON(irqs, meson_gpio_irq_init_dummy,	\
+			  meson8_gpio_irq_sel_pin)		\
+	.edge_single_offset = 0,				\
+	.pol_low_offset = 16,					\
+	.pin_sel_mask = 0xff,					\
+
 static const struct meson_gpio_irq_params meson8_params = {
-	.nr_hwirq = 134,
+	INIT_MESON8_COMMON_DATA(134)
 };
 
 static const struct meson_gpio_irq_params meson8b_params = {
-	.nr_hwirq = 119,
+	INIT_MESON8_COMMON_DATA(119)
 };
 
 static const struct meson_gpio_irq_params gxbb_params = {
-	.nr_hwirq = 133,
+	INIT_MESON8_COMMON_DATA(133)
 };
 
 static const struct meson_gpio_irq_params gxl_params = {
-	.nr_hwirq = 110,
+	INIT_MESON8_COMMON_DATA(110)
 };
 
 static const struct meson_gpio_irq_params axg_params = {
-	.nr_hwirq = 100,
+	INIT_MESON8_COMMON_DATA(100)
 };
 
 static const struct meson_gpio_irq_params sm1_params = {
-	.nr_hwirq = 100,
+	INIT_MESON8_COMMON_DATA(100)
 	.support_edge_both = true,
+	.edge_both_offset = 8,
 };
 
 static const struct of_device_id meson_irq_gpio_matches[] = {
@@ -100,9 +131,22 @@ static void meson_gpio_irq_update_bits(struct meson_gpio_irq_controller *ctl,
 	writel_relaxed(tmp, ctl->base + reg);
 }
 
-static unsigned int meson_gpio_irq_channel_to_reg(unsigned int channel)
+static void meson_gpio_irq_init_dummy(struct meson_gpio_irq_controller *ctl)
 {
-	return (channel < 4) ? REG_PIN_03_SEL : REG_PIN_47_SEL;
+}
+
+static void meson8_gpio_irq_sel_pin(struct meson_gpio_irq_controller *ctl,
+				    unsigned int channel, unsigned long hwirq)
+{
+	unsigned int reg_offset;
+	unsigned int bit_offset;
+
+	reg_offset = (channel < 4) ? REG_PIN_03_SEL : REG_PIN_47_SEL;
+	bit_offset = REG_PIN_SEL_SHIFT(channel);
+
+	meson_gpio_irq_update_bits(ctl, reg_offset,
+				   ctl->params->pin_sel_mask << bit_offset,
+				   hwirq << bit_offset);
 }
 
 static int
@@ -110,7 +154,7 @@ meson_gpio_irq_request_channel(struct meson_gpio_irq_controller *ctl,
 			       unsigned long  hwirq,
 			       u32 **channel_hwirq)
 {
-	unsigned int reg, idx;
+	unsigned int idx;
 
 	spin_lock(&ctl->lock);
 
@@ -129,10 +173,7 @@ meson_gpio_irq_request_channel(struct meson_gpio_irq_controller *ctl,
 	 * Setup the mux of the channel to route the signal of the pad
 	 * to the appropriate input of the GIC
 	 */
-	reg = meson_gpio_irq_channel_to_reg(idx);
-	meson_gpio_irq_update_bits(ctl, reg,
-				   0xff << REG_PIN_SEL_SHIFT(idx),
-				   hwirq << REG_PIN_SEL_SHIFT(idx));
+	ctl->params->ops.gpio_irq_sel_pin(ctl, idx, hwirq);
 
 	/*
 	 * Get the hwirq number assigned to this channel through
@@ -173,7 +214,9 @@ static int meson_gpio_irq_type_setup(struct meson_gpio_irq_controller *ctl,
 {
 	u32 val = 0;
 	unsigned int idx;
+	const struct meson_gpio_irq_params *params;
 
+	params = ctl->params;
 	idx = meson_gpio_irq_get_channel_idx(ctl, channel_hwirq);
 
 	/*
@@ -190,22 +233,22 @@ static int meson_gpio_irq_type_setup(struct meson_gpio_irq_controller *ctl,
 	 * precedence over the other edge/polarity settings
 	 */
 	if (type == IRQ_TYPE_EDGE_BOTH) {
-		if (!ctl->params->support_edge_both)
+		if (!params->support_edge_both)
 			return -EINVAL;
 
-		val |= REG_BOTH_EDGE(idx);
+		val |= REG_BOTH_EDGE(params, idx);
 	} else {
 		if (type & (IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING))
-			val |= REG_EDGE_POL_EDGE(idx);
+			val |= REG_EDGE_POL_EDGE(params, idx);
 
 		if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_EDGE_FALLING))
-			val |= REG_EDGE_POL_LOW(idx);
+			val |= REG_EDGE_POL_LOW(params, idx);
 	}
 
 	spin_lock(&ctl->lock);
 
 	meson_gpio_irq_update_bits(ctl, REG_EDGE_POL,
-				   REG_EDGE_POL_MASK(idx), val);
+				   REG_EDGE_POL_MASK(params, idx), val);
 
 	spin_unlock(&ctl->lock);
 
@@ -371,6 +414,8 @@ static int __init meson_gpio_irq_parse_dt(struct device_node *node,
 		return ret;
 	}
 
+	ctl->params->ops.gpio_irq_init(ctl);
+
 	return 0;
 }
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
