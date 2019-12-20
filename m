Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC61127D1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:33:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iq4+El2W8izCLCRwlY2qy+y6A/hyU87BB067BtGXYUw=; b=OIuZVlU+9s+GuH
	nn93w7gbtclDOSfDlnU9u9b+d9qqNMd6qxnk4XcwwEn0sc1WxkYsDKk8JwMtsLcff2koBb1QSiMd1
	Bq8DlABUlJgsHp5xFrUsSaREbvs9tYwUZOyWxIw2Fd5BVDt0MmOBA4uFJe2cUMkkhFKsd7elxQJTP
	aY9wVcLK4Eb7SPHMOA7dD//Sh49E46sJ1bqkdqz04QgDgyOf9ne6YupByffvajqbDGq9brdxXpaHd
	W1BJ8IajvODS41V3WC3HnwshCyNZL2M3m5LmGv73Vo/RfgZC0h3naIEYNrBMAFro3Vs+O/MGrZlmL
	y/QpcZ84fmQSen+yCyaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJLW-0004S4-CZ; Fri, 20 Dec 2019 14:33:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJJ9-00026l-RY
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:31:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B240831B;
 Fri, 20 Dec 2019 06:31:11 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9AF03F718;
 Fri, 20 Dec 2019 06:31:09 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 18/18, KVMTOOL] kvm: add a vcpu feature for SPEv1 support
Date: Fri, 20 Dec 2019 14:30:25 +0000
Message-Id: <20191220143025.33853-19-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_063112_026909_89F6EC6E 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a runtime configurable for KVM tool to enable Statistical
Profiling Extensions version 1 support in guest kernel. A command line
option --spe is required to use the same.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
[ Add SPE to init features ]
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 Makefile                                  |  2 +-
 arm/aarch64/arm-cpu.c                     |  2 +
 arm/aarch64/include/kvm/kvm-config-arch.h |  2 +
 arm/aarch64/include/kvm/kvm-cpu-arch.h    |  3 +-
 arm/aarch64/kvm-cpu.c                     |  4 ++
 arm/include/arm-common/kvm-config-arch.h  |  1 +
 arm/include/arm-common/spe.h              |  4 ++
 arm/spe.c                                 | 81 +++++++++++++++++++++++
 8 files changed, 97 insertions(+), 2 deletions(-)
 create mode 100644 arm/include/arm-common/spe.h
 create mode 100644 arm/spe.c

diff --git a/Makefile b/Makefile
index 3862112c5ec6..04dddb3e7699 100644
--- a/Makefile
+++ b/Makefile
@@ -158,7 +158,7 @@ endif
 # ARM
 OBJS_ARM_COMMON		:= arm/fdt.o arm/gic.o arm/gicv2m.o arm/ioport.o \
 			   arm/kvm.o arm/kvm-cpu.o arm/pci.o arm/timer.o \
-			   arm/pmu.o
+			   arm/pmu.o arm/spe.o
 HDRS_ARM_COMMON		:= arm/include
 ifeq ($(ARCH), arm)
 	DEFINES		+= -DCONFIG_ARM
diff --git a/arm/aarch64/arm-cpu.c b/arm/aarch64/arm-cpu.c
index d7572b7790b1..6ccea033f361 100644
--- a/arm/aarch64/arm-cpu.c
+++ b/arm/aarch64/arm-cpu.c
@@ -6,6 +6,7 @@
 #include "arm-common/gic.h"
 #include "arm-common/timer.h"
 #include "arm-common/pmu.h"
+#include "arm-common/spe.h"
 
 #include <linux/byteorder.h>
 #include <linux/types.h>
@@ -17,6 +18,7 @@ static void generate_fdt_nodes(void *fdt, struct kvm *kvm)
 	gic__generate_fdt_nodes(fdt, kvm->cfg.arch.irqchip);
 	timer__generate_fdt_nodes(fdt, kvm, timer_interrupts);
 	pmu__generate_fdt_nodes(fdt, kvm);
