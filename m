Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CECF3DCB0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44/kOCM+ayConIjLDbV9dOx71coz0VjZtXeYf4Cbfkw=; b=NE4Vks1bw6wfJx
	l/uLFbZV6Tj/gdv9jjmMiH520LEJ63VWqHtFNhz0h/skmFZPof5wBwpd8wA9kE38NYyarhkridpeA
	4+kbwjqcJQ3r7mbKv2ZJ7hBhug9SaQ4rq7wCh3m+XXpBE+evJtWWSkRaNPSGfqmER2SP7iXcGnGXG
	07wy5R2nqs1ZNIbMbeQg0ZGW0oukf8+F1UcWbheMaVkYusIokd7+Tzkq4iR9s6WsMu9QjvNuQ45tB
	5ubqd57I9VhxViSv/FwTleXwP9SainN8EN1J0DfIKC6o3CpF6bdcfcjXYfMFOQBQQFEpbFh3caJCm
	CbEhgfLpjzG5RAPCqzyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVAU-0000Lv-7Q; Fri, 18 Oct 2019 16:31:58 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLV9d-0008OA-Sj
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:31:12 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MK3mS-1icTm63Lji-00LXiw; Fri, 18 Oct 2019 18:31:00 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/6] ARM: ep93xx: make mach/ep93xx-regs.h local
Date: Fri, 18 Oct 2019 18:29:16 +0200
Message-Id: <20191018163047.1284736-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018163047.1284736-1-arnd@arndb.de>
References: <20191018163047.1284736-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Tlr/kGU2mrcS/i0RZ/FxB2SYCWQT8PnsZqB5BcF7KAjcRmXLUoF
 F9tlGC+3wNa5O5ykqO5dAN2TDQM0ig59FE1SOufdFwBDz5f7Eln7CUeDvq9Y5oe8gDIq3g6
 0fDwY3z/aNnIGAGFB9uIwbx/4hf4Sc2khW/mncHRod8MA9YGAGM5IP+7H767jo4JR3PB0F4
 8sIvE5utwNvgPaEv9jxSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+IHzhn3/5XI=:3+rOIP+88JYxotOIBrvwLn
 epLEJlm/bm1m6smJnYwY6LsWyjAWKtgnQ9SOQ1u1kLeWB4lVdkM1zyfETbpfqKTI3gtUQGb31
 7qvGQHo1ULmo3Kcwtgr/UMu/gNteiLmFh/FAjMCsWYbuv2y/FHnMPcmxDE6i4Wcg8hG6AHe5D
 auu0neWcvGuz5x6a4Pm6qHdFAELbHITngSBERzCYCkXBslEu1GcriGPbjubkt1nSMubPeOotQ
 /wUVDcOCmjJW8SlkBXiyaq7FBonl9BJUiwHHae6BrNzbwIJ0Z0WBywyTwqa7KzCAAZ9uZAGeY
 Rwn8hCH/JxbigA6n0Mu3WItmFLp4q9G6BXZFOggU1gFZg8kQB2B9e040Vk1B9axLzdu4NCGas
 NwPyzWqBGQd/SKn+S5jj4N5o41KkOk6HIJHLo/8uowM6eNHLCoX9iCZtfV+JbcCGLUPB0gva+
 etKp0YR9PCqjM3XjNiEwG9GysIP3HwQhZsQXRevLaqxtKPPh4QMkiw8tSoBMcPmFg6LYA5TTP
 dUWZOa/RvaL0rWzwdkgHOKi1sQmPotgs/y1WT5TI6uFHbFcFa3gNH9xhbDn1Wh/6uGx30cnbJ
 BgSlkjCou75M88kQbYGA1AOFWlIjW61hwm3jgPyWDon5z9bSGabmFB3DpHvFyOk+/oVw0dmrT
 NiD4hjy1o/Qsl5x7GWyNtJielZuoTj0gA3hSqaSdbQ0bpTbj9WMm6VpfNIE0qO5Rxvpx/ORgk
 jiM+56LMmAnxwY+UHxwG2so4GiG7WoNonQZSjUZj4BolzLlCXquFNDA/GgN/HVDSEpGMNU5Xx
 dtZtdH5FQp92SsdBIp11mJF5v0aPISl62FxZ6rx1yWCCNbdxZHOGiBHJ4XhoW5OgL0wlUtbx8
 gHaq77S5t+W3wz9jnl3w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_093106_259558_B2A97BB2 
