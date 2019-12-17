Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A03122DB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpLPqGlIi7g6a9RDRVOb6qvymO2nw3m5djGqteC8y/s=; b=F7klHqGezuBjA9
	SzInTFEfsnV9jBTJYzdJt384+OK8K2UGa5R3iMCYv4KLSVm5zGplVYShq3i5UInmeotZkolXMvkeI
	0upU0DBBBifX2HVoJukmQ6Nwk2AzLE4jdg+czpMziwqtFyPLrDcso2vQTh6Br2GfOgSihK1OKyFW5
	3kE+FkX21nwnVsZpNouNOEGEvyCmbqXe/z1tEjokexTbPCqVOYlnFttalr1nBcR+YYDwHwdlXFWzb
	bRtjzKO/AR1C30g010VLFXFWpXLtTqVmtOp9YZL0O/qw+hlXGQZOIOc9yedi7pZ9J9gNBAD+DBEDP
	VjgmtcKQXWxL8zP6eMfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDLh-0001BR-BH; Tue, 17 Dec 2019 13:57:17 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDL5-0000tt-Sj
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:56:41 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 862194F98DDFFED6A2E0;
 Tue, 17 Dec 2019 21:56:30 +0800 (CST)
Received: from DESKTOP-1NISPDV.china.huawei.com (10.173.221.248) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Tue, 17 Dec 2019 21:56:23 +0800
From: <yezengruan@huawei.com>
To: <yezengruan@huawei.com>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <virtualization@lists.linux-foundation.org>
Subject: [PATCH 3/5] KVM: arm64: Support pvlock preempted via shared structure
Date: Tue, 17 Dec 2019 21:55:47 +0800
Message-ID: <20191217135549.3240-4-yezengruan@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20191217135549.3240-1-yezengruan@huawei.com>
References: <20191217135549.3240-1-yezengruan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.248]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_055640_115426_74822F28 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, steven.price@arm.com,
 james.morse@arm.com, maz@kernel.org, will@kernel.org,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zengruan Ye <yezengruan@huawei.com>

Implement the service call for configuring a shared structure between a
vcpu and the hypervisor in which the hypervisor can tell the vcpu is
running or not.

The preempted field is zero if 1) some old KVM deos not support this filed.
2) the vcpu is not preempted. Other values means the vcpu has been preempted.

Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
---
 arch/arm/include/asm/kvm_host.h   | 13 +++++++++++++
 arch/arm64/include/asm/kvm_host.h | 17 +++++++++++++++++
 arch/arm64/kvm/Makefile           |  1 +
 virt/kvm/arm/arm.c                |  8 ++++++++
 virt/kvm/arm/hypercalls.c         |  4 ++++
 virt/kvm/arm/pvlock.c             | 21 +++++++++++++++++++++
 6 files changed, 64 insertions(+)
 create mode 100644 virt/kvm/arm/pvlock.c

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 556cd818eccf..098375f1c89e 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -356,6 +356,19 @@ static inline bool kvm_arm_is_pvtime_enabled(struct kvm_vcpu_arch *vcpu_arch)
 	return false;
 }
 
+static inline void kvm_arm_pvlock_preempted_init(struct kvm_vcpu_arch *vcpu_arch)
+{
+}
+
+static inline bool kvm_arm_is_pvlock_preempted_ready(struct kvm_vcpu_arch *vcpu_arch)
+{
+	return false;
+}
+
+static inline void kvm_update_pvlock_preempted(struct kvm_vcpu *vcpu, u64 preempted)
+{
+}
+
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
 
 struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index c61260cf63c5..d9b2a21a87ac 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -354,6 +354,11 @@ struct kvm_vcpu_arch {
 		u64 last_steal;
 		gpa_t base;
 	} steal;
+
+	/* Guest PV lock state */
+	struct {
+		gpa_t base;
+	} pv;
 };
 
 /* Pointer to the vcpu's SVE FFR for sve_{save,load}_state() */
