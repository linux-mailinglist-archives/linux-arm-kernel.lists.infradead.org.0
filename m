Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D2F9A5D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 04:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZAOj+OZ6BA//KoH2u807o/ty+9gvAbFVKHQ00ol9isE=; b=pQp
	VdqlXHgVvAVnLL9/uupovco7+34pzZwC6oJedcar7PcJKa08308bVL1CVeMo6Rz2cHe10GG9Tycvz
	uNBvfvROLGELsYNKyGZwjLwRL9QHjobG8ix/+eUEK6SNfvcSH/D/dCMujH2Mud08cuIFTIOPC625D
	VztCF/PBH+c1tBvOCCRYEB9hP9jWBcWKVnThuQ7QhZHPn6FpaZEElrmAiyXhAwt6ZIIrCudjT4xAl
	Yy3OEn69MoOYxjZlgT3a7at1qRjIP2DH80Nv8t29iO9oO29chjgIQMOwnZulYvl/C+k4ejZjBt3GZ
	92dcFyByW3TbMrsxGTZqHlrDyLv3X+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zms-0002i8-4S; Fri, 23 Aug 2019 02:58:50 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zmd-0002hn-Po
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 02:58:37 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x7N2wDua012632;
 Fri, 23 Aug 2019 11:58:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x7N2wDua012632
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566529093;
 bh=8CosFU0pC2ctS3iNrA/qY5iVZIjxaMWMDqXin1AO7LU=;
 h=From:To:Cc:Subject:Date:From;
 b=Yf6o5wqGOxca7n5PZXCSlYBzIInSYk2Nv000Mt4NIkIcVz8rSQnsvfW9PIZDlqqz0
 i+1vweVR5eCqZA9iFLtHZBDlwPvVpHEBx9KqCAlPxb6TKfs0dhwEOheTQszwfiXHGh
 mICZM+hR7tjISdF+WMNRDRQcnIm15BifexxXESwU1HLbSKHZuQJdOk6+e7CIz9gJg9
 fJhD1Hzo0Xf8I2uTeVJBSDg1x5lA63RoFQsFktDIrLe8W+WhDu2v3KWb8JkRbkXDUa
 itg2weW3P3uSJsRhiHk787sKx07cUMeivpemvawtu7fd0UUdwJVmItVGR86sMyZFzE
 UKe55y3NyZxRQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: omap2: move platform-specific asm-offset.h to
 arch/arm/mach-omap2
Date: Fri, 23 Aug 2019 11:58:08 +0900
Message-Id: <20190823025808.11875-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_195836_054333_F9D4BEE4 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

<generated/ti-pm-asm-offsets.h> is only generated and included by
arch/arm/mach-omap2/, so it does not need to reside in the globally
visible include/generated/.

I renamed it to arch/arm/mach-omap2/pm-asm-offsets.h since the prefix
'ti-' is just redundant in mach-omap2/.

My main motivation of this change is to avoid the race condition for
the parallel build (-j) when CONFIG_IKHEADERS is enabled.

When it is enabled, all the headers under include/ are archived into
kernel/kheaders_data.tar.xz and exposed in the sysfs.

In the parallel build, we have no idea in which order files are built.

 - If ti-pm-asm-offsets.h is built before kheaders_data.tar.xz,
   the header will be included in the archive. Probably nobody will
   use it, but it is harmless except that it will increase the archive
   size needlessly.

 - If kheaders_data.tar.xz is built before ti-pm-asm-offsets.h,
   the header will not be included in the archive. However, in the next
   build, the archive will be re-generated to include the newly-found
   ti-pm-asm-offsets.h. This is not nice from the build system point
   of view.

 - If ti-pm-asm-offsets.h and kheaders_data.tar.xz are built at the
   same time, the corrupted header might be included in the archive,
   which does not look nice either.

This commit fixes the race.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Tested-by: Keerthy <j-keerthy@ti.com>
---

 arch/arm/mach-omap2/.gitignore  | 1 +
 arch/arm/mach-omap2/Makefile    | 5 +++--
 arch/arm/mach-omap2/sleep33xx.S | 2 +-
 arch/arm/mach-omap2/sleep43xx.S | 2 +-
 4 files changed, 6 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-omap2/.gitignore

diff --git a/arch/arm/mach-omap2/.gitignore b/arch/arm/mach-omap2/.gitignore
new file mode 100644
index 000000000000..79a8d6ea7152
--- /dev/null
+++ b/arch/arm/mach-omap2/.gitignore
@@ -0,0 +1 @@
+pm-asm-offsets.h
diff --git a/arch/arm/mach-omap2/Makefile b/arch/arm/mach-omap2/Makefile
index 600650551621..21c6d4bca3c0 100644
--- a/arch/arm/mach-omap2/Makefile
+++ b/arch/arm/mach-omap2/Makefile
@@ -223,9 +223,10 @@ obj-y					+= omap_phy_internal.o
 
 obj-$(CONFIG_MACH_OMAP2_TUSB6010)	+= usb-tusb6010.o
 
-include/generated/ti-pm-asm-offsets.h: arch/arm/mach-omap2/pm-asm-offsets.s FORCE
+$(obj)/pm-asm-offsets.h: $(obj)/pm-asm-offsets.s FORCE
 	$(call filechk,offsets,__TI_PM_ASM_OFFSETS_H__)
 
-$(obj)/sleep33xx.o $(obj)/sleep43xx.o: include/generated/ti-pm-asm-offsets.h
+$(obj)/sleep33xx.o $(obj)/sleep43xx.o: $(obj)/pm-asm-offsets.h
 
 targets += pm-asm-offsets.s
+clean-files += pm-asm-offsets.h
diff --git a/arch/arm/mach-omap2/sleep33xx.S b/arch/arm/mach-omap2/sleep33xx.S
index 68fee339d3f1..dc221249bc22 100644
--- a/arch/arm/mach-omap2/sleep33xx.S
+++ b/arch/arm/mach-omap2/sleep33xx.S
@@ -6,7 +6,6 @@
  *	Dave Gerlach, Vaibhav Bedia
  */
 
-#include <generated/ti-pm-asm-offsets.h>
 #include <linux/linkage.h>
 #include <linux/platform_data/pm33xx.h>
 #include <linux/ti-emif-sram.h>
@@ -15,6 +14,7 @@
 
 #include "iomap.h"
 #include "cm33xx.h"
+#include "pm-asm-offsets.h"
 
 #define AM33XX_CM_CLKCTRL_MODULESTATE_DISABLED			0x00030000
 #define AM33XX_CM_CLKCTRL_MODULEMODE_DISABLE			0x0003
diff --git a/arch/arm/mach-omap2/sleep43xx.S b/arch/arm/mach-omap2/sleep43xx.S
index c1f4e4852644..90d2907a2eb2 100644
--- a/arch/arm/mach-omap2/sleep43xx.S
+++ b/arch/arm/mach-omap2/sleep43xx.S
@@ -6,7 +6,6 @@
  *	Dave Gerlach, Vaibhav Bedia
  */
 
-#include <generated/ti-pm-asm-offsets.h>
 #include <linux/linkage.h>
 #include <linux/ti-emif-sram.h>
 #include <linux/platform_data/pm33xx.h>
@@ -19,6 +18,7 @@
 #include "iomap.h"
 #include "omap-secure.h"
 #include "omap44xx.h"
+#include "pm-asm-offsets.h"
 #include "prm33xx.h"
 #include "prcm43xx.h"
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
