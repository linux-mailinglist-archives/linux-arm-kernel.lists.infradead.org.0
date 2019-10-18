Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0828DDC965
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLsdfyBWasDReHraAcgV9iafo/Rs9vN8ZnriMvceMX4=; b=OJ4Ia7t/LyXBp/
	qq+cSBIt6B2PkycXQCmcHeIAmCNZaTkqhTDK1SgxW914Z66hG4HQYgoYQm0Qnz0iAb2hXO6f1sXfK
	f4QOSUejvjAJWjowy2nM4hDUaqluyuLNW0bgiHwBIypfIYBhNifuUiMm558jRevuyw/4mYGTfyJVL
	8kDWX55W6v0EQ4SrUkEh5i9WEY9OuAmY6oJ0xw0iE0Lo+psC2Ue5Bsa5mHmKGV0ee1Mm65XmY+DUn
	VDvFzFeDMZLQMmWqxUlkQZ7sdYKQkYhd/dN6s1VJzdly/aKVBZOwwl+aAh/vzomm0/b7YcePEaDC0
	pdKQ6w6C7syFAqSLs9Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUVv-0006zG-9e; Fri, 18 Oct 2019 15:50:03 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOn-0008DO-Bs
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UgikP/FgtJKQmirt+f2Th2onclSnYjMgbbYHDh3FkNs=; b=rUA5xTQW7sVv/mMA8PltmYPhKo
 +SHwn8atfVezc2u6JesftZwPjjfhq+PcGhBqeeqmt8yBTG72/OZf1uDxZV4sJ6aCFnKzhwTnUUhNa
 aN/e7MuYlsN39xwGyAcDF9prvbAXt50fFVHW9EePCNuF5+klI1B2z7UmqsA2r6+OJdDK8C++ysO13
 NwLa/TsuNB5ZWcxvIP5OcSJ50XitELxA7z+Y0s6Ujxm7cqLeNvRS21En7LZG1Fz3usAzp4do3kRmI
 fudrvfNg2BbI4EfzJOzqgSLCQvTjUhr5kasIGFSU3WoVh5VQ8q8wW2bwilzwdYAa5Ug1WZWc19HSE
 VMle15+A==;
Received: from mout.kundenserver.de ([217.72.192.75])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOi-0007Wf-Iv
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:39 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MqrwN-1hhUo60Vc1-00moY8; Fri, 18 Oct 2019 17:42:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 21/46] ARM: pxa: spitz: use gpio descriptors for audio
Date: Fri, 18 Oct 2019 17:41:36 +0200
Message-Id: <20191018154201.1276638-21-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:EnGATBO6UcVguXcv7G62u/so/z4MGLoOyIeCs3iHNegQs2eAeZx
 RXCX3mThC+ltOlQdPgJxtQZMZlOJ3twIf0mEeLe18rdoMMe6IE0UavPRiwZY+GxnbCoIXXx
 siq75br/ck5gUvdB2C3VR34VF3oWZTLCtTdwjYxeT5yXVF7pAztV6fyrPa/tQoSOff6iOPp
 zo94i1VPUXq+5/kWovNeA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gb1LxFRHfzU=:NfvjD9Kuk7/AeZGNDEvdV5
 /bA7c+abFvFFLaLKBvWWnHjzupokHiHg+jaqNzpFE2WYjHrtVuC4gMgvdZO4y3S34PNXdWjfM
 wqnMk/b2q75h1WdC6/kWPHOhbZNQr0ANRen9w1R70PqjvOCI7XcpjgRHimD2CzXB7AzVFcdoZ
 pPtTdkbQYvTSLxw8BYBW0i4v7yZHl5P59PDCdn2AtdJWVUfaRRmTs0dagR3/WQ/DODNBZxfM/
 p6kbEQ8tNW7bhHzZBXJ7axwTspl8UXp6zg1Tk/fAh2x4rG+pOOHq6RoHMTD6t9HaP/rgv6gXf
 5OFYhi91hf2ie0nje0StPKzkgLRKO7gUty9VBnyVCtI/6Rj7xcB5jzN/gsvV11G6+6e+y2GUz
 7t26S42/ZX7OgdCDpAheaGua3bETTjvsPIBIfhetggs3Epj3Z6NTVX6cL+4Ivr7+4nhWY/qXI
 AYth/l5P6vp8KCf77uHQBogHOKmwJDXErHvdIUq3X5U+pIz/ktxdh6pN8SmVbA8YD+Hkq3anT
 GzbxCqdRH8nJfiftqSrar5m9Q969UJl8/Ge1ByvLjkN5fcWhnE6ZjK9jo8xRdqz9gKC7o+q7+
 x8oU/4DNj52NVSPjh2Qb3PHMOfV6ZX1Ev7+bPWibNMlKkVqjGET3b/6QnaJ3BcQ/22q/YH8FU
 3/qDrnVldAV+jR6qk6Eo+h6TluH8p89dkfB13mGUNThpGCPiz0AJorbMciyZ8PuLkix1Qp9rC
 NMH2LjHPDg0qwgyC/LCkvS5bRUiNT7TFDxcv3qFg7v6CS4ZFPNRsGFiwuxFBqpzn7Mmh3gUzY
 +GAC7QacilOEXNX3IXRGa7guukryclQBQCGzVNLeOc5B1pqXFRg8qVMAZnvmsSPIWlsHgaqzE
 r39gMLYEcFN91mxgZCVw==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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

