Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32645DC946
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeI8oI68xZRy/agtcKupLXs7OUxQOTd1Icpu32fkmTQ=; b=WYaHx0FdxGj3Kn
	NlZTHGwGIDQYZ6fYwM+QHHQ08ZhtTwwpAWH4CPnh0coQ036leQQ5dm40a+3IaxpAq/UIvnsM9ZAtE
	4FwrFFgLBvIdaalUnSs2WewRpQCPkMHs7QwwyturqHYkJECijuk/xD2+V15wQWCYKNbZ5PZn6bUbi
	yLTnIs84IHsC0szNtYVbqtX5uOvW/35K/u1/rs+j5NTOEZHR4ExYb6jrHVZaSqASpBsE0rtAzgyNt
	y+TtYX7lEVw+vlpUDIE4NISMg9+a5pe0bSBL9q9SJQgHTtKlQ8mwpClVY0BGh+Vn3qLsw1rxLXTCN
	FFq2ChXHRCKCKA4GezOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUSk-0003hC-92; Fri, 18 Oct 2019 15:46:46 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOc-00084A-Gm
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:37 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MG9Xu-1iFzgL1eRQ-00GVSz; Fri, 18 Oct 2019 17:42:25 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 16/46] ARM: pxa: tosa: use gpio descriptor for audio
Date: Fri, 18 Oct 2019 17:41:31 +0200
Message-Id: <20191018154201.1276638-16-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:E20XgLKSQLAmPv/Au++8EwmYOgk3y+XACbUkV3LAih2e2Yj07KM
 g05RSY7gyHzJgD4iIfT7YhtgXiu1Lr1vuBtrh6M2wc4pYSmoYCowFNc0qD0m8AOU38V+L2J
 1uw4hDqzNqscLb3ouObtwnShsY39wQ2qTmK85xQMDWFl/iuUo8Unpvdft1lD9W1dGmdH1RY
 Tz3ENzPk5SnnU/9zsKF2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Sa9VA/rH7Rw=:tUTpmnZ1ACTEs7/I4CO+z/
 JcGaLN/vw2kDyaS+WvNVr89diurJqlTwzePy8dNm1SH21cdmG1ncV7vX16jJLqZr/a1JfMqCm
 OqsU9LNZrNd2oE2cFaoz1wFzK9XosYLFmQ8sOpE0UTPjF+76H2d+8kzd9h9scBkf5p61N/Asx
 erZU7ZdoSEU+/JL8LflFBP4wChaLjJLp73Rff5I24hvqQC1sWHa6RgRX5xAOedrfHuW9yhasm
 tYPsiN+QsuXgWZIi+UgJOiHH8qvaSUDzhDP9qWh7kw+wm78B6QVz9ipH+h8k3dFnfaFYSrh+G
 FaPBTEyVa9Z+mvL+chhfa4/SzgaLx+XS+ZQhNxxAXg2r+B6xd18a4nFk4bux/Uhm0xqOXczJu
 EFrEkZNA2xFfvmNIGeuyYg/5UHlic66vyoLfnYwuP8f23wi/tTJCPMUEms43ggCrx3G6ON0wr
 b59aB8CvmuDTAF65622N2WD6oZqJBz9amgm0V5MuiT+MQPN9LYfqws5kx8tIx0E9IwyDJmXOZ
 Gj4ZVdA6lx2uQRTp2V9qqMo+vzaqqcABlgjOdS6aQqVEakqWN9xjexkFOYYFqbzgGkLOdsC80
 zthA0EGldK9IKGoixKU1rXVAFU0dvxvbv6V4tWAGO20+o5Wt4NeSIieFFbDVX6PzLTiMzijWl
 GYOpBL4BzXt4Bdu8WeB4jMKiyQKWtjTmdzCBqLemKz+3mvnkC97/hscZhRcfj16DKW38TTEJz
 ClYctnIUkkXqWF3chUrPpZAiIyahgaR3QFnbNhUQeGw23H6n4QuaDx+Ff/jwsAyF2CjMBUGNI
 x+9DU9vHCheyMnAcWabolXltjGzjYlmTmj/ygdMt0uY3NWfscFit9ossaMY+rUMyTicgZs4P3
 kidBS57Dl4kQ8A4of0KQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084230_903551_9CD99526 
