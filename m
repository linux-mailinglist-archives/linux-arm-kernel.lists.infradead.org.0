Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E084B937
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aS+jgX8KScB3x8ZS+D/2py1iqrXsrz//9jxv0wVtttk=; b=BMpzaU0dqp5BCb
	f+3meyf8xfMPXp9/6PTDPkMz8aQqEQeK2hUvr0QaBgVt+cxNYO7oupat0ghBK66PRu+zEl4uG9dzl
	c59x2gBAnAcalUBifm5wXobsYl+0qmxlaojVuQDaDpV85NqWXFhdcA4acHjJ7NSO06JYNFf8593cc
	OWh5B1wxWzvMOIeL3Prapc0/jZ26kkQ/zt70ayfKTs7zJRHpIsRN0A5LRfg11o9kcvqDFmT/NDFok
	f3mubkfOW2XoY/e/CwHAHVi/ggkEY3Ce+FFVri19iC1NtN9mgPc+m8BvvYhoTNZGh4PA82GXL2Zi3
	0rqpvKNisR3/zwhnywsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hda8F-0006HR-Hj; Wed, 19 Jun 2019 12:56:07 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hda87-0006Gt-3i
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:56:00 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mna0x-1iN3th1WTd-00jb2X; Wed, 19 Jun 2019 14:55:48 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] ARM: exynos: only build mcpm support if used
Date: Wed, 19 Jun 2019 14:55:29 +0200
Message-Id: <20190619125545.1087023-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:8lSv7z+Az3irPtD3mBB1X3CyVNiokLNe5prcDUQOA+DJCgdNyTg
 5HSfU0ojjXGl3H8v+ZOW1BF3QjWfGmLd45HQYerFQo1hF6TOJzjmg6CkfWrDRye+Rzi8qBH
 /T/44D9/lYapFuhEwutzgfKwYjiA+hdiwTmPO8CETObOh3B+m5z9ouWT/F2LMF72K5FF4RV
 3C2EoYdsB4fpZ7kUqHWHg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rtxPUz4OOkQ=:fDfYCbeOzs7Zzr9OmJxvjt
 yyB51ipVi9MfHI95lXT3mMbcckRT44/OfhgO/r8f/AiyrzQyXzaQn44vC3PeuNqLnrz+zKklE
 2mp4HStkOI0sZZ3PZqkzHIkRDMvKaR+RW7SRv/CrzoPRnh9R8I5MFA8G7ZV8cuXegPXp+z3i4
 80rK0Q1MT1RGT2oFiP7i7JB0ntt4u9x7hO55iWlSChLooK3AbPpbX52fngBz7xBELYhz11Dox
 tZFYgHdvr/YIR92bEYwobWpOGYoFjjXnJyRyC++Wmz3qhbmAaxoSnxhDVbA83VxrlWbwplf80
 tC0EFzKa/8MWTQqI6YwZEDwPB15n32VZtxHyfLPfG9nKKpMRaTDM032HVXWjgYB0fpkeoVBc5
 7BGwvvwsNNhKDCwzLmW5gg8hlsxqpwsKE09Ayv8jpixGgyKx9PWTu4KLMs8QdiCi4CzCtbKjw
 xOtIJjw8LelXoTVhPJUW77gWUsB3DV1pDXnbRjPSew3jxOmvaYqNS/ZEkG2dYGVwFDPWg9QEP
 T67FlDy2N9tapg8l7NA2nKo5VX4JydvE94f9TwFTVl36Yij/JggC3q6Qy2c7Zil139XbUI6gT
 0NZNubaTFeDdIqeji6In7y/qj/j+kpCpvKqrQKvjwpDITPUmuuxjnTA7Q2ExUu6jwyc8wsR6o
 do/Cl7vDEhdSHQU5IXkcA+/wqOofmQLi+6H28GTyxykr1XNboFaj/MZIGBXWbUo95zs82n0+O
 5z1/97vGrraG7S9A6ibHFYEdxNQmrzy5K4aFnw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_055559_450388_6905FDFB 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tomasz.figa@gmail.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We get a link error for configurations that enable an exynos
SoC that does not require mcpm, but then manually enable
mcpm anyway wihtout also turning on the arm-cci:

