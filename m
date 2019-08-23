Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0209A5B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 04:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TbJBlNHIkMKRpy84gsmccMe8uajqIuY0tdYSH68AG20=; b=T8v
	ygqqLUnpes3b1NIosJw2t+C1OU42rM6Y33mEL/u4poLog7eVNMWmdNq4g1vilXNH4CIBlnSgSUCYK
	pZvVXH1muueFpmEdTwXAtQru2xxyBVUdKlFNNKqDJxUocKTcjV7piaPTwna5LsdY27vmA+6fRf9xW
	3g2wYnnXYbk/Dbi0mKNDkW/1S5LKFHFk2DUM0azOuJjJ4eYsPIExwZjLeNFbxyixZZduORS5Mrn+x
	5mkV8lCoUc1BahbGxERLrdIEoJ1rUefSwg8k478KPQABvRxmCpmKIlYnvUxh3QJ+Nj8pgHZ0daKhR
	g8tdzFyxlQtUFVwlfuz59cLlONeXdIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zZK-0004UU-FW; Fri, 23 Aug 2019 02:44:50 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zZ5-0004O4-Lz
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 02:44:37 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x7N2i1YP015237;
 Fri, 23 Aug 2019 11:44:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x7N2i1YP015237
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566528242;
 bh=RUQPvpeRirVgphhnQn/uX9bo3iR6wYuDL45CJSJJoug=;
 h=From:To:Cc:Subject:Date:From;
 b=nCKjhe3pKvSY21V/fQedzyEyJxixda6YkE/vIjR4gckiMxCR2Ri/HX7RmIyvBf2g5
 v+Wra+fyG/KES1p4LdTXY1GCqaUzcx3GDGAew8hVzH9tFfn6ekLFOGsjoMsjvR4ZAd
 7PjQ87z7iPsp/nnw94Izt8Z6bLGqTLHPcM1skMTCL5Hx2MGVE4836eraFocvVpkAP7
 Z1xj1Xf79DzUqiKvuODHuFbcY+NiUDSlq3/BiUUyIP9+GrNEvOafjDz45WBhUwXMwx
 TMM8RVgyCN6UIayVxau8Xk4Av/H/5+0PoiBrZSrbHbRBLDqNpqqBbrpGov0qVxFvrO
 /NQcwzyECOxGw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: at91: move platform-specific asm-offset.h to
 arch/arm/mach-at91
Date: Fri, 23 Aug 2019 11:43:45 +0900
Message-Id: <20190823024346.591-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_194436_092761_73A554D1 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

<generated/at91_pm_data-offsets.h> is only generated and included by
arch/arm/mach-at91/, so it does not need to reside in the globally
visible include/generated/.

I renamed it to arch/arm/mach-at91/pm_data-offsets.h since the prefix
'at91_' is just redundant in mach-at91/.

My main motivation of this change is to avoid the race condition for
the parallel build (-j) when CONFIG_IKHEADERS is enabled.

When it is enabled, all the headers under include/ are archived into
kernel/kheaders_data.tar.xz and exposed in the sysfs.

In the parallel build, we have no idea in which order files are built.

 - If at91_pm_data-offsets.h is built before kheaders_data.tar.xz,
   the header will be included in the archive. Probably nobody will
   use it, but it is harmless except that it will increase the archive
   size needlessly.

 - If kheaders_data.tar.xz is built before at91_pm_data-offsets.h,
   the header will not be included in the archive. However, in the next
   build, the archive will be re-generated to include the newly-found
   at91_pm_data-offsets.h. This is not nice from the build system point
   of view.

 - If at91_pm_data-offsets.h and kheaders_data.tar.xz are built at the
   same time, the corrupted header might be included in the archive,
   which does not look nice either.

This commit fixes the race.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/mach-at91/.gitignore   | 1 +
 arch/arm/mach-at91/Makefile     | 5 +++--
 arch/arm/mach-at91/pm_suspend.S | 2 +-
 3 files changed, 5 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-at91/.gitignore

diff --git a/arch/arm/mach-at91/.gitignore b/arch/arm/mach-at91/.gitignore
new file mode 100644
index 000000000000..2ecd6f51c8a9
--- /dev/null
+++ b/arch/arm/mach-at91/.gitignore
@@ -0,0 +1 @@
+pm_data-offsets.h
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 31b61f0e1c07..de64301dcff2 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -19,9 +19,10 @@ ifeq ($(CONFIG_PM_DEBUG),y)
 CFLAGS_pm.o += -DDEBUG
 endif
 
-include/generated/at91_pm_data-offsets.h: arch/arm/mach-at91/pm_data-offsets.s FORCE
+$(obj)/pm_data-offsets.h: $(obj)/pm_data-offsets.s FORCE
 	$(call filechk,offsets,__PM_DATA_OFFSETS_H__)
 
-arch/arm/mach-at91/pm_suspend.o: include/generated/at91_pm_data-offsets.h
+$(obj)/pm_suspend.o: $(obj)/pm_data-offsets.h
 
 targets += pm_data-offsets.s
+clean-files += pm_data-offsets.h
diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index c751f047b116..ed57c879d4e1 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -10,7 +10,7 @@
 #include <linux/linkage.h>
 #include <linux/clk/at91_pmc.h>
 #include "pm.h"
-#include "generated/at91_pm_data-offsets.h"
+#include "pm_data-offsets.h"
 
 #define	SRAMC_SELF_FRESH_ACTIVE		0x01
 #define	SRAMC_SELF_FRESH_EXIT		0x00
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
