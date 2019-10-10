Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09051D32A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/or9yDmPJFqqOMqegBR0y2t8ieuJiLbLbKQR/C5A5Zg=; b=Dd9UFcjI3omoNE
	45839PHc+XUf+z/RxHucXXtzlkpLcjdr3ZWIGNWrNeY96ndZAsME9VgITm9R6jWxDeEWiRIdoGoR8
	pu12zHCY1q9lmThaxzK3DcpMnrbnytblaAfnUKYLfbu9+u7xZNdxZ+lqUpbDCu4dv2n+wyXzEUnIs
	ukyBD25/V/pYYH5kkkIiM0gyjPwnhLy9O8QO/FbmfT1tPcN8EJMuosiInJFlfXPBRGBTn6QMmJQ2A
	6N/MqOiRRdUjh3UICvM5ih35/NvPkw0HVM2oBdnyn9R/oe367ypibOUMiMwniyj0GXX+fNZiQCNfb
	DMRGwl5qud68UgBQelPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfIv-00024P-Et; Thu, 10 Oct 2019 20:44:57 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfIl-00023k-4m
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:44:48 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MvKTJ-1i0iit3Hhh-00rJAB; Thu, 10 Oct 2019 22:43:26 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 18/36] ARM: s3c: gta02-audio: turn into platform driver
Date: Thu, 10 Oct 2019 22:30:02 +0200
Message-Id: <20191010203043.1241612-18-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:E/PWTX0ODVddzN9zfl588cxLhZigrWay5tj6I/VSq0zBeAZBVl/
 Pg2AljjW3Ge51Sc7P0F0xcbqWnwKB06qeBicZLXQwT85V0JqdtHV5vRAF08PRH8dc/14zdF
 WTMGnlPwH5JkcHA81yXKVDNGSHT0NA/HcnAYqCGBokfcNXX/gtKury0/xWgyPkpnT0hFE4T
 7JnLQyvtW8LH7gA6FqSVw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nhMgLxHXEnI=:lW3e8hBLScTKZYjz4rT4KG
 3eo5Nbp+ZaVxOTJriTSNETi7QY3XGfXPFLXqEpQ4zSohEqoKEjKucOm/xWizWh5WQbMR4IBYp
 STWrTf3B4C4c20HzNxcVZ4Qsost+e4iFgjfPd1EZYbqQoNs3uSMSIK6rUKaELUW7dClQEkQA8
 P422P/yC0lMpKhnwCY5iGu0HAoZB+y4qAoyBq46BZeScNe9UydVJGbdfPQOcTuwEtJrgOgsP9
 GJDqTFx6Dy/7hWXlBvXunhnbcAGTbpvw8nHP0ICxkueZdY7+ZOBCYvHgvakBqUAkAgeidxz4s
 q5g0Mj8qbZqZQNv7Rc8VQ97zJZg6W7MQPGwuWQvPSfRX/5OD5VeF0pBHZktaSLKIwSAa2+Q0v
 D5gz2RR0ZwjjJxoUTE2SsssKBw6XHYTrxu0C3QC6l894nelb8mhhK2g42PX6Qr+nsoQB6YN1c
 5PvrgU4yAKrnpFf0x3Q8FiSiUk7Eg9F2O0EuUKOcG1y/4bIyh59OECkEBwwzKiNR2vuAAJcDp
 zecwKX3PHsfmIDDkWZ8B7oX6SP1zi1olkIa1SL1csXGnINI/Z8TZfHh1osw8OZnEZpPpSoj1e
 dIitQ1wkmEYnQaixB/xIjsd1ms1uUETf/7x/R4MOEeHdgqXFEgYONsqP7ReSVBfloSHF4T0uW
 49rDZ2e3rfUjStgC9wQ4di4Lhw04NDjiSxv5PDy3dh8P3dQNdZCBgsewsk2zsWt1Wlp3i+BgD
 Dc2M48xWqtata/QCGakefWPxk7NBRnkVfllMK0YsoAf+BjXjWpNDN4OHd27hlkqYbSZ8pOKyl
 EFWV27nCjU0i+uxCbVVw9MHMsERevYPrVRmmmDwyGVx2qyiL5UomQsYnvSyZApWIV5SjFp3rX
 /AldcAlb09FyRXbam93g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134447_476818_E059BF7A 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Avoid machine specific headers by using a gpio lookup table
