Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80285D32C7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMjLF1ZEuWA1xSFxGAVt+OdC3OM5sQ9chWnA4LxzauU=; b=ZIEcsopD8eDrmu
	dJczBBym8v9MeBOuK9WKg5HSzYZObR3c+K6xKlaumt72Vs4ARHwEXqs62dcEXr4Fi5oxlmy1ozdZD
	Clbx5J5oYrInZB1/e1K+z63fSMDeVmAy6fC/zsmT3ThK86FKEIkl74pdEwm43z8Cb6MQkykeiVWss
	Xa8zunHtHAwpeqebUI8XG5oEx/fdxIjynH7y9eb9DZSvlSK5fkCgsTN0eMdzhGgMLdhIUzkO20+zQ
	W7kner2xrKHWJIoqNSk8LlWYhfGfbuBbzBcfKtEpgmUe8WlrbRX7KEOKC7ABBb6X9l2IfoM4f8ktV
	xCr1jGXY+Ogr+vm9MNsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfLR-00052F-EP; Thu, 10 Oct 2019 20:47:33 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfLC-0004yJ-1O
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:47:20 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MXGSU-1iatlv2eSc-00YkjM; Thu, 10 Oct 2019 22:46:01 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sangbeom Kim <sbkim73@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 21/36] ARM: s3c: move iis pinctrl config into boards
Date: Thu, 10 Oct 2019 22:30:05 +0200
Message-Id: <20191010203043.1241612-21-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:FbNz4MvRRGBncg5ezbVW89EBV/sK6D7IabepOWQf3wEPdeV2bB1
 jHeI/tWAg9rmbqWA2OhJAcG3rS7xIQbQHlXhcZP9oMFhwW4GaaBEAdW2srX0WiYtRtLBTNF
 6XBXu6/HMSUFl0iZC4Kvr9Rpn88WR8UnUnmGlNAzwwczLySawBLRWChz9V1moU20yfdaWEv
 ewIu+YHqjpXuy5Y5opLQA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rHn01qD3zdo=:K3nBq2JE5bRE+bp5DAhXFd
 yMkVuBEICs69EQawP4PwOeeLyXNcw/WCQ052HWG0ysXqw+2+ds9Kyn8+PjaTSnmAZt2ymqIyS
 57wbtGJ8L2lANV7HxCjpIItji1dPYcwKmmS4Vkqs4gsE1FLEY+A8EWVxLZefp12i3UznrQjCz
 983txz5B8K7k9TKIZPVQ4tDyZ2l2jeQEKFv4otjtBVzLMNrT10ZPEQEe48zXcsX96NW9axeN/
 5MUqMS4TwcmXbBSBkhxAoHzEN2jG/4mGek5W8CPWCWG2CC6ohIDNC6RlURNa/FJOwZUdetMzT
 rcBfv+5CT+mxoZ0dA0udnMilT4Y4nrfSewO8ExoccnsoESsjFJrWV8lc21ATPdRpqy4cPOhF0
 QkEzbIQTMbmos8vP0K0F+3dAxA3UMUx564tTICxTiy+yBmn+nuXGHPghvwxDJUshaDerRx17o
 /Lak4489Sry29SkCGakDMPZp59ghrTZOIp2w/E8PsGsf6wWzbAJ1QufRlDo+n7PketY/NCfth
 1vEP9HdYuRTPHO5EP2NtAysK/i/OfVZfWIjcKleHHiNHqQ42JjZbPFNnEsR8bjkobX8TZkjLA
 NOKRWmPncCZlptvCWm3D6e8JdmrBFDQxzkdP/eP8faa27W1UVpqij51aSL6OPgEpE4yhRZ8Kz
 xqweltP7k9XKGIGXK0jNixcfHkap5v216H8HkSFP/CNgn3j+54DzpBEeT0UOyek506/nmrWoz
 XnUK1TxWYJjHt2zBCGsWBK0ipXQ1pm0ZfbUd85v6N/ur0o+VkbcN+3N/KdUZ9NFakD/BqXbmR
 tAUweKD7dBjLvig8tVQDcflpc0j8WnrH+P4Vd8gZa6GPPOitkJsFR2WT80cpqfEFViHpYF5HI
 CaJNUTKWbUSYJgbgM5aw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134718_383641_2640E0FF 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
 Arnd Bergmann <arnd@arndb.de>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The s3c_gpio_cfgall_range() function is an internal interface of
