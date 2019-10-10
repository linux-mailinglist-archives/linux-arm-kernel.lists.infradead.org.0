Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99687D32E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbMICt0/c1ne86H+HkvcOdo3E9mwnoBI5uU/JN6RYOQ=; b=XnH0Y0ioCp6MAD
	76REoOvC5Odjj+eINu97gzZ0n3yPPBAHz2yK3DBzOlKu+of/zk/2vz+7t8ZRryK+PDAbObBu1pOK7
	w8IcH+4nfKSc2sijS5lEU1RZ76ycLwF2p5Fn6/BDpqoDG8puqikd/KWLNJWvaQYTpHUyL+si7GHU1
	0F/IYW+R4Ye9itX47EInS5usBYXn8AQzJ4VR116z75Hve9n43JfD1mkUMCCR3qDoSmV3matKiUKpJ
	wFyBBvIfBsLidcOlXp32FJuR9RLZirb236LZ/Dx5dsbkJdKX24JMhbpDbDXByAOj8RF6ClYw5+CvU
	Vx9GvrmJod470EOg4Gzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfPT-0008FV-9M; Thu, 10 Oct 2019 20:51:43 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfPG-0008Et-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:51:33 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N0Ip5-1huf6e3dHr-00xL2L; Thu, 10 Oct 2019 22:51:19 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH 28/36] fbdev: s3c2410fb: remove mach header dependency
Date: Thu, 10 Oct 2019 22:30:12 +0200
Message-Id: <20191010203043.1241612-28-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:OUQluCCJcOKxMHsF8OM8OZ8VCi0umfco1zKmRMX2ggK4J5znDuD
 NFw7lpmM0IZM4hapeEzhy3DAzFJX0ukoVgVTgsxG2ZdJA4LgmQc0FO6zfjuaKaZe7GI8eKM
 i4Gr/v31/9HnR7XWYXkKrpmTX8DiElBZwDN87ofYwy72LiaomKJ2zMBniqrFRaRqvRbRzS9
 DOoO3XUppYTAPeZr76S0Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mY4Zu1y4c/w=:eAilr4Bvz50Tky4fCZDG3L
 KN6TUmFIJBJaWIPRXFuCAJuI8Y4T7zQuXNCTQDNB/VSbkpKFTwSQiquOnnX+DT/n6DRCXSE4P
 DhNGfgRztL1a90blVfLSFHdnY0rJ2ZU707fp90JJzcCFvkGkm1pfUYMT6HVC4O4TdIXvkRMMa
 9pve7/LetClb6hmhEiAiTWtnnpOBEyYkVuhOjqiwMxhwg+kXwjbEGbbId4JTRC/KTBT8d/QP1
 u3JQ7uVFU9Xg0FZ1YWddrQ4NpGFjnl1EPzeqQdzmsmUKAiNKgenfCRvlVDQ8q4aqp2EGXWPYa
 HZkNVaVn0/WzlGM5fJv4g2MCxplCcC3T675NydLyONOUaSuC6EJEAYnbpYjEz04r4PxlG0nju
 lTiSrmADwci1BAMJ+wZ+XaVppezFd6oOKVEhkF0CeO8UXNWLW5r4cpKE41RQEfkI7J4+C6ISN
 5QrIMBuDL+RVAXSjFEQZfXY4yNcs0DqARzGvJrNbpTsHticD3xl6zqHCa1Lp6yfZmkrGxMC7G
 SmzPWuSeIsJVVG+HnCcwLzerLC6058ZR4AAUCb3GR+KsY5l6uQevNYRIGsMCA2esF60EB8plg
 mT52moqxFeveKcaBRB+DJsoEIlGfHf9Ut88q/cgRzTj9H21gVr4Iegqf0/swWWuRvWnPKGnGO
 OxR5DdW17ZuKWVXPE0GGE1uFdkKmDtOV0McVhy4oDrQOlhf0iCC0vT8Gt+6T8JV+FztfR1CPz
 ONIq0vP5KN3/ALUfzbJfT9uW/G82P0DSnOWJxv1q+MFpG04CuD29/dTmAyEqEk6kr42ahNCJq
 LxjPssm4uPljfmevWMIksaFtSMDZ+TPj39YfNW/r7V6S8UD68PpkjFtHxUVuMLYFhh5gKWtaj
 HodS4iKxuipoZ94TrqPA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_135131_325072_D53131FB 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
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
Cc: linux-fbdev@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The s3c2410fb driver is too deeply intertwined with the s3c24xx
platform code. Change it in a way that avoids the use of platform
header files but having all interface data in a platform_data
header, and the private register definitions next to the driver
itself.

