Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7BADCB0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGX2cVxwlfpDCT+6qyU20Ewcxdv2qpRGexappUgs9U8=; b=XAF3g7SijGAxSg
	nRxOHDgt3LNcEX9C/5ddMM1aU6W1vDBhBKfIM9FeyL/tcZP8kXyYNUdeOvG+ozqroEnXjMxzOgisv
	vFvH05jtHN2O4vKw1icLucS4AcM1xLtBd2Ksyl02XU4Ci6GsveZZFCEIiQM1LusBgaeHg2Kn5u4h+
	z5ca9JZmS48dNmzs29TBgdk7oU/q6FsRmZ2x6mr+QFQIpX/mIidCxLIaio/1D5QDAdn7RF6qHS0YF
	p+RpGejZP6cPw4/G3FfjdrdhhUqLyDDekENKu73siPZVBJ6rY5vK0sIRIKOe0rnNJJDmTJfm2iEhH
	0CoJMjtTyoCE/8aTYidg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVAF-0008TV-OZ; Fri, 18 Oct 2019 16:31:43 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLV9Y-0008JO-Tr
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:31:07 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MNcYX-1ifWBP0o6V-00P6cd; Fri, 18 Oct 2019 18:30:56 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
Date: Fri, 18 Oct 2019 18:29:15 +0200
Message-Id: <20191018163047.1284736-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018163047.1284736-1-arnd@arndb.de>
References: <20191018163047.1284736-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:a8o20A1aeMq66ylH+ZWPfDYZa2uZdpXnGwy6HcyXRtObZyyvUry
 wKkmb06WaBy2sqybhraDlVUY9dM6RoCDORnE55WXFQpwdAw9s1ZnS8K4qFb07qSMfouNQlX
 B2od+y4VfrLuLExqWrrMANYKFpu1xHQxbbD44QqMlCqpY3ii0WyXen7I52Lo/HBx0r3cnUd
 Ij40iRAo12PjYYEU5c/ZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O15dYrgphrI=:4W1saKBI4JpXwNNg4EOkNp
 1uiAx1Kdch0ukBarp2iAd0+RDJUk29oqWWe0AycJapz/zJmBWe+Z/+VH1zJn4Lh/VDUyUD0fl
 h98N4WgzqRpnTvX18PBVUXCLV4AC3TAZhZEKXO+CSaxxHtp9ByvXdbJwdVMZmHY1tyJU/qL7m
 GWslC+2UZwmwYNLTvQwsAcSLy54BdiwoW+Iqq7CSVOqpT8/0teoEtwA1ZvwLTLnYtCnz3jLcW
 S2NmFeA6Au9iFK0IewvSjpozvN+Ib3gz7o0RZOoeGRk1LEpG58HAGNTOHcOngaUmU7ANaI/45
 zRBevca/UidqjhJsn7lCdVQOwn9ahFmjBeHUjFuuSh6djHsD7Y/EKWujLTFQj+GlW5FHbi6/I
 9oIUUsFiz/I2h+G1HgKeDxFOEURRrTqXrOxhOvYQl+DG0PDxPedErniCdhdM/h/SsVDLAX60k
 nxuptKnFGjMOOGyG7HWZn84LEvBEXMNAYrVrza6Lgg7IFKNdeKUa+Hixx6BZ1rqPxKcHqDVhK
 hQwECtVoxSq176lQrDuSz/ZNeOk42FzWHgn4MvD6M0JQNWepCx1hJ2hwl5UxP5GFQlxtGLhPY
 RUfp+14vyX18b/Mpj6AmcrO5z7Nh6trj1DdksX6abAVENamnthklMPJhxhEiUtMRJu8hb2ml8
 oRTMcrgjiuAnnbnvpOHEkaWLcuZV5/VAVoECAnRacffmbZ1sl7xkYjp3B4h+w+gm4ph2tgj/z
 HG9X8ZEQoVCoYvxiI9TIRA5Q29JboHPd8lAVwekwXj4U3nu8VjKl4DMISIIq9zYbOBZMPuEPT
 6KZVDquvzm+RYBV3DxziY7dM09GffOKF+ueUN6iEoke8B+/9YvXREqIbE9snDyhADqGhB5BFl
 wgsN6bdCON4tL1zf2Zug==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_093101_703597_3E3506D2 
