Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FDF10417C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yi8yFFK58+r+d8XWy133ZDVm9wpEbS1HcaXUsNb31xY=; b=A3N/9zyy+n4VE8
	HUG6FscrSw2Qxm2vYxdrgM2SZ+zm1MkEr5GeIUeHcpcJfLyxkHFB1UC9sQ+x0W3TkmPMQlMd8bMpf
	j0F3jGwo0IiqvrVd4tiEnWntj75Ip/QLSIOsUHW9g1nMGX2ppEtdF55qiBtaHFuCUNc5m1mybsSOR
	y4Tc2MYGgPtXnKa6AZwaLdfXTJn7VEGGtWDdanRX8jbp8B9I3F/i543wFK65anq5fq1vO/DbJBCt8
	2HYO9pYUQ8oWXUnJplZZ5xCLn0pKx1IGDeG6WENw9XdzvMcbIrtQ0sgX/RrEVaYi7L2w9giP7l1x9
	0DBg3nadlwQQKf+UgcYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTEJ-0002VA-UM; Wed, 20 Nov 2019 16:53:23 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTDF-0001ai-H9
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:52:19 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXT4K-0007RI-1P; Wed, 20 Nov 2019 17:43:04 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 12/22] arm64: Retrieve stolen time as paravirtualized guest
Date: Wed, 20 Nov 2019 16:42:26 +0000
Message-Id: <20191120164236.29359-13-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20191120_085217_728682_B1F38B80 
X-CRM114-Status: GOOD (  17.24  )
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

From: Steven Price <steven.price@arm.com>

Enable paravirtualization features when running under a hypervisor
supporting the PV_TIME_ST hypercall.

For each (v)CPU, we ask the hypervisor for the location of a shared
page which the hypervisor will use to report stolen time to us. We set
pv_time_ops to the stolen time function which simply reads the stolen
value from the shared page for a VCPU. We guarantee single-copy
atomicity using READ_ONCE which means we can also read the stolen
time for another VCPU than the currently running one while it is
potentially being updated by the hypervisor.

Signed-off-by: Steven Price <steven.price@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 .../admin-guide/kernel-parameters.txt         |   6 +-
 arch/arm64/include/asm/paravirt.h             |   9 +-
 arch/arm64/kernel/paravirt.c                  | 140 ++++++++++++++++++
 arch/arm64/kernel/time.c                      |   3 +
 include/linux/cpuhotplug.h                    |   1 +
 5 files changed, 155 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index a84a83f8881e..19f465530e86 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3083,9 +3083,9 @@
 			[X86,PV_OPS] Disable paravirtualized VMware scheduler
 			clock and use the default one.
 
-	no-steal-acc	[X86,KVM] Disable paravirtualized steal time accounting.
-			steal time is computed, but won't influence scheduler
-			behaviour
+	no-steal-acc	[X86,KVM,ARM64] Disable paravirtualized steal time
+			accounting. steal time is computed, but won't
+			influence scheduler behaviour
 
 	nolapic		[X86-32,APIC] Do not enable or use the local APIC.
 
diff --git a/arch/arm64/include/asm/paravirt.h b/arch/arm64/include/asm/paravirt.h
index 799d9dd6f7cc..cf3a0fd7c1a7 100644
--- a/arch/arm64/include/asm/paravirt.h
+++ b/arch/arm64/include/asm/paravirt.h
@@ -21,6 +21,13 @@ static inline u64 paravirt_steal_clock(int cpu)
 {
 	return pv_ops.time.steal_clock(cpu);
 }
-#endif
+
+int __init pv_time_init(void);
+
+#else
+
+#define pv_time_init() do {} while (0)
+
+#endif // CONFIG_PARAVIRT
 
 #endif
diff --git a/arch/arm64/kernel/paravirt.c b/arch/arm64/kernel/paravirt.c
index 4cfed91fe256..1ef702b0be2d 100644
--- a/arch/arm64/kernel/paravirt.c
+++ b/arch/arm64/kernel/paravirt.c
@@ -6,13 +6,153 @@
  * Author: Stefano Stabellini <stefano.stabellini@eu.citrix.com>
  */
 
+#define pr_fmt(fmt) "arm-pv: " fmt
+
+#include <linux/arm-smccc.h>
+#include <linux/cpuhotplug.h>
 #include <linux/export.h>
+#include <linux/io.h>
 #include <linux/jump_label.h>
+#include <linux/printk.h>
+#include <linux/psci.h>
+#include <linux/reboot.h>
+#include <linux/slab.h>
 #include <linux/types.h>
+
 #include <asm/paravirt.h>
+#include <asm/pvclock-abi.h>
+#include <asm/smp_plat.h>
 
 struct static_key paravirt_steal_enabled;
 struct static_key paravirt_steal_rq_enabled;
 
 struct paravirt_patch_template pv_ops;
 EXPORT_SYMBOL_GPL(pv_ops);
