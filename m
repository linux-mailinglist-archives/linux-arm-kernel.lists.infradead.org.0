Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DADCA9F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=50iyciUH3r4n2beH+hfHOVnsaZ6fanRwiG2NNyOrEbs=; b=etxQgvzxizwBC+
	Z7uffGF3H3GzqQK/cx1sn3ed8GPbpqUFmJKPnoEu0xsE1onWiEZcKgTnkxyhQDtQpJHQC6PrSlngJ
	3OC6izE472kPxYjxJcsttXFeRnhdVTvyQLTaJUeweeUQ1r4WhmWj90jp/jzdSY0QUXZKoYcMWH9XJ
	aOwwIckzrgTFgSCcWXZrhse1a8SRpAEJcaLWlUxJLU0eOOPyDxgFvDfPMDNUqu7envpJdUYsLAO0E
	Fp3q7bEIuiIHGfDH/GRFt7nMMWeza5V5cYwaOYkyijjKb33qfWdzCpEA/tjnQ3PY9ezsDimbCHbAj
	Yook4AyemA0AtPSgTmCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4q5-0004S4-5V; Thu, 03 Oct 2019 17:24:29 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4px-0004RS-DS
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:24:22 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iG4ps-0003xB-EA; Thu, 03 Oct 2019 19:24:16 +0200
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH] KVM: arm64: pmu: Fix cycle counter truncation on counter stop
Date: Thu,  3 Oct 2019 18:24:00 +0100
Message-Id: <20191003172400.21157-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 james.morse@arm.com, andrew.murray@arm.com, julien.thierry.kdev@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_102421_602267_24B25C54 
X-CRM114-Status: GOOD (  11.90  )
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
Cc: Andrew Murray <andrew.murray@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a counter is disabled, its value is sampled before the event
is being disabled, and the value written back in the shadow register.

In that process, the value gets truncated to 32bit, which is adequate
for any counter but the cycle counter, which can be configured to
hold a 64bit value. This obviously results in a corrupted counter,
and things like "perf record -e cycles" not working at all when
run in a guest...

Make the truncation conditional on the counter not being 64bit.

Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
Cc: Andrew Murray <andrew.murray@arm.com>
Reported-by: Julien Thierry Julien Thierry <julien.thierry.kdev@gmail.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/pmu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index 362a01886bab..d716aef2bae9 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -206,9 +206,11 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
 		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
 		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
 	} else {
+		if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
+			counter = lower_32_bits(counter);
 		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
 		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
-		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
+		__vcpu_sys_reg(vcpu, reg) = counter;
 	}
 
 	kvm_pmu_release_perf_event(pmc);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
