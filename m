Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06BEDC943
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZX8dyech3MKedKiRi9npThTHeNtvn8rUifrRd0PiBdA=; b=NujpXJ/KPovdBY
	SPM9GHRdjjLJc+7GGDEgi44vmtwjsSMh1RhzKzl8KVhX2Dlk6o/UKnnB1jYeqq2Y6n17QzBmuqsst
	f/cQ0wgjdBXzoNH3n3CKo8Y2d6xVmcU6UJthFzknuEp0PrOYQcQxyZOpH45fnJ6I+AaPsKW9fvmqa
	adtLzE1pR40tRTPQqzsQqptqd3kynGMhQ81atDuTrM739qfSLmCOFFHEWU7d+GhiGPz04lUr2KlN9
	7PPCuJfdkhA/vlk8SsCSf+ihQtYIDYGo3DYrfMjb4Xtudfwjkm5OvaIhzfrOG4MOlaz/8r44sLE/E
	JBieAr2j4NFWV9Urpd2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUSG-0003C4-FN; Fri, 18 Oct 2019 15:46:16 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOc-00083g-9J
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:35 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N63JO-1hx5qr2yfg-016PlV; Fri, 18 Oct 2019 17:42:25 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 17/46] ARM: pxa: poodle: use platform data for poodle asoc
 driver
Date: Fri, 18 Oct 2019 17:41:32 +0200
Message-Id: <20191018154201.1276638-17-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:p9ZrRDHwCnKDBluK8hkqbIJa9HiEsmbCOZpQY8Mh+exqEux633r
 DZRxCBw9sMWxqdqgBGczIR+z7mwPWtziPTHrh12OtwvaLaf2RNlYqcykLvTJi0KcVSxmGoh
 rhj/qwo8gxEs8NxXN1DaJ0HzXd/AAzxvGUB/pGCGkLmNB2XbDIvGNWbDS4qHtyEL8WYXkJU
 uocSZU2bYNFxoP37Nc7Qg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WAOOIPnScUM=:9Eaw5bkBpyAoqkstz5gVM4
 E7/ZdztdXyDuWYH4h4FLGsUr4tPlBUW+LVP2JZcezjI71bxVYKQ+lCLxC6qhN+fGahELtAmIR
 cOzf2qkP++9ojwfonDfU9PCp4GsIYw30OY4s12K23FSgo5yuOHz3wqbfoogZwPWQUYqRnEvju
 z5tE1dAHFEaQs0c8RFlFNwxzLj6NIrFk/StaumS8C+gb+5L0ElpljtFSMDNT3ZnXA2WhaN4p5
 9U3xVZvQ5DwRoGPtSh0exjBsmkmVNKG7Mpci41hFnQdD/apiizlXXDqJyI60YiKqlVXdC4QSP
 fYtmEXbjteMmh9E2TFJhrbJjeOS2818VyK1WpZ2dijPUvaVOqJzolVHBZyN6o61UiaXYKUgpJ
 EWhwpkITNOXDEM3gwSqtmetTIqJ12M1sFD0sda+PdnhvM1GOurMU8FpVE7KQ9Toar8ZRCcVRu
 23UrtofaXJbiFvEPvEJ4ZY0WjNy5AvHOQ8+7xckLWW7CQaeFQhPcw/YcB8k/qrVFcTXYK5HeB
 bdPYGBnwyZ5EeFaQJaDZrjVntsnRxid/TNUXCbNGZORhnneKJoEqaDBSlpsVmAclYh9OfzS+z
 QBYJAtBfLUT/qNqdn57tqcoEOnD1bQG28r3Aw+nJmtF74JxB5xZTRCm9dD/1yut9tEUh6xJUf
 ToH28uYuVJ6/2JpxBaPj/akU+2z+sdtY1hqVwkkpd4HiJOOAi/AfyU4gmjQ3jL+urB4pGeMoH
 8m1kRo8ZSsvvAd/1jfFmXlEjWxeUBuQFOn1jzQhdqpk2D7rkeZeYMCc2uUaz6c56vy7Uir130
 b7NBIxHqnWHusuHFIIaJgO8ruFFOoc/ELslpzy7Yf5QutDJAN733oFp/1WwXgBXuITvJmyNcE
 Vd5/RLwxLiSuzIGkuf5A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084230_674733_CF9D0275 
X-CRM114-Status: GOOD (  19.54  )
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
Cc: alsa-devel@alsa-project.org, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The poodle audio driver shows its age by using a custom
gpio api for the "locomo" support chip.

In a perfect world, this would get converted to use gpiolib
and a gpio lookup table.

As the world is not perfect, just pass all the required data
in a custom platform_data structure. to avoid the globally
visible mach/poodle.h header.

Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/poodle.c                    | 30 ++++++++----
 arch/arm/mach-pxa/{include/mach => }/poodle.h |  4 +-
 include/linux/platform_data/asoc-poodle.h     | 16 ++++++
 sound/soc/pxa/poodle.c                        | 49 ++++++++++---------
 4 files changed, 63 insertions(+), 36 deletions(-)
 rename arch/arm/mach-pxa/{include/mach => }/poodle.h (97%)
 create mode 100644 include/linux/platform_data/asoc-poodle.h

