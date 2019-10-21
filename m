Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251C0DF169
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfjBoH6FT1ODuOXY8GbnbKPZfUevJRLUI0JvlyzAoYg=; b=F0XYE2aKF58pn0
	2x6TAiPEJVtH7YZi6V0ZHKKQzNjq3fBfV5Rw6xqACVR5lWA/P7uNQhgrQR5erY9mIVmjzSPjoPASY
	4UDPVUe8n1FXL1xTaBMMnMtWUnqpzCZk/hVowCPk/d/fsh9ZyaQ69qF4jkMPYCD0TK9zU4qVdzgDf
	PWcI/jwN7dfYX/pzdSSpwWkkgPVTEoCPKIEd4EDedMAqHY8ldxuqxwv3wGZ9sgfASzOsgNrjKd8Rq
	KEbi8+cM5ROgvtmHO2MqDJqXKdj+FyNrVKxQSie2ptG/z2MWeDgeNyViljlj66wd/axnEfs6qTsUW
	mLdLwTi5iMGHThanp2Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZcN-0004V7-Qw; Mon, 21 Oct 2019 15:29:11 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZbw-0004Lw-Nh
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:28:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61193105A;
 Mon, 21 Oct 2019 08:28:40 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5EF083F71F;
 Mon, 21 Oct 2019 08:28:38 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v7 03/10] KVM: arm64: Implement PV_TIME_FEATURES call
Date: Mon, 21 Oct 2019 16:28:16 +0100
Message-Id: <20191021152823.14882-4-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021152823.14882-1-steven.price@arm.com>
References: <20191021152823.14882-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_082844_898079_1B349C76 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This provides a mechanism for querying which paravirtualized time
features are available in this hypervisor.

Also add the header file which defines the ABI for the paravirtualized
time features we're about to add.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm/include/asm/kvm_host.h      |  6 ++++++
 arch/arm64/include/asm/kvm_host.h    |  2 ++
 arch/arm64/include/asm/pvclock-abi.h | 17 +++++++++++++++++
 arch/arm64/kvm/Makefile              |  1 +
 include/linux/arm-smccc.h            | 14 ++++++++++++++
 virt/kvm/arm/hypercalls.c            |  8 +++++++-
 virt/kvm/arm/pvtime.c                | 21 +++++++++++++++++++++
 7 files changed, 68 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/include/asm/pvclock-abi.h
 create mode 100644 virt/kvm/arm/pvtime.c

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 8a37c8e89777..5a0c3569ebde 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -7,6 +7,7 @@
 #ifndef __ARM_KVM_HOST_H__
 #define __ARM_KVM_HOST_H__
 
+#include <linux/arm-smccc.h>
 #include <linux/errno.h>
 #include <linux/types.h>
 #include <linux/kvm_types.h>
@@ -323,6 +324,11 @@ static inline int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 int kvm_perf_init(void);
 int kvm_perf_teardown(void);
 
+static inline long kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
+{
+	return SMCCC_RET_NOT_SUPPORTED;
+}
+
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
 
 struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index f656169db8c3..93b46d9526d0 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -478,6 +478,8 @@ void handle_exit_early(struct kvm_vcpu *vcpu, struct kvm_run *run,
 int kvm_perf_init(void);
 int kvm_perf_teardown(void);
 
+long kvm_hypercall_pv_features(struct kvm_vcpu *vcpu);
+
 void kvm_set_sei_esr(struct kvm_vcpu *vcpu, u64 syndrome);
 
 struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
diff --git a/arch/arm64/include/asm/pvclock-abi.h b/arch/arm64/include/asm/pvclock-abi.h
new file mode 100644
index 000000000000..c4f1c0a0789c
--- /dev/null
+++ b/arch/arm64/include/asm/pvclock-abi.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 Arm Ltd. */
+
+#ifndef __ASM_PVCLOCK_ABI_H
+#define __ASM_PVCLOCK_ABI_H
+
+/* The below structure is defined in ARM DEN0057A */
+
+struct pvclock_vcpu_stolen_time {
+	__le32 revision;
+	__le32 attributes;
+	__le64 stolen_time;
+	/* Structure must be 64 byte aligned, pad to that size */
+	u8 padding[48];
+} __packed;
+
+#endif
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 73dce4d47d47..5ffbdc39e780 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -14,6 +14,7 @@ kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/e
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.o
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hypercalls.o
+kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/pvtime.o
 
 kvm-$(CONFIG_KVM_ARM_HOST) += inject_fault.o regmap.o va_layout.o
 kvm-$(CONFIG_KVM_ARM_HOST) += hyp.o hyp-init.o handle_exit.o
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index df01a8579034..92e0046ce7a7 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -45,6 +45,7 @@
 #define ARM_SMCCC_OWNER_SIP		2
 #define ARM_SMCCC_OWNER_OEM		3
 #define ARM_SMCCC_OWNER_STANDARD	4
+#define ARM_SMCCC_OWNER_STANDARD_HYP	5
 #define ARM_SMCCC_OWNER_TRUSTED_APP	48
 #define ARM_SMCCC_OWNER_TRUSTED_APP_END	49
 #define ARM_SMCCC_OWNER_TRUSTED_OS	50
@@ -318,5 +319,18 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
 #define SMCCC_RET_NOT_SUPPORTED			-1
 #define SMCCC_RET_NOT_REQUIRED			-2
 
+/* Paravirtualised time calls (defined by ARM DEN0057A) */
+#define ARM_SMCCC_HV_PV_TIME_FEATURES				\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_64,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   0x20)
+
+#define ARM_SMCCC_HV_PV_TIME_ST					\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\
+			   ARM_SMCCC_SMC_64,			\
+			   ARM_SMCCC_OWNER_STANDARD_HYP,	\
+			   0x21)
+
 #endif /*__ASSEMBLY__*/
 #endif /*__LINUX_ARM_SMCCC_H*/
diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
index f875241bd030..97ea8b133e77 100644
--- a/virt/kvm/arm/hypercalls.c
+++ b/virt/kvm/arm/hypercalls.c
@@ -12,7 +12,7 @@
 int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 {
 	u32 func_id = smccc_get_function(vcpu);
-	u32 val = SMCCC_RET_NOT_SUPPORTED;
+	long val = SMCCC_RET_NOT_SUPPORTED;
 	u32 feature;
 
 	switch (func_id) {
@@ -48,8 +48,14 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 				break;
 			}
 			break;
+		case ARM_SMCCC_HV_PV_TIME_FEATURES:
+			val = SMCCC_RET_SUCCESS;
+			break;
 		}
 		break;
+	case ARM_SMCCC_HV_PV_TIME_FEATURES:
+		val = kvm_hypercall_pv_features(vcpu);
+		break;
 	default:
 		return kvm_psci_call(vcpu);
 	}
diff --git a/virt/kvm/arm/pvtime.c b/virt/kvm/arm/pvtime.c
new file mode 100644
index 000000000000..8d0fad671dcf
--- /dev/null
+++ b/virt/kvm/arm/pvtime.c
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (C) 2019 Arm Ltd.
+
+#include <linux/arm-smccc.h>
+
+#include <kvm/arm_hypercalls.h>
+
+long kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
+{
+	u32 feature = smccc_get_arg1(vcpu);
+	long val = SMCCC_RET_NOT_SUPPORTED;
+
+	switch (feature) {
+	case ARM_SMCCC_HV_PV_TIME_FEATURES:
+		val = SMCCC_RET_SUCCESS;
+		break;
+	}
+
+	return val;
+}
+
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
