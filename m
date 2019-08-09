Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730A387CFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mg6zKvZnyaTEy4eil+RzegpOgsT1e+Jo4keWA7OnC+s=; b=sNQsOCzXNa0dfS
	T4dAPDLX4zFn4pbZXJtk0JWdCXiNoXR+ZJG5TBCXhNzwWlrhEUlhMCtNRQk3NUjD3YLIw/BAYBR2B
	vUSztmTBNORspkfuHlm3VCO0qDU7LVib2Z5O7fMXGGg6MFcyRP5YT7PA4FBiaauislLQE5DdkuM57
	4XB16YglfHHQuZTFifV2Ed9TAA6QS+nTgwE/OgUjRQRNC5gkMk24kKShlXcZO1HO85yPvYqW8ggtC
	IEzHCYkg86qWTkdTfzkKl6V1I5wCKZk/uXIy0IhIcbPwf/NzMMAkgbhd0Fdj3D1W2Iai3uC4A7yr/
	fMqpfuQ020g93czuu/sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw672-0005LS-1I; Fri, 09 Aug 2019 14:43:24 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw66o-0005Ki-HB
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:43:14 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MsJXG-1iBz611zvG-00tgzd; Fri, 09 Aug 2019 16:43:07 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 05/13] gpio: lpc32xx: allow building on non-lpc32xx targets
Date: Fri,  9 Aug 2019 16:40:31 +0200
Message-Id: <20190809144043.476786-6-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:/mHIHcM4NUVHez/4l0Lm1IgoJwHRA/BTHyJw9ReNM2OTo0m9Aod
 /O1DdwbpKfucI3Vu/nSW1Mx3r/G6pP4GiPf7xoOOyxb9l8JP2dhlOHvHUFonOgsn9JgbFUI
 T76EjiBiCN+w5pUXFxPmuA4D41MDrJJmD43NC5aj6dGXMNSx4/AW43hTYxQpDXAQhKvu2XD
 EPib7hU9b0bM9hbXpermA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:e145JppYo8c=:btDTqUjP2xw07aCm+vPUBB
 gMV48+aRcWyxtdRnkWTZznJ9m1CbvklY9oCI+mcfAUiDqEtIFhueI/dbL4Utv0vtRz949Qa8l
 bUWwWSZi7x0AdA3Ss0f823OEsBMc2Y4Mw8Ryl7nEpBzVC9EONchO/UEekT5M/at/QhRwApz8x
 lT+GX7MZLa16AavB5Buju0zx3I17fW6FHxMsvub0k8kTM3vqTO3qonjsEvUtVPOISGMJlSoha
 82CXkRVqtDXA9LzTyp62T2cpOl7pEz5ipPzk5CF++C16RqMEcG4uXQ414JE/9V4aa5OF6fPzt
 SawVmPBSigapi1xY6Wwgw26poYrQTIkem6fMthNUHsFdOxOvi7koB3o5uPwBBhMMpV2AuhBzy
 sszl3OCfOwijfOe/wXKFl0Gp7pZOn+T2dscCkcT8chKXy2A+kNt7INxSq9YcT5zHX0DSvmRxv
 RmO7Ul6N2eZ6sHgXWAaM4yyjXQww+tZM3U1UDiT6+JGI8iDu6MKuUYE/Rjl3tVwVHOECvw3af
 WmFf9uGE9ye5vbO5CkM8i0JZZr2ZS68/kHDHSvCHagr2nmmrvr2U1ZoBbCXJhCf9NVy8Volc1
 fEyk9e7GQRg07HjPgfD6l4xv6rKkiV7XACv7VqkjIy47W32Qy6PXtm/tITLLTq4516sJ55CSh
 blbkDgUtxk12GTfRtZFKnJKk+eAgBVriC/nKEsmXi0DvNlolCcQY/Tgxir1JoLQaaUa7h1X5J
 QPMa9E+NeJyV4/w3o3MrXFaomiRX8zsg6MYYpg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074310_861420_0F6B0317 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver uses hardwire MMIO addresses instead of the data
that is passed in device tree. Change it over to only
hardcode the register offset values and allow compile-testing.

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>
Tested-by: Sylvain Lemieux <slemieux.tyco@gmail.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/configs/lpc32xx_defconfig |   1 +
 drivers/gpio/Kconfig               |   7 ++
 drivers/gpio/Makefile              |   2 +-
 drivers/gpio/gpio-lpc32xx.c        | 118 +++++++++++++++++------------
 4 files changed, 77 insertions(+), 51 deletions(-)

