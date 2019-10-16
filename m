Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5B5D987D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 19:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RpoLcCgxX3xYmAcQqyq0ZtQbeTHyAm8Obizvm6Y89Zw=; b=BxKRvJEkYJcXhZ
	22384BCGd/k0TxNQDaOJ6guvgq+vg2KkUVAtSxZ3f6OcpGniv9KBb4JC05MeZeLOD2fINdofxsEIY
	7/ych+EtSDx0h6R1uY3+Zng4R4IFzgD6WtsMlBqnBrRJzg1h3Mc6PUkAbygNchX7BoAmd+VaGja9X
	LZ5UIxVDZLK67c3jdszmWaHH6wd+SWyYhp2XQtJEtXkmHe8bhW/BzAmKSW5B3/HTpSrJCo1uzl7Yn
	Cvi2SNK7Rgtru5gciAjU557wG/07Ap4FdXLMdGl0V4o26w/XV7ZRWaETn1qu+L7LYOcxXPU343AX6
	04/VtVExqjTcD6cGu1PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKn7K-0003yn-Vy; Wed, 16 Oct 2019 17:29:47 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKn6w-0003q9-6B
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 17:29:23 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7BD498176;
 Wed, 16 Oct 2019 17:29:51 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 1/2] ARM: OMAP2+: Drop unused enable_wakeup and disable_wakeup
Date: Wed, 16 Oct 2019 10:29:08 -0700
Message-Id: <20191016172909.7115-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_102922_267751_282870BD 
X-CRM114-Status: GOOD (  11.70  )
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

We're only using static _enable_wakeup(), the others have no callers.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/omap_hwmod.c | 97 --------------------------------
 arch/arm/mach-omap2/omap_hwmod.h |  3 -
 2 files changed, 100 deletions(-)

diff --git a/arch/arm/mach-omap2/omap_hwmod.c b/arch/arm/mach-omap2/omap_hwmod.c
--- a/arch/arm/mach-omap2/omap_hwmod.c
+++ b/arch/arm/mach-omap2/omap_hwmod.c
@@ -623,39 +623,6 @@ static int _enable_wakeup(struct omap_hwmod *oh, u32 *v)
 	return 0;
 }
 
-/**
- * _disable_wakeup: clear OCP_SYSCONFIG.ENAWAKEUP bit in the hardware
- * @oh: struct omap_hwmod *
- *
- * Prevent the hardware module @oh to send wakeups.  Returns -EINVAL
- * upon error or 0 upon success.
- */
-static int _disable_wakeup(struct omap_hwmod *oh, u32 *v)
-{
-	if (!oh->class->sysc ||
-	    !((oh->class->sysc->sysc_flags & SYSC_HAS_ENAWAKEUP) ||
-	      (oh->class->sysc->idlemodes & SIDLE_SMART_WKUP) ||
-	      (oh->class->sysc->idlemodes & MSTANDBY_SMART_WKUP)))
-		return -EINVAL;
-
-	if (!oh->class->sysc->sysc_fields) {
-		WARN(1, "omap_hwmod: %s: offset struct for sysconfig not provided in class\n", oh->name);
-		return -EINVAL;
-	}
-
-	if (oh->class->sysc->sysc_flags & SYSC_HAS_ENAWAKEUP)
-		*v &= ~(0x1 << oh->class->sysc->sysc_fields->enwkup_shift);
-
-	if (oh->class->sysc->idlemodes & SIDLE_SMART_WKUP)
-		_set_slave_idlemode(oh, HWMOD_IDLEMODE_SMART, v);
-	if (oh->class->sysc->idlemodes & MSTANDBY_SMART_WKUP)
-		_set_master_standbymode(oh, HWMOD_IDLEMODE_SMART, v);
-
-	/* XXX test pwrdm_get_wken for this hwmod's subsystem */
-
-	return 0;
-}
-
 static struct clockdomain *_get_clkdm(struct omap_hwmod *oh)
 {
 	struct clk_hw_omap *clk;
@@ -3867,70 +3834,6 @@ void __iomem *omap_hwmod_get_mpu_rt_va(struct omap_hwmod *oh)
  * for context save/restore operations?
  */
 
-/**
- * omap_hwmod_enable_wakeup - allow device to wake up the system
- * @oh: struct omap_hwmod *
- *
- * Sets the module OCP socket ENAWAKEUP bit to allow the module to
- * send wakeups to the PRCM, and enable I/O ring wakeup events for
- * this IP block if it has dynamic mux entries.  Eventually this
- * should set PRCM wakeup registers to cause the PRCM to receive
- * wakeup events from the module.  Does not set any wakeup routing
- * registers beyond this point - if the module is to wake up any other
- * module or subsystem, that must be set separately.  Called by
- * omap_device code.  Returns -EINVAL on error or 0 upon success.
- */
-int omap_hwmod_enable_wakeup(struct omap_hwmod *oh)
-{
-	unsigned long flags;
-	u32 v;
-
-	spin_lock_irqsave(&oh->_lock, flags);
-
-	if (oh->class->sysc &&
-	    (oh->class->sysc->sysc_flags & SYSC_HAS_ENAWAKEUP)) {
-		v = oh->_sysc_cache;
-		_enable_wakeup(oh, &v);
-		_write_sysconfig(v, oh);
-	}
-
-	spin_unlock_irqrestore(&oh->_lock, flags);
-
-	return 0;
-}
-
-/**
- * omap_hwmod_disable_wakeup - prevent device from waking the system
- * @oh: struct omap_hwmod *
- *
- * Clears the module OCP socket ENAWAKEUP bit to prevent the module
- * from sending wakeups to the PRCM, and disable I/O ring wakeup
- * events for this IP block if it has dynamic mux entries.  Eventually
- * this should clear PRCM wakeup registers to cause the PRCM to ignore
- * wakeup events from the module.  Does not set any wakeup routing
- * registers beyond this point - if the module is to wake up any other
- * module or subsystem, that must be set separately.  Called by
- * omap_device code.  Returns -EINVAL on error or 0 upon success.
- */
-int omap_hwmod_disable_wakeup(struct omap_hwmod *oh)
-{
-	unsigned long flags;
-	u32 v;
-
-	spin_lock_irqsave(&oh->_lock, flags);
-
-	if (oh->class->sysc &&
-	    (oh->class->sysc->sysc_flags & SYSC_HAS_ENAWAKEUP)) {
-		v = oh->_sysc_cache;
-		_disable_wakeup(oh, &v);
-		_write_sysconfig(v, oh);
-	}
-
-	spin_unlock_irqrestore(&oh->_lock, flags);
-
-	return 0;
-}
-
 /**
  * omap_hwmod_assert_hardreset - assert the HW reset line of submodules
  * contained in the hwmod module.
diff --git a/arch/arm/mach-omap2/omap_hwmod.h b/arch/arm/mach-omap2/omap_hwmod.h
--- a/arch/arm/mach-omap2/omap_hwmod.h
+++ b/arch/arm/mach-omap2/omap_hwmod.h
@@ -646,9 +646,6 @@ int omap_hwmod_get_resource_byname(struct omap_hwmod *oh, unsigned int type,
 struct powerdomain *omap_hwmod_get_pwrdm(struct omap_hwmod *oh);
 void __iomem *omap_hwmod_get_mpu_rt_va(struct omap_hwmod *oh);
 
-int omap_hwmod_enable_wakeup(struct omap_hwmod *oh);
-int omap_hwmod_disable_wakeup(struct omap_hwmod *oh);
-
 int omap_hwmod_for_each_by_class(const char *classname,
 				 int (*fn)(struct omap_hwmod *oh,
 					   void *user),
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
