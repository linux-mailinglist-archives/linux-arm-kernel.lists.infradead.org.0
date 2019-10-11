Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FBBD3FC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClveRXJL2wijM7TrEQVlPvbhgIlMRqzS7RFyjILjl9k=; b=NqISZo1DISVxkB
	ijoUWo3dOHGCyXDBXNeQ3AIKkoOJsZ/XY935+3nGGdbWaxA1hCDmrQ3f2SW67elISdfsuuozwNJc5
	KtDjmdA2nfesZKAQ7/qmKHKw1pueZUYwuPyMWa2zbPYWacRQej4TG0YZ+HQpk3kIxx8CwxAAwwkRd
	r3fUxVN33fKsG9v2oWujWmfQubqJncJgHD0+kN3GKN7T0/dLGqQ7vBP3/rvy7MBErjeZBnaa92qPS
	eBaOVm67otShL9c16Dog0O7gFDcqOkaOZwippi7y2ehgK9nxaGxpvQ9zadtHBe4QZm+4eFAFRpsaU
	CrcaFNPVfifuoiaFaVdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuE8-00077n-Av; Fri, 11 Oct 2019 12:41:00 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuDV-0006fq-G1
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:40:24 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iIuDQ-00062U-2g; Fri, 11 Oct 2019 14:40:16 +0200
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v3 3/4] KVM: arm64: pmu: Set the CHAINED attribute before
 creating the in-kernel event
Date: Fri, 11 Oct 2019 13:39:53 +0100
Message-Id: <20191011123954.31378-4-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20191011_054021_691444_439063D6 
X-CRM114-Status: GOOD (  12.65  )
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

The current convention for KVM to request a chained event from the
host PMU is to set bit[0] in attr.config1 (PERF_ATTR_CFG1_KVM_PMU_CHAINED).

But as it turns out, this bit gets set *after* we create the kernel
event that backs our virtual counter, meaning that we never get
a 64bit counter.

Moving the setting to an earlier point solves the problem.

Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/pmu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index c30c3a74fc7f..f291d4ac3519 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -569,12 +569,12 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
 		 * high counter.
 		 */
 		attr.sample_period = (-counter) & GENMASK(63, 0);
+		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
+			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
+
 		event = perf_event_create_kernel_counter(&attr, -1, current,
 							 kvm_pmu_perf_overflow,
 							 pmc + 1);
-
-		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
-			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
 	} else {
 		/* The initial sample period (overflow count) of an event. */
 		if (kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
