Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D75AD32FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7J/860YVER8D9hpuYoJORVFOC7RyopwJa061RI6dy4=; b=MMj/Nu0ipv+mXX
	+RYH7Kz6p7hJSi3yK8Yz6i/taawKV25EMyoxon/CSBcuKqkyWvrQrCZhk2pher0JI2fEAmgcw8L24
	nEQB2bPrUexnlUCdIi8AueKdcxxK09oQIEfl7o0oQHR8q2cdALHgFdTppBCcs1yknpxAoV9gzOKgv
	9qgOTf5H25uomsVGVQstck+cNYLHuJZedpSH9tpFjiyXXicbNdrJ/gQvxkZP7v9D3o898eXUIMIoH
	d1/KoThcoCmx9XaSq+Fx8UUPQPJFB/cJ3Nrbgx01eay5oX1DTbMmu3xH7B83/9W4XnlupXk5/o+Sz
	u57OW8ROxJGxGbPlAQCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfUA-0002u3-TG; Thu, 10 Oct 2019 20:56:34 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfTz-0002tU-2p
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:56:25 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MNwXA-1iTi5O0nyC-00OGri; Thu, 10 Oct 2019 22:56:14 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 34/36] ARM: s3c: stop including mach/hardware.h from mach/io.h
Date: Thu, 10 Oct 2019 22:30:18 +0200
Message-Id: <20191010203043.1241612-34-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:LMl2ipg1DijdMjugydbZzoYkCnmLbylOvvQXsya3QlKsbqkQ54L
 rRQiYD8uPwWNFRtZ9LNSFwnbjTRfWgKXO5EaWD7ShmjBMGB/FTGcmVOPSHqxSJKDcLENqXV
 6mlCYdH8gP9tJ15KGa5489j76oWy9eHTX/8ncu+rwoYA+ZrMG+1OA0GYNLSONi9424e52f4
 1aowKON7k3Wgp8Ns1IGGg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:quF4arNDUyg=:HiBvgCRB5O3CTHFspJe2/0
 oTm/Q55a+CDLCSvsT0iy7WhF6sOYxv0M4cEyr/mFIzbNKJwBGpQzOOkacF0/T02lmeonYc3NE
 piSQx9AlefIIFhhY8sLufIH7LlCEsSnU5hzIj5PyC99vcKd84RroldnthR/rjcOLYBDJtZDO1
 iyJ2TCLb8Vb7dAE6RZ901KCj9i0RVuS4cwHOawuaHbmuk4EOlcymFGeZNnZzePEGe7VBRsx3S
 UP4NX/41ZEw0UGWx24MGSoZh9c0WgWn0PZ6xjYpMuHvcj+eW/M/8/WOLQD8bekNbvb3+UM1Au
 qI5D4eQ4WrtUxqRkPMLJYc9eLmhtjRDW1a+ppFYf5FeNwL4urBIVckpkCLL/jnW7/ML17WF6c
 1/3MbJ9DUkVhADZbKWw7jQtsvOlBh+6r2ECmP0gqwpfqODNajbbqGJe44seCK4qqZ12DP9nfB
 4bevibs5LJqUyDIsbaN5ieMmamo76+MgFVR/1BLhwzqLWagdhRrj7k5fT8pz4sfB002YgXTZZ
 TwwI2y/7bS9rYqH/wpEUyBATftzVyCvpfSEovAZ+2IoW+ccdvPeAg0aQj2LQN2eENSAJcOrOd
 aw5oTWWlS36C0FwplgchzPz/OdQTx165qsVqf0tJGh3jSSF5XHD8eA9boBGUKaNSOsliBcZz1
 DjMAI/yqVznKMapgv/k6Ir0qsrks5GhmAkM6zGxRuQF2i6MK5n+e/stMA2TxFTyCGTGQRG+Bj
 HFE6XwCgkI55Jll/ycWneTycBAAJ+GijAG32zBPJtpDdJbqcq+EaLDGalqkqdeaCdIlqqherL
 NC+a0yypDpn56DcYlIkexf/DO0p3/nS68gnhet6jQiulHFA+k/YwaNXimyzFVOH8cFINFWVyD
 uVOIY8kn8V2kbOMPS0Yw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_135623_423865_8EF56E9D 