@@ -515,6 +520,18 @@ static inline bool kvm_arm_is_pvtime_enabled(struct kvm_vcpu_arch *vcpu_arch)
 	return (vcpu_arch->steal.base != GPA_INVALID);
 }
 
+static inline void kvm_arm_pvlock_preempted_init(struct kvm_vcpu_arch *vcpu_arch)
+{
+	vcpu_arch->pv.base = GPA_INVALID;
+}
+
+static inline bool kvm_arm_is_pvlock_preempted_ready(struct kvm_vcpu_arch *vcpu_arch)
+{
+	return (vcpu_arch->pv.base != GPA_INVALID);
+}
+
+void kvm_update_pvlock_preempted(struct kvm_vcpu *vcpu, u64 preempted);
+
 void kvm_set_sei_esr(struct kvm_vcpu *vcpu, u64 syndrome);
 
 struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
index 5ffbdc39e780..e4591f56d5f1 100644
--- a/arch/arm64/kvm/Makefile
+++ b/arch/arm64/kvm/Makefile
@@ -15,6 +15,7 @@ kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hypercalls.o
 kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/pvtime.o
+kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/pvlock.o
 
 kvm-$(CONFIG_KVM_ARM_HOST) += inject_fault.o regmap.o va_layout.o
 kvm-$(CONFIG_KVM_ARM_HOST) += hyp.o hyp-init.o handle_exit.o
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 12e0280291ce..c562f62fdd45 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -383,6 +383,8 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 
 	kvm_arm_pvtime_vcpu_init(&vcpu->arch);
 
+	kvm_arm_pvlock_preempted_init(&vcpu->arch);
+
 	return kvm_vgic_vcpu_init(vcpu);
 }
 
@@ -421,6 +423,9 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 		vcpu_set_wfx_traps(vcpu);
 
 	vcpu_ptrauth_setup_lazy(vcpu);
+
+	if (kvm_arm_is_pvlock_preempted_ready(&vcpu->arch))
+		kvm_update_pvlock_preempted(vcpu, 0);
 }
 
 void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
@@ -434,6 +439,9 @@ void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
 	vcpu->cpu = -1;
 
 	kvm_arm_set_running_vcpu(NULL);
+
+	if (kvm_arm_is_pvlock_preempted_ready(&vcpu->arch))
+		kvm_update_pvlock_preempted(vcpu, 1);
 }
 
 static void vcpu_power_off(struct kvm_vcpu *vcpu)
diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
index ff13871fd85a..5964982ccd05 100644
--- a/virt/kvm/arm/hypercalls.c
+++ b/virt/kvm/arm/hypercalls.c
@@ -65,6 +65,10 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 		if (gpa != GPA_INVALID)
 			val = gpa;
 		break;
+	case ARM_SMCCC_HV_PV_LOCK_PREEMPTED:
+		vcpu->arch.pv.base = smccc_get_arg1(vcpu);
+		val = SMCCC_RET_SUCCESS;
+		break;
 	default:
 		return kvm_psci_call(vcpu);
 	}
diff --git a/virt/kvm/arm/pvlock.c b/virt/kvm/arm/pvlock.c
new file mode 100644
index 000000000000..c3464958b0f5
--- /dev/null
+++ b/virt/kvm/arm/pvlock.c
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright(c) 2019 Huawei Technologies Co., Ltd
+ * Author: Zengruan Ye <yezengruan@huawei.com>
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/kvm_host.h>
+
+#include <kvm/arm_hypercalls.h>
+
+void kvm_update_pvlock_preempted(struct kvm_vcpu *vcpu, u64 preempted)
+{
+	u64 preempted_le;
+	u64 base;
+	struct kvm *kvm = vcpu->kvm;
+
+	base = vcpu->arch.pv.base;
+	preempted_le = cpu_to_le64(preempted);
+	kvm_put_guest(kvm, base, preempted_le, u64);
+}
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
