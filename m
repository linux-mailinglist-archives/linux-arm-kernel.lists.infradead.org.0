Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5DADCA11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Avx0pK/bKNAuUnj5X+V+IP8spnY3/kILaG41xz0+X0I=; b=Vn8gqb+ol4Dh/2
	niOXZhxphGHlGoowhmviLv2BYaN95P2vsbIEND9l3d+zg/HDPRLS839YKQaNM0Wmj4Xz8oTa2mT6t
	6lzdSY6Ng+J/R7msSz+1qeM8rE60VStIL4lqpGCB6orJ/Bj/B9vK8e7mBbcL8jue/TUpxNSAVt6Zu
	FOVwdqoS0647w2QqfQZjKxZbmw8GvTs0Hp4xaam1ejE9jzTnqNNenSSlxU48HbInzeyAojh6G020e
	Hu1sllYOY3tKV+kixG4airlGnoOwtua59jJqnrxXfTefEv1J6vtDmyaetXmxNLhYoFtAtAoT1uDLG
	7TkKHWVp0TTb2EHW+mBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUeh-0000fm-L4; Fri, 18 Oct 2019 15:59:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUWY-0000Yn-Mr
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wExNTCfJX1Uc01oDF2FZKLb/dTBy3nx/1mTyB6+pOIc=; b=V7i+9zqL9FujBc5w90Bkq6d6Fl
 hIpcJ224ul36S3wXoyvrig4do7AiB/qRvgicXjEn7XQu5Dn0oL0VDB8j9MXQzlBmtPiQhLbtOhmG3
 8SUCO8t67tgF2VoeHQFJQqf0iuShAnaEqg9iqVBMuNpHMfR1gD2lrOoU2R0Spu5YadgLy6P0R/T3B
 DxptSLhRICccTwWYGUIyzgJkAxXgVNJSBNJ5Xnj0/qYZOmBCuAHTvgrLlMmdQobRqabOBSgTpvfvH
 y5rhvjO7jBQESVfaI0CKNVEINVRpvHiRX0/+uFH7BXOoQpWReFatZ3x4RlHBG5VcLEjjWNWhPH6of
 T22Pyoqw==;
Received: from mout.kundenserver.de ([212.227.17.10])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUP5-0002CC-Na
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:43:02 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N4i7l-1hwI681tGp-011kPC; Fri, 18 Oct 2019 17:42:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 22/46] ARM: pxa: eseries: use gpio lookup for audio
Date: Fri, 18 Oct 2019 17:41:37 +0200
Message-Id: <20191018154201.1276638-22-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:CBcymaRS0Tk88pjlgZFlVH3qNWbEbuDVF8a1b0EpQ/ufN479pdc
 WxFmWIlqotX3JQXT1UAKIf1sTu64lmAPRbAdvtGuVVyNIp/b1FBfzpc38avAXbnmvVWSxB+
 THaBpbtDkyxI+IuDBkaedReH04nEZoxLa1P0P3R2h3lrYJAy5YIQRScepXWmBKeD8hEG96c
 9hNT8Ux7/BXibSUbTSM2w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:taDEs8Sqbxw=:6tf02R9ujNhRlrPOWMgX5M
 4NJrSoZ4kukKw3v6dsAkqsUHJZ3EYRhppr/joEDDcltHnCT6Wu1jNP20Z1x6yB+EYP6Cp901O
 /4SF2XBUSU7OJWlzDhCFb5HvOlWDV4K/++Uk3RGsofv5mB7fehtDmdYceMvyKQ7iXtnryjSg5
 BcmgGsVjA5HvBzm7HI8+l2EWmC8ZjzeZCvm7gJcqGZsyEnYMTdWpbiflwdIC/WMWdcWXaYYOg
 wCthjJBoHnyaRcKNGHSPdXnHrD1LeUz/QXKaut4BDRnHe1qb8qOCukK+kCvYfuBY7fmU95Tjm
 fcOzXx4M5OGj+JeVyjHkz3EENRP8s0Qtgj3J5gWhO1WN4slu387pjRreP5hz9L4eNXnOqisH4
 5fk9jdOEnoFiw//R7isRZ6Xy4cTTH6m6hZJoofa7SBfUx2QG2awqU2q6OpOAEUqXtjfObf3GL
 chBXSFBb918kuH8ucKrWhVOVeJwQcPubIC5WXHgBZKUotyhYejQVVah76vFWVoY5K71BeUzgA
 MHzLSjtj4rm6z9aLykxp54+pu2pAyEiFkBGwqp8OPN5q0vmuD1iXogaOeYP3yUr+GV+ckRHn3
 mDvFLEU5OQsLksZ/FJA08pacmcmeICKeetZfJ6QFYmBHZVBrd+4JQNiGKUHs9jPbP6PRZOsrX
 tWHoabJj4Fa0cKwimfwZKxePXyPUaknxGYCFQN9V141zOvNApDmUEKyxqVGlYW5gGDzKzS6s6
 rHpXtRc/SCJ07eyBNJ8Y71YNvS4+lBYz9vnkS0Fp1PpgQI3Rgi3R4fc1TVm0dYPgaOhdmOEaP
 h4PVUuJBtOh+8AfWczbBT9zD+imhrJceTz3Rsf9rFgchfYvrEPS0u6BQFS/STC/iegBeGM9zg
 2+2fHfghINeIdxqAA6iA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_164259_829982_82FCADDD 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The three eseries machines have very similar drivers for audio, all