X-CRM114-Status: GOOD (  13.22  )
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A number of other files rely on mach/map.h to be indirectly
included from mach/io.h through mach/hardware.h.

Reduce this to the minimal plat/map-base.h and add explicit
includes everywhere else.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/common.c                          | 1 +
 arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h       | 2 ++
 arch/arm/mach-s3c24xx/include/mach/hardware.h           | 7 -------
 arch/arm/mach-s3c24xx/include/mach/io.h                 | 3 +--
 arch/arm/mach-s3c24xx/include/mach/regs-clock.h         | 2 ++
 arch/arm/mach-s3c24xx/include/mach/regs-gpio.h          | 2 ++
 arch/arm/mach-s3c24xx/include/mach/regs-irq.h           | 2 ++
 arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h | 1 +
 arch/arm/mach-s3c24xx/include/mach/s3c2412.h            | 2 ++
 arch/arm/mach-s3c24xx/mach-h1940.c                      | 1 +
 arch/arm/mach-s3c24xx/mach-jive.c                       | 1 +
 arch/arm/mach-s3c24xx/mach-rx1950.c                     | 1 +
 arch/arm/mach-s3c24xx/pm-h1940.S                        | 1 -
 arch/arm/mach-s3c24xx/regs-mem.h                        | 2 ++
 arch/arm/mach-s3c24xx/s3c2410.c                         | 2 +-
 arch/arm/mach-s3c24xx/s3c2412.c                         | 2 +-
 arch/arm/mach-s3c24xx/s3c2416.c                         | 2 +-
 arch/arm/mach-s3c24xx/s3c2443.c                         | 2 +-
 arch/arm/mach-s3c24xx/s3c244x.c                         | 2 +-
 arch/arm/mach-s3c24xx/sleep-s3c2410.S                   | 1 -
 arch/arm/mach-s3c24xx/sleep-s3c2412.S                   | 1 -
 arch/arm/mach-s3c24xx/sleep.S                           | 1 -
 drivers/spi/spi-s3c24xx-regs.h                          | 2 ++
 drivers/usb/gadget/udc/s3c2410_udc_regs.h               | 2 ++
 24 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/common.c b/arch/arm/mach-s3c24xx/common.c
index d16a164df6c4..42d828f48345 100644
--- a/arch/arm/mach-s3c24xx/common.c
+++ b/arch/arm/mach-s3c24xx/common.c
@@ -21,6 +21,7 @@
 #include <linux/dmaengine.h>
 
 #include <mach/hardware.h>
+#include <mach/map.h>
 #include <mach/regs-clock.h>
 #include <asm/irq.h>
 #include <asm/cacheflush.h>
diff --git a/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h b/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
index 2ad22b2d459b..f8a114891f16 100644
--- a/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
+++ b/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
@@ -14,6 +14,8 @@
 #ifndef GPIO_SAMSUNG_S3C24XX_H
 #define GPIO_SAMSUNG_S3C24XX_H
 
+#include <mach/map.h>
+
 /*
  * GPIO sizes for various SoCs:
  *
diff --git a/arch/arm/mach-s3c24xx/include/mach/hardware.h b/arch/arm/mach-s3c24xx/include/mach/hardware.h
index f28ac6c78d82..c732ea54984c 100644
--- a/arch/arm/mach-s3c24xx/include/mach/hardware.h
+++ b/arch/arm/mach-s3c24xx/include/mach/hardware.h
@@ -9,13 +9,6 @@
 #ifndef __ASM_ARCH_HARDWARE_H
 #define __ASM_ARCH_HARDWARE_H
 
-#ifndef __ASSEMBLY__
-
 extern unsigned int s3c2410_modify_misccr(unsigned int clr, unsigned int chg);
 
-#endif /* __ASSEMBLY__ */
-
-#include <linux/sizes.h>
-#include <mach/map.h>
-
 #endif /* __ASM_ARCH_HARDWARE_H */