One ugly bit here is that the driver pokes directly into gpio
registers, which are owned by another driver. Passing the
mapped addresses in platform_data is somewhat suboptimal, but
it is a small improvement over the previous version.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/include/mach/fb.h       |  2 --
 arch/arm/mach-s3c24xx/mach-amlm5900.c         |  7 ++--
 arch/arm/mach-s3c24xx/mach-anubis.c           |  1 -
 arch/arm/mach-s3c24xx/mach-at2440evb.c        |  3 +-
 arch/arm/mach-s3c24xx/mach-bast.c             |  3 +-
 arch/arm/mach-s3c24xx/mach-gta02.c            |  2 +-
 arch/arm/mach-s3c24xx/mach-h1940.c            |  7 ++--
 arch/arm/mach-s3c24xx/mach-jive.c             | 10 ++++--
 arch/arm/mach-s3c24xx/mach-mini2440.c         |  9 +++--
 arch/arm/mach-s3c24xx/mach-n30.c              |  3 +-
 arch/arm/mach-s3c24xx/mach-osiris.c           |  1 -
 arch/arm/mach-s3c24xx/mach-qt2410.c           |  3 +-
 arch/arm/mach-s3c24xx/mach-rx1950.c           |  8 +++--
 arch/arm/mach-s3c24xx/mach-rx3715.c           |  7 ++--
 arch/arm/mach-s3c24xx/mach-smdk2413.c         |  3 +-
 arch/arm/mach-s3c24xx/mach-smdk2416.c         |  1 -
 arch/arm/mach-s3c24xx/mach-smdk2440.c         |  8 +++--
 arch/arm/mach-s3c24xx/mach-smdk2443.c         |  3 +-
 arch/arm/mach-s3c24xx/mach-vstms.c            |  3 +-
 arch/arm/plat-samsung/devs.c                  |  2 +-
 .../video/fbdev/s3c2410fb-regs-lcd.h          | 28 ++++------------
 drivers/video/fbdev/s3c2410fb.c               | 16 +++++----
 .../linux/platform_data}/fb-s3c2410.h         | 33 ++++++++++++++++++-
 23 files changed, 98 insertions(+), 65 deletions(-)
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
 rename arch/arm/mach-s3c24xx/include/mach/regs-lcd.h => drivers/video/fbdev/s3c2410fb-regs-lcd.h (84%)
 rename {arch/arm/plat-samsung/include/plat => include/linux/platform_data}/fb-s3c2410.h (57%)

diff --git a/arch/arm/mach-s3c24xx/include/mach/fb.h b/arch/arm/mach-s3c24xx/include/mach/fb.h
deleted file mode 100644
index 4e539cb8b884..000000000000
--- a/arch/arm/mach-s3c24xx/include/mach/fb.h
+++ /dev/null
@@ -1,2 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#include <plat/fb-s3c2410.h>
diff --git a/arch/arm/mach-s3c24xx/mach-amlm5900.c b/arch/arm/mach-s3c24xx/mach-amlm5900.c
index 40ad23b52bc0..ef6de1b1d0c6 100644
--- a/arch/arm/mach-s3c24xx/mach-amlm5900.c
+++ b/arch/arm/mach-s3c24xx/mach-amlm5900.c
@@ -30,9 +30,8 @@
 #include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 
-#include <mach/regs-lcd.h>
 #include <mach/regs-gpio.h>
 #include <mach/gpio-samsung.h>
 
@@ -194,13 +193,17 @@ static struct s3c2410fb_mach_info __initdata amlm5900_fb_info = {
 
 	.gpccon =	0xaaaaaaaa,
 	.gpccon_mask =	0xffffffff,
+	.gpccon_reg =	S3C2410_GPCCON,
 	.gpcup =	0x0000ffff,
 	.gpcup_mask =	0xffffffff,
+	.gpcup_reg =	S3C2410_GPCUP,
 
 	.gpdcon =	0xaaaaaaaa,
 	.gpdcon_mask =	0xffffffff,
+	.gpdcon_reg =	S3C2410_GPDCON,
 	.gpdup =	0x0000ffff,
 	.gpdup_mask =	0xffffffff,
+	.gpdup_reg =	S3C2410_GPDUP,
 };
 #endif
 