X-CRM114-Status: GOOD (  16.36  )
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
 arch/arm/mach-pxa/tosa.c | 12 ++++++++++++
 sound/soc/pxa/tosa.c     | 16 +++++++---------
 2 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-pxa/tosa.c b/arch/arm/mach-pxa/tosa.c
index 264b5b6ed13b..9a7f1e42adac 100644
--- a/arch/arm/mach-pxa/tosa.c
+++ b/arch/arm/mach-pxa/tosa.c
@@ -859,6 +859,17 @@ static struct platform_device wm9712_device = {
 	.id	= -1,
 };
 
+static struct gpiod_lookup_table tosa_audio_gpio_table = {
+	.dev_id = "tosa-audio",
+	.table = {
+		GPIO_LOOKUP("tc6393xb",
+			    TOSA_GPIO_L_MUTE - TOSA_TC6393XB_GPIO_BASE,
+			    "l-mute", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
+
 static struct platform_device tosa_audio_device = {
 	.name	= "tosa-audio",
 	.id	= -1,
@@ -916,6 +927,7 @@ static void __init tosa_init(void)
 	PMCR = 0x01;
 
 	gpiod_add_lookup_table(&tosa_mci_gpio_table);
+	gpiod_add_lookup_table(&tosa_audio_gpio_table);
 	pxa_set_mci_info(&tosa_mci_platform_data);
 	pxa_set_ficp_info(&tosa_ficp_platform_data);
 	pxa_set_i2c_info(NULL);
diff --git a/sound/soc/pxa/tosa.c b/sound/soc/pxa/tosa.c
index 81ee1bcf4c44..d671cf3d44ed 100644
--- a/sound/soc/pxa/tosa.c
+++ b/sound/soc/pxa/tosa.c
@@ -16,14 +16,13 @@
 #include <linux/module.h>
 #include <linux/moduleparam.h>
 #include <linux/device.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/soc.h>
 
 #include <asm/mach-types.h>
-#include <mach/tosa.h>
 #include <linux/platform_data/asoc-pxa.h>
 
 #define TOSA_HP        0
@@ -35,6 +34,7 @@
 
 static int tosa_jack_func;
 static int tosa_spk_func;
+static struct gpio_desc *l_mute_gpio;
 
 static void tosa_ext_control(struct snd_soc_dapm_context *dapm)
 {
@@ -128,7 +128,7 @@ static int tosa_set_spk(struct snd_kcontrol *kcontrol,
 static int tosa_hp_event(struct snd_soc_dapm_widget *w,
 	struct snd_kcontrol *k, int event)
 {
-	gpio_set_value(TOSA_GPIO_L_MUTE, SND_SOC_DAPM_EVENT_ON(event) ? 1 : 0);
+	gpiod_set_value(l_mute_gpio, SND_SOC_DAPM_EVENT_ON(event) ? 1 : 0);
 	return 0;
 }
 
@@ -222,25 +222,23 @@ static int tosa_probe(struct platform_device *pdev)
 	struct snd_soc_card *card = &tosa;
 	int ret;
 
-	ret = gpio_request_one(TOSA_GPIO_L_MUTE, GPIOF_OUT_INIT_LOW,
-			       "Headphone Jack");
+	l_mute_gpio = devm_gpiod_get(&pdev->dev, "l-mute", GPIOD_OUT_LOW);
+	ret = PTR_ERR_OR_ZERO(l_mute_gpio);
 	if (ret)
 		return ret;
 
 	card->dev = &pdev->dev;
 
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
-	if (ret) {
+	if (ret)
 		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n",
 			ret);
-		gpio_free(TOSA_GPIO_L_MUTE);
-	}
+
 	return ret;
 }
 
 static int tosa_remove(struct platform_device *pdev)
 {
-	gpio_free(TOSA_GPIO_L_MUTE);
 	return 0;
 }
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