diff --git a/arch/arm/mach-s3c24xx/include/mach/io.h b/arch/arm/mach-s3c24xx/include/mach/io.h
index 3e8bff26cdd5..bcddf615adb6 100644
--- a/arch/arm/mach-s3c24xx/include/mach/io.h
+++ b/arch/arm/mach-s3c24xx/include/mach/io.h
@@ -10,8 +10,7 @@
 #ifndef __ASM_ARM_ARCH_IO_H
 #define __ASM_ARM_ARCH_IO_H
 
-#include <mach/hardware.h>
-
+#include <plat/map-base.h>
 
 /*
  * ISA style IO, for each machine to sort out mappings for,
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-clock.h b/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
index 7ca3dd4f13c0..da4e7b3aeba6 100644
--- a/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
+++ b/arch/arm/mach-s3c24xx/include/mach/regs-clock.h
@@ -9,6 +9,8 @@
 #ifndef __ASM_ARM_REGS_CLOCK
 #define __ASM_ARM_REGS_CLOCK
 
+#include <mach/map.h>
+
 #define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
 
 #define S3C2410_PLLVAL(_m,_p,_s) ((_m) << 12 | ((_p) << 4) | ((_s)))
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h b/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h
index 594e967c0673..51827d5577b6 100644
--- a/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h
+++ b/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h
@@ -10,6 +10,8 @@
 #ifndef __ASM_ARCH_REGS_GPIO_H
 #define __ASM_ARCH_REGS_GPIO_H
 
+#include <plat/map-s3c.h>
+
 #define S3C24XX_MISCCR		S3C24XX_GPIOREG2(0x80)
 
 /* general configuration options */
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-irq.h b/arch/arm/mach-s3c24xx/include/mach/regs-irq.h
index 8d8e669e3903..2921b48c56b2 100644
--- a/arch/arm/mach-s3c24xx/include/mach/regs-irq.h
+++ b/arch/arm/mach-s3c24xx/include/mach/regs-irq.h
@@ -8,6 +8,8 @@
 #ifndef ___ASM_ARCH_REGS_IRQ_H
 #define ___ASM_ARCH_REGS_IRQ_H
 
+#include <plat/map-s3c.h>
+
 /* interrupt controller */
 
 #define S3C2410_IRQREG(x)   ((x) + S3C24XX_VA_IRQ)
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h b/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
index 682759549e63..fefef7233f4b 100644
--- a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
+++ b/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
@@ -11,6 +11,7 @@
 #define __ASM_ARM_REGS_S3C2443_CLOCK
 
 #include <linux/delay.h>
+#include <plat/map-s3c.h>
 
 #define S3C2443_CLKREG(x)		((x) + S3C24XX_VA_CLKPWR)
 
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c2412.h b/arch/arm/mach-s3c24xx/include/mach/s3c2412.h
index 4ff83f956cfb..1ae369c81beb 100644
--- a/arch/arm/mach-s3c24xx/include/mach/s3c2412.h
+++ b/arch/arm/mach-s3c24xx/include/mach/s3c2412.h
@@ -8,6 +8,8 @@
 #ifndef __ARCH_ARM_MACH_S3C24XX_S3C2412_H
 #define __ARCH_ARM_MACH_S3C24XX_S3C2412_H __FILE__
 
+#include <plat/map-s3c.h>
+
 #define S3C2412_MEMREG(x)		(S3C24XX_VA_MEMCTRL + (x))
 #define S3C2412_EBIREG(x)		(S3C2412_VA_EBI + (x))
 
diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c24xx/mach-h1940.c
index d56e3befa459..287e42fc1665 100644
--- a/arch/arm/mach-s3c24xx/mach-h1940.c
+++ b/arch/arm/mach-s3c24xx/mach-h1940.c
@@ -48,6 +48,7 @@
 #include <sound/uda1380.h>
 
 #include <linux/platform_data/fb-s3c2410.h>