combined with a platform_driver for this board.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/mach-gta02.c | 17 ++++++
 sound/soc/samsung/neo1973_wm8753.c | 85 +++++++++---------------------
 2 files changed, 43 insertions(+), 59 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
index 594901f3b8e5..526fd0933289 100644
--- a/arch/arm/mach-s3c24xx/mach-gta02.c
+++ b/arch/arm/mach-s3c24xx/mach-gta02.c
@@ -15,6 +15,7 @@
 #include <linux/delay.h>
 #include <linux/timer.h>
 #include <linux/init.h>
+#include <linux/gpio/machine.h>
 #include <linux/gpio.h>
 #include <linux/gpio_keys.h>
 #include <linux/workqueue.h>
@@ -474,6 +475,20 @@ static struct platform_device gta02_buttons_device = {
 	},
 };
 
+static struct gpiod_lookup_table gta02_audio_gpio_table = {
+	.dev_id = "neo1973-audio",
+	.table = {
+		GPIO_LOOKUP("GPIOJ", 2, "amp-shut", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("GPIOJ", 1, "hp", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
+static struct platform_device gta02_audio = {
+	.name = "neo1973-audio",
+	.id = -1,
+};
+
 static void __init gta02_map_io(void)
 {
 	s3c24xx_init_io(gta02_iodesc, ARRAY_SIZE(gta02_iodesc));
@@ -498,6 +513,7 @@ static struct platform_device *gta02_devices[] __initdata = {
 	&gta02_buttons_device,
 	&s3c_device_adc,
 	&s3c_device_ts,
+	&gta02_audio,
 };
 
 static void gta02_poweroff(void)
@@ -524,6 +540,7 @@ static void __init gta02_machine_init(void)
 
 	i2c_register_board_info(0, gta02_i2c_devs, ARRAY_SIZE(gta02_i2c_devs));
 
+	gpiod_add_lookup_table(&gta02_audio_gpio_table);
 	platform_add_devices(gta02_devices, ARRAY_SIZE(gta02_devices));
 	pm_power_off = gta02_poweroff;
 
diff --git a/sound/soc/samsung/neo1973_wm8753.c b/sound/soc/samsung/neo1973_wm8753.c
index 38f536bafa09..b41e3dc297e7 100644
--- a/sound/soc/samsung/neo1973_wm8753.c
+++ b/sound/soc/samsung/neo1973_wm8753.c
@@ -11,14 +11,11 @@
 
 #include <linux/module.h>
 #include <linux/platform_device.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 #include <sound/soc.h>
 
-#include <mach/gpio-samsung.h>
-#include <asm/mach-types.h>
 #include "regs-iis.h"
-
 #include "../codecs/wm8753.h"
 #include "s3c24xx-i2s.h"
 
@@ -166,6 +163,7 @@ static struct snd_soc_ops neo1973_voice_ops = {
 	.hw_free = neo1973_voice_hw_free,
 };
 
+static struct gpio_desc *gpiod_hp_in, *gpiod_amp_shut;
 static int gta02_speaker_enabled;
 
 static int lm4853_set_spk(struct snd_kcontrol *kcontrol,
@@ -173,7 +171,7 @@ static int lm4853_set_spk(struct snd_kcontrol *kcontrol,
 {
 	gta02_speaker_enabled = ucontrol->value.integer.value[0];
 
-	gpio_set_value(S3C2410_GPJ(2), !gta02_speaker_enabled);
+	gpiod_set_value(gpiod_hp_in, !gta02_speaker_enabled);
 
 	return 0;
 }
@@ -188,7 +186,7 @@ static int lm4853_get_spk(struct snd_kcontrol *kcontrol,
 static int lm4853_event(struct snd_soc_dapm_widget *w,
 			struct snd_kcontrol *k, int event)
 {
-	gpio_set_value(S3C2410_GPJ(1), SND_SOC_DAPM_EVENT_OFF(event));
+	gpiod_set_value(gpiod_amp_shut, SND_SOC_DAPM_EVENT_OFF(event));
 
 	return 0;
 }
@@ -308,13 +306,8 @@ static struct snd_soc_codec_conf neo1973_codec_conf[] = {
 	},
 };
 
-static const struct gpio neo1973_gta02_gpios[] = {
-	{ S3C2410_GPJ(2), GPIOF_OUT_INIT_HIGH, "GTA02_HP_IN" },
-	{ S3C2410_GPJ(1), GPIOF_OUT_INIT_HIGH, "GTA02_AMP_SHUT" },
-};
-
 static struct snd_soc_card neo1973 = {
-	.name = "neo1973",
+	.name = "neo1973gta02",
 	.owner = THIS_MODULE,
 	.dai_link = neo1973_dai,
 	.num_links = ARRAY_SIZE(neo1973_dai),
@@ -332,62 +325,36 @@ static struct snd_soc_card neo1973 = {
 	.fully_routed = true,
 };
 
-static struct platform_device *neo1973_snd_device;
-
-static int __init neo1973_init(void)
+static int neo1973_probe(struct platform_device *pdev)
 {
-	int ret;
-
-	if (!machine_is_neo1973_gta02())
-		return -ENODEV;
+	struct device *dev = &pdev->dev;
 
-	if (machine_is_neo1973_gta02()) {
-		neo1973.name = "neo1973gta02";
-		neo1973.num_aux_devs = 1;
-
-		ret = gpio_request_array(neo1973_gta02_gpios,
-				ARRAY_SIZE(neo1973_gta02_gpios));
-		if (ret)
-			return ret;
+	gpiod_hp_in = devm_gpiod_get(dev, "hp", GPIOD_OUT_HIGH);
+	if (IS_ERR(gpiod_hp_in)) {
+		dev_err(dev, "missing gpio %s\n", "hp");
+		return PTR_ERR(gpiod_hp_in);
 	}
-
-	neo1973_snd_device = platform_device_alloc("soc-audio", -1);
-	if (!neo1973_snd_device) {
-		ret = -ENOMEM;
-		goto err_gpio_free;
+	gpiod_amp_shut = devm_gpiod_get(dev, "amp-shut", GPIOD_OUT_HIGH);
+	if (IS_ERR(gpiod_amp_shut)) {
+		dev_err(dev, "missing gpio %s\n", "amp-shut");
+		return PTR_ERR(gpiod_amp_shut);
 	}
 
-	platform_set_drvdata(neo1973_snd_device, &neo1973);
-	ret = platform_device_add(neo1973_snd_device);
-
-	if (ret)
-		goto err_put_device;
-
-	return 0;
-
-err_put_device:
-	platform_device_put(neo1973_snd_device);
-err_gpio_free:
-	if (machine_is_neo1973_gta02()) {
-		gpio_free_array(neo1973_gta02_gpios,
-				ARRAY_SIZE(neo1973_gta02_gpios));
-	}
-	return ret;
+	neo1973.dev = dev;
+	return devm_snd_soc_register_card(dev, &neo1973);
 }
-module_init(neo1973_init);
-
-static void __exit neo1973_exit(void)
-{
-	platform_device_unregister(neo1973_snd_device);
 
-	if (machine_is_neo1973_gta02()) {
-		gpio_free_array(neo1973_gta02_gpios,
-				ARRAY_SIZE(neo1973_gta02_gpios));
-	}
-}
-module_exit(neo1973_exit);
+struct platform_driver neo1973_audio = {
+	.driver = {
+		.name = "neo1973-audio",
+		.pm = &snd_soc_pm_ops,
+	},
+	.probe = neo1973_probe,
+};
+module_platform_driver(neo1973_audio);
 
 /* Module information */
 MODULE_AUTHOR("Graeme Gregory, graeme@openmoko.org, www.openmoko.org");
 MODULE_DESCRIPTION("ALSA SoC WM8753 Neo1973 and Frerunner");
 MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:neo1973-audio");
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
