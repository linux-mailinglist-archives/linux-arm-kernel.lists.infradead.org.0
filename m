Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA5922691
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 12:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J4pXejlcXZil89OeD7WmrqUPio++/ygA+AaVO2opegE=; b=X/YdFiXyeUui8f
	Z9dpCq2aj+iAG80g5QRsl5CqD92PrKxG47e+zHK5jc3LI3XHqMJplTWZ7qFOUq0oKvYM1zEScsjqv
	nA9GBzFQL8l3fmU4jVc2l8cLEZElayA5WbZhJbKRlWmJiWFQ2pli+wY8QgmOBAtnlNxAvolxYldoU
	ph/ZY3LpI/+M0EopW2Luaeaz2cFuLOp6K7IBvFUiMhINXcdC8FRuQXxx/7EHWpCJfUtEa3opnMbPN
	m5J63v7yHK2v+JrQIcgtGFIk80M2T0MB2KgN+jh4vSJR1r+R1MA0M3u2lEufyIWbL/nqLtZvdpUGM
	ZV3vm+5Z681nzRcNoZPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSIjp-0004J0-1B; Sun, 19 May 2019 10:08:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSIjh-0004IQ-KD
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 10:08:11 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2FE1C505548047439AB4;
 Sun, 19 May 2019 18:07:38 +0800 (CST)
Received: from HGHY1z004218071.china.huawei.com (10.177.29.32) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Sun, 19 May 2019 18:07:29 +0800
From: Xiang Zheng <zhengxiang9@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] KVM: ARM64: Update perf event when setting PMU count value
Date: Sun, 19 May 2019 18:05:59 +0800
Message-ID: <20190519100559.7188-1-zhengxiang9@huawei.com>
X-Mailer: git-send-email 2.15.1.windows.2
MIME-Version: 1.0
X-Originating-IP: [10.177.29.32]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_030809_888925_316091ED 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, julien.thierry@arm.com,
 christoffer.dall@arm.com, shannon.zhaosl@gmail.com,
 Xiang Zheng <zhengxiang9@huawei.com>, james.morse@arm.com,
 wanghaibin.wang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guest will adjust the sample period and set PMU counter value when
it takes a long time to handle the PMU interrupts.

However, we don't have a corresponding change on the virtual PMU
which is emulated via a perf event. It could cause a large number
of PMU interrupts injected to guest. Then guest will get hang for
handling these interrupts.

So update the sample_period of perf event if the counter value is
changed to avoid this case.

Signed-off-by: Xiang Zheng <zhengxiang9@huawei.com>
---
 virt/kvm/arm/pmu.c | 54 +++++++++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 45 insertions(+), 9 deletions(-)

diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index 1c5b76c..cbad3ec 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -24,6 +24,11 @@
 #include <kvm/arm_pmu.h>
 #include <kvm/arm_vgic.h>
 
+static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc);
+static struct perf_event *kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu,
+						    struct kvm_pmc *pmc,
+						    struct perf_event_attr *attr);
+
 /**
  * kvm_pmu_get_counter_value - get PMU counter value
  * @vcpu: The vcpu pointer
@@ -57,11 +62,29 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
  */
 void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
 {
-	u64 reg;
+	u64 reg, counter, old_sample_period;
+	struct kvm_pmu *pmu = &vcpu->arch.pmu;
+	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
+	struct perf_event *event;
+	struct perf_event_attr attr;
 
 	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
 	      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + select_idx;
 	__vcpu_sys_reg(vcpu, reg) += (s64)val - kvm_pmu_get_counter_value(vcpu, select_idx);
+
+	if (pmc->perf_event) {
+		attr = pmc->perf_event->attr;
+		old_sample_period = attr.sample_period;
+		counter = kvm_pmu_get_counter_value(vcpu, select_idx);
+		attr.sample_period = (-counter) & pmc->bitmask;
+		if (attr.sample_period == old_sample_period)
+			return;
+
+		kvm_pmu_stop_counter(vcpu, pmc);
+		event = kvm_pmu_create_perf_event(vcpu, pmc, &attr);
+		if (event)
+			pmc->perf_event = event;
+	}
 }
 
 /**
@@ -303,6 +326,24 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
 	}
 }
 
+static struct perf_event *kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu,
+						    struct kvm_pmc *pmc,
+						    struct perf_event_attr *attr)
+{
+	struct perf_event *event;
+
+	event = perf_event_create_kernel_counter(attr, -1, current,
+						 kvm_pmu_perf_overflow, pmc);
+
+	if (IS_ERR(event)) {
+		pr_err_once("kvm: pmu event creation failed %ld\n",
+			    PTR_ERR(event));
+		return NULL;
+	}
+
+	return event;
+}
+
 /**
  * kvm_pmu_software_increment - do software increment
  * @vcpu: The vcpu pointer
@@ -416,15 +457,10 @@ void kvm_pmu_set_counter_event_type(struct kvm_vcpu *vcpu, u64 data,
 	/* The initial sample period (overflow count) of an event. */
 	attr.sample_period = (-counter) & pmc->bitmask;
 
-	event = perf_event_create_kernel_counter(&attr, -1, current,
-						 kvm_pmu_perf_overflow, pmc);
-	if (IS_ERR(event)) {
-		pr_err_once("kvm: pmu event creation failed %ld\n",
-			    PTR_ERR(event));
-		return;
-	}
+	event = kvm_pmu_create_perf_event(vcpu, pmc, &attr);
 
-	pmc->perf_event = event;
+	if (event)
+		pmc->perf_event = event;
 }
 
 bool kvm_arm_support_pmu_v3(void)
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
