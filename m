Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38727D3259
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDkgLom6RdCGLrtj7nkr0a497NOgkfQT9MhAYB1HFgI=; b=d0GK+gpAYaszcF
	3MNpUE1Svtv77IcXAGOJVNGivQ0rWJzPcCW6m7owCxq2na59wpbcZXBaqukBLgPxr1RxcT7bp8fFb
	w9tB9QrQ8rrpDly01mV1cIpFFktwraNIo8DoVtdy3YjoRQ4sm78+BWBUzcZgkgSjH9mJgSmFi7Apu
	mGSkCaeO6RA+RRHgWP+7DDkTTI+0B2Eh0nPSdMbYBeIBuMuu8TMlNH/SQ5ReID2A19So9TLC2pt7m
	BoGQSS6gzzxEartZjkJ3P0Jj8gKwchjo6pH5bu0k+xR5olvghQtUKA4uoavAvRNgHmSQ6xer9GOWY
	fuGiZ+yD52kffeapHz8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfH0-0001QB-I2; Thu, 10 Oct 2019 20:42:58 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfGl-0001Pr-IL
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:42:45 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MODeL-1iTRpR0sAL-00OXyt; Thu, 10 Oct 2019 22:42:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Mark Brown <broonie@kernel.org>, Andi Shyti <andi@etezian.org>
Subject: [PATCH 16/36] ARM: s3c: move spi fiq handler into platform
Date: Thu, 10 Oct 2019 22:30:00 +0200
Message-Id: <20191010203043.1241612-16-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:pxNso9pqaCSa7Erxdl+xcM2PSbR6QNBafZTkg7d8WZ6ZRjnAavq
 bIdBaNH5u5C/jlBjKRugdunCELCvWTNlyvuxHzHOLMHArPk2SuoQlSIqD/7R1neOpzmWMWI
 0DV7s4wfoUqZSuf6Dp6JgN+UCwj36OGLtI9kkZ3a+54hEyhCfQOSwICRyYNzOVxS0OIhW7A
 SzzuJAAtT0Ron3uPw6JqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SpuTVFWAlTg=:0lOQSUoQNKsa4xu/euVKIe
 tZ+7Lxfv70jhBAaNTwCjGIH0MY3yk+Q/buWIDUtbSvDzFO0ISdzyt9vNAWUKHUMoQsDb+TyyU
 DTSUopqMe6xTBcVKRD+ipnM2POhQ4n039t30HsyuuQqlFiEnCz1vm3Xqpo3Akj2k5aWH6xclM
 ke/nOD/Kysa38CC4hMStGdW0vJYwTw0Migelq19C8m4+aIARd9Rv2nPpPNAFTztr9Y87wfTVE
 yc+1pKCK/j91QnbIFz01MbGRgEnN643BNpeBgE1i2WRRjMaBgatSDvEjlrpXZMYA2HSyrGCqM
 bStqT9LuLV6frmnUK51XFDAjlrDn6l4AdMBYJVuWZ8R+Ae68E/qN2BHwBsjochs/I+J0rbAe9
 SH+6eCvv6DSKpj4NA2YHrYGlbJndP7OwNzRtjuKHELva0JsN3BNJQ8AG18HOF3yun2uwqTe5J
 dUQgfFmn8Ps+8KvlEw3/ij4oiaVmGeusbFmAgLvoyxNvGq3c93wLsg7su7lbXc04r2/X377hG
 1SgLYf/frqvkdb6ZdFxZtPCyNJ2ZHxnywuBqOTO3ly5nTX2U9y8M0mw9xxJ3jUDaYxCg9MdSe
 ydgTPyPSV1vadFC0N34d6oTfGjpd6PUS/yNdu8AlMq7pNRv8Hdc/LUKQR6+n0v0jOzJEXCS+n
 sdN5Y7Nmi6IalHiUvkWX/CruoNEUmlFiU3nK0JkcaXZ0zp3J3ygxxeuUmWGeJKCXw6pTu4DYL
 h+cAHE515cBJqLJFCZXMkyvv6fE0ATfkRG5cWao0qaCoy3M+prvh7WqfB8d0Wz9RV7Bqkt0qB
 NAQa/UZbz3bjRoV428dxPKy3MO1X3hHYqibglP4+AaclKmXrT+8W8gP6mBAhNpvOxCzziLVVs
 L4R+ilKkeT5O4etuhUqQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134243_895113_08DE5C08 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The fiq handler needs access to some register definitions that
should not be used directly by device drivers.

Since this is closely related to the irqchip driver anyway,
move it into the same place.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/Makefile                           | 2 ++
 arch/arm/mach-s3c24xx/irq-s3c24xx-fiq-exports.c          | 9 +++++++++
 .../arm/mach-s3c24xx/irq-s3c24xx-fiq.S                   | 2 +-
 drivers/spi/Makefile                                     | 1 -
 drivers/spi/spi-s3c24xx.c                                | 7 +------
 .../spi-s3c24xx-fiq.h => include/linux/spi/s3c24xx-fiq.h | 5 +++++
 6 files changed, 18 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/mach-s3c24xx/irq-s3c24xx-fiq-exports.c
 rename drivers/spi/spi-s3c24xx-fiq.S => arch/arm/mach-s3c24xx/irq-s3c24xx-fiq.S (98%)
 rename drivers/spi/spi-s3c24xx-fiq.h => include/linux/spi/s3c24xx-fiq.h (78%)

diff --git a/arch/arm/mach-s3c24xx/Makefile b/arch/arm/mach-s3c24xx/Makefile
index 8c31f84f8c97..695573df00b1 100644
--- a/arch/arm/mach-s3c24xx/Makefile
+++ b/arch/arm/mach-s3c24xx/Makefile
@@ -9,6 +9,8 @@
 
 obj-y				+= common.o
 obj-y				+= irq-s3c24xx.o