diff --git a/arch/arm/mach-s3c24xx/mach-anubis.c b/arch/arm/mach-s3c24xx/mach-anubis.c
index 072966dcad78..e1a73274e90b 100644
--- a/arch/arm/mach-s3c24xx/mach-anubis.c
+++ b/arch/arm/mach-s3c24xx/mach-anubis.c
@@ -29,7 +29,6 @@
 #include <asm/mach-types.h>
 
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
diff --git a/arch/arm/mach-s3c24xx/mach-at2440evb.c b/arch/arm/mach-s3c24xx/mach-at2440evb.c
index b2199906e678..bfda6dd2a9d5 100644
--- a/arch/arm/mach-s3c24xx/mach-at2440evb.c
+++ b/arch/arm/mach-s3c24xx/mach-at2440evb.c
@@ -25,12 +25,11 @@
 #include <asm/mach/irq.h>
 
 #include <mach/hardware.h>
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
diff --git a/arch/arm/mach-s3c24xx/mach-bast.c b/arch/arm/mach-s3c24xx/mach-bast.c
index a7c3955ae8f6..cc941b5030ea 100644
--- a/arch/arm/mach-s3c24xx/mach-bast.c
+++ b/arch/arm/mach-s3c24xx/mach-bast.c
@@ -40,10 +40,9 @@
 #include <asm/mach/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/fb.h>
 #include <mach/hardware.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 
 #include <plat/cpu.h>
diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c24xx/mach-gta02.c
index 61b8c6badeb8..1e42782dbd30 100644
--- a/arch/arm/mach-s3c24xx/mach-gta02.c
+++ b/arch/arm/mach-s3c24xx/mach-gta02.c
@@ -57,8 +57,8 @@
 #include <linux/platform_data/touchscreen-s3c2410.h>
 #include <linux/platform_data/usb-ohci-s3c2410.h>
 #include <linux/platform_data/usb-s3c2410_udc.h>
+#include <linux/platform_data/fb-s3c2410.h>
 
-#include <mach/fb.h>
 #include <mach/hardware.h>
 #include <mach/regs-gpio.h>
 #include <mach/regs-irq.h>
diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c24xx/mach-h1940.c
index 446891e23511..d56e3befa459 100644
--- a/arch/arm/mach-s3c24xx/mach-h1940.c
+++ b/arch/arm/mach-s3c24xx/mach-h1940.c
@@ -47,11 +47,10 @@
 
 #include <sound/uda1380.h>
 
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <mach/hardware.h>
 #include <mach/regs-clock.h>
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 
 #include <plat/cpu.h>
@@ -211,12 +210,16 @@ static struct s3c2410fb_mach_info h1940_fb_info __initdata = {
 	.lpcsel =	0x02,
 	.gpccon =	0xaa940659,
 	.gpccon_mask =	0xffffc0f0,
+	.gpccon_reg =	S3C2410_GPCCON,
 	.gpcup =	0x0000ffff,
 	.gpcup_mask =	0xffffffff,
+	.gpcup_reg =	S3C2410_GPCUP,
 	.gpdcon =	0xaa84aaa0,
 	.gpdcon_mask =	0xffffffff,
+	.gpdcon_reg =	S3C2410_GPDCON,
 	.gpdup =	0x0000faff,
 	.gpdup_mask =	0xffffffff,
+	.gpdup_reg =	S3C2410_GPDUP,
 };
 
 static int power_supply_init(struct device *dev)
diff --git a/arch/arm/mach-s3c24xx/mach-jive.c b/arch/arm/mach-s3c24xx/mach-jive.c
index 885e8f12e4b9..3b33132b2334 100644
--- a/arch/arm/mach-s3c24xx/mach-jive.c
+++ b/arch/arm/mach-s3c24xx/mach-jive.c
@@ -32,8 +32,7 @@
 #include <linux/platform_data/i2c-s3c2410.h>
 
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <mach/gpio-samsung.h>
 
 #include <asm/mach-types.h>
