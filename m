Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4AC1D1014
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B3gynNXTg1SzbyEpTkdoEnsQH715/iusAsJawtAyCuo=; b=bhNtD91NKLW2O1
	DLGNDdRQPAhPSNGy89g3nwKCtUjAQUITvQnbb+xfPt6gpXwFeq1L+gW61+UZfdHqmTcH02x3Hioae
	OUs9DL2gV89fOUpekKAs5DmuWbqIkDXlNDsDYWuWTXVOovbt3dvPK526OWnMk1r4vSUSu1T7d9dyR
	cvDdkY8KLJmEI81PdxmqEefCPTz6pAVbcIzT89hilwKUxT3Sj2OoNk/61SX8rCJ/puLRFNtZoXTeP
	DhvKimQaoGl3WlORm0Pv5DCxZo6cwcCwoYrOlfP5pNfH86EgUQGIf5YSeU1xfioA7Ln+OILNagkz1
	0Xqe9uaPHI7xrd3JgDqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYorQ-00088s-2E; Wed, 13 May 2020 10:43:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYooj-0005GA-En
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:40:59 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD90820673;
 Wed, 13 May 2020 10:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589366448;
 bh=xmNqrvhFEg/PA/9PFSmpiwzUyItVTgti4dfYA8Tv02c=;
 h=From:To:Cc:Subject:Date:From;
 b=QVO9ot1V6ovx2DoUc+MdkrYpRdKQJeenV+4ZXgWMKt6qx6S/iK8/7ZLomaunJlait
 SQzrpbORHnnx48rg+Mt4A8gIGz1TgaP/L9Xecfas9o9To0V9STO6n7SoLsEgwOxh/L
 xahDiqDPUC2Zswi86pjmKTmO5Z8pBoO2wwEa/FpM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jYoof-00BwW7-Gq; Wed, 13 May 2020 11:40:45 +0100
From: Marc Zyngier <maz@kernel.org>
To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] KVM: arm64: Move virt/kvm/arm to arch/arm64
Date: Wed, 13 May 2020 11:40:34 +0100
Message-Id: <20200513104034.74741-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, will@kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_034051_955312_A306ABA8 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the 32bit KVM/arm host is a distant memory, let's move the
whole of the KVM/arm64 code into the arm64 tree.