the samsung gpio driver and should not be called directly by drivers,
so move the iis pin initialization into the boards.

Note that the s3c2412-i2s driver has no boards using it in
mainline linux, the driver gets selected for the jive machine
but is never instantiated.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/mach-gta02.c    | 4 ++++
 arch/arm/mach-s3c24xx/mach-h1940.c    | 3 +++
 arch/arm/mach-s3c24xx/mach-mini2440.c | 5 +++++
 arch/arm/mach-s3c24xx/mach-n30.c      | 5 +++++
 arch/arm/mach-s3c24xx/mach-nexcoder.c | 5 +++++
 arch/arm/mach-s3c24xx/mach-otom.c     | 6 ++++++
 arch/arm/mach-s3c24xx/mach-qt2410.c   | 3 +++
 arch/arm/mach-s3c24xx/mach-rx1950.c   | 3 +++
 arch/arm/mach-s3c24xx/mach-rx3715.c   | 4 ++++
 arch/arm/mach-s3c24xx/mach-smdk2410.c | 5 +++++
 arch/arm/mach-s3c24xx/mach-smdk2413.c | 4 ++++
 arch/arm/mach-s3c24xx/mach-smdk2440.c | 6 +++++-
 arch/arm/mach-s3c24xx/mach-vstms.c    | 6 +++++-
 arch/arm/mach-s3c24xx/simtec-audio.c  | 6 ++++++
 sound/soc/samsung/s3c2412-i2s.c       | 7 -------
 sound/soc/samsung/s3c24xx-i2s.c       | 7 -------
 16 files changed, 63 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
index 526fd0933289..1ca0460d82f4 100644
--- a/arch/arm/mach-s3c24xx/mach-gta02.c
+++ b/arch/arm/mach-s3c24xx/mach-gta02.c
@@ -540,6 +540,10 @@ static void __init gta02_machine_init(void)
 
 	i2c_register_board_info(0, gta02_i2c_devs, ARRAY_SIZE(gta02_i2c_devs));
 
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
+
 	gpiod_add_lookup_table(&gta02_audio_gpio_table);
 	platform_add_devices(gta02_devices, ARRAY_SIZE(gta02_devices));
 	pm_power_off = gta02_poweroff;
diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c24xx/mach-h1940.c
index 922d53bacbdf..11f705fb5e32 100644
--- a/arch/arm/mach-s3c24xx/mach-h1940.c
+++ b/arch/arm/mach-s3c24xx/mach-h1940.c
@@ -709,6 +709,9 @@ static void __init h1940_init(void)
 	s3c24xx_fb_set_platdata(&h1940_fb_info);
 	gpiod_add_lookup_table(&h1940_mmc_gpio_table);
 	gpiod_add_lookup_table(&h1940_audio_gpio_table);
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 	s3c24xx_mci_set_platdata(&h1940_mmc_cfg);
  	s3c24xx_udc_set_platdata(&h1940_udc_cfg);
 	s3c24xx_ts_set_platdata(&h1940_ts_cfg);
diff --git a/arch/arm/mach-s3c24xx/mach-mini2440.c b/arch/arm/mach-s3c24xx/mach-mini2440.c
index 9035f868fb34..bb44b8704d64 100644
--- a/arch/arm/mach-s3c24xx/mach-mini2440.c
+++ b/arch/arm/mach-s3c24xx/mach-mini2440.c
@@ -685,6 +685,11 @@ static void __init mini2440_init(void)
 		s3c_gpio_setpull(mini2440_buttons[i].gpio, S3C_GPIO_PULL_UP);
 		s3c_gpio_cfgpin(mini2440_buttons[i].gpio, S3C2410_GPIO_INPUT);
 	}