X-CRM114-Status: GOOD (  15.78  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Lukasz Majewski <lukma@denx.de>, Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Without CONFIG_SPARSE_IRQ, we rely on mach/irqs.h to define NR_IRQS
globally. Do the minimal conversion by setting .nr_irqs in each
machine descriptor.

Only the vision_ep9307 machine has extra IRQs for GPIOs, so make
.nr_irqs the original value there, while using the plain NR_EP93XX_IRQS
everywhere else.

---
It's been a while since I did this, no idea what else is needed
here or if this is correct at all.

Cc: Hartley Sweeten <hsweeten@visionengravers.com>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Hubert Feurstein <hubert.feurstein@contec.at>
Cc: Lukasz Majewski <lukma@denx.de>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig                               | 2 ++
 arch/arm/mach-ep93xx/adssphere.c               | 1 +
 arch/arm/mach-ep93xx/edb93xx.c                 | 8 ++++++++
 arch/arm/mach-ep93xx/gesbc9312.c               | 1 +
 arch/arm/mach-ep93xx/{include/mach => }/irqs.h | 7 -------
 arch/arm/mach-ep93xx/micro9.c                  | 4 ++++
 arch/arm/mach-ep93xx/simone.c                  | 1 +
 arch/arm/mach-ep93xx/snappercl15.c             | 1 +
 arch/arm/mach-ep93xx/soc.h                     | 1 +
 arch/arm/mach-ep93xx/ts72xx.c                  | 3 ++-
 arch/arm/mach-ep93xx/vision_ep9307.c           | 1 +
 11 files changed, 22 insertions(+), 8 deletions(-)
 rename arch/arm/mach-ep93xx/{include/mach => }/irqs.h (94%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b6681b61e46c..cca3d240a01e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -365,6 +365,8 @@ config ARCH_EP93XX
 	select CPU_ARM920T
 	select GENERIC_CLOCKEVENTS
 	select GPIOLIB
+	select IRQ_DOMAIN
+	select SPARSE_IRQ
 	help
 	  This enables support for the Cirrus EP93xx series of CPUs.
 
diff --git a/arch/arm/mach-ep93xx/adssphere.c b/arch/arm/mach-ep93xx/adssphere.c
index 57cfd8ebe04f..bb5e7b3c2fba 100644
--- a/arch/arm/mach-ep93xx/adssphere.c
+++ b/arch/arm/mach-ep93xx/adssphere.c
@@ -32,6 +32,7 @@ static void __init adssphere_init_machine(void)
 MACHINE_START(ADSSPHERE, "ADS Sphere board")
 	/* Maintainer: Lennert Buytenhek <buytenh@wantstofly.org> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
diff --git a/arch/arm/mach-ep93xx/edb93xx.c b/arch/arm/mach-ep93xx/edb93xx.c
index 7b7280c21ee0..19f38f58ff46 100644
--- a/arch/arm/mach-ep93xx/edb93xx.c
+++ b/arch/arm/mach-ep93xx/edb93xx.c
@@ -243,6 +243,7 @@ static void __init edb93xx_init_machine(void)
 MACHINE_START(EDB9301, "Cirrus Logic EDB9301 Evaluation Board")
 	/* Maintainer: H Hartley Sweeten <hsweeten@visionengravers.com> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -256,6 +257,7 @@ MACHINE_END
 MACHINE_START(EDB9302, "Cirrus Logic EDB9302 Evaluation Board")
 	/* Maintainer: George Kashperko <george@chas.com.ua> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -269,6 +271,7 @@ MACHINE_END
 MACHINE_START(EDB9302A, "Cirrus Logic EDB9302A Evaluation Board")
 	/* Maintainer: Lennert Buytenhek <buytenh@wantstofly.org> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -282,6 +285,7 @@ MACHINE_END
 MACHINE_START(EDB9307, "Cirrus Logic EDB9307 Evaluation Board")
 	/* Maintainer: Herbert Valerio Riedel <hvr@gnu.org> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -295,6 +299,7 @@ MACHINE_END
 MACHINE_START(EDB9307A, "Cirrus Logic EDB9307A Evaluation Board")
 	/* Maintainer: H Hartley Sweeten <hsweeten@visionengravers.com> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -308,6 +313,7 @@ MACHINE_END
 MACHINE_START(EDB9312, "Cirrus Logic EDB9312 Evaluation Board")
 	/* Maintainer: Toufeeq Hussain <toufeeq_hussain@infosys.com> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -321,6 +327,7 @@ MACHINE_END
 MACHINE_START(EDB9315, "Cirrus Logic EDB9315 Evaluation Board")
 	/* Maintainer: Lennert Buytenhek <buytenh@wantstofly.org> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -334,6 +341,7 @@ MACHINE_END
 MACHINE_START(EDB9315A, "Cirrus Logic EDB9315A Evaluation Board")
 	/* Maintainer: Lennert Buytenhek <buytenh@wantstofly.org> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
diff --git a/arch/arm/mach-ep93xx/gesbc9312.c b/arch/arm/mach-ep93xx/gesbc9312.c
index 8905db1edd5a..6bc86b554864 100644
--- a/arch/arm/mach-ep93xx/gesbc9312.c
+++ b/arch/arm/mach-ep93xx/gesbc9312.c
@@ -32,6 +32,7 @@ static void __init gesbc9312_init_machine(void)
 MACHINE_START(GESBC9312, "Glomation GESBC-9312-sx")
 	/* Maintainer: Lennert Buytenhek <buytenh@wantstofly.org> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
diff --git a/arch/arm/mach-ep93xx/include/mach/irqs.h b/arch/arm/mach-ep93xx/irqs.h
similarity index 94%
rename from arch/arm/mach-ep93xx/include/mach/irqs.h
rename to arch/arm/mach-ep93xx/irqs.h
index 244daf83ce6d..3ffdb3a2f3e4 100644
--- a/arch/arm/mach-ep93xx/include/mach/irqs.h
+++ b/arch/arm/mach-ep93xx/irqs.h
@@ -1,8 +1,4 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/*
- * arch/arm/mach-ep93xx/include/mach/irqs.h
- */
-
 #ifndef __ASM_ARCH_IRQS_H
 #define __ASM_ARCH_IRQS_H
 
@@ -73,7 +69,4 @@
 #define EP93XX_BOARD_IRQ(x)		(NR_EP93XX_IRQS + (x))
 #define EP93XX_BOARD_IRQS		32
 
-#define NR_IRQS				(NR_EP93XX_IRQS + EP93XX_BOARD_IRQS)
-
-
 #endif
diff --git a/arch/arm/mach-ep93xx/micro9.c b/arch/arm/mach-ep93xx/micro9.c
index b18ebf26da45..271898b17296 100644
--- a/arch/arm/mach-ep93xx/micro9.c
+++ b/arch/arm/mach-ep93xx/micro9.c
@@ -76,6 +76,7 @@ static void __init micro9_init_machine(void)
 MACHINE_START(MICRO9, "Contec Micro9-High")
 	/* Maintainer: Hubert Feurstein <hubert.feurstein@contec.at> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -89,6 +90,7 @@ MACHINE_END
 MACHINE_START(MICRO9M, "Contec Micro9-Mid")
 	/* Maintainer: Hubert Feurstein <hubert.feurstein@contec.at> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -102,6 +104,7 @@ MACHINE_END
 MACHINE_START(MICRO9L, "Contec Micro9-Lite")
 	/* Maintainer: Hubert Feurstein <hubert.feurstein@contec.at> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -115,6 +118,7 @@ MACHINE_END
 MACHINE_START(MICRO9S, "Contec Micro9-Slim")
 	/* Maintainer: Hubert Feurstein <hubert.feurstein@contec.at> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
diff --git a/arch/arm/mach-ep93xx/simone.c b/arch/arm/mach-ep93xx/simone.c
index 8a53b74dc4b2..e2f7243629fe 100644
--- a/arch/arm/mach-ep93xx/simone.c
+++ b/arch/arm/mach-ep93xx/simone.c
@@ -119,6 +119,7 @@ static void __init simone_init_machine(void)
 MACHINE_START(SIM_ONE, "Simplemachines Sim.One Board")
 	/* Maintainer: Ryan Mallon */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
diff --git a/arch/arm/mach-ep93xx/snappercl15.c b/arch/arm/mach-ep93xx/snappercl15.c
index 703f25f19d51..29c8ea34c8e1 100644
--- a/arch/arm/mach-ep93xx/snappercl15.c
+++ b/arch/arm/mach-ep93xx/snappercl15.c
@@ -153,6 +153,7 @@ static void __init snappercl15_init_machine(void)
 MACHINE_START(SNAPPER_CL15, "Bluewater Systems Snapper CL15")
 	/* Maintainer: Ryan Mallon */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ep93xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
diff --git a/arch/arm/mach-ep93xx/soc.h b/arch/arm/mach-ep93xx/soc.h
index f2dace1c9154..770743bbaf80 100644
--- a/arch/arm/mach-ep93xx/soc.h
+++ b/arch/arm/mach-ep93xx/soc.h
@@ -10,6 +10,7 @@
 #define _EP93XX_SOC_H
 
 #include <mach/ep93xx-regs.h>
+#include "irqs.h"
 
 /*
  * EP93xx Physical Memory Map:
diff --git a/arch/arm/mach-ep93xx/ts72xx.c b/arch/arm/mach-ep93xx/ts72xx.c
index e0e1b11032f1..9ac0308f3d71 100644
--- a/arch/arm/mach-ep93xx/ts72xx.c
+++ b/arch/arm/mach-ep93xx/ts72xx.c
@@ -22,7 +22,6 @@
 
 #include "gpio-ep93xx.h"
 #include "hardware.h"
-#include <mach/irqs.h>
 
 #include <asm/mach-types.h>
 #include <asm/mach/map.h>
@@ -350,6 +349,7 @@ static void __init ts72xx_init_machine(void)
 MACHINE_START(TS72XX, "Technologic Systems TS-72xx SBC")
 	/* Maintainer: Lennert Buytenhek <buytenh@wantstofly.org> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ts72xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
@@ -414,6 +414,7 @@ static void __init bk3_init_machine(void)
 MACHINE_START(BK3, "Liebherr controller BK3.1")
 	/* Maintainer: Lukasz Majewski <lukma@denx.de> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS,
 	.map_io		= ts72xx_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
diff --git a/arch/arm/mach-ep93xx/vision_ep9307.c b/arch/arm/mach-ep93xx/vision_ep9307.c
index cbcba3136d74..04f9f15be248 100644
--- a/arch/arm/mach-ep93xx/vision_ep9307.c
+++ b/arch/arm/mach-ep93xx/vision_ep9307.c
@@ -302,6 +302,7 @@ static void __init vision_init_machine(void)
 MACHINE_START(VISION_EP9307, "Vision Engraving Systems EP9307")
 	/* Maintainer: H Hartley Sweeten <hsweeten@visionengravers.com> */
 	.atag_offset	= 0x100,
+	.nr_irqs	= NR_EP93XX_IRQS + EP93XX_BOARD_IRQS,
 	.map_io		= vision_map_io,
 	.init_irq	= ep93xx_init_irq,
 	.init_time	= ep93xx_timer_init,
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
