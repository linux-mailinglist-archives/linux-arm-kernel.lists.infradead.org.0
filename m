Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90339D322E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:39:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBpHGxMu1OoI37yVv1j5guq1BM1BYiQJ0vo8K9kpQsE=; b=NgIdGZDTD8/CRG
	2Z28waEAt3otmstjTXUy+ox1bYUKP12UPL3CguJ6ANi+USq4WK/sP0+tEtANhlGwtF5ddP2Il6p4R
	jiB/k7XafEPURfHzEywu53iFFr3a8ErkOQ94oAN/fvvpqiwNXM+vqn3COhH7yh+QcvNdpDagmlOZk
	9Cp652G9qMr3y+kgT2Vv+VJiKXO+acDAWr2KAYGAZhPD46Joekpt6COkfyYFTfKu2/tCYp55oNtUp
	Zhmw6tFHR8IKi7kWzIW5P75ahj0wq4oQY8mVTB2eHvMGj7j+n0P3fAFCXh5EaUhWQzyLyEVJwdjN5
	+C7AXoWKA7LpXWm5e4aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfDM-000756-No; Thu, 10 Oct 2019 20:39:12 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfD8-00072D-Bv
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:39:00 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MlL5x-1hoan32nCH-00llHL; Thu, 10 Oct 2019 22:38:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 12/36] ARM: s3c64xx: remove mach/hardware.h
Date: Thu, 10 Oct 2019 22:29:56 +0200
Message-Id: <20191010203043.1241612-12-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:OXe9QnfIOm2QB7E89P7eHTIAVvdAUR8mNrxxSaX9vBslXNpzA9w
 Lg+aJ+KE73cm6jXF7a1hIijERFXs9Yq/KzYJQAoVZk3PGgnOkaO+oS0kOazRYUFMvsVN9xI
 6zys/ptdflbTnlNoqYrjnMzd98Fn8RfCEglT6NWiG7Sl1sqH3/wb3uRbAh1P6NiYtYrDFH3
 9IImxelmRSj0RdAu1eiWw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hs2OK14Huk4=:UoqLsaEEin+XUyqgAC0Bbu
 8DzXYBz0uUZcngn/LCWTOPtv5gd/AuAugN8yEUtvb9+uUz7f/QThRZ2vwWIVx0QGnXhDbvhZQ
 eYNUfVHgkHtL6QlL6RhucARKyWVZaxCPLhiTZ0cHWJBkI4w4DSzSqx9+fWw8WxaNeHRFurbDS
 28cqGO7FjkfeXVE4l1d7JW2VE2hxlHo4zIWT0KJfzJ6cXjkSDWeF3Cn5tjqdSc+IoEeUYt/KT
 xmLJNHI4KEsaKyMxOS0/TA2Uw+1vJUXeo4ERg6jOSyTqbyotKO4Rf0EJ9HoJ6CPJqHZ80sdOp
 GU8oW68vcNDeuPXFhzd0zHYMIrLHdP1SjJ3id0pDfZWxcnGBA/6cXwjEKVcmxitXXGTTIcEDW
 hOY/xlpijCx2UxAK+aTDa6q9NSL5gPsB1gEOci5+aLt+ZAqBD/qJRwNWiNVWdtl7cpyoM1Rnt
 uCKH7VnmuqTN3hJ3SoqLEw0LmvsTLiwwcjeJyYBXQ60/bDTgcoF0zAPN7zpUiWimGOFeVMhub
 usP/44lqKL7GGu7hG8pTR2BjN8XwJ98RM0plbqpuW3oi/gmnbvSBg3gRjtWfnUfKB464nizoC
 j4rCFQgt1ffip5sIusR2xYZfSoAmVHofEI4MClDtefSLRUUpfr8VRet5kP1EiZ3/hbyIIRp3m
 85+nUPPm5CHyQZt9b8bfol/8I5BmlDY2XP8ZA9j7VlPePzR0mp3gkn3s/niVv8ndNX93H5yDR
 aE8EgdUvHpF3Q1cLO33KutOMplv/n/61Eg3cBwRbxOiRukZamUlLgQvFW7+yJRZxzac15zSgx
 JJ0ax0++Xvua5WXN1PdKowbvMAlgYNR/6W/9opEZrtYwgGpirLvRFSzWrRDl8bAgk4uksHdeD
 92rdQipwb7tiSo0bheMQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133858_714490_FDDA0B35 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, Arnd Bergmann <arnd@arndb.de>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This header is empty and conflicts with the s3c24xx version
of the same file when we merge the two, so stop including it.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c64xx/common.c                |  1 -
 arch/arm/mach-s3c64xx/dev-uart.c              |  1 -
 arch/arm/mach-s3c64xx/include/mach/hardware.h | 17 -----------------
 arch/arm/mach-s3c64xx/mach-anw6410.c          |  1 -
 arch/arm/mach-s3c64xx/mach-crag6410.c         |  1 -
 arch/arm/mach-s3c64xx/mach-hmt.c              |  1 -
 arch/arm/mach-s3c64xx/mach-ncp.c              |  1 -
 arch/arm/mach-s3c64xx/mach-smdk6400.c         |  1 -
 arch/arm/mach-s3c64xx/mach-smdk6410.c         |  1 -
 arch/arm/mach-s3c64xx/s3c6400.c               |  1 -
 arch/arm/mach-s3c64xx/s3c6410.c               |  1 -
 11 files changed, 27 deletions(-)
 delete mode 100644 arch/arm/mach-s3c64xx/include/mach/hardware.h

