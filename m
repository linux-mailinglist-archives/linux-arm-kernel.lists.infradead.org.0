Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8001A5653
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuUjNZvrCWGYB10sFwOpVmj1gL6OCJLTo81XdhaHUdk=; b=Xsf1KEcmbaHC/8
	gw85EvozS17zWuHt7FTJLqq7zD8eIPzIlGZ8+upD4W3kYO9L6LbVsOIQO45QgOoa4dufg/qQddJNw
	/s5Qlae/oAxyVFt+a/iT/koIbpxZQiR2mPFAsOmUcWh0yekKKcDkD4408yh4EaIlSlqhs/CA6PWaL
	nLpX9GUkC0l7STQViOqIbAcqciLwItWeD7KU1sm+Qy4cukIJDq8mQ9KtbWZD/XLowicg8e1K+P+Rg
	z1fW/4lUwf6hONlVRy2pz4mCf/f5volmFdx1LzimjdZjCz2vgkg999VgEF36wrfMSLceX4WCd1mCR
	Zz2GCNqF9FIYk8V+H8yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPLY-000552-Dz; Sat, 11 Apr 2020 23:15:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPFW-0003F2-Eb
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:09:22 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F37620787;
 Sat, 11 Apr 2020 23:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646558;
 bh=bLaxZ/NPHfxZjt73Vwsa8VK6rr+4Q8qM2jSIuZG+Jkw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iZx9JwaJW+1ZB/LStIl307VuGlUww9LCwtpuAPTuvUIV1qI846vEhntbE/r4yqn8B
 QZiHjD2c147sARoHar+MlGVfOZimVHfaX6Y44Pus+/OhHBVCqKQpk8wftTWDOSzlSC
 usSINQZ4GwcVOsZDc7gLXrqIA3WgKCuyKfwNTQpA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 107/121] ARM: shmobile: Enable ARM_GLOBAL_TIMER on
 Cortex-A9 MPCore SoCs
Date: Sat, 11 Apr 2020 19:06:52 -0400
Message-Id: <20200411230706.23855-107-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230706.23855-1-sashal@kernel.org>
References: <20200411230706.23855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160920_663232_396EB29F 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-renesas-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert+renesas@glider.be>

[ Upstream commit 408324a3c5383716939eea8096a0f999a0665f7e ]

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
Link: https://lore.kernel.org/r/20191211135222.26770-5-geert+renesas@glider.be
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-shmobile/setup-r8a7779.c | 1 -
 arch/arm/mach-shmobile/setup-sh73a0.c  | 1 -
 drivers/soc/renesas/Kconfig            | 2 ++
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-shmobile/setup-r8a7779.c b/arch/arm/mach-shmobile/setup-r8a7779.c
index b13ec9088ce53..86406e3f9b22e 100644
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
index cc08aa7522447..eb4a62fa42895 100644
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
index f93492b72c04e..60072242fa6e1 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
