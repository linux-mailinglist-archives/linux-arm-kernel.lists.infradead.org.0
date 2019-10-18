Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D64DC939
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilKm8CrZIQHfMs3fItCr33lI+0hvH2jEXcsHOiE88Oc=; b=b10+MUhEsGoyQf
	FLyKxcqpV4jvsn+PCSt5UvroQHJlwIRtI9B9PF9sH3EGtpks5UYrXuRkRRBAbJGP22HLTU3A90WQ6
	PlRv+n1ZP1uBUT3DlOpE8DgjBR04Z6uJJ2Szj6xxVU7Ohcd2+ZKgm4E3FIL+VAA6Qjdw+DCAmbXNj
	fcT3j2VudL/SUXnG9Lb9jip+d7m388WZ2gpreGSmuNDQuT3fN/OZfe71Lnjli/dxNpN1JJORYcecw
	u86xLlpKq+ia1QBZ2JmwbXlvSReGl0uhXmaZJ97x5BXaDKQEEtMPTKPXCPol6gF+ZzYM/t8yVMksb
	vH1Zlel8zbrkoCC5ljMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUQv-00011B-7U; Fri, 18 Oct 2019 15:44:53 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUOT-0007wF-1n
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:42:23 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Ma1sQ-1iZjSV3XfQ-00VxxB; Fri, 18 Oct 2019 17:42:15 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 04/46] ARM: pxa: remove mach/dma.h
Date: Fri, 18 Oct 2019 17:41:19 +0200
Message-Id: <20191018154201.1276638-4-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:8TEqedFajmaipFY2tALtoA/H+jJS4WGpQwTgWuusrkdQdWHNuVO
 QHvjOQ4t25vRotVV4diXErGEasck7HPqDt6GpHFVkLvbEkQI+GQfET3S70RAJlJ5K7xsDIi
 /JT/MsSzBXoGhIGkufaKffAh8a17LrK65QrGP4ZpZbKh7bA1Ort3DvBZtCaXSC1MXGnBqt3
 5FBjuSCJqE3t835Fuk3MQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kDHsLqbViLM=:gdEcYHN+QBvHq7vlsT8h6G
 rIGd6V+0LqTPOWZ6S8hgGy6fTAJ9F+Au3XPG297KTnq1+aFW5sQYcApZGnbJ1jZS0+uu3Ob94
 e+9lO7+WV91QDbE98EBrF2cyskafdp61gdsu5juu6ftv8zntJY+yekueOHIxuVv0Yf4Y/JU1I
 RjqKLsjpmwFxd/I5qWCD1dkoWf0VtZ4knKajUzn3q29TRQVzo+wBFdTqMGQqqohV1Cytr0dD3
 JPefTEm6jjbPHLWeEVDypxmcKqVhIO3N/tsyjL8nZ7wAt4v2j+1GBwIjbh0jPWo6OhKbT2a4U
 /1LT2dw6P9NkGtt+y5nAY8EI4h64/6J68WWEXEJTHHHv2SxvfDmvtMI4VxQZpG+8ef8d9p+xB
 AeNwwEL1RbXk2Sddurem0eI9PxLCuUp39I6pfqtM+Ex7cYJRQ3QRIYiIVZCbcEHAh786NnFS1
 SncuqkQw7EGspdXOrtLuWW2F0TCLr5J+7sHEi0ZwnHpSNfD/rePdvKuYUc8X3JfuiwWhCnzat
 2QLdJtVCU8AL7d3Co1C0HT83+6TKe3El3M7XuobMyWR5EzRo5ip2fDa4LCmncPmEWQWcoid34
 4WyuYIvBlxAyUDfs062cMD2fu1lds1u+VojAv8md1lmUaluuIYmlhP59anUkliu5WP0HVcOec
 84RHI7NAlxnngv1AOhBBBJuKSJD+mYu/cfchkesOXCMWwY5dz1ZKibB2cdI8SPgk9muZ6zHtz
 4nknnkZv8hGEV1y0SUNEJt4DxFJX4ldHLvLTAJ7DdHX6Ag9857eIUWV+zHs8nG3vfwtPzRM0R
 zPHrCTRz5QW8bb4mKodalwCmevj3aod5ITWSe4i74R3FauW2T8oMG2DYaD0mFlCAdz6H4FeYz
 TPjqpZPT5EK0y78cUw6w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084221_397555_249B12B2 
X-CRM114-Status: GOOD (  11.06  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The file no longer contains anything useful, so remove it.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/include/mach/dma.h | 17 -----------------
 arch/arm/mach-pxa/pxa25x.c           |  1 -
 arch/arm/mach-pxa/pxa27x.c           |  1 -
 arch/arm/mach-pxa/pxa3xx.c           |  1 -
 4 files changed, 20 deletions(-)
 delete mode 100644 arch/arm/mach-pxa/include/mach/dma.h

diff --git a/arch/arm/mach-pxa/include/mach/dma.h b/arch/arm/mach-pxa/include/mach/dma.h
deleted file mode 100644
index 79f9842a7e1c..000000000000
--- a/arch/arm/mach-pxa/include/mach/dma.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- *  arch/arm/mach-pxa/include/mach/dma.h
- *
- *  Author:	Nicolas Pitre
- *  Created:	Jun 15, 2001
- *  Copyright:	MontaVista Software, Inc.
- */
-#ifndef __ASM_ARCH_DMA_H
-#define __ASM_ARCH_DMA_H
-
-#include <mach/hardware.h>
-
-/* DMA Controller Registers Definitions */
-#define DMAC_REGS_VIRT	io_p2v(0x40000000)
-
-#endif /* _ASM_ARCH_DMA_H */
diff --git a/arch/arm/mach-pxa/pxa25x.c b/arch/arm/mach-pxa/pxa25x.c
index 678641ab46e5..0d25cc45f825 100644
--- a/arch/arm/mach-pxa/pxa25x.c
+++ b/arch/arm/mach-pxa/pxa25x.c
@@ -34,7 +34,6 @@
 #include "pxa25x.h"
 #include <mach/reset.h>
 #include "pm.h"
-#include <mach/dma.h>
 #include <mach/smemc.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-pxa/pxa27x.c b/arch/arm/mach-pxa/pxa27x.c
index f0ba7ed24cb6..f7e89831e85b 100644
--- a/arch/arm/mach-pxa/pxa27x.c
+++ b/arch/arm/mach-pxa/pxa27x.c
@@ -33,7 +33,6 @@
 #include <mach/reset.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include "pm.h"
-#include <mach/dma.h>
 #include <mach/smemc.h>
 
 #include "generic.h"
diff --git a/arch/arm/mach-pxa/pxa3xx.c b/arch/arm/mach-pxa/pxa3xx.c
index 560160682df6..6eb1c24d7395 100644
--- a/arch/arm/mach-pxa/pxa3xx.c
+++ b/arch/arm/mach-pxa/pxa3xx.c
@@ -32,7 +32,6 @@
 #include <mach/reset.h>
 #include <linux/platform_data/usb-ohci-pxa27x.h>
 #include "pm.h"
-#include <mach/dma.h>
 #include <mach/smemc.h>
 #include <mach/irqs.h>
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
