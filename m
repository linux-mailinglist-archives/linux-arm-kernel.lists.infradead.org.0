Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850BF10412E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=An+hjy7sP1wYjSsu/hHRJEy/U4AQtRTy2YfqklakTe0=; b=I/25dQAKgQ/Jpi
	AFjBMuzUX//mhVy8RsW+1E1A0D2VeL59d7cdEULV0Pk9riIwtjODYDaAh+u1jzzpF7RTPpJn4w2GY
	taLEO+j8ESPlIKOm1OF2hvV0qqOW/GzVdbwH3cUG7NSY12YRloIEVgDhcOf3HV9FAcqfhIc8yXSg2
	uKBynOjnlwKb3BXmYPRA5ohAJGT9DW5MYnQW5HNiJxYziGi9RBxNHxAUxZOvIl/OZGFaY5OFuRJFw
	g6ngSbZIUH+RvEn92KHMYCm5aSascqV7YbMHUyd6reHKqFqiEQq02UV9eEPgK/IljEjxHCCwpZYFG
	JXa/GpCQu6xC4AF9Ng/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXT5j-0002sC-Jk; Wed, 20 Nov 2019 16:44:31 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXT4L-0001sm-T7
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:43:09 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXT4D-0007RI-74; Wed, 20 Nov 2019 17:42:57 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 04/22] KVM: arm/arm64: Factor out hypercall handling from PSCI
 code
Date: Wed, 20 Nov 2019 16:42:18 +0000
Message-Id: <20191120164236.29359-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120164236.29359-1-maz@kernel.org>
References: <20191120164236.29359-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com, graf@amazon.com,
 drjones@redhat.com, borntraeger@de.ibm.com, christoffer.dall@arm.com,
 eric.auger@redhat.com, xypron.glpk@gmx.de, julien.grall@arm.com,
 mark.rutland@arm.com, bigeasy@linutronix.de, steven.price@arm.com,
 tglx@linutronix.de, will@kernel.org, yuzenghui@huawei.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_084306_096901_CA285747 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Grall <julien.grall@arm.com>, Alexander Graf <graf@amazon.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@arm.com>

We currently intertwine the KVM PSCI implementation with the general
dispatch of hypercall handling, which makes perfect sense because PSCI
is the only category of hypercalls we support.

However, as we are about to support additional hypercalls, factor out
this functionality into a separate hypercall handler file.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
[steven.price@arm.com: rebased]
Reviewed-by: Andrew Jones <drjones@redhat.com>
Signed-off-by: Steven Price <steven.price@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/kvm/Makefile        |  2 +-
 arch/arm/kvm/handle_exit.c   |  2 +-
 arch/arm64/kvm/Makefile      |  1 +
 arch/arm64/kvm/handle_exit.c |  4 +-
 include/Kbuild               |  2 +
 include/kvm/arm_hypercalls.h | 43 ++++++++++++++++++
 include/kvm/arm_psci.h       |  2 +-
 virt/kvm/arm/hypercalls.c    | 59 +++++++++++++++++++++++++
 virt/kvm/arm/psci.c          | 84 +-----------------------------------
 9 files changed, 112 insertions(+), 87 deletions(-)
 create mode 100644 include/kvm/arm_hypercalls.h
 create mode 100644 virt/kvm/arm/hypercalls.c

diff --git a/arch/arm/kvm/Makefile b/arch/arm/kvm/Makefile
index b76b75bd9e00..e442d82821df 100644
--- a/arch/arm/kvm/Makefile
+++ b/arch/arm/kvm/Makefile
@@ -24,7 +24,7 @@ obj-y += kvm-arm.o init.o interrupts.o
 obj-y += handle_exit.o guest.o emulate.o reset.o
 obj-y += coproc.o coproc_a15.o coproc_a7.o   vgic-v3-coproc.o
 obj-y += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.o
-obj-y += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
+obj-y += $(KVM)/arm/psci.o $(KVM)/arm/perf.o $(KVM)/arm/hypercalls.o
 obj-y += $(KVM)/arm/aarch32.o
 
 obj-y += $(KVM)/arm/vgic/vgic.o
diff --git a/arch/arm/kvm/handle_exit.c b/arch/arm/kvm/handle_exit.c
index 2a6a1394d26e..e58a89d2f13f 100644
--- a/arch/arm/kvm/handle_exit.c
+++ b/arch/arm/kvm/handle_exit.c
@@ -9,7 +9,7 @@
 #include <asm/kvm_emulate.h>
 #include <asm/kvm_coproc.h>
 #include <asm/kvm_mmu.h>
-#include <kvm/arm_psci.h>
+#include <kvm/arm_hypercalls.h>
 #include <trace/events/kvm.h>
 
 #include "trace.h"
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 3ac1a64d2fb9..73dce4d47d47 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_KVM_ARM_HOST) += hyp/
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/eventfd.o $(KVM)/vfio.o
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.o
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
+kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hypercalls.o
 
 kvm-$(CONFIG_KVM_ARM_HOST) += inject_fault.o regmap.o va_layout.o
 kvm-$(CONFIG_KVM_ARM_HOST) += hyp.o hyp-init.o handle_exit.o
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index 706cca23f0d2..aacfc55de44c 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -11,8 +11,6 @@
 #include <linux/kvm.h>
 #include <linux/kvm_host.h>
 