using the mach/eseries-gpio.h header for finding the gpio numbers.

Change these to use gpio descriptors to avoid the header file
dependency.

I convert the _OFF gpio numbers into GPIO_ACTIVE_LOW ones for
consistency here.

Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/eseries.c | 32 ++++++++++++++++++++++++++++++++
 sound/soc/pxa/e740_wm9705.c | 35 ++++++++++++++++++-----------------
 sound/soc/pxa/e750_wm9705.c | 31 ++++++++++++++-----------------
 sound/soc/pxa/e800_wm9712.c | 31 ++++++++++++++-----------------
 4 files changed, 78 insertions(+), 51 deletions(-)

diff --git a/arch/arm/mach-pxa/eseries.c b/arch/arm/mach-pxa/eseries.c
index d8a87ff66675..8399ce405093 100644
--- a/arch/arm/mach-pxa/eseries.c
+++ b/arch/arm/mach-pxa/eseries.c
@@ -24,6 +24,7 @@
 #include <linux/mtd/partitions.h>
 #include <linux/usb/gpio_vbus.h>
 #include <linux/memblock.h>
+#include <linux/gpio/machine.h>
 
 #include <video/w100fb.h>
 
@@ -515,6 +516,16 @@ static struct platform_device e740_audio_device = {
 	.id		= -1,
 };
 
