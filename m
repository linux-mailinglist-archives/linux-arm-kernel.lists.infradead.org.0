Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED46A402E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTmQdDlcq+iQCCTMMZ4qhmhppMPxYNa8bxx0t3wPtcQ=; b=NnWY3TxfPJTBHj
	+60BcVOHtJW+FnPKRNiX95dc7dIIDz3fHal/AAjL7tpdNaOOP6ubqN90G4CAhHrphnuDk0YzRJVEH
	63jn96hUK18WEGlrdY4FsdJNdwa2IJLsAsVppA6a/9UOu8e4OGa5+xswPVC9aBNyTXVIGQJT552VX
	P2huV8fmLcXsLE1tO9mJYuoH961ya3O8ieWjy48JIXuuV/mYNlZs+Lb9P22V6b3YUJ06otXNQ2883
	G2jnDxTudAccI2g8ZS9HQx40a6DPh1uK6WCfWQprcmf+pxpRtOJcQsCdug8qoqza09dXnJqEi+Xtd
	7NXTl4Lp2kHPjc84xe6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3p7K-0003NB-2w; Fri, 30 Aug 2019 22:11:38 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3p4j-00005z-Ok
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:08:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 11A8AD8823;
 Sat, 31 Aug 2019 00:08:56 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 22cCTkkRqf53; Sat, 31 Aug 2019 00:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 87A94D87F2;
 Sat, 31 Aug 2019 00:08:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id x2B2gZoGgtqq; Sat, 31 Aug 2019 00:07:59 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id DF268D87F3;
 Sat, 31 Aug 2019 00:07:52 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: "To : Olof Johansson" <olof@lixom.net>
