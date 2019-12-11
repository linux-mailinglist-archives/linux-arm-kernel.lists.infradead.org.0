Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2061A11AC78
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:53:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=72dw/nfQka/46LZubzMcqgOyD7PK6yUIYGFDvAhe3mo=; b=kVwY+3nSvTENKEUQOl+Sws+nPz
	7ogGfg1PAFKL1PaauWC6y+enPyOrOxKiwjG1HeaajispPKkPIeiVTT1GO0DMWrbWlF3VgVWmy9NNd
	HuXrVoH3JdUOVHyGSyXZ0UNZpwGj6Ggc8DSHRi0TDTBo9oES0HdxVsBRA1f7FcDpQPmMtdH7gbBwq
	VWdPyIVZxuIanTeaRPTtIryVBNUS5TdcbiPXAOM2r9ajriijEyGdOxWgeC6GWTTDyuBS4ed0ko8Mk
	GGE9DjBkULpHgFHSs5Nsk2Mg991vkJQOd/xCY9bA0PZb7wLspiv6+bs6N3d/f/H/ssoPdIvh3iHb3
	b54MxySQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2QN-0002OY-JK; Wed, 11 Dec 2019 13:53:07 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2Pm-0001qg-Ak
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:52:33 +0000
Received: from ramsan ([84.195.182.253])
 by baptiste.telenet-ops.be with bizsmtp
 id cdsP2100J5USYZQ01dsPbB; Wed, 11 Dec 2019 14:52:23 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1if2Pf-00014M-PC; Wed, 11 Dec 2019 14:52:23 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1if2Pf-0006yk-Nz; Wed, 11 Dec 2019 14:52:23 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 4/4] ARM: shmobile: Enable ARM_GLOBAL_TIMER on Cortex-A9
 MPCore SoCs
Date: Wed, 11 Dec 2019 14:52:22 +0100
Message-Id: <20191211135222.26770-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211135222.26770-1-geert+renesas@glider.be>
References: <20191211135222.26770-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_055230_540956_3747DB9A 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SH-Mobile AG5 and R-Car H1 SoCs are based on the Cortex-A9 MPCore, which
includes a global timer.

Enable the ARM global timer on these SoCs, which will be used for:
  - the scheduler clock, improving scheduler accuracy from 10 ms to 3 or
    4 ns,
  - delay loops, allowing removal of calls to shmobile_init_delay() from
    the corresponding machine vectors.

Note that when using an old DTB lacking the global timer, the kernel
will still work.  However, loops-per-jiffies will no longer be preset,
and the delay loop will need to be calibrated during boot.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - Rebased
---
 arch/arm/mach-shmobile/setup-r8a7779.c | 1 -
 arch/arm/mach-shmobile/setup-sh73a0.c  | 1 -
 drivers/soc/renesas/Kconfig            | 2 ++
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-shmobile/setup-r8a7779.c b/arch/arm/mach-shmobile/setup-r8a7779.c
index b13ec9088ce5354c..86406e3f9b22e31f 100644
--- a/arch/arm/mach-shmobile/setup-r8a7779.c
+++ b/arch/arm/mach-shmobile/setup-r8a7779.c
@@ -72,7 +72,6 @@ static const char *const r8a7779_compat_dt[] __initconst = {
 DT_MACHINE_START(R8A7779_DT, "Generic R8A7779 (Flattened Device Tree)")
 	.smp		= smp_ops(r8a7779_smp_ops),
 	.map_io		= r8a7779_map_io,
-	.init_early	= shmobile_init_delay,
 	.init_irq	= r8a7779_init_irq_dt,
 	.init_late	= shmobile_init_late,
 	.dt_compat	= r8a7779_compat_dt,
diff --git a/arch/arm/mach-shmobile/setup-sh73a0.c b/arch/arm/mach-shmobile/setup-sh73a0.c
index 4b7d07a36a24aa75..cac92edd2b8879cc 100644
--- a/arch/arm/mach-shmobile/setup-sh73a0.c
+++ b/arch/arm/mach-shmobile/setup-sh73a0.c
@@ -56,7 +56,6 @@ static const char *const sh73a0_boards_compat_dt[] __initconst = {
 DT_MACHINE_START(SH73A0_DT, "Generic SH73A0 (Flattened Device Tree)")
 	.smp		= smp_ops(sh73a0_smp_ops),
 	.map_io		= sh73a0_map_io,
-	.init_early	= shmobile_init_delay,
 	.init_machine	= sh73a0_generic_init,
 	.init_late	= shmobile_init_late,
 	.dt_compat	= sh73a0_boards_compat_dt,
diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 2d10e34cdbe4d117..f87a7466171c5eba 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -116,6 +116,7 @@ config ARCH_R8A7779
 	bool "R-Car H1 (R8A77790)"
 	select ARCH_RCAR_GEN1
 	select ARM_ERRATA_754322
+	select ARM_GLOBAL_TIMER
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
 	select SYSC_R8A7779
@@ -163,6 +164,7 @@ config ARCH_SH73A0
 	bool "SH-Mobile AG5 (R8A73A00)"
 	select ARCH_RMOBILE
 	select ARM_ERRATA_754322
+	select ARM_GLOBAL_TIMER
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
 	select RENESAS_INTC_IRQPIN
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
