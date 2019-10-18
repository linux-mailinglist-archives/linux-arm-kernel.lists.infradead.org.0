Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4FBDCA0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIAimWfqnJJeAjdjC5o6DKl7g9S4uNNWJJmaR7V7SmQ=; b=qluhB8ieiAe1/c
	y0Vcmbk/NkQ7jV3B51Tz7OzmWeIIKBsWqbQYXqHpAm6nDDG9Unh9M26dJHTitcT0X0/CzOFNWD7sG
	I3iyeftCpiodLVK65HU6bUEtfqy5LZdM19SH5VR+kdq+m2Z059YNo5cPU9T5rpjZ5ulCPOrrIJxx1
	HbGqNWXLg7HRL57YY7gQOJxnj4RyAfy6ZFlHBD12LqYin7tAqAc0SEVEKoaMAK3TP2gLb0OojYLhh
	NGB8dHF8gyUA9Bto7TdlNTCj/X6ikC6l/VFqXymPIkYHTJw+TwNxhxYH/c3M34cyj6oh05sFyPJYI
	y57cOqCVnLAPigR3SbHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUdu-0008Kg-JY; Fri, 18 Oct 2019 15:58:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUWY-0000WW-CD
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RTcrg8IUSpEc/uVT0jatYJM7V+VNFliLRD1jydbJjSw=; b=FGhEUn4KrhqwxF60MYVKCQD+CZ
 tk9ewKrnW0JBAjpuwfMhXi/6OvOcCCGQERCTPWwrR8QAXMR8VjQmW+R8aacuyGbCzctuFUxmqGcAD
 l/rWWDRfOUcdNYnXFnQcNpltJVY0VqV3C3poYkTpeVMIOcPjX34ypb+frhkKat9B7HufKsPcWJS+Q
 CZ1IaGZKzqzrlZ7RnXLePCQvME1mQ9U2hLnP02iYpewxaOiK88bMjVaD+oDNCcVpKFjO/D6R8iRte
 dewXmvUwlIwBmlTapOQfyM+g52AuP3Asnau0SU396flUzrMb9vkryygLUNAGB4q39s5rynUuIYrbf
 Iyoc/IfQ==;
Received: from mout.kundenserver.de ([217.72.192.73])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUP5-0002CB-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:43:03 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M3DFj-1iK6Hu39zx-003dRY; Fri, 18 Oct 2019 17:42:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 23/46] ARM: pxa: z2: use gpio lookup for audio device
Date: Fri, 18 Oct 2019 17:41:38 +0200
Message-Id: <20191018154201.1276638-23-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:cjdBav0l0UpRWDnSxUWkeDULSGZ8131Ss2R6vA9ICOozyyA8AhI
 J5Ms+VvXLMgtLTNHoEmTdyk5htB1jeqWROYYFpYKK92TY0sCB8KDTXPAfSCu4TbSNDVy0Dj
 pytBDXhGT4cEPIQR7K0nFk70ecqjXtCh1vFO13koPRhe4AEigqyQUR+Mxh8qQbBcYBVmR2d
 tc22pWqr8BrPuhAyHqu8A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8XXhRh5ZtT4=:pyBU5Wnn9fBZIQssW2sBRM
 LQKG1YHO95Ch5/RxCLc4I2/v4WNemH1r5UOwxDPTfP5kH9YdiSRsebMm6QknjTzAEmaT95mZY
 4gso8AtuwYMoEhA46FLqN59kzOjCemQ/+rhJMPyzYI3HjTv1qMD06IeMGyCRfjStJi4EDe9bc
 4XSmwehrv6tUidpUuAmqHwjPEb9PD+x/MmNejMy0BUoOqwAa4XLxVXLzOl8Dl6io7c66NXBHf
 9s33QoXoYAMNLqEYPQ2DqD0/nVH6rKbfcj7O7sM+4vbiPm5wLGPkNjAPqIXc1zkIshzhl5hJo
 hsPCCX0Y9qBCBOPt4lX3h5/eo/SLRY4M04Gzhh0GlCyXlTsaSyCmbXEK51gZY+PbDctQAgWgA
 kC6qJPi0qwb4ZWYqh/U7ZWsrr7LH05EgvwQp8Lmi4cDnPN+rBSA9r1FSS7sLb3h7Q/mXb0fqF
 4i8ZC+KSy17rZVO06Mpxko0Uqm2gc8D4nEJT3Wfdkx9VKqnZAsrJuycZA1t5SVSm0Wto70GXm
 Bd7YwJC8MD2nuR93nmKsZF0EK1VsKtDXcuq93YmFLm6n+yua+BDkEABgRmOmITDaqbD7lJsiD
 yXBG6iRDstwTb33S2GnQOQLXiYpaTzEqYfZEdXKAMm5Qe4KC7aTMa/c5U2xRNJabnJr7ksuca
 UwuNUg2q4KutVNub5Yxw2OFNUuokjAVheS/FkwR3JpJcDCzp//Hx72P0p6X4HockU6asBBh4Q
 oQxmyb2MpMwcazyB9u6msoUa1hlIpGY5LednMwHVeNmfbh+evEqo0QeSM0ZJGMrI3U5ZJW0T+
 vIvsYzj+VN1mzMlk31z84peCwOKo50NkTMj/k/vpEW/a6j49MsRhjcDIxIK0s099VokJaFNUo
 Uj7PuFz1pjsU4yoNmG4Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_164259_925709_5B022DAE 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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

