Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5468A15711B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 09:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JN9YmCGUk4Cjb0gyCrYn+6qnHV0IP/dviLoCVpCr+AA=; b=qXnkVV0TDJ08L3JuB28xtgoYds
	eVt86nm6NZsPNmZ3cRyZs+MDJridVRWKiRjvfcGDOxBMEm0xzOkLddEz0rpSDOFaaltcX/gd+2Kdo
	4HvkIeoX67A1yi9cu4rn6ndXBuQEyZq8e7N/xjP/ljqvYVPqVtAG62VJcRdL2XicKcaQ1nOEleL1I
	q8nSkbZYBAU74EAY6+r8kh+6c9MSWtR6d2dkXFabYBx1Ex+87eIwYC2qUkInv83EPq7e9mA9H+kCl
	URldiqMqDFX8A0vAsfea/MDpPyXt8gKsTZso1yDxNGh4t4puI7XCZMGOk/dUEKRMFPMuobQhuuIld
	Qlud8pPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14lh-0007NX-DO; Mon, 10 Feb 2020 08:50:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14l8-00073E-Ps
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 08:49:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C3F731B;
 Mon, 10 Feb 2020 00:49:37 -0800 (PST)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 829143F68F;
 Mon, 10 Feb 2020 00:49:31 -0800 (PST)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH 2/9] ptp: Reorganize ptp_kvm modules to make it
 arch-independent.
Date: Mon, 10 Feb 2020 16:48:59 +0800
Message-Id: <20200210084906.24870-3-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210084906.24870-1-jianyong.wu@arm.com>
References: <20200210084906.24870-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_004938_943667_64EC87D0 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, ptp_kvm modules implementation is only for x86 which includs
large part of arch-specific code.  This patch move all of those code
into new arch related file in the same directory.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 drivers/ptp/Makefile                        |  1 +
 drivers/ptp/ptp_kvm.h                       | 11 +++
 drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} | 78 +++++-------------
 drivers/ptp/ptp_kvm_x86.c                   | 87 +++++++++++++++++++++
 4 files changed, 118 insertions(+), 59 deletions(-)
 create mode 100644 drivers/ptp/ptp_kvm.h
 rename drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} (63%)
 create mode 100644 drivers/ptp/ptp_kvm_x86.c

diff --git a/drivers/ptp/Makefile b/drivers/ptp/Makefile
index 8c830336f178..06837d089347 100644
--- a/drivers/ptp/Makefile
+++ b/drivers/ptp/Makefile
@@ -4,6 +4,7 @@
 #
 
 ptp-y					:= ptp_clock.o ptp_chardev.o ptp_sysfs.o
+ptp_kvm-y				:= ptp_kvm_$(ARCH).o ptp_kvm_common.o
 obj-$(CONFIG_PTP_1588_CLOCK)		+= ptp.o
 obj-$(CONFIG_PTP_1588_CLOCK_DTE)	+= ptp_dte.o
 obj-$(CONFIG_PTP_1588_CLOCK_INES)	+= ptp_ines.o
diff --git a/drivers/ptp/ptp_kvm.h b/drivers/ptp/ptp_kvm.h
new file mode 100644
index 000000000000..4bf1802bbeb8
--- /dev/null
+++ b/drivers/ptp/ptp_kvm.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Virtual PTP 1588 clock for use with KVM guests
+ *
+ * Copyright (C) 2017 Red Hat Inc.
+ */
+
+int kvm_arch_ptp_init(void);
+int kvm_arch_ptp_get_clock(struct timespec64 *ts);
+int kvm_arch_ptp_get_crosststamp(unsigned long *cycle,
+		struct timespec64 *tspec, void *cs);
diff --git a/drivers/ptp/ptp_kvm.c b/drivers/ptp/ptp_kvm_common.c
similarity index 63%
rename from drivers/ptp/ptp_kvm.c
rename to drivers/ptp/ptp_kvm_common.c
index fc7d0b77e118..60442f70d3fc 100644
--- a/drivers/ptp/ptp_kvm.c
+++ b/drivers/ptp/ptp_kvm_common.c
@@ -8,15 +8,16 @@
 #include <linux/err.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/slab.h>
 #include <linux/module.h>
 #include <uapi/linux/kvm_para.h>
 #include <asm/kvm_para.h>