@@ -321,6 +320,7 @@ static struct s3c2410fb_mach_info jive_lcd_config = {
 	 * data. */
 
 	.gpcup		= (0xf << 1) | (0x3f << 10),
+	.gpcup_reg =	S3C2410_GPCUP,
 
 	.gpccon		= (S3C2410_GPC1_VCLK   | S3C2410_GPC2_VLINE |
 			   S3C2410_GPC3_VFRAME | S3C2410_GPC4_VM |
@@ -334,8 +334,12 @@ static struct s3c2410fb_mach_info jive_lcd_config = {
 			   S3C2410_GPCCON_MASK(12) | S3C2410_GPCCON_MASK(13) |
 			   S3C2410_GPCCON_MASK(14) | S3C2410_GPCCON_MASK(15)),
 
+	.gpccon_reg =	S3C2410_GPCCON,
+
 	.gpdup		= (0x3f << 2) | (0x3f << 10),
 
+	.gpdup_reg =	S3C2410_GPDUP,
+
 	.gpdcon		= (S3C2410_GPD2_VD10  | S3C2410_GPD3_VD11 |
 			   S3C2410_GPD4_VD12  | S3C2410_GPD5_VD13 |
 			   S3C2410_GPD6_VD14  | S3C2410_GPD7_VD15 |
@@ -349,6 +353,8 @@ static struct s3c2410fb_mach_info jive_lcd_config = {
 			   S3C2410_GPDCON_MASK(10) | S3C2410_GPDCON_MASK(11)|
 			   S3C2410_GPDCON_MASK(12) | S3C2410_GPDCON_MASK(13)|
 			   S3C2410_GPDCON_MASK(14) | S3C2410_GPDCON_MASK(15)),
+
+	.gpdcon_reg =	S3C2410_GPDCON,
 };
 
 /* ILI9320 support. */
diff --git a/arch/arm/mach-s3c24xx/mach-mini2440.c b/arch/arm/mach-s3c24xx/mach-mini2440.c
index d73167f615b8..2301e07c7d64 100644
--- a/arch/arm/mach-s3c24xx/mach-mini2440.c
+++ b/arch/arm/mach-s3c24xx/mach-mini2440.c
@@ -30,13 +30,12 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
+#include <linux/platform_data/fb-s3c2410.h>
 #include <mach/hardware.h>
-#include <mach/fb.h>
 #include <asm/mach-types.h>
 
 #include <mach/regs-gpio.h>
 #include <linux/platform_data/leds-s3c24xx.h>
-#include <mach/regs-lcd.h>
 #include <mach/irqs.h>
 #include <mach/gpio-samsung.h>
 #include <linux/platform_data/mtd-nand-s3c2410.h>
@@ -215,6 +214,9 @@ static struct s3c2410fb_mach_info mini2440_fb_info __initdata = {
 			   S3C2410_GPCCON_MASK(12) | S3C2410_GPCCON_MASK(13) |
 			   S3C2410_GPCCON_MASK(14) | S3C2410_GPCCON_MASK(15)),
 
+	.gpccon_reg =	S3C2410_GPCCON,
+	.gpcup_reg =	S3C2410_GPCUP,
+
 	.gpdup		= (0x3f << 2) | (0x3f << 10),
 
 	.gpdcon		= (S3C2410_GPD2_VD10  | S3C2410_GPD3_VD11 |
@@ -230,6 +232,9 @@ static struct s3c2410fb_mach_info mini2440_fb_info __initdata = {
 			   S3C2410_GPDCON_MASK(10) | S3C2410_GPDCON_MASK(11)|
 			   S3C2410_GPDCON_MASK(12) | S3C2410_GPDCON_MASK(13)|
 			   S3C2410_GPDCON_MASK(14) | S3C2410_GPDCON_MASK(15)),
+
+	.gpdcon_reg =	S3C2410_GPDCON,
+	.gpdup_reg =	S3C2410_GPDUP,
 };
 
 /* MMC/SD  */
diff --git a/arch/arm/mach-s3c24xx/mach-n30.c b/arch/arm/mach-s3c24xx/mach-n30.c
index f283abab0761..6b8ee5ba00ca 100644
--- a/arch/arm/mach-s3c24xx/mach-n30.c
+++ b/arch/arm/mach-s3c24xx/mach-n30.c
@@ -31,10 +31,9 @@
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/leds-s3c24xx.h>
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 #include <plat/gpio-cfg.h>
 
diff --git a/arch/arm/mach-s3c24xx/mach-osiris.c b/arch/arm/mach-s3c24xx/mach-osiris.c
index ee3630cb236a..262e77bd48de 100644
--- a/arch/arm/mach-s3c24xx/mach-osiris.c
+++ b/arch/arm/mach-s3c24xx/mach-osiris.c
@@ -44,7 +44,6 @@
 
 #include <mach/hardware.h>
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 
 #include "common.h"
diff --git a/arch/arm/mach-s3c24xx/mach-qt2410.c b/arch/arm/mach-s3c24xx/mach-qt2410.c
index 9b47b8434f10..1d0f5d65e7e5 100644
--- a/arch/arm/mach-s3c24xx/mach-qt2410.c
+++ b/arch/arm/mach-s3c24xx/mach-qt2410.c
@@ -33,8 +33,7 @@
 #include <asm/mach-types.h>
 
 #include <linux/platform_data/leds-s3c24xx.h>
-#include <mach/regs-lcd.h>
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <linux/platform_data/i2c-s3c2410.h>
diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
index 7752203fd9cd..ee4a0992339f 100644
--- a/arch/arm/mach-s3c24xx/mach-rx1950.c
+++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
@@ -42,12 +42,11 @@
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/touchscreen-s3c2410.h>
 #include <linux/platform_data/usb-s3c2410_udc.h>
+#include <linux/platform_data/fb-s3c2410.h>
 
 #include <sound/uda1380.h>
 
-#include <mach/fb.h>
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 
 #include <plat/cpu.h>
@@ -361,14 +360,17 @@ static struct s3c2410fb_mach_info rx1950_lcd_cfg = {
 	.lpcsel = 0x02,
 	.gpccon = 0xaa9556a9,
 	.gpccon_mask = 0xffc003fc,
+	.gpccon_reg =	S3C2410_GPCCON,
 	.gpcup = 0x0000ffff,
 	.gpcup_mask = 0xffffffff,
+	.gpcup_reg =	S3C2410_GPCUP,
 
 	.gpdcon = 0xaa90aaa1,
 	.gpdcon_mask = 0xffc0fff0,
+	.gpdcon_reg =	S3C2410_GPDCON,
 	.gpdup = 0x0000fcfd,
 	.gpdup_mask = 0xffffffff,
-
+	.gpdup_reg =	S3C2410_GPDUP,
 };
 
 static struct pwm_lookup rx1950_pwm_lookup[] = {
diff --git a/arch/arm/mach-s3c24xx/mach-rx3715.c b/arch/arm/mach-s3c24xx/mach-rx3715.c
index 2542c523ad46..87f3274241b2 100644
--- a/arch/arm/mach-s3c24xx/mach-rx3715.c
+++ b/arch/arm/mach-s3c24xx/mach-rx3715.c
@@ -30,14 +30,13 @@
 #include <asm/mach/map.h>
 
 #include <linux/platform_data/mtd-nand-s3c2410.h>
+#include <linux/platform_data/fb-s3c2410.h>
 
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/fb.h>
 #include <mach/hardware.h>
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 #include <plat/gpio-cfg.h>
 
@@ -126,13 +125,17 @@ static struct s3c2410fb_mach_info rx3715_fb_info __initdata = {
 
 	.gpccon =	0xaa955699,
 	.gpccon_mask =	0xffc003cc,
+	.gpccon_reg =	S3C2410_GPCCON,
 	.gpcup =	0x0000ffff,
 	.gpcup_mask =	0xffffffff,
+	.gpcup_reg =	S3C2410_GPCUP,
 
 	.gpdcon =	0xaa95aaa1,
 	.gpdcon_mask =	0xffc0fff0,
+	.gpdcon_reg =	S3C2410_GPDCON,
 	.gpdup =	0x0000faff,
 	.gpdup_mask =	0xffffffff,
+	.gpdup_reg =	S3C2410_GPDUP,
 };
 
 static struct mtd_partition __initdata rx3715_nand_part[] = {
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2413.c b/arch/arm/mach-s3c24xx/mach-smdk2413.c
index 2bba4f1fa7ee..eec0d3dc4bb1 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2413.c
+++ b/arch/arm/mach-s3c24xx/mach-smdk2413.c
@@ -31,12 +31,11 @@
 
 //#include <asm/debug-ll.h>
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <linux/platform_data/i2c-s3c2410.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <mach/gpio-samsung.h>
-#include <mach/fb.h>
 #include <plat/gpio-cfg.h>
 
 #include <plat/devs.h>
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2416.c b/arch/arm/mach-s3c24xx/mach-smdk2416.c
index 61c3e45898d3..fbd3a8d96f94 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2416.c
+++ b/arch/arm/mach-s3c24xx/mach-smdk2416.c
@@ -30,7 +30,6 @@
 #include <asm/mach-types.h>
 
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/regs-s3c2443-clock.h>
 #include <mach/gpio-samsung.h>
 
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2440.c b/arch/arm/mach-s3c24xx/mach-smdk2440.c
index f0fceda3e8e6..b9b0f2a8c904 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2440.c
+++ b/arch/arm/mach-s3c24xx/mach-smdk2440.c
@@ -28,11 +28,10 @@
 #include <asm/mach-types.h>
 
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 #include <plat/gpio-cfg.h>
 
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
 #include <plat/devs.h>
@@ -139,6 +138,11 @@ static struct s3c2410fb_mach_info smdk2440_fb_info __initdata = {
 	.gpdcon_mask	= 0xffffffff,
 	.gpdup		= 0x0000faff,
 	.gpdup_mask	= 0xffffffff,
+
+	.gpccon_reg =	S3C2410_GPCCON,
+	.gpcup_reg =	S3C2410_GPCUP,
+	.gpdcon_reg =	S3C2410_GPDCON,
+	.gpdup_reg =	S3C2410_GPDUP,
 #endif
 
 	.lpcsel		= ((0xCE6) & ~7) | 1<<4,
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2443.c b/arch/arm/mach-s3c24xx/mach-smdk2443.c
index 2358ed5ed7be..a4c1022678a9 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2443.c
+++ b/arch/arm/mach-s3c24xx/mach-smdk2443.c
@@ -27,9 +27,8 @@
 #include <asm/mach-types.h>
 
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
 #include <plat/devs.h>
diff --git a/arch/arm/mach-s3c24xx/mach-vstms.c b/arch/arm/mach-s3c24xx/mach-vstms.c
index f333ca05de68..08acc556879b 100644
--- a/arch/arm/mach-s3c24xx/mach-vstms.c
+++ b/arch/arm/mach-s3c24xx/mach-vstms.c
@@ -30,11 +30,10 @@
 #include <asm/mach-types.h>
 
 #include <mach/regs-gpio.h>
-#include <mach/regs-lcd.h>
 #include <mach/gpio-samsung.h>
 #include <plat/gpio-cfg.h>
 
-#include <mach/fb.h>
+#include <linux/platform_data/fb-s3c2410.h>
 
 #include <linux/platform_data/i2c-s3c2410.h>
 #include <linux/platform_data/mtd-nand-s3c2410.h>
diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/plat-samsung/devs.c
index c0739bda060b..92b36bc71a06 100644
--- a/arch/arm/plat-samsung/devs.c
+++ b/arch/arm/plat-samsung/devs.c
@@ -50,7 +50,7 @@
 #include <linux/soc/samsung/s3c-adc.h>
 #include <linux/platform_data/ata-samsung_cf.h>
 #include <plat/fb.h>
-#include <plat/fb-s3c2410.h>
+#include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/hwmon-s3c.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 #include <plat/keypad.h>
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-lcd.h b/drivers/video/fbdev/s3c2410fb-regs-lcd.h
similarity index 84%
rename from arch/arm/mach-s3c24xx/include/mach/regs-lcd.h
rename to drivers/video/fbdev/s3c2410fb-regs-lcd.h
index 4c3434f261bb..1e46f7a788e5 100644
--- a/arch/arm/mach-s3c24xx/include/mach/regs-lcd.h
+++ b/drivers/video/fbdev/s3c2410fb-regs-lcd.h
@@ -7,6 +7,13 @@
 #ifndef ___ASM_ARCH_REGS_LCD_H
 #define ___ASM_ARCH_REGS_LCD_H
 
+/*
+ * a couple of values are used as platform data in
+ * include/linux/platform_data/fb-s3c2410.h and not
+ * duplicated here.
+ */
+#include <linux/platform_data/fb-s3c2410.h>
+
 #define S3C2410_LCDREG(x)	(x)
 
 /* LCD control registers */
@@ -29,13 +36,6 @@
 #define S3C2410_LCDCON1_STN8BPP	   (3<<1)
 #define S3C2410_LCDCON1_STN12BPP   (4<<1)
 
-#define S3C2410_LCDCON1_TFT1BPP	   (8<<1)
-#define S3C2410_LCDCON1_TFT2BPP	   (9<<1)
-#define S3C2410_LCDCON1_TFT4BPP	   (10<<1)
-#define S3C2410_LCDCON1_TFT8BPP	   (11<<1)
-#define S3C2410_LCDCON1_TFT16BPP   (12<<1)
-#define S3C2410_LCDCON1_TFT24BPP   (13<<1)
-
 #define S3C2410_LCDCON1_ENVID	   (1)
 
 #define S3C2410_LCDCON1_MODEMASK    0x1E
@@ -66,20 +66,6 @@
 
 #define S3C2410_LCDCON4_GET_HSPW(x) ( ((x) >>  0) & 0xFF)
 
-#define S3C2410_LCDCON5_BPP24BL	    (1<<12)
-#define S3C2410_LCDCON5_FRM565	    (1<<11)
-#define S3C2410_LCDCON5_INVVCLK	    (1<<10)
-#define S3C2410_LCDCON5_INVVLINE    (1<<9)
-#define S3C2410_LCDCON5_INVVFRAME   (1<<8)
-#define S3C2410_LCDCON5_INVVD	    (1<<7)
-#define S3C2410_LCDCON5_INVVDEN	    (1<<6)
-#define S3C2410_LCDCON5_INVPWREN    (1<<5)
-#define S3C2410_LCDCON5_INVLEND	    (1<<4)
-#define S3C2410_LCDCON5_PWREN	    (1<<3)
-#define S3C2410_LCDCON5_ENLEND	    (1<<2)
-#define S3C2410_LCDCON5_BSWP	    (1<<1)
-#define S3C2410_LCDCON5_HWSWP	    (1<<0)
-
 /* framebuffer start addressed */
 #define S3C2410_LCDSADDR1   S3C2410_LCDREG(0x14)
 #define S3C2410_LCDSADDR2   S3C2410_LCDREG(0x18)
diff --git a/drivers/video/fbdev/s3c2410fb.c b/drivers/video/fbdev/s3c2410fb.c
index a702da89910b..3e5b91c72f5b 100644
--- a/drivers/video/fbdev/s3c2410fb.c
+++ b/drivers/video/fbdev/s3c2410fb.c
@@ -29,19 +29,18 @@
 #include <linux/clk.h>
 #include <linux/cpufreq.h>
 #include <linux/io.h>
+#include <linux/platform_data/fb-s3c2410.h>
 
 #include <asm/div64.h>
 
 #include <asm/mach/map.h>
-#include <mach/regs-lcd.h>
-#include <mach/regs-gpio.h>
-#include <mach/fb.h>
 
 #ifdef CONFIG_PM
 #include <linux/pm.h>
 #endif
 
 #include "s3c2410fb.h"
+#include "s3c2410fb-regs-lcd.h"
 
 /* Debugging stuff */
 #ifdef CONFIG_FB_S3C2410_DEBUG
@@ -676,6 +675,9 @@ static inline void modify_gpio(void __iomem *reg,
 {
 	unsigned long tmp;
 
+	if (!reg)
+		return;
+
 	tmp = readl(reg) & ~mask;
 	writel(tmp | set, reg);
 }
@@ -706,10 +708,10 @@ static int s3c2410fb_init_registers(struct fb_info *info)
 
 	/* modify the gpio(s) with interrupts set (bjd) */
 
-	modify_gpio(S3C2410_GPCUP,  mach_info->gpcup,  mach_info->gpcup_mask);
-	modify_gpio(S3C2410_GPCCON, mach_info->gpccon, mach_info->gpccon_mask);
-	modify_gpio(S3C2410_GPDUP,  mach_info->gpdup,  mach_info->gpdup_mask);
-	modify_gpio(S3C2410_GPDCON, mach_info->gpdcon, mach_info->gpdcon_mask);
+	modify_gpio(mach_info->gpcup_reg,  mach_info->gpcup,  mach_info->gpcup_mask);
+	modify_gpio(mach_info->gpccon_reg, mach_info->gpccon, mach_info->gpccon_mask);
+	modify_gpio(mach_info->gpdup_reg,  mach_info->gpdup,  mach_info->gpdup_mask);
+	modify_gpio(mach_info->gpdcon_reg, mach_info->gpdcon, mach_info->gpdcon_mask);
 
 	local_irq_restore(flags);
 
diff --git a/arch/arm/plat-samsung/include/plat/fb-s3c2410.h b/include/linux/platform_data/fb-s3c2410.h
similarity index 57%
rename from arch/arm/plat-samsung/include/plat/fb-s3c2410.h
rename to include/linux/platform_data/fb-s3c2410.h
index 614240d768b4..10c11e6316d6 100644
--- a/arch/arm/plat-samsung/include/plat/fb-s3c2410.h
+++ b/include/linux/platform_data/fb-s3c2410.h
@@ -8,6 +8,8 @@
 #ifndef __ASM_PLAT_FB_S3C2410_H
 #define __ASM_PLAT_FB_S3C2410_H __FILE__
 
+#include <linux/compiler_types.h>
+
 struct s3c2410fb_hw {
 	unsigned long	lcdcon1;
 	unsigned long	lcdcon2;
@@ -20,6 +22,17 @@ struct s3c2410fb_hw {
 struct s3c2410fb_display {
 	/* LCD type */
 	unsigned type;
+#define S3C2410_LCDCON1_DSCAN4	   (0<<5)
+#define S3C2410_LCDCON1_STN4	   (1<<5)
+#define S3C2410_LCDCON1_STN8	   (2<<5)
+#define S3C2410_LCDCON1_TFT	   (3<<5)
+
+#define S3C2410_LCDCON1_TFT1BPP	   (8<<1)
+#define S3C2410_LCDCON1_TFT2BPP	   (9<<1)
+#define S3C2410_LCDCON1_TFT4BPP	   (10<<1)
+#define S3C2410_LCDCON1_TFT8BPP	   (11<<1)
+#define S3C2410_LCDCON1_TFT16BPP   (12<<1)
+#define S3C2410_LCDCON1_TFT24BPP   (13<<1)
 
 	/* Screen size */
 	unsigned short width;
@@ -40,6 +53,19 @@ struct s3c2410fb_display {
 
 	/* lcd configuration registers */
 	unsigned long	lcdcon5;
+#define S3C2410_LCDCON5_BPP24BL	    (1<<12)
+#define S3C2410_LCDCON5_FRM565	    (1<<11)
+#define S3C2410_LCDCON5_INVVCLK	    (1<<10)
+#define S3C2410_LCDCON5_INVVLINE    (1<<9)
+#define S3C2410_LCDCON5_INVVFRAME   (1<<8)
+#define S3C2410_LCDCON5_INVVD	    (1<<7)
+#define S3C2410_LCDCON5_INVVDEN	    (1<<6)
+#define S3C2410_LCDCON5_INVPWREN    (1<<5)
+#define S3C2410_LCDCON5_INVLEND	    (1<<4)
+#define S3C2410_LCDCON5_PWREN	    (1<<3)
+#define S3C2410_LCDCON5_ENLEND	    (1<<2)
+#define S3C2410_LCDCON5_BSWP	    (1<<1)
+#define S3C2410_LCDCON5_HWSWP	    (1<<0)
 };
 
 struct s3c2410fb_mach_info {
@@ -59,10 +85,15 @@ struct s3c2410fb_mach_info {
 	unsigned long	gpdcon;
 	unsigned long	gpdcon_mask;
 
+	void __iomem *  gpccon_reg;
+	void __iomem *  gpcup_reg;
+	void __iomem *  gpdcon_reg;
+	void __iomem *  gpdup_reg;
+
 	/* lpc3600 control register */
 	unsigned long	lpcsel;
 };
 
-extern void __init s3c24xx_fb_set_platdata(struct s3c2410fb_mach_info *);
+extern void s3c24xx_fb_set_platdata(struct s3c2410fb_mach_info *);
 
 #endif /* __ASM_PLAT_FB_S3C2410_H */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