+	spe__generate_fdt_nodes(fdt, kvm);
 }
 
 static int arm_cpu__vcpu_init(struct kvm_cpu *vcpu)
diff --git a/arm/aarch64/include/kvm/kvm-config-arch.h b/arm/aarch64/include/kvm/kvm-config-arch.h
index 04be43dfa9b2..9968e1666de5 100644
--- a/arm/aarch64/include/kvm/kvm-config-arch.h
+++ b/arm/aarch64/include/kvm/kvm-config-arch.h
@@ -6,6 +6,8 @@
 			"Run AArch32 guest"),				\
 	OPT_BOOLEAN('\0', "pmu", &(cfg)->has_pmuv3,			\
 			"Create PMUv3 device"),				\
+	OPT_BOOLEAN('\0', "spe", &(cfg)->has_spev1,			\
+			"Create SPEv1 device"),				\
 	OPT_U64('\0', "kaslr-seed", &(cfg)->kaslr_seed,			\
 			"Specify random seed for Kernel Address Space "	\
 			"Layout Randomization (KASLR)"),
diff --git a/arm/aarch64/include/kvm/kvm-cpu-arch.h b/arm/aarch64/include/kvm/kvm-cpu-arch.h
index 8dfb82ecbc37..080183fa4f81 100644
--- a/arm/aarch64/include/kvm/kvm-cpu-arch.h
+++ b/arm/aarch64/include/kvm/kvm-cpu-arch.h
@@ -8,7 +8,8 @@
 #define ARM_VCPU_FEATURE_FLAGS(kvm, cpuid)	{				\
 	[0] = ((!!(cpuid) << KVM_ARM_VCPU_POWER_OFF) |				\
 	       (!!(kvm)->cfg.arch.aarch32_guest << KVM_ARM_VCPU_EL1_32BIT) |	\
-	       (!!(kvm)->cfg.arch.has_pmuv3 << KVM_ARM_VCPU_PMU_V3))		\
+	       (!!(kvm)->cfg.arch.has_pmuv3 << KVM_ARM_VCPU_PMU_V3) |		\
+	       (!!(kvm)->cfg.arch.has_spev1 << KVM_ARM_VCPU_SPE_V1))		\
 }
 
 #define ARM_MPIDR_HWID_BITMASK	0xFF00FFFFFFUL
diff --git a/arm/aarch64/kvm-cpu.c b/arm/aarch64/kvm-cpu.c
index 9f3e8586880c..90c2e1784e97 100644
--- a/arm/aarch64/kvm-cpu.c
+++ b/arm/aarch64/kvm-cpu.c
@@ -140,6 +140,10 @@ void kvm_cpu__select_features(struct kvm *kvm, struct kvm_vcpu_init *init)
 	/* Enable SVE if available */
 	if (kvm__supports_extension(kvm, KVM_CAP_ARM_SVE))
 		init->features[0] |= 1UL << KVM_ARM_VCPU_SVE;
+
+	/* Enable SPE if available */
+	if (kvm__supports_extension(kvm, KVM_CAP_ARM_SPE_V1))
+		init->features[0] |= 1UL << KVM_ARM_VCPU_SPE_V1;
 }
 
 int kvm_cpu__configure_features(struct kvm_cpu *vcpu)
