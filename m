Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F1D266FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4C/vYbqw6suDqp9OFXSgEz0Ad3O+SN6bSQPf0ezlpng=; b=kHv9+Wyk4Oyjht
	XB/lp0PYR0vaiItTUzp7b6lM08lvRFhxrbJQPM1XCeoGk+nN2ph69IW2jpr2aUD0Pv1hkKjm17w4j
	33PRt+dA6BoB5eE0iw0OamGeDNuEpCmaBDXou7WBR1kwoIfiGWre/J7BrF6Jmd3kj5yhpIVn4OL+4
	wZ5Y4WNx1f1RtBUgkEQczcmwHoKXxbhUB1mnU3vPu/Yp45YlO7buNer39VgKaHkGZqKvFPA0DQ0Fr
	H5I4BXQgqDFykiK6FzpAW3u7x0lXAYZ/EcBxa+Ktat4mSNGl+50a98eSGJ2qYcoq38ak79IylMfHi
	WAHpIJALfwvLY+4gdPSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTCp-0005pM-SU; Wed, 22 May 2019 15:31:03 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTCJ-0005Ju-Ge
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:30:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5878F80D;
 Wed, 22 May 2019 08:30:31 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C39453F718;
 Wed, 22 May 2019 08:30:29 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Christoffer Dall <christoffer.dall@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v8 2/6] KVM: arm/arm64: extract duplicated code to own function
Date: Wed, 22 May 2019 16:30:15 +0100
Message-Id: <20190522153019.18645-3-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190522153019.18645-1-andrew.murray@arm.com>
References: <20190522153019.18645-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_083031_679308_1FA99E35 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let's reduce code duplication by extracting common code to its own
function.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 virt/kvm/arm/pmu.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index c5a722ad283f..6e7c179103a6 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -64,6 +64,19 @@ void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
 	__vcpu_sys_reg(vcpu, reg) += (s64)val - kvm_pmu_get_counter_value(vcpu, select_idx);
 }
 
+/**
+ * kvm_pmu_release_perf_event - remove the perf event
+ * @pmc: The PMU counter pointer
+ */
+static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
+{
+	if (pmc->perf_event) {
+		perf_event_disable(pmc->perf_event);
+		perf_event_release_kernel(pmc->perf_event);
+		pmc->perf_event = NULL;
+	}
+}
+
 /**
  * kvm_pmu_stop_counter - stop PMU counter
  * @pmc: The PMU counter pointer
@@ -79,9 +92,7 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
 		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
 		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
 		__vcpu_sys_reg(vcpu, reg) = counter;
-		perf_event_disable(pmc->perf_event);
-		perf_event_release_kernel(pmc->perf_event);
-		pmc->perf_event = NULL;
+		kvm_pmu_release_perf_event(pmc);
 	}
 }
 
@@ -112,15 +123,8 @@ void kvm_pmu_vcpu_destroy(struct kvm_vcpu *vcpu)
 	int i;
 	struct kvm_pmu *pmu = &vcpu->arch.pmu;
 
-	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
-		struct kvm_pmc *pmc = &pmu->pmc[i];
-
-		if (pmc->perf_event) {
-			perf_event_disable(pmc->perf_event);
-			perf_event_release_kernel(pmc->perf_event);
-			pmc->perf_event = NULL;
-		}
-	}
+	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++)
+		kvm_pmu_release_perf_event(&pmu->pmc[i]);
 }
 
 u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
