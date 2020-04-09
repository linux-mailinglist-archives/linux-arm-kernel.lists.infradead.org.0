Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699871A3C51
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 00:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MkLv/ezaGwu85nqioSQJtfwRtT240DV9MwZ4caAfW6I=; b=LeRoLiQxQi1ETp
	BZCpZkuy8vtM4SiqfVmhJ3NBoNAv6YN8P/R5wBj0x59BmeV3Gnw+NrBhi4F29GQ/V+55SpJt+eR3T
	0xDDaOk0UJp1ClpOFXc5VdvOmk5oQCZV2QrTpVXsbwp6m6nwMI6KcKFklHqEPyb2Xhxi5pwoMC4aF
	X2rWRCh0Cf5UzWeXJiHaOmHgUfUWYG/vVCzx+9saaV69TFc/bdJ7XyBTADnb4qNMlkafxBKImCXYl
	obBQ7DDTONB6a1qZVHzfrRdlp6XmprJP0FfhPpCfEhm3Cc2+aAekS1WCfzV92qg987ckUhoJELBnj
	FUDs++SBS/dVALcARwzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfWp-0004KT-RX; Thu, 09 Apr 2020 22:20:07 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMfWd-0004K6-Qe
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 22:19:57 +0000
Received: by mail-il1-f196.google.com with SMTP id o11so257731ilq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 15:19:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZmadGF46EgeI/l7KaWr9CABRcK1LweRSb3xfQIvnqng=;
 b=D7/LP3xxMvK85oxf8bXn1SbML94N5f70j/pV5lam6wddYDQ10wVnuOjqUCqBU2zHWc
 R+AV1hiJYfKFHgvr2mbwF2FBxIK2/ySBcm9lFeQwpKWSpOXuS8znXtzTQaFqseJCb0av
 4hZhtcbIfkndP/aIqINznMikhao3mdixcEmBLH06xPjwMChNBZQqpYqfctQzEntJNdR4
 NxHf5vEOqRrn/KvZeZ+Vt2QNNoLxk9AvwJRM5hGDMI/ryP5caBshMjRHLD9QcOELkXUB
 HXMNN1UuCWwdRdle37PHaRin+TcwPut+yiBun/DPikDBFov6uF2AKnh/yD6J/e4ieMAl
 Q5JQ==
X-Gm-Message-State: AGi0PubomDC9de3DYQfZIqq1nNJmlJZG6YpTU5ljkX5vS63fghejeWvb
 YSjyDim4gdB8vxYN6FCrwA==
X-Google-Smtp-Source: APiQypK8+wfGOc2FDKuY2WslCo3w0Yp0alOV9nmtZIGiN3sDumLuoLHFTqy6E5jbOxW/tnnB1Eu03w==
X-Received: by 2002:a92:d083:: with SMTP id h3mr2213874ilh.28.1586470794024;
 Thu, 09 Apr 2020 15:19:54 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id o6sm108234ilo.69.2020.04.09.15.19.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 15:19:53 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] ARM: versatile: Remove dead sched_clock code
Date: Thu,  9 Apr 2020 16:19:52 -0600
Message-Id: <20200409221952.31287-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_151955_861065_31DDAD70 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that there's a DT based sched_clock driver in
drivers/clocksource/timer-versatile.c and all the Arm reference
platforms are DT only, the non-DT versatile sched_clock code can be
removed.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/Kconfig                              |  1 -
 arch/arm/mach-realview/Kconfig                |  1 -
 arch/arm/plat-versatile/Kconfig               |  7 -----
 arch/arm/plat-versatile/Makefile              |  1 -
 .../plat-versatile/include/plat/sched_clock.h |  7 -----
 arch/arm/plat-versatile/sched-clock.c         | 28 -------------------
 6 files changed, 45 deletions(-)
 delete mode 100644 arch/arm/plat-versatile/Kconfig
 delete mode 100644 arch/arm/plat-versatile/include/plat/sched_clock.h
 delete mode 100644 arch/arm/plat-versatile/sched-clock.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 66a04f6f4775..4595e5cd6602 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -735,7 +735,6 @@ source "arch/arm/mach-ux500/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
 
 source "arch/arm/mach-vexpress/Kconfig"
-source "arch/arm/plat-versatile/Kconfig"
 
 source "arch/arm/mach-vt8500/Kconfig"
 
diff --git a/arch/arm/mach-realview/Kconfig b/arch/arm/mach-realview/Kconfig
index 44ebbf9ec673..e7633c0aaae7 100644
--- a/arch/arm/mach-realview/Kconfig
+++ b/arch/arm/mach-realview/Kconfig
@@ -16,7 +16,6 @@ menuconfig ARCH_REALVIEW
 	select MACH_REALVIEW_EB if ARCH_MULTI_V5
 	select MFD_SYSCON
 	select PLAT_VERSATILE
-	select PLAT_VERSATILE_SCHED_CLOCK
 	select POWER_RESET
 	select POWER_RESET_VERSATILE
 	select POWER_SUPPLY
diff --git a/arch/arm/plat-versatile/Kconfig b/arch/arm/plat-versatile/Kconfig
deleted file mode 100644
index 748238f9f10e..000000000000
--- a/arch/arm/plat-versatile/Kconfig
+++ /dev/null
@@ -1,7 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-if PLAT_VERSATILE
-
-config PLAT_VERSATILE_SCHED_CLOCK
-	bool
-
-endif
diff --git a/arch/arm/plat-versatile/Makefile b/arch/arm/plat-versatile/Makefile
index e856f0a4ac6e..5de44a57c4de 100644
--- a/arch/arm/plat-versatile/Makefile
+++ b/arch/arm/plat-versatile/Makefile
@@ -1,6 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/$(src)/include
 
-obj-$(CONFIG_PLAT_VERSATILE_SCHED_CLOCK) += sched-clock.o
 obj-$(CONFIG_SMP) += headsmp.o platsmp.o
 obj-$(CONFIG_HOTPLUG_CPU)		+= hotplug.o
diff --git a/arch/arm/plat-versatile/include/plat/sched_clock.h b/arch/arm/plat-versatile/include/plat/sched_clock.h
deleted file mode 100644
index 83fdaef23c2e..000000000000
--- a/arch/arm/plat-versatile/include/plat/sched_clock.h
+++ /dev/null
@@ -1,7 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef ARM_PLAT_SCHED_CLOCK_H
-#define ARM_PLAT_SCHED_CLOCK_H
-
-void versatile_sched_clock_init(void __iomem *, unsigned long);
-
-#endif
diff --git a/arch/arm/plat-versatile/sched-clock.c b/arch/arm/plat-versatile/sched-clock.c
deleted file mode 100644
index ecb7913d2f53..000000000000
--- a/arch/arm/plat-versatile/sched-clock.c
+++ /dev/null
@@ -1,28 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- *  linux/arch/arm/plat-versatile/sched-clock.c
- *
- *  Copyright (C) 1999 - 2003 ARM Limited
- *  Copyright (C) 2000 Deep Blue Solutions Ltd
- */
-#include <linux/kernel.h>
-#include <linux/io.h>
-#include <linux/sched_clock.h>
-
-#include <plat/sched_clock.h>
-
-static void __iomem *ctr;
-
-static u64 notrace versatile_read_sched_clock(void)
-{
-	if (ctr)
-		return readl(ctr);
-
-	return 0;
-}
-
-void __init versatile_sched_clock_init(void __iomem *reg, unsigned long rate)
-{
-	ctr = reg;
-	sched_clock_register(versatile_read_sched_clock, 32, rate);
-}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