+static struct gpiod_lookup_table e740_audio_gpio_table = {
+	.dev_id = "e740-audio",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa",  GPIO_E740_WM9705_nAVDD2, "Audio power",  GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("gpio-pxa",  GPIO_E740_AMP_ON, "Output amp",  GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("gpio-pxa",  GPIO_E740_MIC_ON, "Mic amp", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
 /* ----------------------------------------------------------------------- */
 
 static struct platform_device *e740_devices[] __initdata = {
@@ -534,6 +545,7 @@ static void __init e740_init(void)
 	clk_add_alias("CLK_CK48M", e740_t7l66xb_device.name,
 			"UDCCLK", &pxa25x_device_udc.dev),
 	eseries_get_tmio_gpios();
+	gpiod_add_lookup_table(&e740_audio_gpio_table);
 	platform_add_devices(ARRAY_AND_SIZE(e740_devices));
 	pxa_set_ac97_info(NULL);
 	pxa_set_ficp_info(&e7xx_ficp_platform_data);
@@ -710,6 +722,15 @@ static struct platform_device e750_tc6393xb_device = {
 	.resource      = eseries_tmio_resources,
 };
 
+static struct gpiod_lookup_table e750_audio_gpio_table = {
+	.dev_id = "e750-audio",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa",  GPIO_E750_HP_AMP_OFF, "Output amp",  GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("gpio-pxa",  GPIO_E750_SPK_AMP_OFF, "Mic amp", GPIO_ACTIVE_LOW),
+		{ },
+	},
+};
+
 static struct platform_device e750_audio_device = {
 	.name		= "e750-audio",
 	.id		= -1,
@@ -733,6 +754,7 @@ static void __init e750_init(void)
 	clk_add_alias("CLK_CK3P6MI", e750_tc6393xb_device.name,
 			"GPIO11_CLK", NULL),
 	eseries_get_tmio_gpios();
+	gpiod_add_lookup_table(&e750_audio_gpio_table);
 	platform_add_devices(ARRAY_AND_SIZE(e750_devices));
 	pxa_set_ac97_info(NULL);
 	pxa_set_ficp_info(&e7xx_ficp_platform_data);
@@ -926,6 +948,15 @@ static struct platform_device e800_tc6393xb_device = {
 	.resource      = eseries_tmio_resources,
 };
 
+static struct gpiod_lookup_table e800_audio_gpio_table = {
+	.dev_id = "e800-audio",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa",  GPIO_E800_HP_AMP_OFF, "Output amp",  GPIO_ACTIVE_LOW),
+		GPIO_LOOKUP("gpio-pxa",  GPIO_E800_SPK_AMP_ON, "Mic amp", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
 static struct platform_device e800_audio_device = {
 	.name		= "e800-audio",
 	.id		= -1,
@@ -949,6 +980,7 @@ static void __init e800_init(void)
 	clk_add_alias("CLK_CK3P6MI", e800_tc6393xb_device.name,
 			"GPIO11_CLK", NULL),
 	eseries_get_tmio_gpios();
+	gpiod_add_lookup_table(&e800_audio_gpio_table);
 	platform_add_devices(ARRAY_AND_SIZE(e800_devices));
 	pxa_set_ac97_info(NULL);
 }
diff --git a/sound/soc/pxa/e740_wm9705.c b/sound/soc/pxa/e740_wm9705.c
index f922be7e0016..4e0e9b778d4c 100644
--- a/sound/soc/pxa/e740_wm9705.c
+++ b/sound/soc/pxa/e740_wm9705.c
@@ -7,17 +7,19 @@
 
 #include <linux/module.h>
 #include <linux/moduleparam.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/soc.h>
 
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/eseries-gpio.h>
 
 #include <asm/mach-types.h>
 
+static struct gpio_desc *gpiod_output_amp, *gpiod_input_amp;
+static struct gpio_desc *gpiod_audio_power;
+
 #define E740_AUDIO_OUT 1
 #define E740_AUDIO_IN  2
 
@@ -25,9 +27,9 @@ static int e740_audio_power;
 
 static void e740_sync_audio_power(int status)
 {
-	gpio_set_value(GPIO_E740_WM9705_nAVDD2, !status);
-	gpio_set_value(GPIO_E740_AMP_ON, (status & E740_AUDIO_OUT) ? 1 : 0);
-	gpio_set_value(GPIO_E740_MIC_ON, (status & E740_AUDIO_IN) ? 1 : 0);
+	gpiod_set_value(gpiod_audio_power, !status);
+	gpiod_set_value(gpiod_output_amp, (status & E740_AUDIO_OUT) ? 1 : 0);
+	gpiod_set_value(gpiod_input_amp, (status & E740_AUDIO_IN) ? 1 : 0);
 }
 
 static int e740_mic_amp_event(struct snd_soc_dapm_widget *w,
@@ -116,36 +118,35 @@ static struct snd_soc_card e740 = {
 	.fully_routed = true,
 };
 
-static struct gpio e740_audio_gpios[] = {
-	{ GPIO_E740_MIC_ON, GPIOF_OUT_INIT_LOW, "Mic amp" },
-	{ GPIO_E740_AMP_ON, GPIOF_OUT_INIT_LOW, "Output amp" },
-	{ GPIO_E740_WM9705_nAVDD2, GPIOF_OUT_INIT_HIGH, "Audio power" },
-};
-
 static int e740_probe(struct platform_device *pdev)
 {
 	struct snd_soc_card *card = &e740;
 	int ret;
 
-	ret = gpio_request_array(e740_audio_gpios,
-				 ARRAY_SIZE(e740_audio_gpios));
+	gpiod_input_amp  = devm_gpiod_get(&pdev->dev, "Mic amp", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(gpiod_input_amp);
+	if (ret)
+		return ret;
+	gpiod_output_amp  = devm_gpiod_get(&pdev->dev, "Output amp", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(gpiod_output_amp);
+	if (ret)
+		return ret;
+	gpiod_audio_power = devm_gpiod_get(&pdev->dev, "Audio power", GPIOD_OUT_HIGH);
+	ret = PTR_ERR_OR_ZERO(gpiod_audio_power);
 	if (ret)
 		return ret;
 
 	card->dev = &pdev->dev;
 
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
-	if (ret) {
+	if (ret)
 		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
 			ret);
-		gpio_free_array(e740_audio_gpios, ARRAY_SIZE(e740_audio_gpios));
-	}
 	return ret;
 }
 
 static int e740_remove(struct platform_device *pdev)
 {
-	gpio_free_array(e740_audio_gpios, ARRAY_SIZE(e740_audio_gpios));
 	return 0;
 }
 
diff --git a/sound/soc/pxa/e750_wm9705.c b/sound/soc/pxa/e750_wm9705.c
index 308828cd736b..7a1e0d8bfd11 100644
--- a/sound/soc/pxa/e750_wm9705.c
+++ b/sound/soc/pxa/e750_wm9705.c
@@ -7,24 +7,25 @@
 
 #include <linux/module.h>
 #include <linux/moduleparam.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/soc.h>
 
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/eseries-gpio.h>
 
 #include <asm/mach-types.h>
 
+static struct gpio_desc *gpiod_spk_amp, *gpiod_hp_amp;
+
 static int e750_spk_amp_event(struct snd_soc_dapm_widget *w,
 				struct snd_kcontrol *kcontrol, int event)
 {
 	if (event & SND_SOC_DAPM_PRE_PMU)
-		gpio_set_value(GPIO_E750_SPK_AMP_OFF, 0);
+		gpiod_set_value(gpiod_spk_amp, 1);
 	else if (event & SND_SOC_DAPM_POST_PMD)
-		gpio_set_value(GPIO_E750_SPK_AMP_OFF, 1);
+		gpiod_set_value(gpiod_spk_amp, 0);
 
 	return 0;
 }
@@ -33,9 +34,9 @@ static int e750_hp_amp_event(struct snd_soc_dapm_widget *w,
 				struct snd_kcontrol *kcontrol, int event)
 {
 	if (event & SND_SOC_DAPM_PRE_PMU)
-		gpio_set_value(GPIO_E750_HP_AMP_OFF, 0);
+		gpiod_set_value(gpiod_hp_amp, 1);
 	else if (event & SND_SOC_DAPM_POST_PMD)
-		gpio_set_value(GPIO_E750_HP_AMP_OFF, 1);
+		gpiod_set_value(gpiod_hp_amp, 0);
 
 	return 0;
 }
@@ -100,35 +101,31 @@ static struct snd_soc_card e750 = {
 	.fully_routed = true,
 };
 
-static struct gpio e750_audio_gpios[] = {
-	{ GPIO_E750_HP_AMP_OFF, GPIOF_OUT_INIT_HIGH, "Headphone amp" },
-	{ GPIO_E750_SPK_AMP_OFF, GPIOF_OUT_INIT_HIGH, "Speaker amp" },
-};
-
 static int e750_probe(struct platform_device *pdev)
 {
 	struct snd_soc_card *card = &e750;
 	int ret;
 
-	ret = gpio_request_array(e750_audio_gpios,
-				 ARRAY_SIZE(e750_audio_gpios));
+	gpiod_hp_amp  = devm_gpiod_get(&pdev->dev, "Headphone amp", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(gpiod_hp_amp);
+	if (ret)
+		return ret;
+	gpiod_spk_amp  = devm_gpiod_get(&pdev->dev, "Speaker amp", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(gpiod_spk_amp);
 	if (ret)
 		return ret;
 
 	card->dev = &pdev->dev;
 
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
-	if (ret) {
+	if (ret)
 		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
 			ret);
-		gpio_free_array(e750_audio_gpios, ARRAY_SIZE(e750_audio_gpios));
-	}
 	return ret;
 }
 
 static int e750_remove(struct platform_device *pdev)
 {
-	gpio_free_array(e750_audio_gpios, ARRAY_SIZE(e750_audio_gpios));
 	return 0;
 }
 
diff --git a/sound/soc/pxa/e800_wm9712.c b/sound/soc/pxa/e800_wm9712.c
index d74fcceef687..a39c494127cf 100644
--- a/sound/soc/pxa/e800_wm9712.c
+++ b/sound/soc/pxa/e800_wm9712.c
@@ -7,7 +7,7 @@
 
 #include <linux/module.h>
 #include <linux/moduleparam.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 #include <sound/core.h>
 #include <sound/pcm.h>
@@ -15,15 +15,16 @@
 
 #include <asm/mach-types.h>
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/eseries-gpio.h>
+
+static struct gpio_desc *gpiod_spk_amp, *gpiod_hp_amp;
 
 static int e800_spk_amp_event(struct snd_soc_dapm_widget *w,
 				struct snd_kcontrol *kcontrol, int event)
 {
 	if (event & SND_SOC_DAPM_PRE_PMU)
-		gpio_set_value(GPIO_E800_SPK_AMP_ON, 1);
+		gpiod_set_value(gpiod_spk_amp, 1);
 	else if (event & SND_SOC_DAPM_POST_PMD)
-		gpio_set_value(GPIO_E800_SPK_AMP_ON, 0);
+		gpiod_set_value(gpiod_spk_amp, 0);
 
 	return 0;
 }
@@ -32,9 +33,9 @@ static int e800_hp_amp_event(struct snd_soc_dapm_widget *w,
 				struct snd_kcontrol *kcontrol, int event)
 {
 	if (event & SND_SOC_DAPM_PRE_PMU)
-		gpio_set_value(GPIO_E800_HP_AMP_OFF, 0);
+		gpiod_set_value(gpiod_hp_amp, 1);
 	else if (event & SND_SOC_DAPM_POST_PMD)
-		gpio_set_value(GPIO_E800_HP_AMP_OFF, 1);
+		gpiod_set_value(gpiod_hp_amp, 0);
 
 	return 0;
 }
@@ -100,35 +101,31 @@ static struct snd_soc_card e800 = {
 	.num_dapm_routes = ARRAY_SIZE(audio_map),
 };
 
-static struct gpio e800_audio_gpios[] = {
-	{ GPIO_E800_SPK_AMP_ON, GPIOF_OUT_INIT_HIGH, "Headphone amp" },
-	{ GPIO_E800_HP_AMP_OFF, GPIOF_OUT_INIT_HIGH, "Speaker amp" },
-};
-
 static int e800_probe(struct platform_device *pdev)
 {
 	struct snd_soc_card *card = &e800;
 	int ret;
 
-	ret = gpio_request_array(e800_audio_gpios,
-				 ARRAY_SIZE(e800_audio_gpios));
+	gpiod_hp_amp  = devm_gpiod_get(&pdev->dev, "Headphone amp", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(gpiod_hp_amp);
+	if (ret)
+		return ret;
+	gpiod_spk_amp  = devm_gpiod_get(&pdev->dev, "Speaker amp", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(gpiod_spk_amp);
 	if (ret)
 		return ret;
 
 	card->dev = &pdev->dev;
 
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
-	if (ret) {
+	if (ret)
 		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
 			ret);
-		gpio_free_array(e800_audio_gpios, ARRAY_SIZE(e800_audio_gpios));
-	}
 	return ret;
 }
 
 static int e800_remove(struct platform_device *pdev)
 {
-	gpio_free_array(e800_audio_gpios, ARRAY_SIZE(e800_audio_gpios));
 	return 0;
 }
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
