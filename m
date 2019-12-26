Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A8B12ACA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 15:01:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzvOKhtvC8vmJq5W8pw/wmk1TO6sLZtOwALatu6GEKU=; b=t2SWSwntZo0x+y
	bZ7lR0M/+OtLiF5FfvBnoslJOzaMuzqq7iH/dzmVA6DIgnPog30fltpxJJuLhtz9Q245AoAZZHyWq
	CqhicQ5A1N8zSNL20GOzTxxRWRpRP1ssxTAozWnoMTq+p2u+PfWQmihXxK7N5odkKZlfBuMp5/TbG
	K+WGc1jaHYgvaLRz0IKZimHkJgG2/DMl0GF8MNzkcLYuEk+EXIzLn5O4pYRPC999SXjIHPoY0/oty
	aYbuXJFz0NFaUDjYqAaPHDzVXUIrI0uHdQB2U3TdsWYT8HQ2NExbR4vxvI6ZzgtsQHvavqbHFs1PA
	JYwGXkxguzc/FOWlnOfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikThE-00081Y-6f; Thu, 26 Dec 2019 14:01:00 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikTfU-0005Pr-Ju
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 13:59:14 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2A822159E44F7CA5A66F;
 Thu, 26 Dec 2019 21:59:07 +0800 (CST)
Received: from DESKTOP-1NISPDV.china.huawei.com (10.173.221.248) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Thu, 26 Dec 2019 21:58:56 +0800
From: Zengruan Ye <yezengruan@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <virtualization@lists.linux-foundation.org>
Subject: [PATCH v2 6/6] KVM: arm64: Support the VCPU preemption check
Date: Thu, 26 Dec 2019 21:58:33 +0800
Message-ID: <20191226135833.1052-7-yezengruan@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20191226135833.1052-1-yezengruan@huawei.com>
References: <20191226135833.1052-1-yezengruan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.248]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_055912_844820_32A0EAC8 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, steven.price@arm.com,
 yezengruan@huawei.com, james.morse@arm.com, catalin.marinas@arm.com,
 will@kernel.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support the vcpu_is_preempted() functionality under KVM/arm64. This will
enhance lock performance on overcommitted hosts (more runnable VCPUs
than physical CPUs in the system) as doing busy waits for preempted
VCPUs will hurt system performance far worse than early yielding.

unix benchmark result:
  host:  kernel 5.5.0-rc1, HiSilicon Kunpeng920, 8 CPUs
  guest: kernel 5.5.0-rc1, 16 VCPUs

               test-case                |    after-patch    |   before-patch
----------------------------------------+-------------------+------------------
 Dhrystone 2 using register variables   | 334600751.0 lps   | 335319028.3 lps
 Double-Precision Whetstone             |     32856.1 MWIPS |     32849.6 MWIPS
 Execl Throughput                       |      3662.1 lps   |      2718.0 lps
 File Copy 1024 bufsize 2000 maxblocks  |    432906.4 KBps  |    158011.8 KBps
 File Copy 256 bufsize 500 maxblocks    |    116023.0 KBps  |     37664.0 KBps
 File Copy 4096 bufsize 8000 maxblocks  |   1432769.8 KBps  |    441108.8 KBps
 Pipe Throughput                        |   6405029.6 lps   |   6021457.6 lps
 Pipe-based Context Switching           |    185872.7 lps   |    184255.3 lps
 Process Creation                       |      4025.7 lps   |      3706.6 lps
 Shell Scripts (1 concurrent)           |      6745.6 lpm   |      6436.1 lpm
 Shell Scripts (8 concurrent)           |       998.7 lpm   |       931.1 lpm
 System Call Overhead                   |   3913363.1 lps   |   3883287.8 lps
----------------------------------------+-------------------+------------------
 System Benchmarks Index Score          |      1835.1       |      1327.6

Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
---
 arch/arm64/include/asm/paravirt.h |   3 +
 arch/arm64/kernel/paravirt.c      | 117 ++++++++++++++++++++++++++++++
 arch/arm64/kernel/setup.c         |   2 +
 include/linux/cpuhotplug.h        |   1 +
 4 files changed, 123 insertions(+)

diff --git a/arch/arm64/include/asm/paravirt.h b/arch/arm64/include/asm/paravirt.h
index 7b1c81b544bb..ca3a2c7881f3 100644
--- a/arch/arm64/include/asm/paravirt.h
+++ b/arch/arm64/include/asm/paravirt.h
@@ -29,6 +29,8 @@ static inline u64 paravirt_steal_clock(int cpu)
 
 int __init pv_time_init(void);
 
+int __init pv_lock_init(void);
+
 __visible bool __native_vcpu_is_preempted(int cpu);
 
 static inline bool pv_vcpu_is_preempted(int cpu)
@@ -39,6 +41,7 @@ static inline bool pv_vcpu_is_preempted(int cpu)
 #else
 
 #define pv_time_init() do {} while (0)
+#define pv_lock_init() do {} while (0)
 
 #endif // CONFIG_PARAVIRT
 
