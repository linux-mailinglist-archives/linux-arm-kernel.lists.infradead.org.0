Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BA314DBE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:29:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G329zLM6TFnXuPF/ZC37DmoXUS8U95t7EW8VVvI+Ml8=; b=OqL+4ax3CoaL9j
	3kIjhk+XfbD2GyjsK326AckAAc6o29FoGi/Y4ELMrSIFc5SJTK3EBp3xG9ZbZXftP6FRpItuVF9RT
	jgQLL+D1WyMVPcuKhMS2AuTTj5zBNSTzafRxPhUjbJejAIsdiYXiMQjhccxsRr2zBAIqo7SFK25bA
	66vKTtpTvFLbJEP3Z8hnVXazQHVUJzJAM/F1rPL/cuQvACrdwLr0MJi6DteA83A31f3P5xj13obHl
	dRpAUWpWzZ8Lqx9nnKUSQcsErTrUhqyUE4Tjhlpl8aetGFlBFZ29FDW3DV/3d+WoNMVAhCxmks8IO
	T95qr7IlEFVEXbkK19Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9tF-0007QW-JH; Thu, 30 Jan 2020 13:29:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9se-0007AG-56
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:29:14 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83B3A20CC7;
 Thu, 30 Jan 2020 13:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580390951;
 bh=8skjL/1z8FwV2stU9lUcE9jZv8Vw/UytMwcvkyiH+PY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eoFJXdx1ykVhL//A7727loMJWnUTdSZeE4col+9TCwpZu9NBrZiaaPZ62yw91Cfbf
 wC4fqoYp7KwnJl6FQ9+59TwhapftaY+5exmH9IuHz2usKCS3oCHJQ8H5L0DicQT1Zo
 2titHpwCi78sUQJFQNG/AxHrXPBpiC6hsTjRkUFM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ix9pt-002BmW-I1; Thu, 30 Jan 2020 13:26:22 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 13/23] KVM: arm/arm64: Cleanup MMIO handling
Date: Thu, 30 Jan 2020 13:25:48 +0000
Message-Id: <20200130132558.10201-14-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200130132558.10201-1-maz@kernel.org>
References: <20200130132558.10201-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 drjones@redhat.com, andrew.murray@arm.com, beata.michalska@linaro.org,
 christoffer.dall@arm.com, eric.auger@redhat.com, gshan@redhat.com,
 wanghaibin.wang@huawei.com, james.morse@arm.com, broonie@kernel.org,
 mark.rutland@arm.com, rmk+kernel@armlinux.org.uk,
 shannon.zhao@linux.alibaba.com, steven.price@arm.com, will@kernel.org,
 yuehaibing@huawei.com, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052912_257658_18821A65 
X-CRM114-Status: GOOD (  24.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
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

[32bit fix courtesy of Olof Johansson <olof@lixom.net>]
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_emulate.h   |  5 +-
 arch/arm/include/asm/kvm_host.h      | 12 +++--
 arch/arm/include/asm/kvm_hyp.h       |  1 +
 arch/arm/include/asm/kvm_mmio.h      | 28 -----------
 arch/arm64/include/asm/kvm_emulate.h |  3 +-
 arch/arm64/include/asm/kvm_host.h    | 12 +++--
 arch/arm64/include/asm/kvm_mmio.h    | 27 -----------
 virt/kvm/arm/mmio.c                  | 70 +++++++++-------------------
 virt/kvm/arm/mmu.c                   |  1 -
 9 files changed, 42 insertions(+), 117 deletions(-)
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
index 556cd818eccf..bd2233805d99 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -14,7 +14,6 @@
 #include <asm/cputype.h>
 #include <asm/kvm.h>
 #include <asm/kvm_asm.h>
-#include <asm/kvm_mmio.h>
 #include <asm/fpstate.h>
 #include <kvm/arm_arch_timer.h>
 
@@ -202,9 +201,6 @@ struct kvm_vcpu_arch {
 	 /* Don't run the guest (internal implementation need) */
 	bool pause;
 
-	/* IO related fields */
-	struct kvm_decode mmio_decode;
-
 	/* Cache some mmu pages needed inside spinlock regions */
 	struct kvm_mmu_memory_cache mmu_page_cache;
 
@@ -300,6 +296,14 @@ int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
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
diff --git a/arch/arm/include/asm/kvm_hyp.h b/arch/arm/include/asm/kvm_hyp.h
index 40e9034db601..3c1b55ecc578 100644
--- a/arch/arm/include/asm/kvm_hyp.h
+++ b/arch/arm/include/asm/kvm_hyp.h
@@ -10,6 +10,7 @@
 #include <linux/compiler.h>
 #include <linux/kvm_host.h>
 #include <asm/cp15.h>
+#include <asm/kvm_arm.h>
 #include <asm/vfp.h>
 
 #define __hyp_text __section(.hyp.text) notrace
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
