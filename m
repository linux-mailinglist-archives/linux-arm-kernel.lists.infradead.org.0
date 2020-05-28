Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C6F1E61EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yAdZ3q7dm5I0xaFjOOf3Eip3ZXUMMyDFIzfZS7d93DA=; b=QoBlataFuMfgwo
	gDxQWubEc/G0D2euN80lr0i2VqYI07NByc71p3NQ+bQtVo2D90nh0AiraPdautq9GkPUM6EvdYpd1
	5vZnLy3f30eceNAInW1L2eP8TevVQDqBhEqv/QuBPNNnvju4jFD8+stk5qTsdpcKwXBiDjsm6wu3o
	DVixHZQAf8McbgHlw3zo9qDHkmgEOmnawHybkEZewe9Mheha+o/zQdXSKbb4zJoBGg+Ph9jiuOgAq
	Zlru50RolHE5fv9Fw7NSupPHEtdi0/DD9vp9SyMgk2G0L5L5bFOXpMNJMeihRPw1ibs6wG7eHFKs5
	4mE+ajkgjZ+ncirdlA/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeILp-0005ei-IX; Thu, 28 May 2020 13:13:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeILS-0005bh-Rs
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:13:16 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6774320814;
 Thu, 28 May 2020 13:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590671594;
 bh=88nAhcUdAjqSE5P8DmE4VKnsji8sqj9MbWPaJTGERCA=;
 h=From:To:Cc:Subject:Date:From;
 b=l2OHw/FQ9kerohAio4wp12902DOjbqbrMavpBZZOXeJk1Cey1Q+bKIje+2nVhDNvK
 WfulkPDPNpuEBUQA1KNabTOrlpcNAzHEz2FN7ZbdBGQ0pVUsJC0wZymO6GhkrEKsyG
 oK+/W9yovwCO4nBdu8ztZkfiyXkr+lh3SMcuJ0iM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jeILQ-00Fzjb-KP; Thu, 28 May 2020 14:13:12 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: [PATCH] KVM: arm64: Check advertised Stage-2 page size capability
Date: Thu, 28 May 2020 14:12:58 +0100
Message-Id: <20200528131259.860459-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, catalin.marinas@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 alexandru.elisei@arm.com, kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_061314_959729_05442477 
X-CRM114-Status: GOOD (  18.56  )
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
Cc: kernel-team@android.com, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, alexandru.elisei@arm.com,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With ARMv8.5-GTG, the hardware (or more likely a hypervisor) can
advertise the supported Stage-2 page sizes.

Let's check this at boot time.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Alexandru Elisei <alexandru.elisei@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
Hi Will,

Can you please take this patch via the arm64 tree, and apply it
to the for-next/cpufeature branch?

Thanks,

        M.
 arch/arm64/include/asm/kvm_host.h |  2 +-
 arch/arm64/include/asm/sysreg.h   |  3 +++
 arch/arm64/kernel/cpufeature.c    | 18 +++++++++++++++
 arch/arm64/kvm/reset.c            | 37 +++++++++++++++++++++++++++++--
 virt/kvm/arm/arm.c                |  4 +---
 5 files changed, 58 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 32c8a675e5a4..7dd8fefa6aec 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -670,7 +670,7 @@ static inline int kvm_arm_have_ssbd(void)
 void kvm_vcpu_load_sysregs(struct kvm_vcpu *vcpu);
 void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu);
 
-void kvm_set_ipa_limit(void);
+int kvm_set_ipa_limit(void);
 
 #define __KVM_HAVE_ARCH_VM_ALLOC
 struct kvm *kvm_arch_alloc_vm(void);
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index fa9d02ca4b25..efe368ee4996 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -703,6 +703,9 @@
 #define ID_AA64ZFR0_SVEVER_SVE2		0x1
 
 /* id_aa64mmfr0 */