+
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
+
 	if (features.lcd_index != -1) {
 		int li;
 
diff --git a/arch/arm/mach-s3c24xx/mach-n30.c b/arch/arm/mach-s3c24xx/mach-n30.c
index d856f23939af..1836f1cc0992 100644
--- a/arch/arm/mach-s3c24xx/mach-n30.c
+++ b/arch/arm/mach-s3c24xx/mach-n30.c
@@ -36,6 +36,7 @@
 #include <mach/regs-gpio.h>
 #include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
+#include <plat/gpio-cfg.h>
 
 #include <asm/mach/arch.h>
 #include <asm/mach/irq.h>
@@ -570,6 +571,10 @@ static void __init n30_init(void)
 			      S3C2410_MISCCR_USBSUSPND0 |
 			      S3C2410_MISCCR_USBSUSPND1, 0x0);
 
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
+
 	if (machine_is_n30()) {
 		/* Turn off suspend on both USB ports, and switch the
 		 * selectable USB port to USB device mode. */
diff --git a/arch/arm/mach-s3c24xx/mach-nexcoder.c b/arch/arm/mach-s3c24xx/mach-nexcoder.c
index c2f34758ccb6..a05c92b6de2e 100644
--- a/arch/arm/mach-s3c24xx/mach-nexcoder.c
+++ b/arch/arm/mach-s3c24xx/mach-nexcoder.c
@@ -145,6 +145,11 @@ static void __init nexcoder_init_time(void)
 static void __init nexcoder_init(void)
 {
 	s3c_i2c0_set_platdata(NULL);
+
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
+
 	platform_add_devices(nexcoder_devices, ARRAY_SIZE(nexcoder_devices));
 };
 
diff --git a/arch/arm/mach-s3c24xx/mach-otom.c b/arch/arm/mach-s3c24xx/mach-otom.c
index 4e24d89e870b..c834f16e5ba0 100644
--- a/arch/arm/mach-s3c24xx/mach-otom.c
+++ b/arch/arm/mach-s3c24xx/mach-otom.c
@@ -24,6 +24,8 @@
 
 #include <mach/hardware.h>
 #include <mach/regs-gpio.h>
+#include <mach/gpio-samsung.h>
+#include <plat/gpio-cfg.h>
 
 #include <plat/cpu.h>
 #include <plat/devs.h>
@@ -107,6 +109,10 @@ static void __init otom11_init_time(void)
 static void __init otom11_init(void)
 {
 	s3c_i2c0_set_platdata(NULL);
+
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 	platform_add_devices(otom11_devices, ARRAY_SIZE(otom11_devices));
 }
 
diff --git a/arch/arm/mach-s3c24xx/mach-qt2410.c b/arch/arm/mach-s3c24xx/mach-qt2410.c
index 5d48e5b6e738..3cf8423c76c6 100644
--- a/arch/arm/mach-s3c24xx/mach-qt2410.c
+++ b/arch/arm/mach-s3c24xx/mach-qt2410.c
@@ -337,6 +337,9 @@ static void __init qt2410_machine_init(void)
 	s3c24xx_udc_set_platdata(&qt2410_udc_cfg);
 	s3c_i2c0_set_platdata(NULL);
 
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 	gpiod_add_lookup_table(&qt2410_spi_gpiod_table);
 	platform_add_devices(qt2410_devices, ARRAY_SIZE(qt2410_devices));
 	s3c_pm_init();
diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
index 9f3b0f18cd36..4eeede398775 100644
--- a/arch/arm/mach-s3c24xx/mach-rx1950.c
+++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
@@ -825,6 +825,9 @@ static void __init rx1950_init_machine(void)
 
 	pwm_add_table(rx1950_pwm_lookup, ARRAY_SIZE(rx1950_pwm_lookup));
 	gpiod_add_lookup_table(&rx1950_audio_gpio_table);
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 	platform_add_devices(rx1950_devices, ARRAY_SIZE(rx1950_devices));
 
 	i2c_register_board_info(0, rx1950_i2c_devices,
diff --git a/arch/arm/mach-s3c24xx/mach-rx3715.c b/arch/arm/mach-s3c24xx/mach-rx3715.c
index 529c6faf862f..2542c523ad46 100644
--- a/arch/arm/mach-s3c24xx/mach-rx3715.c
+++ b/arch/arm/mach-s3c24xx/mach-rx3715.c
@@ -39,6 +39,7 @@
 #include <mach/regs-gpio.h>
 #include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
+#include <plat/gpio-cfg.h>
 
 #include <plat/cpu.h>
 #include <plat/devs.h>
@@ -199,6 +200,9 @@ static void __init rx3715_init_machine(void)
 
 	s3c_nand_set_platdata(&rx3715_nand_info);
 	s3c24xx_fb_set_platdata(&rx3715_fb_info);
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 	platform_add_devices(rx3715_devices, ARRAY_SIZE(rx3715_devices));
 }
 
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2410.c b/arch/arm/mach-s3c24xx/mach-smdk2410.c
index 18dfef52c8bf..02adaac4d6df 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2410.c
+++ b/arch/arm/mach-s3c24xx/mach-smdk2410.c
@@ -19,6 +19,8 @@
 #include <linux/serial_s3c.h>
 #include <linux/platform_device.h>
 #include <linux/io.h>
+#include <mach/gpio-samsung.h>
+#include <plat/gpio-cfg.h>
 
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
@@ -94,6 +96,9 @@ static void __init smdk2410_init(void)
 {
 	s3c_i2c0_set_platdata(NULL);
 	platform_add_devices(smdk2410_devices, ARRAY_SIZE(smdk2410_devices));
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 	smdk_machine_init();
 }
 
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2413.c b/arch/arm/mach-s3c24xx/mach-smdk2413.c
index ca80167f268d..2bba4f1fa7ee 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2413.c
+++ b/arch/arm/mach-s3c24xx/mach-smdk2413.c
@@ -37,6 +37,7 @@
 #include <linux/platform_data/i2c-s3c2410.h>
 #include <mach/gpio-samsung.h>
 #include <mach/fb.h>
+#include <plat/gpio-cfg.h>
 
 #include <plat/devs.h>
 #include <plat/cpu.h>
@@ -119,6 +120,9 @@ static void __init smdk2413_machine_init(void)
 
  	s3c24xx_udc_set_platdata(&smdk2413_udc_cfg);
 	s3c_i2c0_set_platdata(NULL);
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 
 	platform_add_devices(smdk2413_devices, ARRAY_SIZE(smdk2413_devices));
 	smdk_machine_init();
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2440.c b/arch/arm/mach-s3c24xx/mach-smdk2440.c
index 7bafcd8ea104..f0fceda3e8e6 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2440.c
+++ b/arch/arm/mach-s3c24xx/mach-smdk2440.c
@@ -29,6 +29,8 @@
 
 #include <mach/regs-gpio.h>
 #include <mach/regs-lcd.h>
+#include <mach/gpio-samsung.h>
+#include <plat/gpio-cfg.h>
 
 #include <mach/fb.h>
 #include <linux/platform_data/i2c-s3c2410.h>
@@ -167,7 +169,9 @@ static void __init smdk2440_machine_init(void)
 {
 	s3c24xx_fb_set_platdata(&smdk2440_fb_info);
 	s3c_i2c0_set_platdata(NULL);
-
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 	platform_add_devices(smdk2440_devices, ARRAY_SIZE(smdk2440_devices));
 	smdk_machine_init();
 }
diff --git a/arch/arm/mach-s3c24xx/mach-vstms.c b/arch/arm/mach-s3c24xx/mach-vstms.c
index d76b28b65e65..f333ca05de68 100644
--- a/arch/arm/mach-s3c24xx/mach-vstms.c
+++ b/arch/arm/mach-s3c24xx/mach-vstms.c
@@ -31,6 +31,8 @@
 
 #include <mach/regs-gpio.h>
 #include <mach/regs-lcd.h>
+#include <mach/gpio-samsung.h>
+#include <plat/gpio-cfg.h>
 
 #include <mach/fb.h>
 
@@ -149,7 +151,9 @@ static void __init vstms_init(void)
 {
 	s3c_i2c0_set_platdata(NULL);
 	s3c_nand_set_platdata(&vstms_nand_info);
-
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
 	platform_add_devices(vstms_devices, ARRAY_SIZE(vstms_devices));
 }
 
diff --git a/arch/arm/mach-s3c24xx/simtec-audio.c b/arch/arm/mach-s3c24xx/simtec-audio.c
index 12e17f82dae3..0c12ba4a4704 100644
--- a/arch/arm/mach-s3c24xx/simtec-audio.c
+++ b/arch/arm/mach-s3c24xx/simtec-audio.c
@@ -14,6 +14,8 @@
 
 #include <mach/hardware.h>
 #include <mach/regs-gpio.h>
+#include <mach/gpio-samsung.h>
+#include <plat/gpio-cfg.h>
 
 #include <linux/platform_data/asoc-s3c24xx_simtec.h>
 #include <plat/devs.h>
@@ -65,6 +67,10 @@ int __init simtec_audio_add(const char *name, bool has_lr_routing,
 	if (has_lr_routing)
 		simtec_audio_platdata.startup = simtec_audio_startup_lrroute;
 
+	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
+	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
+			      S3C_GPIO_PULL_NONE);
+
 	platform_device_register(&s3c_device_iis);
 	platform_device_register(&simtec_audio_dev);
 	return 0;
diff --git a/sound/soc/samsung/s3c2412-i2s.c b/sound/soc/samsung/s3c2412-i2s.c
index 5bf571762e89..fd17765670f1 100644
--- a/sound/soc/samsung/s3c2412-i2s.c
+++ b/sound/soc/samsung/s3c2412-i2s.c
@@ -19,9 +19,6 @@
 #include <sound/soc.h>
 #include <sound/pcm_params.h>
 
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
-
 #include "dma.h"
 #include "regs-i2s-v2.h"
 #include "s3c2412-i2s.h"
@@ -70,10 +67,6 @@ static int s3c2412_i2s_probe(struct snd_soc_dai *dai)
 	if (ret)
 		goto err;
 
-	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
-	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
-			      S3C_GPIO_PULL_NONE);
-
 	return 0;
 
 err:
diff --git a/sound/soc/samsung/s3c24xx-i2s.c b/sound/soc/samsung/s3c24xx-i2s.c
index 92bdaf0878f8..5ca263f6a39e 100644
--- a/sound/soc/samsung/s3c24xx-i2s.c
+++ b/sound/soc/samsung/s3c24xx-i2s.c
@@ -18,10 +18,7 @@
 #include <sound/soc.h>
 #include <sound/pcm_params.h>
 
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
 #include "regs-iis.h"
-
 #include "dma.h"
 #include "s3c24xx-i2s.h"
 
@@ -348,10 +345,6 @@ static int s3c24xx_i2s_probe(struct snd_soc_dai *dai)
 	if (ret)
 		return ret;
 
-	/* Configure the I2S pins (GPE0...GPE4) in correct mode */
-	s3c_gpio_cfgall_range(S3C2410_GPE(0), 5, S3C_GPIO_SFN(2),
-			      S3C_GPIO_PULL_NONE);
-
 	writel(S3C2410_IISCON_IISEN, s3c24xx_i2s.regs + S3C2410_IISCON);
 
 	s3c24xx_snd_txctrl(0);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
