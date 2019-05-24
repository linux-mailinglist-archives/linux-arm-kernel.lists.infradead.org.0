Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C1729A53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdZ6xfgfqTSrJtIcIgx8QpZlDeeFo6J0fFA0fvl2W18=; b=OxqU3v+daGabXC
	NB/eEWPIoSk9iJoAr7RGbhVG5KketcBEsXh1S+xMNuvq//6RJr0lnZIjFhU8EtVRnKi4A6SWFStdS
	LGhI02G4/tYTy/rw+GAUmgQRsomUGFUnKnp893kRtK8xUPvGLIUOmgr+6d5paVmhx0KDGdVU4kOAW
	gZno1Hp31aXL7yUvOzK+VwT69jCNA8Tfyq66O6IHhFPmDVqsCza4Cx2c6n45mPQJWfLxrAWUDR4UQ
	QpO2MLIPbv13BcCXJwU2kexnMV+QjB1V10feRF/O3LlZYF9IMnMs81Q4UmA+ZEci0SsgyuOlrpyb/
	H3csThJkBu28pbAwgrAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUBUj-0006Xx-CX; Fri, 24 May 2019 14:48:29 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUBUJ-0006EK-P8
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:48:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A32D1682;
 Fri, 24 May 2019 07:48:03 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B133B3F575;
 Fri, 24 May 2019 07:48:01 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 2/3] KVM: arm64: Move pmu hyp code under hyp's Makefile to
 avoid instrumentation
Date: Fri, 24 May 2019 15:47:44 +0100
Message-Id: <20190524144745.227242-3-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524144745.227242-1-marc.zyngier@arm.com>
References: <20190524144745.227242-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_074804_168799_DD2F48F5 
X-CRM114-Status: GOOD (  14.27  )
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

KVM's pmu.c contains the __hyp_text needed to switch the pmu registers
between host and guest. Because this isn't covered by the 'hyp' Makefile,
it can be built with kasan and friends when these are enabled in Kconfig.

When starting a guest, this results in:
| Kernel panic - not syncing: HYP panic:
| PS:a00003c9 PC:000083000028ada0 ESR:86000007
| FAR:000083000028ada0 HPFAR:0000000029df5300 PAR:0000000000000000
| VCPU:000000004e10b7d6
| CPU: 0 PID: 3088 Comm: qemu-system-aar Not tainted 5.2.0-rc1 #11026
| Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Plat
| Call trace:
|  dump_backtrace+0x0/0x200
|  show_stack+0x20/0x30
|  dump_stack+0xec/0x158
|  panic+0x1ec/0x420
|  panic+0x0/0x420
| SMP: stopping secondary CPUs
| Kernel Offset: disabled
| CPU features: 0x002,25006082
| Memory Limit: none
| ---[ end Kernel panic - not syncing: HYP panic:

This is caused by functions in pmu.c calling the instrumented
code, which isn't mapped to hyp. From objdump -r:
| RELOCATION RECORDS FOR [.hyp.text]:
| OFFSET           TYPE              VALUE
| 0000000000000010 R_AARCH64_CALL26  __sanitizer_cov_trace_pc
| 0000000000000018 R_AARCH64_CALL26  __asan_load4_noabort
| 0000000000000024 R_AARCH64_CALL26  __asan_load4_noabort

Move the affected code to a new file under 'hyp's Makefile.

Fixes: 3d91befbb3a0 ("arm64: KVM: Enable !VHE support for :G/:H perf event modifiers")
Cc: Andrew Murray <Andrew.Murray@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_host.h |  3 ---
 arch/arm64/kvm/hyp/switch.c       | 39 +++++++++++++++++++++++++++++++
 arch/arm64/kvm/pmu.c              | 38 ------------------------------
 3 files changed, 39 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 2a8d3f8ca22c..4bcd9c1291d5 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -592,9 +592,6 @@ static inline int kvm_arch_vcpu_run_pid_change(struct kvm_vcpu *vcpu)
 void kvm_set_pmu_events(u32 set, struct perf_event_attr *attr);
 void kvm_clr_pmu_events(u32 clr);
 
-void __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt);
-bool __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt);
-
 void kvm_vcpu_pmu_restore_guest(struct kvm_vcpu *vcpu);
 void kvm_vcpu_pmu_restore_host(struct kvm_vcpu *vcpu);
 #else
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 22b4c335e0b2..8799e0c267d4 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -16,6 +16,7 @@
  */
 
 #include <linux/arm-smccc.h>
+#include <linux/kvm_host.h>
 #include <linux/types.h>
 #include <linux/jump_label.h>
 #include <uapi/linux/psci.h>
@@ -505,6 +506,44 @@ static void __hyp_text __set_host_arch_workaround_state(struct kvm_vcpu *vcpu)
 #endif
 }
 
+/**
+ * Disable host events, enable guest events
+ */
+static bool __hyp_text __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt)
+{
+	struct kvm_host_data *host;
+	struct kvm_pmu_events *pmu;
+
+	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
+	pmu = &host->pmu_events;
+
+	if (pmu->events_host)
+		write_sysreg(pmu->events_host, pmcntenclr_el0);
+
+	if (pmu->events_guest)
+		write_sysreg(pmu->events_guest, pmcntenset_el0);
+
+	return (pmu->events_host || pmu->events_guest);
+}
+
+/**
+ * Disable guest events, enable host events
+ */
+static void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
+{
+	struct kvm_host_data *host;
+	struct kvm_pmu_events *pmu;
+
+	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
+	pmu = &host->pmu_events;
+
+	if (pmu->events_guest)
+		write_sysreg(pmu->events_guest, pmcntenclr_el0);
+
+	if (pmu->events_host)
+		write_sysreg(pmu->events_host, pmcntenset_el0);
+}
+
 /* Switch to the guest for VHE systems running in EL2 */
 int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 {
diff --git a/arch/arm64/kvm/pmu.c b/arch/arm64/kvm/pmu.c
index 3da94a5bb6b7..e71d00bb5271 100644
--- a/arch/arm64/kvm/pmu.c
+++ b/arch/arm64/kvm/pmu.c
@@ -53,44 +53,6 @@ void kvm_clr_pmu_events(u32 clr)
 	ctx->pmu_events.events_guest &= ~clr;
 }
 
-/**
- * Disable host events, enable guest events
- */
-bool __hyp_text __pmu_switch_to_guest(struct kvm_cpu_context *host_ctxt)
-{
-	struct kvm_host_data *host;
-	struct kvm_pmu_events *pmu;
-
-	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
-	pmu = &host->pmu_events;
-
-	if (pmu->events_host)
-		write_sysreg(pmu->events_host, pmcntenclr_el0);
-
-	if (pmu->events_guest)
-		write_sysreg(pmu->events_guest, pmcntenset_el0);
-
-	return (pmu->events_host || pmu->events_guest);
-}
-
-/**
- * Disable guest events, enable host events
- */
-void __hyp_text __pmu_switch_to_host(struct kvm_cpu_context *host_ctxt)
-{
-	struct kvm_host_data *host;
-	struct kvm_pmu_events *pmu;
-
-	host = container_of(host_ctxt, struct kvm_host_data, host_ctxt);
-	pmu = &host->pmu_events;
-
-	if (pmu->events_guest)
-		write_sysreg(pmu->events_guest, pmcntenclr_el0);
-
-	if (pmu->events_host)
-		write_sysreg(pmu->events_host, pmcntenset_el0);
-}
-
 #define PMEVTYPER_READ_CASE(idx)				\
 	case idx:						\
 		return read_sysreg(pmevtyper##idx##_el0)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
