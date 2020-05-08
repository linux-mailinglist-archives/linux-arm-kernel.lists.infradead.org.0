Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0D21CA194
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LrGLFsZOhdGNxTJR9s6e2iQoXlPVnXUTLci2cO9+mk=; b=MEzdQ+gNT5Z70Y
	+cXBbH4j73AaLPEqoW35Fe8aRzO3uyTltigBH2vsVK1MOjgdBc+xTavKuII3xXo+ADwKpbp/IaiFZ
	dvTib2T2SCNt6f0m7QIpC2AXxBqq7V2dfynhVPAqdoAL25viXt9+A3DMqq9rZ4XRsfJ0eCP9HEAY6
	y3yJzjLqaAdw95eYHmS5jFsmrNf2Qjv6XtYxcnwzoKbB7FVHsfuy2ZeFnD2u06WBMuhJjfAIhE/DW
	LiwfkyZCVXmmywY0TP6/8l2tNz9laWRLyueJ3YH4zhDE9hbDnrECOdqD4xacyd9wL2W/093BNv/Q3
	V2cAf5oOfS7fnguZVS5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtkk-0003LL-IP; Fri, 08 May 2020 03:32:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtjC-0002FW-JP
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 03:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588908669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1JW2QmxfM3dQHTg5w77I8MJwpXYVVNY3VWW9mn8DP/4=;
 b=OnaEQ7/VECNDcxRRec27159jSdS+3HskWmOXP4kTbBglTo5x5PoUWt9rT75iwvdGCqr8ln
 tgbWzHbshP91avC52ZOQefpK+wyl7ZARf/LjVKuWQJe/5/AgPNreyvt8whG8/8e2Ijw4iy
 1zRBXv7rK747aLqaGI4LdD4TNl7bRIE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-325-aep5ud-rOFuNyR3w7LzG_Q-1; Thu, 07 May 2020 23:31:04 -0400
X-MC-Unique: aep5ud-rOFuNyR3w7LzG_Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0CE11461;
 Fri,  8 May 2020 03:31:03 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-199.bne.redhat.com
 [10.64.54.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9C6E799CF;
 Fri,  8 May 2020 03:30:58 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH RFCv2 7/9] kvm/arm64: Support async page fault
