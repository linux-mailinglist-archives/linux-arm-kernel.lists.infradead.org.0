Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B84D179C0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 23:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8Vlq9pVM/l96Qe2mo+b3KuwnWLUffP3Jo1YSdAYoIU=; b=DQTFSOvTRRVjiA
	hmb+MCD13Q44BT0P9ZUb4m0RJXIvjB9WAIlKyh7zON+2pcvYTbLtZQkKBX9UmewcjKWeN+DR/2f2b
	fCUVO2RpZu0nixV0wufc+VUQfQac24ck++elGWxeGT1UUOmu36fbjvVDXeHo2JyD5xVTSkXueARZB
	jCRNf/RXUhPczufbJNgPCx7Fcq3obibjicl1VjSoubNeU/pbZRyqbFXI/x7y8O3PSksQ8YObzDhpg
	YL133j82OVRH1mpuAg38UmbptYTZmFyA6kMtVKPJVjdvXu1PB5YF7Ro6VQFwUhZvC+qZANST9d1ss
	edD54UUXT7XBZVvUJYxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9cvg-0008AT-Tt; Wed, 04 Mar 2020 22:55:52 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9cuc-0006JB-3U
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 22:54:49 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id E791D8185;
 Wed,  4 Mar 2020 22:55:27 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 1/3] ARM: OMAP2+: Handle errors for cpu_pm
Date: Wed,  4 Mar 2020 14:54:30 -0800
Message-Id: <20200304225433.37336-2-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200304225433.37336-1-tony@atomide.com>
References: <20200304225433.37336-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_145446_192333_6EDFE229 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tero Kristo <t-kristo@ti.com>, linux-gpio@vger.kernel.org,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to check for errors when calling cpu_pm_enter() and
cpu_cluster_pm_enter(). And we need to bail out on errors as
otherwise we can enter a deeper idle state when not desired.

I'm not aware of the lack of error handling causing issues yet,
but we need this at least for blocking deeper idle states when
a GPIO instance has pending interrupts.

Cc: Dave Gerlach <d-gerlach@ti.com>
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Ladislav Michl <ladis@linux-mips.org>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/cpuidle34xx.c |  9 +++++++--
 arch/arm/mach-omap2/cpuidle44xx.c | 26 +++++++++++++++++---------
 arch/arm/mach-omap2/pm34xx.c      |  8 ++++++--
 3 files changed, 30 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-omap2/cpuidle34xx.c b/arch/arm/mach-omap2/cpuidle34xx.c
