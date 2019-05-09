Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9B318D07
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 17:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4C/vYbqw6suDqp9OFXSgEz0Ad3O+SN6bSQPf0ezlpng=; b=cuMTDBeYoLxN81
	m774hieuALblzs8vr8hKFcQti3GYspw5bY7dp+/+sge8ZVz9WY/JIoGb4X6QG+g1RiGgbfnCcgMQw
	29z+Ym0pLgu53KRo6lAcjpmw0oKOqpgetKPpAHWCGeGAx8pegQP3WM6N8zjInGZryVvTsnaj2ocoT
	WraB2h9fEeL7xpgUMdPNDRGrF4EwoOGe3tjBfPXTIDci+VL/zTR43FpMnENjN0vDXTawtumy+Odqu
	rfWiZDEKcvQq809gCSww1K7jswUzWX/mt5Rutut33Bui9NSD/K7sh+ZAe9OHKIa8NBd1Pyv5/Odnh
	KC9tXXJ66ilQn3+E2HXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOl2T-00060f-QT; Thu, 09 May 2019 15:32:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOl1z-0005ZO-9X
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 15:32:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10D62374;
 Thu,  9 May 2019 08:32:23 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 730793F6C4;
 Thu,  9 May 2019 08:32:21 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Christoffer Dall <christoffer.dall@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v6 2/5] KVM: arm/arm64: extract duplicated code to own function
Date: Thu,  9 May 2019 16:32:09 +0100
Message-Id: <20190509153212.24187-3-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509153212.24187-1-andrew.murray@arm.com>
References: <20190509153212.24187-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_083223_333819_EC5454A1 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