Date: Fri,  8 May 2020 13:29:17 +1000
Message-Id: <20200508032919.52147-8-gshan@redhat.com>
In-Reply-To: <20200508032919.52147-1-gshan@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_203110_826708_F136B572 
X-CRM114-Status: GOOD (  28.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, aarcange@redhat.com, drjones@redhat.com,
 suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, james.morse@arm.com, shan.gavin@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two stages of fault pages and the stage one page fault is
handled by guest itself. The guest is trapped to host when the page
fault is caused by stage 2 page table, for example missing. The guest
is suspended until the requested page is populated. To populate the
requested page can be related to IO activities if the page was swapped
out previously. In this case, the guest has to suspend for a few of
milliseconds at least, regardless of the overall system load. There
is no useful work done during the suspended period from guest's view.

This adds asychornous page fault to improve the situation. A signal
(PAGE_NOT_PRESENT) is sent to guest if the requested page needs some time
to be populated. Guest might reschedule to another running process if
possible. Otherwise, the vCPU is put into power-saving mode, which is
actually to cause vCPU reschedule from host's view. A followup signal
(PAGE_READY) is sent to guest once the requested page is populated.
The suspended task is waken up or scheduled when guest receives the
signal. With this mechanism, the vCPU won't be stuck when the requested
page is being populated by host.

There are more details highlighted as below. Note the implementation is
similar to what x86 has to some extent:

   * A dedicated SMCCC ID is reserved to enable, disable or configure
     the functionality. The only 64-bits parameter is conveyed by two
     registers (w2/w1). Bits[63:56] is the bitmap used to specify the
     operated functionality like enabling/disabling/configuration. The
     bits[55:6] is the physical address of control block or external
     data abort injection disallowed region. Bit[5:0] are used to pass
     control flags.

   * Signal (PAGE_NOT_PRESENT) is sent to guest if the requested page
     isn't ready. In the mean while, a work is started to populate the
     page asynchronously in background. The stage 2 page table entry is
     updated accordingly and another signal (PAGE_READY) is fired after
     the request page is populted. The signals is notified by injected
     data abort fault.

   * The signals are fired and consumed in sequential fashion. It means
     no more signals will be fired if there is pending one, awaiting the
     guest to consume. It's because the injected data abort faults have
     to be done in sequential fashion.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/include/asm/kvm_host.h      |  43 ++++
 arch/arm64/include/asm/kvm_para.h      |  27 ++
 arch/arm64/include/uapi/asm/Kbuild     |   2 -
 arch/arm64/include/uapi/asm/kvm_para.h |  22 ++
 arch/arm64/kvm/Kconfig                 |   1 +
 arch/arm64/kvm/Makefile                |   2 +
 include/linux/arm-smccc.h              |   6 +
 virt/kvm/arm/arm.c                     |  36 ++-
 virt/kvm/arm/async_pf.c                | 335 +++++++++++++++++++++++++
 virt/kvm/arm/hypercalls.c              |   8 +
 virt/kvm/arm/mmu.c                     |  29 ++-
 11 files changed, 506 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_para.h
 create mode 100644 arch/arm64/include/uapi/asm/kvm_para.h
 create mode 100644 virt/kvm/arm/async_pf.c

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index f77c706777ec..a207728d6f3f 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -250,6 +250,23 @@ struct vcpu_reset_state {
 	bool		reset;
 };
 
+#ifdef CONFIG_KVM_ASYNC_PF
+
+/* Should be a power of two number */
+#define ASYNC_PF_PER_VCPU	64
+
+/*
+ * The association of gfn and token. The token will be sent to guest as
+ * page fault address. Also, the guest could be in aarch32 mode. So its
+ * length should be 32-bits.
+ */
+struct kvm_arch_async_pf {
+	u32     token;
+	gfn_t   gfn;
+	u32	esr;
+};
+#endif /* CONFIG_KVM_ASYNC_PF */
+
 struct kvm_vcpu_arch {
 	struct kvm_cpu_context ctxt;
 	void *sve_state;
@@ -351,6 +368,17 @@ struct kvm_vcpu_arch {
 		u64 last_steal;
 		gpa_t base;
 	} steal;
+
+#ifdef CONFIG_KVM_ASYNC_PF
+	struct {
+		struct gfn_to_hva_cache	cache;
+		gfn_t			gfns[ASYNC_PF_PER_VCPU];
+		u64			control_block;
+		u16			id;
+		bool			send_user_only;
+		u64			no_fault_inst_range;
+	} apf;
+#endif
 };
 
 /* Pointer to the vcpu's SVE FFR for sve_{save,load}_state() */
@@ -604,6 +632,21 @@ int kvm_arm_vcpu_arch_has_attr(struct kvm_vcpu *vcpu,
 
 static inline void __cpu_init_stage2(void) {}
 
+#ifdef CONFIG_KVM_ASYNC_PF
+bool kvm_async_pf_hash_find(struct kvm_vcpu *vcpu, gfn_t gfn);
+bool kvm_arch_can_inject_async_page_not_present(struct kvm_vcpu *vcpu);
+bool kvm_arch_can_inject_async_page_present(struct kvm_vcpu *vcpu);
+int kvm_arch_setup_async_pf(struct kvm_vcpu *vcpu, u32 esr,
+			    gpa_t gpa, gfn_t gfn);
+void kvm_arch_async_page_not_present(struct kvm_vcpu *vcpu,
+				     struct kvm_async_pf *work);
+void kvm_arch_async_page_present(struct kvm_vcpu *vcpu,
+				     struct kvm_async_pf *work);
+void kvm_arch_async_page_ready(struct kvm_vcpu *vcpu,
+			       struct kvm_async_pf *work);
+long kvm_async_pf_hypercall(struct kvm_vcpu *vcpu);
+#endif /* CONFIG_KVM_ASYNC_PF */
+
 /* Guest/host FPSIMD coordination helpers */
 int kvm_arch_vcpu_run_map_fp(struct kvm_vcpu *vcpu);
 void kvm_arch_vcpu_load_fp(struct kvm_vcpu *vcpu);
diff --git a/arch/arm64/include/asm/kvm_para.h b/arch/arm64/include/asm/kvm_para.h
new file mode 100644
index 000000000000..0ea481dd1c7a
--- /dev/null
+++ b/arch/arm64/include/asm/kvm_para.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_ARM_KVM_PARA_H
+#define _ASM_ARM_KVM_PARA_H
+
+#include <uapi/asm/kvm_para.h>
+
+static inline bool kvm_check_and_clear_guest_paused(void)
+{
+	return false;
+}
+
+static inline unsigned int kvm_arch_para_features(void)
+{
+	return 0;
+}
+
+static inline unsigned int kvm_arch_para_hints(void)
+{
+	return 0;
+}
+
+static inline bool kvm_para_available(void)
+{
+	return false;
+}
+
+#endif /* _ASM_ARM_KVM_PARA_H */
diff --git a/arch/arm64/include/uapi/asm/Kbuild b/arch/arm64/include/uapi/asm/Kbuild
index 602d137932dc..f66554cd5c45 100644
--- a/arch/arm64/include/uapi/asm/Kbuild
+++ b/arch/arm64/include/uapi/asm/Kbuild
@@ -1,3 +1 @@
 # SPDX-License-Identifier: GPL-2.0
-
-generic-y += kvm_para.h
diff --git a/arch/arm64/include/uapi/asm/kvm_para.h b/arch/arm64/include/uapi/asm/kvm_para.h
new file mode 100644
index 000000000000..e0bd0e579b9a
--- /dev/null
+++ b/arch/arm64/include/uapi/asm/kvm_para.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+#ifndef _UAPI_ASM_ARM_KVM_PARA_H
+#define _UAPI_ASM_ARM_KVM_PARA_H
+
+#include <linux/types.h>
+
+#define KVM_FEATURE_ASYNC_PF	0
+
+/* Async PF */
+#define KVM_ASYNC_PF_ENABLED		(1 << 0)
+#define KVM_ASYNC_PF_SEND_ALWAYS	(1 << 1)
+
+#define KVM_PV_REASON_PAGE_NOT_PRESENT	1
+#define KVM_PV_REASON_PAGE_READY	2
+
+struct kvm_vcpu_pv_apf_data {
+	__u32	reason;
+	__u8	pad[60];
+	__u32	enabled;
+};
+
+#endif /* _UAPI_ASM_ARM_KVM_PARA_H */
diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
index 449386d76441..1053e16b1739 100644
--- a/arch/arm64/kvm/Kconfig
+++ b/arch/arm64/kvm/Kconfig
@@ -34,6 +34,7 @@ config KVM
 	select KVM_VFIO
 	select HAVE_KVM_EVENTFD
 	select HAVE_KVM_IRQFD
+	select KVM_ASYNC_PF
 	select KVM_ARM_PMU if HW_PERF_EVENTS
 	select HAVE_KVM_MSI
 	select HAVE_KVM_IRQCHIP
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 5ffbdc39e780..3be24c1e401f 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -37,3 +37,5 @@ kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-debug.o
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/irqchip.o
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arch_timer.o
 kvm-$(CONFIG_KVM_ARM_PMU) += $(KVM)/arm/pmu.o
+kvm-$(CONFIG_KVM_ASYNC_PF) += $(KVM)/async_pf.o
+kvm-$(CONFIG_KVM_ASYNC_PF) += $(KVM)/arm/async_pf.o
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index bdc0124a064a..22007dd3b9f0 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -94,6 +94,7 @@
 
 /* KVM "vendor specific" services */
 #define ARM_SMCCC_KVM_FUNC_FEATURES		0
+#define ARM_SMCCC_KVM_FUNC_APF			1
 #define ARM_SMCCC_KVM_FUNC_FEATURES_2		127
 #define ARM_SMCCC_KVM_NUM_FUNCS			128
 
@@ -102,6 +103,11 @@
 			   ARM_SMCCC_SMC_32,				\
 			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
 			   ARM_SMCCC_KVM_FUNC_FEATURES)
+#define ARM_SMCCC_VENDOR_HYP_KVM_APF_FUNC_ID				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   ARM_SMCCC_OWNER_VENDOR_HYP,			\
+			   ARM_SMCCC_KVM_FUNC_APF)
 
 #ifndef __ASSEMBLY__
 
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 2cbb57485760..3f62899cef13 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -222,6 +222,11 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 		 */
 		r = 1;
 		break;
