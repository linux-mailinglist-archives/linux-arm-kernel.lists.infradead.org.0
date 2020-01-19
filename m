Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D54C8141F4C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 19:11:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j7ahE0OIQOU3U1LiZNg78oU/3MQRGfBN18HO6LFvhxM=; b=l1qn1WltYYIFMM
	Ep6BqnOAo/enCKpXzZFhjF+rG8GDiPZTJVO/Ml7OA7UFzSc+dPJbD+kxhQSFJM+k03GW52GieivEs
	l6X1pBXQ83/7iEwjHZWA1CBZni9aJU3i0iu/Ct6YTEfG33jV6UjMUICG3IRTE+LeqozYcEjBK/vGX
	aVl8z7WfpkeKzbVr6/0V5aM/ULKSWzAGDXAHFvhQfmY0cXPBVM9jxDQ8bymW4j8fO331ru5yj/WR7
	DyeEtRaX30fg2TjbHG/okf+3qq53q9/dmTu0A9oVGEa1dmyU6pHp3RTeDAOmvA2eI0JpP4Ixchh0q
	Pjd2O+9TDePaxrkaIt0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itF2v-0005ED-M6; Sun, 19 Jan 2020 18:11:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itF2n-0005Dn-4U
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 18:11:30 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8578920679;
 Sun, 19 Jan 2020 18:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579457488;
 bh=YPUa4t1yHP+68PMUXQz60+tcZLNJOSQXuWd7TftDZdQ=;
 h=From:To:Cc:Subject:Date:From;
 b=2sxAUSdLdA7kZbuj+BmeD+72LFe1YbOBVMCoYfHHShizYSXpi3S0709VOSRlaENf5
 jyT3D4IwGiLG7wxWUHOUhEbWoHdhSfASVYBPj1MT79JqXrgAjJVEodQb7Gi+7RgoFc
 jG82ZgIxBW76n4ykUoHEspo4pi4pOR2FJlJcFAaw=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itF2k-0004L8-O5; Sun, 19 Jan 2020 18:11:26 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH] KVM: arm/arm64: Cleanup MMIO handling
Date: Sun, 19 Jan 2020 18:11:16 +0000
Message-Id: <20200119181116.374-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Christoffer.Dall@arm.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_101129_221305_0D3D5EEB 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Morse <james.morse@arm.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Our MMIO handling is a bit odd, in the sense that it uses an
intermediate per-vcpu structure to store the various decoded
information that describe the access.

But the same information is readily available in the HSR/ESR_EL2
field, and we actually use this field to populate the structure.

Let's simplify the whole thing by getting rid of the superfluous
structure and save a (tiny) bit of space in the vcpu structure.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_emulate.h   |  5 +-
 arch/arm/include/asm/kvm_host.h      |  9 +++-
 arch/arm/include/asm/kvm_mmio.h      | 28 -----------
 arch/arm64/include/asm/kvm_emulate.h |  3 +-
 arch/arm64/include/asm/kvm_host.h    | 12 +++--
 arch/arm64/include/asm/kvm_mmio.h    | 27 -----------
 virt/kvm/arm/mmio.c                  | 70 +++++++++-------------------
 virt/kvm/arm/mmu.c                   |  1 -
 8 files changed, 41 insertions(+), 114 deletions(-)
 delete mode 100644 arch/arm/include/asm/kvm_mmio.h
 delete mode 100644 arch/arm64/include/asm/kvm_mmio.h

diff --git a/arch/arm/include/asm/kvm_emulate.h b/arch/arm/include/asm/kvm_emulate.h
index 08d9805f613b..3944305e81df 100644
--- a/arch/arm/include/asm/kvm_emulate.h
+++ b/arch/arm/include/asm/kvm_emulate.h
@@ -9,7 +9,6 @@
 
 #include <linux/kvm_host.h>
 #include <asm/kvm_asm.h>
-#include <asm/kvm_mmio.h>
 #include <asm/kvm_arm.h>
 #include <asm/cputype.h>
 
@@ -220,7 +219,7 @@ static inline bool kvm_vcpu_dabt_is_cm(struct kvm_vcpu *vcpu)
 }
 
 /* Get Access Size from a data abort */
-static inline int kvm_vcpu_dabt_get_as(struct kvm_vcpu *vcpu)
+static inline unsigned int kvm_vcpu_dabt_get_as(struct kvm_vcpu *vcpu)
 {
 	switch ((kvm_vcpu_get_hsr(vcpu) >> 22) & 0x3) {
 	case 0:
@@ -231,7 +230,7 @@ static inline int kvm_vcpu_dabt_get_as(struct kvm_vcpu *vcpu)
 		return 4;
 	default:
 		kvm_err("Hardware is weird: SAS 0b11 is reserved\n");
-		return -EFAULT;
+		return 4;
 	}
 }
 
diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 556cd818eccf..acf4c87e8321 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -14,7 +14,6 @@
 #include <asm/cputype.h>
 #include <asm/kvm.h>
 #include <asm/kvm_asm.h>
