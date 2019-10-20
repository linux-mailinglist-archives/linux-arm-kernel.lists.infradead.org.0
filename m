Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0CFDDE08
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 12:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40zcnFFbir1v3moGXGN0q/y6jeXJ9VzZUqCNTPOhEDg=; b=m5TaBuZCEGsOVQ
	PK94+mlwIPcLPbqINcal+Czvlxp6x1m4vjrMK90B9jY+2wleSk4uLKRIfkWOtJd0nPxbV+AFEhDhf
	fewe0rpqImgyWWyz3/1JqwDSltBIAOYvYeDDOXv6FT40p4z7STL8CflQOE4AL2UrSC+/0yJRKrSrn
	TQnLkZlsRqbCoIyvBFPP18OTymqmtcpbxbtw6OxU162o6/juPqC7H0pa67pecwyMFTrk4xearx4w4
	hbrTyvjXmQrWj4O9mDZftC1MaT5Vdu5gRtw1aQ1IvdPrEMqESKmbMqAB1qpRwZtc0CQ7Qc0U0762o
	XwGgxxwI38k8WyY2CA/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM8Bv-0004Pz-Jl; Sun, 20 Oct 2019 10:12:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM8BV-0004Hm-Tn
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 10:11:39 +0000
Received: from big-swifty.lan (78.163-31-62.static.virginmediabusiness.co.uk
 [62.31.163.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6929D222BD;
 Sun, 20 Oct 2019 10:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571566297;
 bh=V53P7Vn0aPiKYwrOMap7wcByveXMeM32VmJKA4bI76s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=peYUqeE2CB2w33fmbugervLQNX+GX31Uh5sbOoiIy1LVvBeTnM0OewPJuZ2QHh4fk
 +p8U85CFm+SrKBF+MQhBhnaWCIHAxHNbgKhplRjH8mHeC3qn+Ke5Lvgat8eFVrafJZ
 LGMMdfb/RiiK/jb3OMUP3kjM9ATxDcgxa6oOk1bA=
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 1/4] KVM: arm64: pmu: Fix cycle counter truncation
Date: Sun, 20 Oct 2019 11:11:26 +0100
Message-Id: <20191020101129.2612-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191020101129.2612-1-maz@kernel.org>
References: <20191020101129.2612-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_031137_978250_EEB33A3F 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
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
