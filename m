Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196F81D9CDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgTwAkRm6iJK3nI2x4MQjhS0x81QHTKKPZDcJONUniY=; b=hk1iAnObPOWSrg
	nguGTxUrFam1NAVgHcSBHce0OiDnOapOjQOOfH4ZkbCG4op34jKstyh40LkAauGTaWMGVg/vqQEFp
	CFOPt+3UWOwvAaTwJDbQvin13VtLIIaVOp47eub87RhPIP3YSaFbxkFn0rwsAxHjGx4TvEFCqB6yI
	TdwCBdxpuTu3B/g/d76w0h8O4DZXTHnNlu51nv4sXLfBVVRaXK4+BKd3WodBVfeNEJ1uBUpo4tkSh
	8BLw68ReRTx+7qaxxpBtblmrJs6h1/XryR6kYzvEDvcfp3U55+q8abC5u/wOHA0Xj+e5lJ+KfK2Nb
	NXAo6MLBcruk7HOuH68w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5Br-0001nt-Bb; Tue, 19 May 2020 16:34:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5BD-0001TD-3y
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:33:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5120D2081A;
 Tue, 19 May 2020 16:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589906002;
 bh=iPYo2NpmcQYEL/Oq/b9IlxETsTGKbEjWgKeRfJb8zs8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=F87WLNyn+iLgN/GOx1luE4CUex3ah1kssLHuBQBJ2Kufxl5wDuKzvZpDR/0C3CE03
 fz9Azya8NJKir3KIbJK2m4A06LYT9oN960pkz2GjPCzmEvCbW1Nee5fGTDzFoWC5O+
 CX6rG1H1IZGzKYTPRKDuCFTJ6JBhsW2MgO2vcKSw=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb4wk-00Decy-CX; Tue, 19 May 2020 17:18:26 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 11/11] arm64: Kill __smp_cross_call and co
Date: Tue, 19 May 2020 17:17:55 +0100
Message-Id: <20200519161755.209565-12-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519161755.209565-1-maz@kernel.org>
References: <20200519161755.209565-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, catalin.marinas@arm.com,
 linux@arm.linux.org.uk, tglx@linutronix.de, jason@lakedaemon.net,
 sumit.garg@linaro.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_093323_330824_4030244B 
X-CRM114-Status: GOOD (  15.33  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The old IPI registration interface is now unused on arm64, so let's
get rid of it.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/irq_work.h |  4 +---
 arch/arm64/include/asm/smp.h      |  7 -------
 arch/arm64/kernel/smp.c           | 34 +++++--------------------------
 3 files changed, 6 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/include/asm/irq_work.h b/arch/arm64/include/asm/irq_work.h
index 8a1ef1907760..a1020285ea75 100644
--- a/arch/arm64/include/asm/irq_work.h
+++ b/arch/arm64/include/asm/irq_work.h
@@ -2,11 +2,9 @@
 #ifndef __ASM_IRQ_WORK_H
 #define __ASM_IRQ_WORK_H
 
-#include <asm/smp.h>
-
 static inline bool arch_irq_work_has_interrupt(void)
 {
-	return !!__smp_cross_call;
+	return true;
 }
 
 #endif /* __ASM_IRQ_WORK_H */
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 42f366ba88bf..bec6ef0eb642 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -75,13 +75,6 @@ extern void handle_IPI(int ipinr, struct pt_regs *regs);
  */
 extern void smp_init_cpus(void);
 
-/*
- * Provide a function to raise an IPI cross call on CPUs in callmap.
- */
-extern void set_smp_cross_call(void (*)(const struct cpumask *, unsigned int));
-
-extern void (*__smp_cross_call)(const struct cpumask *, unsigned int);
-
 /*
  * Register IPI interrupts with the arch SMP code
  */
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 93ba0025e7b9..d29823ac515d 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -793,13 +793,6 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
 	}
 }
 
-void (*__smp_cross_call)(const struct cpumask *, unsigned int);
-
-void __init set_smp_cross_call(void (*fn)(const struct cpumask *, unsigned int))
-{
-	__smp_cross_call = fn;
-}
-
 static const char *ipi_types[NR_IPI] __tracepoint_string = {
 #define S(x,s)	[x] = s
 	S(IPI_RESCHEDULE, "Rescheduling interrupts"),
@@ -811,11 +804,7 @@ static const char *ipi_types[NR_IPI] __tracepoint_string = {
 	S(IPI_WAKEUP, "CPU wake-up interrupts"),
 };
 
-static void smp_cross_call(const struct cpumask *target, unsigned int ipinr)
-{
-	trace_ipi_raise(target, ipi_types[ipinr]);
-	__smp_cross_call(target, ipinr);
-}
+static void smp_cross_call(const struct cpumask *target, unsigned int ipinr);
 
 void show_ipi_list(struct seq_file *p, int prec)
 {
@@ -862,8 +851,7 @@ void arch_send_wakeup_ipi_mask(const struct cpumask *mask)
 #ifdef CONFIG_IRQ_WORK
 void arch_irq_work_raise(void)
 {
-	if (__smp_cross_call)
-		smp_cross_call(cpumask_of(smp_processor_id()), IPI_IRQ_WORK);
+	smp_cross_call(cpumask_of(smp_processor_id()), IPI_IRQ_WORK);
 }
 #endif
 
@@ -970,27 +958,16 @@ static void do_handle_IPI(int ipinr)
 		trace_ipi_exit_rcuidle(ipi_types[ipinr]);
 }
 
-/* Legacy version, should go away once all irqchips have been converted */
-void handle_IPI(int ipinr, struct pt_regs *regs)
-{
-	struct pt_regs *old_regs = set_irq_regs(regs);
-
-	irq_enter();
-	do_handle_IPI(ipinr);
-	irq_exit();
-
-	set_irq_regs(old_regs);
-}
-
 static irqreturn_t ipi_handler(int irq, void *data)
 {
 	do_handle_IPI(irq - ipi_irq_base);
 	return IRQ_HANDLED;
 }
 
-static void ipi_send(const struct cpumask *target, unsigned int ipi)
+static void smp_cross_call(const struct cpumask *target, unsigned int ipinr)
 {
-	__ipi_send_mask(ipi_desc[ipi], target);
+	trace_ipi_raise(target, ipi_types[ipinr]);
+	__ipi_send_mask(ipi_desc[ipinr], target);
 }
 
 static void ipi_setup(int cpu)
@@ -1032,7 +1009,6 @@ void __init set_smp_ipi_range(int ipi_base, int n)
 	}
 
 	ipi_irq_base = ipi_base;
-	__smp_cross_call = ipi_send;
 
 	/* Setup the boot CPU immediately */
 	ipi_setup(smp_processor_id());
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
