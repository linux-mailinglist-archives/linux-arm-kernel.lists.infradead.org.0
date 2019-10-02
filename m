Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE72C8C1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjON6UXLd4+MhBBoeySjGusOihbKVA+7pu2KwEDgAZ4=; b=FgiEwPC4DlstEu
	X0+TRu4pb+9hMfS+4nXZ9nprg1APUU8wQ8kyTqbs7/zcUa87cXgRssD2WwQKG7JxgaVEzkTISAkze
	ozAp7YjuBDgxgBye8XyyjaGWBL6TA669weSVCxkwkIn5bN/RTXAZZrZf5UfjFNj+Nq9g/XCaFGS+V
	rSr++w8Oc9F55zVsSN4M2Ixh/kKJ4X7QrpsDXixssIe4lbeTPW/VlqFy9m6VJbS+ttDX3NrlATHI5
	WVNAGj3Se3c456hsZ19WZnVA6Awphg0t5403RsCMPDdP+C7oFi080DJqz15n0YvegivmZMOaKXab5
	m+jThSDS1zunJNgzztqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFg0b-0004qW-0L; Wed, 02 Oct 2019 14:53:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfyF-0002Yb-68
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:51:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8327B1597;
 Wed,  2 Oct 2019 07:51:14 -0700 (PDT)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8166A3F706;
 Wed,  2 Oct 2019 07:51:12 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v5 10/10] arm64: Retrieve stolen time as paravirtualized guest
Date: Wed,  2 Oct 2019 15:50:37 +0100
Message-Id: <20191002145037.51630-11-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191002145037.51630-1-steven.price@arm.com>
References: <20191002145037.51630-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_075115_473545_01013E59 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
---
 .../admin-guide/kernel-parameters.txt         |   6 +-
 arch/arm64/include/asm/paravirt.h             |   9 +-
 arch/arm64/kernel/paravirt.c                  | 148 ++++++++++++++++++
 arch/arm64/kernel/time.c                      |   3 +
 include/linux/cpuhotplug.h                    |   1 +
 5 files changed, 163 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index c7ac2f3ac99f..346b1c7a4afb 100644
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
index 799d9dd6f7cc..125c26c42902 100644
--- a/arch/arm64/include/asm/paravirt.h
+++ b/arch/arm64/include/asm/paravirt.h
@@ -21,6 +21,13 @@ static inline u64 paravirt_steal_clock(int cpu)
 {
 	return pv_ops.time.steal_clock(cpu);
 }
-#endif
+
+int __init kvm_guest_init(void);
+
+#else
+
+#define kvm_guest_init()
+
+#endif // CONFIG_PARAVIRT
 
 #endif
diff --git a/arch/arm64/kernel/paravirt.c b/arch/arm64/kernel/paravirt.c
index 4cfed91fe256..5bf3be7ccf7e 100644
--- a/arch/arm64/kernel/paravirt.c
+++ b/arch/arm64/kernel/paravirt.c
@@ -6,13 +6,161 @@
  * Author: Stefano Stabellini <stefano.stabellini@eu.citrix.com>
  */
 
+#define pr_fmt(fmt) "kvmarm-pv: " fmt
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
+struct kvmarm_stolen_time_region {
+	struct pvclock_vcpu_stolen_time *kaddr;
+};
+
+static DEFINE_PER_CPU(struct kvmarm_stolen_time_region, stolen_time_region);
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
+static u64 kvm_steal_clock(int cpu)
+{
+	struct kvmarm_stolen_time_region *reg;
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
+static int disable_stolen_time_current_cpu(void)
+{
+	struct kvmarm_stolen_time_region *reg;
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
+static int stolen_time_dying_cpu(unsigned int cpu)
+{
+	return disable_stolen_time_current_cpu();
+}
+
+static int init_stolen_time_cpu(unsigned int cpu)
+{
+	struct kvmarm_stolen_time_region *reg;
+	struct arm_smccc_res res;
+
+	reg = this_cpu_ptr(&stolen_time_region);
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_TIME_ST, &res);
+
+	if ((long)res.a0 < 0)
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
+		pr_warn("Unexpected revision or attributes in stolen time data\n");
+		return -ENXIO;
+	}
+
+	return 0;
+}
+
+static int kvm_arm_init_stolen_time(void)
+{
+	int ret;
+
+	ret = cpuhp_setup_state(CPUHP_AP_ARM_KVMPV_STARTING,
+				"hypervisor/kvmarm/pv:starting",
+				init_stolen_time_cpu, stolen_time_dying_cpu);
+	if (ret < 0)
+		return ret;
+	return 0;
+}
+
+static bool has_kvm_steal_clock(void)
+{
+	struct arm_smccc_res res;
+
+	/* To detect the presence of PV time support we require SMCCC 1.1+ */
+	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
+		return false;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+			     ARM_SMCCC_HV_PV_FEATURES, &res);
+
+	if (res.a0 != SMCCC_RET_SUCCESS)
+		return false;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_HV_PV_FEATURES,
+			     ARM_SMCCC_HV_PV_TIME_ST, &res);
+
+	if (res.a0 != SMCCC_RET_SUCCESS)
+		return false;
+
+	return true;
+}
+
+int __init kvm_guest_init(void)
+{
+	int ret;
+
+	if (!has_kvm_steal_clock())
+		return 0;
+
+	ret = kvm_arm_init_stolen_time();
+	if (ret)
+		return ret;
+
+	pv_ops.time.steal_clock = kvm_steal_clock;
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
index 0b2946414dc9..a52aea14c6ec 100644
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
+	kvm_guest_init();
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
