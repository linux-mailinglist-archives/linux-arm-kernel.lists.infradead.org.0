Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108D2E424B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 06:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cy+Pd0BJp9Tm466E0YXVQGAX4/M9T0NKEy51DrDfWg=; b=fSExu+Dio5rkAW
	EO8fqqYZ2y9bCQMwn7X1OVTLz0kwEIfBV3REMMZEFBrY4Kx8ms2EYXxmzWdsl8NL2LevvaUajp+J4
	pKvsFs3EhqKE/JWDRMsdvItz4FTs9HSNnEUmZD1R6XtlDc6S13zvsLlpp4Pk3xxaW2efABlMlrqLM
	nDu1KhBMjk/JyUc+p1Ze2QwJY2IUdxv3tx3hGAgKre5hc3uZ9cFfLxxSXbKeZpleOEdPldEDhwo9N
	ijl+O7eJdaCX0rXvjHN9RgBserMgtyIOiU03SSF6QVYpBtZheKbfBkRs5sg/dGh0GaEWh5ZmTVsiD
	Kwq2Z9bYFMrzx+AUrdaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqnI-0002Im-Kx; Fri, 25 Oct 2019 04:01:44 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqmX-0001p5-8w
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 04:01:00 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C86E7891AA;
 Fri, 25 Oct 2019 17:00:45 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1571976045;
 bh=ttAgQ3PNAnUigRM+xn8xkD1O1PenLYfvnjj/K0ca3m0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FbmvhkPCCr7XpOVHlzehSmjkHtKZ+vUY9GIHvqKxK4R2kEVREG5r/5SUQf0/rzltU
 9/Iw77v8PlCP9FM+eAnJsjynb/EcStrrnr+shvMXtHEOTsVwWZ2vqR1MpRdVY12kk0
 hJCzSyKJIY0kpPNFGwMLZ1Q/CRcWE3amXvzYCxHRCJM9czTBr6Cxl8BQwh8VTjKqZs
 4ZtZFKVCSjO9lqtGTLGKhDU2kjrgC0MDoa92EC93qANH/7p9VNQBWp2yNkmo+FF0dC
 fj418hPVMYrLK4zMJEuIgOHWzTaDyZxDJYQSXubYvhR1PGK/X4beX8w9LlYLM82pjn
 PD25VlNZjdmAQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5db2736d0001>; Fri, 25 Oct 2019 17:00:45 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 8CAA613EEEB;
 Fri, 25 Oct 2019 17:00:49 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id A015828005C; Fri, 25 Oct 2019 17:00:45 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: robh+dt@kernel.org, mark.rutland@arm.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linus.walleij@linaro.org
Subject: [PATCH 1/2] pinctrl: bcm: nsp: use gpiolib infrastructure for
 interrupts
Date: Fri, 25 Oct 2019 17:00:40 +1300
Message-Id: <20191025040041.6210-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191025040041.6210-1-chris.packham@alliedtelesis.co.nz>
References: <20191025040041.6210-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_210057_688110_1EB0103B 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use more of the gpiolib infrastructure for handling interrupts. The
root interrupt still needs to be handled manually as it is shared with
other peripherals on the SoC.

This will allow multiple instances of this driver to be supported and
will clean up gracefully on failure thanks to the device managed APIs.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 drivers/pinctrl/bcm/pinctrl-nsp-gpio.c | 105 ++++++++++---------------
 1 file changed, 42 insertions(+), 63 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c b/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c
index e67ae52023ad..cf77c6fe9f9c 100644
--- a/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c
@@ -64,17 +64,16 @@
  * @gc: GPIO chip
  * @pctl: pointer to pinctrl_dev
  * @pctldesc: pinctrl descriptor
- * @irq_domain: pointer to irq domain
  * @lock: lock to protect access to I/O registers
  */
 struct nsp_gpio {
 	struct device *dev;
 	void __iomem *base;
 	void __iomem *io_ctrl;
+	struct irq_chip irqchip;
 	struct gpio_chip gc;
 	struct pinctrl_dev *pctl;
 	struct pinctrl_desc pctldesc;
-	struct irq_domain *irq_domain;
 	raw_spinlock_t lock;
 };
 
