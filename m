Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B645AA0C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 12:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yumxuFJzoUaxsVP7vSU29YJTXANkw7NvjGxda3YuAKU=; b=B3BArerReaoCaP
	qoQzXStgzgzvSD87v8HVZDxtF/a3w5ixOsgjsXQutTgYJYxNZBY8giwx0RhvqBm81ALHTGvjzsRiR
	FZcb7zslmRt5mjt99ePoXDK2pRItfCAqHLkIeWdfJYPteyRO0j9W8V6wZBk41FXoePu4VxuDtKWFf
	XV9ZS9e8jHGSQVeQQqNfvOWBKASRYweyNTOf0nBCuGIjxXtnyhuJELyQ17EN6GOoquRik3jABLO2c
	Ji6xlf2C8NUVg2cIVAwDF0rGcI4QqjeE5Gj0YXGolLz6LaOgTZmgCM/ywwkh/k2ANCTTZ8OBJI3nl
	YgOiRs0RBQbttLSHGgTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhAPO-00041n-Un; Sat, 29 Jun 2019 10:16:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhAPC-0002hG-4b
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 10:16:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=axsPC3wX0XHnH3+RfHTu3seGbiYY71PcYxSe+TIztgo=; b=Pl4e3mfF6jtFWOrIDXvNeHplIn
 DUuueRL1YfDlUTvQS8HBcZ+qqeZshrouGsfb3Qbutz79FFKd8FHjAN2FKi/l6sx/+svx6qYP2+2Lg
 0L8p0k/mGm1NPdrDYSedHrBW6sZJAH6wNjOYfrnzfNm6gdVv9gCDb9oc/oM/e//3wt23BpNBrP3Pp
 IEvWWe1XmWQ8bMbCtMRXRTsGHyGbdbK6c3QObSJOUcLUnrQtHsijZhDcfTGL+9YL7q69NZV9lD8fg
 Q1z6gqPIGa8K7Ff8WpPJOkygCnxYIkqux/gq4s1SsxFiSaZ/Hgb3A0Kq/S3zeQ56C9DqVf8PFWnGX
 FoKSn3gw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:51794 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hhAN1-000687-7i; Sat, 29 Jun 2019 11:14:11 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hhAN0-0007Jn-NP; Sat, 29 Jun 2019 11:14:10 +0100
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] ARM: sa1100: convert to common clock framework
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hhAN0-0007Jn-NP@rmk-PC.armlinux.org.uk>
Date: Sat, 29 Jun 2019 11:14:10 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_031626_609161_5AB948C5 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert sa1100 to use the common clock framework.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
Please ack; this is part of a larger series.  Thanks.

 arch/arm/Kconfig             |   1 +
 arch/arm/mach-sa1100/clock.c | 221 +++++++++++++++++++------------------------
 2 files changed, 96 insertions(+), 126 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9aed25a6019b..005549cbc963 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -549,6 +549,7 @@ config ARCH_SA1100
 	select CLKSRC_MMIO
 	select CLKSRC_PXA
 	select TIMER_OF if OF
+	select COMMON_CLK
 	select CPU_FREQ
 	select CPU_SA1100
 	select GENERIC_CLOCKEVENTS
diff --git a/arch/arm/mach-sa1100/clock.c b/arch/arm/mach-sa1100/clock.c
index 6199e87447ca..523ef25618f7 100644
--- a/arch/arm/mach-sa1100/clock.c
+++ b/arch/arm/mach-sa1100/clock.c
@@ -2,176 +2,145 @@
 /*
  *  linux/arch/arm/mach-sa1100/clock.c
  */
-#include <linux/module.h>
 #include <linux/kernel.h>
-#include <linux/device.h>
-#include <linux/list.h>
 #include <linux/errno.h>
 #include <linux/err.h>
-#include <linux/string.h>
 #include <linux/clk.h>
-#include <linux/spinlock.h>
-#include <linux/mutex.h>
-#include <linux/io.h>
 #include <linux/clkdev.h>
+#include <linux/clk-provider.h>
+#include <linux/io.h>
+#include <linux/spinlock.h>
 
 #include <mach/hardware.h>
 #include <mach/generic.h>
 