-#include <asm/pvclock.h>
-#include <asm/kvmclock.h>
 #include <uapi/asm/kvm_para.h>
 
 #include <linux/ptp_clock_kernel.h>
 
+#include "ptp_kvm.h"
+
 struct kvm_ptp_clock {
 	struct ptp_clock *ptp_clock;
 	struct ptp_clock_info caps;
@@ -24,56 +25,29 @@ struct kvm_ptp_clock {
 
 DEFINE_SPINLOCK(kvm_ptp_lock);
 
-static struct pvclock_vsyscall_time_info *hv_clock;
-
-static struct kvm_clock_pairing clock_pair;
-static phys_addr_t clock_pair_gpa;
-
 static int ptp_kvm_get_time_fn(ktime_t *device_time,
 			       struct system_counterval_t *system_counter,
 			       void *ctx)
 {
-	unsigned long ret;
+	unsigned long ret, cycle;
 	struct timespec64 tspec;
-	unsigned version;
-	int cpu;
-	struct pvclock_vcpu_time_info *src;
+	struct clocksource *cs;
 
 	spin_lock(&kvm_ptp_lock);
 
 	preempt_disable_notrace();
-	cpu = smp_processor_id();
-	src = &hv_clock[cpu].pvti;
-
-	do {
-		/*
-		 * We are using a TSC value read in the hosts
-		 * kvm_hc_clock_pairing handling.
-		 * So any changes to tsc_to_system_mul
-		 * and tsc_shift or any other pvclock
-		 * data invalidate that measurement.
-		 */
-		version = pvclock_read_begin(src);
-
-		ret = kvm_hypercall2(KVM_HC_CLOCK_PAIRING,
-				     clock_pair_gpa,
-				     KVM_CLOCK_PAIRING_WALLCLOCK);
-		if (ret != 0) {
-			pr_err_ratelimited("clock pairing hypercall ret %lu\n", ret);
-			spin_unlock(&kvm_ptp_lock);
-			preempt_enable_notrace();
-			return -EOPNOTSUPP;
-		}
-
-		tspec.tv_sec = clock_pair.sec;
-		tspec.tv_nsec = clock_pair.nsec;
-		ret = __pvclock_read_cycles(src, clock_pair.tsc);
-	} while (pvclock_read_retry(src, version));
+	ret = kvm_arch_ptp_get_crosststamp(&cycle, &tspec, &cs);
+	if (ret != 0) {
+		pr_err_ratelimited("clock pairing hypercall ret %lu\n", ret);
+		spin_unlock(&kvm_ptp_lock);
+		preempt_enable_notrace();
+		return -EOPNOTSUPP;
+	}
 
 	preempt_enable_notrace();
 
-	system_counter->cycles = ret;
-	system_counter->cs = &kvm_clock;
+	system_counter->cycles = cycle;
+	system_counter->cs = cs;
 
 	*device_time = timespec64_to_ktime(tspec);
 
@@ -116,17 +90,13 @@ static int ptp_kvm_gettime(struct ptp_clock_info *ptp, struct timespec64 *ts)
 
 	spin_lock(&kvm_ptp_lock);
 
-	ret = kvm_hypercall2(KVM_HC_CLOCK_PAIRING,
-			     clock_pair_gpa,
-			     KVM_CLOCK_PAIRING_WALLCLOCK);
+	ret = kvm_arch_ptp_get_clock(&tspec);
 	if (ret != 0) {
 		pr_err_ratelimited("clock offset hypercall ret %lu\n", ret);
 		spin_unlock(&kvm_ptp_lock);
 		return -EOPNOTSUPP;
 	}
 
-	tspec.tv_sec = clock_pair.sec;
-	tspec.tv_nsec = clock_pair.nsec;
 	spin_unlock(&kvm_ptp_lock);
 
 	memcpy(ts, &tspec, sizeof(struct timespec64));
@@ -166,21 +136,11 @@ static void __exit ptp_kvm_exit(void)
 
 static int __init ptp_kvm_init(void)
 {
-	long ret;
-
-	if (!kvm_para_available())
-		return -ENODEV;
+	int ret;
 
-	clock_pair_gpa = slow_virt_to_phys(&clock_pair);
-	hv_clock = pvclock_get_pvti_cpu0_va();
-
-	if (!hv_clock)
-		return -ENODEV;
-
-	ret = kvm_hypercall2(KVM_HC_CLOCK_PAIRING, clock_pair_gpa,
-			KVM_CLOCK_PAIRING_WALLCLOCK);
-	if (ret == -KVM_ENOSYS || ret == -KVM_EOPNOTSUPP)
-		return -ENODEV;
+	ret = kvm_arch_ptp_init();
+	if (ret)
+		return -EOPNOTSUPP;
 
 	kvm_ptp_clock.caps = ptp_kvm_caps;
 
diff --git a/drivers/ptp/ptp_kvm_x86.c b/drivers/ptp/ptp_kvm_x86.c
new file mode 100644
index 000000000000..6c891d7299c6
--- /dev/null
+++ b/drivers/ptp/ptp_kvm_x86.c
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Virtual PTP 1588 clock for use with KVM guests
+ *
+ * Copyright (C) 2017 Red Hat Inc.
+ */
+
+#include <asm/pvclock.h>
+#include <asm/kvmclock.h>
+#include <linux/module.h>
+#include <uapi/asm/kvm_para.h>
+#include <uapi/linux/kvm_para.h>
+#include <linux/ptp_clock_kernel.h>
+
+phys_addr_t clock_pair_gpa;
+struct kvm_clock_pairing clock_pair;
+struct pvclock_vsyscall_time_info *hv_clock;
+
+int kvm_arch_ptp_init(void)
+{
+	int ret;
+
+	if (!kvm_para_available())
+		return -ENODEV;
+
+	clock_pair_gpa = slow_virt_to_phys(&clock_pair);
+	hv_clock = pvclock_get_pvti_cpu0_va();
+	if (!hv_clock)
+		return -ENODEV;
+
+	ret = kvm_hypercall2(KVM_HC_CLOCK_PAIRING, clock_pair_gpa,
+			     KVM_CLOCK_PAIRING_WALLCLOCK);
+	if (ret == -KVM_ENOSYS || ret == -KVM_EOPNOTSUPP)
+		return -ENODEV;
+
+	return 0;
+}
+
+int kvm_arch_ptp_get_clock(struct timespec64 *ts)
+{
+	long ret;
+
+	ret = kvm_hypercall2(KVM_HC_CLOCK_PAIRING,
+			     clock_pair_gpa,
+			     KVM_CLOCK_PAIRING_WALLCLOCK);
+	if (ret != 0)
+		return -EOPNOTSUPP;
+
+	ts->tv_sec = clock_pair.sec;
+	ts->tv_nsec = clock_pair.nsec;
+
+	return 0;
+}
+
+int kvm_arch_ptp_get_crosststamp(unsigned long *cycle, struct timespec64 *tspec,
+			      struct clocksource **cs)
+{
+	unsigned long ret;
+	unsigned int version;
+	int cpu;
+	struct pvclock_vcpu_time_info *src;
+
+	cpu = smp_processor_id();
+	src = &hv_clock[cpu].pvti;
+
+	do {
+		/*
+		 * We are using a TSC value read in the hosts
+		 * kvm_hc_clock_pairing handling.
+		 * So any changes to tsc_to_system_mul
+		 * and tsc_shift or any other pvclock
+		 * data invalidate that measurement.
+		 */
+		version = pvclock_read_begin(src);
+
+		ret = kvm_hypercall2(KVM_HC_CLOCK_PAIRING,
+				     clock_pair_gpa,
+				     KVM_CLOCK_PAIRING_WALLCLOCK);
+		tspec->tv_sec = clock_pair.sec;
+		tspec->tv_nsec = clock_pair.nsec;
+		*cycle = __pvclock_read_cycles(src, clock_pair.tsc);
+	} while (pvclock_read_retry(src, version));
+
+	*cs = &kvm_clock;
+
+	return 0;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