+#define ID_AA64MMFR0_TGRAN4_2_SHIFT	40
+#define ID_AA64MMFR0_TGRAN64_2_SHIFT	36
+#define ID_AA64MMFR0_TGRAN16_2_SHIFT	32
 #define ID_AA64MMFR0_TGRAN4_SHIFT	28
 #define ID_AA64MMFR0_TGRAN64_SHIFT	24
 #define ID_AA64MMFR0_TGRAN16_SHIFT	20
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 7437b8c19528..b3202a99e559 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -267,6 +267,24 @@ static const struct arm64_ftr_bits ftr_id_aa64zfr0[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
+	/*
+	 * Page size not being supported at Stage-2 is not fatal. You
+	 * just give up KVM if PAGE_SIZE isn't supported there. Go fix
+	 * your favourite nesting hypervisor.
+	 *
+	 * There is a small corner case where the hypervisor explicitly
+	 * advertises a given granule size at Stage-2 (value 2) on some
+	 * vCPUs, and uses the fallback to Stage-1 (value 0) for other
+	 * vCPUs. Although this is not forbidden by the architecture, it
+	 * indicates that the hypervisor is being silly (or buggy).
+	 *
+	 * We make no effort to cope with this and pretend that if these
+	 * fields are inconsistent across vCPUs, then it isn't worth
+	 * trying to bring KVM up.
+	 */
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN4_2_SHIFT, 4, 1),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN64_2_SHIFT, 4, 1),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN16_2_SHIFT, 4, 1),
 	/*
 	 * We already refuse to boot CPUs that don't support our configured
 	 * page size, so we can only detect mismatches for a page size other
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index d8800ef4f42d..70cd7bcca433 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -337,14 +337,45 @@ u32 get_kvm_ipa_limit(void)
 	return kvm_ipa_limit;
 }
 
-void kvm_set_ipa_limit(void)
+int kvm_set_ipa_limit(void)
 {
-	unsigned int ipa_max, pa_max, va_max, parange;
+	unsigned int ipa_max, pa_max, va_max, parange, tgran_2;
 	u64 mmfr0;
 
 	mmfr0 = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
 	parange = cpuid_feature_extract_unsigned_field(mmfr0,
 				ID_AA64MMFR0_PARANGE_SHIFT);
+
+	/*
+	 * Check with ARMv8.5-GTG that our PAGE_SIZE is supported at
+	 * Stage-2. If not, things will stop very quickly.
+	 */
+	switch (PAGE_SIZE) {
+	default:
+	case SZ_4K:
+		tgran_2 = ID_AA64MMFR0_TGRAN4_2_SHIFT;
+		break;
+	case SZ_16K:
+		tgran_2 = ID_AA64MMFR0_TGRAN16_2_SHIFT;
+		break;
+	case SZ_64K:
+		tgran_2 = ID_AA64MMFR0_TGRAN64_2_SHIFT;
+		break;
+	}
+
+	switch (cpuid_feature_extract_unsigned_field(mmfr0, tgran_2)) {
+	default:
+	case 1:
+		kvm_err("PAGE_SIZE not supported at Stage-2, giving up\n");
+		return -EINVAL;
+	case 0:
+		kvm_debug("PAGE_SIZE supported at Stage-2 (default)\n");
+		break;
+	case 2:
+		kvm_debug("PAGE_SIZE supported at Stage-2 (advertised)\n");
+		break;
+	}
+
 	pa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
 
 	/* Clamp the IPA limit to the PA size supported by the kernel */
@@ -378,6 +409,8 @@ void kvm_set_ipa_limit(void)
 	     "KVM IPA limit (%d bit) is smaller than default size\n", ipa_max);
 	kvm_ipa_limit = ipa_max;
 	kvm_info("IPA Size Limit: %dbits\n", kvm_ipa_limit);
+
+	return 0;
 }
 
 /*
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 48d0ec44ad77..53b3ba9173ba 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1387,9 +1387,7 @@ static inline void hyp_cpu_pm_exit(void)
 
 static int init_common_resources(void)
 {
-	kvm_set_ipa_limit();
-
-	return 0;
+	return kvm_set_ipa_limit();
 }
 
 static int init_subsystems(void)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