-struct clkops {
-	void			(*enable)(struct clk *);
-	void			(*disable)(struct clk *);
-	unsigned long		(*get_rate)(struct clk *);
+static const char * const clk_tucr_parents[] = {
+	"clk32768", "clk3686400",
 };
 
-struct clk {
-	const struct clkops	*ops;
-	unsigned int		enabled;
-};
-
-#define DEFINE_CLK(_name, _ops)				\
-struct clk clk_##_name = {				\
-		.ops	= _ops,				\
-	}
-
-static DEFINE_SPINLOCK(clocks_lock);
-
-/* Dummy clk routine to build generic kernel parts that may be using them */
-long clk_round_rate(struct clk *clk, unsigned long rate)
-{
-	return clk_get_rate(clk);
-}
-EXPORT_SYMBOL(clk_round_rate);
-
-int clk_set_rate(struct clk *clk, unsigned long rate)
-{
-	return 0;
-}
-EXPORT_SYMBOL(clk_set_rate);
-
-int clk_set_parent(struct clk *clk, struct clk *parent)
-{
-	return 0;
-}
-EXPORT_SYMBOL(clk_set_parent);
+static DEFINE_SPINLOCK(tucr_lock);
 
-struct clk *clk_get_parent(struct clk *clk)
+static int clk_gpio27_enable(struct clk_hw *hw)
 {
-	return NULL;
-}
-EXPORT_SYMBOL(clk_get_parent);
+	unsigned long flags;
 
-static void clk_gpio27_enable(struct clk *clk)
-{
 	/*
 	 * First, set up the 3.6864MHz clock on GPIO 27 for the SA-1111:
 	 * (SA-1110 Developer's Manual, section 9.1.2.1)
 	 */
+	local_irq_save(flags);
 	GAFR |= GPIO_32_768kHz;
 	GPDR |= GPIO_32_768kHz;
-	TUCR = TUCR_3_6864MHz;
+	local_irq_restore(flags);
+
+	return 0;
 }
 
-static void clk_gpio27_disable(struct clk *clk)
+static void clk_gpio27_disable(struct clk_hw *hw)
 {
-	TUCR = 0;
+	unsigned long flags;
+
+	local_irq_save(flags);
 	GPDR &= ~GPIO_32_768kHz;
 	GAFR &= ~GPIO_32_768kHz;
+	local_irq_restore(flags);
 }
 
-static void clk_cpu_enable(struct clk *clk)
-{
-}
+static const struct clk_ops clk_gpio27_ops = {
+	.enable = clk_gpio27_enable,
+	.disable = clk_gpio27_disable,
+};
 
-static void clk_cpu_disable(struct clk *clk)
-{
-}
+static const char * const clk_gpio27_parents[] = {
+	"tucr-mux",
+};
 
-static unsigned long clk_cpu_get_rate(struct clk *clk)
+static const struct clk_init_data clk_gpio27_init_data __initconst = {
+	.name = "gpio27",
+	.ops = &clk_gpio27_ops,
+	.parent_names = clk_gpio27_parents,
+	.num_parents = ARRAY_SIZE(clk_gpio27_parents),
+	.flags = CLK_IS_BASIC,
+};
+
+/*
+ * Derived from the table 8-1 in the SA1110 manual, the MPLL appears to
+ * multiply its input rate by 4 x (4 + PPCR).  This calculation gives
+ * the exact rate.  The figures given in the table are the rates rounded
+ * to 100kHz.  Stick with sa11x0_getspeed() for the time being.
+ */
+static unsigned long clk_mpll_recalc_rate(struct clk_hw *hw,
+	unsigned long prate)
 {
 	return sa11x0_getspeed(0) * 1000;
 }
 
-int clk_enable(struct clk *clk)
-{
-	unsigned long flags;
-
-	if (clk) {
-		spin_lock_irqsave(&clocks_lock, flags);
-		if (clk->enabled++ == 0)
-			clk->ops->enable(clk);
-		spin_unlock_irqrestore(&clocks_lock, flags);
-	}
-
-	return 0;
-}
-EXPORT_SYMBOL(clk_enable);
+static const struct clk_ops clk_mpll_ops = {
+	.recalc_rate = clk_mpll_recalc_rate,
+};
 
-void clk_disable(struct clk *clk)
-{
-	unsigned long flags;
+static const char * const clk_mpll_parents[] = {
+	"clk3686400",
+};
 
-	if (clk) {
-		WARN_ON(clk->enabled == 0);
-		spin_lock_irqsave(&clocks_lock, flags);
-		if (--clk->enabled == 0)
-			clk->ops->disable(clk);
-		spin_unlock_irqrestore(&clocks_lock, flags);
-	}
-}
-EXPORT_SYMBOL(clk_disable);
+static const struct clk_init_data clk_mpll_init_data __initconst = {
+	.name = "mpll",
+	.ops = &clk_mpll_ops,
+	.parent_names = clk_mpll_parents,
+	.num_parents = ARRAY_SIZE(clk_mpll_parents),
+	.flags = CLK_IS_BASIC | CLK_GET_RATE_NOCACHE | CLK_IS_CRITICAL,
+};
 