+#ifdef CONFIG_KVM_ASYNC_PF
+	case KVM_CAP_ASYNC_PF:
+		r = 1;
+		break;
+#endif
 	default:
 		r = kvm_arch_vm_ioctl_check_extension(kvm, ext);
 		break;
@@ -269,6 +274,10 @@ int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
 	/* Force users to call KVM_ARM_VCPU_INIT */
 	vcpu->arch.target = -1;
 	bitmap_zero(vcpu->arch.features, KVM_VCPU_MAX_FEATURES);
+#ifdef CONFIG_KVM_ASYNC_PF
+	vcpu->arch.apf.control_block = 0UL;
+	vcpu->arch.apf.no_fault_inst_range = 0x800;
+#endif
 
 	/* Set up the timer */
 	kvm_timer_vcpu_init(vcpu);
@@ -426,8 +435,27 @@ int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
 int kvm_arch_vcpu_runnable(struct kvm_vcpu *v)
 {
 	bool irq_lines = *vcpu_hcr(v) & (HCR_VI | HCR_VF);
-	return ((irq_lines || kvm_vgic_vcpu_pending_irq(v))
-		&& !v->arch.power_off && !v->arch.pause);
+
+	if ((irq_lines || kvm_vgic_vcpu_pending_irq(v)) &&
+	    !v->arch.power_off && !v->arch.pause)
+		return true;
+
+#ifdef CONFIG_KVM_ASYNC_PF
+	if (v->arch.apf.control_block & KVM_ASYNC_PF_ENABLED) {
+		u32 val;
+		int ret;
+
+		if (!list_empty_careful(&v->async_pf.done))
+			return true;
+
+		ret = kvm_read_guest_cached(v->kvm, &v->arch.apf.cache,
+					    &val, sizeof(val));
+		if (ret || val)
+			return true;
+	}
+#endif
+
+	return false;
 }
 
 bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
