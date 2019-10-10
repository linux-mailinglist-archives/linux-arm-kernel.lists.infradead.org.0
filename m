Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1507DD32A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euXuC13CFQe9cvkyo0qFNZ2kTiHvB9gYp3hN4HPJiRs=; b=o9A+GZYyiKFEZM
	jxJROpSYqxUwRpf3mVn+2Ci87C7Wqp5apkwPD+s03nEgwIxIu8rkvl/dwQhho0bCi+a9OvztrxPmj
	z9zg7L5y3RvfoeTkcyb45ijzUOCowrNWp6m7yrZuZh1ra+XobXSBhga6K5BPmvGCG+LzAfOYv3HRC
	WXJC8dBNCKD7dGWlEjdaxfp/yyyRS2ShLgFIGupNaZD351TFyeOjNJi59aATHGbPPMeZXap/tXET7
	yuTnflfb0wI5idLiTO9xXrf6R7XKqIbWZrr0dLVzj/DZy4HpibdkbQ1a+NCBTVuDVh6jdWSHQCag4
	zQ/zuGxonRdG86wGsWVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfIS-0001p5-4w; Thu, 10 Oct 2019 20:44:28 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfIK-0001oc-NZ
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:44:22 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MZAvp-1ieTO30iRt-00VBpT; Thu, 10 Oct 2019 22:43:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 17/36] ARM: s3c: h1940-audio: turn into platform driver
Date: Thu, 10 Oct 2019 22:30:01 +0200
Message-Id: <20191010203043.1241612-17-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:lmK9wS9sc6nMQoBUUXcAPPuQgSQ3WrsOcrUXsclaGNLYeBYgj79
 5aHzgPRFU+EfSCkv/w11qKN7+Y8K/0guyK4AbiyvfzVoSum77d/2CHMU411Ibt3oiCw4uDV
 tr5vnswQPsH3wPeg5xBjK6DA33UwKnB41YHO47O+70JZ0MVQBhh2OO2KU+JTZvNcUdg3nQX
 aGjg0CD1N4zDhEoOfSuqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Yvd26aZbfwk=:tFDCEM6WoRw7PSv2HMlIkA
 UDyTbad1V5uW3cETaHlMreOiM37YfpqPFbnWifcy+Jm1D/JtP5L+rAMwnxrtPBPkQYdUdGehG
 Q90L4sHVWh/4NwFRsB3spxQu3ig3+yDwGn2X8uLrMPIa4Ki4oWoNYe2tFHDVTwssHG1Mz8OIt
 wHxJ7GZlTH2z4M+C9XT86IQ9h4tCFKbqCPmrt+/qsz8QGYrTmC5OUsAKyE/g8gwKyHTpdIPeo
 s0K3rbxVPM3Pb8dIcBDX+KacTaiDLb27df6M6mXHWHzeqJfVy6uuX/5DwBN9VYHaJxoTZ1+vp
 GXlSfAN7Fn6I+DWnPyYRq/P3UBKasLeG9yQ7mjRYF3U81zXECxizbkuOK8kSmls7pODeBWPmx
 PyhTKkuNn2izg+0UqD3HCjACW0QuyaRY3iSwtNfGJSBQyWT1KZNjNe8HnOcslgnCgVr0PZeAs
 gEbXIxPpJgeUGpA8jsE/BrPSv/HvWfm42rgfvRYjqY/rjLiT50Esl+ewU9sRCQGnA87hmTzR6
 TNOE74NfD7AnnMwz2jCz50hFeXKyciAVmQrouHyoLGiDOxNeWY1T4enXAsGma86NuVlAJZYtQ
 ioukCRHpu+57HJ9q2ymKlsxoIimkQUU2Fc3aLro/PzrlmUX5iJtIxDSUS/M1YoW73wQAMgEPB
 1RWvPMuABO4mJ4ZosHcopZj90hLaHlB+i0+ME5m2bD98h85eArL3qKXzyeeryWKlqOuSHpqG8
 kPF17ELCdtkl/e+vFIV6WVpmdkMIfgrcGYdvHIt3b1D5toVEZQLURB1WYEW8eXr+D5HvEwXam
 KojAvcHdq+C+FcToe0Ayf84WuA+sHRFp4uQjCkkQ9Znt98ktkvEpaO0QEnAvIR5W84z5jY80/
 iMCHQGfv/aP595ZU/naw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134421_064683_1A9273F6 
X-CRM114-Status: GOOD (  17.55  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 linus.walleij@linaro.org, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Avoid machine specific headers by using a gpio lookup table
combined with a platform_driver for this board.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/mach-h1940.c | 18 ++++++++
 sound/soc/samsung/h1940_uda1380.c  | 71 ++++++++++--------------------
 2 files changed, 41 insertions(+), 48 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c24xx/mach-h1940.c
index 74d6b68e91c7..922d53bacbdf 100644
--- a/arch/arm/mach-s3c24xx/mach-h1940.c
+++ b/arch/arm/mach-s3c24xx/mach-h1940.c
@@ -475,6 +475,22 @@ static struct gpiod_lookup_table h1940_mmc_gpio_table = {
 	},
 };
 