-#include <kvm/arm_psci.h>
-
 #include <asm/esr.h>
 #include <asm/exception.h>
 #include <asm/kvm_asm.h>
@@ -22,6 +20,8 @@
 #include <asm/debug-monitors.h>
 #include <asm/traps.h>
 
+#include <kvm/arm_hypercalls.h>
+
 #define CREATE_TRACE_POINTS
 #include "trace.h"
 
diff --git a/include/Kbuild b/include/Kbuild
index ffba79483cc5..e8154f8bcac5 100644
--- a/include/Kbuild
+++ b/include/Kbuild
@@ -67,6 +67,8 @@ header-test-			+= keys/big_key-type.h
 header-test-			+= keys/request_key_auth-type.h
 header-test-			+= keys/trusted.h
 header-test-			+= kvm/arm_arch_timer.h
+header-test-$(CONFIG_ARM)	+= kvm/arm_hypercalls.h
+header-test-$(CONFIG_ARM64)	+= kvm/arm_hypercalls.h
 header-test-			+= kvm/arm_pmu.h
 header-test-$(CONFIG_ARM)	+= kvm/arm_psci.h
 header-test-$(CONFIG_ARM64)	+= kvm/arm_psci.h
diff --git a/include/kvm/arm_hypercalls.h b/include/kvm/arm_hypercalls.h
new file mode 100644
index 000000000000..0e2509d27910
--- /dev/null
+++ b/include/kvm/arm_hypercalls.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 Arm Ltd. */
+
+#ifndef __KVM_ARM_HYPERCALLS_H
+#define __KVM_ARM_HYPERCALLS_H
+
+#include <asm/kvm_emulate.h>
+
+int kvm_hvc_call_handler(struct kvm_vcpu *vcpu);
+
+static inline u32 smccc_get_function(struct kvm_vcpu *vcpu)
+{
+	return vcpu_get_reg(vcpu, 0);
+}
+
+static inline unsigned long smccc_get_arg1(struct kvm_vcpu *vcpu)
+{
+	return vcpu_get_reg(vcpu, 1);
+}
+
+static inline unsigned long smccc_get_arg2(struct kvm_vcpu *vcpu)
+{
+	return vcpu_get_reg(vcpu, 2);
+}
+
+static inline unsigned long smccc_get_arg3(struct kvm_vcpu *vcpu)
+{
+	return vcpu_get_reg(vcpu, 3);
+}
+
+static inline void smccc_set_retval(struct kvm_vcpu *vcpu,
+				    unsigned long a0,
+				    unsigned long a1,
+				    unsigned long a2,
+				    unsigned long a3)
+{
+	vcpu_set_reg(vcpu, 0, a0);
+	vcpu_set_reg(vcpu, 1, a1);
+	vcpu_set_reg(vcpu, 2, a2);
+	vcpu_set_reg(vcpu, 3, a3);
+}
+
+#endif
diff --git a/include/kvm/arm_psci.h b/include/kvm/arm_psci.h
index 632e78bdef4d..5b58bd2fe088 100644
--- a/include/kvm/arm_psci.h
+++ b/include/kvm/arm_psci.h
@@ -40,7 +40,7 @@ static inline int kvm_psci_version(struct kvm_vcpu *vcpu, struct kvm *kvm)
 }
 
 
-int kvm_hvc_call_handler(struct kvm_vcpu *vcpu);
+int kvm_psci_call(struct kvm_vcpu *vcpu);
 
 struct kvm_one_reg;
 
diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
new file mode 100644
index 000000000000..f875241bd030
--- /dev/null
+++ b/virt/kvm/arm/hypercalls.c
@@ -0,0 +1,59 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (C) 2019 Arm Ltd.
+
+#include <linux/arm-smccc.h>
+#include <linux/kvm_host.h>
+
+#include <asm/kvm_emulate.h>
+
+#include <kvm/arm_hypercalls.h>
+#include <kvm/arm_psci.h>
+
+int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
+{
+	u32 func_id = smccc_get_function(vcpu);
+	u32 val = SMCCC_RET_NOT_SUPPORTED;
+	u32 feature;
+
+	switch (func_id) {
+	case ARM_SMCCC_VERSION_FUNC_ID:
+		val = ARM_SMCCC_VERSION_1_1;
+		break;
+	case ARM_SMCCC_ARCH_FEATURES_FUNC_ID:
+		feature = smccc_get_arg1(vcpu);
+		switch (feature) {
+		case ARM_SMCCC_ARCH_WORKAROUND_1:
+			switch (kvm_arm_harden_branch_predictor()) {
+			case KVM_BP_HARDEN_UNKNOWN:
+				break;
+			case KVM_BP_HARDEN_WA_NEEDED:
+				val = SMCCC_RET_SUCCESS;
+				break;
+			case KVM_BP_HARDEN_NOT_REQUIRED:
+				val = SMCCC_RET_NOT_REQUIRED;
+				break;
+			}
+			break;
+		case ARM_SMCCC_ARCH_WORKAROUND_2:
+			switch (kvm_arm_have_ssbd()) {
+			case KVM_SSBD_FORCE_DISABLE:
+			case KVM_SSBD_UNKNOWN:
+				break;
+			case KVM_SSBD_KERNEL:
+				val = SMCCC_RET_SUCCESS;
+				break;
+			case KVM_SSBD_FORCE_ENABLE:
+			case KVM_SSBD_MITIGATED:
+				val = SMCCC_RET_NOT_REQUIRED;
+				break;
+			}
+			break;
+		}
+		break;
+	default:
+		return kvm_psci_call(vcpu);
+	}
+
+	smccc_set_retval(vcpu, val, 0, 0, 0);
+	return 1;
+}
diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
index 87927f7e1ee7..17e2bdd4b76f 100644
--- a/virt/kvm/arm/psci.c
+++ b/virt/kvm/arm/psci.c
@@ -15,6 +15,7 @@
 #include <asm/kvm_host.h>
 
 #include <kvm/arm_psci.h>