As they said in the song: Welcome Home (Sanitarium).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 MAINTAINERS                                   |   1 -
 arch/arm64/kvm/Makefile                       |  44 ++--
 {virt/kvm/arm => arch/arm64/kvm}/aarch32.c    |   0
 {virt/kvm/arm => arch/arm64/kvm}/arch_timer.c |   0
 {virt/kvm/arm => arch/arm64/kvm}/arm.c        |   2 +-
 arch/arm64/kvm/handle_exit.c                  |   2 +-
 arch/arm64/kvm/hyp/Makefile                   |   9 +-
 .../kvm/arm => arch/arm64/kvm}/hyp/aarch32.c  |   0
 .../kvm/arm => arch/arm64/kvm}/hyp/timer-sr.c |   0
 .../arm => arch/arm64/kvm}/hyp/vgic-v3-sr.c   |   4 -
 {virt/kvm/arm => arch/arm64/kvm}/hypercalls.c |   0
 {virt/kvm/arm => arch/arm64/kvm}/mmio.c       |   0
 {virt/kvm/arm => arch/arm64/kvm}/mmu.c        |   0
 {virt/kvm/arm => arch/arm64/kvm}/perf.c       |   0
 .../arm/pmu.c => arch/arm64/kvm/pmu-emul.c    |   0
 {virt/kvm/arm => arch/arm64/kvm}/psci.c       |   0
 {virt/kvm/arm => arch/arm64/kvm}/pvtime.c     |   0
 arch/arm64/kvm/trace.h                        | 216 +-----------------
 .../arm/trace.h => arch/arm64/kvm/trace_arm.h |  11 +-
 arch/arm64/kvm/trace_handle_exit.h            | 215 +++++++++++++++++
 arch/arm64/kvm/vgic-sys-reg-v3.c              |   2 +-
 {virt/kvm/arm => arch/arm64/kvm}/vgic/trace.h |   2 +-
 .../arm => arch/arm64/kvm}/vgic/vgic-debug.c  |   0
 .../arm => arch/arm64/kvm}/vgic/vgic-init.c   |   0
 .../arm => arch/arm64/kvm}/vgic/vgic-irqfd.c  |   0
 .../arm => arch/arm64/kvm}/vgic/vgic-its.c    |   0
 .../arm64/kvm}/vgic/vgic-kvm-device.c         |   0
 .../arm64/kvm}/vgic/vgic-mmio-v2.c            |   0
 .../arm64/kvm}/vgic/vgic-mmio-v3.c            |   0
 .../arm => arch/arm64/kvm}/vgic/vgic-mmio.c   |   0
 .../arm => arch/arm64/kvm}/vgic/vgic-mmio.h   |   0
 .../kvm/arm => arch/arm64/kvm}/vgic/vgic-v2.c |   0
 .../kvm/arm => arch/arm64/kvm}/vgic/vgic-v3.c |   2 -
 .../kvm/arm => arch/arm64/kvm}/vgic/vgic-v4.c |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic.c  |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic.h  |   0
 36 files changed, 253 insertions(+), 257 deletions(-)
 rename {virt/kvm/arm => arch/arm64/kvm}/aarch32.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/arch_timer.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/arm.c (99%)
 rename {virt/kvm/arm => arch/arm64/kvm}/hyp/aarch32.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/hyp/timer-sr.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/hyp/vgic-v3-sr.c (99%)
 rename {virt/kvm/arm => arch/arm64/kvm}/hypercalls.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/mmio.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/mmu.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/perf.c (100%)
 rename virt/kvm/arm/pmu.c => arch/arm64/kvm/pmu-emul.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/psci.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/pvtime.c (100%)
 rename virt/kvm/arm/trace.h => arch/arm64/kvm/trace_arm.h (97%)
 create mode 100644 arch/arm64/kvm/trace_handle_exit.h
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/trace.h (93%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-debug.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-init.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-irqfd.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-its.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-kvm-device.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio-v2.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio-v3.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio.h (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v2.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v3.c (99%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v4.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic.h (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 091ec22c1a23..6c5b928989ed 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9295,7 +9295,6 @@ F:	arch/arm64/include/asm/kvm*
 F:	arch/arm64/include/uapi/asm/kvm*
 F:	arch/arm64/kvm/
 F:	include/kvm/arm_*
-F:	virt/kvm/arm/
 
 KERNEL VIRTUAL MACHINE FOR MIPS (KVM/mips)
 L:	linux-mips@vger.kernel.org
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 5ffbdc39e780..7a3768538343 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -3,37 +3,37 @@
 # Makefile for Kernel-based Virtual Machine module
 #
 
-ccflags-y += -I $(srctree)/$(src) -I $(srctree)/virt/kvm/arm/vgic
+ccflags-y += -I $(srctree)/$(src)
 
 KVM=../../../virt/kvm
 
 obj-$(CONFIG_KVM_ARM_HOST) += kvm.o
 obj-$(CONFIG_KVM_ARM_HOST) += hyp/
 
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/eventfd.o $(KVM)/vfio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hypercalls.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/pvtime.o
+kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o
+kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/eventfd.o $(KVM)/vfio.o $(KVM)/irqchip.o
+kvm-$(CONFIG_KVM_ARM_HOST) += arm.o mmu.o mmio.o
+kvm-$(CONFIG_KVM_ARM_HOST) += psci.o perf.o
+kvm-$(CONFIG_KVM_ARM_HOST) += hypercalls.o
+kvm-$(CONFIG_KVM_ARM_HOST) += pvtime.o
 
 kvm-$(CONFIG_KVM_ARM_HOST) += inject_fault.o regmap.o va_layout.o
 kvm-$(CONFIG_KVM_ARM_HOST) += hyp.o hyp-init.o handle_exit.o
 kvm-$(CONFIG_KVM_ARM_HOST) += guest.o debug.o reset.o sys_regs.o sys_regs_generic_v8.o
 kvm-$(CONFIG_KVM_ARM_HOST) += vgic-sys-reg-v3.o fpsimd.o pmu.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/aarch32.o
+kvm-$(CONFIG_KVM_ARM_HOST) += aarch32.o
+kvm-$(CONFIG_KVM_ARM_HOST) += arch_timer.o
+kvm-$(CONFIG_KVM_ARM_PMU)  += pmu-emul.o
 
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-init.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-irqfd.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-v2.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-v3.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-v4.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-mmio.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-mmio-v2.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-mmio-v3.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-kvm-device.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-its.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-debug.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/irqchip.o
-kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arch_timer.o
-kvm-$(CONFIG_KVM_ARM_PMU) += $(KVM)/arm/pmu.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-init.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-irqfd.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-v2.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-v3.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-v4.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-mmio.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-mmio-v2.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-mmio-v3.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-kvm-device.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-its.o
+kvm-$(CONFIG_KVM_ARM_HOST) += vgic/vgic-debug.o
diff --git a/virt/kvm/arm/aarch32.c b/arch/arm64/kvm/aarch32.c
similarity index 100%
rename from virt/kvm/arm/aarch32.c
rename to arch/arm64/kvm/aarch32.c
diff --git a/virt/kvm/arm/arch_timer.c b/arch/arm64/kvm/arch_timer.c
similarity index 100%
rename from virt/kvm/arm/arch_timer.c
rename to arch/arm64/kvm/arch_timer.c
diff --git a/virt/kvm/arm/arm.c b/arch/arm64/kvm/arm.c
similarity index 99%
rename from virt/kvm/arm/arm.c
rename to arch/arm64/kvm/arm.c
index 48d0ec44ad77..c958bb37b769 100644
--- a/virt/kvm/arm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -22,7 +22,7 @@
 #include <trace/events/kvm.h>
 
 #define CREATE_TRACE_POINTS
-#include "trace.h"
+#include "trace_arm.h"
 
 #include <linux/uaccess.h>
 #include <asm/ptrace.h>
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index aacfc55de44c..eb194696ef62 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -23,7 +23,7 @@
 #include <kvm/arm_hypercalls.h>
 
 #define CREATE_TRACE_POINTS
-#include "trace.h"
+#include "trace_handle_exit.h"
 
 typedef int (*exit_handle_fn)(struct kvm_vcpu *, struct kvm_run *);
 
diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..dc18274a6826 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -6,12 +6,9 @@
 ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 		$(DISABLE_STACKLEAK_PLUGIN)
 
-KVM=../../../../virt/kvm
-
-obj-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hyp/vgic-v3-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hyp/timer-sr.o
-obj-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hyp/aarch32.o
-
+obj-$(CONFIG_KVM_ARM_HOST) += vgic-v3-sr.o
+obj-$(CONFIG_KVM_ARM_HOST) += timer-sr.o
+obj-$(CONFIG_KVM_ARM_HOST) += aarch32.o
 obj-$(CONFIG_KVM_ARM_HOST) += vgic-v2-cpuif-proxy.o
 obj-$(CONFIG_KVM_ARM_HOST) += sysreg-sr.o
 obj-$(CONFIG_KVM_ARM_HOST) += debug-sr.o
diff --git a/virt/kvm/arm/hyp/aarch32.c b/arch/arm64/kvm/hyp/aarch32.c
similarity index 100%
rename from virt/kvm/arm/hyp/aarch32.c
rename to arch/arm64/kvm/hyp/aarch32.c
diff --git a/virt/kvm/arm/hyp/timer-sr.c b/arch/arm64/kvm/hyp/timer-sr.c
similarity index 100%
rename from virt/kvm/arm/hyp/timer-sr.c
rename to arch/arm64/kvm/hyp/timer-sr.c
diff --git a/virt/kvm/arm/hyp/vgic-v3-sr.c b/arch/arm64/kvm/hyp/vgic-v3-sr.c
similarity index 99%
rename from virt/kvm/arm/hyp/vgic-v3-sr.c
rename to arch/arm64/kvm/hyp/vgic-v3-sr.c
index ccf1fde9836c..49fedf6710f9 100644
--- a/virt/kvm/arm/hyp/vgic-v3-sr.c
+++ b/arch/arm64/kvm/hyp/vgic-v3-sr.c
@@ -431,8 +431,6 @@ void __hyp_text __vgic_v3_write_vmcr(u32 vmcr)
 	write_gicreg(vmcr, ICH_VMCR_EL2);
 }
 
-#ifdef CONFIG_ARM64
-
 static int __hyp_text __vgic_v3_bpr_min(void)
 {
 	/* See Pseudocode for VPriorityGroup */
@@ -1126,5 +1124,3 @@ int __hyp_text __vgic_v3_perform_cpuif_access(struct kvm_vcpu *vcpu)
 
 	return 1;
 }
-
-#endif
diff --git a/virt/kvm/arm/hypercalls.c b/arch/arm64/kvm/hypercalls.c
similarity index 100%
rename from virt/kvm/arm/hypercalls.c
rename to arch/arm64/kvm/hypercalls.c
diff --git a/virt/kvm/arm/mmio.c b/arch/arm64/kvm/mmio.c
similarity index 100%
rename from virt/kvm/arm/mmio.c
rename to arch/arm64/kvm/mmio.c
diff --git a/virt/kvm/arm/mmu.c b/arch/arm64/kvm/mmu.c
similarity index 100%
rename from virt/kvm/arm/mmu.c
rename to arch/arm64/kvm/mmu.c
diff --git a/virt/kvm/arm/perf.c b/arch/arm64/kvm/perf.c
similarity index 100%
rename from virt/kvm/arm/perf.c
rename to arch/arm64/kvm/perf.c
diff --git a/virt/kvm/arm/pmu.c b/arch/arm64/kvm/pmu-emul.c
similarity index 100%
rename from virt/kvm/arm/pmu.c
rename to arch/arm64/kvm/pmu-emul.c
diff --git a/virt/kvm/arm/psci.c b/arch/arm64/kvm/psci.c
similarity index 100%
rename from virt/kvm/arm/psci.c
rename to arch/arm64/kvm/psci.c
diff --git a/virt/kvm/arm/pvtime.c b/arch/arm64/kvm/pvtime.c
similarity index 100%
rename from virt/kvm/arm/pvtime.c
rename to arch/arm64/kvm/pvtime.c
diff --git a/arch/arm64/kvm/trace.h b/arch/arm64/kvm/trace.h
index eab91ad0effb..86f9ea47be29 100644
--- a/arch/arm64/kvm/trace.h
+++ b/arch/arm64/kvm/trace.h
@@ -1,216 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#if !defined(_TRACE_ARM64_KVM_H) || defined(TRACE_HEADER_MULTI_READ)
+#ifndef _TRACE_ARM64_KVM_H
 #define _TRACE_ARM64_KVM_H
 
-#include <linux/tracepoint.h>
-#include "sys_regs.h"
+#include "trace_arm.h"
+#include "trace_handle_exit.h"
 
-#undef TRACE_SYSTEM
-#define TRACE_SYSTEM kvm
-
-TRACE_EVENT(kvm_wfx_arm64,
-	TP_PROTO(unsigned long vcpu_pc, bool is_wfe),
-	TP_ARGS(vcpu_pc, is_wfe),
-
-	TP_STRUCT__entry(
-		__field(unsigned long,	vcpu_pc)
-		__field(bool,		is_wfe)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc = vcpu_pc;
-		__entry->is_wfe  = is_wfe;
-	),
-
-	TP_printk("guest executed wf%c at: 0x%08lx",
-		  __entry->is_wfe ? 'e' : 'i', __entry->vcpu_pc)
-);
-
-TRACE_EVENT(kvm_hvc_arm64,
-	TP_PROTO(unsigned long vcpu_pc, unsigned long r0, unsigned long imm),
-	TP_ARGS(vcpu_pc, r0, imm),
-
-	TP_STRUCT__entry(
-		__field(unsigned long, vcpu_pc)
-		__field(unsigned long, r0)
-		__field(unsigned long, imm)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc = vcpu_pc;
-		__entry->r0 = r0;
-		__entry->imm = imm;
-	),
-
-	TP_printk("HVC at 0x%08lx (r0: 0x%08lx, imm: 0x%lx)",
-		  __entry->vcpu_pc, __entry->r0, __entry->imm)
-);
-
-TRACE_EVENT(kvm_arm_setup_debug,
-	TP_PROTO(struct kvm_vcpu *vcpu, __u32 guest_debug),
-	TP_ARGS(vcpu, guest_debug),
-
-	TP_STRUCT__entry(
-		__field(struct kvm_vcpu *, vcpu)
-		__field(__u32, guest_debug)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu = vcpu;
-		__entry->guest_debug = guest_debug;
-	),
-
-	TP_printk("vcpu: %p, flags: 0x%08x", __entry->vcpu, __entry->guest_debug)
-);
-
-TRACE_EVENT(kvm_arm_clear_debug,
-	TP_PROTO(__u32 guest_debug),
-	TP_ARGS(guest_debug),
-
-	TP_STRUCT__entry(
-		__field(__u32, guest_debug)
-	),
-
-	TP_fast_assign(
-		__entry->guest_debug = guest_debug;
-	),
-
-	TP_printk("flags: 0x%08x", __entry->guest_debug)
-);
-
-TRACE_EVENT(kvm_arm_set_dreg32,
-	TP_PROTO(const char *name, __u32 value),
-	TP_ARGS(name, value),
-
-	TP_STRUCT__entry(
-		__field(const char *, name)
-		__field(__u32, value)
-	),
-
-	TP_fast_assign(
-		__entry->name = name;
-		__entry->value = value;
-	),
-
-	TP_printk("%s: 0x%08x", __entry->name, __entry->value)
-);
-
-TRACE_DEFINE_SIZEOF(__u64);
-
-TRACE_EVENT(kvm_arm_set_regset,
-	TP_PROTO(const char *type, int len, __u64 *control, __u64 *value),
-	TP_ARGS(type, len, control, value),
-	TP_STRUCT__entry(
-		__field(const char *, name)
-		__field(int, len)
-		__array(u64, ctrls, 16)
-		__array(u64, values, 16)
-	),
-	TP_fast_assign(
-		__entry->name = type;
-		__entry->len = len;
-		memcpy(__entry->ctrls, control, len << 3);
-		memcpy(__entry->values, value, len << 3);
-	),
-	TP_printk("%d %s CTRL:%s VALUE:%s", __entry->len, __entry->name,
-		__print_array(__entry->ctrls, __entry->len, sizeof(__u64)),
-		__print_array(__entry->values, __entry->len, sizeof(__u64)))
-);
-
-TRACE_EVENT(trap_reg,
-	TP_PROTO(const char *fn, int reg, bool is_write, u64 write_value),
-	TP_ARGS(fn, reg, is_write, write_value),
-
-	TP_STRUCT__entry(
-		__field(const char *, fn)
-		__field(int, reg)
-		__field(bool, is_write)
-		__field(u64, write_value)
-	),
-
-	TP_fast_assign(
-		__entry->fn = fn;
-		__entry->reg = reg;
-		__entry->is_write = is_write;
-		__entry->write_value = write_value;
-	),
-
-	TP_printk("%s %s reg %d (0x%08llx)", __entry->fn,  __entry->is_write?"write to":"read from", __entry->reg, __entry->write_value)
-);
-
-TRACE_EVENT(kvm_handle_sys_reg,
-	TP_PROTO(unsigned long hsr),
-	TP_ARGS(hsr),
-
-	TP_STRUCT__entry(
-		__field(unsigned long,	hsr)
-	),
-
-	TP_fast_assign(
-		__entry->hsr = hsr;
-	),
-
-	TP_printk("HSR 0x%08lx", __entry->hsr)
-);
-
-TRACE_EVENT(kvm_sys_access,
-	TP_PROTO(unsigned long vcpu_pc, struct sys_reg_params *params, const struct sys_reg_desc *reg),
-	TP_ARGS(vcpu_pc, params, reg),
-
-	TP_STRUCT__entry(
-		__field(unsigned long,			vcpu_pc)
-		__field(bool,				is_write)
-		__field(const char *,			name)
-		__field(u8,				Op0)
-		__field(u8,				Op1)
-		__field(u8,				CRn)
-		__field(u8,				CRm)
-		__field(u8,				Op2)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc = vcpu_pc;
-		__entry->is_write = params->is_write;
-		__entry->name = reg->name;
-		__entry->Op0 = reg->Op0;
-		__entry->Op0 = reg->Op0;
-		__entry->Op1 = reg->Op1;
-		__entry->CRn = reg->CRn;
-		__entry->CRm = reg->CRm;
-		__entry->Op2 = reg->Op2;
-	),
-
-	TP_printk("PC: %lx %s (%d,%d,%d,%d,%d) %s",
-		  __entry->vcpu_pc, __entry->name ?: "UNKN",
-		  __entry->Op0, __entry->Op1, __entry->CRn,
-		  __entry->CRm, __entry->Op2,
-		  __entry->is_write ? "write" : "read")
-);
-
-TRACE_EVENT(kvm_set_guest_debug,
-	TP_PROTO(struct kvm_vcpu *vcpu, __u32 guest_debug),
-	TP_ARGS(vcpu, guest_debug),
-
-	TP_STRUCT__entry(
-		__field(struct kvm_vcpu *, vcpu)
-		__field(__u32, guest_debug)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu = vcpu;
-		__entry->guest_debug = guest_debug;
-	),
-
-	TP_printk("vcpu: %p, flags: 0x%08x", __entry->vcpu, __entry->guest_debug)
-);
-
-
-#endif /* _TRACE_ARM64_KVM_H */
-
-#undef TRACE_INCLUDE_PATH
-#define TRACE_INCLUDE_PATH .
-#undef TRACE_INCLUDE_FILE
-#define TRACE_INCLUDE_FILE trace
-
-/* This part must be outside protection */
-#include <trace/define_trace.h>
+#endif	/* _TRACE_ARM64_KVM_H */
diff --git a/virt/kvm/arm/trace.h b/arch/arm64/kvm/trace_arm.h
similarity index 97%
rename from virt/kvm/arm/trace.h
rename to arch/arm64/kvm/trace_arm.h
index cc94ccc68821..4c71270cc097 100644
--- a/virt/kvm/arm/trace.h
+++ b/arch/arm64/kvm/trace_arm.h
@@ -1,10 +1,9 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#if !defined(_TRACE_KVM_H) || defined(TRACE_HEADER_MULTI_READ)
-#define _TRACE_KVM_H
+#if !defined(_TRACE_ARM_ARM64_KVM_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_ARM_ARM64_KVM_H
 
 #include <kvm/arm_arch_timer.h>
 #include <linux/tracepoint.h>
-#include <asm/kvm_arm.h>
 
 #undef TRACE_SYSTEM
 #define TRACE_SYSTEM kvm
@@ -368,12 +367,12 @@ TRACE_EVENT(kvm_timer_emulate,
 		  __entry->timer_idx, __entry->should_fire)
 );
 
-#endif /* _TRACE_KVM_H */
+#endif /* _TRACE_ARM_ARM64_KVM_H */
 
 #undef TRACE_INCLUDE_PATH
-#define TRACE_INCLUDE_PATH ../../virt/kvm/arm
+#define TRACE_INCLUDE_PATH .
 #undef TRACE_INCLUDE_FILE
-#define TRACE_INCLUDE_FILE trace
+#define TRACE_INCLUDE_FILE trace_arm
 
 /* This part must be outside protection */
 #include <trace/define_trace.h>
diff --git a/arch/arm64/kvm/trace_handle_exit.h b/arch/arm64/kvm/trace_handle_exit.h
new file mode 100644
index 000000000000..2c56d1e0f5bd
--- /dev/null
+++ b/arch/arm64/kvm/trace_handle_exit.h
@@ -0,0 +1,215 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#if !defined(_TRACE_HANDLE_EXIT_ARM64_KVM_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_HANDLE_EXIT_ARM64_KVM_H
+
+#include <linux/tracepoint.h>
+#include "sys_regs.h"
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM kvm
+
+TRACE_EVENT(kvm_wfx_arm64,
+	TP_PROTO(unsigned long vcpu_pc, bool is_wfe),
+	TP_ARGS(vcpu_pc, is_wfe),
+
+	TP_STRUCT__entry(
+		__field(unsigned long,	vcpu_pc)
+		__field(bool,		is_wfe)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc = vcpu_pc;
+		__entry->is_wfe  = is_wfe;
+	),
+
+	TP_printk("guest executed wf%c at: 0x%08lx",
+		  __entry->is_wfe ? 'e' : 'i', __entry->vcpu_pc)
+);
+
+TRACE_EVENT(kvm_hvc_arm64,
+	TP_PROTO(unsigned long vcpu_pc, unsigned long r0, unsigned long imm),
+	TP_ARGS(vcpu_pc, r0, imm),
+
+	TP_STRUCT__entry(
+		__field(unsigned long, vcpu_pc)
+		__field(unsigned long, r0)
+		__field(unsigned long, imm)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc = vcpu_pc;
+		__entry->r0 = r0;
+		__entry->imm = imm;
+	),
+
+	TP_printk("HVC at 0x%08lx (r0: 0x%08lx, imm: 0x%lx)",
+		  __entry->vcpu_pc, __entry->r0, __entry->imm)
+);
+
+TRACE_EVENT(kvm_arm_setup_debug,
+	TP_PROTO(struct kvm_vcpu *vcpu, __u32 guest_debug),
+	TP_ARGS(vcpu, guest_debug),
+
+	TP_STRUCT__entry(
+		__field(struct kvm_vcpu *, vcpu)
+		__field(__u32, guest_debug)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu = vcpu;
+		__entry->guest_debug = guest_debug;
+	),
+
+	TP_printk("vcpu: %p, flags: 0x%08x", __entry->vcpu, __entry->guest_debug)
+);
+
+TRACE_EVENT(kvm_arm_clear_debug,
+	TP_PROTO(__u32 guest_debug),
+	TP_ARGS(guest_debug),
+
+	TP_STRUCT__entry(
+		__field(__u32, guest_debug)
+	),
+
+	TP_fast_assign(
+		__entry->guest_debug = guest_debug;
+	),
+
+	TP_printk("flags: 0x%08x", __entry->guest_debug)
+);
+
+TRACE_EVENT(kvm_arm_set_dreg32,
+	TP_PROTO(const char *name, __u32 value),
+	TP_ARGS(name, value),
+
+	TP_STRUCT__entry(
+		__field(const char *, name)
+		__field(__u32, value)
+	),
+
+	TP_fast_assign(
+		__entry->name = name;
+		__entry->value = value;
+	),
+
+	TP_printk("%s: 0x%08x", __entry->name, __entry->value)
+);
+
+TRACE_DEFINE_SIZEOF(__u64);
+
+TRACE_EVENT(kvm_arm_set_regset,
+	TP_PROTO(const char *type, int len, __u64 *control, __u64 *value),
+	TP_ARGS(type, len, control, value),
+	TP_STRUCT__entry(
+		__field(const char *, name)
+		__field(int, len)
+		__array(u64, ctrls, 16)
+		__array(u64, values, 16)
+	),
+	TP_fast_assign(
+		__entry->name = type;
+		__entry->len = len;
+		memcpy(__entry->ctrls, control, len << 3);
+		memcpy(__entry->values, value, len << 3);
+	),
+	TP_printk("%d %s CTRL:%s VALUE:%s", __entry->len, __entry->name,
+		__print_array(__entry->ctrls, __entry->len, sizeof(__u64)),
+		__print_array(__entry->values, __entry->len, sizeof(__u64)))
+);
+
+TRACE_EVENT(trap_reg,
+	TP_PROTO(const char *fn, int reg, bool is_write, u64 write_value),
+	TP_ARGS(fn, reg, is_write, write_value),
+
+	TP_STRUCT__entry(
+		__field(const char *, fn)
+		__field(int, reg)
+		__field(bool, is_write)
+		__field(u64, write_value)
+	),
+
+	TP_fast_assign(
+		__entry->fn = fn;
+		__entry->reg = reg;
+		__entry->is_write = is_write;
+		__entry->write_value = write_value;
+	),
+
+	TP_printk("%s %s reg %d (0x%08llx)", __entry->fn,  __entry->is_write?"write to":"read from", __entry->reg, __entry->write_value)
+);
+
+TRACE_EVENT(kvm_handle_sys_reg,
+	TP_PROTO(unsigned long hsr),
+	TP_ARGS(hsr),
+
+	TP_STRUCT__entry(
+		__field(unsigned long,	hsr)
+	),
+
+	TP_fast_assign(
+		__entry->hsr = hsr;
+	),
+
+	TP_printk("HSR 0x%08lx", __entry->hsr)
+);
+
+TRACE_EVENT(kvm_sys_access,
+	TP_PROTO(unsigned long vcpu_pc, struct sys_reg_params *params, const struct sys_reg_desc *reg),
+	TP_ARGS(vcpu_pc, params, reg),
+
+	TP_STRUCT__entry(
+		__field(unsigned long,			vcpu_pc)
+		__field(bool,				is_write)
+		__field(const char *,			name)
+		__field(u8,				Op0)
+		__field(u8,				Op1)
+		__field(u8,				CRn)
+		__field(u8,				CRm)
+		__field(u8,				Op2)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc = vcpu_pc;
+		__entry->is_write = params->is_write;
+		__entry->name = reg->name;
+		__entry->Op0 = reg->Op0;
+		__entry->Op0 = reg->Op0;
+		__entry->Op1 = reg->Op1;
+		__entry->CRn = reg->CRn;
+		__entry->CRm = reg->CRm;
+		__entry->Op2 = reg->Op2;
+	),
+
+	TP_printk("PC: %lx %s (%d,%d,%d,%d,%d) %s",
+		  __entry->vcpu_pc, __entry->name ?: "UNKN",
+		  __entry->Op0, __entry->Op1, __entry->CRn,
+		  __entry->CRm, __entry->Op2,
+		  __entry->is_write ? "write" : "read")
+);
+
+TRACE_EVENT(kvm_set_guest_debug,
+	TP_PROTO(struct kvm_vcpu *vcpu, __u32 guest_debug),
+	TP_ARGS(vcpu, guest_debug),
+
+	TP_STRUCT__entry(
+		__field(struct kvm_vcpu *, vcpu)
+		__field(__u32, guest_debug)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu = vcpu;
+		__entry->guest_debug = guest_debug;
+	),
+
+	TP_printk("vcpu: %p, flags: 0x%08x", __entry->vcpu, __entry->guest_debug)
+);
+
+#endif /* _TRACE_HANDLE_EXIT_ARM64_KVM_H */
+
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH .
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_FILE trace_handle_exit
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
diff --git a/arch/arm64/kvm/vgic-sys-reg-v3.c b/arch/arm64/kvm/vgic-sys-reg-v3.c
index e7d1ea92095d..2f92bdcb1188 100644
--- a/arch/arm64/kvm/vgic-sys-reg-v3.c
+++ b/arch/arm64/kvm/vgic-sys-reg-v3.c
@@ -7,7 +7,7 @@
 #include <linux/kvm.h>
 #include <linux/kvm_host.h>
 #include <asm/kvm_emulate.h>
-#include "vgic.h"
+#include "vgic/vgic.h"
 #include "sys_regs.h"
 
 static bool access_gic_ctlr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
diff --git a/virt/kvm/arm/vgic/trace.h b/arch/arm64/kvm/vgic/trace.h
similarity index 93%
rename from virt/kvm/arm/vgic/trace.h
rename to arch/arm64/kvm/vgic/trace.h
index 4fd4f6db181b..83c64401a7fc 100644
--- a/virt/kvm/arm/vgic/trace.h
+++ b/arch/arm64/kvm/vgic/trace.h
@@ -30,7 +30,7 @@ TRACE_EVENT(vgic_update_irq_pending,
 #endif /* _TRACE_VGIC_H */
 
 #undef TRACE_INCLUDE_PATH
-#define TRACE_INCLUDE_PATH ../../virt/kvm/arm/vgic
+#define TRACE_INCLUDE_PATH ../../arch/arm64/kvm/vgic
 #undef TRACE_INCLUDE_FILE
 #define TRACE_INCLUDE_FILE trace
 
diff --git a/virt/kvm/arm/vgic/vgic-debug.c b/arch/arm64/kvm/vgic/vgic-debug.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-debug.c
rename to arch/arm64/kvm/vgic/vgic-debug.c
diff --git a/virt/kvm/arm/vgic/vgic-init.c b/arch/arm64/kvm/vgic/vgic-init.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-init.c
rename to arch/arm64/kvm/vgic/vgic-init.c
diff --git a/virt/kvm/arm/vgic/vgic-irqfd.c b/arch/arm64/kvm/vgic/vgic-irqfd.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-irqfd.c
rename to arch/arm64/kvm/vgic/vgic-irqfd.c
diff --git a/virt/kvm/arm/vgic/vgic-its.c b/arch/arm64/kvm/vgic/vgic-its.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-its.c
rename to arch/arm64/kvm/vgic/vgic-its.c
diff --git a/virt/kvm/arm/vgic/vgic-kvm-device.c b/arch/arm64/kvm/vgic/vgic-kvm-device.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-kvm-device.c
rename to arch/arm64/kvm/vgic/vgic-kvm-device.c
diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c b/arch/arm64/kvm/vgic/vgic-mmio-v2.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-mmio-v2.c
rename to arch/arm64/kvm/vgic/vgic-mmio-v2.c
diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/arch/arm64/kvm/vgic/vgic-mmio-v3.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-mmio-v3.c
rename to arch/arm64/kvm/vgic/vgic-mmio-v3.c
diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/arch/arm64/kvm/vgic/vgic-mmio.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-mmio.c
rename to arch/arm64/kvm/vgic/vgic-mmio.c
diff --git a/virt/kvm/arm/vgic/vgic-mmio.h b/arch/arm64/kvm/vgic/vgic-mmio.h
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-mmio.h
rename to arch/arm64/kvm/vgic/vgic-mmio.h
diff --git a/virt/kvm/arm/vgic/vgic-v2.c b/arch/arm64/kvm/vgic/vgic-v2.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-v2.c
rename to arch/arm64/kvm/vgic/vgic-v2.c
diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/arch/arm64/kvm/vgic/vgic-v3.c
similarity index 99%
rename from virt/kvm/arm/vgic/vgic-v3.c
rename to arch/arm64/kvm/vgic/vgic-v3.c
index 2c9fc13e2c59..5bc2ab58954b 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/arch/arm64/kvm/vgic/vgic-v3.c
@@ -630,12 +630,10 @@ int vgic_v3_probe(const struct gic_kvm_info *info)
 	if (kvm_vgic_global_state.vcpu_base == 0)
 		kvm_info("disabling GICv2 emulation\n");
 
-#ifdef CONFIG_ARM64
 	if (cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_30115)) {
 		group0_trap = true;
 		group1_trap = true;
 	}
-#endif
 
 	if (group0_trap || group1_trap || common_trap) {
 		kvm_info("GICv3 sysreg trapping enabled ([%s%s%s], reduced performance)\n",
diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/arch/arm64/kvm/vgic/vgic-v4.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic-v4.c
rename to arch/arm64/kvm/vgic/vgic-v4.c
diff --git a/virt/kvm/arm/vgic/vgic.c b/arch/arm64/kvm/vgic/vgic.c
similarity index 100%
rename from virt/kvm/arm/vgic/vgic.c
rename to arch/arm64/kvm/vgic/vgic.c
diff --git a/virt/kvm/arm/vgic/vgic.h b/arch/arm64/kvm/vgic/vgic.h
similarity index 100%
rename from virt/kvm/arm/vgic/vgic.h
rename to arch/arm64/kvm/vgic/vgic.h
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