+obj-$(CONFIG_SPI_S3C24XX_FIQ)	+= irq-s3c24xx-fiq.o
+obj-$(CONFIG_SPI_S3C24XX_FIQ)	+= irq-s3c24xx-fiq-exports.o
 
 obj-$(CONFIG_CPU_S3C2410)	+= s3c2410.o
 obj-$(CONFIG_S3C2410_PLL)	+= pll-s3c2410.o
diff --git a/arch/arm/mach-s3c24xx/irq-s3c24xx-fiq-exports.c b/arch/arm/mach-s3c24xx/irq-s3c24xx-fiq-exports.c
new file mode 100644
index 000000000000..ef2d1f664e67
--- /dev/null
+++ b/arch/arm/mach-s3c24xx/irq-s3c24xx-fiq-exports.c
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/stddef.h>
+#include <linux/export.h>
+#include <linux/spi/s3c24xx-fiq.h>
+
+EXPORT_SYMBOL(s3c24xx_spi_fiq_rx);
+EXPORT_SYMBOL(s3c24xx_spi_fiq_txrx);
+EXPORT_SYMBOL(s3c24xx_spi_fiq_tx);
diff --git a/drivers/spi/spi-s3c24xx-fiq.S b/arch/arm/mach-s3c24xx/irq-s3c24xx-fiq.S
similarity index 98%
rename from drivers/spi/spi-s3c24xx-fiq.S
rename to arch/arm/mach-s3c24xx/irq-s3c24xx-fiq.S
index 9d5f8f1e5e81..2a84535a14fd 100644
--- a/drivers/spi/spi-s3c24xx-fiq.S
+++ b/arch/arm/mach-s3c24xx/irq-s3c24xx-fiq.S
@@ -13,7 +13,7 @@
 #include <mach/map.h>
 #include <mach/regs-irq.h>
 
-#include "spi-s3c24xx-fiq.h"
+#include <linux/spi/s3c24xx-fiq.h>
 
 #define S3C2410_SPTDAT           (0x10)
 #define S3C2410_SPRDAT           (0x14)
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index bb49c9e6d0a0..4bcbbd35d2e8 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -89,7 +89,6 @@ obj-$(CONFIG_SPI_RB4XX)			+= spi-rb4xx.o
 obj-$(CONFIG_SPI_RSPI)			+= spi-rspi.o
 obj-$(CONFIG_SPI_S3C24XX)		+= spi-s3c24xx-hw.o
 spi-s3c24xx-hw-y			:= spi-s3c24xx.o
-spi-s3c24xx-hw-$(CONFIG_SPI_S3C24XX_FIQ) += spi-s3c24xx-fiq.o
 obj-$(CONFIG_SPI_S3C64XX)		+= spi-s3c64xx.o
 obj-$(CONFIG_SPI_SC18IS602)		+= spi-sc18is602.o
 obj-$(CONFIG_SPI_SH)			+= spi-sh.o
diff --git a/drivers/spi/spi-s3c24xx.c b/drivers/spi/spi-s3c24xx.c
index 2f395e4861f6..464146fc8420 100644
--- a/drivers/spi/spi-s3c24xx.c
+++ b/drivers/spi/spi-s3c24xx.c
@@ -19,12 +19,12 @@
 #include <linux/spi/spi.h>
 #include <linux/spi/spi_bitbang.h>
 #include <linux/spi/s3c24xx.h>
+#include <linux/spi/s3c24xx-fiq.h>
 #include <linux/module.h>
 
 #include <asm/fiq.h>
 
 #include "spi-s3c24xx-regs.h"
-#include "spi-s3c24xx-fiq.h"
 
 /**
  * s3c24xx_spi_devstate - per device data
@@ -229,10 +229,6 @@ struct spi_fiq_code {
 	u8	data[0];
 };
 
-extern struct spi_fiq_code s3c24xx_spi_fiq_txrx;
-extern struct spi_fiq_code s3c24xx_spi_fiq_tx;
-extern struct spi_fiq_code s3c24xx_spi_fiq_rx;
-
 /**
  * ack_bit - turn IRQ into IRQ acknowledgement bit
  * @irq: The interrupt number
@@ -282,7 +278,6 @@ static void s3c24xx_spi_tryfiq(struct s3c24xx_spi *hw)
 	regs.uregs[fiq_rrx]  = (long)hw->rx;
 	regs.uregs[fiq_rtx]  = (long)hw->tx + 1;
 	regs.uregs[fiq_rcount] = hw->len - 1;
-	regs.uregs[fiq_rirq] = (long)S3C24XX_VA_IRQ;
 
 	set_fiq_regs(&regs);
 
diff --git a/drivers/spi/spi-s3c24xx-fiq.h b/include/linux/spi/s3c24xx-fiq.h
similarity index 78%
rename from drivers/spi/spi-s3c24xx-fiq.h
rename to include/linux/spi/s3c24xx-fiq.h
index 7786b0ea56ec..954452618dfe 100644
--- a/drivers/spi/spi-s3c24xx-fiq.h
+++ b/include/linux/spi/s3c24xx-fiq.h
@@ -12,6 +12,11 @@
 #ifdef __ASSEMBLY__
 #define __REG_NR(x)     r##x
 #else
+
+extern struct spi_fiq_code s3c24xx_spi_fiq_txrx;
+extern struct spi_fiq_code s3c24xx_spi_fiq_tx;
+extern struct spi_fiq_code s3c24xx_spi_fiq_rx;
+
 #define __REG_NR(x)     (x)
 #endif
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