diff --git a/arch/arm/configs/lpc32xx_defconfig b/arch/arm/configs/lpc32xx_defconfig
index 0cdc6c7974b3..3772d5a8975a 100644
--- a/arch/arm/configs/lpc32xx_defconfig
+++ b/arch/arm/configs/lpc32xx_defconfig
@@ -93,6 +93,7 @@ CONFIG_SERIAL_HS_LPC32XX_CONSOLE=y
 # CONFIG_HW_RANDOM is not set
 CONFIG_I2C_CHARDEV=y
 CONFIG_I2C_PNX=y
+CONFIG_GPIO_LPC32XX=y
 CONFIG_SPI=y
 CONFIG_SPI_PL022=y
 CONFIG_GPIO_SYSFS=y
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index bb13c266c329..8b40a578963c 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -311,6 +311,13 @@ config GPIO_LPC18XX
 	  Select this option to enable GPIO driver for
 	  NXP LPC18XX/43XX devices.
 
+config GPIO_LPC32XX
+	tristate "NXP LPC32XX GPIO support"
+	depends on OF_GPIO && (ARCH_LPC32XX || COMPILE_TEST)
+	help
+	  Select this option to enable GPIO driver for
+	  NXP LPC32XX devices.
+
 config GPIO_LYNXPOINT
 	tristate "Intel Lynxpoint GPIO support"
 	depends on ACPI && X86
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index a4e91175c708..87d659ae95eb 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -74,7 +74,7 @@ obj-$(CONFIG_GPIO_LP3943)		+= gpio-lp3943.o
 obj-$(CONFIG_GPIO_LP873X)		+= gpio-lp873x.o
 obj-$(CONFIG_GPIO_LP87565)		+= gpio-lp87565.o
 obj-$(CONFIG_GPIO_LPC18XX)		+= gpio-lpc18xx.o
-obj-$(CONFIG_ARCH_LPC32XX)		+= gpio-lpc32xx.o
+obj-$(CONFIG_GPIO_LPC32XX)		+= gpio-lpc32xx.o
 obj-$(CONFIG_GPIO_LYNXPOINT)		+= gpio-lynxpoint.o
 obj-$(CONFIG_GPIO_MADERA)		+= gpio-madera.o
 obj-$(CONFIG_GPIO_MAX3191X)		+= gpio-max3191x.o
diff --git a/drivers/gpio/gpio-lpc32xx.c b/drivers/gpio/gpio-lpc32xx.c
index 24885b3db3d5..4e626c4235c2 100644
--- a/drivers/gpio/gpio-lpc32xx.c
+++ b/drivers/gpio/gpio-lpc32xx.c
@@ -16,36 +16,33 @@
 #include <linux/platform_device.h>
 #include <linux/module.h>
 
