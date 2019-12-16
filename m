Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F28E12048B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:57:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaOfsBOYmkXrOnhozQyN33klUyFeAxsdC4con2GMI4c=; b=DrH3+EDeA+UL/O
	PaKETFfmOGTzQs7eXjaHzWPZzL8pSKAhXrT7gfZEFSSJVYqqqiCDpvbnwG2+t5CBK4W7uxRIrPZ3f
	O7rGBiGrPlVOzxyWjLFaNd0YTopKFEsIX5D5Y1RbHyjH/2aqQqJjyNdpfVmeRsEsAkgrBwmoLRT7f
	KeV3ON2EEIAkNTODw62YhB+713DsY1J93BnVee2d4JsawaNR694Bu7KyEIEKp7xGRg50RpIqXhyHb
	VhjZEwJ/YI1KX+Geg1BqBPG5C9HxN309xwq7rorMZQIX3PlpafhTZMgW66QV5Oko9BznfxXjZGFgL
	BzGIFmaQebfwjiiQBB2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igp0S-0006bY-Iy; Mon, 16 Dec 2019 11:57:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igozX-0005yP-DW
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:56:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFCD21FB;
 Mon, 16 Dec 2019 03:56:46 -0800 (PST)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0ED33F719;
 Mon, 16 Dec 2019 03:56:45 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v5 3/3] arm64: Workaround for Cortex-A55 erratum 1530923
Date: Mon, 16 Dec 2019 11:56:31 +0000
Message-Id: <20191216115631.17804-4-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216115631.17804-1-steven.price@arm.com>
References: <20191216115631.17804-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_035647_546425_E62A5B34 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Steven Price <steven.price@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cortex-A55 erratum 1530923 allows TLB entries to be allocated as a
result of a speculative AT instruction. This may happen in the middle of
a guest world switch while the relevant VMSA configuration is in an
inconsistent state, leading to erroneous content being allocated into
TLBs.

The same workaround as is used for Cortex-A76 erratum 1165522
(WORKAROUND_SPECULATIVE_AT_VHE) can be used here. Note that this
mandates the use of VHE on affected parts.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 Documentation/arm64/silicon-errata.rst |  2 ++
 arch/arm64/Kconfig                     | 13 +++++++++++++
 arch/arm64/include/asm/kvm_hyp.h       |  4 ++--
 arch/arm64/kernel/cpu_errata.c         |  6 +++++-
 arch/arm64/kvm/hyp/switch.c            |  4 ++--
 arch/arm64/kvm/hyp/tlb.c               |  4 ++--
 6 files changed, 26 insertions(+), 7 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index 99b2545455ff..9120e59578dc 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -88,6 +88,8 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Cortex-A76      | #1463225        | ARM64_ERRATUM_1463225       |
 +----------------+-----------------+-----------------+-----------------------------+
+| ARM            | Cortex-A55      | #1530923        | ARM64_ERRATUM_1530923       |
++----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1188873,1418040| ARM64_ERRATUM_1418040       |
 +----------------+-----------------+-----------------+-----------------------------+
 | ARM            | Neoverse-N1     | #1349291        | N/A                         |
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index d102ebd56c79..6c92c6dac45b 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -530,6 +530,19 @@ config ARM64_ERRATUM_1165522
 
 	  If unsure, say Y.
 
+config ARM64_ERRATUM_1530923
+	bool "Cortex-A55: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
+	default y
+	select ARM64_WORKAROUND_SPECULATIVE_AT_VHE
+	help
+	  This option adds a workaround for ARM Cortex-A55 erratum 1530923.
+
+	  Affected Cortex-A55 cores (r0p0, r0p1, r1p0, r2p0) could end-up with
+	  corrupted TLBs by speculating an AT instruction during a guest
+	  context switch.
+
+	  If unsure, say Y.
+
 config ARM64_ERRATUM_1286807
 	bool "Cortex-A76: Modification of the translation table for a virtual address might lead to read-after-read ordering violation"
 	default y
diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 167a161dd596..a3a6a2ba9a63 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -91,8 +91,8 @@ static __always_inline void __hyp_text __load_guest_stage2(struct kvm *kvm)
 	write_sysreg(kvm_get_vttbr(kvm), vttbr_el2);
 
 	/*
-	 * ARM erratum 1165522 requires the actual execution of the above
-	 * before we can switch to the EL1/EL0 translation regime used by
+	 * ARM errata 1165522 and 1530923 require the actual execution of the
+	 * above before we can switch to the EL1/EL0 translation regime used by
 	 * the guest.
 	 */
 	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 4631f8b9df70..f6079667776b 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -761,6 +761,10 @@ static const struct midr_range erratum_speculative_at_vhe_list[] = {
 #ifdef CONFIG_ARM64_ERRATUM_1165522
 	/* Cortex A76 r0p0 to r2p0 */
 	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
+#endif
+#ifdef CONFIG_ARM64_ERRATUM_1530923
+	/* Cortex A55 r0p0 to r2p0 */
+	MIDR_RANGE(MIDR_CORTEX_A55, 0, 0, 2, 0),
 #endif
 	{},
 };
@@ -894,7 +898,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 #endif
 #ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT_VHE
 	{
-		.desc = "ARM erratum 1165522",
+		.desc = "ARM errata 1165522, 1530923",
 		.capability = ARM64_WORKAROUND_SPECULATIVE_AT_VHE,
 		ERRATA_MIDR_RANGE_LIST(erratum_speculative_at_vhe_list),
 	},
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 0fc824bdf258..eae08ba82e95 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -158,8 +158,8 @@ static void deactivate_traps_vhe(void)
 	write_sysreg(HCR_HOST_VHE_FLAGS, hcr_el2);
 
 	/*
-	 * ARM erratum 1165522 requires the actual execution of the above
-	 * before we can switch to the EL2/EL0 translation regime used by
+	 * ARM errata 1165522 and 1530923 require the actual execution of the
+	 * above before we can switch to the EL2/EL0 translation regime used by
 	 * the host.
 	 */
 	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index ff4e73c9bafc..92f560e3e1aa 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -25,8 +25,8 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 
 	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
 		/*
-		 * For CPUs that are affected by ARM erratum 1165522, we
-		 * cannot trust stage-1 to be in a correct state at that
+		 * For CPUs that are affected by ARM errata 1165522 or 1530923,
+		 * we cannot trust stage-1 to be in a correct state at that
 		 * point. Since we do not want to force a full load of the
 		 * vcpu state, we prevent the EL1 page-table walker to
 		 * allocate new TLBs. This is done by setting the EPD bits
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