-#include <asm/kvm_mmio.h>
 #include <asm/fpstate.h>
 #include <kvm/arm_arch_timer.h>
 
@@ -300,6 +299,14 @@ int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 static inline void handle_exit_early(struct kvm_vcpu *vcpu, struct kvm_run *run,
 				     int exception_index) {}
 
+/* MMIO helpers */
+void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long data);
+unsigned long kvm_mmio_read_buf(const void *buf, unsigned int len);
+
+int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
+int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
+		 phys_addr_t fault_ipa);
+
 static inline void __cpu_init_hyp_mode(phys_addr_t pgd_ptr,
 				       unsigned long hyp_stack_ptr,
 				       unsigned long vector_ptr)
diff --git a/arch/arm/include/asm/kvm_mmio.h b/arch/arm/include/asm/kvm_mmio.h
deleted file mode 100644
index 32fbf82e3ebc..000000000000
--- a/arch/arm/include/asm/kvm_mmio.h
+++ /dev/null
@@ -1,28 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2012 - Virtual Open Systems and Columbia University
- * Author: Christoffer Dall <c.dall@virtualopensystems.com>
- */
-
-#ifndef __ARM_KVM_MMIO_H__
-#define __ARM_KVM_MMIO_H__
-
-#include <linux/kvm_host.h>
-#include <asm/kvm_asm.h>
-#include <asm/kvm_arm.h>
-
-struct kvm_decode {
-	unsigned long rt;
-	bool sign_extend;
-	/* Not used on 32-bit arm */
-	bool sixty_four;
-};
-
-void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long data);
-unsigned long kvm_mmio_read_buf(const void *buf, unsigned int len);
-
-int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
-		 phys_addr_t fault_ipa);
-
-#endif	/* __ARM_KVM_MMIO_H__ */
diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 53ea7637b7b2..688c63412cc2 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -17,7 +17,6 @@
 #include <asm/esr.h>
 #include <asm/kvm_arm.h>
 #include <asm/kvm_hyp.h>
-#include <asm/kvm_mmio.h>
 #include <asm/ptrace.h>
 #include <asm/cputype.h>
 #include <asm/virt.h>
@@ -341,7 +340,7 @@ static inline bool kvm_vcpu_dabt_is_cm(const struct kvm_vcpu *vcpu)
 	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_CM);
 }
 
-static inline int kvm_vcpu_dabt_get_as(const struct kvm_vcpu *vcpu)
+static inline unsigned int kvm_vcpu_dabt_get_as(const struct kvm_vcpu *vcpu)
 {
 	return 1 << ((kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SAS) >> ESR_ELx_SAS_SHIFT);
 }
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index c61260cf63c5..f6a77ddab956 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -24,7 +24,6 @@
 #include <asm/fpsimd.h>
 #include <asm/kvm.h>
 #include <asm/kvm_asm.h>
-#include <asm/kvm_mmio.h>
 #include <asm/thread_info.h>
 
 #define __KVM_HAVE_ARCH_INTC_INITIALIZED
@@ -325,9 +324,6 @@ struct kvm_vcpu_arch {
 	/* Don't run the guest (internal implementation need) */
 	bool pause;
 
-	/* IO related fields */
-	struct kvm_decode mmio_decode;
-
 	/* Cache some mmu pages needed inside spinlock regions */
 	struct kvm_mmu_memory_cache mmu_page_cache;
 
@@ -491,6 +487,14 @@ int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 void handle_exit_early(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		       int exception_index);
 
+/* MMIO helpers */
+void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long data);
+unsigned long kvm_mmio_read_buf(const void *buf, unsigned int len);
+
+int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
+int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
+		 phys_addr_t fault_ipa);
+
 int kvm_perf_init(void);
 int kvm_perf_teardown(void);
 
diff --git a/arch/arm64/include/asm/kvm_mmio.h b/arch/arm64/include/asm/kvm_mmio.h
deleted file mode 100644
index b204501a0c39..000000000000
--- a/arch/arm64/include/asm/kvm_mmio.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2012 - Virtual Open Systems and Columbia University
- * Author: Christoffer Dall <c.dall@virtualopensystems.com>
- */
-
-#ifndef __ARM64_KVM_MMIO_H__
-#define __ARM64_KVM_MMIO_H__
-
-#include <linux/kvm_host.h>
-#include <asm/kvm_arm.h>
-
-struct kvm_decode {
-	unsigned long rt;
-	bool sign_extend;
-	/* Witdth of the register accessed by the faulting instruction is 64-bits */
-	bool sixty_four;
-};
-
-void kvm_mmio_write_buf(void *buf, unsigned int len, unsigned long data);
-unsigned long kvm_mmio_read_buf(const void *buf, unsigned int len);
-
-int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
-		 phys_addr_t fault_ipa);
-
-#endif	/* __ARM64_KVM_MMIO_H__ */
diff --git a/virt/kvm/arm/mmio.c b/virt/kvm/arm/mmio.c
index 1bb71acd53f2..aedfcff99ac5 100644
--- a/virt/kvm/arm/mmio.c
+++ b/virt/kvm/arm/mmio.c
@@ -5,7 +5,6 @@
  */
 
 #include <linux/kvm_host.h>