diff --git a/arch/arm64/kernel/paravirt.c b/arch/arm64/kernel/paravirt.c
index d8f1ba8c22ce..bd2ad6a17a26 100644
--- a/arch/arm64/kernel/paravirt.c
+++ b/arch/arm64/kernel/paravirt.c
@@ -22,6 +22,7 @@
 #include <asm/paravirt.h>
 #include <asm/pvclock-abi.h>
 #include <asm/smp_plat.h>
+#include <asm/pvlock-abi.h>
 
 struct static_key paravirt_steal_enabled;
 struct static_key paravirt_steal_rq_enabled;
@@ -35,6 +36,10 @@ struct pv_time_stolen_time_region {
 	struct pvclock_vcpu_stolen_time *kaddr;
 };
 
+struct pv_lock_state_region {
+	struct pvlock_vcpu_state *kaddr;
+};
+
 static DEFINE_PER_CPU(struct pv_time_stolen_time_region, stolen_time_region);
 
 static bool steal_acc = true;
@@ -158,3 +163,115 @@ int __init pv_time_init(void)
 
 	return 0;
 }
+
+static DEFINE_PER_CPU(struct pv_lock_state_region, lock_state_region);
+
+static bool kvm_vcpu_is_preempted(int cpu)
+{
+	struct pv_lock_state_region *reg;
+	__le64 preempted_le;
+
+	reg = per_cpu_ptr(&lock_state_region, cpu);
+	if (!reg->kaddr) {
+		pr_warn_once("PV lock enabled but not configured for cpu %d\n",
+			     cpu);
+		return false;
+	}
+
+	preempted_le = le64_to_cpu(READ_ONCE(reg->kaddr->preempted));
+
+	return !!(preempted_le & 1);
+}
+
+static int pvlock_vcpu_state_dying_cpu(unsigned int cpu)
+{
+	struct pv_lock_state_region *reg;
+
+	reg = this_cpu_ptr(&lock_state_region);
+	if (!reg->kaddr)
+		return 0;
+
+	memunmap(reg->kaddr);
+	memset(reg, 0, sizeof(*reg));
+
+	return 0;
+}
+
+static int init_pvlock_vcpu_state(unsigned int cpu)
+{
+	struct pv_lock_state_region *reg;
+	struct arm_smccc_res res;
+
+	reg = this_cpu_ptr(&lock_state_region);
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_LOCK_PREEMPTED, &res);
+
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED) {
+		pr_warn("Failed to init PV lock data structure\n");
+		return -EINVAL;
+	}
+
+	reg->kaddr = memremap(res.a0,
+			      sizeof(struct pvlock_vcpu_state),
+			      MEMREMAP_WB);
+
+	if (!reg->kaddr) {
+		pr_warn("Failed to map PV lock data structure\n");
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static int kvm_arm_init_pvlock(void)
+{
+	int ret;
+
+	ret = cpuhp_setup_state(CPUHP_AP_ARM_KVM_PVLOCK_STARTING,
+				"hypervisor/arm/pvlock:starting",
+				init_pvlock_vcpu_state,
+				pvlock_vcpu_state_dying_cpu);
+	if (ret < 0) {
+		pr_warn("PV-lock init failed\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static bool has_kvm_pvlock(void)
+{
+	struct arm_smccc_res res;
+
+	/* To detect the presence of PV lock support we require SMCCC 1.1+ */
+	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
+		return false;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+			     ARM_SMCCC_HV_PV_LOCK_FEATURES, &res);
+
+	if (res.a0 != SMCCC_RET_SUCCESS)
+		return false;
+
+	return true;
+}
+
+int __init pv_lock_init(void)
+{
+	int ret;
+
+	if (is_hyp_mode_available())
+		return 0;
+
+	if (!has_kvm_pvlock())
+		return 0;
+
+	ret = kvm_arm_init_pvlock();
+	if (ret)
+		return ret;
+
+	pv_ops.lock.vcpu_is_preempted = kvm_vcpu_is_preempted;
+	pr_info("using PV-lock preempted\n");
+
+	return 0;
+}
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 56f664561754..aa3a8b9e710f 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -341,6 +341,8 @@ void __init setup_arch(char **cmdline_p)
 	smp_init_cpus();
 	smp_build_mpidr_hash();
 
+	pv_lock_init();
+
 	/* Init percpu seeds for random tags after cpus are set up. */
 	kasan_init_tags();
 
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index e51ee772b9f5..f72ff95ab63a 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -138,6 +138,7 @@ enum cpuhp_state {
 	CPUHP_AP_DUMMY_TIMER_STARTING,
 	CPUHP_AP_ARM_XEN_STARTING,
 	CPUHP_AP_ARM_KVMPV_STARTING,
+	CPUHP_AP_ARM_KVM_PVLOCK_STARTING,
 	CPUHP_AP_ARM_CORESIGHT_STARTING,
 	CPUHP_AP_ARM64_ISNDEP_STARTING,
 	CPUHP_AP_SMPCFD_DYING,
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
