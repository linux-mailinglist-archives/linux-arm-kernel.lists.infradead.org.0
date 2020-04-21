Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA501B2986
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZgH1YhrR1JUnbqWZC1bYAVouOYgukbvfYEJPYeybpk=; b=Ht2H63P9PX765f
	dUwjkiu1nKnpntk7srLcl6mUTcmPbdX5QXnucEVUdb7tfHPAFTwiIzhu6lGu4SXM+93NsfQyTUCOx
	st1gRePNO5njeyRHDqNqW0f3Vh1sEPnPJux8WcfqZ3StvBmEti4DR4QWWD+8asc9Zl87s9IsRPtsY
	OdopzkDmSlsZU7zXVdd29sLeAJdgGHI87gAKrRQPCUH2B5Cd+m4nnKaGIV36KoOrqB5iXY0PbEGw+
	hAmtkDWL55ayYPCfVSOKBmrSebOXb4OEP+BXM/qk5zzfQlYMn3EgbVEKjsxE7Tp0o+tWfDkzJNzDU
	Y6mO4nbbOZzOnWL/urMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtrk-0000N4-Ao; Tue, 21 Apr 2020 14:27:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtqp-00082L-LG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:26:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F40D3C14;
 Tue, 21 Apr 2020 07:26:14 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 27F203F68F;
 Tue, 21 Apr 2020 07:26:13 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 02/23] arm64: mte: system register definitions
