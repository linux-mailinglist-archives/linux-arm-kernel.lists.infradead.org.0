Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0111DC949
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3k0LkeqVvfPTzlH/jxcy859U7D8u4CA+Dincc6Suatk=; b=U+S6fEkb1bwMYc
	9f2ItsJNE7YARAYLcj+kAW/h6vXnh82kr0OazCSGzIDEzllhNBPIRQA4ekiCuDZLFAf17Klvqt3ny
	ilGpXgc03E6GfTNHx25faHi2Fa/0Go5WVGX8X7qTtkFYyN7qehQnZDjIs1yUIBA3WlV91HCwWyK16
	LEc5/wUv3b/alipwzeMNiNVSTyZs2e0/Cmy+GJf7uttMO7plZJhNah2gWZyxS1u5RU00IzvjWN27S
	YVrdfrIZACt1Onutub5lTbOnMCh+Wh3j6f+E0AMNfYetZ/mR6HGWMd6Gcj4P+5QGG2YNBnTib9XMt
	TZtO2OD7uzc9P7iYHnfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUTD-0004As-Fq; Fri, 18 Oct 2019 15:47:15 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOc-00083N-Gl
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:38 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MAwTn-1iAEvS44c5-00BIwO; Fri, 18 Oct 2019 17:42:20 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 06/46] ARM: pxa: stop using mach/bitfield.h
Date: Fri, 18 Oct 2019 17:41:21 +0200
Message-Id: <20191018154201.1276638-6-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:RMPIXEZ8B8Uok2FSd/RsBSJ9LSkrToSq1PlXx8YByCDFZq6HKXO
 KnKe5fjMzjccpDiN5gwwbCczfg8ynNnl+hPrJO+a8PXsXmntRxNg4ozDolk9RjQpP8Zdpik
 lbMmZLkdEO2w03TYSr5mMYOpaKIOACmd3xYqlWYLZ96deVragbPJL5squJTDw1pzXyT0Dxe
 cZJNuN3xPdaEgCk9TkpGA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9Msk+bU1wGA=:TmrLD7gfKbF2/MYts8rrO5
 rb7te9H+HV4fW5jwPd9ReehWNBi/EPHqQx+KCgjdx0wnBv0ap+FPaWRTA5B41snTaRncLo4b9
 sUBRSE0vAOpimcPBjCtY69H7XsHrPUCrXEyMNoaDKl5at215Qv/37C/WVg1cNXaXXgL2wWiGm
 6+lTrQSTDF1qsH5R2RGcK8JMTeCe0PYJUh6ydLEhE9cGxN+WWrIm044zF/4Sj9N47QBArI6wi
 SXH3WGqxQHgxGuqB+TXtkwOY0a5+HKdaBoYW71yCZXL2qRO4XXA5RGxHZAhFP0kKZcV+1CY1T
 xdrjBhoQj0SOdm/fENyzDy/quuiZbnOd+myliWyLU/Wv2ILpI0ZOWaUO2nh3FVyz5pqgeSdrv
 1pyrY6TNWwwkrfshdRU5tbWefz5syOrpiDz6813tZUdortco9jy8aTfXad/tHF8LtlI283eR3
 VNtr8eD4tTARzPStsOJjzd+9jbdQ3va+hHi2GfL37dS1J+9EAUB86tj21evWIDAy/1j0oMVMf
 YC71YRTkfAX2OpEhO9qkEtKfRQCVkXlu8mxaHsqed5U4u1ZB92lXD0wfapcRB09f5C7hZWVrO
 17K8n1n2De9kpHFEVCbGeKMe/AQMHzBLL8Bz0fvtMrgE7EpeZ+p4z2jd2eGz6KxTbZqp5qzWP
 DZJcJLyQBgvN42lSQvxENc5kxrJFVrwD80koXpTDVXhZJ55/OC9ebkTpt9JzSVMVGErz1TV2+
 mIs9CHNjdzm9m9VjxYsWNPGHWR1hzmkWbpWWCZCMMBfxGUG37FFy9/bw6Zazidt3Z+lelKshP
 yaevwfEbLlJmNceg8Jekxa5lYmamSzmD7wzCmGJpjgeQCP+lupbIgpHFGSLlGEk+lUOt6thrg
 WRZS5pE3ChqqFuqxACWA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084230_888344_C4BAD497 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two identical copies of mach/bitfield.h, one for
mach-sa1100 and one for mach-pxa. The pxafb driver only
makes use of two macros, which can be trivially open-coded
in the header.

Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/idp.c                   | 1 -
 arch/arm/mach-pxa/include/mach/regs-lcd.h | 5 +++--
 arch/arm/mach-pxa/regs-u2d.h              | 2 --
 drivers/video/fbdev/pxafb.c               | 1 -
 4 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-pxa/idp.c b/arch/arm/mach-pxa/idp.c
index 57c0511472bc..525d01ddfbbb 100644
--- a/arch/arm/mach-pxa/idp.c
+++ b/arch/arm/mach-pxa/idp.c
@@ -30,7 +30,6 @@
 #include "pxa25x.h"
 #include "idp.h"
 #include <linux/platform_data/video-pxafb.h>
-#include <mach/bitfield.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/smc91x.h>
 
diff --git a/arch/arm/mach-pxa/include/mach/regs-lcd.h b/arch/arm/mach-pxa/include/mach/regs-lcd.h
index e2b6e3d1f625..6a434675f84a 100644
--- a/arch/arm/mach-pxa/include/mach/regs-lcd.h
+++ b/arch/arm/mach-pxa/include/mach/regs-lcd.h
@@ -2,8 +2,6 @@
 #ifndef __ASM_ARCH_REGS_LCD_H
 #define __ASM_ARCH_REGS_LCD_H
 
-#include <mach/bitfield.h>
-
 /*
  * LCD Controller Registers and Bits Definitions
  */
@@ -86,6 +84,9 @@
 #define LCCR0_OUC	(1 << 25)	/* Overlay Underlay control bit */
 #define LCCR0_LDDALT	(1 << 26)	/* LDD alternate mapping control */
 
+#define Fld(Size, Shft)	(((Size) << 16) + (Shft))
+#define FShft(Field)	((Field) & 0x0000FFFF)
+
 #define LCCR1_PPL	Fld (10, 0)	/* Pixels Per Line - 1 */
 #define LCCR1_DisWdth(Pixel)	(((Pixel) - 1) << FShft (LCCR1_PPL))
 
diff --git a/arch/arm/mach-pxa/regs-u2d.h b/arch/arm/mach-pxa/regs-u2d.h
index fe4c80ad87ec..ab517ba62c9a 100644
--- a/arch/arm/mach-pxa/regs-u2d.h
+++ b/arch/arm/mach-pxa/regs-u2d.h
@@ -2,8 +2,6 @@
 #ifndef __ASM_ARCH_PXA3xx_U2D_H
 #define __ASM_ARCH_PXA3xx_U2D_H
 
-#include <mach/bitfield.h>
-
 /*
  * USB2 device controller registers and bits definitions
  */
diff --git a/drivers/video/fbdev/pxafb.c b/drivers/video/fbdev/pxafb.c
index ece691a0f18a..e68b8a69db92 100644
--- a/drivers/video/fbdev/pxafb.c
+++ b/drivers/video/fbdev/pxafb.c
@@ -64,7 +64,6 @@
 #include <asm/io.h>
 #include <asm/irq.h>
 #include <asm/div64.h>
-#include <mach/bitfield.h>
 #include <linux/platform_data/video-pxafb.h>
 
 /*
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
