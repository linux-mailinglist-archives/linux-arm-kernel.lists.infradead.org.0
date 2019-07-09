Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5F9635EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnDiMAYQ/mQPP/jb37A7HTByW4iAx5HjCLkmwnS2XMY=; b=eXU9jyx0YXo4kI
	5hJfIE9HHn22cReKpd27RyPPhqLaaz9gvDcNDaCUKyzTAjVq5MNSB7Gkb9rsakSK3kdz72be8d3xB
	rySdDVfg8FrH6UQu3b7ZcWezgXn3uR3e+0eDJ6aZFRCFWAVE87rDVBiqStBKGCRqWoDLImSX1UWgb
	ejU9slXDxYQ/dnP/S/fLDhMLVP0rlJpxGA4UO6bT0j3isYvz4cDrzyFLXAlqMsDR64nVJNYHzCnot
	HheuenQ7RaBOcOXQJhBV/Ygl3Ja+jiT2YOh4JPc1CGe72imcdbvCbPO/H34u+Hogn2GmMhTXfk1G3
	dg5l31vanu39egDNwQbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpH6-0003rQ-2A; Tue, 09 Jul 2019 12:31:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpC1-0006w2-6d
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:25:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8BE015BF;
 Tue,  9 Jul 2019 05:25:56 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com (unknown [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D264B3F59C;
 Tue,  9 Jul 2019 05:25:54 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 18/18] KVM: arm/arm64: Initialise host's MPIDRs by reading the
 actual register
Date: Tue,  9 Jul 2019 13:25:07 +0100
Message-Id: <20190709122507.214494-19-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709122507.214494-1-marc.zyngier@arm.com>
References: <20190709122507.214494-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052557_410652_38DA71C9 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As part of setting up the host context, we populate its
MPIDR by using cpu_logical_map(). It turns out that contrary
to arm64, cpu_logical_map() on 32bit ARM doesn't return the
*full* MPIDR, but a truncated version.

This leaves the host MPIDR slightly corrupted after the first
run of a VM, since we won't correctly restore the MPIDR on
exit. Oops.

Since we cannot trust cpu_logical_map(), let's adopt a different
strategy. We move the initialization of the host CPU context as
part of the per-CPU initialization (which, in retrospect, makes
a lot of sense), and directly read the MPIDR from the HW. This
is guaranteed to work on both arm and arm64.

Reported-by: Andre Przywara <Andre.Przywara@arm.com>
Tested-by: Andre Przywara <Andre.Przywara@arm.com>
Fixes: 32f139551954 ("arm/arm64: KVM: Statically configure the host's view of MPIDR")
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm/include/asm/kvm_host.h   | 6 ++----
 arch/arm64/include/asm/kvm_host.h | 7 +++----
 virt/kvm/arm/arm.c                | 3 ++-
 3 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index e74e8f408987..8a37c8e89777 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -15,7 +15,6 @@
 #include <asm/kvm_asm.h>
 #include <asm/kvm_mmio.h>
 #include <asm/fpstate.h>
-#include <asm/smp_plat.h>
 #include <kvm/arm_arch_timer.h>
 
 #define __KVM_HAVE_ARCH_INTC_INITIALIZED
@@ -147,11 +146,10 @@ struct kvm_host_data {
 
 typedef struct kvm_host_data kvm_host_data_t;
 
-static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt,
-					     int cpu)
+static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt)
 {
 	/* The host's MPIDR is immutable, so let's set it up at boot time */
-	cpu_ctxt->cp15[c0_MPIDR] = cpu_logical_map(cpu);
+	cpu_ctxt->cp15[c0_MPIDR] = read_cpuid_mpidr();
 }
 
 struct vcpu_reset_state {
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index d9770daf3d7d..63a196c19fed 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -19,12 +19,12 @@
 #include <asm/arch_gicv3.h>
 #include <asm/barrier.h>
 #include <asm/cpufeature.h>
+#include <asm/cputype.h>
 #include <asm/daifflags.h>
 #include <asm/fpsimd.h>
 #include <asm/kvm.h>
 #include <asm/kvm_asm.h>
 #include <asm/kvm_mmio.h>
-#include <asm/smp_plat.h>
 #include <asm/thread_info.h>
 
 #define __KVM_HAVE_ARCH_INTC_INITIALIZED
@@ -484,11 +484,10 @@ struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
 
 DECLARE_PER_CPU(kvm_host_data_t, kvm_host_data);
 
-static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt,
-					     int cpu)
+static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt)
 {
 	/* The host's MPIDR is immutable, so let's set it up at boot time */
-	cpu_ctxt->sys_regs[MPIDR_EL1] = cpu_logical_map(cpu);
+	cpu_ctxt->sys_regs[MPIDR_EL1] = read_cpuid_mpidr();
 }
 
 void __kvm_enable_ssbs(void);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index bd5c55916d0d..f149c79fd6ef 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1332,6 +1332,8 @@ static void cpu_hyp_reset(void)
 
 static void cpu_hyp_reinit(void)
 {
+	kvm_init_host_cpu_context(&this_cpu_ptr(&kvm_host_data)->host_ctxt);
+
 	cpu_hyp_reset();
 
 	if (is_kernel_in_hyp_mode())
@@ -1569,7 +1571,6 @@ static int init_hyp_mode(void)
 		kvm_host_data_t *cpu_data;
 
 		cpu_data = per_cpu_ptr(&kvm_host_data, cpu);
-		kvm_init_host_cpu_context(&cpu_data->host_ctxt, cpu);
 		err = create_hyp_mappings(cpu_data, cpu_data + 1, PAGE_HYP);
 
 		if (err) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
