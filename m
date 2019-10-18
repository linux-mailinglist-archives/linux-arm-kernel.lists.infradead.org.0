Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C62DC95B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO+iR4OAnEju1UJP0XkXbgTGyc5If2o5zIAomqe/D2I=; b=RHSSQUq4ym7eEo
	PCMHepfmEI/bBD7CzbuebcNsdawpDO7ZzjotxqV2+H+dcudMSc4GsgXithJt6FeHlLzPDUg4udFpM
	R5fjB4hz2slSU3GK9u8m1vxYkehnRATTlm42wx1fGcU41dkHiLNdJy9xHwgkAkYZYd9iUms2zUuV0
	NFibS3ShtWUrWhyCdVQg4gIflKtwYoK9SIuGHquCDtGo82PWFtmaxbqhbjqDKWT5u4sen4BVtRaxY
	Su/8BX7VhDTCxMhR/j/EnNplmxGWCoSdbyK4PiuwmNaCLVjVs/HSF6u9oeSM4j1GvFdJqBpCHS2my
	GGUHrWmsVakdt52npYCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUUi-0005mE-K5; Fri, 18 Oct 2019 15:48:48 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOa-00082M-AR
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:40 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M8hR1-1iPb050sLZ-004iJ2; Fri, 18 Oct 2019 17:42:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 13/46] ARM: pxa: move pcmcia board data into mach-pxa
Date: Fri, 18 Oct 2019 17:41:28 +0200
Message-Id: <20191018154201.1276638-13-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:zh7l+1kSKRq16jgGH/awTtet7fahFklX9NZ13c8nrsEXMSOllEv
 BqyXztif/VecIoxEVkWvyfzZ9CsiqDRuSt2PaPJB5Tuvc4rTyBeLM+mbp31uhLDEgifwgTW
 dZbQM1/EWjnEtN6UGW4LG3/588Mr6w+YsuQwNZsAzINa8qQsQ85A/UGOuwObgVczsrhdLOJ
 QOnkM3S36Q8qwIo3Tbefw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d8Imx1Egy88=:yh6uY5FV0CfacxHyXfgDp+
 hu7g9JJFOVnzKx3fjntu4gRBVhGeK2xbk+WKG9852gRW8Y22bocT2rOgqsojKfhBV0Vjk10q+
 QM5bcOyo3K9A3Y6DBXB7SLECeSPQM/uO5xDAZEXEvgPReBwzPwH1sLNSMS5NvOnp8GpF9PurU
 6fclowBOSZaXC1R9V0VSN+fFNSP/zqLSfeKRjyHfktcZTModpX9sj+sHjWjwpsqZKS7J5QzxB
 p4lUzppQ+ksHlxsqN7pfQ0Su2xXq0H6qdpNs1zYzw/MHWTbfGYm9MJEn5FC6FvnaRVSmdt9I2
 oG2+SNOvb9m9d4+SupIVvkHan0/upyLISVAf0SaNu2gSnG08IYEaFBov84ac1fmCNcIRT7IZR
 Uz8BEMea6YXtfl+0sZE2naGS6xeNWk/6Q7zgotVb4ECj4zRzA8YQrJNE+vYXFX5X8pBYchdfI
 rzyMXwdp7pOsXFFcqK1aQrSx+Aod97TccjZa7temPJKvhY9+mgOGz+iqJ4nmxq/8EPI9nP5Py
 i3GjGc/OAK6XdvQRxvBA9Jc62uNq1LPApufO3Fq+ZU30WIRHIUQICC11u2PtcJLPp10ejaXk9
 EKuMo6KMwkiisKnbwr4BN96QZOb8/lY0qgmdG49SptMI3EuqES4+2S7Oeie20HI8AOedwdrYk
 2uH58tSBHAkGxJMtm9x5ssVwATwx8wXXNRD2YqTpXVf40dZpHjC6Xc+Jzw54R4+/e0iscWy8V
 SloYgIuBuiflHoovovyD5MZDU2orTadEgiS0u8v88qLz4zcur8ye9xqCTGDWMYy1Adyjo6i9N
 fldYT2Gep4cP1NRy1XXd1I0pZyiGhKXqddxuyj8J0KT647AX4l7hy/CVejJlpq5XC+bTS0rWE
 yW0udJOiGYHtg/DGt4nA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084229_039178_E2C9F1A1 