+#include <mach/map.h>
 #include <mach/hardware.h>
 #include <mach/regs-clock.h>
 #include <mach/regs-gpio.h>
diff --git a/arch/arm/mach-s3c24xx/mach-jive.c b/arch/arm/mach-s3c24xx/mach-jive.c
index 3b33132b2334..8012c34bddd9 100644
--- a/arch/arm/mach-s3c24xx/mach-jive.c
+++ b/arch/arm/mach-s3c24xx/mach-jive.c
@@ -31,6 +31,7 @@
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
+#include <mach/hardware.h>
 #include <mach/regs-gpio.h>
 #include <linux/platform_data/fb-s3c2410.h>
 #include <mach/gpio-samsung.h>
diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c24xx/mach-rx1950.c
index ee4a0992339f..f94884090fbe 100644
--- a/arch/arm/mach-s3c24xx/mach-rx1950.c
+++ b/arch/arm/mach-s3c24xx/mach-rx1950.c
@@ -46,6 +46,7 @@
 
 #include <sound/uda1380.h>
 
+#include <mach/hardware.h>
 #include <mach/regs-gpio.h>
 #include <mach/gpio-samsung.h>
 
diff --git a/arch/arm/mach-s3c24xx/pm-h1940.S b/arch/arm/mach-s3c24xx/pm-h1940.S
index a7bbe336ac6b..f9ee515e1cbe 100644
--- a/arch/arm/mach-s3c24xx/pm-h1940.S
+++ b/arch/arm/mach-s3c24xx/pm-h1940.S
@@ -7,7 +7,6 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 
 #include <mach/regs-gpio.h>
diff --git a/arch/arm/mach-s3c24xx/regs-mem.h b/arch/arm/mach-s3c24xx/regs-mem.h
index 2f3bc48b5890..5048ab8f06c2 100644
--- a/arch/arm/mach-s3c24xx/regs-mem.h
+++ b/arch/arm/mach-s3c24xx/regs-mem.h
@@ -9,6 +9,8 @@
 #ifndef __ARCH_ARM_MACH_S3C24XX_REGS_MEM_H
 #define __ARCH_ARM_MACH_S3C24XX_REGS_MEM_H __FILE__
 
+#include <plat/map-s3c.h>
+
 #define S3C2410_MEMREG(x)		(S3C24XX_VA_MEMCTRL + (x))
 
 #define S3C2410_BWSCON			S3C2410_MEMREG(0x00)
diff --git a/arch/arm/mach-s3c24xx/s3c2410.c b/arch/arm/mach-s3c24xx/s3c2410.c
index 8427c150dd22..44bf3e1e77f1 100644
--- a/arch/arm/mach-s3c24xx/s3c2410.c
+++ b/arch/arm/mach-s3c24xx/s3c2410.c
@@ -25,7 +25,7 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
+#include <mach/map.h>
 #include <mach/gpio-samsung.h>
 #include <asm/irq.h>
 #include <asm/system_misc.h>
diff --git a/arch/arm/mach-s3c24xx/s3c2412.c b/arch/arm/mach-s3c24xx/s3c2412.c
index 209f952a6c98..75648dcc2c1d 100644
--- a/arch/arm/mach-s3c24xx/s3c2412.c
+++ b/arch/arm/mach-s3c24xx/s3c2412.c
@@ -29,7 +29,7 @@
 #include <asm/irq.h>
 #include <asm/system_misc.h>
 
-#include <mach/hardware.h>
+#include <mach/map.h>
 #include <mach/regs-clock.h>
 #include <mach/regs-gpio.h>
 
diff --git a/arch/arm/mach-s3c24xx/s3c2416.c b/arch/arm/mach-s3c24xx/s3c2416.c
index 1cdb7bd3e713..ef2eace605e6 100644
--- a/arch/arm/mach-s3c24xx/s3c2416.c
+++ b/arch/arm/mach-s3c24xx/s3c2416.c
@@ -26,7 +26,7 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
+#include <mach/map.h>
 #include <mach/gpio-samsung.h>
 #include <asm/proc-fns.h>
 #include <asm/irq.h>
