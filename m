Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622461CEAA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IEcDHmwB3wTZWQTr6vZQTMDxrYsOGorJVpNWIJ71n2k=; b=iIg
	Xpt4ug5L210Q2QGJM7s0nMJd/5voRSBXimOq+TVRj1c9ZiaJZ7ReUO7/Q2NQKRh8t5L3aqM0RZC08
	eFbQ6p/pog6zr6tbU6uGmuBaJzv3wlK1Opf21dASSskdzRnx2Ii+e4jgJqGVe14ToL4LSlmxmfmwA
	vJtjfjkU6LKWESRd5e+34rZ1LgVW6mI/K6zdqkAYOUDaWoKlfk2R6LxF4AukhnzEQu/9GzZx7qlC2
	Cn1sfPOJeoKP2iy+L3kN5UJr/IK2XOpHfHsIMe9SssX4Wjlmaz0owihQAxc2zS524jJz6B+C255YY
	hohuDp1oz1WzfJtqUXMOEj/QGbvZ/Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKQt-0007hk-Vm; Tue, 12 May 2020 02:14:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKQl-0007h2-LF
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:14:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D777C1FB;
 Mon, 11 May 2020 19:14:02 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.73.104])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4DC573F71E;
 Mon, 11 May 2020 19:14:00 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/cpufeature: Add ID_AA64MMFR0_PARANGE_MASK
Date: Tue, 12 May 2020 07:43:26 +0530
Message-Id: <1589249606-27177-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_191403_778676_6D27313B 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This replaces multiple open encoding (0x7) with ID_AA64MMFR0_PARANGE_MASK
thus cleaning the clutter. It modifies an existing ID_AA64MMFR0 helper and
introduces a new one i.e id_aa64mmfr0_iparange() and id_aa64mmfr0_parange()
respectively.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: kvmarm@lists.cs.columbia.edu

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
This applies after (https://patchwork.kernel.org/patch/11541893/).

 arch/arm64/include/asm/cpufeature.h | 11 ++++++++++-
 arch/arm64/kernel/cpufeature.c      |  5 ++---
 arch/arm64/kvm/reset.c              |  9 +++++----
 3 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 1291ad5a9ccb..320cfc5b6025 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -706,8 +706,17 @@ void arm64_set_ssbd_mitigation(bool state);
 
 extern int do_emulate_mrs(struct pt_regs *regs, u32 sys_reg, u32 rt);
 
-static inline u32 id_aa64mmfr0_parange_to_phys_shift(int parange)
+#define ID_AA64MMFR0_PARANGE_MASK 0x7
+
+static inline u32 id_aa64mmfr0_parange(u64 mmfr0)
 {
+	return mmfr0 & ID_AA64MMFR0_PARANGE_MASK;
+}
+
+static inline u32 id_aa64mmfr0_iparange(u64 mmfr0)
+{
+	int parange = id_aa64mmfr0_parange(mmfr0);
+
 	switch (parange) {
 	case 0: return 32;
 	case 1: return 36;
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 30917fe7942a..2c62f7c64a3c 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2185,7 +2185,7 @@ static void verify_sve_features(void)
 void verify_hyp_capabilities(void)
 {
 	u64 safe_mmfr1, mmfr0, mmfr1;
-	int parange, ipa_max;
+	int ipa_max;
 	unsigned int safe_vmid_bits, vmid_bits;
 
 	safe_mmfr1 = read_sanitised_ftr_reg(SYS_ID_AA64MMFR1_EL1);
@@ -2201,8 +2201,7 @@ void verify_hyp_capabilities(void)
 	}
 
 	/* Verify IPA range */
-	parange = mmfr0 & 0x7;
-	ipa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
+	ipa_max = id_aa64mmfr0_iparange(mmfr0);
 	if (ipa_max < get_kvm_ipa_limit()) {
 		pr_crit("CPU%d: IPA range mismatch\n", smp_processor_id());
 		cpu_die_early();
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 841b492ff334..2e4da75d79ea 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -347,10 +347,10 @@ u32 get_kvm_ipa_limit(void)
 
 void kvm_set_ipa_limit(void)
 {
-	unsigned int ipa_max, pa_max, va_max, parange;
+	unsigned int ipa_max, pa_max, va_max;
 
-	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 0x7;
-	pa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
+	pa_max = id_aa64mmfr0_iparange(read_sanitised_ftr_reg
+						(SYS_ID_AA64MMFR0_EL1));
 
 	/* Clamp the IPA limit to the PA size supported by the kernel */
 	ipa_max = (pa_max > PHYS_MASK_SHIFT) ? PHYS_MASK_SHIFT : pa_max;
@@ -411,7 +411,8 @@ int kvm_arm_setup_stage2(struct kvm *kvm, unsigned long type)
 		phys_shift = KVM_PHYS_SHIFT;
 	}
 
-	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 7;
+	parange = id_aa64mmfr0_parange(read_sanitised_ftr_reg
+						(SYS_ID_AA64MMFR0_EL1));
 	if (parange > ID_AA64MMFR0_PARANGE_MAX)
 		parange = ID_AA64MMFR0_PARANGE_MAX;
 	vtcr |= parange << VTCR_EL2_PS_SHIFT;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
