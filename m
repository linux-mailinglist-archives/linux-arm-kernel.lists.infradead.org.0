Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717B34E55C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9leGTbv+lJW9pAh1SFgWlhdenmfmbbVg2hilSoW2oQE=; b=qOfyR2+F26Tcs4
	4MQDmJghPkHIZtDggQOqPNOdoRrQ7eVmdmWRevPiznrM6mMFaTAOPP/n6AXs6m6h/5YW6/iqHZJjp
	MrVJPS+hgNt1/hoBs2wFo81nKMRQvxW9+jKS2mbmXDcvoJSrBbjV7Gmb/DBI9lUwjRge3In7/v4WD
	VJqSWrTjfXQJAyRPXsfhu2NZ2Qr9nHcXu4lURv3foJDIFnW0iiim4ho2aCGNHaGf55f3tD9iEcQfT
	na7xCfEboEFyrs9KUTI5+e3naFePgSAjWGDXvFWdPhtVwbYVKxmlox3iYPIMaj9TjAso6HZChxZbE
	wSuZ5BFyxY3y2Cfi3E6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGQA-0000Wr-TL; Fri, 21 Jun 2019 10:05:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1h-0008Ao-Vo
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0F03714F6;
 Fri, 21 Jun 2019 02:40:09 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF6B43F246;
 Fri, 21 Jun 2019 02:40:07 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 36/59] KVM: arm64: nv: Implement nested Stage-2 page table
 walk logic
Date: Fri, 21 Jun 2019 10:38:20 +0100
Message-Id: <20190621093843.220980-37-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024010_195374_038DE8F6 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@linaro.org>

Based on the pseudo-code in the ARM ARM, implement a stage 2 software
page table walker.

Signed-off-by: Christoffer Dall <christoffer.dall@linaro.org>
Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/esr.h        |   1 +
 arch/arm64/include/asm/kvm_arm.h    |   2 +
 arch/arm64/include/asm/kvm_nested.h |  13 ++
 arch/arm64/kvm/nested.c             | 241 ++++++++++++++++++++++++++++
 4 files changed, 257 insertions(+)

diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
index f85aa269082c..8efc91435948 100644
--- a/arch/arm64/include/asm/esr.h
+++ b/arch/arm64/include/asm/esr.h
@@ -136,6 +136,7 @@
 #define ESR_ELx_CM 		(UL(1) << ESR_ELx_CM_SHIFT)
 
 /* ISS field definitions for exceptions taken in to Hyp */
+#define ESR_ELx_FSC_ADDRSZ	(0x00)
 #define ESR_ELx_CV		(UL(1) << 24)
 #define ESR_ELx_COND_SHIFT	(20)
 #define ESR_ELx_COND_MASK	(UL(0xF) << ESR_ELx_COND_SHIFT)
diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index 55f4525c112c..1e4dbe0b1c8e 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -273,6 +273,8 @@
 #define VTTBR_VMID_SHIFT  (UL(48))
 #define VTTBR_VMID_MASK(size) (_AT(u64, (1 << size) - 1) << VTTBR_VMID_SHIFT)
 
+#define SCTLR_EE	(UL(1) << 25)
+
 /* Hyp System Trap Register */
 #define HSTR_EL2_T(x)	(1 << x)
 
diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
index d4021d0892bd..686ba53379ab 100644
--- a/arch/arm64/include/asm/kvm_nested.h
+++ b/arch/arm64/include/asm/kvm_nested.h
@@ -17,6 +17,19 @@ extern struct kvm_s2_mmu *lookup_s2_mmu(struct kvm *kvm, u64 vttbr, u64 hcr);
 extern void kvm_vcpu_load_hw_mmu(struct kvm_vcpu *vcpu);
 extern void kvm_vcpu_put_hw_mmu(struct kvm_vcpu *vcpu);
 
+struct kvm_s2_trans {
+	phys_addr_t output;
+	phys_addr_t block_size;
+	bool writable;
+	bool readable;
+	int level;
+	u32 esr;
+	u64 upper_attr;
+};
+
+extern int kvm_walk_nested_s2(struct kvm_vcpu *vcpu, phys_addr_t gipa,
+			      struct kvm_s2_trans *result);
+
 int handle_wfx_nested(struct kvm_vcpu *vcpu, bool is_wfe);
 extern bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit);
 extern bool forward_nv_traps(struct kvm_vcpu *vcpu);
