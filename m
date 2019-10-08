Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465CACFE69
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2l5rozb5IFMeWdhHmgIz+w+DfOp6HYgirlewWpcAi64=; b=uAW5vnAMqJeucL
	KrGfXnW1xalB4ghksrNiiyQfiyc09RgN284QclHATwhseJ6ddLvAGWJKBdhblyHNNhQbtVm9R4v/A
	zXKsj+iMN2qt61S1yuBERoKmO7gddZ4yccR+j2co471Zmtf1j2FHn0Xb5YPoidvIWG77bqruMvsAn
	SXBnw5BLc1jV4SQ6KiHrEVmrzEWbyeAR6h2w6NPWvt51rDkcLi92+TxuM11iJnOKeP7QusyIfvQoW
	Botr8NT3OydilCpjgT0ye5fXwEu83FWTotCMVJDC/YkV2nbNEeEu19qViutHFRbQcO4p1MxHRhfut
	5DsDVZf0qFgrIXi3wG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrwA-00029p-Mc; Tue, 08 Oct 2019 16:02:10 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrvw-00027c-VA
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:01:58 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iHrvu-0001rs-MD; Tue, 08 Oct 2019 18:01:54 +0200
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 4/5] arm64: perf: Add reload-on-overflow capability
Date: Tue,  8 Oct 2019 17:01:27 +0100
Message-Id: <20191008160128.8872-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008160128.8872-1-maz@kernel.org>
References: <20191008160128.8872-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, will@kernel.org,
 mark.rutland@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, andrew.murray@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_090157_165560_E48B221F 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As KVM uses perf as a way to emulate an ARMv8 PMU, it needs to
be able to change the sample period as part of the overflow
handling (once an overflow has taken place, the following
overflow point is the overflow of the virtual counter).

Deleting and recreating the in-kernel event is difficult, as
we're in interrupt context. Instead, we can teach the PMU driver
a new trick, which is to stop the event before the overflow handling,
and reprogram it once it has been handled. This would give KVM
the opportunity to adjust the next sample period. This feature
is gated on a new flag that can get set by KVM in a subsequent
patch.

Whilst we're at it, move the CHAINED flag from the KVM emulation
to the perf_event.h file and adjust the PMU code accordingly.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/perf_event.h | 4 ++++
 arch/arm64/kernel/perf_event.c      | 8 +++++++-
 virt/kvm/arm/pmu.c                  | 4 +---
 3 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
index 2bdbc79bbd01..8b6b38f2db8e 100644
--- a/arch/arm64/include/asm/perf_event.h
+++ b/arch/arm64/include/asm/perf_event.h
@@ -223,4 +223,8 @@ extern unsigned long perf_misc_flags(struct pt_regs *regs);
 	(regs)->pstate = PSR_MODE_EL1h;	\
 }
 
+/* Flags used by KVM, among others */
+#define PERF_ATTR_CFG1_CHAINED_EVENT	(1U << 0)
+#define PERF_ATTR_CFG1_RELOAD_EVENT	(1U << 1)
+
 #endif
diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index a0b4f1bca491..98907c9e5508 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -322,7 +322,7 @@ PMU_FORMAT_ATTR(long, "config1:0");
 
 static inline bool armv8pmu_event_is_64bit(struct perf_event *event)
 {
-	return event->attr.config1 & 0x1;
+	return event->attr.config1 & PERF_ATTR_CFG1_CHAINED_EVENT;
 }
 
 static struct attribute *armv8_pmuv3_format_attrs[] = {
@@ -736,8 +736,14 @@ static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
 		if (!armpmu_event_set_period(event))
 			continue;
 
+		if (event->attr.config1 & PERF_ATTR_CFG1_RELOAD_EVENT)
+			cpu_pmu->pmu.stop(event, PERF_EF_RELOAD);
+
 		if (perf_event_overflow(event, &data, regs))
 			cpu_pmu->disable(event);
+
+		if (event->attr.config1 & PERF_ATTR_CFG1_RELOAD_EVENT)
+			cpu_pmu->pmu.start(event, PERF_EF_RELOAD);
 	}
 	armv8pmu_start(cpu_pmu);
 
diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index f291d4ac3519..25a483a04beb 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -15,8 +15,6 @@
 
 static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx);
 
-#define PERF_ATTR_CFG1_KVM_PMU_CHAINED 0x1
-
 /**
  * kvm_pmu_idx_is_64bit - determine if select_idx is a 64bit counter
  * @vcpu: The vcpu pointer
@@ -570,7 +568,7 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
 		 */
 		attr.sample_period = (-counter) & GENMASK(63, 0);
 		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
-			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
+			attr.config1 |= PERF_ATTR_CFG1_CHAINED_EVENT;
 
 		event = perf_event_create_kernel_counter(&attr, -1, current,
 							 kvm_pmu_perf_overflow,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