@@ -136,8 +135,8 @@ static inline bool nsp_get_bit(struct nsp_gpio *chip, enum base_type address,
 
 static irqreturn_t nsp_gpio_irq_handler(int irq, void *data)
 {
-	struct nsp_gpio *chip = (struct nsp_gpio *)data;
-	struct gpio_chip gc = chip->gc;
+	struct gpio_chip *gc = (struct gpio_chip *)data;
+	struct nsp_gpio *chip = gpiochip_get_data(gc);
 	int bit;
 	unsigned long int_bits = 0;
 	u32 int_status;
@@ -155,14 +154,14 @@ static irqreturn_t nsp_gpio_irq_handler(int irq, void *data)
 		level &= readl(chip->base + NSP_GPIO_INT_MASK);
 		int_bits = level | event;
 
-		for_each_set_bit(bit, &int_bits, gc.ngpio) {
+		for_each_set_bit(bit, &int_bits, gc->ngpio) {
 			/*
 			 * Clear the interrupt before invoking the
 			 * handler, so we do not leave any window
 			 */
 			writel(BIT(bit), chip->base + NSP_GPIO_EVENT);
 			generic_handle_irq(
-				irq_linear_revmap(chip->irq_domain, bit));
+				irq_linear_revmap(gc->irq.domain, bit));
 		}
 	}
 
@@ -171,7 +170,8 @@ static irqreturn_t nsp_gpio_irq_handler(int irq, void *data)
 
 static void nsp_gpio_irq_ack(struct irq_data *d)
 {
-	struct nsp_gpio *chip = irq_data_get_irq_chip_data(d);
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct nsp_gpio *chip = gpiochip_get_data(gc);
 	unsigned gpio = d->hwirq;
 	u32 val = BIT(gpio);
 	u32 trigger_type;
@@ -189,7 +189,8 @@ static void nsp_gpio_irq_ack(struct irq_data *d)
  */
 static void nsp_gpio_irq_set_mask(struct irq_data *d, bool unmask)
 {
-	struct nsp_gpio *chip = irq_data_get_irq_chip_data(d);
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct nsp_gpio *chip = gpiochip_get_data(gc);
 	unsigned gpio = d->hwirq;
 	u32 trigger_type;
 
@@ -202,7 +203,8 @@ static void nsp_gpio_irq_set_mask(struct irq_data *d, bool unmask)
 
 static void nsp_gpio_irq_mask(struct irq_data *d)
 {
-	struct nsp_gpio *chip = irq_data_get_irq_chip_data(d);
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct nsp_gpio *chip = gpiochip_get_data(gc);
 	unsigned long flags;
 
 	raw_spin_lock_irqsave(&chip->lock, flags);
@@ -212,7 +214,8 @@ static void nsp_gpio_irq_mask(struct irq_data *d)
 
 static void nsp_gpio_irq_unmask(struct irq_data *d)
 {
-	struct nsp_gpio *chip = irq_data_get_irq_chip_data(d);
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct nsp_gpio *chip = gpiochip_get_data(gc);
 	unsigned long flags;
 
 	raw_spin_lock_irqsave(&chip->lock, flags);
@@ -222,7 +225,8 @@ static void nsp_gpio_irq_unmask(struct irq_data *d)
 
 static int nsp_gpio_irq_set_type(struct irq_data *d, unsigned int type)
 {
-	struct nsp_gpio *chip = irq_data_get_irq_chip_data(d);
+	struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
+	struct nsp_gpio *chip = gpiochip_get_data(gc);
 	unsigned gpio = d->hwirq;
 	bool level_low;
 	bool falling;
@@ -265,16 +269,6 @@ static int nsp_gpio_irq_set_type(struct irq_data *d, unsigned int type)
 	return 0;
 }
 
-static struct irq_chip nsp_gpio_irq_chip = {
-	.name = "gpio-a",
-	.irq_enable = nsp_gpio_irq_unmask,
-	.irq_disable = nsp_gpio_irq_mask,
-	.irq_ack = nsp_gpio_irq_ack,
-	.irq_mask = nsp_gpio_irq_mask,
-	.irq_unmask = nsp_gpio_irq_unmask,
-	.irq_set_type = nsp_gpio_irq_set_type,
-};
-
 static int nsp_gpio_direction_input(struct gpio_chip *gc, unsigned gpio)
 {
 	struct nsp_gpio *chip = gpiochip_get_data(gc);
@@ -322,13 +316,6 @@ static int nsp_gpio_get(struct gpio_chip *gc, unsigned gpio)
 	return !!(readl(chip->base + NSP_GPIO_DATA_IN) & BIT(gpio));
 }
 
-static int nsp_gpio_to_irq(struct gpio_chip *gc, unsigned offset)
-{
-	struct nsp_gpio *chip = gpiochip_get_data(gc);
-
-	return irq_linear_revmap(chip->irq_domain, offset);
-}
-
 static int nsp_get_groups_count(struct pinctrl_dev *pctldev)
 {
 	return 1;
@@ -613,10 +600,9 @@ static const struct of_device_id nsp_gpio_of_match[] = {
 static int nsp_gpio_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	struct nsp_gpio *chip;
 	struct gpio_chip *gc;
-	u32 val, count;
+	u32 val;
 	int irq, ret;
 
 	if (of_property_read_u32(pdev->dev.of_node, "ngpios", &val)) {
@@ -631,15 +617,13 @@ static int nsp_gpio_probe(struct platform_device *pdev)
 	chip->dev = dev;
 	platform_set_drvdata(pdev, chip);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	chip->base = devm_ioremap_resource(dev, res);
+	chip->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(chip->base)) {
 		dev_err(dev, "unable to map I/O memory\n");
 		return PTR_ERR(chip->base);
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	chip->io_ctrl = devm_ioremap_resource(dev, res);
+	chip->io_ctrl = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(chip->io_ctrl)) {
 		dev_err(dev, "unable to map I/O memory\n");
 		return PTR_ERR(chip->io_ctrl);
@@ -659,44 +643,44 @@ static int nsp_gpio_probe(struct platform_device *pdev)
 	gc->direction_output = nsp_gpio_direction_output;
 	gc->set = nsp_gpio_set;
 	gc->get = nsp_gpio_get;
-	gc->to_irq = nsp_gpio_to_irq;
 
 	/* optional GPIO interrupt support */
 	irq = platform_get_irq(pdev, 0);
 	if (irq > 0) {
-		/* Create irq domain so that each pin can be assigned an IRQ.*/
-		chip->irq_domain = irq_domain_add_linear(gc->of_node, gc->ngpio,
-							 &irq_domain_simple_ops,
-							 chip);
-		if (!chip->irq_domain) {
-			dev_err(&pdev->dev, "Couldn't allocate IRQ domain\n");
-			return -ENXIO;
-		}
+		struct gpio_irq_chip *girq;
+		struct irq_chip *irqc;
 
-		/* Map each gpio to an IRQ and set the handler for gpiolib. */
-		for (count = 0; count < gc->ngpio; count++) {
-			int irq = irq_create_mapping(chip->irq_domain, count);
+		irqc = &chip->irqchip;
+		irqc->name = dev_name(dev);
+		irqc->irq_ack = nsp_gpio_irq_ack;
+		irqc->irq_mask = nsp_gpio_irq_mask;
+		irqc->irq_unmask = nsp_gpio_irq_unmask;
+		irqc->irq_set_type = nsp_gpio_irq_set_type;
 
-			irq_set_chip_and_handler(irq, &nsp_gpio_irq_chip,
-						 handle_simple_irq);
-			irq_set_chip_data(irq, chip);
-		}
+		val = readl(chip->base + NSP_CHIP_A_INT_MASK);
+		val = val | NSP_CHIP_A_GPIO_INT_BIT;
+		writel(val, (chip->base + NSP_CHIP_A_INT_MASK));
 
 		/* Install ISR for this GPIO controller. */
-		ret = devm_request_irq(&pdev->dev, irq, nsp_gpio_irq_handler,
-				       IRQF_SHARED, "gpio-a", chip);
+		ret = devm_request_irq(dev, irq, nsp_gpio_irq_handler,
+				       IRQF_SHARED, "gpio-a", &chip->gc);
 		if (ret) {
 			dev_err(&pdev->dev, "Unable to request IRQ%d: %d\n",
 				irq, ret);
-			goto err_rm_gpiochip;
+			return ret;
 		}
 
-		val = readl(chip->base + NSP_CHIP_A_INT_MASK);
-		val = val | NSP_CHIP_A_GPIO_INT_BIT;
-		writel(val, (chip->base + NSP_CHIP_A_INT_MASK));
+		girq = &chip->gc.irq;
+		girq->chip = irqc;
+		/* This will let us handle the parent IRQ in the driver */
+		girq->parent_handler = NULL;
+		girq->num_parents = 0;
+		girq->parents = NULL;
+		girq->default_type = IRQ_TYPE_NONE;
+		girq->handler = handle_simple_irq;
 	}
 
-	ret = gpiochip_add_data(gc, chip);
+	ret = devm_gpiochip_add_data(dev, gc, chip);
 	if (ret < 0) {
 		dev_err(dev, "unable to add GPIO chip\n");
 		return ret;
@@ -705,15 +689,10 @@ static int nsp_gpio_probe(struct platform_device *pdev)
 	ret = nsp_gpio_register_pinconf(chip);
 	if (ret) {
 		dev_err(dev, "unable to register pinconf\n");
-		goto err_rm_gpiochip;
+		return ret;
 	}
 
 	return 0;
-
-err_rm_gpiochip:
-	gpiochip_remove(gc);
-
-	return ret;
 }
 
 static struct platform_driver nsp_gpio_driver = {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