-unsigned long clk_get_rate(struct clk *clk)
+int __init sa11xx_clk_init(void)
 {
-	if (clk && clk->ops && clk->ops->get_rate)
-		return clk->ops->get_rate(clk);
-
-	return 0;
-}
-EXPORT_SYMBOL(clk_get_rate);
+	struct clk_hw *hw;
+	int ret;
 
-const struct clkops clk_gpio27_ops = {
-	.enable		= clk_gpio27_enable,
-	.disable	= clk_gpio27_disable,
-};
+	hw = clk_hw_register_fixed_rate(NULL, "clk32768", NULL, 0, 32768);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
 
-const struct clkops clk_cpu_ops = {
-	.enable		= clk_cpu_enable,
-	.disable	= clk_cpu_disable,
-	.get_rate	= clk_cpu_get_rate,
-};
+	clk_hw_register_clkdev(hw, NULL, "sa1100-rtc");
 
-static DEFINE_CLK(gpio27, &clk_gpio27_ops);
+	hw = clk_hw_register_fixed_rate(NULL, "clk3686400", NULL, 0, 3686400);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
 
-static DEFINE_CLK(cpu, &clk_cpu_ops);
+	clk_hw_register_clkdev(hw, "OSTIMER0", NULL);
 
-static unsigned long clk_36864_get_rate(struct clk *clk)
-{
-	return 3686400;
-}
+	hw = kzalloc(sizeof(*hw), GFP_KERNEL);
+	if (!hw)
+		return -ENOMEM;
+	hw->init = &clk_mpll_init_data;
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		kfree(hw);
+		return ret;
+	}
 
-static struct clkops clk_36864_ops = {
-	.enable		= clk_cpu_enable,
-	.disable	= clk_cpu_disable,
-	.get_rate	= clk_36864_get_rate,
-};
+	clk_hw_register_clkdev(hw, NULL, "sa11x0-fb");
+	clk_hw_register_clkdev(hw, NULL, "sa11x0-pcmcia");
+	clk_hw_register_clkdev(hw, NULL, "sa11x0-pcmcia.0");
+	clk_hw_register_clkdev(hw, NULL, "sa11x0-pcmcia.1");
+	clk_hw_register_clkdev(hw, NULL, "1800");
+
+	hw = clk_hw_register_mux(NULL, "tucr-mux", clk_tucr_parents,
+				 ARRAY_SIZE(clk_tucr_parents), 0,
+				 (void __iomem *)&TUCR, FShft(TUCR_TSEL),
+				 FAlnMsk(TUCR_TSEL), 0, &tucr_lock);
+	clk_set_rate(hw->clk, 3686400);
+
+	hw = kzalloc(sizeof(*hw), GFP_KERNEL);
+	if (!hw)
+		return -ENOMEM;
+	hw->init = &clk_gpio27_init_data;
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		kfree(hw);
+		return ret;
+	}
 
-static DEFINE_CLK(36864, &clk_36864_ops);
-
-static struct clk_lookup sa11xx_clkregs[] = {
-	CLKDEV_INIT("sa1111.0", NULL, &clk_gpio27),
-	CLKDEV_INIT("sa1100-rtc", NULL, NULL),
-	CLKDEV_INIT("sa11x0-fb", NULL, &clk_cpu),
-	CLKDEV_INIT("sa11x0-pcmcia", NULL, &clk_cpu),
-	CLKDEV_INIT("sa11x0-pcmcia.0", NULL, &clk_cpu),
-	CLKDEV_INIT("sa11x0-pcmcia.1", NULL, &clk_cpu),
-	/* sa1111 names devices using internal offsets, PCMCIA is at 0x1800 */
-	CLKDEV_INIT("1800", NULL, &clk_cpu),
-	CLKDEV_INIT(NULL, "OSTIMER0", &clk_36864),
-};
+	clk_hw_register_clkdev(hw, NULL, "sa1111.0");
 
-int __init sa11xx_clk_init(void)
-{
-	clkdev_add_table(sa11xx_clkregs, ARRAY_SIZE(sa11xx_clkregs));
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