-#include <mach/hardware.h>
-#include <mach/platform.h>
-
-#define LPC32XX_GPIO_P3_INP_STATE		_GPREG(0x000)
-#define LPC32XX_GPIO_P3_OUTP_SET		_GPREG(0x004)
-#define LPC32XX_GPIO_P3_OUTP_CLR		_GPREG(0x008)
-#define LPC32XX_GPIO_P3_OUTP_STATE		_GPREG(0x00C)
-#define LPC32XX_GPIO_P2_DIR_SET			_GPREG(0x010)
-#define LPC32XX_GPIO_P2_DIR_CLR			_GPREG(0x014)
-#define LPC32XX_GPIO_P2_DIR_STATE		_GPREG(0x018)
-#define LPC32XX_GPIO_P2_INP_STATE		_GPREG(0x01C)
-#define LPC32XX_GPIO_P2_OUTP_SET		_GPREG(0x020)
-#define LPC32XX_GPIO_P2_OUTP_CLR		_GPREG(0x024)
-#define LPC32XX_GPIO_P2_MUX_SET			_GPREG(0x028)
-#define LPC32XX_GPIO_P2_MUX_CLR			_GPREG(0x02C)
-#define LPC32XX_GPIO_P2_MUX_STATE		_GPREG(0x030)
-#define LPC32XX_GPIO_P0_INP_STATE		_GPREG(0x040)
-#define LPC32XX_GPIO_P0_OUTP_SET		_GPREG(0x044)
-#define LPC32XX_GPIO_P0_OUTP_CLR		_GPREG(0x048)
-#define LPC32XX_GPIO_P0_OUTP_STATE		_GPREG(0x04C)
-#define LPC32XX_GPIO_P0_DIR_SET			_GPREG(0x050)
-#define LPC32XX_GPIO_P0_DIR_CLR			_GPREG(0x054)
-#define LPC32XX_GPIO_P0_DIR_STATE		_GPREG(0x058)
-#define LPC32XX_GPIO_P1_INP_STATE		_GPREG(0x060)
-#define LPC32XX_GPIO_P1_OUTP_SET		_GPREG(0x064)
-#define LPC32XX_GPIO_P1_OUTP_CLR		_GPREG(0x068)
-#define LPC32XX_GPIO_P1_OUTP_STATE		_GPREG(0x06C)
-#define LPC32XX_GPIO_P1_DIR_SET			_GPREG(0x070)
-#define LPC32XX_GPIO_P1_DIR_CLR			_GPREG(0x074)
-#define LPC32XX_GPIO_P1_DIR_STATE		_GPREG(0x078)
+#define LPC32XX_GPIO_P3_INP_STATE		(0x000)
+#define LPC32XX_GPIO_P3_OUTP_SET		(0x004)
+#define LPC32XX_GPIO_P3_OUTP_CLR		(0x008)
+#define LPC32XX_GPIO_P3_OUTP_STATE		(0x00C)
+#define LPC32XX_GPIO_P2_DIR_SET			(0x010)
+#define LPC32XX_GPIO_P2_DIR_CLR			(0x014)
+#define LPC32XX_GPIO_P2_DIR_STATE		(0x018)
+#define LPC32XX_GPIO_P2_INP_STATE		(0x01C)
+#define LPC32XX_GPIO_P2_OUTP_SET		(0x020)
+#define LPC32XX_GPIO_P2_OUTP_CLR		(0x024)
+#define LPC32XX_GPIO_P2_MUX_SET			(0x028)
+#define LPC32XX_GPIO_P2_MUX_CLR			(0x02C)
+#define LPC32XX_GPIO_P2_MUX_STATE		(0x030)
+#define LPC32XX_GPIO_P0_INP_STATE		(0x040)
+#define LPC32XX_GPIO_P0_OUTP_SET		(0x044)
+#define LPC32XX_GPIO_P0_OUTP_CLR		(0x048)
+#define LPC32XX_GPIO_P0_OUTP_STATE		(0x04C)
+#define LPC32XX_GPIO_P0_DIR_SET			(0x050)
+#define LPC32XX_GPIO_P0_DIR_CLR			(0x054)
+#define LPC32XX_GPIO_P0_DIR_STATE		(0x058)
+#define LPC32XX_GPIO_P1_INP_STATE		(0x060)
+#define LPC32XX_GPIO_P1_OUTP_SET		(0x064)
+#define LPC32XX_GPIO_P1_OUTP_CLR		(0x068)
+#define LPC32XX_GPIO_P1_OUTP_STATE		(0x06C)
+#define LPC32XX_GPIO_P1_DIR_SET			(0x070)
+#define LPC32XX_GPIO_P1_DIR_CLR			(0x074)
+#define LPC32XX_GPIO_P1_DIR_STATE		(0x078)
 
 #define GPIO012_PIN_TO_BIT(x)			(1 << (x))
 #define GPIO3_PIN_TO_BIT(x)			(1 << ((x) + 25))
