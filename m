Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FDE196CB2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 12:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/BA9laN+i3HHehT1aDP4qPM2yrPWM336cjQcsIjWkc=; b=l7VMlIBuae+3B0
	IdmR8mV4vP28t8xTXKpOP+LG/Eac5Kavrw4yO+7YD0fdugEQyffxxEo1/zLu/OgHiMmim1YED8AAu
	ux8zBY2ncYEVZSkQjGyFNIIOZhip6NT8U49gR2c0X9ccxLRrqfQ2uX5mzvNQtY8Ek989TszSFKIFC
	8tyF+zOVuA4AV6zGbdbOWDhLsTndi7Yx8E2QHW+7X8hFRLoxQ/Au8s5oImbkwj6xFGhnlowAufGw2
	3atCQ6z6xD7FMGF4YaDqVpxID4C5SvxzB4oU9WIf/3wihXVNzHt8RsloZkWCw/TNJrn+Q+4KNIfsV
	HKRnmoQ11XUw3AH0G1sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVWa-0007R4-Mo; Sun, 29 Mar 2020 10:50:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVWL-0004cE-Cs
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 10:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GLHX83WiWrbw0xWg/XQ2tOkwXBY7qtdG5WKMA6uMzmI=; b=wU9meT5mbVeDOSgiRqSCPJg/Zf
 0T0clGOblmDumfK3Y2tu+E3t3fOxYSDpjGem+CcAkFso+FOvjwljDzqk8wHUy6frWOWCZW0kc8NIF
 lPjSwLJ7/446HaV/xRidkBxBPY83m/KuzZPuzzm9/4reWPGK43GDcsHgy/0zoQggEqmB2bjdbnb/u
 QNgEH2jWJ+sV4l3On3Iv/OcCJpGAzOJzgS3KZcKp3cRXACgO/JUM3kVP5AVvH2lpg5Ytm6cZ0Tqjq
 aoWe9Bu7S1NB1/zZmJ3b+MrNxcI0uLZ/nxrw36oFok1qDbbkN6jDn7Gsi269m0P8NonvKZ41Mbgqw
 rY8xFbXQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:37646 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVU5-0004VG-O8; Sun, 29 Mar 2020 11:48:05 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVU4-0005gx-Mh; Sun, 29 Mar 2020 11:48:04 +0100
In-Reply-To: <20200329104549.GX25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-pwm@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "Uwe Kleine-Konig" <u.kleine-koenig@pengutronix.de>
Subject: [PATCH RFC 1/6] gpio: mvebu: convert pwm to regmap
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jIVU4-0005gx-Mh@rmk-PC.armlinux.org.uk>
Date: Sun, 29 Mar 2020 11:48:04 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_035025_707911_B3909A06 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert mvebu's pwm support to use regmap to access the registers to
prepare the driver to support the "blink" support on CP110.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpio/gpio-mvebu.c | 69 ++++++++++++++++++++++-----------------
 1 file changed, 39 insertions(+), 30 deletions(-)

diff --git a/drivers/gpio/gpio-mvebu.c b/drivers/gpio/gpio-mvebu.c
index e64c40095356..fa5641615db6 100644
--- a/drivers/gpio/gpio-mvebu.c
+++ b/drivers/gpio/gpio-mvebu.c
@@ -94,7 +94,8 @@
 #define MVEBU_MAX_GPIO_PER_BANK		32
 
 struct mvebu_pwm {
-	void __iomem		*membase;
+	struct regmap		*regs;
+	u32			 offset;
 	unsigned long		 clk_rate;
 	struct gpio_desc	*gpiod;
 	struct pwm_chip		 chip;
@@ -129,6 +130,13 @@ struct mvebu_gpio_chip {
 	u32		   level_mask_regs[4];
 };
 
+static const struct regmap_config mvebu_gpio_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.fast_io = true,
+};
+
 /*
  * Functions returning addresses of individual registers for a given
  * GPIO controller.
@@ -280,17 +288,17 @@ mvebu_gpio_write_level_mask(struct mvebu_gpio_chip *mvchip, u32 val)
 }
 
 /*
- * Functions returning addresses of individual registers for a given
+ * Functions returning regmap offsets of individual registers for a given
  * PWM controller.
  */
-static void __iomem *mvebu_pwmreg_blink_on_duration(struct mvebu_pwm *mvpwm)
+static u32 mvebu_pwmreg_blink_on_duration(struct mvebu_pwm *mvpwm)
 {
-	return mvpwm->membase + PWM_BLINK_ON_DURATION_OFF;
+	return PWM_BLINK_ON_DURATION_OFF + mvpwm->offset;
 }
 