Subject: [PATCH v3 13/16] ARM: mmp: move cputype.h to include/linux/soc/
Date: Sat, 31 Aug 2019 00:07:40 +0200
Message-Id: <20190830220743.439670-14-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190830220743.439670-1-lkundrak@v3.sk>
References: <20190830220743.439670-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_150858_316440_ED6DF3DD 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let's move cputype.h away from mach-mmp/ so that the drivers outside that
directory are able to tell the precise silicon revision. The MMP3 USB OTG
PHY driver needs this.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 MAINTAINERS                                            | 1 +
 arch/arm/mach-mmp/common.c                             | 2 +-
 arch/arm/mach-mmp/devices.c                            | 2 +-
 arch/arm/mach-mmp/mmp2.c                               | 2 +-
 arch/arm/mach-mmp/pm-mmp2.c                            | 2 +-
 arch/arm/mach-mmp/pm-pxa910.c                          | 2 +-
 arch/arm/mach-mmp/pxa168.c                             | 2 +-
 arch/arm/mach-mmp/pxa910.c                             | 2 +-
 arch/arm/mach-mmp/time.c                               | 2 +-
 {arch/arm/mach-mmp => include/linux/soc/mmp}/cputype.h | 0
 10 files changed, 9 insertions(+), 8 deletions(-)
 rename {arch/arm/mach-mmp => include/linux/soc/mmp}/cputype.h (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9cbcf167bdd08..176ef19f0b9db 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10797,6 +10797,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Odd Fixes
 F:	arch/arm/boot/dts/mmp*
 F:	arch/arm/mach-mmp/
+F:	linux/soc/mmp/
 
 MMU GATHER AND TLB INVALIDATION
 M:	Will Deacon <will@kernel.org>
diff --git a/arch/arm/mach-mmp/common.c b/arch/arm/mach-mmp/common.c
index 24c689a01ecb7..e94349d4726ca 100644
--- a/arch/arm/mach-mmp/common.c
+++ b/arch/arm/mach-mmp/common.c
@@ -13,7 +13,7 @@
 #include <asm/mach/map.h>
 #include <asm/system_misc.h>
 #include "addr-map.h"
-#include "cputype.h"
+#include <linux/soc/mmp/cputype.h>
 
 #include "common.h"
 
diff --git a/arch/arm/mach-mmp/devices.c b/arch/arm/mach-mmp/devices.c
index 130c1a603ba29..18bee66a671ff 100644
--- a/arch/arm/mach-mmp/devices.c
+++ b/arch/arm/mach-mmp/devices.c
@@ -11,7 +11,7 @@
 #include <asm/irq.h>
 #include "irqs.h"
 #include "devices.h"
-#include "cputype.h"
+#include <linux/soc/mmp/cputype.h>
 #include "regs-usb.h"
 
 int __init pxa_register_device(struct pxa_device_desc *desc,
diff --git a/arch/arm/mach-mmp/mmp2.c b/arch/arm/mach-mmp/mmp2.c
index 18ea3e1a26e69..bbc4c2274de3a 100644
--- a/arch/arm/mach-mmp/mmp2.c
+++ b/arch/arm/mach-mmp/mmp2.c
@@ -20,7 +20,7 @@
 #include <asm/mach/time.h>
 #include "addr-map.h"
 #include "regs-apbc.h"
-#include "cputype.h"
+#include <linux/soc/mmp/cputype.h>
 #include "irqs.h"
 #include "mfp.h"
 #include "devices.h"
diff --git a/arch/arm/mach-mmp/pm-mmp2.c b/arch/arm/mach-mmp/pm-mmp2.c
index 2923dd5732a62..2d86381e152d6 100644
--- a/arch/arm/mach-mmp/pm-mmp2.c
+++ b/arch/arm/mach-mmp/pm-mmp2.c
@@ -17,7 +17,7 @@
 #include <linux/interrupt.h>
 #include <asm/mach-types.h>
 
-#include "cputype.h"
+#include <linux/soc/mmp/cputype.h>
 #include "addr-map.h"
 #include "pm-mmp2.h"
 #include "regs-icu.h"
diff --git a/arch/arm/mach-mmp/pm-pxa910.c b/arch/arm/mach-mmp/pm-pxa910.c
index 58535ce206dc5..69ebe18ff209f 100644
--- a/arch/arm/mach-mmp/pm-pxa910.c
+++ b/arch/arm/mach-mmp/pm-pxa910.c
@@ -18,7 +18,7 @@
 #include <asm/mach-types.h>
 #include <asm/outercache.h>
 
-#include "cputype.h"
+#include <linux/soc/mmp/cputype.h>
 #include "addr-map.h"
 #include "pm-pxa910.h"
 #include "regs-icu.h"
diff --git a/arch/arm/mach-mmp/pxa168.c b/arch/arm/mach-mmp/pxa168.c
index 6e02774889679..b642e900727a5 100644
--- a/arch/arm/mach-mmp/pxa168.c
+++ b/arch/arm/mach-mmp/pxa168.c
@@ -21,7 +21,7 @@
 #include "addr-map.h"
 #include "clock.h"
 #include "common.h"
-#include "cputype.h"
+#include <linux/soc/mmp/cputype.h>
 #include "devices.h"
 #include "irqs.h"
 #include "mfp.h"
diff --git a/arch/arm/mach-mmp/pxa910.c b/arch/arm/mach-mmp/pxa910.c
index cba31c758dea6..b19a069d9fabe 100644
--- a/arch/arm/mach-mmp/pxa910.c
+++ b/arch/arm/mach-mmp/pxa910.c
@@ -18,7 +18,7 @@
 #include <asm/mach/time.h>
 #include "addr-map.h"
 #include "regs-apbc.h"
-#include "cputype.h"
+#include <linux/soc/mmp/cputype.h>
 #include "irqs.h"
 #include "mfp.h"
 #include "devices.h"
diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
index 8f4cacbf640e9..110dcb3314d13 100644
--- a/arch/arm/mach-mmp/time.c
+++ b/arch/arm/mach-mmp/time.c
@@ -33,7 +33,7 @@
 #include "regs-timers.h"
 #include "regs-apbc.h"
 #include "irqs.h"
-#include "cputype.h"
+#include <linux/soc/mmp/cputype.h>
 #include "clock.h"
 
 #define TIMERS_VIRT_BASE	TIMERS1_VIRT_BASE
diff --git a/arch/arm/mach-mmp/cputype.h b/include/linux/soc/mmp/cputype.h
similarity index 100%
rename from arch/arm/mach-mmp/cputype.h
rename to include/linux/soc/mmp/cputype.h
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