diff --git a/arch/arm/mach-s3c24xx/s3c2443.c b/arch/arm/mach-s3c24xx/s3c2443.c
index f404ecac4baf..00318ad994ff 100644
--- a/arch/arm/mach-s3c24xx/s3c2443.c
+++ b/arch/arm/mach-s3c24xx/s3c2443.c
@@ -23,7 +23,7 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
+#include <mach/map.h>
 #include <mach/gpio-samsung.h>
 #include <mach/irqs.h>
 #include <asm/irq.h>
diff --git a/arch/arm/mach-s3c24xx/s3c244x.c b/arch/arm/mach-s3c24xx/s3c244x.c
index f5bd489bac85..0ca188d0ffe5 100644
--- a/arch/arm/mach-s3c24xx/s3c244x.c
+++ b/arch/arm/mach-s3c24xx/s3c244x.c
@@ -25,7 +25,7 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
+#include <mach/map.h>
 #include <asm/irq.h>
 
 #include <mach/regs-clock.h>
diff --git a/arch/arm/mach-s3c24xx/sleep-s3c2410.S b/arch/arm/mach-s3c24xx/sleep-s3c2410.S
index 659f9eff9de2..e4f6f64e7826 100644
--- a/arch/arm/mach-s3c24xx/sleep-s3c2410.S
+++ b/arch/arm/mach-s3c24xx/sleep-s3c2410.S
@@ -13,7 +13,6 @@
 #include <linux/linkage.h>
 #include <linux/serial_s3c.h>
 #include <asm/assembler.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 
 #include <mach/regs-gpio.h>
diff --git a/arch/arm/mach-s3c24xx/sleep-s3c2412.S b/arch/arm/mach-s3c24xx/sleep-s3c2412.S
index c373f1ca862b..434f5082b2ed 100644
--- a/arch/arm/mach-s3c24xx/sleep-s3c2412.S
+++ b/arch/arm/mach-s3c24xx/sleep-s3c2412.S
@@ -8,7 +8,6 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 
 #include <mach/regs-irq.h>
diff --git a/arch/arm/mach-s3c24xx/sleep.S b/arch/arm/mach-s3c24xx/sleep.S
index f0f11ad60c52..4bda4a413584 100644
--- a/arch/arm/mach-s3c24xx/sleep.S
+++ b/arch/arm/mach-s3c24xx/sleep.S
@@ -13,7 +13,6 @@
 #include <linux/linkage.h>
 #include <linux/serial_s3c.h>
 #include <asm/assembler.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 
 #include <mach/regs-gpio.h>
diff --git a/drivers/spi/spi-s3c24xx-regs.h b/drivers/spi/spi-s3c24xx-regs.h
index 37b93ff7c7fe..b76d591eba8c 100644
--- a/drivers/spi/spi-s3c24xx-regs.h
+++ b/drivers/spi/spi-s3c24xx-regs.h
@@ -8,6 +8,8 @@
 #ifndef __ASM_ARCH_REGS_SPI_H
 #define __ASM_ARCH_REGS_SPI_H
 
+#include <mach/map.h>
+
 #define S3C2410_SPCON		(0x00)
 
 #define S3C2410_SPCON_SMOD_DMA	(2 << 5)	/* DMA mode */
diff --git a/drivers/usb/gadget/udc/s3c2410_udc_regs.h b/drivers/usb/gadget/udc/s3c2410_udc_regs.h
index d8d2eeaca088..4df279342cdd 100644
--- a/drivers/usb/gadget/udc/s3c2410_udc_regs.h
+++ b/drivers/usb/gadget/udc/s3c2410_udc_regs.h
@@ -6,6 +6,8 @@
 #ifndef __ASM_ARCH_REGS_UDC_H
 #define __ASM_ARCH_REGS_UDC_H
 
+#include <mach/map.h>
+
 #define S3C2410_USBDREG(x) (x)
 
 #define S3C2410_UDC_FUNC_ADDR_REG	S3C2410_USBDREG(0x0140)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