+static struct gpiod_lookup_table h1940_audio_gpio_table = {
+	.dev_id = "h1940-audio",
+	.table = {
+		GPIO_LOOKUP("H1940_LATCH",
+			    H1940_LATCH_AUDIO_POWER - H1940_LATCH_GPIO(0),
+			    "speaker-power", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("GPIOG", 4, "hp", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
+static struct platform_device h1940_audio = {
+	.name = "h1940-audio",
+	.id   = -1,
+};
+
 static struct pwm_lookup h1940_pwm_lookup[] = {
 	PWM_LOOKUP("samsung-pwm", 0, "pwm-backlight", NULL, 36296,
 		   PWM_POLARITY_NORMAL),
@@ -652,6 +668,7 @@ static struct platform_device *h1940_devices[] __initdata = {
 	&s3c_device_ts,
 	&power_supply,
 	&h1940_battery,
+	&h1940_audio,
 };
 
 static void __init h1940_map_io(void)
@@ -691,6 +708,7 @@ static void __init h1940_init(void)
 
 	s3c24xx_fb_set_platdata(&h1940_fb_info);
 	gpiod_add_lookup_table(&h1940_mmc_gpio_table);
+	gpiod_add_lookup_table(&h1940_audio_gpio_table);
 	s3c24xx_mci_set_platdata(&h1940_mmc_cfg);
  	s3c24xx_udc_set_platdata(&h1940_udc_cfg);
 	s3c24xx_ts_set_platdata(&h1940_ts_cfg);
diff --git a/sound/soc/samsung/h1940_uda1380.c b/sound/soc/samsung/h1940_uda1380.c
index a95c34e53a2b..5fc001b4effd 100644
--- a/sound/soc/samsung/h1940_uda1380.c
+++ b/sound/soc/samsung/h1940_uda1380.c
@@ -15,9 +15,6 @@
 #include <sound/jack.h>
 
 #include "regs-iis.h"
-#include <asm/mach-types.h>
-
-#include <mach/gpio-samsung.h>
 #include "s3c24xx-i2s.h"
 
 static const unsigned int rates[] = {
@@ -31,6 +28,8 @@ static const struct snd_pcm_hw_constraint_list hw_rates = {
 	.list = rates,
 };
 
+static struct gpio_desc *gpiod_speaker_power;
+
 static struct snd_soc_jack hp_jack;
 
 static struct snd_soc_jack_pin hp_jack_pins[] = {
@@ -47,7 +46,6 @@ static struct snd_soc_jack_pin hp_jack_pins[] = {
 
 static struct snd_soc_jack_gpio hp_jack_gpios[] = {
 	{
-		.gpio			= S3C2410_GPG(4),
 		.name			= "hp-gpio",
 		.report			= SND_JACK_HEADPHONE,
 		.invert			= 1,
@@ -123,9 +121,9 @@ static int h1940_spk_power(struct snd_soc_dapm_widget *w,
 				struct snd_kcontrol *kcontrol, int event)
 {
 	if (SND_SOC_DAPM_EVENT_ON(event))
-		gpio_set_value(S3C_GPIO_END + 9, 1);
+		gpiod_set_value(gpiod_speaker_power, 1);
 	else
-		gpio_set_value(S3C_GPIO_END + 9, 0);
+		gpiod_set_value(gpiod_speaker_power, 0);
 
 	return 0;
 }
@@ -151,8 +149,6 @@ static const struct snd_soc_dapm_route audio_map[] = {
 	{"VINM", NULL, "Mic Jack"},
 };
 
-static struct platform_device *s3c24xx_snd_device;
-
 static int h1940_uda1380_init(struct snd_soc_pcm_runtime *rtd)
 {
 	snd_soc_card_jack_new(rtd->card, "Headphone Jack", SND_JACK_HEADPHONE,
@@ -194,55 +190,34 @@ static struct snd_soc_card h1940_asoc = {
 	.num_dapm_routes = ARRAY_SIZE(audio_map),
 };
 
-static int __init h1940_init(void)
+static int h1940_probe(struct platform_device *pdev)
 {
-	int ret;
+	struct device *dev = &pdev->dev;
 
-	if (!machine_is_h1940())
-		return -ENODEV;
+	h1940_asoc.dev = dev;
+	hp_jack_gpios[0].gpiod_dev = dev;
+	gpiod_speaker_power = devm_gpiod_get(&pdev->dev, "speaker-power",
+					     GPIOD_OUT_LOW);
 
-	/* configure some gpios */
-	ret = gpio_request(S3C_GPIO_END + 9, "speaker-power");
-	if (ret)
-		goto err_out;
-
-	ret = gpio_direction_output(S3C_GPIO_END + 9, 0);
-	if (ret)
-		goto err_gpio;
-
-	s3c24xx_snd_device = platform_device_alloc("soc-audio", -1);
-	if (!s3c24xx_snd_device) {
-		ret = -ENOMEM;
-		goto err_gpio;
+	if (IS_ERR(gpiod_speaker_power)) {
+		dev_err(dev, "Could not get gpio\n");
+		return PTR_ERR(gpiod_speaker_power);
 	}
 
-	platform_set_drvdata(s3c24xx_snd_device, &h1940_asoc);
-	ret = platform_device_add(s3c24xx_snd_device);
-
-	if (ret)
-		goto err_plat;
-
-	return 0;
-
-err_plat:
-	platform_device_put(s3c24xx_snd_device);
-err_gpio:
-	gpio_free(S3C_GPIO_END + 9);
-
-err_out:
-	return ret;
-}
-
-static void __exit h1940_exit(void)
-{
-	platform_device_unregister(s3c24xx_snd_device);
-	gpio_free(S3C_GPIO_END + 9);
+	return devm_snd_soc_register_card(dev, &h1940_asoc);
 }
 
-module_init(h1940_init);
-module_exit(h1940_exit);
+static struct platform_driver h1940_audio_driver = {
+	.driver = {
+		.name = "h1940-audio",
+		.pm = &snd_soc_pm_ops,
+	},
+	.probe = h1940_probe,
+};
+module_platform_driver(h1940_audio_driver);
 
 /* Module information */
 MODULE_AUTHOR("Arnaud Patard, Vasily Khoruzhick");
 MODULE_DESCRIPTION("ALSA SoC H1940");
 MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:h1940-audio");
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