--- a/arch/arm/mach-omap2/cpuidle34xx.c
+++ b/arch/arm/mach-omap2/cpuidle34xx.c
@@ -109,6 +109,7 @@ static int omap3_enter_idle(struct cpuidle_device *dev,
 			    int index)
 {
 	struct omap3_idle_statedata *cx = &omap3_idle_data[index];
+	int error;
 
 	if (omap_irq_pending() || need_resched())
 		goto return_sleep_time;
@@ -125,8 +126,11 @@ static int omap3_enter_idle(struct cpuidle_device *dev,
 	 * Call idle CPU PM enter notifier chain so that
 	 * VFP context is saved.
 	 */
-	if (cx->mpu_state == PWRDM_POWER_OFF)
-		cpu_pm_enter();
+	if (cx->mpu_state == PWRDM_POWER_OFF) {
+		error = cpu_pm_enter();
+		if (error)
+			goto out_clkdm_set;
+	}
 
 	/* Execute ARM wfi */
 	omap_sram_idle();
@@ -139,6 +143,7 @@ static int omap3_enter_idle(struct cpuidle_device *dev,
 	    pwrdm_read_prev_pwrst(mpu_pd) == PWRDM_POWER_OFF)
 		cpu_pm_exit();
 
+out_clkdm_set:
 	/* Re-allow idle for C1 */
 	if (cx->flags & OMAP_CPUIDLE_CX_NO_CLKDM_IDLE)
 		clkdm_allow_idle(mpu_pd->pwrdm_clkdms[0]);
diff --git a/arch/arm/mach-omap2/cpuidle44xx.c b/arch/arm/mach-omap2/cpuidle44xx.c
--- a/arch/arm/mach-omap2/cpuidle44xx.c
+++ b/arch/arm/mach-omap2/cpuidle44xx.c
@@ -122,6 +122,7 @@ static int omap_enter_idle_coupled(struct cpuidle_device *dev,
 {
 	struct idle_statedata *cx = state_ptr + index;
 	u32 mpuss_can_lose_context = 0;
+	int error;
 
 	/*
 	 * CPU0 has to wait and stay ON until CPU1 is OFF state.
@@ -159,7 +160,9 @@ static int omap_enter_idle_coupled(struct cpuidle_device *dev,
 	 * Call idle CPU PM enter notifier chain so that
 	 * VFP and per CPU interrupt context is saved.
 	 */
-	cpu_pm_enter();
+	error = cpu_pm_enter();
+	if (error)
+		goto cpu_pm_out;
 
 	if (dev->cpu == 0) {
 		pwrdm_set_logic_retst(mpu_pd, cx->mpu_logic_state);
@@ -169,13 +172,17 @@ static int omap_enter_idle_coupled(struct cpuidle_device *dev,
 		 * Call idle CPU cluster PM enter notifier chain
 		 * to save GIC and wakeupgen context.
 		 */
-		if (mpuss_can_lose_context)
-			cpu_cluster_pm_enter();
+		if (mpuss_can_lose_context) {
+			error = cpu_cluster_pm_enter();
+			if (error)
+				goto cpu_cluster_pm_out;
+		}
 	}
 
 	omap4_enter_lowpower(dev->cpu, cx->cpu_state);
 	cpu_done[dev->cpu] = true;
 
+cpu_cluster_pm_out:
 	/* Wakeup CPU1 only if it is not offlined */
 	if (dev->cpu == 0 && cpumask_test_cpu(1, cpu_online_mask)) {
 
@@ -197,12 +204,6 @@ static int omap_enter_idle_coupled(struct cpuidle_device *dev,
 		}
 	}
 
-	/*
-	 * Call idle CPU PM exit notifier chain to restore
-	 * VFP and per CPU IRQ context.
-	 */
-	cpu_pm_exit();
-
 	/*
 	 * Call idle CPU cluster PM exit notifier chain
 	 * to restore GIC and wakeupgen context.
@@ -210,6 +211,13 @@ static int omap_enter_idle_coupled(struct cpuidle_device *dev,
 	if (dev->cpu == 0 && mpuss_can_lose_context)
 		cpu_cluster_pm_exit();
 
+	/*
+	 * Call idle CPU PM exit notifier chain to restore
+	 * VFP and per CPU IRQ context.
+	 */
+	cpu_pm_exit();
+
+cpu_pm_out:
 	tick_broadcast_exit();
 
 fail:
diff --git a/arch/arm/mach-omap2/pm34xx.c b/arch/arm/mach-omap2/pm34xx.c
--- a/arch/arm/mach-omap2/pm34xx.c
+++ b/arch/arm/mach-omap2/pm34xx.c
@@ -191,6 +191,7 @@ void omap_sram_idle(void)
 	int per_next_state = PWRDM_POWER_ON;
 	int core_next_state = PWRDM_POWER_ON;
 	u32 sdrc_pwr = 0;
+	int error;
 
 	mpu_next_state = pwrdm_read_next_pwrst(mpu_pwrdm);
 	switch (mpu_next_state) {
@@ -219,8 +220,11 @@ void omap_sram_idle(void)
 	pwrdm_pre_transition(NULL);
 
 	/* PER */
-	if (per_next_state == PWRDM_POWER_OFF)
-		cpu_cluster_pm_enter();
+	if (per_next_state == PWRDM_POWER_OFF) {
+		error = cpu_cluster_pm_enter();
+		if (error)
+			return;
+	}
 
 	/* CORE */
 	if (core_next_state < PWRDM_POWER_ON) {
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