X-CRM114-Status: GOOD (  13.55  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Dominik Brodowski <linux@dominikbrodowski.net>,
 Marek Vasut <marek.vasut@gmail.com>, Jonathan Cameron <jic23@cam.ac.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The drivers/pcmcia/pxa2xx_*.c are essentially part of the
board files, but for historic reasons located in drivers/pcmcia.

Move them into the same place as the actual board file to avoid
lots of machine header inclusions.

Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Dominik Brodowski <linux@dominikbrodowski.net>
Cc: Jonathan Cameron <jic23@cam.ac.uk>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/Makefile                    |  21 +--
 .../arm/mach-pxa/balloon3-pcmcia.c            |   4 +-
 arch/arm/mach-pxa/balloon3.c                  |   2 +-
 .../mach-pxa/{include/mach => }/balloon3.h    |   2 +-
 .../arm/mach-pxa/cm_x255-pcmcia.c             |   2 +-
 .../arm/mach-pxa/cm_x270-pcmcia.c             |   2 +-
 .../arm/mach-pxa/cm_x2xx-pcmcia.c             |   0
 .../arm/mach-pxa/colibri-pcmcia.c             |   2 +-
 .../arm/mach-pxa/e740-pcmcia.c                |   2 +-
 .../arm/mach-pxa/hx4700-pcmcia.c              |   2 +-
 .../arm/mach-pxa/palmld-pcmcia.c              |   2 +-
 .../arm/mach-pxa/palmtc-pcmcia.c              |   4 +-
 arch/arm/mach-pxa/palmtc.c                    |   2 +-
 arch/arm/mach-pxa/{include/mach => }/palmtc.h |   2 +-
 .../arm/mach-pxa/palmtx-pcmcia.c              |   4 +-
 arch/arm/mach-pxa/palmtx.c                    |   2 +-
 arch/arm/mach-pxa/{include/mach => }/palmtx.h |   2 +-
 .../arm/mach-pxa/stargate2-pcmcia.c           |   2 +-
 .../arm/mach-pxa/trizeps4-pcmcia.c            |   4 +-
 arch/arm/mach-pxa/trizeps4.c                  |   2 +-
 .../mach-pxa/{include/mach => }/trizeps4.h    |   2 +-
 .../arm/mach-pxa/viper-pcmcia.c               |   6 +-
 .../arm/mach-pxa/viper-pcmcia.h               |   0
 arch/arm/mach-pxa/viper.c                     |   2 +-
 .../arm/mach-pxa/vpac270-pcmcia.c             |   4 +-
 arch/arm/mach-pxa/vpac270.c                   |   2 +-
 .../arm/mach-pxa/{include/mach => }/vpac270.h |   0
 arch/arm/mach-pxa/zeus.c                      |   2 +-
 drivers/pcmcia/Makefile                       |  16 ---
 drivers/pcmcia/pxa2xx_sharpsl.c               |   2 +-
 drivers/pcmcia/soc_common.h                   | 120 +----------------
 include/pcmcia/soc_common.h                   | 125 ++++++++++++++++++
 32 files changed, 170 insertions(+), 176 deletions(-)
 rename drivers/pcmcia/pxa2xx_balloon3.c => arch/arm/mach-pxa/balloon3-pcmcia.c (98%)
 rename arch/arm/mach-pxa/{include/mach => }/balloon3.h (99%)
 rename drivers/pcmcia/pxa2xx_cm_x255.c => arch/arm/mach-pxa/cm_x255-pcmcia.c (98%)
 rename drivers/pcmcia/pxa2xx_cm_x270.c => arch/arm/mach-pxa/cm_x270-pcmcia.c (98%)
 rename drivers/pcmcia/pxa2xx_cm_x2xx.c => arch/arm/mach-pxa/cm_x2xx-pcmcia.c (100%)
 rename drivers/pcmcia/pxa2xx_colibri.c => arch/arm/mach-pxa/colibri-pcmcia.c (99%)
 rename drivers/pcmcia/pxa2xx_e740.c => arch/arm/mach-pxa/e740-pcmcia.c (98%)
 rename drivers/pcmcia/pxa2xx_hx4700.c => arch/arm/mach-pxa/hx4700-pcmcia.c (98%)
 rename drivers/pcmcia/pxa2xx_palmld.c => arch/arm/mach-pxa/palmld-pcmcia.c (98%)
 rename drivers/pcmcia/pxa2xx_palmtc.c => arch/arm/mach-pxa/palmtc-pcmcia.c (98%)
 rename arch/arm/mach-pxa/{include/mach => }/palmtc.h (98%)
 rename drivers/pcmcia/pxa2xx_palmtx.c => arch/arm/mach-pxa/palmtx-pcmcia.c (98%)
 rename arch/arm/mach-pxa/{include/mach => }/palmtx.h (98%)
 rename drivers/pcmcia/pxa2xx_stargate2.c => arch/arm/mach-pxa/stargate2-pcmcia.c (99%)
 rename drivers/pcmcia/pxa2xx_trizeps4.c => arch/arm/mach-pxa/trizeps4-pcmcia.c (98%)
 rename arch/arm/mach-pxa/{include/mach => }/trizeps4.h (99%)
 rename drivers/pcmcia/pxa2xx_viper.c => arch/arm/mach-pxa/viper-pcmcia.c (97%)
 rename include/linux/platform_data/pcmcia-pxa2xx_viper.h => arch/arm/mach-pxa/viper-pcmcia.h (100%)
 rename drivers/pcmcia/pxa2xx_vpac270.c => arch/arm/mach-pxa/vpac270-pcmcia.c (98%)
 rename arch/arm/mach-pxa/{include/mach => }/vpac270.h (100%)
 create mode 100644 include/pcmcia/soc_common.h

diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index f70728930c4f..e0df39b0238d 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -37,13 +37,15 @@ obj-$(CONFIG_MACH_SAAR)		+= saar.o
 obj-$(CONFIG_ARCH_PXA_IDP)	+= idp.o
 obj-$(CONFIG_ARCH_VIPER)	+= viper.o
 obj-$(CONFIG_MACH_ARCOM_ZEUS)	+= zeus.o
-obj-$(CONFIG_MACH_BALLOON3)	+= balloon3.o
+obj-$(CONFIG_ARCOM_PCMCIA)	+= viper-pcmcia.o
+obj-$(CONFIG_MACH_BALLOON3)	+= balloon3.o balloon3-pcmcia.o
 obj-$(CONFIG_MACH_CSB726)	+= csb726.o
 obj-$(CONFIG_CSB726_CSB701)	+= csb701.o
 obj-$(CONFIG_MACH_ARMCORE)      += cm-x2xx.o cm-x255.o cm-x270.o
 ifeq ($(CONFIG_PCI),y)
 obj-$(CONFIG_MACH_ARMCORE)	+= cm-x2xx-pci.o
 endif
+obj-$(CONFIG_MACH_ARMCORE)	+= cm_x2xx-pcmcia.o cm_x255-pcmcia.o cm_x270-pcmcia.o
 obj-$(CONFIG_MACH_EM_X270)	+= em-x270.o
 obj-$(CONFIG_MACH_CM_X300)      += cm-x300.o
 obj-$(CONFIG_MACH_CAPC7117)     += capc7117.o mxm8x10.o
@@ -51,21 +53,23 @@ obj-$(CONFIG_ARCH_GUMSTIX)	+= gumstix.o
 obj-$(CONFIG_GUMSTIX_AM200EPD)	+= am200epd.o
 obj-$(CONFIG_GUMSTIX_AM300EPD)	+= am300epd.o
 obj-$(CONFIG_MACH_INTELMOTE2)	+= stargate2.o
-obj-$(CONFIG_MACH_STARGATE2)	+= stargate2.o
+obj-$(CONFIG_MACH_STARGATE2)	+= stargate2.o stargate2-pcmcia.o
 obj-$(CONFIG_MACH_XCEP)         += xcep.o
 obj-$(CONFIG_MACH_TRIZEPS4)	+= trizeps4.o
+obj-$(CONFIG_TRIZEPS_PCMCIA)	+= trizeps4-pcmcia.o
 obj-$(CONFIG_MACH_LOGICPD_PXA270)	+= lpd270.o
 obj-$(CONFIG_MACH_PCM027)		+= pcm027.o
 obj-$(CONFIG_MACH_PCM990_BASEBOARD)	+= pcm990-baseboard.o
-obj-$(CONFIG_MACH_COLIBRI)			+= colibri-pxa270.o
+obj-$(CONFIG_MACH_COLIBRI)		+= colibri-pxa270.o colibri-pcmcia.o
 obj-$(CONFIG_MACH_COLIBRI_EVALBOARD)	+= colibri-evalboard.o
 obj-$(CONFIG_MACH_COLIBRI_PXA270_INCOME)	+= colibri-pxa270-income.o
 obj-$(CONFIG_MACH_COLIBRI300)	+= colibri-pxa3xx.o colibri-pxa300.o
-obj-$(CONFIG_MACH_COLIBRI320)	+= colibri-pxa3xx.o colibri-pxa320.o
-obj-$(CONFIG_MACH_VPAC270)	+= vpac270.o
+obj-$(CONFIG_MACH_COLIBRI320)	+= colibri-pxa3xx.o colibri-pxa320.o colibri-pcmcia.o
+obj-$(CONFIG_MACH_VPAC270)	+= vpac270.o vpac270-pcmcia.o
 
 # End-user Products
 obj-$(CONFIG_MACH_H4700)	+= hx4700.o
+obj-$(CONFIG_MACH_H4700)	+= hx4700-pcmcia.o
 obj-$(CONFIG_MACH_H5000)	+= h5000.o
 obj-$(CONFIG_MACH_HIMALAYA)	+= himalaya.o
 obj-$(CONFIG_MACH_MAGICIAN)	+= magician.o
@@ -73,12 +77,12 @@ obj-$(CONFIG_MACH_MIOA701)	+= mioa701.o mioa701_bootresume.o
 obj-$(CONFIG_PXA_EZX)           += ezx.o
 obj-$(CONFIG_MACH_MP900C)	+= mp900.o
 obj-$(CONFIG_MACH_PALMTE2)	+= palmte2.o
-obj-$(CONFIG_MACH_PALMTC)	+= palmtc.o
+obj-$(CONFIG_MACH_PALMTC)	+= palmtc.o palmtc-pcmcia.o
 obj-$(CONFIG_MACH_PALM27X)	+= palm27x.o
 obj-$(CONFIG_MACH_PALMT5)	+= palmt5.o
-obj-$(CONFIG_MACH_PALMTX)	+= palmtx.o
+obj-$(CONFIG_MACH_PALMTX)	+= palmtx.o palmtx-pcmcia.o
 obj-$(CONFIG_MACH_PALMZ72)	+= palmz72.o
-obj-$(CONFIG_MACH_PALMLD)	+= palmld.o
+obj-$(CONFIG_MACH_PALMLD)	+= palmld.o palmld-pcmcia.o
 obj-$(CONFIG_PALM_TREO)		+= palmtreo.o
 obj-$(CONFIG_PXA_SHARP_C7xx)	+= corgi.o sharpsl_pm.o corgi_pm.o
 obj-$(CONFIG_PXA_SHARP_Cxx00)	+= spitz.o sharpsl_pm.o spitz_pm.o
@@ -86,6 +90,7 @@ obj-$(CONFIG_MACH_POODLE)	+= poodle.o
 obj-$(CONFIG_MACH_TOSA)		+= tosa.o
 obj-$(CONFIG_MACH_ICONTROL)     += icontrol.o mxm8x10.o
 obj-$(CONFIG_ARCH_PXA_ESERIES)	+= eseries.o
+obj-$(CONFIG_MACH_E740)		+= e740-pcmcia.o
 obj-$(CONFIG_MACH_ZIPIT2)	+= z2.o
 
 obj-$(CONFIG_PXA_SYSTEMS_CPLDS)	+= pxa_cplds_irqs.o
diff --git a/drivers/pcmcia/pxa2xx_balloon3.c b/arch/arm/mach-pxa/balloon3-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_balloon3.c
rename to arch/arm/mach-pxa/balloon3-pcmcia.c
index 5fe1da7a50e4..6a27b76cc603 100644
--- a/drivers/pcmcia/pxa2xx_balloon3.c
+++ b/arch/arm/mach-pxa/balloon3-pcmcia.c
@@ -20,11 +20,11 @@
 #include <linux/irq.h>
 #include <linux/io.h>
 
-#include <mach/balloon3.h>
+#include "balloon3.h"
 
 #include <asm/mach-types.h>
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 static int balloon3_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
 {
diff --git a/arch/arm/mach-pxa/balloon3.c b/arch/arm/mach-pxa/balloon3.c
index 82f9299f67d3..896d47d9a8dc 100644
--- a/arch/arm/mach-pxa/balloon3.c
+++ b/arch/arm/mach-pxa/balloon3.c
@@ -40,7 +40,7 @@
 #include <asm/mach/flash.h>
 
 #include "pxa27x.h"
-#include <mach/balloon3.h>
+#include "balloon3.h"
 #include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/mmc-pxamci.h>
diff --git a/arch/arm/mach-pxa/include/mach/balloon3.h b/arch/arm/mach-pxa/balloon3.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/balloon3.h
rename to arch/arm/mach-pxa/balloon3.h
index 04f3639c4082..f351358c0e5b 100644
--- a/arch/arm/mach-pxa/include/mach/balloon3.h
+++ b/arch/arm/mach-pxa/balloon3.h
@@ -11,7 +11,7 @@
 #ifndef ASM_ARCH_BALLOON3_H
 #define ASM_ARCH_BALLOON3_H
 
-#include "irqs.h" /* PXA_NR_BUILTIN_GPIO */
+#include <mach/irqs.h> /* PXA_NR_BUILTIN_GPIO */
 
 enum balloon3_features {
 	BALLOON3_FEATURE_OHCI,
diff --git a/drivers/pcmcia/pxa2xx_cm_x255.c b/arch/arm/mach-pxa/cm_x255-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_cm_x255.c
rename to arch/arm/mach-pxa/cm_x255-pcmcia.c
index c0b6b846fbaa..7f9f3c157210 100644
--- a/drivers/pcmcia/pxa2xx_cm_x255.c
+++ b/arch/arm/mach-pxa/cm_x255-pcmcia.c
@@ -12,7 +12,7 @@
 #include <linux/gpio.h>
 #include <linux/export.h>
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 #define GPIO_PCMCIA_SKTSEL	(54)
 #define GPIO_PCMCIA_S0_CD_VALID	(16)
diff --git a/drivers/pcmcia/pxa2xx_cm_x270.c b/arch/arm/mach-pxa/cm_x270-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_cm_x270.c
rename to arch/arm/mach-pxa/cm_x270-pcmcia.c
index 36e35da5f887..57c8cbb2f896 100644
--- a/drivers/pcmcia/pxa2xx_cm_x270.c
+++ b/arch/arm/mach-pxa/cm_x270-pcmcia.c
@@ -12,7 +12,7 @@
 #include <linux/gpio.h>
 #include <linux/export.h>
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 #define GPIO_PCMCIA_S0_CD_VALID	(84)
 #define GPIO_PCMCIA_S0_RDYINT	(82)
diff --git a/drivers/pcmcia/pxa2xx_cm_x2xx.c b/arch/arm/mach-pxa/cm_x2xx-pcmcia.c
similarity index 100%
rename from drivers/pcmcia/pxa2xx_cm_x2xx.c
rename to arch/arm/mach-pxa/cm_x2xx-pcmcia.c
diff --git a/drivers/pcmcia/pxa2xx_colibri.c b/arch/arm/mach-pxa/colibri-pcmcia.c
similarity index 99%
rename from drivers/pcmcia/pxa2xx_colibri.c
rename to arch/arm/mach-pxa/colibri-pcmcia.c
index f0f725e99604..9da7b478e5eb 100644
--- a/drivers/pcmcia/pxa2xx_colibri.c
+++ b/arch/arm/mach-pxa/colibri-pcmcia.c
@@ -14,7 +14,7 @@
 
 #include <asm/mach-types.h>
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 #define	COLIBRI270_RESET_GPIO	53
 #define	COLIBRI270_PPEN_GPIO	107
diff --git a/drivers/pcmcia/pxa2xx_e740.c b/arch/arm/mach-pxa/e740-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_e740.c
rename to arch/arm/mach-pxa/e740-pcmcia.c
index 72caa6d05ab9..133535d7ac05 100644
--- a/drivers/pcmcia/pxa2xx_e740.c
+++ b/arch/arm/mach-pxa/e740-pcmcia.c
@@ -18,7 +18,7 @@
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 static int e740_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
 {
diff --git a/drivers/pcmcia/pxa2xx_hx4700.c b/arch/arm/mach-pxa/hx4700-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_hx4700.c
rename to arch/arm/mach-pxa/hx4700-pcmcia.c
index 87b6a1639d94..e8acbfc9ef6c 100644
--- a/drivers/pcmcia/pxa2xx_hx4700.c
+++ b/arch/arm/mach-pxa/hx4700-pcmcia.c
@@ -12,7 +12,7 @@
 #include <asm/mach-types.h>
 #include <mach/hx4700.h>
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 static struct gpio gpios[] = {
 	{ GPIO114_HX4700_CF_RESET,    GPIOF_OUT_INIT_LOW,   "CF reset"        },
diff --git a/drivers/pcmcia/pxa2xx_palmld.c b/arch/arm/mach-pxa/palmld-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_palmld.c
rename to arch/arm/mach-pxa/palmld-pcmcia.c
index cfff41ac9ca2..07e0f7438db1 100644
--- a/drivers/pcmcia/pxa2xx_palmld.c
+++ b/arch/arm/mach-pxa/palmld-pcmcia.c
@@ -14,7 +14,7 @@
 
 #include <asm/mach-types.h>
 #include <mach/palmld.h>
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 static struct gpio palmld_pcmcia_gpios[] = {
 	{ GPIO_NR_PALMLD_PCMCIA_POWER,	GPIOF_INIT_LOW,	"PCMCIA Power" },
diff --git a/drivers/pcmcia/pxa2xx_palmtc.c b/arch/arm/mach-pxa/palmtc-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_palmtc.c
rename to arch/arm/mach-pxa/palmtc-pcmcia.c
index 8fe05613ed04..8e3f382343fe 100644
--- a/drivers/pcmcia/pxa2xx_palmtc.c
+++ b/arch/arm/mach-pxa/palmtc-pcmcia.c
@@ -14,8 +14,8 @@
 #include <linux/delay.h>
 
 #include <asm/mach-types.h>
-#include <mach/palmtc.h>
-#include "soc_common.h"
+#include "palmtc.h"
+#include <pcmcia/soc_common.h>
 
 static struct gpio palmtc_pcmcia_gpios[] = {
 	{ GPIO_NR_PALMTC_PCMCIA_POWER1,	GPIOF_INIT_LOW,	"PCMCIA Power 1" },
diff --git a/arch/arm/mach-pxa/palmtc.c b/arch/arm/mach-pxa/palmtc.c
index 71917127dfdd..a3aa01d47472 100644
--- a/arch/arm/mach-pxa/palmtc.c
+++ b/arch/arm/mach-pxa/palmtc.c
@@ -31,7 +31,7 @@
 
 #include "pxa25x.h"
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/palmtc.h>
+#include "palmtc.h"
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/irda-pxaficp.h>
diff --git a/arch/arm/mach-pxa/include/mach/palmtc.h b/arch/arm/mach-pxa/palmtc.h
similarity index 98%
rename from arch/arm/mach-pxa/include/mach/palmtc.h
rename to arch/arm/mach-pxa/palmtc.h
index 9257a02c46e5..afec057c2857 100644
--- a/arch/arm/mach-pxa/include/mach/palmtc.h
+++ b/arch/arm/mach-pxa/palmtc.h
@@ -12,7 +12,7 @@
 #ifndef _INCLUDE_PALMTC_H_
 #define _INCLUDE_PALMTC_H_
 
-#include "irqs.h" /* PXA_GPIO_TO_IRQ */
+#include <mach/irqs.h> /* PXA_GPIO_TO_IRQ */
 
 /** HERE ARE GPIOs **/
 
diff --git a/drivers/pcmcia/pxa2xx_palmtx.c b/arch/arm/mach-pxa/palmtx-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_palmtx.c
rename to arch/arm/mach-pxa/palmtx-pcmcia.c
index c449ca72cb87..8c2aaad93043 100644
--- a/drivers/pcmcia/pxa2xx_palmtx.c
+++ b/arch/arm/mach-pxa/palmtx-pcmcia.c
@@ -12,8 +12,8 @@
 #include <linux/gpio.h>
 
 #include <asm/mach-types.h>
-#include <mach/palmtx.h>
-#include "soc_common.h"
+#include "palmtx.h"
+#include <pcmcia/soc_common.h>
 
 static struct gpio palmtx_pcmcia_gpios[] = {
 	{ GPIO_NR_PALMTX_PCMCIA_POWER1,	GPIOF_INIT_LOW,	"PCMCIA Power 1" },
diff --git a/arch/arm/mach-pxa/palmtx.c b/arch/arm/mach-pxa/palmtx.c
index eed25d09dfb2..d6819413a8d6 100644
--- a/arch/arm/mach-pxa/palmtx.c
+++ b/arch/arm/mach-pxa/palmtx.c
@@ -34,7 +34,7 @@
 
 #include "pxa27x.h"
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/palmtx.h>
+#include "palmtx.h"
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/irda-pxaficp.h>
diff --git a/arch/arm/mach-pxa/include/mach/palmtx.h b/arch/arm/mach-pxa/palmtx.h
similarity index 98%
rename from arch/arm/mach-pxa/include/mach/palmtx.h
rename to arch/arm/mach-pxa/palmtx.h
index ec88abf0fc6c..a2bb993952d9 100644
--- a/arch/arm/mach-pxa/include/mach/palmtx.h
+++ b/arch/arm/mach-pxa/palmtx.h
@@ -12,7 +12,7 @@
 #ifndef _INCLUDE_PALMTX_H_
 #define _INCLUDE_PALMTX_H_
 
-#include "irqs.h" /* PXA_GPIO_TO_IRQ */
+#include <mach/irqs.h> /* PXA_GPIO_TO_IRQ */
 
 /** HERE ARE GPIOs **/
 
diff --git a/drivers/pcmcia/pxa2xx_stargate2.c b/arch/arm/mach-pxa/stargate2-pcmcia.c
similarity index 99%
rename from drivers/pcmcia/pxa2xx_stargate2.c
rename to arch/arm/mach-pxa/stargate2-pcmcia.c
index 6efb7f814b4a..9b73487a4f24 100644
--- a/drivers/pcmcia/pxa2xx_stargate2.c
+++ b/arch/arm/mach-pxa/stargate2-pcmcia.c
@@ -23,7 +23,7 @@
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 #define SG2_S0_POWER_CTL	108
 #define SG2_S0_GPIO_RESET	82
diff --git a/drivers/pcmcia/pxa2xx_trizeps4.c b/arch/arm/mach-pxa/trizeps4-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_trizeps4.c
rename to arch/arm/mach-pxa/trizeps4-pcmcia.c
index 6db8fe880ed4..02d7bb0c538f 100644
--- a/drivers/pcmcia/pxa2xx_trizeps4.c
+++ b/arch/arm/mach-pxa/trizeps4-pcmcia.c
@@ -20,9 +20,9 @@
 #include <asm/irq.h>
 
 #include <mach/pxa2xx-regs.h>
-#include <mach/trizeps4.h>
+#include "trizeps4.h"
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 extern void board_pcmcia_power(int power);
 
diff --git a/arch/arm/mach-pxa/trizeps4.c b/arch/arm/mach-pxa/trizeps4.c
index 1337008cc760..fadfbb40cd6c 100644
--- a/arch/arm/mach-pxa/trizeps4.c
+++ b/arch/arm/mach-pxa/trizeps4.c
@@ -40,7 +40,7 @@
 #include <asm/mach/flash.h>
 
 #include "pxa27x.h"
-#include <mach/trizeps4.h>
+#include "trizeps4.h"
 #include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/mmc-pxamci.h>
diff --git a/arch/arm/mach-pxa/include/mach/trizeps4.h b/arch/arm/mach-pxa/trizeps4.h
similarity index 99%
rename from arch/arm/mach-pxa/include/mach/trizeps4.h
rename to arch/arm/mach-pxa/trizeps4.h
index b6c19d155ef9..e0f37c0ff06f 100644
--- a/arch/arm/mach-pxa/include/mach/trizeps4.h
+++ b/arch/arm/mach-pxa/trizeps4.h
@@ -12,7 +12,7 @@
 #define _TRIPEPS4_H_
 
 #include "addr-map.h"
-#include "irqs.h" /* PXA_GPIO_TO_IRQ */
+#include <mach/irqs.h> /* PXA_GPIO_TO_IRQ */
 
 /* physical memory regions */
 #define TRIZEPS4_FLASH_PHYS	(PXA_CS0_PHYS)  /* Flash region */
diff --git a/drivers/pcmcia/pxa2xx_viper.c b/arch/arm/mach-pxa/viper-pcmcia.c
similarity index 97%
rename from drivers/pcmcia/pxa2xx_viper.c
rename to arch/arm/mach-pxa/viper-pcmcia.c
index 7ac6647d286e..26599dcc49b3 100644
--- a/drivers/pcmcia/pxa2xx_viper.c
+++ b/arch/arm/mach-pxa/viper-pcmcia.c
@@ -22,13 +22,11 @@
 #include <linux/gpio.h>
 
 #include <pcmcia/ss.h>
+#include <pcmcia/soc_common.h>
 
 #include <asm/irq.h>
 
-#include <linux/platform_data/pcmcia-pxa2xx_viper.h>
-
-#include "soc_common.h"
-#include "pxa2xx_base.h"
+#include "viper-pcmcia.h"
 
 static struct platform_device *arcom_pcmcia_dev;
 
diff --git a/include/linux/platform_data/pcmcia-pxa2xx_viper.h b/arch/arm/mach-pxa/viper-pcmcia.h
similarity index 100%
rename from include/linux/platform_data/pcmcia-pxa2xx_viper.h
rename to arch/arm/mach-pxa/viper-pcmcia.h
diff --git a/arch/arm/mach-pxa/viper.c b/arch/arm/mach-pxa/viper.c
index 7d1cb2c2dfa1..fe74ee266871 100644
--- a/arch/arm/mach-pxa/viper.c
+++ b/arch/arm/mach-pxa/viper.c
@@ -49,7 +49,7 @@
 #include <linux/platform_data/asoc-pxa.h>
 #include <linux/platform_data/video-pxafb.h>
 #include "regs-uart.h"
-#include <linux/platform_data/pcmcia-pxa2xx_viper.h>
+#include "viper-pcmcia.h"
 #include "viper.h"
 
 #include <asm/setup.h>
diff --git a/drivers/pcmcia/pxa2xx_vpac270.c b/arch/arm/mach-pxa/vpac270-pcmcia.c
similarity index 98%
rename from drivers/pcmcia/pxa2xx_vpac270.c
rename to arch/arm/mach-pxa/vpac270-pcmcia.c
index 3565add03a5e..9fd990c8a5fb 100644
--- a/drivers/pcmcia/pxa2xx_vpac270.c
+++ b/arch/arm/mach-pxa/vpac270-pcmcia.c
@@ -13,9 +13,9 @@
 
 #include <asm/mach-types.h>
 
-#include <mach/vpac270.h>
+#include "vpac270.h"
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 static struct gpio vpac270_pcmcia_gpios[] = {
 	{ GPIO107_VPAC270_PCMCIA_PPEN,	GPIOF_INIT_LOW,	"PCMCIA PPEN" },
diff --git a/arch/arm/mach-pxa/vpac270.c b/arch/arm/mach-pxa/vpac270.c
index 7abbebc5d455..5adb053a293e 100644
--- a/arch/arm/mach-pxa/vpac270.c
+++ b/arch/arm/mach-pxa/vpac270.c
@@ -31,7 +31,7 @@
 
 #include "pxa27x.h"
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/vpac270.h>
+#include "vpac270.h"
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
diff --git a/arch/arm/mach-pxa/include/mach/vpac270.h b/arch/arm/mach-pxa/vpac270.h
similarity index 100%
rename from arch/arm/mach-pxa/include/mach/vpac270.h
rename to arch/arm/mach-pxa/vpac270.h
diff --git a/arch/arm/mach-pxa/zeus.c b/arch/arm/mach-pxa/zeus.c
index 6652b1e5978e..80c2bf6e1d30 100644
--- a/arch/arm/mach-pxa/zeus.c
+++ b/arch/arm/mach-pxa/zeus.c
@@ -47,7 +47,7 @@
 #include <linux/platform_data/video-pxafb.h>
 #include "pm.h"
 #include <linux/platform_data/asoc-pxa.h>
-#include <linux/platform_data/pcmcia-pxa2xx_viper.h>
+#include "viper-pcmcia.h"
 #include "zeus.h"
 #include <mach/smemc.h>
 
diff --git a/drivers/pcmcia/Makefile b/drivers/pcmcia/Makefile
index 01779c5c45f3..1bd5fd1db6db 100644
--- a/drivers/pcmcia/Makefile
+++ b/drivers/pcmcia/Makefile
@@ -49,23 +49,7 @@ sa1100_cs-$(CONFIG_SA1100_H3100)		+= sa1100_h3600.o
 sa1100_cs-$(CONFIG_SA1100_H3600)		+= sa1100_h3600.o
 sa1100_cs-$(CONFIG_SA1100_SIMPAD)		+= sa1100_simpad.o
 
-pxa2xx_cm_x2xx_cs-y				+= pxa2xx_cm_x2xx.o pxa2xx_cm_x255.o pxa2xx_cm_x270.o
 pxa2xx-obj-$(CONFIG_MACH_MAINSTONE)		+= pxa2xx_mainstone.o
 pxa2xx-obj-$(CONFIG_PXA_SHARPSL)		+= pxa2xx_sharpsl.o
-pxa2xx-obj-$(CONFIG_MACH_ARMCORE)		+= pxa2xx_cm_x2xx_cs.o
-pxa2xx-obj-$(CONFIG_ARCOM_PCMCIA)		+= pxa2xx_viper.o
-pxa2xx-obj-$(CONFIG_TRIZEPS_PCMCIA)		+= pxa2xx_trizeps4.o
-pxa2xx-obj-$(CONFIG_MACH_PALMTX)		+= pxa2xx_palmtx.o
-pxa2xx-obj-$(CONFIG_MACH_PALMTC)		+= pxa2xx_palmtc.o
-pxa2xx-obj-$(CONFIG_MACH_PALMLD)		+= pxa2xx_palmld.o
-pxa2xx-obj-$(CONFIG_MACH_E740)			+= pxa2xx_e740.o
-pxa2xx-obj-$(CONFIG_MACH_STARGATE2)		+= pxa2xx_stargate2.o
-pxa2xx-obj-$(CONFIG_MACH_VPAC270)		+= pxa2xx_vpac270.o
-pxa2xx-obj-$(CONFIG_MACH_BALLOON3)		+= pxa2xx_balloon3.o
-pxa2xx-obj-$(CONFIG_MACH_COLIBRI)		+= pxa2xx_colibri.o
-pxa2xx-obj-$(CONFIG_MACH_COLIBRI320)		+= pxa2xx_colibri.o
-pxa2xx-obj-$(CONFIG_MACH_H4700)			+= pxa2xx_hx4700.o
-
 obj-$(CONFIG_PCMCIA_PXA2XX)			+= pxa2xx_base.o $(pxa2xx-obj-y)
-
 obj-$(CONFIG_PCMCIA_XXS1500)			+= xxs1500_ss.o
diff --git a/drivers/pcmcia/pxa2xx_sharpsl.c b/drivers/pcmcia/pxa2xx_sharpsl.c
index 66fe1d1af12a..b3ba858f70cb 100644
--- a/drivers/pcmcia/pxa2xx_sharpsl.c
+++ b/drivers/pcmcia/pxa2xx_sharpsl.c
@@ -18,7 +18,7 @@
 #include <asm/irq.h>
 #include <asm/hardware/scoop.h>
 
-#include "soc_common.h"
+#include <pcmcia/soc_common.h>
 
 #define	NO_KEEP_VS 0x0001
 #define SCOOP_DEV platform_scoop_config->devs
diff --git a/drivers/pcmcia/soc_common.h b/drivers/pcmcia/soc_common.h
index b7f993f1bbd0..6476db67e31b 100644
--- a/drivers/pcmcia/soc_common.h
+++ b/drivers/pcmcia/soc_common.h
@@ -13,137 +13,19 @@
 /* include the world */
 #include <linux/clk.h>
 #include <linux/cpufreq.h>
-#include <pcmcia/ss.h>
 #include <pcmcia/cistpl.h>
-
+#include <pcmcia/soc_common.h>
 
 struct device;
 struct gpio_desc;
 struct pcmcia_low_level;
 struct regulator;
 
-struct soc_pcmcia_regulator {
-	struct regulator	*reg;
-	bool			on;
-};
-
-/*
- * This structure encapsulates per-socket state which we might need to
- * use when responding to a Card Services query of some kind.
- */
-struct soc_pcmcia_socket {
-	struct pcmcia_socket	socket;
-
-	/*
-	 * Info from low level handler
-	 */
-	unsigned int		nr;
-	struct clk		*clk;
-
-	/*
-	 * Core PCMCIA state
-	 */
-	const struct pcmcia_low_level *ops;
-
-	unsigned int		status;
-	socket_state_t		cs_state;
-
-	unsigned short		spd_io[MAX_IO_WIN];
-	unsigned short		spd_mem[MAX_WIN];
-	unsigned short		spd_attr[MAX_WIN];
-
-	struct resource		res_skt;
-	struct resource		res_io;
-	struct resource		res_mem;
-	struct resource		res_attr;
-	void __iomem		*virt_io;
-
-	struct {
-		int		gpio;
-		struct gpio_desc *desc;
-		unsigned int	irq;
-		const char	*name;
-	} stat[6];
-#define SOC_STAT_CD		0	/* Card detect */
-#define SOC_STAT_BVD1		1	/* BATDEAD / IOSTSCHG */
-#define SOC_STAT_BVD2		2	/* BATWARN / IOSPKR */
-#define SOC_STAT_RDY		3	/* Ready / Interrupt */
-#define SOC_STAT_VS1		4	/* Voltage sense 1 */
-#define SOC_STAT_VS2		5	/* Voltage sense 2 */
-
-	struct gpio_desc	*gpio_reset;
-	struct gpio_desc	*gpio_bus_enable;
-	struct soc_pcmcia_regulator vcc;
-	struct soc_pcmcia_regulator vpp;
-
-	unsigned int		irq_state;
-
-#ifdef CONFIG_CPU_FREQ
-	struct notifier_block	cpufreq_nb;
-#endif
-	struct timer_list	poll_timer;
-	struct list_head	node;
-	void *driver_data;
-};
-
 struct skt_dev_info {
 	int nskt;
 	struct soc_pcmcia_socket skt[0];
 };
 
-struct pcmcia_state {
-  unsigned detect: 1,
-            ready: 1,
-             bvd1: 1,
-             bvd2: 1,
-           wrprot: 1,
-            vs_3v: 1,
-            vs_Xv: 1;
-};
-
-struct pcmcia_low_level {
-	struct module *owner;
-
-	/* first socket in system */
-	int first;
-	/* nr of sockets */
-	int nr;
-
-	int (*hw_init)(struct soc_pcmcia_socket *);
-	void (*hw_shutdown)(struct soc_pcmcia_socket *);
-
-	void (*socket_state)(struct soc_pcmcia_socket *, struct pcmcia_state *);
-	int (*configure_socket)(struct soc_pcmcia_socket *, const socket_state_t *);
-
-	/*
-	 * Enable card status IRQs on (re-)initialisation.  This can
-	 * be called at initialisation, power management event, or
-	 * pcmcia event.
-	 */
-	void (*socket_init)(struct soc_pcmcia_socket *);
-
-	/*
-	 * Disable card status IRQs and PCMCIA bus on suspend.
-	 */
-	void (*socket_suspend)(struct soc_pcmcia_socket *);
-
-	/*
-	 * Hardware specific timing routines.
-	 * If provided, the get_timing routine overrides the SOC default.
-	 */
-	unsigned int (*get_timing)(struct soc_pcmcia_socket *, unsigned int, unsigned int);
-	int (*set_timing)(struct soc_pcmcia_socket *);
-	int (*show_timing)(struct soc_pcmcia_socket *, char *);
-
-#ifdef CONFIG_CPU_FREQ
-	/*
-	 * CPUFREQ support.
-	 */
-	int (*frequency_change)(struct soc_pcmcia_socket *, unsigned long, struct cpufreq_freqs *);
-#endif
-};
-
-
 struct soc_pcmcia_timing {
 	unsigned short io;
 	unsigned short mem;
diff --git a/include/pcmcia/soc_common.h b/include/pcmcia/soc_common.h
new file mode 100644
index 000000000000..26f1473a06c5
--- /dev/null
+++ b/include/pcmcia/soc_common.h
@@ -0,0 +1,125 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <pcmcia/ss.h>
+
+struct module;
+struct cpufreq_freqs;
+
+struct soc_pcmcia_regulator {
+	struct regulator	*reg;
+	bool			on;
+};
+
+struct pcmcia_state {
+  unsigned detect: 1,
+            ready: 1,
+             bvd1: 1,
+             bvd2: 1,
+           wrprot: 1,
+            vs_3v: 1,
+            vs_Xv: 1;
+};
+
+/*
+ * This structure encapsulates per-socket state which we might need to
+ * use when responding to a Card Services query of some kind.
+ */
+struct soc_pcmcia_socket {
+	struct pcmcia_socket	socket;
+
+	/*
+	 * Info from low level handler
+	 */
+	unsigned int		nr;
+	struct clk		*clk;
+
+	/*
+	 * Core PCMCIA state
+	 */
+	const struct pcmcia_low_level *ops;
+
+	unsigned int		status;
+	socket_state_t		cs_state;
+
+	unsigned short		spd_io[MAX_IO_WIN];
+	unsigned short		spd_mem[MAX_WIN];
+	unsigned short		spd_attr[MAX_WIN];
+
+	struct resource		res_skt;
+	struct resource		res_io;
+	struct resource		res_mem;
+	struct resource		res_attr;
+	void __iomem		*virt_io;
+
+	struct {
+		int		gpio;
+		struct gpio_desc *desc;
+		unsigned int	irq;
+		const char	*name;
+	} stat[6];
+#define SOC_STAT_CD		0	/* Card detect */
+#define SOC_STAT_BVD1		1	/* BATDEAD / IOSTSCHG */
+#define SOC_STAT_BVD2		2	/* BATWARN / IOSPKR */
+#define SOC_STAT_RDY		3	/* Ready / Interrupt */
+#define SOC_STAT_VS1		4	/* Voltage sense 1 */
+#define SOC_STAT_VS2		5	/* Voltage sense 2 */
+
+	struct gpio_desc	*gpio_reset;
+	struct gpio_desc	*gpio_bus_enable;
+	struct soc_pcmcia_regulator vcc;
+	struct soc_pcmcia_regulator vpp;
+
+	unsigned int		irq_state;
+
+#ifdef CONFIG_CPU_FREQ
+	struct notifier_block	cpufreq_nb;
+#endif
+	struct timer_list	poll_timer;
+	struct list_head	node;
+	void *driver_data;
+};
+
+
+struct pcmcia_low_level {
+	struct module *owner;
+
+	/* first socket in system */
+	int first;
+	/* nr of sockets */
+	int nr;
+
+	int (*hw_init)(struct soc_pcmcia_socket *);
+	void (*hw_shutdown)(struct soc_pcmcia_socket *);
+
+	void (*socket_state)(struct soc_pcmcia_socket *, struct pcmcia_state *);
+	int (*configure_socket)(struct soc_pcmcia_socket *, const socket_state_t *);
+
+	/*
+	 * Enable card status IRQs on (re-)initialisation.  This can
+	 * be called at initialisation, power management event, or
+	 * pcmcia event.
+	 */
+	void (*socket_init)(struct soc_pcmcia_socket *);
+
+	/*
+	 * Disable card status IRQs and PCMCIA bus on suspend.
+	 */
+	void (*socket_suspend)(struct soc_pcmcia_socket *);
+
+	/*
+	 * Hardware specific timing routines.
+	 * If provided, the get_timing routine overrides the SOC default.
+	 */
+	unsigned int (*get_timing)(struct soc_pcmcia_socket *, unsigned int, unsigned int);
+	int (*set_timing)(struct soc_pcmcia_socket *);
+	int (*show_timing)(struct soc_pcmcia_socket *, char *);
+
+#ifdef CONFIG_CPU_FREQ
+	/*
+	 * CPUFREQ support.
+	 */
+	int (*frequency_change)(struct soc_pcmcia_socket *, unsigned long, struct cpufreq_freqs *);
+#endif
+};
+
+
+
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
