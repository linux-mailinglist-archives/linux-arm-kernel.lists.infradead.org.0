Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F79DC9E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTvKKKV6MKr+rdKJ6FTnXkHNMOgIEnPYgfj1AiLRoug=; b=CMbiwCgJ6LTw0+
	f/yRRSygkdx/9d1YPteG2wUwl0g11M5wjsU3wnP9K1M9x9xq96of9oEbafTnXH9bkAGubFHVNs6/w
	nFphvo5bwY7ZWkqrsIBPOZhodAkjrO1/4C3rgqzbREliHef3PjJqUdDNoN9wTIIsop9Yn/Ud4y/+A
	uNdgdURiomj5PGyag1BVesXtPJdbXHokeqCJm/0yOUfVOQodFTUdr3DV82XkaIHmp29X2xeYmERWU
	UwnxB6PwCRkGF/x1osIog9x84jBwZhWIRce1s2eYOu/250P4Jx8DvmrR1ZX4cLDeAnOXnr5b/GWOF
	kZSJ2za7DQ9Ih1dA9hrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUZy-0003fa-2s; Fri, 18 Oct 2019 15:54:14 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOq-0008FR-Ab
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:52 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MyK5K-1i6xDo48SK-00ykGf; Fri, 18 Oct 2019 17:42:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 38/46] video: backlight: tosa: use gpio lookup table
Date: Fri, 18 Oct 2019 17:41:53 +0200
Message-Id: <20191018154201.1276638-38-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:2OhedckVn2duIvbZrX9602vjNldufJeHeDgaeXumpkFb9kLtGA6
 msV2qeFO73azgU68EuIPXTeNQ0kl8m+uEhwRmgp26oRSi2IlDmYS7TeGkJG8T2QJRa+ZOY1
 FCEv/86qhKRQNWYRbVDm55L5Gc09o3aV+pltG9n/0uJi1/KTPl68o/c/HbKZOiAUE8C/URr
 V58sD5sZMsaC/95RoUJqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/Lw85U0rw3k=:QKhqL3L6NOnlz2xUIUUIXH
 /WyjOTbWKRMCPIn7uogbvL5bl2Asw+QgOlDmFWghCCzGh3f2/rIV2+PTvOdH49apoaWFVYrGm
 tVcRNcA6mwaSnyq1KrjvxaTIdyowqvN546cwkriRbr+0CScKif64mOuQoqAveW9UFeRstz0hT
 oNHGr+8MoDJ99euK/WRIrFAMelPdXCDePYQbqk8iC+SwP2JwNpnFD1yr16ZVsJrW+DUlpc6zo
 WJwGRhSZJGQ/WHE/PyE24Kq1pNOhRJWca8mI5g2yTlnNa6C59RroXaOe0XfGwnOWvtp+PHv/P
 e9nGz+q8kUU3HPgpuEyrT35Z9wUFJ320U5hhprzySLPD+t+Rr1Fw5RSKu+TtogLy1nTfTkjpM
 oS16Y3ezXogCTmi8sKED4EVCouWBf4eqPMnxNTc989gU3T0Pg4MQqKv+TTZ2r3Da3G2HzgjkI
 iQEOehoFx3ql6NnZqvnAfYGDz4agMIzv9qOvyITI3kpENSUFVP0c11KTXnAzNzRYZZFFD+Bxm
 vWBPaF3OivSKk7HTGp3PtD2pcKjdYsX6/rmGn4N11w5RtDRe4T6EaRlCcoKza/UfW5a4OZQL5
 TAXS/elwcE/+dMYaahbAEC2F4l649bcKAnQ9sOqte/GwJ6cr+y12CKOmu83TPLtOZmUIsClIz
 FnBzk65YyY4Sr0IDarAp8RXW7E80AIXVN/kBazywLNRFWRNibYjXbqLZC3xMNbyqw5Ay1P4+X
 madc6XqvkkGv9P6nQrnREC17u0qEgZCzjwhwIb6RxkGl4GfJqCDfOQlIAq+1sARH6FXwKJRww
 RCCIHxwUyEWQi41E5Prvl66m8gZiHWOTpVGzUdluz81iNnOOY5t2dYVa6GV6h7aCFHL8dVaLG
 Hislp5hnyQMcoZ7Bu2hA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084244_806082_A222B402 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver should not require a machine specific header. Change
it to pass the gpio line through a lookup table, and move the
timing generator definitions into the drivers itself.

Cc: Lee Jones <lee.jones@linaro.org>
Cc: Daniel Thompson <daniel.thompson@linaro.org>
Cc: Jingoo Han <jingoohan1@gmail.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>

