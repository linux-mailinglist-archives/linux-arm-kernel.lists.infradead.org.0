Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5AEDC948
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbD3PUO6K8zEhBgs10LLA3jCIG4OvePUkXPriY9W0r8=; b=MUwvg0+lmmpsKI
	CSv6LSpGjB7YwXu7f2qk483Mi0dY3bwkPOr4J/83JnUweDo1mJWoGpEl0QVhsGAme/I7WX6LYmXXW
	URQzg8n1eagszT/eJVooJc2woxtPqloa23tHxR7paI/2A8EzPOf4QbrGPP8uME8Uq1dWlzFbmg/XD
	wYT+kAilgYDPk9vVTkobfRQYvdVMw5Z60Tp9Liq+HTwpDF7X7yYw5WUZ+f9gnImonm+hv4erI2o9A
	708a9QkY+90AL0E3ErnZZRPB3XXQ1If3XWbCbV8/Q0QTvnWNRK+EpPjUQCJ1JKDvvoQMMD4Uxs9pE
	/7XblZ5qtNedAP4wWOoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUSz-0003vX-IQ; Fri, 18 Oct 2019 15:47:01 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOg-00088u-Pr
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:41 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1McpS0-1hmhsG1gOI-00ZwWl; Fri, 18 Oct 2019 17:42:26 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 19/46] ARM: pxa: hx4700: use gpio descriptors for audio
Date: Fri, 18 Oct 2019 17:41:34 +0200
Message-Id: <20191018154201.1276638-19-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:VTDetqiA3IUPd37iiTjF8wmf8is9z0ii2hZFyGnfpBo7v9YzRzf
 eLPjN/VpyDbNNgQqFV9CrvQZZGL4LvF9qcdU1Wow93cSHhGzpdK2nq9u5Wx/PYPamq+3re6
 Sk/nIeH15eZgiayt6b8hOpI8KxPD9zRBZ9hEYEH+Pnp6QXXjHK5Q0mab6YaTZX96iJ0we8Q
 z9m8F5M9ZSmiBlVV9yRSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z5MPd9t3zuc=:f31rOBD3gYLsiOgUZCPLvb
 K/Wd1JvNV7F6gIvfl3p6iza//HPWorhTW38CfK+6SD/pXEIcjcuo8qh7NrKL//HaIuM2gm2qR
 n6KBMgZZ4gIQwhIeexa569uM8xBZIpXoPd5czCtWdFgb5jax+Jq+D6dvPUTUzXXfNETAYw+/R
 8DM9MHZFBhn2V8HoEk1okYWzovOFgYq8Ej/sALgYoaHYw2cKJWPkboR3eieBuXUXKHkWoHxr7
 9kNcaaaUDCiIuN1wtSTf/6hLoNwmqohiHuWcRulQG+mM3AuTdJQJE4FR886KE1MJq9CteBU9G
 iHYZuBp19msfHtU6hsmpOBWo86zga2Z8W1cIN04vewk3IvdMJEoefkwFTfMyhB8sfaLSKFxn2
 L1QhyoN0sr1Or430sUqOiyHLUAqNFq2BeGa7tTfzwflAGHiSkmthybx3qJSL9O8xkbtlA///T
 48YpjyVOYwOAB3bUSSpZO7hELaEMOz77+htSfhnJqUfCwz+119BJs6AIOjjqGooDKwjNnXGoU
 JWct38hOLypaQ1ZGwNhe1jFW0/sAGoZQSfS+5dE0kBASWFMqcJj4G4TDb6/m5WTu6R1IdMEBk
 9JhqiaK6b6cdNsnRXh9t1+oRdbADOHwgtNtvwrEBxvmYY93WuFFD6qnBZjBJNRz5P9dnEEAUb
 jaVTvl1DLADz26gL1VgGIvr4pFZjiA++Dz6/6DxjEW1NRakOZElbomRh0z8n2pphk/x9YzkXh
 KC/0sM/qf2pUjNc9Tcs/8s9vj0SGEAyj9IbyEXCl/k80SNVXG4nOcG6zJ4sSa4UjuuUYel277
 q2H2zM4VdnjppDQGBoVCF2kseF2BCbxh9dB0SZMRZTfz/4NJPKyivdMwg6BLXj07q/21+BlqZ
 SsdEOLWB8auzGCvIdxew==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084235_238817_C456D2B4 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Philipp Zabel <philipp.zabel@gmail.com>,
 Paul Parsons <lost.distance@yahoo.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The audio driver should not use a hardwired gpio number