X-CRM114-Status: GOOD (  12.74  )
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
Cc: Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nothing relies on it outside of arch/arm/mach-ep93xx/, so just move
it there.

Cc: Hartley Sweeten <hsweeten@visionengravers.com>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-ep93xx/crunch-bits.S                    | 2 +-
 arch/arm/mach-ep93xx/{include/mach => }/ep93xx-regs.h | 4 ----
 arch/arm/mach-ep93xx/gpio-ep93xx.h                    | 2 +-
 arch/arm/mach-ep93xx/include/mach/uncompress.h        | 1 -
 arch/arm/mach-ep93xx/soc.h                            | 2 +-
 5 files changed, 3 insertions(+), 8 deletions(-)
 rename arch/arm/mach-ep93xx/{include/mach => }/ep93xx-regs.h (94%)

diff --git a/arch/arm/mach-ep93xx/crunch-bits.S b/arch/arm/mach-ep93xx/crunch-bits.S
index fb2dbf76f09e..e6dd08538bb9 100644
--- a/arch/arm/mach-ep93xx/crunch-bits.S
+++ b/arch/arm/mach-ep93xx/crunch-bits.S
@@ -14,7 +14,7 @@
 #include <asm/thread_info.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
-#include <mach/ep93xx-regs.h>
+#include "ep93xx-regs.h"
 
 /*
  * We can't use hex constants here due to a bug in gas.
diff --git a/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h b/arch/arm/mach-ep93xx/ep93xx-regs.h
similarity index 94%
rename from arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
rename to arch/arm/mach-ep93xx/ep93xx-regs.h
index 6839ea032e58..8fa3646de0a4 100644
--- a/arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
+++ b/arch/arm/mach-ep93xx/ep93xx-regs.h
@@ -1,8 +1,4 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/*
- * arch/arm/mach-ep93xx/include/mach/ep93xx-regs.h
- */
-
 #ifndef __ASM_ARCH_EP93XX_REGS_H
 #define __ASM_ARCH_EP93XX_REGS_H
 
diff --git a/arch/arm/mach-ep93xx/gpio-ep93xx.h b/arch/arm/mach-ep93xx/gpio-ep93xx.h
index 242af4a401ea..7b46eb7e5507 100644
--- a/arch/arm/mach-ep93xx/gpio-ep93xx.h
+++ b/arch/arm/mach-ep93xx/gpio-ep93xx.h
@@ -4,7 +4,7 @@
 #ifndef __GPIO_EP93XX_H
 #define __GPIO_EP93XX_H
 
-#include <mach/ep93xx-regs.h>
+#include "ep93xx-regs.h"
 
 #define EP93XX_GPIO_PHYS_BASE		EP93XX_APB_PHYS(0x00040000)
 #define EP93XX_GPIO_BASE		EP93XX_APB_IOMEM(0x00040000)
diff --git a/arch/arm/mach-ep93xx/include/mach/uncompress.h b/arch/arm/mach-ep93xx/include/mach/uncompress.h
index b3ec1db988db..e20bcab702b2 100644
--- a/arch/arm/mach-ep93xx/include/mach/uncompress.h
+++ b/arch/arm/mach-ep93xx/include/mach/uncompress.h
@@ -5,7 +5,6 @@
  * Copyright (C) 2006 Lennert Buytenhek <buytenh@wantstofly.org>
  */
 
-#include <mach/ep93xx-regs.h>
 #include <asm/mach-types.h>
 
 static unsigned char __raw_readb(unsigned int ptr)
diff --git a/arch/arm/mach-ep93xx/soc.h b/arch/arm/mach-ep93xx/soc.h
index 770743bbaf80..670884ba754e 100644
--- a/arch/arm/mach-ep93xx/soc.h
+++ b/arch/arm/mach-ep93xx/soc.h
@@ -9,7 +9,7 @@
 #ifndef _EP93XX_SOC_H
 #define _EP93XX_SOC_H
 
-#include <mach/ep93xx-regs.h>
+#include "ep93xx-regs.h"
 #include "irqs.h"
 
 /*
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