-static void __iomem *mvebu_pwmreg_blink_off_duration(struct mvebu_pwm *mvpwm)
+static u32 mvebu_pwmreg_blink_off_duration(struct mvebu_pwm *mvpwm)
 {
-	return mvpwm->membase + PWM_BLINK_OFF_DURATION_OFF;
+	return PWM_BLINK_OFF_DURATION_OFF + mvpwm->offset;
 }
 
 /*
@@ -660,8 +668,8 @@ static void mvebu_pwm_get_state(struct pwm_chip *chip,
 
 	spin_lock_irqsave(&mvpwm->lock, flags);
 
-	val = (unsigned long long)
-		readl_relaxed(mvebu_pwmreg_blink_on_duration(mvpwm));
+	regmap_read(mvpwm->regs, mvebu_pwmreg_blink_on_duration(mvpwm), &u);
+	val = (unsigned long long)u;
 	val *= NSEC_PER_SEC;
 	do_div(val, mvpwm->clk_rate);
 	if (val > UINT_MAX)
@@ -671,8 +679,8 @@ static void mvebu_pwm_get_state(struct pwm_chip *chip,
 	else
 		state->duty_cycle = 1;
 
-	val = (unsigned long long)
-		readl_relaxed(mvebu_pwmreg_blink_off_duration(mvpwm));
+	regmap_read(mvpwm->regs, mvebu_pwmreg_blink_off_duration(mvpwm), &u);
+	val = (unsigned long long)u;
 	val *= NSEC_PER_SEC;
 	do_div(val, mvpwm->clk_rate);
 	if (val < state->duty_cycle) {
@@ -726,8 +734,8 @@ static int mvebu_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 
 	spin_lock_irqsave(&mvpwm->lock, flags);
 
-	writel_relaxed(on, mvebu_pwmreg_blink_on_duration(mvpwm));
-	writel_relaxed(off, mvebu_pwmreg_blink_off_duration(mvpwm));
+	regmap_write(mvpwm->regs, mvebu_pwmreg_blink_on_duration(mvpwm), on);
+	regmap_write(mvpwm->regs, mvebu_pwmreg_blink_off_duration(mvpwm), off);
 	if (state->enabled)
 		mvebu_gpio_blink(&mvchip->chip, pwm->hwpwm, 1);
 	else
@@ -752,10 +760,10 @@ static void __maybe_unused mvebu_pwm_suspend(struct mvebu_gpio_chip *mvchip)
 
 	regmap_read(mvchip->regs, GPIO_BLINK_CNT_SELECT_OFF + mvchip->offset,
 		    &mvpwm->blink_select);
-	mvpwm->blink_on_duration =
-		readl_relaxed(mvebu_pwmreg_blink_on_duration(mvpwm));
-	mvpwm->blink_off_duration =
-		readl_relaxed(mvebu_pwmreg_blink_off_duration(mvpwm));
+	regmap_read(mvpwm->regs, mvebu_pwmreg_blink_on_duration(mvpwm),
+		    &mvpwm->blink_on_duration);
+	regmap_read(mvpwm->regs, mvebu_pwmreg_blink_off_duration(mvpwm),
+		    &mvpwm->blink_off_duration);
 }
 
 static void __maybe_unused mvebu_pwm_resume(struct mvebu_gpio_chip *mvchip)
@@ -764,10 +772,10 @@ static void __maybe_unused mvebu_pwm_resume(struct mvebu_gpio_chip *mvchip)
 
 	regmap_write(mvchip->regs, GPIO_BLINK_CNT_SELECT_OFF + mvchip->offset,
 		     mvpwm->blink_select);
-	writel_relaxed(mvpwm->blink_on_duration,
-		       mvebu_pwmreg_blink_on_duration(mvpwm));
-	writel_relaxed(mvpwm->blink_off_duration,
-		       mvebu_pwmreg_blink_off_duration(mvpwm));
+	regmap_write(mvpwm->regs, mvebu_pwmreg_blink_on_duration(mvpwm),
+		     mvpwm->blink_on_duration);
+	regmap_write(mvpwm->regs, mvebu_pwmreg_blink_off_duration(mvpwm),
+		     mvpwm->blink_off_duration);
 }
 
 static int mvebu_pwm_probe(struct platform_device *pdev,
@@ -776,6 +784,7 @@ static int mvebu_pwm_probe(struct platform_device *pdev,
 {
 	struct device *dev = &pdev->dev;
 	struct mvebu_pwm *mvpwm;
+	void __iomem *base;
 	u32 set;
 
 	if (!of_device_is_compatible(mvchip->chip.of_node,
@@ -795,12 +804,14 @@ static int mvebu_pwm_probe(struct platform_device *pdev,
 		set = U32_MAX;
 	else
 		return -EINVAL;
+
 	regmap_write(mvchip->regs,
 		     GPIO_BLINK_CNT_SELECT_OFF + mvchip->offset, set);
 
 	mvpwm = devm_kzalloc(dev, sizeof(struct mvebu_pwm), GFP_KERNEL);
 	if (!mvpwm)
 		return -ENOMEM;
+
 	mvchip->mvpwm = mvpwm;
 	mvpwm->mvchip = mvchip;
 
@@ -810,9 +821,14 @@ static int mvebu_pwm_probe(struct platform_device *pdev,
 	 * for the first two GPIO chips. So if the resource is missing
 	 * we can't treat it as an error.
 	 */
-	mvpwm->membase = devm_platform_ioremap_resource_byname(pdev, "pwm");
-	if (IS_ERR(mvpwm->membase))
-		return PTR_ERR(mvpwm->membase);
+	base = devm_platform_ioremap_resource_byname(pdev, "pwm");
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	mvpwm->regs = devm_regmap_init_mmio(&pdev->dev, base,
+					    &mvebu_gpio_regmap_config);
+	if (IS_ERR(mvpwm->regs))
+		return PTR_ERR(mvpwm->regs);
 
 	mvpwm->clk_rate = clk_get_rate(mvchip->clk);
 	if (!mvpwm->clk_rate) {
@@ -1023,13 +1039,6 @@ static int mvebu_gpio_resume(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct regmap_config mvebu_gpio_regmap_config = {
-	.reg_bits = 32,
-	.reg_stride = 4,
-	.val_bits = 32,
-	.fast_io = true,
-};
-
 static int mvebu_gpio_probe_raw(struct platform_device *pdev,
 				struct mvebu_gpio_chip *mvchip)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
