Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7241D987C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTkL/Xnw4oWALSj8ye9s92GaRL+j16CcTOW2YKzPl/Q=; b=Pk7l0y0qrw6UeB
	ctiFAzQYKtLpPPd3QOVcRoL3p89OT/1/ZPZVqezzv1nyCFVH783XvVIglf7is1KmAWIO7AjPiXy0Y
	VnsvkibPvg7Qo+/w0YgjIaF33q2uUsmIqUYocIa6teS8N904Kit4oI9NIORBtC7DjLZuNcSs8yHLC
	eVSGcGjnmcuTFYkeSrb4vU2Vrexr9qDqaiXatHksKsZZVNnh+DFMj4njomj5uk/GgAedMwVMRQAtj
	6tXsdP1g0S9WcFG6tyz/YkI74Y8rKM8FMj95o3Wnbv0JR0ge6vPtCUjzf1SQ3auIKxgOHrLSjW9KK
	cjDdZd6Ph41CWAuZZ1Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKn76-0003qx-NE; Wed, 16 Oct 2019 17:29:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKn6w-0003qB-6G
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 17:29:23 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id D11C18198;
 Wed, 16 Oct 2019 17:29:52 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/2] ARM: OMAP2+: Simplify code for clkdm_clock_enable and
 disable
Date: Wed, 16 Oct 2019 10:29:09 -0700
Message-Id: <20191016172909.7115-2-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016172909.7115-1-tony@atomide.com>
References: <20191016172909.7115-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_102922_268128_E5E167B1 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Tero Kristo <t-kristo@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can make clkdm_clk_enable() usable for clkdm_hwmod_enable() by
dropping the unused clock check, and drop _clkdm_clk_hwmod_enable().

And we can make clkdm_hwmod_disable() call clkdm_hwmod_disable() and drop
the duplicate code in clkdm_hwmod_disable().

Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/clockdomain.c | 78 ++++++++-----------------------
 1 file changed, 20 insertions(+), 58 deletions(-)

diff --git a/arch/arm/mach-omap2/clockdomain.c b/arch/arm/mach-omap2/clockdomain.c
--- a/arch/arm/mach-omap2/clockdomain.c
+++ b/arch/arm/mach-omap2/clockdomain.c
@@ -1147,7 +1147,21 @@ void clkdm_del_autodeps(struct clockdomain *clkdm)
 
 /* Clockdomain-to-clock/hwmod framework interface code */
 
-static int _clkdm_clk_hwmod_enable(struct clockdomain *clkdm)
+/**
+ * clkdm_clk_enable - add an enabled downstream clock to this clkdm
+ * @clkdm: struct clockdomain *
+ * @clk: struct clk * of the enabled downstream clock
+ *
+ * Increment the usecount of the clockdomain @clkdm and ensure that it
+ * is awake before @clk is enabled.  Intended to be called by
+ * clk_enable() code.  If the clockdomain is in software-supervised
+ * idle mode, force the clockdomain to wake.  If the clockdomain is in
+ * hardware-supervised idle mode, add clkdm-pwrdm autodependencies, to
+ * ensure that devices in the clockdomain can be read from/written to
+ * by on-chip processors.  Returns -EINVAL if passed null pointers;
+ * returns 0 upon success or if the clockdomain is in hwsup idle mode.
+ */
+int clkdm_clk_enable(struct clockdomain *clkdm, struct clk *unused)
 {
 	if (!clkdm || !arch_clkdm || !arch_clkdm->clkdm_clk_enable)
 		return -EINVAL;
@@ -1174,33 +1188,6 @@ static int _clkdm_clk_hwmod_enable(struct clockdomain *clkdm)
 	return 0;
 }
 
-/**
- * clkdm_clk_enable - add an enabled downstream clock to this clkdm
- * @clkdm: struct clockdomain *
- * @clk: struct clk * of the enabled downstream clock
- *
- * Increment the usecount of the clockdomain @clkdm and ensure that it
- * is awake before @clk is enabled.  Intended to be called by
- * clk_enable() code.  If the clockdomain is in software-supervised
- * idle mode, force the clockdomain to wake.  If the clockdomain is in
- * hardware-supervised idle mode, add clkdm-pwrdm autodependencies, to
- * ensure that devices in the clockdomain can be read from/written to
- * by on-chip processors.  Returns -EINVAL if passed null pointers;
- * returns 0 upon success or if the clockdomain is in hwsup idle mode.
- */
-int clkdm_clk_enable(struct clockdomain *clkdm, struct clk *clk)
-{
-	/*
-	 * XXX Rewrite this code to maintain a list of enabled
-	 * downstream clocks for debugging purposes?
-	 */
-
-	if (!clk)
-		return -EINVAL;
-
-	return _clkdm_clk_hwmod_enable(clkdm);
-}
-
 /**
  * clkdm_clk_disable - remove an enabled downstream clock from this clkdm
  * @clkdm: struct clockdomain *
@@ -1216,13 +1203,13 @@ int clkdm_clk_enable(struct clockdomain *clkdm, struct clk *clk)
  */
 int clkdm_clk_disable(struct clockdomain *clkdm, struct clk *clk)
 {
-	if (!clkdm || !clk || !arch_clkdm || !arch_clkdm->clkdm_clk_disable)
+	if (!clkdm || !arch_clkdm || !arch_clkdm->clkdm_clk_disable)
 		return -EINVAL;
 
 	pwrdm_lock(clkdm->pwrdm.ptr);
 
 	/* corner case: disabling unused clocks */
-	if ((__clk_get_enable_count(clk) == 0) && clkdm->usecount == 0)
+	if (clk && (__clk_get_enable_count(clk) == 0) && clkdm->usecount == 0)
 		goto ccd_exit;
 
 	if (clkdm->usecount == 0) {
@@ -1277,7 +1264,7 @@ int clkdm_hwmod_enable(struct clockdomain *clkdm, struct omap_hwmod *oh)
 	if (!oh)
 		return -EINVAL;
 
-	return _clkdm_clk_hwmod_enable(clkdm);
+	return clkdm_clk_enable(clkdm, NULL);
 }
 
 /**
@@ -1300,35 +1287,10 @@ int clkdm_hwmod_disable(struct clockdomain *clkdm, struct omap_hwmod *oh)
 	if (cpu_is_omap24xx() || cpu_is_omap34xx())
 		return 0;
 
-	/*
-	 * XXX Rewrite this code to maintain a list of enabled
-	 * downstream hwmods for debugging purposes?
-	 */
-
-	if (!clkdm || !oh || !arch_clkdm || !arch_clkdm->clkdm_clk_disable)
+	if (!oh)
 		return -EINVAL;
 
-	pwrdm_lock(clkdm->pwrdm.ptr);
-
-	if (clkdm->usecount == 0) {
-		pwrdm_unlock(clkdm->pwrdm.ptr);
-		WARN_ON(1); /* underflow */
-		return -ERANGE;
-	}
-
-	clkdm->usecount--;
-	if (clkdm->usecount > 0) {
-		pwrdm_unlock(clkdm->pwrdm.ptr);
-		return 0;
-	}
-
-	arch_clkdm->clkdm_clk_disable(clkdm);
-	pwrdm_state_switch_nolock(clkdm->pwrdm.ptr);
-	pwrdm_unlock(clkdm->pwrdm.ptr);
-
-	pr_debug("clockdomain: %s: disabled\n", clkdm->name);
-
-	return 0;
+	return clkdm_clk_disable(clkdm, NULL);
 }
 
 /**
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