+
+struct pv_time_stolen_time_region {
+	struct pvclock_vcpu_stolen_time *kaddr;
+};
+
+static DEFINE_PER_CPU(struct pv_time_stolen_time_region, stolen_time_region);
+
+static bool steal_acc = true;
+static int __init parse_no_stealacc(char *arg)
+{
+	steal_acc = false;
+	return 0;
+}
+
+early_param("no-steal-acc", parse_no_stealacc);
+
+/* return stolen time in ns by asking the hypervisor */
+static u64 pv_steal_clock(int cpu)
+{
+	struct pv_time_stolen_time_region *reg;
+
+	reg = per_cpu_ptr(&stolen_time_region, cpu);
+	if (!reg->kaddr) {
+		pr_warn_once("stolen time enabled but not configured for cpu %d\n",
+			     cpu);
+		return 0;
+	}
+
+	return le64_to_cpu(READ_ONCE(reg->kaddr->stolen_time));
+}
+
+static int stolen_time_dying_cpu(unsigned int cpu)
+{
+	struct pv_time_stolen_time_region *reg;
+
+	reg = this_cpu_ptr(&stolen_time_region);
+	if (!reg->kaddr)
+		return 0;
+
+	memunmap(reg->kaddr);
+	memset(reg, 0, sizeof(*reg));
+
+	return 0;
+}
+
+static int init_stolen_time_cpu(unsigned int cpu)
+{
+	struct pv_time_stolen_time_region *reg;
+	struct arm_smccc_res res;
+
+	reg = this_cpu_ptr(&stolen_time_region);
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_TIME_ST, &res);
+
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED)
+		return -EINVAL;
+
+	reg->kaddr = memremap(res.a0,
+			      sizeof(struct pvclock_vcpu_stolen_time),
+			      MEMREMAP_WB);
+
+	if (!reg->kaddr) {
+		pr_warn("Failed to map stolen time data structure\n");
+		return -ENOMEM;
+	}
+
+	if (le32_to_cpu(reg->kaddr->revision) != 0 ||
+	    le32_to_cpu(reg->kaddr->attributes) != 0) {
+		pr_warn_once("Unexpected revision or attributes in stolen time data\n");
+		return -ENXIO;
+	}
+
+	return 0;
+}
+
+static int pv_time_init_stolen_time(void)
+{
+	int ret;
+
+	ret = cpuhp_setup_state(CPUHP_AP_ARM_KVMPV_STARTING,
+				"hypervisor/arm/pvtime:starting",
+				init_stolen_time_cpu, stolen_time_dying_cpu);
+	if (ret < 0)
+		return ret;
+	return 0;
+}
+
+static bool has_pv_steal_clock(void)
+{
+	struct arm_smccc_res res;
+
+	/* To detect the presence of PV time support we require SMCCC 1.1+ */
+	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
+		return false;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+			     ARM_SMCCC_HV_PV_TIME_FEATURES, &res);
+
+	if (res.a0 != SMCCC_RET_SUCCESS)
+		return false;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_TIME_FEATURES,
+			     ARM_SMCCC_HV_PV_TIME_ST, &res);
+
+	return (res.a0 == SMCCC_RET_SUCCESS);
+}
+
+int __init pv_time_init(void)
+{
+	int ret;
+
+	if (!has_pv_steal_clock())
+		return 0;
+
+	ret = pv_time_init_stolen_time();
+	if (ret)
+		return ret;
+
+	pv_ops.time.steal_clock = pv_steal_clock;
+
+	static_key_slow_inc(&paravirt_steal_enabled);
+	if (steal_acc)
+		static_key_slow_inc(&paravirt_steal_rq_enabled);
+
+	pr_info("using stolen time PV\n");
+
+	return 0;
+}
diff --git a/arch/arm64/kernel/time.c b/arch/arm64/kernel/time.c
index 0b2946414dc9..73f06d4b3aae 100644
--- a/arch/arm64/kernel/time.c
+++ b/arch/arm64/kernel/time.c
@@ -30,6 +30,7 @@
 
 #include <asm/thread_info.h>
 #include <asm/stacktrace.h>
+#include <asm/paravirt.h>
 
 unsigned long profile_pc(struct pt_regs *regs)
 {
@@ -65,4 +66,6 @@ void __init time_init(void)
 
 	/* Calibrate the delay loop directly */
 	lpj_fine = arch_timer_rate / HZ;
+
+	pv_time_init();
 }
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index 068793a619ca..89d75edb5750 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -136,6 +136,7 @@ enum cpuhp_state {
 	/* Must be the last timer callback */
 	CPUHP_AP_DUMMY_TIMER_STARTING,
 	CPUHP_AP_ARM_XEN_STARTING,
+	CPUHP_AP_ARM_KVMPV_STARTING,
 	CPUHP_AP_ARM_CORESIGHT_STARTING,
 	CPUHP_AP_ARM64_ISNDEP_STARTING,
 	CPUHP_AP_SMPCFD_DYING,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
