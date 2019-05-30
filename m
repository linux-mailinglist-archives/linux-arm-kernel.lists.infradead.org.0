Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D832FF25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xj0NtJoXGZ8GQXOUGwbxsnN3NPHGzuxfO5zPJ/yUPC0=; b=Im7jOaWQ4jLEvNdRfxokgGqk7F
	2vNUAlg7wSQUrCB1zVPoMh9f+IJ60vt3epLk3qq+ntlaYv0eKbI4Z/I26W/LJfTLhHFwBXQ9tsS+x
	+rtvWm8lSQU6suOhb7kTACasPjVEbEmmye80ZK0GIymRBhx8mLEbF5dEXxyvk0MpAMMMnLfLEBFKJ
	L7/hAEHAdtmZYRUtfWkjUeHd53+r6lQMMrCdVaBrv0CQNyfklnbg5vhOuLcRfKqVgieOQOkb4rJyl
	aUkse5OQpzuXUcwh/rU1owrrtPGs4ngpPPxXA2hMo9xX/XnIYDwj4DZRcz8eoBN5X2akzNIP+qrIq
	rUyr3bpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMlU-0002jH-6p; Thu, 30 May 2019 15:14:48 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMkt-0002AB-8g
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:14:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE078165C;
 Thu, 30 May 2019 08:14:10 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 502D83F59C;
 Thu, 30 May 2019 08:14:09 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v3 4/9] update_headers: Sync kvm UAPI headers with
 linux v5.1-rc1
Date: Thu, 30 May 2019 16:13:09 +0100
Message-Id: <1559229194-3036-5-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081411_801736_43E44AED 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pull in upstream UAPI headers, for subsequent arm64 SVE / ptrauth
support (among other things).

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arm/aarch64/include/asm/kvm.h         | 43 ++++++++++++++++++++++++++++
 arm/aarch64/include/asm/sve_context.h | 53 +++++++++++++++++++++++++++++++++++
 include/linux/kvm.h                   | 15 ++++++++--
 powerpc/include/asm/kvm.h             | 48 +++++++++++++++++++++++++++++++
 x86/include/asm/kvm.h                 |  1 +
 5 files changed, 158 insertions(+), 2 deletions(-)
 create mode 100644 arm/aarch64/include/asm/sve_context.h

diff --git a/arm/aarch64/include/asm/kvm.h b/arm/aarch64/include/asm/kvm.h
index 97c3478..7b7ac0f 100644
--- a/arm/aarch64/include/asm/kvm.h
+++ b/arm/aarch64/include/asm/kvm.h
@@ -35,6 +35,7 @@
 #include <linux/psci.h>
 #include <linux/types.h>
 #include <asm/ptrace.h>
+#include <asm/sve_context.h>
 
 #define __KVM_HAVE_GUEST_DEBUG
 #define __KVM_HAVE_IRQ_LINE