@@ -683,6 +711,10 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 
 		check_vcpu_requests(vcpu);
 
+#ifdef CONFIG_KVM_ASYNC_PF
+		kvm_check_async_pf_completion(vcpu);
+#endif
+
 		/*
 		 * Preparing the interrupts to be injected also
 		 * involves poking the GIC, which must be done in a
diff --git a/virt/kvm/arm/async_pf.c b/virt/kvm/arm/async_pf.c
new file mode 100644
index 000000000000..5be49d684de3
--- /dev/null
+++ b/virt/kvm/arm/async_pf.c
@@ -0,0 +1,335 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Asynchronous Page Fault Support
+ *
+ * Copyright (C) 2020 Red Hat, Inc., Gavin Shan
+ *
+ * Based on arch/x86/kernel/kvm.c
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/kvm_host.h>
+#include <asm/kvm_emulate.h>
+#include <kvm/arm_hypercalls.h>
+
+static inline u32 kvm_async_pf_hash_fn(gfn_t gfn)
+{
+	return hash_32(gfn & 0xffffffff, order_base_2(ASYNC_PF_PER_VCPU));
+}
+
+static inline u32 kvm_async_pf_hash_next(u32 key)
+{
+	return (key + 1) & (ASYNC_PF_PER_VCPU - 1);
+}
+
+static inline void kvm_async_pf_hash_reset(struct kvm_vcpu *vcpu)
+{
+	int i;
+
+	for (i = 0; i < ASYNC_PF_PER_VCPU; i++)
+		vcpu->arch.apf.gfns[i] = ~0;
+}
+
+/*
+ * Add gfn to the hash table. It's ensured there is a free entry
+ * when this function is called.
+ */
+static void kvm_async_pf_hash_add(struct kvm_vcpu *vcpu, gfn_t gfn)
+{
+	u32 key = kvm_async_pf_hash_fn(gfn);
+
+	while (vcpu->arch.apf.gfns[key] != ~0)
+		key = kvm_async_pf_hash_next(key);
+
+	vcpu->arch.apf.gfns[key] = gfn;
+}
+
+static u32 kvm_async_pf_hash_slot(struct kvm_vcpu *vcpu, gfn_t gfn)
+{
+	u32 key = kvm_async_pf_hash_fn(gfn);
+	int i;
+
+	for (i = 0; i < ASYNC_PF_PER_VCPU; i++) {
+		if (vcpu->arch.apf.gfns[key] == gfn ||
+		    vcpu->arch.apf.gfns[key] == ~0)
+			break;
+
+		key = kvm_async_pf_hash_next(key);
+	}
+
+	return key;
+}
+
+static void kvm_async_pf_hash_remove(struct kvm_vcpu *vcpu, gfn_t gfn)
+{
+	u32 i, j, k;
+
+	i = j = kvm_async_pf_hash_slot(vcpu, gfn);
+	while (true) {
+		vcpu->arch.apf.gfns[i] = ~0;
+
+		do {
+			j = kvm_async_pf_hash_next(j);
+			if (vcpu->arch.apf.gfns[j] == ~0)
+				return;
+
+			k = kvm_async_pf_hash_fn(vcpu->arch.apf.gfns[j]);
+			/*
+			 * k lies cyclically in ]i,j]
+			 * |    i.k.j |
+			 * |....j i.k.| or  |.k..j i...|
+			 */
+		} while ((i <= j) ? (i < k && k <= j) : (i < k || k <= j));
+
+		vcpu->arch.apf.gfns[i] = vcpu->arch.apf.gfns[j];
+		i = j;
+	}
+}
+
+bool kvm_async_pf_hash_find(struct kvm_vcpu *vcpu, gfn_t gfn)
+{
+	u32 key = kvm_async_pf_hash_slot(vcpu, gfn);
+
+	return vcpu->arch.apf.gfns[key] == gfn;
+}
+
+static inline int kvm_async_pf_read_cache(struct kvm_vcpu *vcpu, u32 *val)
+{
+	return kvm_read_guest_cached(vcpu->kvm, &vcpu->arch.apf.cache,
+				     val, sizeof(*val));
+}
+
+static inline int kvm_async_pf_write_cache(struct kvm_vcpu *vcpu, u32 val)
+{
+	return kvm_write_guest_cached(vcpu->kvm, &vcpu->arch.apf.cache,
+				      &val, sizeof(val));
+}
+
+bool kvm_arch_can_inject_async_page_not_present(struct kvm_vcpu *vcpu)
+{
+	u64 vbar, pc;
+	u32 val;
+	int ret;
+
+	if (!(vcpu->arch.apf.control_block & KVM_ASYNC_PF_ENABLED))
+		return false;
+
+	if (vcpu->arch.apf.send_user_only && vcpu_mode_priv(vcpu))
+		return false;
+
+	/* Pending page fault, which ins't acknowledged by guest */
+	ret = kvm_async_pf_read_cache(vcpu, &val);
+	if (ret || val)
+		return false;
+
+	/*
+	 * Events can't be injected through data abort because it's
+	 * going to clobber ELR_EL1, which might not consued (or saved)
+	 * by guest yet.
+	 */
+	vbar = vcpu_read_sys_reg(vcpu, VBAR_EL1);
+	pc = *vcpu_pc(vcpu);
+	if (pc >= vbar && pc < (vbar + vcpu->arch.apf.no_fault_inst_range))
+		return false;
+
+	return true;
+}
+
+/*
+ * We need deliver the page present signal as quick as possible because
+ * it's performance critical. So the signal is delivered no matter which
+ * privilege level the guest has. It's possible the signal can't be handled
+ * by the guest immediately. However, host doesn't contribute the delay
+ * anyway.
+ */
+bool kvm_arch_can_inject_async_page_present(struct kvm_vcpu *vcpu)
+{
+	u64 vbar, pc;
+	u32 val;
+	int ret;
+
+	if (!(vcpu->arch.apf.control_block & KVM_ASYNC_PF_ENABLED))
+		return true;
+
+	/* Pending page fault, which ins't acknowledged by guest */
+	ret = kvm_async_pf_read_cache(vcpu, &val);
+	if (ret || val)
+		return false;
+
+	/*
+	 * Events can't be injected through data abort because it's
+	 * going to clobber ELR_EL1, which might not consued (or saved)
+	 * by guest yet.
+	 */
+	vbar = vcpu_read_sys_reg(vcpu, VBAR_EL1);
+	pc = *vcpu_pc(vcpu);
+	if (pc >= vbar && pc < (vbar + vcpu->arch.apf.no_fault_inst_range))
+		return false;
+
+	return true;
+}
+
+int kvm_arch_setup_async_pf(struct kvm_vcpu *vcpu, u32 esr,
+			    gpa_t gpa, gfn_t gfn)
+{
+	struct kvm_arch_async_pf arch;
+	unsigned long hva = kvm_vcpu_gfn_to_hva(vcpu, gfn);
+
+	arch.token = (vcpu->arch.apf.id++ << 16) | vcpu->vcpu_id;
+	arch.gfn = gfn;
+	arch.esr = esr;
+
+	return kvm_setup_async_pf(vcpu, gpa, hva, &arch);
+}
+
+/*
+ * It's garanteed that no pending asynchronous page fault when this is
+ * called. It means all previous issued asynchronous page faults have
+ * been acknoledged.
+ */
+void kvm_arch_async_page_not_present(struct kvm_vcpu *vcpu,
+				     struct kvm_async_pf *work)
+{
+	int ret;
+
+	kvm_async_pf_hash_add(vcpu, work->arch.gfn);
+	ret = kvm_async_pf_write_cache(vcpu, KVM_PV_REASON_PAGE_NOT_PRESENT);
+	if (ret) {
+		kvm_err("%s: Error %d writing cache\n", __func__, ret);
+		kvm_async_pf_hash_remove(vcpu, work->arch.gfn);
+		return;
+	}
+
+	kvm_inject_dabt(vcpu, work->arch.token);
+}
+
+/*
+ * It's garanteed that no pending asynchronous page fault when this is
+ * called. It means all previous issued asynchronous page faults have
+ * been acknoledged.
+ */
+void kvm_arch_async_page_present(struct kvm_vcpu *vcpu,
+				 struct kvm_async_pf *work)
+{
+	int ret;
+
+	/* Broadcast wakeup */
+	if (work->wakeup_all)
+		work->arch.token = ~0;
+	else
+		kvm_async_pf_hash_remove(vcpu, work->arch.gfn);
+
+	ret = kvm_async_pf_write_cache(vcpu, KVM_PV_REASON_PAGE_READY);
+	if (ret) {
+		kvm_err("%s: Error %d writing cache\n", __func__, ret);
+		return;
+	}
+
+	kvm_inject_dabt(vcpu, work->arch.token);
+}
+
+void kvm_arch_async_page_ready(struct kvm_vcpu *vcpu,
+			       struct kvm_async_pf *work)
+{
+	struct kvm_memory_slot *memslot;
+	unsigned int esr = work->arch.esr;
+	phys_addr_t gpa = work->cr2_or_gpa;
+	gfn_t gfn = gpa >> PAGE_SHIFT;
+	unsigned long hva;
+	bool write_fault, writable;
+	int idx;
+
+	/*
+	 * We shouldn't issue prefault for special work to wake up
+	 * all pending tasks because the associated token (address)
+	 * is invalid.
+	 */
+	if (work->wakeup_all)
+		return;
+
+	/*
+	 * The gpa was validated before the work is started. However, the
+	 * memory slots might be changed since then. So we need to redo the
+	 * validatation here.
+	 */
+	idx = srcu_read_lock(&vcpu->kvm->srcu);
+
+	write_fault = kvm_is_write_fault(esr);
+	memslot = gfn_to_memslot(vcpu->kvm, gfn);
+	hva = gfn_to_hva_memslot_prot(memslot, gfn, &writable);
+	if (kvm_is_error_hva(hva) || (write_fault && !writable))
+		goto out;
+
+	kvm_handle_user_mem_abort(vcpu, esr, memslot, gpa, hva, true);
+
+out:
+	srcu_read_unlock(&vcpu->kvm->srcu, idx);
+}
+
+static long kvm_async_pf_update_enable_reg(struct kvm_vcpu *vcpu, u64 data)
+{
+	bool enabled, enable;
+	gpa_t gpa = (data & ~0x3F);
+	int ret;
+
+	enabled = !!(vcpu->arch.apf.control_block & KVM_ASYNC_PF_ENABLED);
+	enable = !!(data & KVM_ASYNC_PF_ENABLED);
+	if (enable == enabled) {
+		kvm_debug("%s: Async PF has been %s (0x%llx -> 0x%llx)\n",
+			  __func__, enabled ? "enabled" : "disabled",
+			  vcpu->arch.apf.control_block, data);
+		return SMCCC_RET_NOT_REQUIRED;
+	}
+
+	if (enable) {
+		ret = kvm_gfn_to_hva_cache_init(
+			vcpu->kvm, &vcpu->arch.apf.cache,
+			gpa + offsetof(struct kvm_vcpu_pv_apf_data, reason),
+			sizeof(u32));
+		if (ret) {
+			kvm_err("%s: Error %d initializing cache on 0x%llx\n",
+				__func__, ret, data);
+			return SMCCC_RET_NOT_SUPPORTED;
+		}
+
+		kvm_async_pf_hash_reset(vcpu);
+		vcpu->arch.apf.send_user_only =
+			!(data & KVM_ASYNC_PF_SEND_ALWAYS);
+		kvm_async_pf_wakeup_all(vcpu);
+		vcpu->arch.apf.control_block = data;
+	} else {
+		kvm_clear_async_pf_completion_queue(vcpu);
+		vcpu->arch.apf.control_block = data;
+	}
+
+	return SMCCC_RET_SUCCESS;
+}
+
+long kvm_async_pf_hypercall(struct kvm_vcpu *vcpu)
+{
+	u64 data, func, val, range;
+	long ret = SMCCC_RET_SUCCESS;
+
+	data = (smccc_get_arg2(vcpu) << 32) | smccc_get_arg1(vcpu);
+	func = data & (0xfful << 56);
+	val = data & ~(0xfful << 56);
+	switch (func) {
+	case BIT(63):
+		ret = kvm_async_pf_update_enable_reg(vcpu, val);
+		break;
+	case BIT(62):
+		if (vcpu->arch.apf.control_block & KVM_ASYNC_PF_ENABLED) {
+			ret = SMCCC_RET_NOT_SUPPORTED;
+			break;
+		}
+
+		range = vcpu->arch.apf.no_fault_inst_range;
+		vcpu->arch.apf.no_fault_inst_range = max(range, val);
+		break;
+	default:
+		kvm_err("%s: Unrecognized function 0x%llx\n", __func__, func);
+		ret = SMCCC_RET_NOT_SUPPORTED;
+	}
+
+	return ret;
+}
diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
index db6dce3d0e23..a7e0fe17e2f1 100644
--- a/virt/kvm/arm/hypercalls.c
+++ b/virt/kvm/arm/hypercalls.c
@@ -70,7 +70,15 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 		break;
 	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
 		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
