Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 226091D0B71
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RoHSsDXDazSsen+5sdqWYXCA8X2/4G0jPcLziZdEaPs=; b=Jir
	1OqDD/OzhX8hWMZLC4PDz6wfPpszpkMLq9jm5VG8H6UZL6ah9duZ4PrRrMntWoMugWZtp0GY+3Yti
	Jt0Pnq2n1t26bAW+4hp9tx/9XkB0pz+vGlj+mmZCYyVBgpFko8bgg+Ka/g0EOb0ooY/Jk0OgbAARA
	8ntpCwFAaL4ZhMF9e2W5JqPq9TtXUrCPiqm+Y5V3Fms/00EP2mh2sd2389mmkZjAnr5RXTEsJomxs
	U7XXDWSLz+6eUqN1Yh/Ve7u6P+EW/3ddCz/omNz+IeZahbsRzkTcePK1Wlce6CGtoboTUK1EdqLDR
	C2ezbi86aRgufaJ1pkoFMa7YT/bqcRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnJv-0004vy-L8; Wed, 13 May 2020 09:04:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnJm-0004vD-9b
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:04:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57D351FB;
 Wed, 13 May 2020 02:04:41 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.73.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B7BE93F305;
 Wed, 13 May 2020 02:04:37 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] arm64/cpufeature: Drop open encodings while extracting
 parange
Date: Wed, 13 May 2020 14:33:34 +0530
Message-Id: <1589360614-1164-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_020446_553287_47E2D6D0 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently there are multiple instances of parange feature width mask open
encodings while fetching it's value. Even the width mask value (0x7) itself
is not accurate. It should be (0xf) per ID_AA64MMFR0_EL1.PARange[3:0] as in
ARM ARM (0487F.a). Replace them with cpuid_feature_extract_unsigned_field()
which can extract given standard feature (4 bits width i.e 0xf mask) field.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
Changes in V2:

- Used cpuid_feature_extract_unsigned_field() per Mark

Changes in V1: (https://patchwork.kernel.org/patch/11541913/)

 arch/arm64/kernel/cpufeature.c |  3 ++-
 arch/arm64/kvm/reset.c         | 11 ++++++++---
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 30917fe7942a..958a96947c2c 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2201,7 +2201,8 @@ void verify_hyp_capabilities(void)
 	}
 
 	/* Verify IPA range */
-	parange = mmfr0 & 0x7;
+	parange = cpuid_feature_extract_unsigned_field(mmfr0,
+				ID_AA64MMFR0_PARANGE_SHIFT);
 	ipa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
 	if (ipa_max < get_kvm_ipa_limit()) {
 		pr_crit("CPU%d: IPA range mismatch\n", smp_processor_id());
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 841b492ff334..bd9f66a81e1e 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -348,8 +348,11 @@ u32 get_kvm_ipa_limit(void)
 void kvm_set_ipa_limit(void)
 {
 	unsigned int ipa_max, pa_max, va_max, parange;
+	u64 mmfr0;
 
-	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 0x7;
+	mmfr0 = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
+	parange = cpuid_feature_extract_unsigned_field(mmfr0,
+				ID_AA64MMFR0_PARANGE_SHIFT);
 	pa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
 
 	/* Clamp the IPA limit to the PA size supported by the kernel */
@@ -395,7 +398,7 @@ void kvm_set_ipa_limit(void)
  */
 int kvm_arm_setup_stage2(struct kvm *kvm, unsigned long type)
 {
-	u64 vtcr = VTCR_EL2_FLAGS;
+	u64 vtcr = VTCR_EL2_FLAGS, mmfr0;
 	u32 parange, phys_shift;
 	u8 lvls;
 
@@ -411,7 +414,9 @@ int kvm_arm_setup_stage2(struct kvm *kvm, unsigned long type)
 		phys_shift = KVM_PHYS_SHIFT;
 	}
 
-	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 7;
+	mmfr0 = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
+	parange = cpuid_feature_extract_unsigned_field(mmfr0,
+				ID_AA64MMFR0_PARANGE_SHIFT);
 	if (parange > ID_AA64MMFR0_PARANGE_MAX)
 		parange = ID_AA64MMFR0_PARANGE_MAX;
 	vtcr |= parange << VTCR_EL2_PS_SHIFT;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