arch/arm/mach-exynos/mcpm-exynos.o: In function `exynos_pm_power_up_setup':
mcpm-exynos.c:(.text+0x8): undefined reference to `cci_enable_port_for_self'

Change it back to only build the code we actually need, by
introducing a CONFIG_EXYNOS_MCPM that serves the same purpose
as the older CONFIG_EXYNOS5420_MCPM.

Fixes: 2997520c2d4e ("ARM: exynos: Set MCPM as mandatory for Exynos542x/5800 SoCs")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-exynos/Kconfig   | 6 +++++-
 arch/arm/mach-exynos/Makefile  | 2 +-
 arch/arm/mach-exynos/suspend.c | 6 +++---
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 21ad78d79d8d..d7422233a130 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -107,7 +107,7 @@ config SOC_EXYNOS5420
 	bool "SAMSUNG EXYNOS5420"
 	default y
 	depends on ARCH_EXYNOS5
-	select MCPM if SMP
+	select EXYNOS_MCPM if SMP
 	select ARM_CCI400_PORT_CTRL
 	select ARM_CPU_SUSPEND
 
@@ -116,6 +116,10 @@ config SOC_EXYNOS5800
 	default y
 	depends on SOC_EXYNOS5420
 
+config EXYNOS_MCPM
+	bool
+	select MCPM
+
 config EXYNOS_CPU_SUSPEND
 	bool
 	select ARM_CPU_SUSPEND
diff --git a/arch/arm/mach-exynos/Makefile b/arch/arm/mach-exynos/Makefile
index 264dbaa89c3d..5abf3db23912 100644
--- a/arch/arm/mach-exynos/Makefile
+++ b/arch/arm/mach-exynos/Makefile
@@ -18,5 +18,5 @@ plus_sec := $(call as-instr,.arch_extension sec,+sec)
 AFLAGS_exynos-smc.o		:=-Wa,-march=armv7-a$(plus_sec)
 AFLAGS_sleep.o			:=-Wa,-march=armv7-a$(plus_sec)
 
-obj-$(CONFIG_MCPM)		+= mcpm-exynos.o
+obj-$(CONFIG_EXYNOS_MCPM)	+= mcpm-exynos.o
 CFLAGS_mcpm-exynos.o		+= -march=armv7-a
diff --git a/arch/arm/mach-exynos/suspend.c b/arch/arm/mach-exynos/suspend.c
index be122af0de8f..8b1e6ab8504f 100644
--- a/arch/arm/mach-exynos/suspend.c
+++ b/arch/arm/mach-exynos/suspend.c
@@ -268,7 +268,7 @@ static int exynos5420_cpu_suspend(unsigned long arg)
 	unsigned int cluster = MPIDR_AFFINITY_LEVEL(mpidr, 1);
 	unsigned int cpu = MPIDR_AFFINITY_LEVEL(mpidr, 0);
 
-	if (IS_ENABLED(CONFIG_MCPM)) {
+	if (IS_ENABLED(CONFIG_EXYNOS_MCPM)) {
 		mcpm_set_entry_vector(cpu, cluster, exynos_cpu_resume);
 		mcpm_cpu_suspend();
 	}
@@ -351,7 +351,7 @@ static void exynos5420_pm_prepare(void)
 	exynos_pm_enter_sleep_mode();
 
 	/* ensure at least INFORM0 has the resume address */
-	if (IS_ENABLED(CONFIG_MCPM))
+	if (IS_ENABLED(CONFIG_EXYNOS_MCPM))
 		pmu_raw_writel(__pa_symbol(mcpm_entry_point), S5P_INFORM0);
 
 	tmp = pmu_raw_readl(EXYNOS_L2_OPTION(0));
@@ -455,7 +455,7 @@ static void exynos5420_prepare_pm_resume(void)
 	mpidr = read_cpuid_mpidr();
 	cluster = MPIDR_AFFINITY_LEVEL(mpidr, 1);
 
-	if (IS_ENABLED(CONFIG_MCPM))
+	if (IS_ENABLED(CONFIG_EXYNOS_MCPM))
 		WARN_ON(mcpm_cpu_powered_up());
 
 	if (IS_ENABLED(CONFIG_HW_PERF_EVENTS) && cluster != 0) {
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