@@ -102,6 +103,9 @@ struct kvm_regs {
 #define KVM_ARM_VCPU_EL1_32BIT		1 /* CPU running a 32bit VM */
 #define KVM_ARM_VCPU_PSCI_0_2		2 /* CPU uses PSCI v0.2 */
 #define KVM_ARM_VCPU_PMU_V3		3 /* Support guest PMUv3 */
+#define KVM_ARM_VCPU_SVE		4 /* enable SVE for this CPU */
+#define KVM_ARM_VCPU_PTRAUTH_ADDRESS	5 /* VCPU uses address authentication */
+#define KVM_ARM_VCPU_PTRAUTH_GENERIC	6 /* VCPU uses generic authentication */
 
 struct kvm_vcpu_init {
 	__u32 target;
@@ -226,6 +230,45 @@ struct kvm_vcpu_events {
 					 KVM_REG_ARM_FW | ((r) & 0xffff))
 #define KVM_REG_ARM_PSCI_VERSION	KVM_REG_ARM_FW_REG(0)
 
+/* SVE registers */
+#define KVM_REG_ARM64_SVE		(0x15 << KVM_REG_ARM_COPROC_SHIFT)
+
+/* Z- and P-regs occupy blocks at the following offsets within this range: */
+#define KVM_REG_ARM64_SVE_ZREG_BASE	0
+#define KVM_REG_ARM64_SVE_PREG_BASE	0x400
+#define KVM_REG_ARM64_SVE_FFR_BASE	0x600
+
+#define KVM_ARM64_SVE_NUM_ZREGS		__SVE_NUM_ZREGS
+#define KVM_ARM64_SVE_NUM_PREGS		__SVE_NUM_PREGS
+
+#define KVM_ARM64_SVE_MAX_SLICES	32
+
+#define KVM_REG_ARM64_SVE_ZREG(n, i)					\
+	(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | KVM_REG_ARM64_SVE_ZREG_BASE | \
+	 KVM_REG_SIZE_U2048 |						\
+	 (((n) & (KVM_ARM64_SVE_NUM_ZREGS - 1)) << 5) |			\
+	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
+
+#define KVM_REG_ARM64_SVE_PREG(n, i)					\
+	(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | KVM_REG_ARM64_SVE_PREG_BASE | \
+	 KVM_REG_SIZE_U256 |						\
+	 (((n) & (KVM_ARM64_SVE_NUM_PREGS - 1)) << 5) |			\
+	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
+
+#define KVM_REG_ARM64_SVE_FFR(i)					\
+	(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | KVM_REG_ARM64_SVE_FFR_BASE | \
+	 KVM_REG_SIZE_U256 |						\
+	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
+
+#define KVM_ARM64_SVE_VQ_MIN __SVE_VQ_MIN
+#define KVM_ARM64_SVE_VQ_MAX __SVE_VQ_MAX
+
+/* Vector lengths pseudo-register: */
+#define KVM_REG_ARM64_SVE_VLS		(KVM_REG_ARM64 | KVM_REG_ARM64_SVE | \
+					 KVM_REG_SIZE_U512 | 0xffff)
+#define KVM_ARM64_SVE_VLS_WORDS	\
+	((KVM_ARM64_SVE_VQ_MAX - KVM_ARM64_SVE_VQ_MIN) / 64 + 1)
+
 /* Device Control API: ARM VGIC */
 #define KVM_DEV_ARM_VGIC_GRP_ADDR	0
 #define KVM_DEV_ARM_VGIC_GRP_DIST_REGS	1
diff --git a/arm/aarch64/include/asm/sve_context.h b/arm/aarch64/include/asm/sve_context.h
new file mode 100644
index 0000000..754ab75
--- /dev/null
+++ b/arm/aarch64/include/asm/sve_context.h
@@ -0,0 +1,53 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/* Copyright (C) 2017-2018 ARM Limited */
+
+/*
+ * For use by other UAPI headers only.
+ * Do not make direct use of header or its definitions.
+ */
+
+#ifndef _UAPI__ASM_SVE_CONTEXT_H
+#define _UAPI__ASM_SVE_CONTEXT_H
+
+#include <linux/types.h>
+
+#define __SVE_VQ_BYTES		16	/* number of bytes per quadword */
+
+#define __SVE_VQ_MIN		1
+#define __SVE_VQ_MAX		512
+
+#define __SVE_VL_MIN		(__SVE_VQ_MIN * __SVE_VQ_BYTES)
+#define __SVE_VL_MAX		(__SVE_VQ_MAX * __SVE_VQ_BYTES)
+
+#define __SVE_NUM_ZREGS		32
+#define __SVE_NUM_PREGS		16
+
+#define __sve_vl_valid(vl)			\
+	((vl) % __SVE_VQ_BYTES == 0 &&		\
+	 (vl) >= __SVE_VL_MIN &&		\
+	 (vl) <= __SVE_VL_MAX)
+
+#define __sve_vq_from_vl(vl)	((vl) / __SVE_VQ_BYTES)
+#define __sve_vl_from_vq(vq)	((vq) * __SVE_VQ_BYTES)
+
+#define __SVE_ZREG_SIZE(vq)	((__u32)(vq) * __SVE_VQ_BYTES)
+#define __SVE_PREG_SIZE(vq)	((__u32)(vq) * (__SVE_VQ_BYTES / 8))
+#define __SVE_FFR_SIZE(vq)	__SVE_PREG_SIZE(vq)
+
+#define __SVE_ZREGS_OFFSET	0
+#define __SVE_ZREG_OFFSET(vq, n) \
+	(__SVE_ZREGS_OFFSET + __SVE_ZREG_SIZE(vq) * (n))
+#define __SVE_ZREGS_SIZE(vq) \
+	(__SVE_ZREG_OFFSET(vq, __SVE_NUM_ZREGS) - __SVE_ZREGS_OFFSET)
+
+#define __SVE_PREGS_OFFSET(vq) \
+	(__SVE_ZREGS_OFFSET + __SVE_ZREGS_SIZE(vq))
+#define __SVE_PREG_OFFSET(vq, n) \
+	(__SVE_PREGS_OFFSET(vq) + __SVE_PREG_SIZE(vq) * (n))
+#define __SVE_PREGS_SIZE(vq) \
+	(__SVE_PREG_OFFSET(vq, __SVE_NUM_PREGS) - __SVE_PREGS_OFFSET(vq))
+
+#define __SVE_FFR_OFFSET(vq) \
+	(__SVE_PREGS_OFFSET(vq) + __SVE_PREGS_SIZE(vq))
+
+#endif /* ! _UAPI__ASM_SVE_CONTEXT_H */
diff --git a/include/linux/kvm.h b/include/linux/kvm.h
index 6d4ea4b..2fe12b4 100644
--- a/include/linux/kvm.h
+++ b/include/linux/kvm.h
@@ -986,8 +986,13 @@ struct kvm_ppc_resize_hpt {
 #define KVM_CAP_HYPERV_ENLIGHTENED_VMCS 163
 #define KVM_CAP_EXCEPTION_PAYLOAD 164
 #define KVM_CAP_ARM_VM_IPA_SIZE 165
-#define KVM_CAP_MANUAL_DIRTY_LOG_PROTECT 166
+#define KVM_CAP_MANUAL_DIRTY_LOG_PROTECT 166 /* Obsolete */
 #define KVM_CAP_HYPERV_CPUID 167
+#define KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 168
+#define KVM_CAP_PPC_IRQ_XIVE 169
+#define KVM_CAP_ARM_SVE 170
+#define KVM_CAP_ARM_PTRAUTH_ADDRESS 171
+#define KVM_CAP_ARM_PTRAUTH_GENERIC 172
 
 #ifdef KVM_CAP_IRQ_ROUTING
 
@@ -1145,6 +1150,7 @@ struct kvm_dirty_tlb {
 #define KVM_REG_SIZE_U256	0x0050000000000000ULL
 #define KVM_REG_SIZE_U512	0x0060000000000000ULL
 #define KVM_REG_SIZE_U1024	0x0070000000000000ULL
+#define KVM_REG_SIZE_U2048	0x0080000000000000ULL
 
 struct kvm_reg_list {
 	__u64 n; /* number of regs */
@@ -1211,6 +1217,8 @@ enum kvm_device_type {
 #define KVM_DEV_TYPE_ARM_VGIC_V3	KVM_DEV_TYPE_ARM_VGIC_V3
 	KVM_DEV_TYPE_ARM_VGIC_ITS,
 #define KVM_DEV_TYPE_ARM_VGIC_ITS	KVM_DEV_TYPE_ARM_VGIC_ITS
+	KVM_DEV_TYPE_XIVE,
+#define KVM_DEV_TYPE_XIVE		KVM_DEV_TYPE_XIVE
 	KVM_DEV_TYPE_MAX,
 };
 
@@ -1434,12 +1442,15 @@ struct kvm_enc_region {
 #define KVM_GET_NESTED_STATE         _IOWR(KVMIO, 0xbe, struct kvm_nested_state)
 #define KVM_SET_NESTED_STATE         _IOW(KVMIO,  0xbf, struct kvm_nested_state)
 
-/* Available with KVM_CAP_MANUAL_DIRTY_LOG_PROTECT */
+/* Available with KVM_CAP_MANUAL_DIRTY_LOG_PROTECT_2 */
 #define KVM_CLEAR_DIRTY_LOG          _IOWR(KVMIO, 0xc0, struct kvm_clear_dirty_log)
 
 /* Available with KVM_CAP_HYPERV_CPUID */
 #define KVM_GET_SUPPORTED_HV_CPUID _IOWR(KVMIO, 0xc1, struct kvm_cpuid2)
 
+/* Available with KVM_CAP_ARM_SVE */
+#define KVM_ARM_VCPU_FINALIZE	  _IOW(KVMIO,  0xc2, int)
+
 /* Secure Encrypted Virtualization command */
 enum sev_cmd_id {
 	/* Guest initialization commands */
diff --git a/powerpc/include/asm/kvm.h b/powerpc/include/asm/kvm.h
index 8c876c1..b0f72de 100644
--- a/powerpc/include/asm/kvm.h
+++ b/powerpc/include/asm/kvm.h
@@ -463,10 +463,12 @@ struct kvm_ppc_cpu_char {
 #define KVM_PPC_CPU_CHAR_BR_HINT_HONOURED	(1ULL << 58)
 #define KVM_PPC_CPU_CHAR_MTTRIG_THR_RECONF	(1ULL << 57)
 #define KVM_PPC_CPU_CHAR_COUNT_CACHE_DIS	(1ULL << 56)
+#define KVM_PPC_CPU_CHAR_BCCTR_FLUSH_ASSIST	(1ull << 54)
 
 #define KVM_PPC_CPU_BEHAV_FAVOUR_SECURITY	(1ULL << 63)
 #define KVM_PPC_CPU_BEHAV_L1D_FLUSH_PR		(1ULL << 62)
 #define KVM_PPC_CPU_BEHAV_BNDS_CHK_SPEC_BAR	(1ULL << 61)
+#define KVM_PPC_CPU_BEHAV_FLUSH_COUNT_CACHE	(1ull << 58)
 
 /* Per-vcpu XICS interrupt controller state */
 #define KVM_REG_PPC_ICP_STATE	(KVM_REG_PPC | KVM_REG_SIZE_U64 | 0x8c)
@@ -480,6 +482,8 @@ struct kvm_ppc_cpu_char {
 #define  KVM_REG_PPC_ICP_PPRI_SHIFT	16	/* pending irq priority */
 #define  KVM_REG_PPC_ICP_PPRI_MASK	0xff
 
+#define KVM_REG_PPC_VP_STATE	(KVM_REG_PPC | KVM_REG_SIZE_U128 | 0x8d)
+
 /* Device control API: PPC-specific devices */
 #define KVM_DEV_MPIC_GRP_MISC		1
 #define   KVM_DEV_MPIC_BASE_ADDR	0	/* 64-bit */
@@ -675,4 +679,48 @@ struct kvm_ppc_cpu_char {
 #define  KVM_XICS_PRESENTED		(1ULL << 43)
 #define  KVM_XICS_QUEUED		(1ULL << 44)
 
+/* POWER9 XIVE Native Interrupt Controller */
+#define KVM_DEV_XIVE_GRP_CTRL		1
+#define   KVM_DEV_XIVE_RESET		1
+#define   KVM_DEV_XIVE_EQ_SYNC		2
+#define KVM_DEV_XIVE_GRP_SOURCE		2	/* 64-bit source identifier */
+#define KVM_DEV_XIVE_GRP_SOURCE_CONFIG	3	/* 64-bit source identifier */
+#define KVM_DEV_XIVE_GRP_EQ_CONFIG	4	/* 64-bit EQ identifier */
+#define KVM_DEV_XIVE_GRP_SOURCE_SYNC	5       /* 64-bit source identifier */
+
+/* Layout of 64-bit XIVE source attribute values */
+#define KVM_XIVE_LEVEL_SENSITIVE	(1ULL << 0)
+#define KVM_XIVE_LEVEL_ASSERTED		(1ULL << 1)
+
+/* Layout of 64-bit XIVE source configuration attribute values */
+#define KVM_XIVE_SOURCE_PRIORITY_SHIFT	0
+#define KVM_XIVE_SOURCE_PRIORITY_MASK	0x7
+#define KVM_XIVE_SOURCE_SERVER_SHIFT	3
+#define KVM_XIVE_SOURCE_SERVER_MASK	0xfffffff8ULL
+#define KVM_XIVE_SOURCE_MASKED_SHIFT	32
+#define KVM_XIVE_SOURCE_MASKED_MASK	0x100000000ULL
+#define KVM_XIVE_SOURCE_EISN_SHIFT	33
+#define KVM_XIVE_SOURCE_EISN_MASK	0xfffffffe00000000ULL
+
+/* Layout of 64-bit EQ identifier */
+#define KVM_XIVE_EQ_PRIORITY_SHIFT	0
+#define KVM_XIVE_EQ_PRIORITY_MASK	0x7
+#define KVM_XIVE_EQ_SERVER_SHIFT	3
+#define KVM_XIVE_EQ_SERVER_MASK		0xfffffff8ULL
+
+/* Layout of EQ configuration values (64 bytes) */
+struct kvm_ppc_xive_eq {
+	__u32 flags;
+	__u32 qshift;
+	__u64 qaddr;
+	__u32 qtoggle;
+	__u32 qindex;
+	__u8  pad[40];
+};
+
+#define KVM_XIVE_EQ_ALWAYS_NOTIFY	0x00000001
+
+#define KVM_XIVE_TIMA_PAGE_OFFSET	0
+#define KVM_XIVE_ESB_PAGE_OFFSET	4
+
 #endif /* __LINUX_KVM_POWERPC_H */
diff --git a/x86/include/asm/kvm.h b/x86/include/asm/kvm.h
index dabfcf7..7a0e64c 100644
--- a/x86/include/asm/kvm.h
+++ b/x86/include/asm/kvm.h
@@ -381,6 +381,7 @@ struct kvm_sync_regs {
 #define KVM_X86_QUIRK_LINT0_REENABLED	(1 << 0)
 #define KVM_X86_QUIRK_CD_NW_CLEARED	(1 << 1)
 #define KVM_X86_QUIRK_LAPIC_MMIO_HOLE	(1 << 2)
+#define KVM_X86_QUIRK_OUT_7E_INC_RIP	(1 << 3)
 
 #define KVM_STATE_NESTED_GUEST_MODE	0x00000001
 #define KVM_STATE_NESTED_RUN_PENDING	0x00000002
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