+#include <kvm/arm_hypercalls.h>
 
 /*
  * This is an implementation of the Power State Coordination Interface
@@ -23,38 +24,6 @@
 
 #define AFFINITY_MASK(level)	~((0x1UL << ((level) * MPIDR_LEVEL_BITS)) - 1)
 
-static u32 smccc_get_function(struct kvm_vcpu *vcpu)
-{
-	return vcpu_get_reg(vcpu, 0);
-}
-
-static unsigned long smccc_get_arg1(struct kvm_vcpu *vcpu)
-{
-	return vcpu_get_reg(vcpu, 1);
-}
-
-static unsigned long smccc_get_arg2(struct kvm_vcpu *vcpu)
-{
-	return vcpu_get_reg(vcpu, 2);
-}
-
-static unsigned long smccc_get_arg3(struct kvm_vcpu *vcpu)
-{
-	return vcpu_get_reg(vcpu, 3);
-}
-
-static void smccc_set_retval(struct kvm_vcpu *vcpu,
-			     unsigned long a0,
-			     unsigned long a1,
-			     unsigned long a2,
-			     unsigned long a3)
-{
-	vcpu_set_reg(vcpu, 0, a0);
-	vcpu_set_reg(vcpu, 1, a1);
-	vcpu_set_reg(vcpu, 2, a2);
-	vcpu_set_reg(vcpu, 3, a3);
-}
-
 static unsigned long psci_affinity_mask(unsigned long affinity_level)
 {
 	if (affinity_level <= 3)
@@ -373,7 +342,7 @@ static int kvm_psci_0_1_call(struct kvm_vcpu *vcpu)
  * Errors:
  * -EINVAL: Unrecognized PSCI function
  */
-static int kvm_psci_call(struct kvm_vcpu *vcpu)
+int kvm_psci_call(struct kvm_vcpu *vcpu)
 {
 	switch (kvm_psci_version(vcpu, vcpu->kvm)) {
 	case KVM_ARM_PSCI_1_0:
@@ -387,55 +356,6 @@ static int kvm_psci_call(struct kvm_vcpu *vcpu)
 	};
 }
 
-int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
-{
-	u32 func_id = smccc_get_function(vcpu);
-	u32 val = SMCCC_RET_NOT_SUPPORTED;
-	u32 feature;
-
-	switch (func_id) {
-	case ARM_SMCCC_VERSION_FUNC_ID:
-		val = ARM_SMCCC_VERSION_1_1;
-		break;
-	case ARM_SMCCC_ARCH_FEATURES_FUNC_ID:
-		feature = smccc_get_arg1(vcpu);
-		switch(feature) {
-		case ARM_SMCCC_ARCH_WORKAROUND_1:
-			switch (kvm_arm_harden_branch_predictor()) {
-			case KVM_BP_HARDEN_UNKNOWN:
-				break;
-			case KVM_BP_HARDEN_WA_NEEDED:
-				val = SMCCC_RET_SUCCESS;
-				break;
-			case KVM_BP_HARDEN_NOT_REQUIRED:
-				val = SMCCC_RET_NOT_REQUIRED;
-				break;
-			}
-			break;
-		case ARM_SMCCC_ARCH_WORKAROUND_2:
-			switch (kvm_arm_have_ssbd()) {
-			case KVM_SSBD_FORCE_DISABLE:
-			case KVM_SSBD_UNKNOWN:
-				break;
-			case KVM_SSBD_KERNEL:
-				val = SMCCC_RET_SUCCESS;
-				break;
-			case KVM_SSBD_FORCE_ENABLE:
-			case KVM_SSBD_MITIGATED:
-				val = SMCCC_RET_NOT_REQUIRED;
-				break;
-			}
-			break;
-		}
-		break;
-	default:
-		return kvm_psci_call(vcpu);
-	}
-
-	smccc_set_retval(vcpu, val, 0, 0, 0);
-	return 1;
-}
-
 int kvm_arm_get_fw_num_regs(struct kvm_vcpu *vcpu)
 {
 	return 3;		/* PSCI version and two workaround registers */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