diff --git a/arm/include/arm-common/kvm-config-arch.h b/arm/include/arm-common/kvm-config-arch.h
index 5734c46ab9e6..742733e289af 100644
--- a/arm/include/arm-common/kvm-config-arch.h
+++ b/arm/include/arm-common/kvm-config-arch.h
@@ -9,6 +9,7 @@ struct kvm_config_arch {
 	bool		virtio_trans_pci;
 	bool		aarch32_guest;
 	bool		has_pmuv3;
+	bool		has_spev1;
 	u64		kaslr_seed;
 	enum irqchip_type irqchip;
 	u64		fw_addr;
diff --git a/arm/include/arm-common/spe.h b/arm/include/arm-common/spe.h
new file mode 100644
index 000000000000..bcfa40877f6f
--- /dev/null
+++ b/arm/include/arm-common/spe.h
@@ -0,0 +1,4 @@
+
+#define KVM_ARM_SPEV1_PPI			21
+
+void spe__generate_fdt_nodes(void *fdt, struct kvm *kvm);
diff --git a/arm/spe.c b/arm/spe.c
new file mode 100644
index 000000000000..ec03b01a3866
--- /dev/null
+++ b/arm/spe.c
@@ -0,0 +1,81 @@
+#include "kvm/fdt.h"
+#include "kvm/kvm.h"
+#include "kvm/kvm-cpu.h"
+#include "kvm/util.h"
+
+#include "arm-common/gic.h"
+#include "arm-common/spe.h"
+
+#ifdef CONFIG_ARM64
+static int set_spe_attr(struct kvm *kvm, int vcpu_idx,
+			struct kvm_device_attr *attr)
+{
+	int ret, fd;
+
+	fd = kvm->cpus[vcpu_idx]->vcpu_fd;
+
+	ret = ioctl(fd, KVM_HAS_DEVICE_ATTR, attr);
+	if (!ret) {
+		ret = ioctl(fd, KVM_SET_DEVICE_ATTR, attr);
+		if (ret)
+			pr_err("SPE KVM_SET_DEVICE_ATTR failed (%d)\n", ret);
+	} else {
+		pr_err("Unsupported SPE on vcpu%d\n", vcpu_idx);
+	}
+
+	return ret;
+}
+
+void spe__generate_fdt_nodes(void *fdt, struct kvm *kvm)
+{
+	const char compatible[] = "arm,statistical-profiling-extension-v1";
+	int irq = KVM_ARM_SPEV1_PPI;
+	int i, ret;
+
+	u32 cpu_mask = (((1 << kvm->nrcpus) - 1) << GIC_FDT_IRQ_PPI_CPU_SHIFT) \
+		       & GIC_FDT_IRQ_PPI_CPU_MASK;
+	u32 irq_prop[] = {
+		cpu_to_fdt32(GIC_FDT_IRQ_TYPE_PPI),
+		cpu_to_fdt32(irq - 16),
+		cpu_to_fdt32(cpu_mask | IRQ_TYPE_LEVEL_HIGH),
+	};
+
+	if (!kvm->cfg.arch.has_spev1)
+		return;
+
+	if (!kvm__supports_extension(kvm, KVM_CAP_ARM_SPE_V1)) {
+		pr_info("SPE unsupported\n");
+		return;
+	}
+
+	for (i = 0; i < kvm->nrcpus; i++) {
+		struct kvm_device_attr spe_attr;
+
+		spe_attr = (struct kvm_device_attr){
+			.group	= KVM_ARM_VCPU_SPE_V1_CTRL,
+			.addr	= (u64)(unsigned long)&irq,
+			.attr	= KVM_ARM_VCPU_SPE_V1_IRQ,
+		};
+
+		ret = set_spe_attr(kvm, i, &spe_attr);
+		if (ret)
+			return;
+
+		spe_attr = (struct kvm_device_attr){
+			.group	= KVM_ARM_VCPU_SPE_V1_CTRL,
+			.attr	= KVM_ARM_VCPU_SPE_V1_INIT,
+		};
+
+		ret = set_spe_attr(kvm, i, &spe_attr);
+		if (ret)
+			return;
+	}
+
+	_FDT(fdt_begin_node(fdt, "spe"));
+	_FDT(fdt_property(fdt, "compatible", compatible, sizeof(compatible)));
+	_FDT(fdt_property(fdt, "interrupts", irq_prop, sizeof(irq_prop)));
+	_FDT(fdt_end_node(fdt));
+}
+#else
+void spe__generate_fdt_nodes(void *fdt, struct kvm *kvm) { }
+#endif
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