Date: Tue, 21 Apr 2020 15:25:42 +0100
Message-Id: <20200421142603.3894-3-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142603.3894-1-catalin.marinas@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_072615_806999_B62165B6 
X-CRM114-Status: GOOD (  10.75  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

Add Memory Tagging Extension system register definitions together with
the relevant bitfields.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---

Notes:
    v2:
    - Added SET_PSTATE_TCO() macro.

 arch/arm64/include/asm/kvm_arm.h     |  1 +
 arch/arm64/include/asm/sysreg.h      | 54 ++++++++++++++++++++++++++++
 arch/arm64/include/uapi/asm/ptrace.h |  1 +
 arch/arm64/kernel/ptrace.c           |  2 +-
 4 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index 51c1d9918999..8a1cbfd544d6 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -12,6 +12,7 @@
 #include <asm/types.h>
 
 /* Hyp Configuration Register (HCR) bits */
+#define HCR_ATA		(UL(1) << 56)
 #define HCR_FWB		(UL(1) << 46)
 #define HCR_API		(UL(1) << 41)
 #define HCR_APK		(UL(1) << 40)
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index c4ac0ac25a00..e823e93b7429 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -91,10 +91,12 @@
 #define PSTATE_PAN			pstate_field(0, 4)
 #define PSTATE_UAO			pstate_field(0, 3)
 #define PSTATE_SSBS			pstate_field(3, 1)
+#define PSTATE_TCO			pstate_field(3, 4)
 
 #define SET_PSTATE_PAN(x)		__emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))
 #define SET_PSTATE_UAO(x)		__emit_inst(0xd500401f | PSTATE_UAO | ((!!x) << PSTATE_Imm_shift))
 #define SET_PSTATE_SSBS(x)		__emit_inst(0xd500401f | PSTATE_SSBS | ((!!x) << PSTATE_Imm_shift))
+#define SET_PSTATE_TCO(x)		__emit_inst(0xd500401f | PSTATE_TCO | ((!!x) << PSTATE_Imm_shift))
 
 #define __SYS_BARRIER_INSN(CRm, op2, Rt) \
 	__emit_inst(0xd5000000 | sys_insn(0, 3, 3, (CRm), (op2)) | ((Rt) & 0x1f))
@@ -174,6 +176,8 @@
 #define SYS_SCTLR_EL1			sys_reg(3, 0, 1, 0, 0)
 #define SYS_ACTLR_EL1			sys_reg(3, 0, 1, 0, 1)
 #define SYS_CPACR_EL1			sys_reg(3, 0, 1, 0, 2)
+#define SYS_RGSR_EL1			sys_reg(3, 0, 1, 0, 5)
+#define SYS_GCR_EL1			sys_reg(3, 0, 1, 0, 6)
 
 #define SYS_ZCR_EL1			sys_reg(3, 0, 1, 2, 0)
 
@@ -211,6 +215,8 @@
 #define SYS_ERXADDR_EL1			sys_reg(3, 0, 5, 4, 3)
 #define SYS_ERXMISC0_EL1		sys_reg(3, 0, 5, 5, 0)
 #define SYS_ERXMISC1_EL1		sys_reg(3, 0, 5, 5, 1)
+#define SYS_TFSR_EL1			sys_reg(3, 0, 5, 6, 0)
+#define SYS_TFSRE0_EL1			sys_reg(3, 0, 5, 6, 1)
 
 #define SYS_FAR_EL1			sys_reg(3, 0, 6, 0, 0)
 #define SYS_PAR_EL1			sys_reg(3, 0, 7, 4, 0)
@@ -361,6 +367,7 @@
 
 #define SYS_CCSIDR_EL1			sys_reg(3, 1, 0, 0, 0)
 #define SYS_CLIDR_EL1			sys_reg(3, 1, 0, 0, 1)
+#define SYS_GMID_EL1			sys_reg(3, 1, 0, 0, 4)
 #define SYS_AIDR_EL1			sys_reg(3, 1, 0, 0, 7)
 
 #define SYS_CSSELR_EL1			sys_reg(3, 2, 0, 0, 0)
@@ -453,6 +460,7 @@
 #define SYS_ESR_EL2			sys_reg(3, 4, 5, 2, 0)
 #define SYS_VSESR_EL2			sys_reg(3, 4, 5, 2, 3)
 #define SYS_FPEXC32_EL2			sys_reg(3, 4, 5, 3, 0)
+#define SYS_TFSR_EL2			sys_reg(3, 4, 5, 6, 0)
 #define SYS_FAR_EL2			sys_reg(3, 4, 6, 0, 0)
 
 #define SYS_VDISR_EL2			sys_reg(3, 4, 12, 1,  1)
@@ -509,6 +517,7 @@
 #define SYS_AFSR0_EL12			sys_reg(3, 5, 5, 1, 0)
 #define SYS_AFSR1_EL12			sys_reg(3, 5, 5, 1, 1)
 #define SYS_ESR_EL12			sys_reg(3, 5, 5, 2, 0)
+#define SYS_TFSR_EL12			sys_reg(3, 5, 5, 6, 0)
 #define SYS_FAR_EL12			sys_reg(3, 5, 6, 0, 0)
 #define SYS_MAIR_EL12			sys_reg(3, 5, 10, 2, 0)
 #define SYS_AMAIR_EL12			sys_reg(3, 5, 10, 3, 0)
@@ -524,6 +533,15 @@
 
 /* Common SCTLR_ELx flags. */
 #define SCTLR_ELx_DSSBS	(BIT(44))
+#define SCTLR_ELx_ATA	(BIT(43))
+
+#define SCTLR_ELx_TCF_SHIFT	40
+#define SCTLR_ELx_TCF_NONE	(UL(0x0) << SCTLR_ELx_TCF_SHIFT)
+#define SCTLR_ELx_TCF_SYNC	(UL(0x1) << SCTLR_ELx_TCF_SHIFT)
+#define SCTLR_ELx_TCF_ASYNC	(UL(0x2) << SCTLR_ELx_TCF_SHIFT)
+#define SCTLR_ELx_TCF_MASK	(UL(0x3) << SCTLR_ELx_TCF_SHIFT)
+
+#define SCTLR_ELx_ITFSB	(BIT(37))
 #define SCTLR_ELx_ENIA	(BIT(31))
 #define SCTLR_ELx_ENIB	(BIT(30))
 #define SCTLR_ELx_ENDA	(BIT(27))
@@ -552,6 +570,14 @@
 #endif
 
 /* SCTLR_EL1 specific flags. */
+#define SCTLR_EL1_ATA0		(BIT(42))
+
+#define SCTLR_EL1_TCF0_SHIFT	38
+#define SCTLR_EL1_TCF0_NONE	(UL(0x0) << SCTLR_EL1_TCF0_SHIFT)
+#define SCTLR_EL1_TCF0_SYNC	(UL(0x1) << SCTLR_EL1_TCF0_SHIFT)
+#define SCTLR_EL1_TCF0_ASYNC	(UL(0x2) << SCTLR_EL1_TCF0_SHIFT)
+#define SCTLR_EL1_TCF0_MASK	(UL(0x3) << SCTLR_EL1_TCF0_SHIFT)
+
 #define SCTLR_EL1_UCI		(BIT(26))
 #define SCTLR_EL1_E0E		(BIT(24))
 #define SCTLR_EL1_SPAN		(BIT(23))
@@ -586,6 +612,7 @@
 #define MAIR_ATTR_DEVICE_GRE		UL(0x0c)
 #define MAIR_ATTR_NORMAL_NC		UL(0x44)
 #define MAIR_ATTR_NORMAL_WT		UL(0xbb)
+#define MAIR_ATTR_NORMAL_TAGGED		UL(0xf0)
 #define MAIR_ATTR_NORMAL		UL(0xff)
 #define MAIR_ATTR_MASK			UL(0xff)
 
@@ -660,11 +687,16 @@
 
 /* id_aa64pfr1 */
 #define ID_AA64PFR1_SSBS_SHIFT		4
+#define ID_AA64PFR1_MTE_SHIFT		8
 
 #define ID_AA64PFR1_SSBS_PSTATE_NI	0
 #define ID_AA64PFR1_SSBS_PSTATE_ONLY	1
 #define ID_AA64PFR1_SSBS_PSTATE_INSNS	2
 
+#define ID_AA64PFR1_MTE_NI		0x0
+#define ID_AA64PFR1_MTE_EL0		0x1
+#define ID_AA64PFR1_MTE			0x2
+
 /* id_aa64zfr0 */
 #define ID_AA64ZFR0_F64MM_SHIFT		56
 #define ID_AA64ZFR0_F32MM_SHIFT		52
@@ -822,6 +854,28 @@
 #define CPACR_EL1_ZEN_EL0EN	(BIT(17)) /* enable EL0 access, if EL1EN set */
 #define CPACR_EL1_ZEN		(CPACR_EL1_ZEN_EL1EN | CPACR_EL1_ZEN_EL0EN)
 
+/* TCR EL1 Bit Definitions */
+#define SYS_TCR_EL1_TCMA1	(BIT(58))
+#define SYS_TCR_EL1_TCMA0	(BIT(57))
+
+/* GCR_EL1 Definitions */
+#define SYS_GCR_EL1_RRND	(BIT(16))
+#define SYS_GCR_EL1_EXCL_MASK	0xffffUL
+
+/* RGSR_EL1 Definitions */
+#define SYS_RGSR_EL1_TAG_MASK	0xfUL
+#define SYS_RGSR_EL1_SEED_SHIFT	8
+#define SYS_RGSR_EL1_SEED_MASK	0xffffUL
+
+/* GMID_EL1 field definitions */
+#define SYS_GMID_EL1_BS_SHIFT	0
+#define SYS_GMID_EL1_BS_SIZE	4
+
+/* TFSR{,E0}_EL1 bit definitions */
+#define SYS_TFSR_EL1_TF0_SHIFT	0
+#define SYS_TFSR_EL1_TF1_SHIFT	1
+#define SYS_TFSR_EL1_TF0	(UL(1) << SYS_TFSR_EL1_TF0_SHIFT)
+#define SYS_TFSR_EL1_TF1	(UK(2) << SYS_TFSR_EL1_TF1_SHIFT)
 
 /* Safe value for MPIDR_EL1: Bit31:RES1, Bit30:U:0, Bit24:MT:0 */
 #define SYS_MPIDR_SAFE_VAL	(BIT(31))
diff --git a/arch/arm64/include/uapi/asm/ptrace.h b/arch/arm64/include/uapi/asm/ptrace.h
index d1bb5b69f1ce..1daf6dda8af0 100644
--- a/arch/arm64/include/uapi/asm/ptrace.h
+++ b/arch/arm64/include/uapi/asm/ptrace.h
@@ -50,6 +50,7 @@
 #define PSR_PAN_BIT	0x00400000
 #define PSR_UAO_BIT	0x00800000
 #define PSR_DIT_BIT	0x01000000
+#define PSR_TCO_BIT	0x02000000
 #define PSR_V_BIT	0x10000000
 #define PSR_C_BIT	0x20000000
 #define PSR_Z_BIT	0x40000000
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index b3d3005d9515..077e352495eb 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1873,7 +1873,7 @@ void syscall_trace_exit(struct pt_regs *regs)
  * We also reserve IL for the kernel; SS is handled dynamically.
  */
 #define SPSR_EL1_AARCH64_RES0_BITS \
-	(GENMASK_ULL(63, 32) | GENMASK_ULL(27, 25) | GENMASK_ULL(23, 22) | \
+	(GENMASK_ULL(63, 32) | GENMASK_ULL(27, 26) | GENMASK_ULL(23, 22) | \
 	 GENMASK_ULL(20, 13) | GENMASK_ULL(11, 10) | GENMASK_ULL(5, 5))
 #define SPSR_EL1_AARCH32_RES0_BITS \
 	(GENMASK_ULL(63, 32) | GENMASK_ULL(22, 22) | GENMASK_ULL(20, 20))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