The audio device is allocated by the audio driver, and it uses a gpio
number from the mach/z2.h header file.

Change it to use a gpio lookup table for the device allocated by the
driver to keep the header file local to the machine.

Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/z2.c | 11 +++++++++++
 sound/soc/pxa/z2.c     |  5 ++---
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-pxa/z2.c b/arch/arm/mach-pxa/z2.c
index 900cefc4c5ea..874bdd49ad43 100644
--- a/arch/arm/mach-pxa/z2.c
+++ b/arch/arm/mach-pxa/z2.c
@@ -623,6 +623,15 @@ static void __init z2_spi_init(void)
 static inline void z2_spi_init(void) {}
 #endif
 
+static struct gpiod_lookup_table z2_audio_gpio_table = {
+	.dev_id = "soc-audio",
+	.table = {
+		GPIO_LOOKUP("gpio-pxa", GPIO37_ZIPITZ2_HEADSET_DETECT,
+			    "hsdet-gpio", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
 /******************************************************************************
  * Core power regulator
  ******************************************************************************/
@@ -727,6 +736,8 @@ static void __init z2_init(void)
 	z2_keys_init();
 	z2_pmic_init();
 
+	gpiod_add_lookup_table(&z2_audio_gpio_table);
+
 	pm_power_off = z2_power_off;
 }
 
diff --git a/sound/soc/pxa/z2.c b/sound/soc/pxa/z2.c
index 1fb3e7ac42fa..5147ed60fcd0 100644
--- a/sound/soc/pxa/z2.c
+++ b/sound/soc/pxa/z2.c
@@ -13,7 +13,7 @@
 #include <linux/timer.h>
 #include <linux/interrupt.h>
 #include <linux/platform_device.h>
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 
 #include <sound/core.h>
 #include <sound/pcm.h>
@@ -22,7 +22,6 @@
 
 #include <asm/mach-types.h>
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/z2.h>
 
 #include "../codecs/wm8750.h"
 #include "pxa2xx-i2s.h"
@@ -89,7 +88,6 @@ static struct snd_soc_jack_pin hs_jack_pins[] = {
 /* Headset jack detection gpios */
 static struct snd_soc_jack_gpio hs_jack_gpios[] = {
 	{
-		.gpio		= GPIO37_ZIPITZ2_HEADSET_DETECT,
 		.name		= "hsdet-gpio",
 		.report		= SND_JACK_HEADSET,
 		.debounce_time	= 200,
@@ -195,6 +193,7 @@ static int __init z2_init(void)
 	if (!z2_snd_device)
 		return -ENOMEM;
 
+	hs_jack_gpios[0].gpiod_dev = &z2_snd_device->dev;
 	platform_set_drvdata(z2_snd_device, &snd_soc_z2);
 	ret = platform_device_add(z2_snd_device);
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