---
I'm not overly confident that I got the correct device names
for the lookup table, it would be good if someone could
double-check.
---
 arch/arm/mach-pxa/include/mach/tosa.h | 15 --------------
 arch/arm/mach-pxa/tosa.c              | 22 +++++++++++++++++++++
 drivers/video/backlight/tosa_bl.c     | 10 +++++-----
 drivers/video/backlight/tosa_bl.h     |  8 ++++++++
 drivers/video/backlight/tosa_lcd.c    | 28 ++++++++++++++++++++-------
 5 files changed, 56 insertions(+), 27 deletions(-)
 create mode 100644 drivers/video/backlight/tosa_bl.h

diff --git a/arch/arm/mach-pxa/include/mach/tosa.h b/arch/arm/mach-pxa/include/mach/tosa.h
index a499ed17931e..8bfaca3a8b64 100644
--- a/arch/arm/mach-pxa/include/mach/tosa.h
+++ b/arch/arm/mach-pxa/include/mach/tosa.h
@@ -72,18 +72,6 @@
 #define TOSA_GPIO_BAT0_TH_ON		(TOSA_TC6393XB_GPIO_BASE + 14)
 #define TOSA_GPIO_BAT1_TH_ON		(TOSA_TC6393XB_GPIO_BASE + 15)
 
-/*
- * Timing Generator
- */
-#define TG_PNLCTL 			0x00
-#define TG_TPOSCTL 			0x01
-#define TG_DUTYCTL 			0x02
-#define TG_GPOSR 			0x03
-#define TG_GPODR1 			0x04
-#define TG_GPODR2 			0x05
-#define TG_PINICTL 			0x06
-#define TG_HPOSCTL 			0x07
-
 /*
  * PXA GPIOs
  */
@@ -192,7 +180,4 @@
 #define TOSA_KEY_MAIL		KEY_MAIL
 #endif
 
-struct spi_device;
-extern int tosa_bl_enable(struct spi_device *spi, int enable);
-
 #endif /* _ASM_ARCH_TOSA_H_ */
diff --git a/arch/arm/mach-pxa/tosa.c b/arch/arm/mach-pxa/tosa.c
index 9a7f1e42adac..8329a2969b2b 100644
--- a/arch/arm/mach-pxa/tosa.c
+++ b/arch/arm/mach-pxa/tosa.c
@@ -813,6 +813,26 @@ static struct pxa2xx_spi_controller pxa_ssp_master_info = {
 	.num_chipselect	= 1,
 };
 
