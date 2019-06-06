Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D32B36FF7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=05h/XW8cU5JHXnFmk4mPMswmuQr336cT6AgPsOIIMsg=; b=SKmH3Y/NXG/gma0ZnYILj+RSxS
	tGxWwbdObXKU5Plc+izQFT8hnAC+hj+6nsptuzplIUolsImVRtk+aFqUce1wHl0ENSWLovKl4Vxfx
	baTb25sDpijHpF9pdytRv7wNDUxsiejLyN2g5y15oFE4IY5WtDq7p/8ZIrqHBsD5hQpkIyB0RIwFz
	7YrO/WJVhCrjS+x/NxF5Qro9C25pv7E9c1KR+wbpigaQQLBy5ob4SFhjK1QH3k4hsm0+RmRnIX2hj
	JuJwZYXqpIvxb2LtDLLXMViwRn+eR/HjBrCpMbkI8m7bOoHPbwKLONd3wsgnzTGURkqSZZU7fjylF
	U4fLWM9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYomT-0008Pq-Uz; Thu, 06 Jun 2019 09:33:58 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYokv-0006jC-Tp
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:32:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9AFBA169E;
 Thu,  6 Jun 2019 02:32:21 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 865543F690;
 Thu,  6 Jun 2019 02:32:19 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 7/8] arm64: fix kernel stack overflow in kdump capture
 kernel
Date: Thu,  6 Jun 2019 10:31:56 +0100
Message-Id: <1559813517-41540-8-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023222_881343_AB8DFF07 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Li <liwei391@huawei.com>

When enabling ARM64_PSEUDO_NMI feature in kdump capture kernel, it will
report a kernel stack overflow exception:

[    0.000000] CPU features: detected: IRQ priority masking
[    0.000000] alternatives: patching kernel code
[    0.000000] Insufficient stack space to handle exception!
[    0.000000] ESR: 0x96000044 -- DABT (current EL)
[    0.000000] FAR: 0x0000000000000040
[    0.000000] Task stack:     [0xffff0000097f0000..0xffff0000097f4000]
[    0.000000] IRQ stack:      [0x0000000000000000..0x0000000000004000]
[    0.000000] Overflow stack: [0xffff80002b7cf290..0xffff80002b7d0290]
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 4.19.34-lw+ #3
[    0.000000] pstate: 400003c5 (nZcv DAIF -PAN -UAO)
[    0.000000] pc : el1_sync+0x0/0xb8
[    0.000000] lr : el1_irq+0xb8/0x140
[    0.000000] sp : 0000000000000040
[    0.000000] pmr_save: 00000070
[    0.000000] x29: ffff0000097f3f60 x28: ffff000009806240
[    0.000000] x27: 0000000080000000 x26: 0000000000004000
[    0.000000] x25: 0000000000000000 x24: ffff000009329028
[    0.000000] x23: 0000000040000005 x22: ffff000008095c6c
[    0.000000] x21: ffff0000097f3f70 x20: 0000000000000070
[    0.000000] x19: ffff0000097f3e30 x18: ffffffffffffffff
[    0.000000] x17: 0000000000000000 x16: 0000000000000000
[    0.000000] x15: ffff0000097f9708 x14: ffff000089a382ef
[    0.000000] x13: ffff000009a382fd x12: ffff000009824000
[    0.000000] x11: ffff0000097fb7b0 x10: ffff000008730028
[    0.000000] x9 : ffff000009440018 x8 : 000000000000000d
[    0.000000] x7 : 6b20676e69686374 x6 : 000000000000003b
[    0.000000] x5 : 0000000000000000 x4 : ffff000008093600
[    0.000000] x3 : 0000000400000008 x2 : 7db2e689fc2b8e00
[    0.000000] x1 : 0000000000000000 x0 : ffff0000097f3e30
[    0.000000] Kernel panic - not syncing: kernel stack overflow
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 4.19.34-lw+ #3
[    0.000000] Call trace:
[    0.000000]  dump_backtrace+0x0/0x1b8
[    0.000000]  show_stack+0x24/0x30
[    0.000000]  dump_stack+0xa8/0xcc
[    0.000000]  panic+0x134/0x30c
[    0.000000]  __stack_chk_fail+0x0/0x28
[    0.000000]  handle_bad_stack+0xfc/0x108
[    0.000000]  __bad_stack+0x90/0x94
[    0.000000]  el1_sync+0x0/0xb8
[    0.000000]  init_gic_priority_masking+0x4c/0x70
[    0.000000]  smp_prepare_boot_cpu+0x60/0x68
[    0.000000]  start_kernel+0x1e8/0x53c
[    0.000000] ---[ end Kernel panic - not syncing: kernel stack overflow ]---

The reason is init_gic_priority_masking() may unmask PSR.I while the
irq stacks are not inited yet. Some "NMI" could be raised unfortunately
and it will just go into this exception.

In this patch, we just write the PMR in smp_prepare_boot_cpu(), and delay
unmasking PSR.I after irq stacks inited in init_IRQ().

Fixes: e79321883842 ("arm64: Switch to PMR masking when starting CPUs")
Signed-off-by: Wei Li <liwei391@huawei.com>
[JT: make init_gic_priority_masking() not modify daif, rebase on other
     priority masking fixes]
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
---
 arch/arm64/kernel/irq.c | 9 +++++++++
 arch/arm64/kernel/smp.c | 8 +-------
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/irq.c b/arch/arm64/kernel/irq.c
index fdd9cb2..e8daa7a 100644
--- a/arch/arm64/kernel/irq.c
+++ b/arch/arm64/kernel/irq.c
@@ -77,6 +77,15 @@ void __init init_IRQ(void)
 	irqchip_init();
 	if (!handle_arch_irq)
 		panic("No interrupt controller found.");
+
+	if (system_uses_irq_prio_masking()) {
+		/*
+		 * Now that we have a stack for our IRQ handler, set
+		 * the PMR/PSR pair to a consistent state.
+		 */
+		WARN_ON(read_sysreg(daif) & PSR_A_BIT);
+		local_daif_restore(DAIF_PROCCTX_NOIRQ);
+	}
 }
 
 /*
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 4deaee3..83cdb0a 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -192,13 +192,7 @@ static void init_gic_priority_masking(void)
 
 	WARN_ON(!(cpuflags & PSR_I_BIT));
 
-	/* We can only unmask PSR.I if we can take aborts */
-	if (!(cpuflags & PSR_A_BIT)) {
-		gic_write_pmr(GIC_PRIO_IRQOFF);
-		write_sysreg(cpuflags & ~PSR_I_BIT, daif);
-	} else {
-		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
-	}
+	gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
 }
 
 /*
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