The audio driver should not use a hardwired gpio number
from the header. Change it to use a lookup table.

Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/spitz.c                    | 33 ++++++++++-
 arch/arm/mach-pxa/{include/mach => }/spitz.h |  2 +-
 arch/arm/mach-pxa/spitz_pm.c                 |  2 +-
 sound/soc/pxa/spitz.c                        | 58 ++++++++------------
 4 files changed, 57 insertions(+), 38 deletions(-)
 rename arch/arm/mach-pxa/{include/mach => }/spitz.h (99%)

diff --git a/arch/arm/mach-pxa/spitz.c b/arch/arm/mach-pxa/spitz.c
index a4fdc399d152..6028fd83c44d 100644
--- a/arch/arm/mach-pxa/spitz.c
+++ b/arch/arm/mach-pxa/spitz.c
@@ -44,7 +44,7 @@
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include <linux/platform_data/video-pxafb.h>
-#include <mach/spitz.h>
+#include "spitz.h"
 #include "sharpsl_pm.h"
 #include <mach/smemc.h>
 
@@ -948,11 +948,42 @@ static void __init spitz_i2c_init(void)
 static inline void spitz_i2c_init(void) {}
 #endif
 
+static struct gpiod_lookup_table spitz_audio_gpio_table = {
+	.dev_id = "spitz-audio",
+	.table = {
+		GPIO_LOOKUP("sharp-scoop.0", SPITZ_GPIO_MUTE_L - SPITZ_SCP_GPIO_BASE,
+			    "mute-l", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("sharp-scoop.0", SPITZ_GPIO_MUTE_R - SPITZ_SCP_GPIO_BASE,
+			    "mute-r", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("sharp-scoop.1", SPITZ_GPIO_MIC_BIAS - SPITZ_SCP2_GPIO_BASE,
+			    "mic", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
+static struct gpiod_lookup_table akita_audio_gpio_table = {
+	.dev_id = "spitz-audio",
+	.table = {
+		GPIO_LOOKUP("sharp-scoop.0", SPITZ_GPIO_MUTE_L - SPITZ_SCP_GPIO_BASE,
+			    "mute-l", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("sharp-scoop.0", SPITZ_GPIO_MUTE_R - SPITZ_SCP_GPIO_BASE,
+			    "mute-r", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("gpio-pxa", AKITA_GPIO_MIC_BIAS - AKITA_IOEXP_GPIO_BASE,
+			    "mic", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
 /******************************************************************************
  * Audio devices
  ******************************************************************************/
 static inline void spitz_audio_init(void)
 {
+	if (machine_is_akita())
+		gpiod_add_lookup_table(&akita_audio_gpio_table);
+	else
+		gpiod_add_lookup_table(&spitz_audio_gpio_table);
+
 	platform_device_register_simple("spitz-audio", -1, NULL, 0);
 }
 
diff --git a/arch/arm/mach-pxa/include/mach/spitz.h b/arch/arm/mach-pxa/spitz.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/spitz.h
rename to arch/arm/mach-pxa/spitz.h
index 04828d8918aa..f97e3ebd762d 100644
--- a/arch/arm/mach-pxa/include/mach/spitz.h
+++ b/arch/arm/mach-pxa/spitz.h
@@ -11,7 +11,7 @@
 #define __ASM_ARCH_SPITZ_H  1
 #endif
 
-#include "irqs.h" /* PXA_NR_BUILTIN_GPIO, PXA_GPIO_TO_IRQ */
+#include <mach/irqs.h> /* PXA_NR_BUILTIN_GPIO, PXA_GPIO_TO_IRQ */
 #include <linux/fb.h>
 
 /* Spitz/Akita GPIOs */
diff --git a/arch/arm/mach-pxa/spitz_pm.c b/arch/arm/mach-pxa/spitz_pm.c
index 201dabe883b6..6689b67f9ce5 100644
--- a/arch/arm/mach-pxa/spitz_pm.c
+++ b/arch/arm/mach-pxa/spitz_pm.c
@@ -19,7 +19,7 @@
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/spitz.h>
+#include "spitz.h"
 #include "pxa27x.h"
 #include "sharpsl_pm.h"
 
diff --git a/sound/soc/pxa/spitz.c b/sound/soc/pxa/spitz.c
index f7babffb7228..8fcdade9c8dd 100644
--- a/sound/soc/pxa/spitz.c
+++ b/sound/soc/pxa/spitz.c
@@ -14,13 +14,12 @@
 #include <linux/timer.h>
 #include <linux/interrupt.h>
 #include <linux/platform_device.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/soc.h>
 
 #include <asm/mach-types.h>
-#include <mach/spitz.h>
 #include "../codecs/wm8750.h"
 #include "pxa2xx-i2s.h"
 
@@ -37,7 +36,7 @@
 
 static int spitz_jack_func;
 static int spitz_spk_func;
-static int spitz_mic_gpio;
+static struct gpio_desc *gpiod_mic, *gpiod_mute_l, *gpiod_mute_r;
 
 static void spitz_ext_control(struct snd_soc_dapm_context *dapm)
 {
@@ -56,8 +55,8 @@ static void spitz_ext_control(struct snd_soc_dapm_context *dapm)
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Jack");
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
 		snd_soc_dapm_enable_pin_unlocked(dapm, "Headphone Jack");
-		gpio_set_value(SPITZ_GPIO_MUTE_L, 1);
-		gpio_set_value(SPITZ_GPIO_MUTE_R, 1);
+		gpiod_set_value(gpiod_mute_l, 1);
+		gpiod_set_value(gpiod_mute_r, 1);
 		break;
 	case SPITZ_MIC:
 		/* enable mic jack and bias, mute hp */
@@ -65,8 +64,8 @@ static void spitz_ext_control(struct snd_soc_dapm_context *dapm)
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
 		snd_soc_dapm_enable_pin_unlocked(dapm, "Mic Jack");
-		gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
-		gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
+		gpiod_set_value(gpiod_mute_l, 0);
+		gpiod_set_value(gpiod_mute_r, 0);
 		break;
 	case SPITZ_LINE:
 		/* enable line jack, disable mic bias and mute hp */
@@ -74,8 +73,8 @@ static void spitz_ext_control(struct snd_soc_dapm_context *dapm)
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Jack");
 		snd_soc_dapm_enable_pin_unlocked(dapm, "Line Jack");
-		gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
-		gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
+		gpiod_set_value(gpiod_mute_l, 0);
+		gpiod_set_value(gpiod_mute_r, 0);
 		break;
 	case SPITZ_HEADSET:
 		/* enable and unmute headset jack enable mic bias, mute L hp */
@@ -83,8 +82,8 @@ static void spitz_ext_control(struct snd_soc_dapm_context *dapm)
 		snd_soc_dapm_enable_pin_unlocked(dapm, "Mic Jack");
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
 		snd_soc_dapm_enable_pin_unlocked(dapm, "Headset Jack");
-		gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
-		gpio_set_value(SPITZ_GPIO_MUTE_R, 1);
+		gpiod_set_value(gpiod_mute_l, 0);
+		gpiod_set_value(gpiod_mute_r, 1);
 		break;
 	case SPITZ_HP_OFF:
 
@@ -93,8 +92,8 @@ static void spitz_ext_control(struct snd_soc_dapm_context *dapm)
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Jack");
 		snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
-		gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
-		gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
+		gpiod_set_value(gpiod_mute_l, 0);
+		gpiod_set_value(gpiod_mute_r, 0);
 		break;
 	}
 
@@ -199,7 +198,7 @@ static int spitz_set_spk(struct snd_kcontrol *kcontrol,
 static int spitz_mic_bias(struct snd_soc_dapm_widget *w,
 	struct snd_kcontrol *k, int event)
 {
-	gpio_set_value_cansleep(spitz_mic_gpio, SND_SOC_DAPM_EVENT_ON(event));
+	gpiod_set_value_cansleep(gpiod_mic, SND_SOC_DAPM_EVENT_ON(event));
 	return 0;
 }
 
@@ -287,39 +286,28 @@ static int spitz_probe(struct platform_device *pdev)
 	struct snd_soc_card *card = &snd_soc_spitz;
 	int ret;
 
-	if (machine_is_akita())
-		spitz_mic_gpio = AKITA_GPIO_MIC_BIAS;
-	else
-		spitz_mic_gpio = SPITZ_GPIO_MIC_BIAS;
-
-	ret = gpio_request(spitz_mic_gpio, "MIC GPIO");
-	if (ret)
-		goto err1;
-
-	ret = gpio_direction_output(spitz_mic_gpio, 0);
-	if (ret)
-		goto err2;
+	gpiod_mic = devm_gpiod_get(&pdev->dev, "mic", GPIOD_OUT_LOW);
+	if (IS_ERR(gpiod_mic))
+		return PTR_ERR(gpiod_mic);
+	gpiod_mute_l = devm_gpiod_get(&pdev->dev, "mute-l", GPIOD_OUT_LOW);
+	if (IS_ERR(gpiod_mute_l))
+		return PTR_ERR(gpiod_mute_l);
+	gpiod_mute_r = devm_gpiod_get(&pdev->dev, "mute-r", GPIOD_OUT_LOW);
+	if (IS_ERR(gpiod_mute_r))
+		return PTR_ERR(gpiod_mute_r);
 
 	card->dev = &pdev->dev;
 
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
-	if (ret) {
+	if (ret)
 		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
 			ret);
-		goto err2;
-	}
-
-	return 0;
 
-err2:
-	gpio_free(spitz_mic_gpio);
-err1:
 	return ret;
 }
 
 static int spitz_remove(struct platform_device *pdev)
 {
-	gpio_free(spitz_mic_gpio);
 	return 0;
 }
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
