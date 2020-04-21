Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F7D1B2A10
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLFAW/jL9ASWYLx3w41iEx/zB86XPAUQ4fcCL7kYD+4=; b=FyFg/qlrslwvGx
	nJ1KGlWiRAUDi5uNiTDIxt/ZJjvbQ+i0z3TBZegkTSX5lOVHn0YmSvEy8VpZtei+lej+rxskgPgyF
	hgYks4t0hcDTGEm27cpA9ViOyuPszrLCQAneof2N2Tr36CmNsfq6G8lXyF50CtH5dKLN2bfj+q15a
	yFkZ4kkEx68IZu0J/COEVAAnAqSZxDqyEjdHFgyr3HgNbq0h0uzOGx4GGQ79pF2gOVpRFxYvnnQEm
	CYQV8RWP19boH0ILNWA1C+KOfiicqT4NfSfeM3sclU7Zr/mPXqols4defIeifBfEoZuDJBGKkAq1f
	7v8nw61wv6coB7Zp04DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu0U-0004G2-Fn; Tue, 21 Apr 2020 14:36:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtu4-0002eb-Ei
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:29:42 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42D182071E;
 Tue, 21 Apr 2020 14:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587479375;
 bh=Z3SAyJ+K8U4voELx90j49yg6ENkNXXLr7yM/HxwV9GE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=liFNkhlrc/hJrKIJbUUoN7Ue1AtOwo1n5VfyN6dUy+hT75/hsnHyQi2py2EUoX8sG
 zdRRSc+PTeJ6DHr7lSuwv++G2yFF4LqAeYUBNVj9H5oRqFZRg18PIEAqZp3QXMx5FG
 xmPfwT8kZfT53ePitklgmBeg8gfHlbsZ+iLxEVCY=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 3/8] arm64: cpufeature: Add CPU capability for AArch32 EL1
 support
Date: Tue, 21 Apr 2020 15:29:17 +0100
Message-Id: <20200421142922.18950-4-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142922.18950-1-will@kernel.org>
References: <20200421142922.18950-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_072936_633768_7363F28E 
X-CRM114-Status: GOOD (  14.39  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>, kernel-team@android.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although we emit a "SANITY CHECK" warning and taint the kernel if we
detect a CPU mismatch for AArch32 support at EL1, we still online the
CPU with disastrous consequences for any running 32-bit VMs.

Introduce a capability for AArch32 support at EL1 so that late onlining
of incompatible CPUs is forbidden.

Acked-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Tested-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/cpucaps.h |  3 ++-
 arch/arm64/include/asm/sysreg.h  |  1 +
 arch/arm64/kernel/cpufeature.c   | 12 ++++++++++++
 arch/arm64/kvm/reset.c           | 12 ++----------
 4 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index 8eb5a088ae65..c54c674e6c21 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -61,7 +61,8 @@
 #define ARM64_HAS_AMU_EXTN			51
 #define ARM64_HAS_ADDRESS_AUTH			52
 #define ARM64_HAS_GENERIC_AUTH			53
+#define ARM64_HAS_32BIT_EL1			54
 
-#define ARM64_NCAPS				54
+#define ARM64_NCAPS				55
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index d7181972d28d..c4e896bf77f3 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -655,6 +655,7 @@
 #define ID_AA64PFR0_ASIMD_NI		0xf
 #define ID_AA64PFR0_ASIMD_SUPPORTED	0x0
 #define ID_AA64PFR0_EL1_64BIT_ONLY	0x1
+#define ID_AA64PFR0_EL1_32BIT_64BIT	0x2
 #define ID_AA64PFR0_EL0_64BIT_ONLY	0x1
 #define ID_AA64PFR0_EL0_32BIT_64BIT	0x2
 
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index b143f8bc6c52..838fe5cc8d7e 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1535,6 +1535,18 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.field_pos = ID_AA64PFR0_EL0_SHIFT,
 		.min_field_value = ID_AA64PFR0_EL0_32BIT_64BIT,
 	},
+#ifdef CONFIG_KVM
+	{
+		.desc = "32-bit EL1 Support",
+		.capability = ARM64_HAS_32BIT_EL1,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.matches = has_cpuid_feature,
+		.sys_reg = SYS_ID_AA64PFR0_EL1,
+		.sign = FTR_UNSIGNED,
+		.field_pos = ID_AA64PFR0_EL1_SHIFT,
+		.min_field_value = ID_AA64PFR0_EL1_32BIT_64BIT,
+	},
+#endif
 	{
 		.desc = "Kernel page table isolation (KPTI)",
 		.capability = ARM64_UNMAP_KERNEL_AT_EL0,
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 30b7ea680f66..102e5c4e01a0 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -46,14 +46,6 @@ static const struct kvm_regs default_regs_reset32 = {
 			PSR_AA32_I_BIT | PSR_AA32_F_BIT),
 };
 
-static bool cpu_has_32bit_el1(void)
-{
-	u64 pfr0;
-
-	pfr0 = read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1);
-	return !!(pfr0 & 0x20);
-}
-
 /**
  * kvm_arch_vm_ioctl_check_extension
  *
@@ -66,7 +58,7 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 
 	switch (ext) {
 	case KVM_CAP_ARM_EL1_32BIT:
-		r = cpu_has_32bit_el1();
+		r = cpus_have_const_cap(ARM64_HAS_32BIT_EL1);
 		break;
 	case KVM_CAP_GUEST_DEBUG_HW_BPS:
 		r = get_num_brps();
@@ -288,7 +280,7 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
 	switch (vcpu->arch.target) {
 	default:
 		if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features)) {
-			if (!cpu_has_32bit_el1())
+			if (!cpus_have_const_cap(ARM64_HAS_32BIT_EL1))
 				goto out;
 			cpu_reset = &default_regs_reset32;
 		} else {
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