diff --git a/arch/arm/mach-pxa/poodle.c b/arch/arm/mach-pxa/poodle.c
index 8dd791ee49bf..7709fe026c33 100644
--- a/arch/arm/mach-pxa/poodle.c
+++ b/arch/arm/mach-pxa/poodle.c
@@ -39,11 +39,13 @@
 #include <asm/mach/irq.h>
 
 #include "pxa25x.h"
-#include <linux/platform_data/mmc-pxamci.h>
 #include "udc.h"
+#include "poodle.h"
+
+#include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/irda-pxaficp.h>
-#include <mach/poodle.h>
 #include <linux/platform_data/video-pxafb.h>
+#include <linux/platform_data/asoc-poodle.h>
 
 #include <asm/hardware/scoop.h>
 #include <asm/hardware/locomo.h>
@@ -155,12 +157,6 @@ static struct scoop_pcmcia_config poodle_pcmcia_config = {
 
 EXPORT_SYMBOL(poodle_scoop_device);
 
-
-static struct platform_device poodle_audio_device = {
-	.name	= "poodle-audio",
-	.id	= -1,
-};
-
 /* LoCoMo device */
 static struct resource locomo_resources[] = {
 	[0] = {
@@ -179,7 +175,7 @@ static struct locomo_platform_data locomo_info = {
 	.irq_base	= IRQ_BOARD_START,
 };
 
-struct platform_device poodle_locomo_device = {
+static struct platform_device poodle_locomo_device = {
 	.name		= "locomo",
 	.id		= 0,
 	.num_resources	= ARRAY_SIZE(locomo_resources),
@@ -189,7 +185,21 @@ struct platform_device poodle_locomo_device = {
 	},
 };
 
-EXPORT_SYMBOL(poodle_locomo_device);
+static struct poodle_audio_platform_data poodle_audio_pdata = {
+	.locomo_dev	= &poodle_locomo_device.dev,
+
+	.gpio_amp_on   	= POODLE_LOCOMO_GPIO_AMP_ON,
+	.gpio_mute_l   	= POODLE_LOCOMO_GPIO_MUTE_L,
+	.gpio_mute_r   	= POODLE_LOCOMO_GPIO_MUTE_R,
+	.gpio_232vcc_on	= POODLE_LOCOMO_GPIO_232VCC_ON,
+	.gpio_jk_b     	= POODLE_LOCOMO_GPIO_JK_B,
+};
+
+static struct platform_device poodle_audio_device = {
+	.name	= "poodle-audio",
+	.id	= -1,
+	.dev.platform_data = &poodle_audio_pdata,
+};
 
 #if defined(CONFIG_SPI_PXA2XX) || defined(CONFIG_SPI_PXA2XX_MODULE)
 static struct pxa2xx_spi_controller poodle_spi_info = {
diff --git a/arch/arm/mach-pxa/include/mach/poodle.h b/arch/arm/mach-pxa/poodle.h
similarity index 97%
rename from arch/arm/mach-pxa/include/mach/poodle.h
rename to arch/arm/mach-pxa/poodle.h
index b56b19351a03..e675a3d1aa18 100644
--- a/arch/arm/mach-pxa/include/mach/poodle.h
+++ b/arch/arm/mach-pxa/poodle.h
@@ -15,7 +15,7 @@
 #ifndef __ASM_ARCH_POODLE_H
 #define __ASM_ARCH_POODLE_H  1
 
-#include "irqs.h" /* PXA_GPIO_TO_IRQ */
+#include <mach/irqs.h> /* PXA_GPIO_TO_IRQ */
 
 /*
  * GPIOs
@@ -89,6 +89,4 @@
 
 #define POODLE_NR_IRQS		(IRQ_BOARD_START + 4)	/* 4 for LoCoMo */
 
-extern struct platform_device poodle_locomo_device;
-
 #endif /* __ASM_ARCH_POODLE_H  */
diff --git a/include/linux/platform_data/asoc-poodle.h b/include/linux/platform_data/asoc-poodle.h
new file mode 100644
index 000000000000..2052fad55c5c
--- /dev/null
+++ b/include/linux/platform_data/asoc-poodle.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_PLATFORM_DATA_POODLE_AUDIO
+#define __LINUX_PLATFORM_DATA_POODLE_AUDIO
+
+/* locomo is not a proper gpio driver, and uses its own api */
+struct poodle_audio_platform_data {
+	struct device	*locomo_dev;
+
+	int		gpio_amp_on;
+	int		gpio_mute_l;
+	int		gpio_mute_r;
+	int		gpio_232vcc_on;
+	int		gpio_jk_b;
+};
+
+#endif
diff --git a/sound/soc/pxa/poodle.c b/sound/soc/pxa/poodle.c
index f289c089aede..39768288b80c 100644
--- a/sound/soc/pxa/poodle.c
+++ b/sound/soc/pxa/poodle.c
@@ -21,8 +21,8 @@
 
 #include <asm/mach-types.h>
 #include <asm/hardware/locomo.h>
-#include <mach/poodle.h>
 #include <linux/platform_data/asoc-pxa.h>
+#include <linux/platform_data/asoc-poodle.h>
 
 #include "../codecs/wm8731.h"
 #include "pxa2xx-i2s.h"
@@ -38,21 +38,23 @@
 static int poodle_jack_func;
 static int poodle_spk_func;
 
+static struct poodle_audio_platform_data *poodle_pdata;
+
 static void poodle_ext_control(struct snd_soc_dapm_context *dapm)
 {
 	/* set up jack connection */
 	if (poodle_jack_func == POODLE_HP) {
 		/* set = unmute headphone */
-		locomo_gpio_write(&poodle_locomo_device.dev,
-			POODLE_LOCOMO_GPIO_MUTE_L, 1);
-		locomo_gpio_write(&poodle_locomo_device.dev,
-			POODLE_LOCOMO_GPIO_MUTE_R, 1);
+		locomo_gpio_write(poodle_pdata->locomo_dev,
+			poodle_pdata->gpio_mute_l, 1);
+		locomo_gpio_write(poodle_pdata->locomo_dev,
+			poodle_pdata->gpio_mute_r, 1);
 		snd_soc_dapm_enable_pin(dapm, "Headphone Jack");
 	} else {
-		locomo_gpio_write(&poodle_locomo_device.dev,
-			POODLE_LOCOMO_GPIO_MUTE_L, 0);
-		locomo_gpio_write(&poodle_locomo_device.dev,
-			POODLE_LOCOMO_GPIO_MUTE_R, 0);
+		locomo_gpio_write(poodle_pdata->locomo_dev,
+			poodle_pdata->gpio_mute_l, 0);
+		locomo_gpio_write(poodle_pdata->locomo_dev,
+			poodle_pdata->gpio_mute_r, 0);
 		snd_soc_dapm_disable_pin(dapm, "Headphone Jack");
 	}
 
@@ -80,10 +82,10 @@ static int poodle_startup(struct snd_pcm_substream *substream)
 static void poodle_shutdown(struct snd_pcm_substream *substream)
 {
 	/* set = unmute headphone */
-	locomo_gpio_write(&poodle_locomo_device.dev,
-		POODLE_LOCOMO_GPIO_MUTE_L, 1);
-	locomo_gpio_write(&poodle_locomo_device.dev,
-		POODLE_LOCOMO_GPIO_MUTE_R, 1);
+	locomo_gpio_write(poodle_pdata->locomo_dev,
+		poodle_pdata->gpio_mute_l, 1);
+	locomo_gpio_write(poodle_pdata->locomo_dev,
+		poodle_pdata->gpio_mute_r, 1);
 }
 
 static int poodle_hw_params(struct snd_pcm_substream *substream,
@@ -174,11 +176,11 @@ static int poodle_amp_event(struct snd_soc_dapm_widget *w,
 	struct snd_kcontrol *k, int event)
 {
 	if (SND_SOC_DAPM_EVENT_ON(event))
-		locomo_gpio_write(&poodle_locomo_device.dev,
-			POODLE_LOCOMO_GPIO_AMP_ON, 0);
+		locomo_gpio_write(poodle_pdata->locomo_dev,
+			poodle_pdata->gpio_amp_on, 0);
 	else
-		locomo_gpio_write(&poodle_locomo_device.dev,
-			POODLE_LOCOMO_GPIO_AMP_ON, 1);
+		locomo_gpio_write(poodle_pdata->locomo_dev,
+			poodle_pdata->gpio_amp_on, 1);
 
 	return 0;
 }
@@ -254,13 +256,14 @@ static int poodle_probe(struct platform_device *pdev)
 	struct snd_soc_card *card = &poodle;
 	int ret;
 
-	locomo_gpio_set_dir(&poodle_locomo_device.dev,
-		POODLE_LOCOMO_GPIO_AMP_ON, 0);
+	poodle_pdata = pdev->dev.platform_data;
+	locomo_gpio_set_dir(poodle_pdata->locomo_dev,
+		poodle_pdata->gpio_amp_on, 0);
 	/* should we mute HP at startup - burning power ?*/
-	locomo_gpio_set_dir(&poodle_locomo_device.dev,
-		POODLE_LOCOMO_GPIO_MUTE_L, 0);
-	locomo_gpio_set_dir(&poodle_locomo_device.dev,
-		POODLE_LOCOMO_GPIO_MUTE_R, 0);
+	locomo_gpio_set_dir(poodle_pdata->locomo_dev,
+		poodle_pdata->gpio_mute_l, 0);
+	locomo_gpio_set_dir(poodle_pdata->locomo_dev,
+		poodle_pdata->gpio_mute_r, 0);
 
 	card->dev = &pdev->dev;
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