from the header. Change it to use a lookup table.

Cc: Philipp Zabel <philipp.zabel@gmail.com>
Cc: Paul Parsons <lost.distance@yahoo.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/hx4700-pcmcia.c             |  2 +-
 arch/arm/mach-pxa/hx4700.c                    | 16 ++++++++-
 arch/arm/mach-pxa/{include/mach => }/hx4700.h |  2 +-
 sound/soc/pxa/hx4700.c                        | 34 ++++++++-----------
 4 files changed, 31 insertions(+), 23 deletions(-)
 rename arch/arm/mach-pxa/{include/mach => }/hx4700.h (99%)

diff --git a/arch/arm/mach-pxa/hx4700-pcmcia.c b/arch/arm/mach-pxa/hx4700-pcmcia.c
index e8acbfc9ef6c..e2331dfe427d 100644
--- a/arch/arm/mach-pxa/hx4700-pcmcia.c
+++ b/arch/arm/mach-pxa/hx4700-pcmcia.c
@@ -10,7 +10,7 @@
 #include <linux/irq.h>
 
 #include <asm/mach-types.h>
-#include <mach/hx4700.h>
+#include "hx4700.h"
 
 #include <pcmcia/soc_common.h>
 
diff --git a/arch/arm/mach-pxa/hx4700.c b/arch/arm/mach-pxa/hx4700.c
index b3dcbe291e13..84383d14bf64 100644
--- a/arch/arm/mach-pxa/hx4700.c
+++ b/arch/arm/mach-pxa/hx4700.c
@@ -42,7 +42,7 @@
 
 #include "pxa27x.h"
 #include "addr-map.h"
-#include <mach/hx4700.h>
+#include "hx4700.h"
 #include <linux/platform_data/irda-pxaficp.h>
 
 #include <sound/ak4641.h>
@@ -823,6 +823,19 @@ static struct i2c_board_info i2c_board_info[] __initdata = {
 	},
 };
 