diff --git a/arch/arm/mach-s3c64xx/common.c b/arch/arm/mach-s3c64xx/common.c
index 13e91074308a..19d544f6808a 100644
--- a/arch/arm/mach-s3c64xx/common.c
+++ b/arch/arm/mach-s3c64xx/common.c
@@ -36,7 +36,6 @@
 
 #include <mach/map.h>
 #include <mach/irqs.h>
-#include <mach/hardware.h>
 #include <mach/regs-gpio.h>
 #include <mach/gpio-samsung.h>
 
diff --git a/arch/arm/mach-s3c64xx/dev-uart.c b/arch/arm/mach-s3c64xx/dev-uart.c
index 5fb59ad30008..021a2b7926fa 100644
--- a/arch/arm/mach-s3c64xx/dev-uart.c
+++ b/arch/arm/mach-s3c64xx/dev-uart.c
@@ -15,7 +15,6 @@
 
 #include <asm/mach/arch.h>
 #include <asm/mach/irq.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 #include <mach/irqs.h>
 
diff --git a/arch/arm/mach-s3c64xx/include/mach/hardware.h b/arch/arm/mach-s3c64xx/include/mach/hardware.h
deleted file mode 100644
index c4ed359474de..000000000000
--- a/arch/arm/mach-s3c64xx/include/mach/hardware.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/* linux/arch/arm/mach-s3c6400/include/mach/hardware.h
- *
- * Copyright 2008 Openmoko, Inc.
- * Copyright 2008 Simtec Electronics
- *      Ben Dooks <ben@simtec.co.uk>
- *      http://armlinux.simtec.co.uk/
- *
- * S3C6400 - Hardware support
- */
-
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H __FILE__
-
-/* currently nothing here, placeholder */
-
-#endif /* __ASM_ARCH_IRQ_H */
diff --git a/arch/arm/mach-s3c64xx/mach-anw6410.c b/arch/arm/mach-s3c64xx/mach-anw6410.c
index 0d3d5befb806..44858c5aea5d 100644
--- a/arch/arm/mach-s3c64xx/mach-anw6410.c
+++ b/arch/arm/mach-s3c64xx/mach-anw6410.c
@@ -30,7 +30,6 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <mach/map.h>
 
 #include <asm/irq.h>
diff --git a/arch/arm/mach-s3c64xx/mach-crag6410.c b/arch/arm/mach-s3c64xx/mach-crag6410.c
index 8ec6a4f5eb05..da5b50981a14 100644
--- a/arch/arm/mach-s3c64xx/mach-crag6410.c
+++ b/arch/arm/mach-s3c64xx/mach-crag6410.c
@@ -44,7 +44,6 @@
 #include <asm/mach-types.h>
 
 #include <video/samsung_fimd.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 #include <mach/regs-gpio.h>
 #include <mach/gpio-samsung.h>
diff --git a/arch/arm/mach-s3c64xx/mach-hmt.c b/arch/arm/mach-s3c64xx/mach-hmt.c
index bfe9881d12cc..a6634fd9e6c4 100644
--- a/arch/arm/mach-s3c64xx/mach-hmt.c
+++ b/arch/arm/mach-s3c64xx/mach-hmt.c
@@ -25,7 +25,6 @@
 #include <asm/mach/irq.h>
 
 #include <video/samsung_fimd.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 #include <mach/irqs.h>
 
diff --git a/arch/arm/mach-s3c64xx/mach-ncp.c b/arch/arm/mach-s3c64xx/mach-ncp.c
index 13fea5c86ca3..34a00b33fae9 100644
--- a/arch/arm/mach-s3c64xx/mach-ncp.c
+++ b/arch/arm/mach-s3c64xx/mach-ncp.c
@@ -25,7 +25,6 @@
 #include <asm/mach/irq.h>
 
 #include <mach/irqs.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 
 #include <asm/irq.h>
diff --git a/arch/arm/mach-s3c64xx/mach-smdk6400.c b/arch/arm/mach-s3c64xx/mach-smdk6400.c
index cbd16843c7d1..885158f0a304 100644
--- a/arch/arm/mach-s3c64xx/mach-smdk6400.c
+++ b/arch/arm/mach-s3c64xx/mach-smdk6400.c
@@ -23,7 +23,6 @@
 #include <asm/mach/irq.h>
 
 #include <mach/irqs.h>
-#include <mach/hardware.h>
 #include <mach/map.h>
 
 #include <plat/devs.h>
diff --git a/arch/arm/mach-s3c64xx/mach-smdk6410.c b/arch/arm/mach-s3c64xx/mach-smdk6410.c
index 908e5aa831c8..95bdcfe95a53 100644
--- a/arch/arm/mach-s3c64xx/mach-smdk6410.c
+++ b/arch/arm/mach-s3c64xx/mach-smdk6410.c
@@ -45,7 +45,6 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <mach/irqs.h>
 #include <mach/map.h>
 
diff --git a/arch/arm/mach-s3c64xx/s3c6400.c b/arch/arm/mach-s3c64xx/s3c6400.c
index 545eea716db8..81233495d548 100644
--- a/arch/arm/mach-s3c64xx/s3c6400.c
+++ b/arch/arm/mach-s3c64xx/s3c6400.c
@@ -26,7 +26,6 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 
 #include <plat/cpu-freq.h>
diff --git a/arch/arm/mach-s3c64xx/s3c6410.c b/arch/arm/mach-s3c64xx/s3c6410.c
index 47e04e019624..9465a6e0f068 100644
--- a/arch/arm/mach-s3c64xx/s3c6410.c
+++ b/arch/arm/mach-s3c64xx/s3c6410.c
@@ -27,7 +27,6 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 
 #include <plat/cpu-freq.h>
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