+#ifdef CONFIG_KVM_ASYNC_PF
+		val[0] |= BIT(ARM_SMCCC_KVM_FUNC_APF);
+#endif
 		break;
+#ifdef CONFIG_KVM_ASYNC_PF
+	case ARM_SMCCC_VENDOR_HYP_KVM_APF_FUNC_ID:
+		val[0] = kvm_async_pf_hypercall(vcpu);
+		break;
+#endif
 	default:
 		return kvm_psci_call(vcpu);
 	}
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 95aaabb2b1fc..a303815845a2 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1656,6 +1656,30 @@ static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
 	       (hva & ~(map_size - 1)) + map_size <= uaddr_end;
 }
 
+static bool try_async_pf(struct kvm_vcpu *vcpu, u32 esr, gpa_t gpa,
+			 gfn_t gfn, kvm_pfn_t *pfn, bool write,
+			 bool *writable, bool prefault)
+{
+	struct kvm_memory_slot *slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
+#ifdef CONFIG_KVM_ASYNC_PF
+	bool async = false;
+
+	/* Bail if *pfn has correct page */
+	*pfn = __gfn_to_pfn_memslot(slot, gfn, false, &async, write, writable);
+	if (!async)
+		return false;
+
+	if (!prefault && kvm_arch_can_inject_async_page_not_present(vcpu)) {
+		if (kvm_async_pf_hash_find(vcpu, gfn) ||
+		    kvm_arch_setup_async_pf(vcpu, esr, gpa, gfn))
+			return true;
+	}
+#endif
+
+	*pfn = __gfn_to_pfn_memslot(slot, gfn, false, NULL, write, writable);
+	return false;
+}
+
 int kvm_handle_user_mem_abort(struct kvm_vcpu *vcpu, unsigned int esr,
 			      struct kvm_memory_slot *memslot,
 			      phys_addr_t fault_ipa, unsigned long hva,
@@ -1737,7 +1761,10 @@ int kvm_handle_user_mem_abort(struct kvm_vcpu *vcpu, unsigned int esr,
 	 */
 	smp_rmb();
 
-	pfn = gfn_to_pfn_prot(kvm, gfn, write_fault, &writable);
+	if (try_async_pf(vcpu, esr, fault_ipa, gfn, &pfn,
+			 write_fault, &writable, prefault))
+		return 1;
+
 	if (pfn == KVM_PFN_ERR_HWPOISON) {
 		kvm_send_hwpoison_signal(hva, vma_shift);
 		return 0;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