-#include <asm/kvm_mmio.h>
 #include <asm/kvm_emulate.h>
 #include <trace/events/kvm.h>
 
@@ -92,26 +91,23 @@ int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
 
 	vcpu->mmio_needed = 0;
 
-	if (!run->mmio.is_write) {
-		len = run->mmio.len;
-		if (len > sizeof(unsigned long))
-			return -EINVAL;
-
+	if (!kvm_vcpu_dabt_iswrite(vcpu)) {
+		len = kvm_vcpu_dabt_get_as(vcpu);
 		data = kvm_mmio_read_buf(run->mmio.data, len);
 
-		if (vcpu->arch.mmio_decode.sign_extend &&
+		if (kvm_vcpu_dabt_issext(vcpu) &&
 		    len < sizeof(unsigned long)) {
 			mask = 1U << ((len * 8) - 1);
 			data = (data ^ mask) - mask;
 		}
 
-		if (!vcpu->arch.mmio_decode.sixty_four)
+		if (!kvm_vcpu_dabt_issf(vcpu))
 			data = data & 0xffffffff;
 
 		trace_kvm_mmio(KVM_TRACE_MMIO_READ, len, run->mmio.phys_addr,
 			       &data);
 		data = vcpu_data_host_to_guest(vcpu, data, len);
-		vcpu_set_reg(vcpu, vcpu->arch.mmio_decode.rt, data);
+		vcpu_set_reg(vcpu, kvm_vcpu_dabt_get_rd(vcpu), data);
 	}
 
 	/*
@@ -123,36 +119,6 @@ int kvm_handle_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	return 0;
 }
 
-static int decode_hsr(struct kvm_vcpu *vcpu, bool *is_write, int *len)
-{
-	unsigned long rt;
-	int access_size;
-	bool sign_extend;
-	bool sixty_four;
-
-	if (kvm_vcpu_dabt_iss1tw(vcpu)) {
-		/* page table accesses IO mem: tell guest to fix its TTBR */
-		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
-		return 1;
-	}
-
-	access_size = kvm_vcpu_dabt_get_as(vcpu);
-	if (unlikely(access_size < 0))
-		return access_size;
-
-	*is_write = kvm_vcpu_dabt_iswrite(vcpu);
-	sign_extend = kvm_vcpu_dabt_issext(vcpu);
-	sixty_four = kvm_vcpu_dabt_issf(vcpu);
-	rt = kvm_vcpu_dabt_get_rd(vcpu);
-
-	*len = access_size;
-	vcpu->arch.mmio_decode.sign_extend = sign_extend;
-	vcpu->arch.mmio_decode.rt = rt;
-	vcpu->arch.mmio_decode.sixty_four = sixty_four;
-
-	return 0;
-}
-
 int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		 phys_addr_t fault_ipa)
 {
@@ -164,15 +130,10 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
 	u8 data_buf[8];
 
 	/*
-	 * Prepare MMIO operation. First decode the syndrome data we get
-	 * from the CPU. Then try if some in-kernel emulation feels
-	 * responsible, otherwise let user space do its magic.
+	 * No valid syndrome? Ask userspace for help if it has
+	 * voluntered to do so, and bail out otherwise.
 	 */
-	if (kvm_vcpu_dabt_isvalid(vcpu)) {
-		ret = decode_hsr(vcpu, &is_write, &len);
-		if (ret)
-			return ret;
-	} else {
+	if (!kvm_vcpu_dabt_isvalid(vcpu)) {
 		if (vcpu->kvm->arch.return_nisv_io_abort_to_user) {
 			run->exit_reason = KVM_EXIT_ARM_NISV;
 			run->arm_nisv.esr_iss = kvm_vcpu_dabt_iss_nisv_sanitized(vcpu);
@@ -184,7 +145,20 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		return -ENOSYS;
 	}
 
-	rt = vcpu->arch.mmio_decode.rt;
+	/* Page table accesses IO mem: tell guest to fix its TTBR */
+	if (kvm_vcpu_dabt_iss1tw(vcpu)) {
+		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
+		return 1;
+	}
+
+	/*
+	 * Prepare MMIO operation. First decode the syndrome data we get
+	 * from the CPU. Then try if some in-kernel emulation feels
+	 * responsible, otherwise let user space do its magic.
+	 */
+	is_write = kvm_vcpu_dabt_iswrite(vcpu);
+	len = kvm_vcpu_dabt_get_as(vcpu);
+	rt = kvm_vcpu_dabt_get_rd(vcpu);
 
 	if (is_write) {
 		data = vcpu_data_guest_to_host(vcpu, vcpu_get_reg(vcpu, rt),
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e3ad95013192..a4fa81d75e84 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -14,7 +14,6 @@
 #include <asm/cacheflush.h>
 #include <asm/kvm_arm.h>
 #include <asm/kvm_mmu.h>
-#include <asm/kvm_mmio.h>
 #include <asm/kvm_ras.h>
 #include <asm/kvm_asm.h>
 #include <asm/kvm_emulate.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