+static struct gpiod_lookup_table hx4700_audio_gpio_table = {
+	.dev_id = "hx4700-audio",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa", GPIO75_HX4700_EARPHONE_nDET,
+			    "earphone-ndet", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("gpio-pxa", GPIO92_HX4700_HP_DRIVER,
+			    "hp-driver", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("gpio-pxa", GPIO107_HX4700_SPK_nSD,
+			    "spk-nsd", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
 static struct platform_device audio = {
 	.name	= "hx4700-audio",
 	.id	= -1,
@@ -883,6 +896,7 @@ static void __init hx4700_init(void)
 	pxa_set_stuart_info(NULL);
 
 	gpiod_add_lookup_table(&bq24022_gpiod_table);
+	gpiod_add_lookup_table(&hx4700_audio_gpio_table);
 	platform_add_devices(devices, ARRAY_SIZE(devices));
 	pwm_add_table(hx4700_pwm_lookup, ARRAY_SIZE(hx4700_pwm_lookup));
 
diff --git a/arch/arm/mach-pxa/include/mach/hx4700.h b/arch/arm/mach-pxa/hx4700.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/hx4700.h
rename to arch/arm/mach-pxa/hx4700.h
index 0c30e6d9c660..ce2db33989e1 100644
--- a/arch/arm/mach-pxa/include/mach/hx4700.h
+++ b/arch/arm/mach-pxa/hx4700.h
@@ -10,7 +10,7 @@
 
 #include <linux/gpio.h>
 #include <linux/mfd/asic3.h>
-#include "irqs.h" /* PXA_NR_BUILTIN_GPIO */
+#include <mach/irqs.h> /* PXA_NR_BUILTIN_GPIO */
 
 #define HX4700_ASIC3_GPIO_BASE	PXA_NR_BUILTIN_GPIO
 #define HX4700_EGPIO_BASE	(HX4700_ASIC3_GPIO_BASE + ASIC3_NUM_GPIOS)
diff --git a/sound/soc/pxa/hx4700.c b/sound/soc/pxa/hx4700.c
index 0139343dbcce..2fae601f0844 100644
--- a/sound/soc/pxa/hx4700.c
+++ b/sound/soc/pxa/hx4700.c
@@ -10,7 +10,7 @@
 #include <linux/interrupt.h>
 #include <linux/platform_device.h>
 #include <linux/delay.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 #include <sound/core.h>
 #include <sound/jack.h>
@@ -18,10 +18,10 @@
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
 
-#include <mach/hx4700.h>
 #include <asm/mach-types.h>
 #include "pxa2xx-i2s.h"
 
+static struct gpio_desc *gpiod_hp_driver, *gpiod_spk_nsd;
 static struct snd_soc_jack hs_jack;
 
 /* Headphones jack detection DAPM pin */
@@ -40,9 +40,8 @@ static struct snd_soc_jack_pin hs_jack_pin[] = {
 
 /* Headphones jack detection GPIO */
 static struct snd_soc_jack_gpio hs_jack_gpio = {
-	.gpio		= GPIO75_HX4700_EARPHONE_nDET,
 	.invert		= true,
-	.name		= "hp-gpio",
+	.name		= "earphone-ndet",
 	.report		= SND_JACK_HEADPHONE,
 	.debounce_time	= 200,
 };
@@ -81,14 +80,14 @@ static const struct snd_soc_ops hx4700_ops = {
 static int hx4700_spk_power(struct snd_soc_dapm_widget *w,
 			    struct snd_kcontrol *k, int event)
 {
-	gpio_set_value(GPIO107_HX4700_SPK_nSD, !!SND_SOC_DAPM_EVENT_ON(event));
+	gpiod_set_value(gpiod_spk_nsd, !!SND_SOC_DAPM_EVENT_ON(event));
 	return 0;
 }
 
 static int hx4700_hp_power(struct snd_soc_dapm_widget *w,
 			   struct snd_kcontrol *k, int event)
 {
-	gpio_set_value(GPIO92_HX4700_HP_DRIVER, !!SND_SOC_DAPM_EVENT_ON(event));
+	gpiod_set_value(gpiod_hp_driver, !!SND_SOC_DAPM_EVENT_ON(event));
 	return 0;
 }
 
@@ -162,11 +161,6 @@ static struct snd_soc_card snd_soc_card_hx4700 = {
 	.fully_routed		= true,
 };
 
-static struct gpio hx4700_audio_gpios[] = {
-	{ GPIO107_HX4700_SPK_nSD, GPIOF_OUT_INIT_HIGH, "SPK_POWER" },
-	{ GPIO92_HX4700_HP_DRIVER, GPIOF_OUT_INIT_LOW, "EP_POWER" },
-};
-
 static int hx4700_audio_probe(struct platform_device *pdev)
 {
 	int ret;
@@ -174,26 +168,26 @@ static int hx4700_audio_probe(struct platform_device *pdev)
 	if (!machine_is_h4700())
 		return -ENODEV;
 
-	ret = gpio_request_array(hx4700_audio_gpios,
-				ARRAY_SIZE(hx4700_audio_gpios));
+	gpiod_hp_driver = devm_gpiod_get(&pdev->dev, "hp-driver", GPIOD_OUT_HIGH);
+	ret = PTR_ERR_OR_ZERO(gpiod_hp_driver);
+	if (ret)
+		return ret;
+	gpiod_spk_nsd = devm_gpiod_get(&pdev->dev, "spk-nsd", GPIOD_OUT_HIGH);
+	ret = PTR_ERR_OR_ZERO(gpiod_spk_nsd);
 	if (ret)
 		return ret;
 
+	hs_jack_gpio.gpiod_dev = &pdev->dev;
 	snd_soc_card_hx4700.dev = &pdev->dev;
 	ret = devm_snd_soc_register_card(&pdev->dev, &snd_soc_card_hx4700);
-	if (ret)
-		gpio_free_array(hx4700_audio_gpios,
-				ARRAY_SIZE(hx4700_audio_gpios));
 
 	return ret;
 }
 
 static int hx4700_audio_remove(struct platform_device *pdev)
 {
-	gpio_set_value(GPIO92_HX4700_HP_DRIVER, 0);
-	gpio_set_value(GPIO107_HX4700_SPK_nSD, 0);
-
-	gpio_free_array(hx4700_audio_gpios, ARRAY_SIZE(hx4700_audio_gpios));
+	gpiod_set_value(gpiod_hp_driver, 0);
+	gpiod_set_value(gpiod_spk_nsd, 0);
 	return 0;
 }
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