diff --git a/arch/arm64/kvm/nested.c b/arch/arm64/kvm/nested.c
index 4b38dc5c0be3..6a9bd68b769b 100644
--- a/arch/arm64/kvm/nested.c
+++ b/arch/arm64/kvm/nested.c
@@ -80,6 +80,247 @@ int kvm_vcpu_init_nested(struct kvm_vcpu *vcpu)
 	return ret;
 }
 
+struct s2_walk_info {
+	unsigned int pgshift;
+	unsigned int pgsize;
+	unsigned int ps;
+	unsigned int sl;
+	unsigned int t0sz;
+};
+
+static unsigned int ps_to_output_size(unsigned int ps)
+{
+	switch (ps) {
+	case 0: return 32;
+	case 1: return 36;
+	case 2: return 40;
+	case 3: return 42;
+	case 4: return 44;
+	case 5:
+	default:
+		return 48;
+	}
+}
+
+static unsigned int pa_max(void)
+{
+	 /* We always emulate a VM with maximum PA size of KVM_PHYS_SIZE. */
+	return KVM_PHYS_SHIFT;
+}
+
+static int esr_s2_fault(struct kvm_vcpu *vcpu, int level, u32 fsc)
+{
+	u32 esr;
+
+	esr = kvm_vcpu_get_hsr(vcpu) & ~ESR_ELx_FSC;
+	esr |= fsc;
+	esr |= level & 0x3;
+	return esr;
+}
+
+static int check_base_s2_limits(struct kvm_vcpu *vcpu, struct s2_walk_info *wi,
+				int level, int input_size, int stride)
+{
+	int start_size;
+
+	/* Check translation limits */
+	switch (wi->pgsize) {
+	case SZ_64K:
+		if (level == 0 || (level == 1 && pa_max() <= 42))
+			return -EFAULT;
+		break;
+	case SZ_16K:
+		if (level == 0 || (level == 1 && pa_max() <= 40))
+			return -EFAULT;
+		break;
+	case SZ_4K:
+		if (level < 0 || (level == 0 && pa_max() <= 42))
+			return -EFAULT;
+		break;
+	}
+
+	/* Check input size limits */
+	if (input_size > pa_max() &&
+	    (!vcpu_mode_is_32bit(vcpu) || input_size > 40))
+		return -EFAULT;
+
+	/* Check number of entries in starting level table */
+	start_size = input_size - ((3 - level) * stride + wi->pgshift);
+	if (start_size < 1 || start_size > stride + 4)
+		return -EFAULT;
+
+	return 0;
+}
+
+/* Check if output is within boundaries */
+static int check_output_size(struct kvm_vcpu *vcpu, struct s2_walk_info *wi,
+			     phys_addr_t output)
+{
+	unsigned int output_size = ps_to_output_size(wi->ps);
+
+	if (output_size > pa_max())
+		output_size = pa_max();
+
+	if (output_size != 48 && (output & GENMASK_ULL(47, output_size)))
+		return -1;
+
+	return 0;
+}
+
+/*
+ * This is essentially a C-version of the pseudo code from the ARM ARM
+ * AArch64.TranslationTableWalk  function.  I strongly recommend looking at
+ * that pseudocode in trying to understand this.
+ *
+ * Must be called with the kvm->srcy read lock held
+ */
+static int walk_nested_s2_pgd(struct kvm_vcpu *vcpu, phys_addr_t ipa,
+			      struct s2_walk_info *wi, struct kvm_s2_trans *out)
+{
+	u64 vttbr = vcpu_read_sys_reg(vcpu, VTTBR_EL2);
+	int first_block_level, level, stride, input_size, base_lower_bound;
+	phys_addr_t base_addr;
+	unsigned int addr_top, addr_bottom;
+	u64 desc;  /* page table entry */
+	int ret;
+	phys_addr_t paddr;
+
+	switch (wi->pgsize) {
+	case SZ_64K:
+	case SZ_16K:
+		level = 3 - wi->sl;
+		first_block_level = 2;
+		break;
+	case SZ_4K:
+		level = 2 - wi->sl;
+		first_block_level = 1;
+		break;
+	default:
+		/* GCC is braindead */
+		WARN(1, "Page size is none of 4K, 16K or 64K");
+	}
+
+	stride = wi->pgshift - 3;
+	input_size = 64 - wi->t0sz;
+	if (input_size > 48 || input_size < 25)
+		return -EFAULT;
+
+	ret = check_base_s2_limits(vcpu, wi, level, input_size, stride);
+	if (WARN_ON(ret))
+		return ret;
+
+	if (check_output_size(vcpu, wi, vttbr)) {
+		out->esr = esr_s2_fault(vcpu, level, ESR_ELx_FSC_ADDRSZ);
+		return 1;
+	}
+
+	base_lower_bound = 3 + input_size - ((3 - level) * stride +
+			   wi->pgshift);
+	base_addr = vttbr & GENMASK_ULL(47, base_lower_bound);
+
+	addr_top = input_size - 1;
+
+	while (1) {
+		phys_addr_t index;
+
+		addr_bottom = (3 - level) * stride + wi->pgshift;
+		index = (ipa & GENMASK_ULL(addr_top, addr_bottom))
+			>> (addr_bottom - 3);
+
+		paddr = base_addr | index;
+		ret = kvm_read_guest(vcpu->kvm, paddr, &desc, sizeof(desc));
+		if (ret < 0)
+			return ret;
+
+		/*
+		 * Handle reversedescriptors if endianness differs between the
+		 * host and the guest hypervisor.
+		 */
+		if (vcpu_read_sys_reg(vcpu, SCTLR_EL2) & SCTLR_EE)
+			desc = be64_to_cpu(desc);
+		else
+			desc = le64_to_cpu(desc);
+
+		/* Check for valid descriptor at this point */
+		if (!(desc & 1) || ((desc & 3) == 1 && level == 3)) {
+			out->esr = esr_s2_fault(vcpu, level, ESR_ELx_FSC_FAULT);
+			return 1;
+		}
+
+		/* We're at the final level or block translation level */
+		if ((desc & 3) == 1 || level == 3)
+			break;
+
+		if (check_output_size(vcpu, wi, desc)) {
+			out->esr = esr_s2_fault(vcpu, level, ESR_ELx_FSC_ADDRSZ);
+			return 1;
+		}
+
+		base_addr = desc & GENMASK_ULL(47, wi->pgshift);
+
+		level += 1;
+		addr_top = addr_bottom - 1;
+	}
+
+	if (level < first_block_level) {
+		out->esr = esr_s2_fault(vcpu, level, ESR_ELx_FSC_FAULT);
+		return 1;
+	}
+
+	/*
+	 * We don't use the contiguous bit in the stage-2 ptes, so skip check
+	 * for misprogramming of the contiguous bit.
+	 */
+
+	if (check_output_size(vcpu, wi, desc)) {
+		out->esr = esr_s2_fault(vcpu, level, ESR_ELx_FSC_ADDRSZ);
+		return 1;
+	}
+
+	if (!(desc & BIT(10))) {
+		out->esr = esr_s2_fault(vcpu, level, ESR_ELx_FSC_ACCESS);
+		return 1;
+	}
+
+	/* Calculate and return the result */
+	paddr = (desc & GENMASK_ULL(47, addr_bottom)) |
+		(ipa & GENMASK_ULL(addr_bottom - 1, 0));
+	out->output = paddr;
+	out->block_size = 1UL << ((3 - level) * stride + wi->pgshift);
+	out->readable = desc & (0b01 << 6);
+	out->writable = desc & (0b10 << 6);
+	out->level = level;
+	out->upper_attr = desc & GENMASK_ULL(63, 52);
+	return 0;
+}
+
+int kvm_walk_nested_s2(struct kvm_vcpu *vcpu, phys_addr_t gipa,
+		       struct kvm_s2_trans *result)
+{
+	u64 vtcr = vcpu_read_sys_reg(vcpu, VTCR_EL2);
+	struct s2_walk_info wi;
+
+	if (!nested_virt_in_use(vcpu))
+		return 0;
+
+	wi.t0sz = vtcr & TCR_EL2_T0SZ_MASK;
+
+	switch (vtcr & VTCR_EL2_TG0_MASK) {
+	case VTCR_EL2_TG0_4K:
+		wi.pgshift = 12;	 break;
+	case VTCR_EL2_TG0_16K:
+		wi.pgshift = 14;	 break;
+	case VTCR_EL2_TG0_64K:
+	default:
+		wi.pgshift = 16;	 break;
+	}
+	wi.pgsize = 1UL << wi.pgshift;
+	wi.ps = (vtcr & VTCR_EL2_PS_MASK) >> VTCR_EL2_PS_SHIFT;
+	wi.sl = (vtcr & VTCR_EL2_SL0_MASK) >> VTCR_EL2_SL0_SHIFT;
+
+	return walk_nested_s2_pgd(vcpu, gipa, &wi, result);
+}
+
 /* Must be called with kvm->lock held */
 struct kvm_s2_mmu *lookup_s2_mmu(struct kvm *kvm, u64 vttbr, u64 hcr)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
