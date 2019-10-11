Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECDFD3FC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40zcnFFbir1v3moGXGN0q/y6jeXJ9VzZUqCNTPOhEDg=; b=C3xRSlopWbgt/Q
	K/t1D9+oFH86NBn3Zi2NjoKTCxGRC6kvYRSYTLgSgSEjcvQVZECpHaVNnvkmRU4oYHLYt1xhSoqtX
	r2S+ZvgqAH9fiw0HXotKa/+mpMsrCGJDvjQIp451wGY3KYZxP+/4dEuI0gHiUaYcObc8hQEmv30pm
	E+13giMwUnLt+kWhShYK1c7pxYhxfV14Z3hDfU0Qei6jSBGkk7iboh1kWGEPLatOCkZUHIIPi0J9o
	+6SuHr4uflShuq0X/zEtnKvszHmqkZAl2x2ACfz8ku1lUyFd2UtFG1jVMsM6oMFKS/qiyd9gb4vOf
	Oirzw5ANI0hwvbryt8DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuEZ-0007ib-Ml; Fri, 11 Oct 2019 12:41:27 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuDV-0006fo-Fz
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:40:24 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iIuDO-00062U-Tv; Fri, 11 Oct 2019 14:40:15 +0200
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v3 1/4] KVM: arm64: pmu: Fix cycle counter truncation
Date: Fri, 11 Oct 2019 13:39:51 +0100
Message-Id: <20191011123954.31378-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191011123954.31378-1-maz@kernel.org>
References: <20191011123954.31378-1-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20191011_054021_701283_F202DD1D 
X-CRM114-Status: GOOD (  13.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a counter is disabled, its value is sampled before the event
is being disabled, and the value written back in the shadow register.

In that process, the value gets truncated to 32bit, which is adequate
for any counter but the cycle counter (defined as a 64bit counter).

This obviously results in a corrupted counter, and things like
"perf record -e cycles" not working at all when run in a guest...
A similar, but less critical bug exists in kvm_pmu_get_counter_value.

Make the truncation conditional on the counter not being the cycle
counter, which results in a minor code reorganisation.

Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reported-by: Julien Thierry <julien.thierry.kdev@gmail.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/pmu.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index 362a01886bab..c30c3a74fc7f 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -146,8 +146,7 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
 	if (kvm_pmu_pmc_is_chained(pmc) &&
 	    kvm_pmu_idx_is_high_counter(select_idx))
 		counter = upper_32_bits(counter);
-
-	else if (!kvm_pmu_idx_is_64bit(vcpu, select_idx))
+	else if (select_idx != ARMV8_PMU_CYCLE_IDX)
 		counter = lower_32_bits(counter);
 
 	return counter;
@@ -193,7 +192,7 @@ static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
  */
 static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
 {
-	u64 counter, reg;
+	u64 counter, reg, val;
 
 	pmc = kvm_pmu_get_canonical_pmc(pmc);
 	if (!pmc->perf_event)
@@ -201,16 +200,19 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
 
 	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
 
-	if (kvm_pmu_pmc_is_chained(pmc)) {
-		reg = PMEVCNTR0_EL0 + pmc->idx;
-		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
-		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
+	if (pmc->idx == ARMV8_PMU_CYCLE_IDX) {
+		reg = PMCCNTR_EL0;
+		val = counter;
 	} else {
-		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
-		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
-		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
+		reg = PMEVCNTR0_EL0 + pmc->idx;
+		val = lower_32_bits(counter);
 	}
 
+	__vcpu_sys_reg(vcpu, reg) = val;
+
+	if (kvm_pmu_pmc_is_chained(pmc))
+		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
+
 	kvm_pmu_release_perf_event(pmc);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