@@ -72,12 +69,12 @@
 #define LPC32XX_GPO_P3_GRP	(LPC32XX_GPI_P3_GRP + LPC32XX_GPI_P3_MAX)
 
 struct gpio_regs {
-	void __iomem *inp_state;
-	void __iomem *outp_state;
-	void __iomem *outp_set;
-	void __iomem *outp_clr;
-	void __iomem *dir_set;
-	void __iomem *dir_clr;
+	unsigned long inp_state;
+	unsigned long outp_state;
+	unsigned long outp_set;
+	unsigned long outp_clr;
+	unsigned long dir_set;
+	unsigned long dir_clr;
 };
 
 /*
@@ -165,16 +162,27 @@ static struct gpio_regs gpio_grp_regs_p3 = {
 struct lpc32xx_gpio_chip {
 	struct gpio_chip	chip;
 	struct gpio_regs	*gpio_grp;
+	void __iomem		*reg_base;
 };
 
+static inline u32 gpreg_read(struct lpc32xx_gpio_chip *group, unsigned long offset)
+{
+	return __raw_readl(group->reg_base + offset);
+}
+
+static inline void gpreg_write(struct lpc32xx_gpio_chip *group, u32 val, unsigned long offset)
+{
+	__raw_writel(val, group->reg_base + offset);
+}
+
 static void __set_gpio_dir_p012(struct lpc32xx_gpio_chip *group,
 	unsigned pin, int input)
 {
 	if (input)
-		__raw_writel(GPIO012_PIN_TO_BIT(pin),
+		gpreg_write(group, GPIO012_PIN_TO_BIT(pin),
 			group->gpio_grp->dir_clr);
 	else
-		__raw_writel(GPIO012_PIN_TO_BIT(pin),
+		gpreg_write(group, GPIO012_PIN_TO_BIT(pin),
 			group->gpio_grp->dir_set);
 }
 
@@ -184,19 +192,19 @@ static void __set_gpio_dir_p3(struct lpc32xx_gpio_chip *group,
 	u32 u = GPIO3_PIN_TO_BIT(pin);
 
 	if (input)
-		__raw_writel(u, group->gpio_grp->dir_clr);
+		gpreg_write(group, u, group->gpio_grp->dir_clr);
 	else
-		__raw_writel(u, group->gpio_grp->dir_set);
+		gpreg_write(group, u, group->gpio_grp->dir_set);
 }
 
 static void __set_gpio_level_p012(struct lpc32xx_gpio_chip *group,
 	unsigned pin, int high)
 {
 	if (high)
-		__raw_writel(GPIO012_PIN_TO_BIT(pin),
+		gpreg_write(group, GPIO012_PIN_TO_BIT(pin),
 			group->gpio_grp->outp_set);
 	else
-		__raw_writel(GPIO012_PIN_TO_BIT(pin),
+		gpreg_write(group, GPIO012_PIN_TO_BIT(pin),
 			group->gpio_grp->outp_clr);
 }
 
@@ -206,31 +214,31 @@ static void __set_gpio_level_p3(struct lpc32xx_gpio_chip *group,
 	u32 u = GPIO3_PIN_TO_BIT(pin);
 
 	if (high)
-		__raw_writel(u, group->gpio_grp->outp_set);
+		gpreg_write(group, u, group->gpio_grp->outp_set);
 	else
-		__raw_writel(u, group->gpio_grp->outp_clr);
+		gpreg_write(group, u, group->gpio_grp->outp_clr);
 }
 
 static void __set_gpo_level_p3(struct lpc32xx_gpio_chip *group,
 	unsigned pin, int high)
 {
 	if (high)
-		__raw_writel(GPO3_PIN_TO_BIT(pin), group->gpio_grp->outp_set);
+		gpreg_write(group, GPO3_PIN_TO_BIT(pin), group->gpio_grp->outp_set);
 	else
-		__raw_writel(GPO3_PIN_TO_BIT(pin), group->gpio_grp->outp_clr);
+		gpreg_write(group, GPO3_PIN_TO_BIT(pin), group->gpio_grp->outp_clr);
 }
 
 static int __get_gpio_state_p012(struct lpc32xx_gpio_chip *group,
 	unsigned pin)
 {
-	return GPIO012_PIN_IN_SEL(__raw_readl(group->gpio_grp->inp_state),
+	return GPIO012_PIN_IN_SEL(gpreg_read(group, group->gpio_grp->inp_state),
 		pin);
 }
 
 static int __get_gpio_state_p3(struct lpc32xx_gpio_chip *group,
 	unsigned pin)
 {
-	int state = __raw_readl(group->gpio_grp->inp_state);
+	int state = gpreg_read(group, group->gpio_grp->inp_state);
 
 	/*
 	 * P3 GPIO pin input mapping is not contiguous, GPIOP3-0..4 is mapped
@@ -242,13 +250,13 @@ static int __get_gpio_state_p3(struct lpc32xx_gpio_chip *group,
 static int __get_gpi_state_p3(struct lpc32xx_gpio_chip *group,
 	unsigned pin)
 {
-	return GPI3_PIN_IN_SEL(__raw_readl(group->gpio_grp->inp_state), pin);
+	return GPI3_PIN_IN_SEL(gpreg_read(group, group->gpio_grp->inp_state), pin);
 }
 
 static int __get_gpo_state_p3(struct lpc32xx_gpio_chip *group,
 	unsigned pin)
 {
-	return GPO3_PIN_IN_SEL(__raw_readl(group->gpio_grp->outp_state), pin);
+	return GPO3_PIN_IN_SEL(gpreg_read(group, group->gpio_grp->outp_state), pin);
 }
 
 /*
@@ -497,12 +505,18 @@ static int lpc32xx_of_xlate(struct gpio_chip *gc,
 static int lpc32xx_gpio_probe(struct platform_device *pdev)
 {
 	int i;
+	void __iomem *reg_base;
+
+	reg_base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(reg_base))
+		return PTR_ERR(reg_base);
 
 	for (i = 0; i < ARRAY_SIZE(lpc32xx_gpiochip); i++) {
 		if (pdev->dev.of_node) {
 			lpc32xx_gpiochip[i].chip.of_xlate = lpc32xx_of_xlate;
 			lpc32xx_gpiochip[i].chip.of_gpio_n_cells = 3;
 			lpc32xx_gpiochip[i].chip.of_node = pdev->dev.of_node;
+			lpc32xx_gpiochip[i].reg_base = reg_base;
 		}
 		devm_gpiochip_add_data(&pdev->dev, &lpc32xx_gpiochip[i].chip,
 				  &lpc32xx_gpiochip[i]);
@@ -527,3 +541,7 @@ static struct platform_driver lpc32xx_gpio_driver = {
 };
 
 module_platform_driver(lpc32xx_gpio_driver);
+
+MODULE_AUTHOR("Kevin Wells <kevin.wells@nxp.com>");
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("GPIO driver for LPC32xx SoC");
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