+static struct gpiod_lookup_table tosa_lcd_gpio_table = {
+	.dev_id = "spi2.0",
+	.table = {
+		GPIO_LOOKUP("tc6393xb",
+			    TOSA_GPIO_TG_ON - TOSA_TC6393XB_GPIO_BASE,
+			    "tg #pwr", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
+static struct gpiod_lookup_table tosa_lcd_bl_gpio_table = {
+	.dev_id = "i2c-tosa-bl",
+	.table = {
+		GPIO_LOOKUP("tc6393xb",
+			    TOSA_GPIO_BL_C20MA - TOSA_TC6393XB_GPIO_BASE,
+			    "backlight", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
 static struct spi_board_info spi_board_info[] __initdata = {
 	{
 		.modalias	= "tosa-lcd",
@@ -935,6 +955,8 @@ static void __init tosa_init(void)
 	platform_scoop_config = &tosa_pcmcia_config;
 
 	pxa2xx_set_spi_info(2, &pxa_ssp_master_info);
+	gpiod_add_lookup_table(&tosa_lcd_gpio_table);
+	gpiod_add_lookup_table(&tosa_lcd_bl_gpio_table);
 	spi_register_board_info(spi_board_info, ARRAY_SIZE(spi_board_info));
 
 	clk_add_alias("CLK_CK3P6MI", tc6393xb_device.name, "GPIO11_CLK", NULL);
diff --git a/drivers/video/backlight/tosa_bl.c b/drivers/video/backlight/tosa_bl.c
index 1275e815bd86..cff5e96fd988 100644
--- a/drivers/video/backlight/tosa_bl.c
+++ b/drivers/video/backlight/tosa_bl.c
@@ -18,7 +18,7 @@
 
 #include <asm/mach/sharpsl_param.h>
 
-#include <mach/tosa.h>
+#include "tosa_bl.h"
 
 #define COMADJ_DEFAULT	97
 
@@ -28,6 +28,7 @@
 struct tosa_bl_data {
 	struct i2c_client *i2c;
 	struct backlight_device *bl;
+	struct gpio_desc *gpio;
 
 	int comadj;
 };
@@ -42,7 +43,7 @@ static void tosa_bl_set_backlight(struct tosa_bl_data *data, int brightness)
 	i2c_smbus_write_byte_data(data->i2c, DAC_CH2, (u8)(brightness & 0xff));
 
 	/* SetBacklightVR */
-	gpio_set_value(TOSA_GPIO_BL_C20MA, brightness & 0x100);
+	gpiod_set_value(data->gpio, brightness & 0x100);
 
 	tosa_bl_enable(spi, brightness);
 }
@@ -87,9 +88,8 @@ static int tosa_bl_probe(struct i2c_client *client,
 		return -ENOMEM;
 
 	data->comadj = sharpsl_param.comadj == -1 ? COMADJ_DEFAULT : sharpsl_param.comadj;
-
-	ret = devm_gpio_request_one(&client->dev, TOSA_GPIO_BL_C20MA,
-				GPIOF_OUT_INIT_LOW, "backlight");
+	data->gpio = devm_gpiod_get(&client->dev, "backlight", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(data->gpio);
 	if (ret) {
 		dev_dbg(&data->bl->dev, "Unable to request gpio!\n");
 		return ret;
diff --git a/drivers/video/backlight/tosa_bl.h b/drivers/video/backlight/tosa_bl.h
new file mode 100644
index 000000000000..589e17e6fdb2
--- /dev/null
+++ b/drivers/video/backlight/tosa_bl.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _TOSA_BL_H
+#define _TOSA_BL_H
+
+struct spi_device;
+extern int tosa_bl_enable(struct spi_device *spi, int enable);
+
+#endif
diff --git a/drivers/video/backlight/tosa_lcd.c b/drivers/video/backlight/tosa_lcd.c
index 29af8e27b6e5..e8ab583e5098 100644
--- a/drivers/video/backlight/tosa_lcd.c
+++ b/drivers/video/backlight/tosa_lcd.c
@@ -19,7 +19,7 @@
 
 #include <asm/mach/sharpsl_param.h>
 
-#include <mach/tosa.h>
+#include "tosa_bl.h"
 
 #define POWER_IS_ON(pwr)	((pwr) <= FB_BLANK_NORMAL)
 
@@ -28,12 +28,26 @@
 #define TG_REG0_UD	0x0004
 #define TG_REG0_LR	0x0008
 
+/*
+ * Timing Generator
+ */
+#define TG_PNLCTL 	0x00
+#define TG_TPOSCTL 	0x01
+#define TG_DUTYCTL 	0x02
+#define TG_GPOSR 	0x03
+#define TG_GPODR1 	0x04
+#define TG_GPODR2 	0x05
+#define TG_PINICTL 	0x06
+#define TG_HPOSCTL 	0x07
+
+
 #define	DAC_BASE	0x4e
 
 struct tosa_lcd_data {
 	struct spi_device *spi;
 	struct lcd_device *lcd;
 	struct i2c_client *i2c;
+	struct gpio_desc *gpiod_tg;
 
 	int lcd_power;
 	bool is_vga;
@@ -66,7 +80,7 @@ EXPORT_SYMBOL(tosa_bl_enable);
 static void tosa_lcd_tg_init(struct tosa_lcd_data *data)
 {
 	/* TG on */
-	gpio_set_value(TOSA_GPIO_TG_ON, 0);
+	gpiod_set_value(data->gpiod_tg, 0);
 
 	mdelay(60);
 
@@ -100,6 +114,7 @@ static void tosa_lcd_tg_on(struct tosa_lcd_data *data)
 		 */
 		struct i2c_adapter *adap = i2c_get_adapter(0);
 		struct i2c_board_info info = {
+			.dev_name = "tosa-bl",
 			.type	= "tosa-bl",
 			.addr	= DAC_BASE,
 			.platform_data = data->spi,
@@ -121,7 +136,7 @@ static void tosa_lcd_tg_off(struct tosa_lcd_data *data)
 	mdelay(50);
 
 	/* TG Off */
-	gpio_set_value(TOSA_GPIO_TG_ON, 1);
+	gpiod_set_value(data->gpiod_tg, 1);
 	mdelay(100);
 }
 
@@ -191,10 +206,9 @@ static int tosa_lcd_probe(struct spi_device *spi)
 	data->spi = spi;
 	spi_set_drvdata(spi, data);
 
-	ret = devm_gpio_request_one(&spi->dev, TOSA_GPIO_TG_ON,
-				GPIOF_OUT_INIT_LOW, "tg #pwr");
-	if (ret < 0)
-		return ret;
+	data->gpiod_tg = devm_gpiod_get(&spi->dev, "tg #pwr", GPIOD_OUT_LOW);
+	if (IS_ERR(data->gpiod_tg))
+		return PTR_ERR(data->gpiod_tg);
 
 	mdelay(60);
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
